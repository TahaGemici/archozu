# .hex ----> .mem
import sys
f = open(sys.argv[1], "r")
out = open("../RTL/bus/memories/s25fl128s.mem", "w")
out2 = open("../RTL/bus/memories/instr_mem_no_flash.mem", "w")
out_data = ""
state=0
counter=1
flag=1
for line in f.readlines():
    if(line.startswith("Contents")):
        state=0
        if((line[20:28]!=".comment")&(line[20:37]!=".riscv.attributes")):
            state=1
            flag=1
    elif(state):
        lines = line[0:41].split()
        if(flag):
            out_data += "@"+lines[0].zfill(6)+"\n"
        for i in lines[1:]:
            counter+=len(i)/2
            for j in range(0,len(i),2):
                out_data+=i[j:(j+2)]+"\n"
out.write(out_data)
counter=0
tmp=0
for line in out_data.split():
    if(line.startswith("@")):
        if(counter):
            out2_data+=hex(tmp)[2:].zfill(8)+"\n"
            counter=0
        out2_data+=line+"\n"
    else:
        tmp+=int(line,16)<<counter
        counter+=8
        if(counter==32):
            out2_data+=hex(tmp)[2:].zfill(8)+"\n"
            counter=0
            tmp=0
out2_data+=hex(tmp)[2:].zfill(8)+"\n"
out2.write(out2_data)
