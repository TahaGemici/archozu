# .hex ----> .mem
import sys
f = open(sys.argv[1], "r")
flash_mem = open("../RTL/bus/memories/s25fl128s.mem", "w")
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
flash_mem.write(out)