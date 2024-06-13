import pyperclip
x = pyperclip.paste().splitlines()
y = ""
for i in x:
    for j in range(0,8,2):
        y+=i[(6-j):(8-j)]+"\n"
pyperclip.copy(y[:-1])