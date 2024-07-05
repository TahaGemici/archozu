# .hex ----> .mem
import sys
f = open(sys.argv[1], "r")
out = open("../RTL/bus/memories/s25fl128s.mem", "w")
out2 = open("../RTL/bus/memories/instr_mem_no_flash.mem", "w")
out_data = ""
out2_data = ""
state=0
counter=1
tmp=0
flag=1
for line in f.readlines():
    if(line.startswith("Contents")):
        state=0
        if((line[20:25]==".text")|(line[20:27]==".rodata")):
            state=1
            flag=1
    elif(state):
        lines = line[0:41].split()
        if(flag):
            tmp = int(lines[0],16)-8192
            if(counter!=tmp):
                out_data += "@"+hex(tmp)[2:].zfill(6)+"\n"
                counter=tmp
            flag=0
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
