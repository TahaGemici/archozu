`include "uvm_macros.svh"
import uvm_pkg::*;

typedef enum bit [1:0] {reset_asserted = 0, random_baud = 1} oper_mode; //all the classes have access to this enum
//SEQUENCE ITEM
class transaction extends uvm_sequence_item;
    `uvm_object_utils(transaction)

    oper_mode oper; //0: reset, 1: random baud
    rand logic [16:0] baud; //baud rate
    logic tx_clk; //tx clock
    real period; //period of output clock to use in scoreboard

    constraint baud_c {
        baud inside {4800, 9600, 14400, 19200, 38400, 57600};
    }

    function new(string name = "transaction");
        super.new(name);
    endfunction
endclass

//SEQUENCE TO GENERATE RESET
class reset_clk extends uvm_sequence#(transaction);
    `uvm_object_utils(reset_clk)

    transaction tr;

    function new(string name = "reset_clk");
        super.new(name);
    endfunction

    virtual task body();
        repeat(5) begin
            tr = transaction::type_id::create("tr");
            `uvm_info("RESET_CLK", $sformatf("RESETTING THE CLOCK"), UVM_NONE)
            start_item(tr);
                assert(tr.randomize);
                tr.oper = reset_asserted;
            finish_item(tr);
        end
    endtask
endclass

//SEQUENCE TO GENERATE RANDOM BAUD RATE
class variable_baud extends uvm_sequence#(transaction);
    `uvm_object_utils(variable_baud)

    transaction tr;

    function new(string name = "variable_baud");
        super.new(name);
    endfunction

    virtual task body();
        repeat(5) begin
            tr = transaction::type_id::create("tr");
            `uvm_info("VARIABLE_BAUD", $sformatf("SETTING RANDOM BAUD RATE"), UVM_NONE)
            start_item(tr);
                assert(tr.randomize);
                tr.oper = random_baud;
            finish_item(tr);
        end
    endtask
endclass

//DRIVER
class driver extends uvm_driver#(transaction);
    `uvm_component_utils(driver)

    virtual clk_if vif; //virtual interface
    transaction tr;

    function new(input string path = "drv", uvm_component parent = null);
        super.new(path, parent);
    endfunction

    virtual function void build_phase(uvm_phase phase);
        super.build_phase(phase);
        tr = transaction::type_id::create("tr");

        if(!uvm_config_db#(virtual clk_if)::get(this, "", "vif", vif)) begin
            `uvm_error("DRIVER", "CAN'T GET VIF")
        end
    endfunction

    virtual task run_phase(uvm_phase phase);
        forever begin
            seq_item_port.get_next_item(tr);
            case(tr.oper)
                reset_asserted: begin
                    `uvm_info("DRIVER", $sformatf("RESETTING THE CLOCK"), UVM_NONE)
                    vif.rst_i <= 1'b1;
                    @(posedge vif.clk_i);
                end
                random_baud: begin
                    `uvm_info("DRIVER", $sformatf("Baud: %0d", tr.baud), UVM_NONE)
                    vif.rst_i <= 1'b0;
                    vif.baud_rate_i <= tr.baud;
                    @(posedge vif.clk_i);
                    //wait for 2 clock cycles so that computation is done
                    @(posedge vif.tx_clk_o);
                    @(posedge vif.tx_clk_o);
                end
            endcase
            seq_item_port.item_done();
        end
    endtask
endclass

//MONITOR
class mon extends uvm_monitor;
    `uvm_component_utils(mon)
    uvm_analysis_port#(transaction) send;

    transaction tr;
    virtual clk_if vif;
    real ton;
    real toff;

    function new(input string name = "mon", uvm_component parent = null);
        super.new(name, parent);
    endfunction

    virtual function void build_phase(uvm_phase phase);
        super.build_phase(phase);
        send = new("send", this);
        tr = transaction::type_id::create("tr");

        if(!uvm_config_db#(virtual clk_if)::get(this, "", "vif", vif)) begin
            `uvm_error("MONITOR", "CAN'T GET VIF")
        end
    endfunction

    virtual task run_phase(uvm_phase phase);
        forever begin
            @posedge vif.clk_i;
            if(vif.rst_i) begin
                tr.oper = reset_asserted;
                ton = 0;
                toff = 0;
                `uvm_info("MONITOR", $sformatf("SYSTEMS RESET DETECTED"), UVM_NONE)
                send.write(tr);
            end
            else begin
                tr.baud = vif.baud_rate_i;
                tr.oper = random_baud;
                ton = 0;
                toff = 0;
                @(posedge vif.tx_clk_o);
                ton = $realtime;
                @(negedge vif.tx_clk_o);
                toff = $realtime;
                tr.period = toff - ton;
                `uvm_info("MONITOR", $sformatf("BAUD RATE: %0d, PERIOD: %0f", tr.baud, tr.period), UVM_NONE)
                send.write(tr);
            end
        end
    endtask
endclass

//SCOREBOARD
class sco extends uvm_scoreboard;
    `uvm_component_utils(sco)

    real count = 0;
    real baudcount = 0;
    uvm_analysis_imp#(transaction, sco) recv;

    function new(input string name = "sco", uvm_component parent = null);
        super.new(name, parent);
    endfunction

    virtual function void build_phase(uvm_phase phase);
        super.build_phase(phase);
        recv = new("recv", this);
    endfunction

    virtual function void write(transaction tr);
        count = tr.period / 20; //20 for 50MHz clock
        baudcount = count;
        `uvm_info("SCOREBOARD", $sformatf("BAUD RATE: %0d, COUNT: %0f, BCOUNT: %0f", tr.baud, count, baudcount), UVM_NONE)
        case (tr.baud)
            4800: begin
                if (baudcount == 10418) begin
                    `uvm_info("SCOREBOARD", "TEST PASSED", UVM_NONE)
                end
                else begin
                    `uvm_error("SCOREBOARD", "TEST FAILED")
                end
            end
            9600: begin
                if (baudcount == 5210) begin
                    `uvm_info("SCOREBOARD", "TEST PASSED", UVM_NONE)
                end
                else begin
                    `uvm_error("SCOREBOARD", "TEST FAILED")
                end
            end
            14400: begin
                if (baudcount == 3474) begin
                    `uvm_info("SCOREBOARD", "TEST PASSED", UVM_NONE)
                end
                else begin
                    `uvm_error("SCOREBOARD", "TEST FAILED")
                end
            end
            19200: begin
                if (baudcount == 2606) begin
                    `uvm_info("SCOREBOARD", "TEST PASSED", UVM_NONE)
                end
                else begin
                    `uvm_error("SCOREBOARD", "TEST FAILED")
                end
            end
            38400: begin
                if (baudcount == 1304) begin
                    `uvm_info("SCOREBOARD", "TEST PASSED", UVM_NONE)
                end
                else begin
                    `uvm_error("SCOREBOARD", "TEST FAILED")
                end
            end
            57600: begin
                if (baudcount == 870) begin
                    `uvm_info("SCOREBOARD", "TEST PASSED", UVM_NONE)
                end
                else begin
                    `uvm_error("SCOREBOARD", "TEST FAILED")
                end
            end 
        endcase
    endfunction
endclass

//AGENT
class agent extends uvm_agent;
    `uvm_component_utils(agent)
    
    function new(input string inst = "agent", uvm_component parent = null);
        super.new(inst,parent);
    endfunction
    
    driver d;
    uvm_sequencer#(transaction) seqr;
    mon m;
    
    virtual function void build_phase(uvm_phase phase);
        super.build_phase(phase);
        m = mon::type_id::create("m",this);
        d = driver::type_id::create("d",this);
        seqr = uvm_sequencer#(transaction)::type_id::create("seqr", this);
    endfunction
    
    virtual function void connect_phase(uvm_phase phase);
        super.connect_phase(phase);
        d.seq_item_port.connect(seqr.seq_item_export);
    endfunction
endclass

//ENVIRONMENT
class env extends uvm_env;
    `uvm_component_utils(env)
    
    function new(input string inst = "env", uvm_component c);
        super.new(inst,c);
    endfunction
    
    agent a;
    sco s;
    
    virtual function void build_phase(uvm_phase phase);
        super.build_phase(phase);
        a = agent::type_id::create("a",this);
        s = sco::type_id::create("s", this);
    endfunction
    
    virtual function void connect_phase(uvm_phase phase);
        super.connect_phase(phase);
        a.m.send.connect(s.recv);
    endfunction
endclass

//TEST (RESET TEST??)
class test extends uvm_test;
    `uvm_component_utils(test)
    
    env e;
    variable_baud vbar;
    reset_clk rclk;
    
    function new(input string inst = "test", uvm_component c);
        super.new(inst,c);
    endfunction
    
    virtual function void build_phase(uvm_phase phase);
        super.build_phase(phase);
        e = env::type_id::create("env",this);  
        vbar = variable_baud::type_id::create("vbar");
        rclk = reset_clk::type_id::create("rclk"); 
    endfunction

    virtual task run_phase(uvm_phase phase);
        phase.raise_objection(this);
            vbar.start(e.a.seqr);
            #20;
        phase.drop_objection(this);
    endtask
endclass 

//TB
module tb;
  
    clk_if vif();
    clk_gen dut (.clk_i(vif.clk),.rst_i(vif.rst), .baud_rate_i(vif.baud), .tx_clk_o(vif.tx_clk));

    initial begin
        vif.clk <= 0;
    end

    always #10 vif.clk <= ~vif.clk; //1/50 20nsec 10nsec 50MHz clk

    initial begin
        uvm_config_db#(virtual clk_if)::set(null, "*", "vif", vif);
        run_test("test");
    end

    initial begin
        $dumpfile("dump.vcd");
        $dumpvars;
    end
endmodule