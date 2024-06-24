# .hex ----> .mem
import sys
f = open(sys.argv[1], "r")
out = open("s25fl128s.mem", "w")
y = ""
state=0
counter=0
for line in f.readlines():
    if(line.startswith("Contents")):
        if(line[20:25]==".text"):
            state=1
        else:
            state=0
    elif(state):
        lines = line[0:41].split()
        if(counter!=32):
            y+="@"+hex(int(lines[0],16)-8192)[2:].zfill(6)+"\n"
        counter=0
        for i in lines[-1:0:-1]:
            counter+=len(i)
            for j in range(len(i),0,-2):
                y+=i[(j-2):j]+"\n"
out.write(y)