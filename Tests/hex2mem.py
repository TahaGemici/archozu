# .hex ----> .mem
import sys
f = open(sys.argv[1], "r")
out = open("../RTL/bus/memories/s25fl128s.mem", "w")
out2 = open("../RTL/bus/memories/instr_mem_no_flash.mem", "w")
out_data = ""
out2_data = ""
state=0
counter=0
for line in f.readlines():
    if(line.startswith("Contents")):
        state=0
        if(line[20:25]==".text"):
            state=1
        if(line[20:27]==".rodata"):
            state=1
    elif(state):
        lines = line[0:41].split()
        if(counter!=32):
            tmp = "@"+hex(int(lines[0],16)-8192)[2:].zfill(6)+"\n"
            out_data+= tmp
            out2_data+= tmp
        counter=0
        for i in lines[1:]:
            counter+=len(i)
            tmp=""
            for j in range(0,len(i),2):
                out_data+=i[j:(j+2)]+"\n"
                tmp+=i[(len(i)-2-j):(len(i)-j)]
            out2_data += tmp.zfill(8)+"\n"
out.write(out_data)
out2.write(out2_data)
