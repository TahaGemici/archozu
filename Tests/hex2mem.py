# .hex ----> .mem
import sys
f = open(sys.argv[1], "r")
out = ""
state=0
for line in f.readlines():
    if(line.startswith("Contents")):
        state=0
        if((line[20:28]!=".comment")&(line[20:37]!=".riscv.attributes")):
            state=1
    elif(state):
        lines = line[0:41].split()
        out += "@"+lines[0].zfill(6)+"\n"
        for i in lines[1:]:
            for j in range(0,len(i),2):
                out+=i[j:(j+2)]+"\n"
flash_mem = open("../RTL/bus/memories/s25fl128s.mem", "w")
flash_mem.write(out)

mem = "00000000"
address = 0
instr_mem = open("../RTL/bus/memories/instr_mem_no_flash.mem", "w")
data_mem  = open("../RTL/bus/memories/data_mem_no_flash.mem", "w")
flash_txt = open("../RTL/bus/memories/flash.txt", "w")
for i in range(1024*4-1):
    mem+="00000000"
for line in out.split():
    if(line.startswith("@")):
        address = int(line[1:],16)
    else:
        mem = mem[:address*2] + line + mem[address*2+2:]
        address += 1

for i in range(0,1024*32,8):
    if(i%64==56):
        flash_txt.write(mem[i+6:i+8]+mem[i+4:i+6]+mem[i+2:i+4]+mem[i:i+2]+"\n")
    else:
        flash_txt.write(mem[i+6:i+8]+mem[i+4:i+6]+mem[i+2:i+4]+mem[i:i+2])

for i in range(0,1024*16,8):
    ii = i+1024*16
    data_mem.write(mem[i+6:i+8]+mem[i+4:i+6]+mem[i+2:i+4]+mem[i:i+2]+"\n")
    instr_mem.write(mem[ii+6:ii+8]+mem[ii+4:ii+6]+mem[ii+2:ii+4]+mem[ii:ii+2]+"\n")