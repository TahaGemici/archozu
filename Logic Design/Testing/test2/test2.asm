addi x5, x0, 1
addi x6, x0, 0
addi x7, x0, 7

// Kullanılacak çevre biriminin address değeri (4 katı olacak muhtemlen)
addi x28, x0, 60

for_loop1:
slli x5, x5, 1

// Belirlenmiş address'e 5. register'daki değeri yükler
sw x5, 0(x28)

addi x6, x6, 1
bne x6, x7, for_loop1
addi x6, x0, 0
for_loop2:
srli x5, x5, 1

// Belirlenmiş address'e 5. register'daki değeri yükler
sw x5, 0(x28)

addi x6, x6, 1
bne x6, x7, for_loop2
addi x6, x0, 0
jal x0, for_loop1
