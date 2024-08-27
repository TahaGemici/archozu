.include "user_define.h"
.globl _start
.section .text
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x21, h0_start
jalr x0, x21, 0
h0_start:
                  li x29, 0x40001104
                  csrw 0x301, x29
kernel_sp:        
                  la x31, kernel_stack_end

trap_vec_init:    
                  la x29, mtvec_handler
                  ori x29, x29, 0
                  csrw 0x305, x29 # MTVEC

mepc_setup:       
                  la x29, init
                  csrw 0x341, x29

init_machine_mode:
                  li x29, 0x1c00
                  csrw 0x300, x29 # MSTATUS
                  li x29, 0x0
                  csrw 0x304, x29 # MIE
                  mret
init:             
                  li x0, 0xc1b71dc1
                  li x1, 0xf
                  li x2, 0x0
                  li x3, 0x80000000
                  li x4, 0xf
                  li x5, 0x0
                  li x6, 0x0
                  li x7, 0xa
                  li x8, 0x0
                  li x9, 0x80000000
                  li x10, 0x0
                  li x11, 0xfa4e7687
                  li x12, 0x2f413447
                  li x13, 0xf94c9e1e
                  li x14, 0x80000000
                  li x15, 0xa6cc2474
                  li x16, 0xf7f663a6
                  li x17, 0x0
                  li x18, 0x80000000
                  li x19, 0xdca4a16a
                  li x20, 0x80000000
                  li x21, 0x80000000
                  li x22, 0x80000000
                  li x23, 0x2
                  li x24, 0xf84afb47
                  li x25, 0xf1b406ea
                  li x26, 0x80000000
                  li x27, 0xf10d83d0
                  li x28, 0xb74e3a7
                  li x29, 0x303a9052
                  la x30, user_stack_end
main:             li         t4, 0x0 #start riscv_int_numeric_corner_stream_21
                  li         a4, 0x0
                  li         t3, 0x0
                  li         s4, 0x0
                  li         s9, 0x0
                  li         s10, 0x0
                  li         a2, 0x0
                  li         tp, 0x1
                  li         s8, 0x0
                  li         a3, 0x4b4571ed
                  c.mv        s8, s10
                  c.lui       ra, 17
                  c.sub       a3, a3
                  mulhu       s1, gp, t5
                  div         sp, t3, a6
                  c.nop
                  addi        a6, t4, -681
                  mul         a3, s10, t3
                  c.nop
                  c.mv        a6, s11
                  c.sub       a3, a3
                  c.nop
                  auipc       s3, 577929
                  c.lui       t3, 11
                  c.li        t1, -1
                  addi        t4, s1, -43
                  rem         t2, s8, a7
                  mul         zero, s2, tp
                  auipc       s1, 647937
                  c.add       s3, t3
                  mulhsu      t3, t0, s5
                  mul         s0, t5, ra
                  c.lui       ra, 1
                  c.add       a4, a1
                  c.addi16sp  sp, 32
                  divu        s2, sp, a1
                  c.sub       a3, a3
                  c.sub       a3, a3
                  li         t4, 0x5a5fd758 #start riscv_int_numeric_corner_stream_0
                  li         s4, 0x3cd0d63d
                  li         ra, 0x316b2dc9
                  li         t3, 0x0
                  li         s8, 0x404fec14
                  li         s11, 0x1
                  li         s2, 0x0
                  li         s10, 0x7822d455
                  li         a2, 0x1
                  li         s0, 0x328e0d4f
                  c.nop
                  c.sub       a4, a3
                  c.mv        s10, s9
                  c.sub       a3, a5
                  addi        s4, t6, 1706
                  mulh        zero, a0, t1
                  divu        zero, zero, s9
                  divu        t4, s6, t0
                  auipc       s1, 320312
                  mulhsu      s9, s7, s11
                  mulhu       zero, a1, gp
                  c.addi      sp, -1
                  addi        s7, s6, -1515
                  c.sub       a3, a2
                  nop
                  mulhsu      a3, t4, a3
                  c.lui       s9, 29
                  li         gp, 0x68c34b31 #start riscv_int_numeric_corner_stream_35
                  li         t3, 0x38f32439
                  li         t4, 0x6eb587df
                  li         s6, 0x0
                  li         a2, 0x133ceeec
                  li         a4, 0x776c9be6
                  li         tp, 0x0
                  li         t1, 0x0
                  li         s8, 0x0
                  li         a3, 0x0
                  c.addi16sp  sp, 144
                  mulh        s6, s8, s0
                  c.add       a4, a3
                  c.li        s11, 14
                  c.mv        a1, s5
                  mulhsu      a1, t0, t4
                  c.li        s11, -1
                  rem         s9, t4, a2
                  c.li        a4, 3
                  add         a1, tp, a3
                  c.addi      s8, 1
                  div         t1, t3, s5
                  c.mv        a4, a3
                  c.addi      t1, -1
                  sub         s9, s7, t2
                  mulhu       zero, a0, a6
                  c.li        a4, -1
                  lui         s4, 500223
                  auipc       a1, 412700
                  c.add       ra, t5
                  divu        t3, a5, a0
                  c.sub       a3, a3
                  c.addi      t1, -1
                  c.nop
                  rem         zero, t5, t5
                  rem         s3, t1, s2
                  div         a2, s1, t1 #end riscv_int_numeric_corner_stream_35
                  li         t4, 0x53b752d0 #start riscv_int_numeric_corner_stream_9
                  li         gp, 0x0
                  li         t3, 0x1
                  li         s11, 0x0
                  li         s10, 0x0
                  li         s3, 0x0
                  li         s8, 0x0
                  li         s4, 0x0
                  li         ra, 0xfb6ee7b
                  li         a0, 0x629b8508
                  c.addi16sp  sp, -16
                  c.sub       a3, a3
                  nop
                  c.li        t3, 25
                  auipc       ra, 357442
                  c.addi16sp  sp, 112
                  auipc       t0, 807051
                  mulh        a4, s8, s5
                  c.addi4spn  a3, sp, 576
                  sub         a7, s3, s4
                  lui         t0, 10172
                  c.sub       a3, a3
                  c.addi      s11, 23
                  c.add       t1, s8
                  add         s2, t3, s3
                  c.mv        a5, a0
                  rem         a3, s0, a6
                  mulhsu      s4, t1, a6
                  nop
                  rem         t1, s7, t5
                  c.addi4spn  a3, sp, 128
                  c.addi16sp  sp, -16
                  c.li        s2, 7
                  rem         s11, t3, s7
                  mul         t2, s8, t4 #end riscv_int_numeric_corner_stream_9
                  li         a6, 0x0 #start riscv_int_numeric_corner_stream_33
                  li         t4, 0x1
                  li         t3, 0x1
                  li         s8, 0x1
                  li         s10, 0x1
                  li         a5, 0x0
                  li         t1, 0x182eab26
                  li         a2, 0x0
                  li         s9, 0x0
                  li         s11, 0x1
                  c.mv        s4, s7
                  rem         s11, s9, t3
                  c.lui       gp, 24
                  c.addi16sp  sp, -16
                  c.addi4spn  a3, sp, 704
                  rem         a0, a0, t4
                  nop
                  rem         s2, s9, s9
                  c.nop
                  addi        s10, s8, -1554
                  c.sub       a3, a5
                  mulhu       s2, s7, a7
                  c.add       t3, ra
                  add         a3, tp, ra
                  rem         t1, s5, s2
                  c.lui       s11, 2
                  nop
                  c.mv        t3, s5
                  rem         ra, t5, a0
                  c.lui       a2, 4
                  nop #end riscv_int_numeric_corner_stream_33
                  li         s8, 0x0 #start riscv_int_numeric_corner_stream_11
                  li         t4, 0x0
                  li         t3, 0x0
                  li         s11, 0x0
                  li         s1, 0x1
                  li         a5, 0x0
                  li         a1, 0x1
                  li         gp, 0x45fea72d
                  li         s9, 0x24ae418a
                  li         s10, 0x385f60f0
                  c.mv        ra, s2
                  c.li        a3, -1
                  c.addi16sp  sp, -16
                  addi        a7, gp, 93
                  c.lui       s3, 20
                  c.lui       a3, 9
                  mulh        ra, ra, s5
                  mulh        s6, s6, ra
                  lui         s3, 661966
                  mulhsu      t1, t0, a2
                  sub         a2, ra, s1
                  mulhu       s10, a5, s5
                  divu        s7, s0, a6
                  mulhsu      zero, t2, s5
                  c.lui       ra, 7
                  c.addi16sp  sp, 144
                  c.addi      a5, 23
                  c.lui       a5, 30
                  c.addi      s4, 19
                  c.nop
                  rem         a5, t4, t6
                  addi        zero, s10, 53
                  c.li        t4, 24
                  mul         t4, s10, s2
                  addi        s6, a6, -1753
                  mulhu       s0, s10, sp #end riscv_int_numeric_corner_stream_11
                  li         t4, 0x3168bfc1 #start riscv_int_numeric_corner_stream_17
                  li         t3, 0x0
                  li         s4, 0x1
                  li         tp, 0x7cc9dc1a
                  li         a2, 0x1
                  li         s8, 0x4f5c6fa7
                  li         a1, 0x0
                  li         a4, 0x0
                  li         a6, 0x0
                  li         a3, 0x1
                  mulhu       s1, t4, a2
                  c.addi16sp  sp, 112
                  c.addi4spn  a3, sp, 96
                  mulh        a7, s1, t3
                  c.sub       a3, a3
                  addi        a6, s1, -896
                  c.sub       a3, a3
                  sub         a3, ra, t1
                  c.sub       a3, a3
                  sub         a6, tp, s1
                  c.addi16sp  sp, 176
                  c.addi      a3, 17
                  auipc       a0, 254935
                  mulhsu      ra, s10, s11
                  mulhsu      zero, a4, sp
                  c.add       s0, s3
                  rem         a3, a7, t4
                  mulhsu      a7, t1, a0
                  c.lui       ra, 15
                  mulhsu      s8, s5, s4
                  mul         tp, t1, s3
                  c.addi4spn  a3, sp, 128
                  mulh        s10, t6, s4
                  c.addi16sp  sp, 64
                  c.lui       a4, 21
                  div         gp, s0, a7 #end riscv_int_numeric_corner_stream_17
                  li         t4, 0x1 #start riscv_int_numeric_corner_stream_36
                  li         t3, 0x1
                  li         s2, 0x1
                  li         s1, 0x0
                  li         s10, 0x0
                  li         s9, 0x0
                  li         a5, 0x1
                  li         s11, 0x0
                  li         a7, 0x0
                  li         s8, 0x0
                  c.addi      s6, -1
                  c.addi      t2, 2
                  mulhu       a0, a0, gp
                  c.li        s3, -1
                  c.addi4spn  a3, sp, 640
                  c.addi16sp  sp, 400
                  nop
                  rem         a2, s7, gp
                  mulh        zero, a7, zero
                  c.nop
                  c.sub       a3, a3
                  add         a5, sp, a3
                  sub         s9, ra, t2
                  c.li        a0, -1
                  c.mv        s3, s5
                  auipc       s8, 456637
                  mul         a5, s0, s11
                  mulhu       a1, a3, a0
                  add         a3, s7, a3
                  mulhu       s0, t4, s3
                  div         a4, sp, s6
                  sub         a6, a0, a3
                  c.nop
                  nop
                  rem         a0, s2, s11 #end riscv_int_numeric_corner_stream_36
                  li         t4, 0x1 #start riscv_int_numeric_corner_stream_24
                  li         t2, 0x42409a6
                  li         t3, 0x1
                  li         s9, 0x2cb123dd
                  li         s4, 0x0
                  li         s11, 0x0
                  li         s10, 0x1
                  li         a4, 0x1cff9371
                  li         s8, 0x0
                  li         a0, 0x48c1131a
                  mulhu       zero, s0, s10
                  c.nop
                  divu        s11, zero, t1
                  c.addi      tp, 21
                  sub         a3, a1, t0
                  nop
                  auipc       zero, 776338
                  c.lui       a1, 8
                  c.mv        a6, a6
                  mulhu       a3, zero, a3
                  sub         zero, s1, a3
                  c.addi4spn  s1, sp, 96
                  c.li        s6, -1
                  lui         s8, 386846
                  c.addi      sp, -1
                  rem         s0, s3, a2
                  c.mv        s8, t1
                  mulhu       a4, t1, a5
                  c.lui       t0, 27
                  auipc       s6, 557200
                  mulhsu      a1, s11, a0
                  c.add       s8, gp
                  li         t4, 0x0 #start riscv_int_numeric_corner_stream_19
                  li         s6, 0x1
                  li         t3, 0x14618d22
                  li         s11, 0x1
                  li         s9, 0x0
                  li         s7, 0x0
                  li         a1, 0x0
                  li         gp, 0x0
                  li         s10, 0x0
                  li         a0, 0x1
                  mulhsu      t0, a5, a0
                  div         s0, t1, s2
                  div         s2, gp, ra
                  sub         s0, t0, s10
                  c.addi      ra, 25
                  mul         a6, s4, a4
                  c.lui       s3, 7
                  c.sub       a3, a0
                  c.add       ra, a0
                  rem         a3, a4, a5
                  add         a5, s3, a7
                  c.add       ra, tp
                  lui         a3, 335907
                  c.lui       tp, 6
                  mulh        a0, s10, s3 #end riscv_int_numeric_corner_stream_19
                  li         t4, 0x1 #start riscv_int_numeric_corner_stream_26
                  li         t3, 0x1
                  li         s4, 0x0
                  li         tp, 0x0
                  li         s10, 0x7ff9fa7b
                  li         s9, 0x41fa3cf2
                  li         a2, 0x0
                  li         a4, 0x0
                  li         s8, 0x0
                  li         s0, 0x0
                  rem         a0, a4, t4
                  c.addi      a1, -1
                  rem         a7, s4, zero
                  c.mv        a3, a2
                  div         s3, s9, zero
                  c.add       sp, s9
                  c.nop
                  mul         s0, a4, tp
                  mul         a4, s6, s11
                  sub         a2, s9, t2
                  mulh        gp, t2, a3
                  nop
                  c.mv        tp, s1
                  c.nop
                  mulhsu      a4, a1, s5
                  c.addi      s8, -1
                  lui         s1, 980927
                  c.mv        s8, ra
                  mul         s4, gp, sp
                  c.li        gp, -1
                  mul         t1, t5, tp
                  rem         tp, ra, t6
                  mulh        s4, s5, t5
                  sub         t2, t1, tp
                  add         t4, s9, s11
                  mulhsu      t3, t2, t2
                  c.sub       a3, a3
                  rem         s4, s4, t6
                  mulhsu      sp, t3, s5
                  lui         a7, 155447 #end riscv_int_numeric_corner_stream_26
                  li         t0, 0x485a9172 #start riscv_int_numeric_corner_stream_6
                  li         t4, 0x0
                  li         s4, 0x47b5de19
                  li         a4, 0x0
                  li         t3, 0x110c2388
                  li         s11, 0x1
                  li         a1, 0x0
                  li         s2, 0x1
                  li         s10, 0x1
                  li         a0, 0x5bab2e16
                  auipc       a4, 921752
                  mulh        a2, s0, s5
                  lui         s1, 10667
                  c.addi      a4, -1
                  mul         sp, s8, t4
                  c.add       ra, a1
                  addi        ra, t1, -601
                  auipc       a7, 44054
                  c.lui       ra, 6
                  c.mv        t1, s11
                  nop
                  auipc       a5, 894421
                  c.sub       a2, a3
                  mulh        sp, s9, s3
                  sub         s0, t6, a3
                  nop
                  add         gp, a0, s1
                  c.add       s8, s10
                  auipc       zero, 1008389
                  c.li        s0, 25
                  lui         a1, 311620
                  auipc       zero, 609974
                  add         a3, s8, t3
                  mulhsu      zero, t2, s11
                  c.nop
                  nop
                  c.lui       t2, 22
                  mulh        s9, t3, s6
                  c.sub       a3, a3
                  li         t4, 0x0 #start riscv_int_numeric_corner_stream_4
                  li         t3, 0x0
                  li         s11, 0x151fdd1d
                  li         s3, 0x0
                  li         s10, 0x1
                  li         ra, 0x0
                  li         s9, 0x0
                  li         gp, 0x0
                  li         s7, 0x1
                  li         a0, 0x1
                  c.nop
                  auipc       s9, 241184
                  c.addi      s3, 26
                  c.lui       s9, 6
                  auipc       sp, 399373
                  divu        sp, tp, t1
                  c.addi4spn  a3, sp, 384
                  c.li        ra, 14
                  c.addi      ra, 4
                  divu        a1, s0, s9
                  mulhsu      a2, t0, s10
                  lui         zero, 642334
                  c.nop
                  mul         t1, s8, t4
                  c.addi16sp  sp, -16
                  rem         s4, a6, t4
                  mul         s11, s1, t0
                  c.addi4spn  a2, sp, 640
                  c.addi      t2, 28
                  c.nop
                  c.add       t4, a1
                  sub         s0, a5, t6
                  lui         tp, 121928
                  mulhsu      a0, s3, a7
                  nop
                  add         s4, a3, a1
                  mulhsu      a7, tp, sp
                  c.nop
                  c.sub       a3, a3
                  li         t4, 0x65a1ec3d #start riscv_int_numeric_corner_stream_28
                  li         s4, 0x0
                  li         t3, 0x0
                  li         s6, 0x4b89f6b5
                  li         tp, 0x10fb0363
                  li         s0, 0x628fb5de
                  li         a4, 0x0
                  li         gp, 0x1
                  li         s8, 0x20afa69c
                  li         a2, 0x0
                  nop
                  c.addi16sp  sp, 16
                  mulhu       a6, sp, a0
                  c.addi      ra, -1
                  c.add       t4, a4
                  lui         s4, 468170
                  c.add       ra, s6
                  lui         t3, 966212
                  div         zero, a4, a7
                  c.addi16sp  sp, 384
                  lui         a5, 856533
                  add         zero, t0, t3
                  c.addi      t0, -1
                  divu        s9, s9, t5
                  nop
                  c.mv        t2, t4
                  rem         t3, a3, s2
                  nop
                  c.add       s0, s8
                  auipc       t4, 257860
                  add         a7, a1, s8
                  c.add       a6, t1
                  divu        a5, a5, a4
                  lui         gp, 503453
                  c.mv        s8, s2
                  rem         tp, s4, t1
                  divu        zero, s1, a3 #end riscv_int_numeric_corner_stream_28
                  li         t3, 0x71532541 #start riscv_int_numeric_corner_stream_25
                  li         s4, 0x1
                  li         tp, 0x1
                  li         s6, 0x0
                  li         a4, 0x0
                  li         t1, 0x0
                  li         a2, 0x0
                  li         t0, 0x0
                  li         t4, 0x0
                  li         sp, 0x74340fc
                  c.lui       a7, 20
                  sub         s6, a0, s2
                  c.addi      a0, -1
                  c.addi16sp  sp, 352
                  add         t0, t6, a4
                  c.li        tp, 20
                  c.add       s6, ra
                  c.mv        a1, a7
                  c.addi      a4, 13
                  mulh        ra, a3, a0
                  sub         s10, a3, t5
                  c.li        ra, -1
                  add         s3, a2, a0
                  c.addi4spn  a2, sp, 880
                  rem         s8, s3, t2
                  c.lui       a2, 25
                  mulhu       a7, a1, a3 #end riscv_int_numeric_corner_stream_25
                  li         t4, 0x0 #start riscv_int_numeric_corner_stream_7
                  li         a3, 0x0
                  li         t3, 0x646b89a3
                  li         s11, 0x0
                  li         s9, 0x1
                  li         s8, 0x1
                  li         a7, 0x0
                  li         s3, 0x0
                  li         a0, 0x0
                  li         s10, 0x1
                  sub         t2, t4, s0
                  c.addi      t0, 17
                  mulh        a2, t2, s3
                  c.addi4spn  a3, sp, 896
                  mulhu       zero, a7, sp
                  lui         s7, 674138
                  c.addi      s3, -1
                  add         a7, s2, t0
                  c.addi      s10, -1
                  c.nop
                  c.mv        t4, t6
                  rem         s10, a5, a3
                  divu        sp, t5, a5
                  c.mv        a0, t0
                  c.li        s4, 23
                  divu        a0, t6, s1
                  c.add       s10, ra
                  li         t4, 0x0 #start riscv_int_numeric_corner_stream_34
                  li         s7, 0x0
                  li         t3, 0x0
                  li         a3, 0x5f0ea400
                  li         s11, 0x1
                  li         s8, 0x0
                  li         a5, 0x0
                  li         s9, 0x0
                  li         a2, 0x0
                  li         t0, 0x0
                  c.sub       a3, a3
                  c.add       s10, s4
                  sub         a1, s9, a5
                  c.li        t3, -1
                  sub         a0, zero, t1
                  rem         s1, ra, s0
                  c.addi16sp  sp, -16
                  c.addi16sp  sp, -16
                  mul         t0, a4, sp
                  rem         s11, a2, s8
                  addi        s1, s0, 373
                  c.mv        t1, sp
                  mul         a6, s2, t1
                  c.addi      s6, -1
                  rem         a1, t4, s6
                  c.mv        tp, t5
                  auipc       t4, 764363
                  c.addi4spn  a1, sp, 560
                  c.addi16sp  sp, 416
                  rem         s3, tp, t6
                  mulhsu      a4, ra, s10
                  mulh        a5, a3, sp
                  auipc       t3, 925130 #end riscv_int_numeric_corner_stream_34
                  li         s9, 0x1 #start riscv_int_numeric_corner_stream_2
                  li         s7, 0x1
                  li         t4, 0x0
                  li         a3, 0x1
                  li         t0, 0x0
                  li         t2, 0x1
                  li         s3, 0x0
                  li         s0, 0x0
                  li         a7, 0x0
                  li         t3, 0x1
                  mulhu       tp, a3, s3
                  mul         t4, a2, a4
                  mulhsu      a3, t1, t0
                  c.sub       a4, a3
                  add         s11, a7, s8
                  sub         a5, s10, s2
                  divu        s11, t0, s10
                  mulhu       ra, s3, s10
                  c.addi16sp  sp, -16
                  c.nop
                  rem         a1, s8, t0
                  sub         t2, s3, s1
                  auipc       s1, 248862
                  c.addi4spn  a3, sp, 128
                  mulhsu      a2, a0, t4
                  c.sub       a3, a3
                  add         s3, s8, tp
                  mulhu       tp, a0, s8
                  div         a4, s2, tp
                  c.sub       a3, a3
                  mulhu       ra, t5, a5 #end riscv_int_numeric_corner_stream_2
                  li         t4, 0x0 #start riscv_int_numeric_corner_stream_27
                  li         t3, 0x1
                  li         s11, 0x0
                  li         s3, 0x4a361856
                  li         a1, 0x69ed97e3
                  li         a5, 0x0
                  li         t2, 0x0
                  li         s9, 0x0
                  li         gp, 0x0
                  li         s8, 0x1
                  mulhu       zero, t3, t6
                  c.li        s2, 21
                  c.sub       s1, a4
                  c.sub       a3, a3
                  sub         s10, tp, tp
                  c.sub       a3, a3
                  auipc       t4, 497922
                  nop
                  c.sub       a3, a4
                  c.sub       a3, a3
                  c.addi4spn  a3, sp, 64
                  lui         s4, 375698
                  c.mv        t1, a0
                  nop
                  c.addi      t1, -1
                  lui         a4, 102767
                  c.nop
                  mulh        a6, s0, t1
                  c.nop
                  c.addi4spn  a3, sp, 464
                  li         t4, 0x33891eaa #start riscv_int_numeric_corner_stream_18
                  li         a6, 0x0
                  li         s9, 0x0
                  li         a4, 0x0
                  li         s8, 0x0
                  li         t3, 0x1
                  li         s11, 0x1
                  li         s1, 0x270ae66c
                  li         a1, 0x4cf2e05b
                  li         s10, 0x0
                  mulh        s3, a7, s1
                  divu        s9, t1, s6
                  addi        a2, t3, 97
                  add         s4, a2, t3
                  mul         s10, ra, s8
                  auipc       a7, 97125
                  nop
                  mulh        s8, s5, s8
                  c.mv        ra, s8
                  div         s8, a2, tp
                  mul         s2, zero, tp
                  div         gp, a3, t1
                  mul         tp, s7, s10
                  mulhu       s1, gp, t5
                  add         s3, a7, s0
                  nop
                  div         t0, s1, a5
                  c.add       t0, s7
                  rem         a1, t3, a0
                  sub         zero, s0, a5
                  sub         zero, t3, s3
                  c.addi4spn  a3, sp, 448
                  sub         ra, a4, s2
                  c.lui       t0, 18
                  li         s7, 0x133528bf #start riscv_int_numeric_corner_stream_16
                  li         t4, 0x0
                  li         s8, 0x0
                  li         t3, 0x0
                  li         s11, 0x0
                  li         s9, 0x5da7cfea
                  li         a6, 0xefc53f8
                  li         ra, 0x0
                  li         s10, 0x1
                  li         a0, 0x0
                  auipc       t0, 511568
                  c.mv        s11, s0
                  mulh        s8, s5, gp
                  c.sub       a3, a3
                  c.lui       a0, 22
                  c.nop
                  mulhsu      s9, a0, gp
                  add         s7, s6, s2
                  c.addi4spn  a3, sp, 128
                  sub         zero, tp, a1
                  lui         s4, 193150
                  lui         s1, 459146
                  lui         sp, 790397
                  mulh        a4, a5, a6
                  lui         s9, 1022758
                  c.li        t1, 11
                  c.addi16sp  sp, 240
                  mul         zero, s4, a5
                  c.nop
                  c.addi      t4, 5
                  sub         s2, s9, s8
                  mulh        s1, a0, s11
                  sub         a7, t6, s3
                  div         s0, s6, t0 #end riscv_int_numeric_corner_stream_16
                  mulhu       s0, s2, a7
                  nop
                  divu        s0, a5, s4
                  and         tp, t5, s5
                  c.andi      a3, 14
                  c.lui       t0, 31
                  c.addi      s0, -1
                  addi        t0, a1, -169
                  c.srai      a3, 6
                  c.slli      t2, 1
                  c.srai      a3, 4
                  rem         a0, t2, a2
                  c.srli      a3, 24
                  c.andi      s1, 31
                  c.addi4spn  a3, sp, 896
                  c.add       t0, s2
                  ori         s3, t1, -54
                  and         s11, t5, t1
                  srli        a2, s2, 7
                  c.li        ra, -1
                  c.mv        s8, s11
                  rem         s11, a2, a1
                  c.add       s0, a4
                  c.and       a3, s0
                  andi        s3, a6, 677
                  c.slli      s2, 27
                  c.lui       s8, 16
                  ori         t0, a3, 588
                  c.xor       a1, a3
                  or          sp, s4, a4
                  mulh        a5, a7, a5
                  sltiu       t1, t6, -727
                  andi        gp, s9, 1448
                  c.lui       s11, 13
                  lui         s11, 991457
                  auipc       ra, 139584
                  c.xor       a3, a3
                  c.slli      a2, 31
                  sub         a3, a0, ra
                  lui         s8, 303449
                  c.sub       a3, a3
                  c.add       a2, s7
                  ori         t0, a6, -313
                  xor         a0, a7, s11
                  mulhsu      s4, a2, a5
                  c.addi      s2, -1
                  c.xor       a1, s1
                  mulhu       s9, a7, t5
                  c.li        s7, -1
                  lui         s7, 887309
                  c.andi      a3, 28
                  rem         zero, sp, s9
                  c.nop
                  xori        s0, s2, -1410
                  addi        a3, s6, 673
                  c.slli      a3, 3
                  c.srli      a3, 31
                  srai        s3, t6, 17
                  xori        t1, s5, 1828
                  c.li        s11, 5
                  sltu        a0, a2, a1
                  c.nop
                  srai        s6, s5, 10
                  c.sub       a3, a2
                  or          s7, s7, a2
                  c.li        tp, -1
                  c.sub       a5, a5
                  c.lui       gp, 14
                  rem         s8, s1, s8
                  srai        ra, s4, 27
                  nop
                  c.add       ra, a4
                  sra         a1, a2, s10
                  mulh        a6, a6, t5
                  c.mv        s2, s2
                  c.addi      a4, 2
                  xor         a6, ra, t4
                  c.mv        ra, s2
                  divu        a2, a2, t4
                  addi        a5, a5, -721
                  c.nop
                  addi        a4, t2, 1119
                  c.lui       s7, 23
                  mulhu       s3, s3, s1
                  sltu        t2, s3, t0
                  div         s11, gp, gp
                  srl         a2, s11, s1
                  slli        t0, s10, 8
                  addi        t0, tp, -202
                  divu        s11, gp, s1
                  mulhsu      s7, a1, t6
                  c.lui       t3, 10
                  c.nop
                  auipc       a4, 501406
                  xor         a5, ra, t6
                  slti        a4, s9, -839
                  div         ra, t1, a5
                  slli        s4, t2, 29
                  c.add       ra, t1
                  and         s3, s6, tp
                  c.and       a3, a3
                  divu        zero, t2, s7
                  c.addi4spn  a3, sp, 64
                  mul         s1, s4, zero
                  ori         s11, s11, 788
                  c.and       a3, a1
                  c.andi      a3, -1
                  slli        s7, t6, 5
                  mul         t3, t2, t3
                  c.srli      a5, 1
                  srli        t1, s9, 28
                  c.lui       t0, 13
                  mulh        tp, s5, s0
                  c.lui       a1, 25
                  c.addi16sp  sp, 432
                  sub         s8, t5, sp
                  c.add       a7, s7
                  sll         t1, s7, a5
                  c.lui       t3, 29
                  c.xor       a3, a3
                  c.li        ra, -1
                  srli        s3, s5, 23
                  and         s0, s1, s2
                  mulh        ra, t2, a3
                  add         zero, a2, s3
                  srl         t0, s7, t6
                  slt         a2, s11, a2
                  c.sub       a3, a5
                  c.nop
                  sll         a5, t1, s10
                  srli        zero, s8, 12
                  sub         t0, s5, t3
                  and         a6, ra, s1
                  addi        s2, ra, 1345
                  divu        a3, s0, s0
                  c.li        t2, -1
                  mul         tp, ra, zero
                  c.or        a3, a3
                  nop
                  c.lui       a2, 10
                  c.slli      ra, 12
                  c.and       a3, a3
                  c.srai      a3, 26
                  srai        s9, s4, 16
                  c.addi16sp  sp, 80
                  sll         s4, s6, t6
                  c.nop
                  sra         zero, s1, s0
                  c.addi4spn  s1, sp, 832
                  ori         t1, tp, -1399
                  c.addi16sp  sp, -16
                  c.srai      a2, 11
                  divu        a2, t4, s8
                  c.addi4spn  a3, sp, 576
                  lui         tp, 564391
                  xor         s11, s1, t1
                  divu        s10, s4, a1
                  andi        s0, a7, 1226
                  rem         a6, t6, ra
                  sub         a1, t5, t6
                  srl         s3, a3, s11
                  sltu        t4, a5, ra
                  c.nop
                  mulhsu      t4, a7, t5
                  div         zero, s11, t2
                  mulhu       s8, t4, tp
                  c.mv        s1, s6
                  xor         gp, s6, a3
                  sll         s1, a6, s1
                  sll         s8, s5, s2
                  xori        t1, t5, -1052
                  mulhsu      s9, a1, zero
                  slti        s0, t6, -1878
                  slti        a0, s8, 779
                  srl         a6, tp, s11
                  c.nop
                  sub         a4, s5, a3
                  and         ra, s3, a7
                  slli        a2, s9, 18
                  andi        s8, a4, -312
                  srai        s9, t0, 23
                  sub         gp, s5, tp
                  c.nop
                  srli        a1, a1, 3
                  sra         s4, a6, s0
                  and         t4, s7, t0
                  slti        s11, a3, 169
                  andi        a2, t4, -1870
                  c.li        tp, 18
                  rem         a0, a2, s5
                  srl         a6, t3, s10
                  srl         t3, sp, s5
                  c.or        a3, a3
                  sltu        s8, t0, s5
                  c.xor       a3, a3
                  xor         ra, s1, s3
                  sub         a7, zero, t5
                  or          tp, s0, a3
                  addi        zero, t6, -336
                  or          t0, s7, t1
                  c.andi      a2, 24
                  c.andi      a3, 26
                  c.mv        s3, a0
                  c.addi4spn  a3, sp, 608
                  and         s6, a5, a5
                  c.srli      a3, 26
                  andi        s6, t4, 762
                  div         t2, a2, t6
                  ori         t2, t1, -1325
                  srli        s6, t3, 16
                  sltu        s7, t5, t0
                  or          a7, s8, t6
                  div         sp, s11, t0
                  sub         s6, s8, s6
                  sra         s0, t3, sp
                  c.or        a2, a3
                  auipc       zero, 852249
                  c.addi16sp  sp, -16
                  ori         t3, s7, -213
                  andi        s4, sp, 1970
                  slli        s4, tp, 23
                  c.andi      a3, 8
                  c.add       a2, a0
                  c.or        a3, a3
                  xori        s8, t2, -773
                  ori         s11, s9, 1878
                  srli        s9, t3, 6
                  srl         s10, gp, tp
                  sll         zero, t1, t5
                  addi        a4, s11, 78
                  divu        a4, s2, ra
                  c.sub       a3, a3
                  rem         a4, t4, a5
                  and         sp, t3, s2
                  sltu        ra, s5, s3
                  sub         s2, s3, s11
                  c.and       a3, a3
                  srl         t0, a3, s8
                  xor         s11, s7, s9
                  mul         s8, t4, sp
                  nop
                  c.mv        s9, gp
                  mul         s0, tp, s11
                  srl         s6, t1, a4
                  c.mv        s6, s4
                  addi        zero, a3, -735
                  c.addi16sp  sp, -16
                  nop
                  c.mv        a5, ra
                  srl         zero, t1, a3
                  c.lui       a6, 22
                  nop
                  c.addi16sp  sp, -16
                  sltiu       a5, gp, -1335
                  c.and       a3, s0
                  mul         a7, t2, t5
                  c.andi      s1, 12
                  ori         s8, s7, -87
                  c.srai      a3, 11
                  c.lui       s1, 22
                  xor         t2, t0, sp
                  xor         sp, t5, a4
                  srli        tp, s1, 18
                  c.addi16sp  sp, 496
                  c.mv        a7, t3
                  c.add       s7, a7
                  or          s2, t3, a2
                  c.addi      ra, -1
                  sub         a6, t2, t0
                  slt         ra, ra, t2
                  c.addi      a4, 2
                  andi        a6, s8, -1489
                  slt         a7, s0, t6
                  mulhu       a3, a6, t6
                  c.or        a3, a4
                  lui         zero, 819561
                  c.andi      a3, 23
                  c.li        ra, -1
                  div         tp, tp, a7
                  c.addi      a7, 2
                  slti        a5, tp, -1526
                  or          a6, s1, a3
                  slti        zero, sp, -1911
                  c.lui       a1, 4
                  c.srai      a1, 26
                  c.or        a3, a3
                  c.srli      a3, 11
                  c.or        a3, a3
                  and         s7, t4, a2
                  divu        a4, a4, s1
                  c.slli      a3, 1
                  xor         zero, tp, t2
                  sltiu       s8, s11, -1839
                  slti        ra, a6, 712
                  c.li        t0, -1
                  srai        t2, t6, 13
                  sll         s0, a6, s11
                  c.lui       ra, 4
                  c.srai      a3, 25
                  rem         zero, a6, s6
                  c.xor       a3, a3
                  c.srli      a2, 22
                  c.mv        s7, s5
                  sll         s0, s11, s8
                  xori        s1, t6, 854
                  c.sub       a3, a3
                  c.addi16sp  sp, 432
                  c.xor       a4, a3
                  lui         zero, 102860
                  c.srli      a2, 1
                  slt         a6, s10, a6
                  add         s11, a0, a7
                  srai        zero, s6, 23
                  and         gp, s8, ra
                  ori         gp, t5, -835
                  c.xor       a3, a3
                  sra         s1, a2, s9
                  slt         zero, s8, a4
                  lui         s7, 390605
                  slti        s11, s8, -802
                  mul         a7, s11, a1
                  c.or        a3, a3
                  div         zero, s8, ra
                  c.sub       a3, a3
                  slli        t2, s10, 26
                  c.nop
                  c.lui       t4, 24
                  mulhu       s0, zero, s10
                  and         s1, t6, a6
                  ori         a2, s4, -1010
                  srai        sp, zero, 16
                  sll         t4, s1, t4
                  nop
                  andi        a2, s6, -557
                  sra         t3, t2, s5
                  srai        t4, s5, 28
                  c.slli      s10, 24
                  srai        t4, s0, 10
                  mulh        t4, sp, a2
                  c.srai      a2, 9
                  c.andi      a1, 3
                  c.srli      a1, 24
                  c.nop
                  c.li        sp, 7
                  slt         s9, tp, a1
                  c.andi      a3, 22
                  c.li        t0, 0
                  lui         s4, 260237
                  rem         t4, a4, t4
                  c.and       a3, a3
                  c.andi      a3, -1
                  ori         s11, a4, -1902
                  nop
                  slli        a1, sp, 2
                  and         s0, s11, a7
                  c.srai      a3, 13
                  slt         s4, t6, t3
                  c.mv        sp, tp
                  mul         a7, s6, s9
                  srl         t1, sp, tp
                  c.or        a3, a0
                  srai        zero, t4, 26
                  c.sub       a3, a1
                  c.nop
                  c.andi      a5, 20
                  ori         s10, s11, -656
                  mulhsu      sp, ra, a4
                  sll         a0, tp, s2
                  c.mv        a0, ra
                  c.xor       a3, a3
                  ori         s10, t3, 1767
                  srl         a6, t0, s8
                  c.addi      t4, 22
                  c.mv        s8, s9
                  lui         a5, 110511
                  c.li        s0, 8
                  or          t3, s1, s7
                  c.addi      s2, 9
                  div         s10, s7, s4
                  xor         a0, a2, a6
                  and         zero, s2, s3
                  c.li        t2, 27
                  divu        ra, a5, s5
                  divu        tp, t5, t5
                  or          s9, a5, a3
                  c.slli      a7, 24
                  c.addi16sp  sp, 272
                  mulh        a6, a5, a6
                  c.andi      a3, -1
                  c.mv        ra, gp
                  c.addi16sp  sp, -16
                  c.slli      a4, 22
                  c.and       a3, a3
                  lui         s10, 115618
                  sltu        s6, t2, a4
                  slt         zero, ra, s1
                  nop
                  and         tp, zero, s1
                  lui         a7, 95136
                  c.nop
                  srai        t2, a2, 9
                  xor         gp, t0, a7
                  c.slli      a2, 1
                  sra         t2, s0, a6
                  c.sub       a3, a3
                  rem         zero, s8, t0
                  c.addi4spn  a1, sp, 896
                  srai        s6, gp, 9
                  add         a4, s9, ra
                  c.mv        a0, sp
                  and         s6, t0, a6
                  divu        s1, a2, t6
                  rem         s8, s8, t4
                  xori        a7, t0, 680
                  rem         t3, t3, a0
                  c.nop
                  c.and       a3, a3
                  srai        s1, t0, 2
                  mulh        s6, s5, a4
                  c.sub       a3, a3
                  xor         t0, s2, s3
                  c.slli      s11, 15
                  mulhsu      a5, s7, t1
                  slti        s4, s10, -692
                  srl         s11, sp, s6
                  c.mv        s4, s2
                  rem         s10, t2, s2
                  slli        s2, t4, 12
                  c.li        s2, -1
                  c.nop
                  c.slli      s0, 11
                  srl         s11, s11, tp
                  andi        ra, t5, 484
                  c.addi4spn  a3, sp, 128
                  c.mv        t3, s4
                  c.lui       t3, 14
                  c.and       s0, a3
                  lui         a3, 50184
                  sltiu       a4, gp, -1248
                  xor         sp, s2, t4
                  sub         s0, t3, s2
                  rem         t3, s1, a6
                  addi        t1, s4, 1595
                  slli        t2, t6, 15
                  auipc       s7, 286390
                  or          s11, s0, t6
                  sub         zero, s8, a0
                  c.addi16sp  sp, 128
                  srl         a0, s1, s4
                  c.addi16sp  sp, 304
                  divu        s6, t1, a2
                  mulh        s4, s7, s6
                  c.and       a3, a3
                  c.add       ra, a0
                  add         s4, t1, s11
                  srai        a2, t6, 25
                  xori        zero, s9, 1609
                  mul         gp, t6, t4
                  c.sub       a5, a3
                  c.mv        t2, a7
                  andi        s8, s6, 697
                  sltu        a1, s11, t0
                  and         s10, t3, t1
                  xori        sp, a2, 1787
                  srli        a7, a1, 19
                  mul         s4, a4, zero
                  sub         a0, gp, t0
                  sra         a2, s6, a4
                  c.srli      a3, 4
                  sll         a6, a0, t0
                  srl         a3, s8, ra
                  slli        s9, s1, 23
                  divu        s1, t4, a0
                  c.and       a3, a1
                  and         s11, sp, t6
                  c.or        a3, a3
                  divu        t0, a1, tp
                  c.xor       a3, a3
                  auipc       a1, 89952
                  sltiu       zero, a7, 274
                  srli        a2, a4, 7
                  c.add       a6, a0
                  ori         t2, t3, -1180
                  rem         s4, zero, gp
                  mulhu       s2, s5, s4
                  c.or        a3, a3
                  ori         a2, s9, -465
                  or          zero, a4, s5
                  ori         a5, ra, 517
                  c.and       a3, a3
                  c.andi      a3, -1
                  ori         tp, a4, 843
                  c.addi      a3, -1
                  c.add       ra, s6
                  c.mv        sp, a2
                  div         s4, a6, a5
                  mulhsu      a0, s11, t1
                  sll         t3, a4, t3
                  c.xor       a3, a3
                  lui         gp, 718280
                  c.addi      a6, -1
                  c.andi      a3, 27
                  divu        s11, s7, ra
                  slti        a0, a6, -1885
                  mul         s2, s4, s1
                  xor         zero, tp, s5
                  c.sub       a2, a3
                  sra         s7, t5, s8
                  addi        gp, gp, -1731
                  srli        s1, s8, 22
                  c.srai      a3, 15
                  div         a5, s9, t3
                  c.addi16sp  sp, -16
                  mul         t0, t4, a6
                  sltu        s3, t1, s2
                  c.srli      a2, 14
                  c.mv        t4, s1
                  auipc       a6, 65171
                  sll         a4, s8, a7
                  sll         a6, s11, s0
                  or          s3, t4, s1
                  c.addi4spn  a3, sp, 832
                  sll         zero, a5, s5
                  sra         a1, s2, zero
                  slli        zero, a0, 19
                  srl         ra, s5, s10
                  c.or        a3, a3
                  auipc       sp, 146684
                  mul         s1, s10, t2
                  xori        s2, sp, 1423
                  divu        tp, s5, t0
                  xori        zero, t3, -461
                  c.srli      a3, 30
                  addi        a5, a5, -1426
                  addi        a6, s5, 1433
                  c.addi      t4, -1
                  addi        a0, gp, -1099
                  slt         a2, a4, s7
                  c.srli      a4, 13
                  c.slli      a1, 9
                  c.addi      ra, -1
                  c.addi      gp, 27
                  c.li        s4, -1
                  slti        t4, tp, 954
                  andi        s0, a1, -328
                  addi        s11, s0, -2041
                  sltu        s9, s1, t3
                  c.addi      sp, -1
                  c.addi      a1, -1
                  sra         a4, s10, s6
                  xori        s2, a4, -316
                  xor         t0, s8, ra
                  and         a0, gp, t1
                  rem         s6, s6, tp
                  ori         t3, s11, -839
                  slt         gp, tp, t1
                  c.sub       a3, a3
                  lui         zero, 163499
                  rem         tp, s2, zero
                  mulh        s6, t6, s3
                  xori        zero, a2, -1781
                  mul         t3, s0, a0
                  c.addi      a4, -1
                  add         zero, t4, s6
                  c.xor       s1, a3
                  div         s9, t0, s1
                  and         a6, sp, a6
                  or          t2, s1, s6
                  add         zero, s1, s8
                  andi        t0, t3, -878
                  add         s7, s6, s3
                  c.andi      a5, 6
                  mulhu       tp, a3, s11
                  c.srai      a3, 26
                  c.srai      s1, 14
                  c.addi      t0, 13
                  sll         a3, sp, a5
                  lui         t1, 733403
                  sltu        sp, zero, a3
                  addi        s0, s0, -553
                  c.li        t1, 9
                  mulhsu      a3, a4, tp
                  c.addi4spn  a3, sp, 128
                  c.li        a5, -1
                  and         t4, s5, t0
                  c.lui       s3, 12
                  mul         s0, s8, s2
                  sub         s6, a7, s11
                  c.li        ra, -1
                  or          s3, a0, s7
                  sltu        zero, a5, t0
                  c.xor       a3, a2
                  c.sub       a5, a3
                  ori         a2, s9, 472
                  addi        zero, t5, 1115
                  c.nop
                  c.lui       s8, 26
                  xori        s3, s7, -492
                  divu        t3, s11, s0
                  add         s3, t0, s2
                  div         zero, a1, t0
                  c.srli      a3, 5
                  c.xor       a3, a3
                  sltu        s11, t6, s6
                  mul         s10, s3, t1
                  lui         a6, 517881
                  xori        a2, sp, 321
                  xor         zero, t6, s9
                  rem         a1, t5, t5
                  c.srli      a1, 6
                  rem         s10, t6, a7
                  c.addi4spn  a3, sp, 896
                  divu        s2, a1, tp
                  sltiu       gp, s5, 1293
                  c.or        a3, a3
                  addi        zero, a5, 271
                  c.srli      a3, 30
                  c.lui       gp, 1
                  mulh        a6, s10, t0
                  slti        zero, s0, 782
                  c.addi      ra, 11
                  c.srai      a0, 16
                  c.addi4spn  a3, sp, 64
                  c.add       s4, a6
                  sub         a6, sp, t2
                  or          a0, s1, sp
                  c.and       a5, a3
                  srli        tp, a1, 18
                  mulhu       s3, s10, s7
                  ori         s6, sp, -1987
                  c.add       a5, a7
                  add         sp, a3, a7
                  ori         s1, s5, 695
                  andi        a7, s9, -908
                  c.addi      s8, 23
                  li         gp, 0x0 #start riscv_int_numeric_corner_stream_10
                  li         a3, 0x1
                  li         s8, 0x0
                  li         t4, 0x0
                  li         t3, 0x5a0af685
                  li         a4, 0x0
                  li         t1, 0x0
                  li         tp, 0x1
                  li         s9, 0x1
                  li         a2, 0x0
                  c.addi16sp  sp, -16
                  nop
                  add         zero, gp, sp
                  mulhsu      a7, ra, s7
                  c.addi4spn  a2, sp, 320
                  rem         s6, a6, t5
                  c.li        ra, 10
                  div         a6, t0, tp
                  c.addi4spn  a3, sp, 384
                  c.mv        s0, t4
                  lui         s4, 1015439
                  c.mv        s6, t3
                  lui         s6, 362787
                  add         t4, t3, s10
                  add         s0, t6, s4
                  mul         tp, t1, s9
                  c.sub       a3, a3
                  c.addi      a5, 19
                  add         a4, s5, sp
                  lui         a0, 117568
                  c.mv        s1, t1
                  c.add       ra, s8
                  c.sub       a3, a3
                  addi        s11, s7, 1228
                  addi        a0, s0, 1245
                  c.addi      a4, -1
                  c.mv        a2, ra
                  mulhu       t1, s2, t0 #end riscv_int_numeric_corner_stream_10
                  addi        s10, t0, -1438
                  lui         zero, 862729
                  srl         a1, a1, tp
                  sub         a3, s11, a5
                  mulhsu      a6, s1, zero
                  mulhu       t3, s2, s1
                  sub         a4, s1, t6
                  sltu        gp, s9, gp
                  c.srai      a3, 29
                  mul         a2, s10, a7
                  c.addi16sp  sp, -16
                  c.sub       a3, a0
                  nop
                  c.li        a1, 17
                  xor         gp, a6, a6
                  and         a7, ra, a2
                  xor         t2, s10, s2
                  xori        s0, s8, 587
                  sltiu       a4, t5, 1735
                  mulhu       s10, a5, s1
                  auipc       s1, 841875
                  c.xor       a3, a3
                  c.add       s2, s1
                  slli        zero, s6, 8
                  mul         t4, t6, a1
                  xori        t0, s11, 1908
                  nop
                  c.sub       a3, a3
                  and         s3, ra, t3
                  c.and       s0, a3
                  c.slli      s4, 7
                  c.andi      s1, -1
                  add         t2, gp, gp
                  slti        t3, t2, 1247
                  srl         s2, t5, a3
                  mulhsu      a7, s4, s0
                  c.srli      a3, 11
                  auipc       zero, 422925
                  xori        a7, s7, -661
                  and         s2, a7, s8
                  add         t3, t1, sp
                  rem         a3, t3, tp
                  c.andi      a2, 15
                  srli        s0, t2, 20
                  c.nop
                  c.lui       a4, 28
                  c.nop
                  nop
                  mulhsu      gp, t5, s2
                  nop
                  sra         a3, gp, t4
                  c.andi      a3, -1
                  c.sub       a3, a3
                  c.slli      ra, 16
                  c.srli      a3, 28
                  c.add       ra, a5
                  c.li        a5, -1
                  mul         a7, s7, a6
                  mulhu       s2, s11, s0
                  slti        zero, a4, 1169
                  c.addi16sp  sp, -16
                  c.or        a3, a3
                  addi        zero, s3, 74
                  c.srai      a3, 10
                  rem         ra, t3, a2
                  rem         t1, s5, a7
                  srai        t2, s1, 18
                  auipc       gp, 895555
                  c.slli      s6, 12
                  mulhsu      a3, zero, t0
                  rem         s11, t3, a1
                  c.srli      a3, 16
                  c.addi4spn  a1, sp, 80
                  sll         sp, a5, a5
                  nop
                  c.li        gp, 23
                  srli        gp, t0, 9
                  c.xor       a3, a0
                  div         s0, s9, zero
                  c.slli      t2, 14
                  c.add       a1, a2
                  c.nop
                  c.lui       t4, 19
                  mulh        a7, s1, s8
                  c.and       a3, a3
                  or          s11, s5, t2
                  c.andi      a0, -1
                  sltu        s0, a1, s1
                  auipc       ra, 916034
                  sltu        a4, ra, t5
                  c.srai      s1, 12
                  mul         s9, ra, t4
                  c.sub       s1, a3
                  c.addi16sp  sp, -16
                  c.nop
                  divu        t0, zero, a7
                  lui         zero, 491669
                  sltu        s1, a0, a4
                  mulh        t3, a6, s4
                  sll         a1, gp, a3
                  c.sub       s0, a3
                  slti        s4, a1, -168
                  c.addi16sp  sp, -16
                  srai        tp, s6, 18
                  c.lui       t3, 28
                  mulhu       a4, a0, a7
                  slti        a4, a2, 1053
                  sra         s6, s10, a0
                  sll         tp, zero, a4
                  c.add       a2, t3
                  mulh        a6, s10, s10
                  c.srli      a3, 16
                  c.andi      a3, -1
                  c.srli      a3, 31
                  c.and       a3, a5
                  mulhu       a5, a6, s11
                  xori        a4, zero, 832
                  lui         a4, 666235
                  c.addi4spn  a3, sp, 592
                  andi        t0, a6, 1526
                  srl         t0, a3, t5
                  mulhu       s11, t0, s8
                  c.addi16sp  sp, 176
                  sra         t1, s4, s9
                  c.or        a3, a3
                  srl         s8, s0, a6
                  mul         a6, s0, s2
                  xor         a4, s2, ra
                  xori        s8, s8, -134
                  c.mv        a1, s5
                  sub         tp, s3, ra
                  c.nop
                  c.srai      a3, 14
                  mulhu       t3, s0, s8
                  lui         t3, 365300
                  mulhsu      s4, gp, a2
                  or          a4, t2, t1
                  c.add       t0, t4
                  c.andi      a3, 7
                  add         a6, s9, a5
                  lui         ra, 224698
                  c.lui       t0, 25
                  c.sub       a3, a3
                  sltiu       t1, zero, -1908
                  c.addi16sp  sp, -16
                  add         s2, s3, s0
                  c.li        a5, 23
                  c.sub       s1, a3
                  nop
                  c.addi      t3, -1
                  c.addi4spn  a3, sp, 896
                  xori        t0, s4, 2029
                  mulhu       gp, t6, t6
                  c.li        s2, 14
                  mulhsu      t4, t3, t2
                  or          s3, a7, s4
                  c.nop
                  lui         s3, 892830
                  sltiu       tp, s9, -1620
                  xori        a2, t4, 915
                  mul         zero, s0, s10
                  c.li        s11, -1
                  divu        s10, t4, s1
                  c.li        a6, -1
                  sll         s2, s11, t6
                  c.addi16sp  sp, -16
                  xor         s10, s7, s3
                  auipc       s6, 269220
                  andi        zero, s8, -289
                  c.or        a3, a3
                  c.add       s0, a5
                  c.addi      s8, -1
                  srl         a1, a1, t4
                  c.addi16sp  sp, -16
                  auipc       a7, 905854
                  ori         t4, s3, -731
                  slt         s2, s3, a1
                  xori        t2, a7, 804
                  sltu        s10, zero, s0
                  c.and       a3, a3
                  c.mv        a1, s6
                  c.lui       a4, 31
                  sll         t1, tp, s6
                  sltiu       s9, t6, 315
                  add         a3, a7, t4
                  divu        gp, s0, s8
                  c.srli      a3, 3
                  slt         t0, a1, a4
                  c.addi      a6, -1
                  c.srai      a3, 4
                  c.addi16sp  sp, -16
                  mulhsu      t2, a1, tp
                  c.slli      a2, 11
                  c.addi      a7, 6
                  add         tp, s7, a0
                  sra         zero, t6, a5
                  add         a7, a2, a0
                  mul         s2, a5, gp
                  sltu        gp, tp, s7
                  or          zero, s6, t6
                  andi        t0, s10, 242
                  xor         a3, s0, ra
                  slt         a6, s2, t2
                  c.addi4spn  a3, sp, 320
                  slti        a7, s5, -775
                  divu        s0, a0, ra
                  c.mv        ra, gp
                  and         t1, a0, gp
                  sltu        zero, zero, a4
                  add         a3, t6, t6
                  c.add       tp, t2
                  sra         a0, t5, a3
                  c.or        a3, a3
                  c.and       a3, a3
                  divu        s11, tp, ra
                  div         s10, t4, ra
                  nop
                  c.or        a3, a3
                  c.srli      a5, 21
                  sll         zero, s1, a7
                  srl         gp, s4, t1
                  div         ra, zero, a1
                  divu        s11, a7, s5
                  srl         ra, t2, s11
                  add         zero, a7, s10
                  c.andi      a3, -1
                  c.nop
                  c.addi      a5, 6
                  or          a4, s2, s0
                  sll         a3, s10, a3
                  sub         t2, s11, a7
                  addi        ra, t0, -1074
                  xor         a1, t3, s0
                  c.sub       a3, a3
                  c.slli      ra, 5
                  addi        gp, t3, -916
                  c.addi4spn  a3, sp, 736
                  div         s7, a0, s1
                  ori         s11, s10, 633
                  ori         ra, s0, 814
                  c.mv        t4, t5
                  c.xor       a3, a4
                  div         sp, zero, a1
                  c.or        a2, a4
                  c.nop
                  mulhsu      a3, zero, gp
                  slt         sp, a0, s10
                  ori         a3, a7, -1831
                  mulhu       t4, a4, s5
                  div         s1, a1, gp
                  c.slli      s2, 28
                  c.srai      a3, 16
                  auipc       ra, 494816
                  sltiu       ra, t1, 1921
                  addi        gp, s0, 1296
                  slli        zero, a7, 28
                  mulhsu      t4, s10, a0
                  sll         t4, t1, s11
                  xor         s7, t2, a1
                  addi        s7, s6, -239
                  auipc       s4, 815028
                  addi        a0, t6, -1792
                  sub         sp, gp, s11
                  addi        ra, s7, -221
                  add         s6, s7, a1
                  c.addi4spn  a5, sp, 640
                  rem         a5, s10, tp
                  c.addi4spn  a3, sp, 576
                  slt         zero, t5, t5
                  sra         s10, a4, t4
                  andi        t0, gp, 276
                  slti        a2, a4, -1489
                  srl         s8, zero, t3
                  c.lui       a5, 29
                  c.lui       tp, 27
                  c.addi16sp  sp, 496
                  c.srli      a5, 10
                  or          s0, ra, zero
                  addi        a4, s9, -1817
                  auipc       t4, 833413
                  add         zero, s2, a6
                  c.srli      a1, 8
                  c.lui       ra, 25
                  or          t3, a5, a1
                  c.and       a3, a4
                  lui         s9, 687679
                  c.slli      t0, 14
                  addi        s3, gp, -171
                  c.mv        t0, s6
                  sltiu       s2, s7, 597
                  rem         s2, s0, s9
                  ori         a4, sp, 1579
                  mulhsu      s11, s3, a0
                  andi        zero, s6, 1414
                  c.andi      a0, 15
                  or          s7, s0, zero
                  slti        t0, t3, 575
                  or          a6, s5, s4
                  c.nop
                  mulhsu      s7, tp, a5
                  addi        a0, s11, 34
                  c.sub       a3, a3
                  lui         zero, 23458
                  andi        t2, zero, 1453
                  mulh        s10, a2, t2
                  c.lui       s8, 22
                  andi        zero, s3, -506
                  rem         gp, s6, ra
                  mulh        a7, sp, sp
                  c.mv        t1, a2
                  mulhu       gp, a0, a6
                  c.sub       a3, a3
                  c.addi      ra, -1
                  divu        a2, s7, a3
                  mulh        zero, t5, a4
                  c.addi16sp  sp, -16
                  c.or        a3, a3
                  c.add       ra, ra
                  slti        a1, s6, -1952
                  andi        t1, a2, 128
                  slli        s4, s5, 29
                  c.add       a7, s9
                  c.srli      a3, 10
                  sub         a4, s10, a5
                  ori         a2, zero, -463
                  srai        zero, a6, 30
                  divu        a0, tp, s4
                  c.add       a0, s8
                  c.lui       s2, 27
                  c.srai      a2, 1
                  and         s4, s6, t5
                  div         a0, s5, s2
                  c.srai      a3, 19
                  slli        a3, s10, 23
                  nop
                  c.xor       a3, a3
                  slli        t0, sp, 29
                  c.addi4spn  a0, sp, 448
                  mulhsu      a1, t2, a6
                  c.lui       ra, 18
                  c.sub       a3, a3
                  c.slli      ra, 11
                  srl         a6, a5, s2
                  add         gp, t0, s0
                  xor         t1, t6, a2
                  sltu        a1, a0, s6
                  slt         t0, a3, a2
                  add         s3, a1, t2
                  srai        s2, s1, 13
                  srai        t0, sp, 20
                  addi        s1, s4, -1457
                  c.lui       s2, 20
                  mulhu       zero, a5, a4
                  sra         zero, s5, s4
                  c.nop
                  addi        a5, t4, 1892
                  c.add       t2, t0
                  c.and       a3, a3
                  slti        t4, a5, 296
                  divu        a6, zero, a5
                  nop
                  mulhu       t1, s4, sp
                  slti        s2, gp, 654
                  c.xor       a3, a3
                  c.sub       a5, a3
                  c.and       a3, a3
                  c.slli      s6, 8
                  and         tp, a3, s4
                  c.nop
                  mulhu       t1, s4, gp
                  mul         s8, s4, t6
                  c.addi16sp  sp, -16
                  and         a4, ra, t5
                  mulhsu      zero, s9, gp
                  c.sub       a3, s1
                  srai        zero, a6, 2
                  c.xor       a3, a3
                  c.addi16sp  sp, -16
                  xor         t2, t2, t2
                  c.andi      a3, 0
                  c.or        a3, a2
                  c.srai      a3, 5
                  addi        s11, s10, 903
                  c.srli      a1, 1
                  c.li        s1, 31
                  c.andi      a3, 24
                  auipc       sp, 43664
                  c.nop
                  sra         a2, a2, a0
                  c.andi      a3, -1
                  xor         s2, a1, a1
                  auipc       tp, 655151
                  andi        t2, ra, 1675
                  c.sub       a3, a3
                  mul         zero, ra, t6
                  c.xor       s0, a3
                  c.slli      s3, 19
                  sltiu       s6, zero, 393
                  xori        s3, a1, -654
                  srl         s3, t2, a3
                  slt         t1, ra, t3
                  nop
                  xor         a3, a6, s2
                  srl         t4, s0, t5
                  xor         zero, s11, sp
                  c.and       a3, a3
                  c.or        a3, a3
                  auipc       sp, 724785
                  sra         a7, s9, s3
                  c.nop
                  slt         zero, t6, zero
                  sub         t1, sp, s5
                  c.nop
                  mulhsu      t2, s3, t5
                  addi        s4, s0, -333
                  c.andi      a3, -1
                  xori        a7, s2, 165
                  sub         s8, a3, s8
                  li         t3, 0x0 #start riscv_int_numeric_corner_stream_14
                  li         gp, 0x6849aa45
                  li         s11, 0x0
                  li         s9, 0x1
                  li         s7, 0x63821270
                  li         a1, 0x3a9560d7
                  li         t4, 0x10155258
                  li         s10, 0x1
                  li         s3, 0x0
                  li         s8, 0x0
                  auipc       zero, 777440
                  mulhu       t4, t4, a7
                  auipc       a5, 426119
                  sub         a2, a4, a1
                  c.nop
                  c.lui       s10, 4
                  divu        a2, a4, t0
                  mulhsu      s6, s9, s2
                  mulh        tp, s3, s9
                  lui         a2, 225633
                  c.lui       a6, 27
                  divu        t1, a0, gp
                  nop
                  mul         s6, s1, s1
                  addi        s2, a0, -758
                  div         zero, t4, s4
                  c.sub       a3, a3
                  div         a5, gp, t0
                  c.nop
                  mulhu       t4, s11, t2
                  c.addi4spn  a1, sp, 384
                  div         a7, a0, t1 #end riscv_int_numeric_corner_stream_14
                  mulh        zero, a3, t4
                  slt         a1, a6, a3
                  mulhu       zero, t6, s7
                  xor         t2, a0, s5
                  add         zero, s3, tp
                  c.li        s3, -1
                  c.slli      s3, 12
                  c.nop
                  sltiu       zero, a6, -443
                  c.lui       tp, 5
                  sltiu       s2, t5, 410
                  c.srai      a3, 26
                  c.and       a3, a3
                  srai        a1, t1, 25
                  c.addi16sp  sp, -16
                  c.andi      a3, 24
                  mulhsu      s2, a6, sp
                  sra         s7, s0, a2
                  slti        a0, t6, -74
                  or          zero, a4, a2
                  c.srai      a3, 16
                  sub         s3, s1, s5
                  sub         s8, t0, a6
                  div         s7, gp, s3
                  rem         a4, a2, a0
                  c.and       a3, a3
                  divu        s0, a4, t2
                  c.add       s11, ra
                  c.slli      ra, 22
                  c.add       ra, gp
                  c.xor       s0, s0
                  c.andi      a3, -1
                  c.addi16sp  sp, 368
                  xor         t0, t2, zero
                  sub         t4, s10, t1
                  sltiu       s11, t2, 1399
                  sub         s3, a4, a0
                  mul         a2, s2, a0
                  sra         s4, gp, s2
                  or          a5, gp, s8
                  srli        sp, s2, 6
                  c.mv        a4, s1
                  c.mv        t3, ra
                  c.andi      a3, -1
                  slt         gp, a6, t1
                  sub         sp, t3, s0
                  srli        t2, a2, 2
                  c.xor       a3, a3
                  c.addi4spn  a3, sp, 352
                  c.nop
                  mulh        t1, a4, s3
                  c.nop
                  c.sub       s1, a3
                  xori        a6, ra, 1246
                  srli        a1, t4, 20
                  c.addi4spn  a1, sp, 320
                  c.xor       a3, a3
                  slt         s6, zero, ra
                  sltiu       zero, a7, 1854
                  mulh        t1, s0, s5
                  srai        a4, t1, 24
                  rem         a3, gp, s1
                  sltu        t1, s2, s11
                  mul         s4, a6, t5
                  slti        t2, s5, -919
                  c.lui       ra, 28
                  c.li        t4, 22
                  c.add       gp, a6
                  c.mv        s4, sp
                  add         a1, s8, t2
                  c.addi4spn  a3, sp, 112
                  srai        a1, a5, 27
                  c.add       ra, s1
                  slli        t0, t0, 11
                  divu        a3, s10, a5
                  sltiu       a5, t2, -697
                  c.srli      a3, 26
                  addi        gp, s2, -1899
                  xor         ra, s5, t4
                  c.xor       a3, a3
                  c.sub       a3, a3
                  nop
                  mulh        zero, s10, t1
                  sltu        s10, zero, sp
                  add         t4, a5, t0
                  srl         a2, sp, a0
                  nop
                  c.add       s7, a4
                  xori        a4, s1, -530
                  auipc       s8, 902289
                  srai        zero, t2, 11
                  sll         s6, s9, s9
                  ori         zero, a6, -1842
                  srl         a2, s4, s2
                  sub         a6, s1, t6
                  xori        a4, a5, 1242
                  c.sub       a3, a3
                  c.slli      s6, 9
                  c.srai      a2, 29
                  ori         s10, a3, -662
                  sra         a5, s2, zero
                  divu        tp, s4, t2
                  c.addi4spn  a3, sp, 64
                  lui         zero, 788037
                  c.srli      a3, 21
                  c.add       ra, a5
                  rem         s7, a3, a3
                  c.addi16sp  sp, 272
                  c.xor       a3, a3
                  srli        a3, t6, 9
                  add         ra, s11, s6
                  srai        s3, s9, 18
                  and         t4, t0, s4
                  c.andi      a4, -1
                  xor         t1, gp, s8
                  c.nop
                  c.mv        s8, ra
                  c.sub       a3, a3
                  addi        a6, a4, 1777
                  sra         a5, t4, gp
                  xori        a1, s0, -1374
                  ori         t4, t6, 171
                  c.srai      a3, 12
                  add         zero, t4, a4
                  divu        s3, s0, t1
                  sltiu       gp, t1, 764
                  c.addi      tp, 25
                  c.or        s1, a3
                  add         s11, s9, t0
                  slti        tp, t3, 663
                  c.mv        ra, s9
                  div         s2, a7, s10
                  sll         a6, a0, a6
                  srl         s0, a1, s5
                  add         a6, s11, sp
                  xor         s10, s1, a0
                  sub         s6, s2, t0
                  divu        zero, a4, t0
                  c.andi      a3, -1
                  slt         tp, t1, s10
                  sltiu       s9, s2, -257
                  slt         s4, a3, zero
                  sltu        s3, s6, a3
                  c.andi      a5, 7
                  srl         t4, s4, a6
                  xor         s9, ra, gp
                  c.and       a3, a3
                  c.and       a3, a3
                  c.or        a5, a3
                  c.add       ra, s6
                  divu        t3, a2, sp
                  sltu        s2, a0, a6
                  c.add       t3, s7
                  addi        t2, t3, -1380
                  div         zero, s0, ra
                  mulhsu      s8, t4, s8
                  c.nop
                  and         a7, a0, a4
                  slt         a7, s4, s9
                  c.srli      a3, 3
                  sra         t1, sp, a6
                  sltiu       s11, s8, 848
                  c.andi      a5, 26
                  slt         gp, t3, a7
                  xori        s0, s9, -1198
                  ori         ra, s11, -1077
                  mulh        gp, a3, s11
                  div         s11, a1, a3
                  xori        s3, ra, 671
                  xor         s11, t0, zero
                  xor         a0, s10, sp
                  c.or        a3, a3
                  c.xor       a3, s0
                  c.li        a1, -1
                  mul         s2, s4, t3
                  xori        s7, tp, -1396
                  ori         s1, s0, 208
                  mulh        a0, t3, a1
                  li         t4, 0x0 #start riscv_int_numeric_corner_stream_31
                  li         a1, 0x5bb5b58c
                  li         t3, 0x10687595
                  li         t2, 0x1ca7063e
                  li         a2, 0x0
                  li         tp, 0x1
                  li         s4, 0x0
                  li         s6, 0x1
                  li         s8, 0x5ba3fe30
                  li         a3, 0x0
                  auipc       t1, 374203
                  mulhsu      zero, s10, a6
                  mulhsu      gp, t5, t6
                  lui         s4, 1021278
                  c.li        s2, 15
                  rem         s0, a2, a5
                  c.li        s8, -1
                  c.lui       ra, 3
                  nop
                  c.add       s2, t1
                  mulh        zero, ra, s1
                  mulhsu      tp, t5, s9
                  c.lui       ra, 16
                  c.mv        s10, t2
                  div         a6, a6, s2
                  div         s8, s8, t5
                  div         a7, a3, s4
                  divu        zero, s1, a1
                  divu        s8, s1, s7
                  mulhu       s10, s3, s3
                  divu        a4, s11, tp
                  c.li        t3, -1
                  rem         tp, t1, s11
                  lui         t4, 427891
                  c.nop
                  lui         s2, 210173
                  rem         a0, sp, zero
                  c.lui       gp, 11
                  div         a6, t3, s9 #end riscv_int_numeric_corner_stream_31
                  andi        s9, t1, -1444
                  c.srai      a3, 12
                  srl         sp, s3, s0
                  c.srli      a3, 16
                  ori         zero, a6, 822
                  c.nop
                  c.lui       a4, 15
                  c.addi16sp  sp, 128
                  lui         zero, 426328
                  or          zero, a0, a7
                  sltu        gp, a3, t4
                  mulhsu      s1, a5, a7
                  c.lui       gp, 23
                  c.slli      t4, 26
                  c.addi      ra, -1
                  xori        a2, ra, 256
                  c.lui       s6, 16
                  nop
                  c.li        a4, -1
                  mulh        s7, s2, s9
                  mul         gp, t0, a4
                  divu        s0, s2, s11
                  c.add       s2, tp
                  c.li        s10, 30
                  xor         zero, s7, s5
                  srli        s6, gp, 21
                  divu        gp, s1, a7
                  mulhu       s4, a2, a7
                  sltiu       s4, a3, 451
                  li         t3, 0x1 #start riscv_int_numeric_corner_stream_20
                  li         s7, 0x0
                  li         t0, 0x0
                  li         t4, 0x1
                  li         a3, 0x0
                  li         s11, 0x0
                  li         s10, 0x0
                  li         sp, 0x1
                  li         s9, 0x94d0ae5
                  li         a2, 0x0
                  nop
                  div         t3, a7, t3
                  c.addi4spn  s1, sp, 960
                  nop
                  sub         s1, t3, t0
                  c.add       t0, s9
                  divu        zero, t2, s5
                  divu        s8, a7, sp
                  add         zero, t1, s3
                  auipc       gp, 1027183
                  c.lui       a3, 8
                  auipc       t4, 611241
                  addi        a2, s9, 1150
                  divu        a1, s3, t2
                  c.addi      a2, 28
                  c.lui       a7, 9
                  mulhu       s0, a4, s2
                  lui         s8, 807869
                  c.addi      t1, 27
                  mulhsu      t0, a6, t2
                  divu        ra, t6, s3
                  mul         s1, s2, gp
                  c.addi16sp  sp, -16
                  sub         sp, s2, a2
                  mulh        t1, s2, s4 #end riscv_int_numeric_corner_stream_20
                  add         zero, a5, sp
                  xor         zero, t4, s10
                  c.mv        a6, gp
                  slti        s9, t5, 1769
                  mulhu       s0, s6, s11
                  divu        a1, tp, s7
                  c.and       a3, s1
                  add         a3, ra, s4
                  sra         zero, s7, t4
                  c.srai      a3, 20
                  c.srli      a3, 17
                  c.or        a3, a3
                  or          a5, gp, a1
                  divu        s4, t5, a2
                  rem         s3, s4, t2
                  c.slli      ra, 18
                  sra         s6, s2, a1
                  nop
                  c.srai      a3, 25
                  c.lui       s10, 17
                  c.addi      s0, -1
                  c.and       a3, a3
                  lui         s11, 571315
                  sra         s2, t0, s0
                  sub         zero, tp, s3
                  sub         zero, s3, a3
                  auipc       zero, 601591
                  divu        s7, s1, a6
                  divu        t2, s5, t4
                  c.slli      a0, 27
                  add         ra, t3, s4
                  c.addi4spn  a3, sp, 896
                  mul         s3, s7, t4
                  srl         s1, s6, s10
                  c.xor       s0, a3
                  c.or        a3, a3
                  mulhu       a0, t2, s3
                  div         t0, a5, s0
                  sll         a5, s6, s6
                  mulhsu      a0, a3, s2
                  c.addi4spn  a4, sp, 640
                  slli        ra, s8, 3
                  c.nop
                  sltiu       s1, a1, 1976
                  sll         s9, a4, t1
                  c.or        a3, a3
                  mulhsu      a1, a1, a7
                  slli        a6, zero, 29
                  addi        s1, ra, 646
                  sltu        sp, s0, s0
                  slli        s9, s3, 20
                  c.addi16sp  sp, -16
                  sll         zero, s4, tp
                  c.srai      a3, 31
                  c.slli      ra, 15
                  div         s8, t1, s4
                  c.lui       a5, 18
                  c.sub       a3, a3
                  c.srli      a3, 13
                  srl         zero, t1, t3
                  sub         s3, tp, a0
                  sltu        zero, s3, t1
                  c.xor       a3, s0
                  c.or        a3, a3
                  slti        t0, s6, 800
                  c.mv        a6, s8
                  xori        ra, a1, 181
                  nop
                  c.addi16sp  sp, 384
                  slli        tp, gp, 19
                  mul         a1, s7, t3
                  mulhsu      s8, t2, a6
                  srl         sp, s9, s8
                  addi        s7, t3, 1700
                  slt         zero, s7, a1
                  and         s10, s4, s11
                  xori        a7, t3, -972
                  and         zero, t1, a3
                  andi        s7, a0, -1263
                  slli        zero, t6, 10
                  c.add       a3, a1
                  c.addi      t3, 13
                  slti        s3, a6, 983
                  srli        tp, ra, 11
                  sltu        t1, s8, t2
                  nop
                  addi        t1, t2, 1519
                  lui         s7, 658745
                  c.add       gp, s10
                  c.srai      a1, 25
                  sltu        a6, s10, s2
                  srli        a2, a4, 6
                  slti        s2, tp, -1783
                  c.li        a0, -1
                  c.sub       a3, a3
                  c.addi16sp  sp, 352
                  c.or        a3, a3
                  slt         gp, s3, s3
                  add         s9, s7, s7
                  srai        zero, ra, 3
                  div         a6, s5, s6
                  slti        t1, t5, 241
                  nop
                  slli        zero, s8, 11
                  mul         t0, a4, s7
                  xori        s1, s6, -917
                  sra         a5, t1, a3
                  andi        ra, a0, 1887
                  add         ra, s5, t2
                  add         tp, s6, zero
                  sltiu       t2, s6, -104
                  c.lui       s3, 30
                  nop
                  c.and       a3, a3
                  c.sub       a3, a3
                  auipc       a2, 878812
                  srai        a0, s10, 1
                  mulhsu      s10, t5, t1
                  c.srli      a2, 23
                  sra         tp, a0, sp
                  mulhsu      zero, s1, s8
                  mulh        t1, s1, t2
                  sra         s2, s2, s5
                  c.slli      tp, 23
                  rem         t2, s11, s9
                  c.sub       a1, a3
                  div         zero, a4, a1
                  sra         zero, a1, s8
                  sra         a3, s9, a7
                  c.or        a3, a3
                  c.addi      s3, -1
                  srai        t1, s6, 11
                  mulhsu      s11, t1, t6
                  sll         sp, t2, t3
                  addi        t2, tp, -1350
                  c.li        s3, 16
                  c.add       a6, s9
                  c.li        a4, 27
                  c.mv        t1, tp
                  c.xor       a3, a3
                  sub         a7, t0, s0
                  slli        a3, t2, 3
                  srli        a5, s10, 9
                  c.andi      s0, -1
                  div         s0, a4, s5
                  c.or        a3, a3
                  nop
                  sub         a6, t0, a4
                  xori        zero, zero, 725
                  slt         s11, s4, ra
                  and         t1, a0, a2
                  lui         t4, 38429
                  c.add       a5, t3
                  addi        t1, s4, -397
                  srli        t0, t2, 23
                  and         sp, t4, s6
                  c.sub       s0, a3
                  rem         a7, a2, s9
                  c.addi      ra, 27
                  sll         s3, s1, s8
                  srl         tp, t5, t5
                  c.add       ra, a1
                  lui         s7, 244392
                  srai        a4, tp, 21
                  xor         tp, s10, s11
                  mul         t1, t5, a0
                  c.mv        s1, a7
                  sltu        s11, s11, s0
                  nop
                  c.addi4spn  a1, sp, 960
                  c.addi4spn  a3, sp, 64
                  lui         zero, 232073
                  mulhu       s1, s2, s3
                  c.addi16sp  sp, 48
                  c.slli      s9, 8
                  c.srli      a3, 30
                  c.slli      ra, 21
                  mulhu       ra, s1, s6
                  addi        t3, a7, 297
                  c.addi      a3, 19
                  sub         s9, a4, s0
                  c.addi4spn  a3, sp, 240
                  sltiu       zero, t6, -724
                  add         t0, s4, s6
                  c.mv        t0, s9
                  lui         gp, 302623
                  c.and       a3, a3
                  mulhu       t3, a6, s5
                  and         tp, s3, s10
                  slt         a1, s6, a6
                  andi        zero, a6, 1797
                  mulh        zero, t5, s6
                  c.nop
                  and         a4, gp, s1
                  lui         sp, 941408
                  srli        t2, a1, 15
                  slt         a5, t2, a2
                  rem         a3, s8, s0
                  xori        a1, a0, -1332
                  c.srai      a3, 5
                  c.andi      a3, -1
                  divu        a2, zero, s5
                  c.mv        sp, s4
                  add         ra, s4, s3
                  c.lui       s2, 28
                  c.srli      a3, 18
                  ori         zero, t4, 1478
                  c.slli      a2, 21
                  andi        s9, a3, 846
                  add         t0, s2, s1
                  xor         s6, s10, a0
                  addi        a6, s5, 1380
                  sub         t3, sp, s2
                  c.lui       s1, 19
                  c.or        a3, s0
                  c.sub       a3, a3
                  mulhu       gp, a4, s1
                  srli        a2, a5, 18
                  c.sub       a3, a3
                  sltu        tp, a4, a1
                  sub         zero, t4, a5
                  div         a5, a4, t3
                  nop
                  srli        s2, a7, 19
                  or          s7, tp, a7
                  slti        a3, sp, -393
                  c.sub       a3, a3
                  xori        a6, a7, 193
                  addi        ra, tp, -1296
                  c.addi      a1, 4
                  c.or        a3, a3
                  c.or        a3, a3
                  c.and       s0, a3
                  c.li        gp, 9
                  xor         s8, s6, s8
                  c.and       a3, a3
                  c.sub       a3, a3
                  sll         ra, a7, gp
                  div         s7, a1, t2
                  add         t2, ra, a5
                  rem         s10, s10, a2
                  c.mv        ra, s4
                  c.xor       a4, a3
                  srl         s3, gp, s1
                  addi        a7, t4, 54
                  xori        s4, s1, -1996
                  andi        a1, a0, 1936
                  c.xor       s1, s0
                  nop
                  mulhsu      a4, a7, s0
                  c.mv        s7, s3
                  sll         ra, s3, t0
                  slt         s11, t5, s1
                  rem         t2, s6, zero
                  srli        zero, s1, 23
                  c.slli      t1, 16
                  c.srai      a3, 19
                  c.srai      a2, 26
                  mulhsu      zero, s9, ra
                  divu        t2, s6, t3
                  nop
                  c.lui       s1, 12
                  c.and       a3, a3
                  c.srai      s1, 25
                  c.xor       s0, s1
                  c.andi      s1, 22
                  c.andi      s1, 18
                  rem         s1, a5, s9
                  mulh        t2, t0, a7
                  c.add       t1, s9
                  and         t0, s11, a7
                  c.sub       a3, a3
                  add         a2, s11, s10
                  lui         s3, 1028606
                  c.addi16sp  sp, 48
                  c.addi16sp  sp, 432
                  rem         s2, t5, sp
                  mulh        s8, zero, s8
                  srai        s2, s3, 11
                  srl         a4, a7, t3
                  mulh        a0, s11, tp
                  srl         a7, t0, a6
                  sll         zero, a0, t2
                  c.add       s0, s6
                  xori        s3, s1, -790
                  sltiu       a2, s7, -1643
                  mulhu       t0, s11, gp
                  xori        s11, s4, 1056
                  c.slli      t1, 13
                  mulhu       s10, a2, t4
                  srli        t0, t6, 21
                  c.lui       s2, 28
                  div         a3, gp, a5
                  c.add       a1, s2
                  srli        a2, t2, 7
                  c.sub       a3, a0
                  slti        tp, sp, 630
                  sra         a6, t5, s7
                  rem         a7, a1, s3
                  nop
                  auipc       a7, 760052
                  c.addi      s11, -1
                  slli        a1, ra, 5
                  c.addi      t2, -1
                  xor         a7, a4, s3
                  nop
                  slli        s2, a6, 29
                  mulh        gp, s3, ra
                  c.nop
                  andi        s7, s8, -167
                  c.andi      a3, -1
                  sltiu       ra, a5, -1976
                  rem         gp, a7, t1
                  c.li        a2, -1
                  div         t0, a3, t3
                  c.add       t0, s5
                  sub         zero, s10, a0
                  srl         s4, s11, a7
                  c.slli      ra, 26
                  and         s3, t6, t1
                  c.lui       a7, 3
                  c.addi      t3, -1
                  mulhu       s8, s10, a2
                  c.sub       s1, a3
                  c.xor       s1, a3
                  mulh        zero, tp, t1
                  nop
                  sub         s1, s11, t3
                  addi        a6, s0, 824
                  c.srai      a0, 20
                  srai        t2, ra, 23
                  slli        s1, t1, 14
                  c.andi      a3, -1
                  sra         a7, a4, s8
                  lui         s9, 668967
                  c.lui       a5, 11
                  c.addi16sp  sp, 256
                  auipc       sp, 548583
                  slt         a3, s0, a0
                  andi        tp, tp, -1329
                  or          t2, a6, a4
                  c.srai      a0, 28
                  div         t1, s10, a2
                  or          s11, s11, sp
                  c.add       a0, s5
                  lui         t0, 287562
                  sub         t4, s6, s9
                  c.add       t1, s6
                  slt         a6, a0, a0
                  xor         t1, a7, s6
                  nop
                  mulhu       s10, s10, t6
                  sltiu       ra, a3, 219
                  sub         t2, s9, a0
                  div         zero, a1, s8
                  lui         zero, 843965
                  srai        a1, s6, 15
                  srl         a2, s11, s1
                  sltu        a7, s5, gp
                  xori        zero, a0, -956
                  add         s0, s2, a0
                  slli        a5, a0, 10
                  sltu        s6, s9, zero
                  lui         a7, 520352
                  sub         t2, t4, s7
                  auipc       a7, 742061
                  and         s8, a0, t3
                  sltu        a2, s5, t3
                  srai        gp, s7, 7
                  mul         a3, tp, gp
                  ori         a7, gp, -661
                  divu        s7, t6, t3
                  c.slli      ra, 12
                  div         a4, a1, s8
                  srai        zero, t1, 31
                  c.andi      a3, 16
                  xor         sp, s11, t4
                  c.li        s10, 1
                  c.xor       a3, a3
                  c.addi4spn  a3, sp, 464
                  c.addi      gp, 24
                  c.addi      s8, 25
                  c.addi16sp  sp, -16
                  lui         a3, 429937
                  divu        s2, gp, a5
                  c.andi      a3, -1
                  nop
                  c.or        a3, a3
                  srai        a4, t2, 4
                  c.nop
                  c.add       s2, s5
                  sltu        sp, s5, s9
                  srli        a7, s11, 6
                  c.or        a3, a3
                  rem         s10, s4, s9
                  mulh        zero, a2, s9
                  sub         s1, t2, t5
                  c.slli      s10, 12
                  c.srai      a3, 3
                  slti        a0, a2, 1761
                  rem         s11, s11, t4
                  sltiu       t3, s2, 1043
                  c.sub       a1, a5
                  nop
                  srl         a7, zero, a1
                  mulhsu      a2, t3, ra
                  c.addi16sp  sp, -16
                  xor         a3, s9, s4
                  sub         s10, a6, zero
                  nop
                  or          gp, t6, s6
                  c.li        tp, -1
                  c.addi16sp  sp, 464
                  slt         s11, t1, tp
                  c.sub       a3, a3
                  c.nop
                  xor         a3, ra, t5
                  c.addi16sp  sp, -16
                  sltu        s11, t0, s2
                  c.slli      ra, 16
                  or          zero, a3, t2
                  sub         a1, s11, t6
                  c.slli      a4, 13
                  nop
                  sra         gp, s7, gp
                  mulh        s7, ra, s8
                  slti        a6, a5, 392
                  c.srai      a0, 11
                  mulhu       zero, s2, a5
                  mul         zero, a7, a6
                  auipc       gp, 7200
                  addi        a7, t3, 816
                  rem         s11, a0, tp
                  c.nop
                  sra         s1, a7, t6
                  c.addi      t2, 11
                  xor         tp, a2, s3
                  c.lui       t4, 14
                  mulh        ra, a1, a7
                  xor         t2, a6, a4
                  c.and       a0, a3
                  add         a2, t0, s11
                  ori         a0, a5, -294
                  c.andi      a3, -1
                  mul         gp, a7, a6
                  c.srli      a3, 13
                  c.li        t3, -1
                  c.addi      ra, -1
                  sub         a1, s0, s10
                  c.srli      a3, 16
                  c.or        a2, a3
                  add         a6, s7, t2
                  c.srli      a1, 12
                  add         tp, a6, s0
                  andi        s9, t0, 1825
                  srl         a4, t5, a0
                  c.addi16sp  sp, 352
                  slt         s8, s4, a0
                  sub         a5, s8, t5
                  div         s8, s5, s0
                  c.nop
                  mul         s6, t0, tp
                  sll         t3, a6, a0
                  c.or        a3, a3
                  xori        zero, a2, 652
                  c.addi      a0, -1
                  c.slli      t3, 30
                  sub         tp, s1, s5
                  c.addi4spn  a1, sp, 128
                  divu        a5, s11, a2
                  c.srai      a3, 23
                  divu        zero, s10, s6
                  nop
                  c.nop
                  mulhu       ra, t3, t4
                  c.addi16sp  sp, -16
                  sltu        t0, s5, s5
                  c.andi      a4, -1
                  and         a0, s7, a5
                  mulh        a7, tp, a2
                  xor         a1, a5, zero
                  div         zero, s11, a5
                  slti        s3, s8, -1009
                  rem         t0, s5, s5
                  div         t4, t0, a6
                  c.andi      a3, -1
                  srl         t4, s2, a4
                  c.or        a3, a4
                  srl         s11, a7, a6
                  c.sub       a3, a0
                  mulh        zero, a4, ra
                  divu        s10, a6, gp
                  c.and       a3, a3
                  mulhu       s10, a6, t1
                  c.addi16sp  sp, 288
                  c.and       a1, a3
                  xor         a2, gp, s7
                  mulhu       s0, a1, s3
                  c.addi      a5, 21
                  c.andi      a3, -1
                  auipc       s3, 304752
                  sub         s0, t1, t0
                  addi        s3, t0, 2025
                  c.xor       a3, a3
                  srli        ra, a5, 1
                  slli        s4, s11, 1
                  c.mv        t0, s2
                  c.lui       a2, 21
                  and         s4, s1, s6
                  c.add       ra, t0
                  c.addi4spn  a3, sp, 704
                  div         t1, s9, a0
                  mulhu       zero, t0, a2
                  c.mv        s11, t0
                  sub         s0, s8, t1
                  or          zero, s2, a1
                  c.srai      a3, 16
                  sltu        s4, s9, t0
                  slli        a0, a6, 14
                  slt         zero, s6, s2
                  c.lui       ra, 16
                  sltu        a2, t4, a7
                  sub         t0, t1, s2
                  c.or        a3, a5
                  divu        s4, t3, ra
                  c.add       s4, t2
                  c.srai      a3, 17
                  andi        s2, zero, -1997
                  c.and       a3, a3
                  xori        s11, t3, 1756
                  c.srli      a3, 14
                  c.and       a1, a3
                  ori         a5, s4, 851
                  c.lui       ra, 12
                  c.srai      a4, 14
                  xor         a5, a3, s10
                  mulhu       zero, a0, s0
                  c.sub       a3, a3
                  c.addi      s1, -1
                  c.slli      gp, 13
                  div         s11, sp, s4
                  or          zero, ra, sp
                  sltiu       a3, zero, 1691
                  or          a3, ra, t1
                  srl         s6, s7, s5
                  add         tp, a0, s10
                  xori        a6, s7, 879
                  addi        t0, a4, -140
                  srl         s11, t1, s1
                  xor         ra, a6, a1
                  c.addi16sp  sp, -16
                  c.addi      a0, -1
                  srl         s2, s9, a5
                  c.andi      a5, 22
                  c.addi      s2, -1
                  or          tp, t5, t6
                  c.sub       a3, a3
                  c.sub       a3, a3
                  add         zero, t1, a3
                  addi        ra, a0, 214
                  xor         s10, s8, s7
                  mulh        s1, ra, s7
                  c.nop
                  xor         s3, t6, s6
                  addi        zero, a7, -1327
                  andi        zero, zero, 891
                  c.addi16sp  sp, 112
                  c.nop
                  c.lui       ra, 28
                  c.lui       s7, 10
                  mulh        sp, s9, s8
                  srli        s7, t3, 17
                  c.sub       s0, a3
                  c.addi16sp  sp, -16
                  c.sub       a3, a4
                  c.li        s4, -1
                  lui         s6, 587237
                  srai        zero, s8, 26
                  ori         zero, t5, 1768
                  addi        tp, s8, -557
                  sra         tp, t3, gp
                  or          s9, s4, gp
                  c.addi16sp  sp, 448
                  c.andi      a3, 29
                  c.addi16sp  sp, 240
                  c.addi16sp  sp, -16
                  mulhu       t3, t3, s7
                  c.addi      ra, 23
                  c.xor       a3, a3
                  mulhsu      t1, t1, a0
                  c.or        a3, a4
                  c.and       a3, a2
                  nop
                  sltu        a7, a2, s10
                  c.lui       s11, 28
                  xor         t0, s5, s8
                  c.add       s8, a2
                  sll         zero, gp, t3
                  c.mv        s6, t2
                  addi        t3, s1, 1631
                  c.and       a1, a3
                  c.add       a4, a1
                  or          t2, ra, a4
                  c.add       a0, t2
                  sll         sp, a5, s10
                  c.addi      a4, 4
                  c.mv        sp, t0
                  srl         s10, a0, s11
                  srl         s9, s3, a5
                  sltiu       t1, zero, -1662
                  sra         zero, a3, a7
                  addi        t4, s3, 650
                  c.and       a3, a3
                  c.slli      a0, 9
                  c.andi      a3, -1
                  andi        a0, s10, 73
                  c.mv        a3, ra
                  slti        zero, s7, -1276
                  c.or        a3, a3
                  c.addi      s6, 1
                  sll         s8, a6, t4
                  divu        gp, gp, sp
                  rem         sp, a1, t1
                  c.srli      a3, 29
                  mulh        zero, s3, s7
                  sll         zero, a3, s9
                  c.srli      a3, 31
                  rem         s4, gp, t1
                  mulh        s10, a7, a6
                  c.slli      a0, 16
                  add         t2, t1, s2
                  c.srai      a3, 27
                  srl         zero, t2, s2
                  c.or        a3, a3
                  c.nop
                  c.andi      a3, -1
                  andi        t2, a5, 74
                  c.srli      a3, 14
                  c.add       a3, t3
                  or          t3, t6, zero
                  sub         a4, s8, a6
                  c.andi      a3, -1
                  c.andi      a3, 26
                  c.slli      ra, 10
                  c.addi4spn  a3, sp, 720
                  ori         gp, s4, 1393
                  c.addi4spn  a3, sp, 192
                  mulh        a2, a6, gp
                  slti        zero, gp, -614
                  srli        t2, a4, 0
                  c.and       a1, a5
                  c.or        a3, a3
                  c.lui       a2, 5
                  c.and       a3, a3
                  mulhsu      gp, s11, a6
                  mul         s2, ra, s4
                  c.nop
                  c.and       a3, a3
                  c.xor       a5, a3
                  c.mv        gp, sp
                  c.add       ra, s2
                  c.srli      a3, 14
                  srai        s3, a4, 6
                  or          sp, s0, a5
                  addi        ra, s10, -974
                  add         s0, t5, t4
                  divu        s0, s6, s4
                  c.srli      a3, 25
                  c.lui       ra, 10
                  xor         gp, a0, t0
                  c.mv        t0, s7
                  srli        gp, a2, 29
                  srai        a3, ra, 21
                  srl         s1, s0, t6
                  nop
                  nop
                  divu        zero, t6, a4
                  or          sp, t2, a5
                  srli        s6, t5, 15
                  c.li        t3, 28
                  c.xor       a3, a3
                  srli        tp, s9, 31
                  or          a5, s7, s5
                  c.addi16sp  sp, -16
                  c.addi16sp  sp, 176
                  xori        zero, t3, 897
                  and         zero, gp, s11
                  c.addi4spn  a4, sp, 352
                  srli        a0, s10, 31
                  c.srli      a3, 25
                  sltu        a7, s0, a1
                  and         s10, t4, ra
                  c.nop
                  mulhsu      ra, zero, zero
                  auipc       s6, 1018566
                  xor         a1, s7, a3
                  sra         t2, s9, s1
                  auipc       t4, 374638
                  c.add       s9, s8
                  c.addi16sp  sp, -16
                  mulhu       zero, s0, t5
                  c.lui       a6, 17
                  slti        a4, tp, 766
                  li         t4, 0x1 #start riscv_int_numeric_corner_stream_23
                  li         t3, 0x0
                  li         t1, 0x0
                  li         s10, 0x1c50ea1f
                  li         sp, 0x1
                  li         t0, 0x0
                  li         s8, 0x0
                  li         s11, 0x0
                  li         s2, 0x0
                  li         a0, 0x1
                  mulhsu      zero, s6, sp
                  c.add       s1, a3
                  add         a3, t5, s6
                  lui         sp, 601367
                  div         a5, s6, zero
                  div         s7, gp, t1
                  c.nop
                  c.sub       a0, a3
                  c.lui       ra, 2
                  mul         a6, a1, t4
                  div         zero, s2, a7
                  c.addi4spn  a3, sp, 576
                  c.addi      sp, -1
                  mul         zero, s2, s5
                  c.nop
                  sub         a5, t0, s9
                  mulhsu      a2, s5, a3
                  div         a1, t0, s8
                  rem         a2, s4, s8
                  add         zero, gp, a4
                  c.li        a5, 20
                  c.addi      s11, 14
                  c.addi      ra, -1
                  div         s8, t5, s11
                  mulh        zero, t0, a6
                  auipc       s3, 570459
                  c.li        s10, -1
                  mulhu       zero, a1, sp
                  mulhu       s0, s10, ra
                  ori         a1, t3, 1198
                  xor         s8, s7, t1
                  and         a6, a5, s0
                  c.li        t4, -1
                  divu        s10, a1, s11
                  c.mv        a0, sp
                  c.lui       s11, 29
                  slt         s2, s9, a2
                  mulhu       t2, s11, t5
                  c.slli      t3, 23
                  slli        s9, s4, 17
                  mulhu       s1, t4, t6
                  lui         a3, 738199
                  xori        s4, s2, 961
                  slt         t1, s6, s8
                  add         s7, ra, zero
                  c.li        sp, -1
                  c.slli      s8, 3
                  c.srai      s0, 15
                  mul         a6, s8, a3
                  c.srai      a3, 4
                  add         gp, s11, a6
                  mulhu       s4, a5, t2
                  srli        s4, s5, 19
                  srai        s10, s3, 11
                  or          a7, ra, a5
                  slt         a3, s9, ra
                  divu        ra, ra, a7
                  andi        t4, t2, -379
                  mulhsu      a0, a7, a3
                  c.andi      a3, -1
                  addi        s3, s7, -1442
                  or          s3, s2, a4
                  c.mv        t0, a3
                  or          sp, a6, s11
                  sll         s8, s7, s11
                  slti        ra, sp, 1898
                  div         s1, s1, a4
                  sltu        a6, sp, a4
                  c.nop
                  div         a4, s0, t3
                  c.addi4spn  a3, sp, 192
                  slti        s9, a1, 763
                  div         sp, a6, s1
                  c.mv        a3, t3
                  and         s0, sp, s10
                  mul         s8, t5, s8
                  srli        t1, s1, 14
                  rem         t1, a1, a7
                  mulhu       zero, ra, s5
                  c.srai      a3, 26
                  mul         gp, gp, a7
                  c.li        t2, -1
                  divu        zero, t2, s4
                  li         s2, 0x0 #start riscv_int_numeric_corner_stream_8
                  li         t4, 0x1362ef2c
                  li         t3, 0x0
                  li         s11, 0x0
                  li         a5, 0x0
                  li         s10, 0x0
                  li         s8, 0x0
                  li         gp, 0x0
                  li         a0, 0x0
                  li         a4, 0x0
                  c.addi4spn  a3, sp, 320
                  c.addi16sp  sp, -16
                  sub         a0, ra, t4
                  c.addi16sp  sp, 464
                  rem         s7, s2, s1
                  mulh        a4, t2, t3
                  div         t0, a1, s0
                  auipc       t2, 347
                  c.add       ra, a6
                  mul         s10, a5, a3
                  c.addi16sp  sp, 432
                  divu        zero, a2, tp
                  mulh        zero, s5, a0
                  c.sub       a3, a3
                  c.add       ra, t0
                  c.addi4spn  a3, sp, 896
                  divu        t4, s3, a1
                  c.nop
                  c.sub       a0, a3
                  add         ra, ra, a0
                  c.addi16sp  sp, 496
                  addi        s9, s7, -609
                  c.addi      a6, -1
                  c.mv        a1, ra
                  c.nop
                  divu        ra, ra, s8 #end riscv_int_numeric_corner_stream_8
                  c.sub       a3, a3
                  slti        s2, t3, -1197
                  slti        ra, s10, 1547
                  c.sub       a3, a3
                  slt         zero, s3, a0
                  slti        s0, a1, -302
                  xor         zero, a2, s7
                  add         zero, s10, a2
                  c.addi4spn  a3, sp, 640
                  c.xor       a0, a3
                  add         s8, sp, tp
                  add         s2, s0, a2
                  lui         a0, 918822
                  nop
                  sub         a3, a3, a7
                  sltiu       s2, s7, 1363
                  sra         t4, a2, s0
                  c.add       ra, t5
                  nop
                  xori        t0, s3, -1292
                  slti        s10, s3, 250
                  c.and       a4, a3
                  c.addi4spn  a3, sp, 320
                  and         s7, ra, a0
                  c.addi      a0, 3
                  div         s1, s2, s0
                  c.xor       a0, a4
                  c.addi      s8, 12
                  srli        zero, sp, 6
                  mul         a0, tp, s5
                  slt         zero, a1, ra
                  add         a5, t6, t0
                  divu        a3, t3, s10
                  nop
                  c.addi4spn  a5, sp, 832
                  c.mv        t3, t1
                  c.add       s11, s10
                  lui         s10, 855609
                  sltu        s1, sp, gp
                  mulh        t0, a0, zero
                  mulhu       t4, a7, zero
                  addi        a7, s6, 502
                  c.add       ra, t3
                  sltiu       zero, a1, -1366
                  addi        a0, sp, 1027
                  c.li        tp, 8
                  c.sub       a5, a1
                  addi        zero, s4, -290
                  c.li        s3, 27
                  add         zero, s4, s2
                  c.andi      a3, -1
                  or          a5, s6, t5
                  c.sub       a3, a3
                  c.xor       a3, a3
                  slt         gp, t6, gp
                  c.xor       a3, a3
                  auipc       tp, 140521
                  sltu        a1, s5, s4
                  c.addi16sp  sp, 336
                  c.addi4spn  a4, sp, 832
                  c.slli      ra, 1
                  andi        a1, t3, -3
                  add         s2, s11, s6
                  sub         s7, s2, s8
                  c.nop
                  slli        s2, a5, 5
                  nop
                  srl         zero, t4, s1
                  c.srli      a5, 11
                  sub         t0, t5, a5
                  c.andi      a0, -1
                  sll         t4, a3, a5
                  xor         s3, ra, t5
                  sltiu       t3, s7, -1314
                  mulhsu      a5, sp, ra
                  slt         a6, a1, a6
                  c.nop
                  srl         s2, a2, s4
                  slli        a0, t3, 5
                  c.sub       a3, a3
                  divu        zero, t4, ra
                  srli        s0, s10, 15
                  c.li        s4, 2
                  rem         t4, s3, t4
                  lui         zero, 842357
                  addi        ra, t6, 1805
                  slli        t1, a5, 31
                  c.srai      a3, 29
                  andi        a3, a5, 390
                  sub         a7, t2, gp
                  xori        s10, a2, -642
                  ori         t0, t3, -897
                  c.srai      a3, 27
                  c.andi      a3, 26
                  nop
                  c.mv        a4, s6
                  c.addi16sp  sp, 64
                  xor         a0, t3, t2
                  slti        a1, s11, 1171
                  mulh        tp, t0, a6
                  c.srai      a3, 31
                  slli        sp, tp, 22
                  c.or        a3, a3
                  c.add       t2, s1
                  c.lui       ra, 4
                  c.and       a3, a3
                  or          t3, s2, s10
                  c.andi      a3, 14
                  slti        zero, s0, -713
                  srli        a2, sp, 7
                  c.xor       a4, s1
                  mulhsu      t4, s7, s10
                  srl         s3, s11, t1
                  c.addi      s9, -1
                  lui         s4, 875022
                  divu        zero, s3, s8
                  and         a5, sp, t0
                  mulhu       a4, t3, s1
                  mulhsu      a2, gp, s8
                  add         a6, a6, a0
                  c.xor       a4, a3
                  add         t2, s10, s2
                  c.lui       a2, 23
                  nop
                  nop
                  c.addi      s3, -1
                  divu        s7, tp, s8
                  c.or        a3, a3
                  slli        s7, s4, 3
                  c.srai      a3, 15
                  c.slli      s3, 18
                  sltiu       a2, s5, -492
                  auipc       a4, 306668
                  c.or        a3, a3
                  c.andi      a3, 27
                  sra         a7, a6, s6
                  mul         t4, a7, a7
                  lui         s7, 207666
                  nop
                  c.slli      s0, 13
                  c.srai      a3, 27
                  c.nop
                  c.and       a3, a5
                  c.slli      s9, 20
                  c.addi4spn  s1, sp, 128
                  xor         t4, s6, s7
                  slti        ra, t2, 790
                  mulhsu      gp, a3, s2
                  c.mv        ra, t4
                  c.addi      s8, 10
                  slti        tp, t4, 409
                  nop
                  xori        gp, s11, -698
                  c.addi      ra, -1
                  ori         s7, a4, 548
                  mulhsu      t0, a0, s10
                  c.slli      s3, 26
                  and         a3, a4, a1
                  nop
                  slli        a4, a5, 14
                  sub         a4, a3, t3
                  addi        a3, s1, 1364
                  sra         t4, gp, t4
                  srai        gp, a6, 13
                  c.add       a6, a6
                  sra         a2, s1, tp
                  andi        gp, s3, -1033
                  xor         t4, s10, t6
                  sltiu       tp, a3, 1557
                  c.add       a0, a7
                  rem         s10, ra, ra
                  c.mv        gp, a0
                  c.addi4spn  a3, sp, 64
                  c.addi4spn  a1, sp, 352
                  add         gp, t5, s3
                  c.and       a3, a0
                  c.nop
                  c.sub       a3, a3
                  srl         tp, s6, a3
                  c.addi16sp  sp, -16
                  xor         s7, t2, s6
                  srl         s6, s5, s3
                  slti        tp, a4, 949
                  andi        t4, s11, 1410
                  mul         t1, a5, s5
                  mulh        a2, tp, a1
                  c.add       s6, a4
                  c.addi16sp  sp, 272
                  auipc       s11, 258863
                  c.andi      a3, 21
                  sub         t3, zero, t4
                  c.andi      a3, 31
                  xori        t4, a6, -905
                  slli        s6, t3, 4
                  andi        t3, tp, -448
                  c.or        a4, a3
                  c.or        a3, a3
                  xori        a3, s2, -2035
                  sltu        gp, s11, a0
                  sll         s8, t6, zero
                  srai        t3, a1, 0
                  c.srai      a3, 12
                  or          s1, tp, gp
                  divu        t3, t1, a7
                  xori        t2, s1, 78
                  srli        tp, tp, 10
                  sra         s2, s2, t3
                  c.andi      s1, -1
                  slti        a2, t4, 965
                  sra         s7, s3, t2
                  mul         zero, a4, a1
                  c.slli      t2, 8
                  mulhu       a4, t1, t4
                  div         a5, a7, gp
                  c.slli      s3, 8
                  sltiu       s8, t4, -392
                  mulhu       s9, zero, s4
                  c.nop
                  nop
                  c.slli      s8, 15
                  c.srli      a3, 31
                  srl         a1, s0, t6
                  mulhu       t3, s4, a2
                  c.andi      s0, 19
                  srli        s6, s3, 5
                  c.and       a3, a3
                  mul         s7, sp, a3
                  sub         a5, a6, t3
                  or          zero, a4, a5
                  rem         s8, s9, a0
                  sll         s0, a7, s0
                  c.and       a3, a3
                  auipc       a4, 848034
                  andi        a4, t5, 649
                  slt         zero, s4, gp
                  sra         sp, s5, a0
                  c.srli      a3, 16
                  mulhsu      a1, a2, zero
                  slt         zero, a6, t1
                  add         t0, t6, s2
                  xor         a1, s4, s11
                  mulhsu      s8, t1, s10
                  c.lui       s10, 22
                  c.srai      a3, 25
                  c.srai      a3, 21
                  sltiu       s3, t1, -1691
                  divu        a6, s3, t2
                  sra         ra, s8, s6
                  c.slli      s0, 19
                  c.addi4spn  s1, sp, 128
                  sltiu       s1, a1, 764
                  c.lui       a3, 22
                  sub         t2, s8, s4
                  slt         ra, s11, s6
                  ori         a4, s10, -1302
                  c.add       s2, t2
                  srai        zero, tp, 1
                  xori        s7, a6, 965
                  c.and       a4, a3
                  nop
                  auipc       a5, 660863
                  slli        a0, s8, 21
                  c.and       a3, a3
                  mulh        zero, s7, gp
                  c.addi4spn  a3, sp, 576
                  c.and       a0, a3
                  sll         s11, zero, a4
                  mulhsu      tp, t4, t3
                  c.lui       t1, 23
                  c.lui       s3, 4
                  slli        s10, s9, 9
                  c.addi4spn  a3, sp, 64
                  addi        t2, sp, 1157
                  c.addi4spn  a3, sp, 816
                  mulhsu      s3, s4, t6
                  sub         s11, a2, a6
                  c.srai      a3, 14
                  rem         s8, s6, s7
                  c.mv        t0, s10
                  sll         s11, t1, sp
                  mulhsu      s6, t5, t0
                  c.or        a3, a3
                  srl         zero, s7, t2
                  c.addi4spn  a5, sp, 320
                  nop
                  c.lui       s9, 1
                  mul         zero, a4, zero
                  c.srli      a3, 16
                  ori         s10, s11, 1780
                  rem         gp, a5, a6
                  divu        a0, a5, t5
                  sll         gp, s8, s5
                  c.and       a3, a3
                  add         a7, ra, a0
                  srai        gp, s4, 21
                  lui         s6, 565757
                  nop
                  andi        t1, s1, 990
                  c.or        a0, a0
                  c.mv        a6, s11
                  c.nop
                  addi        s4, tp, 325
                  c.nop
                  c.addi16sp  sp, -16
                  c.lui       a7, 2
                  c.srli      a1, 27
                  mul         s2, t3, s2
                  c.srli      a3, 18
                  c.nop
                  srl         a0, t5, gp
                  mulhsu      s2, gp, t0
                  sltu        s3, t6, t5
                  rem         a6, s10, a5
                  lui         s8, 718964
                  add         a5, sp, zero
                  c.or        a3, a3
                  sltiu       a3, s0, 648
                  rem         s2, gp, a3
                  srai        s2, t0, 0
                  c.addi16sp  sp, 448
                  or          zero, a6, t6
                  sll         s11, a0, zero
                  mulh        s6, s11, a1
                  divu        s2, ra, a5
                  slli        s2, a7, 15
                  xor         a2, s0, a0
                  xor         a2, s1, tp
                  ori         tp, t0, -1021
                  c.nop
                  or          s2, s7, a7
                  sltu        sp, s9, t4
                  mul         s4, t1, t3
                  c.srai      a3, 14
                  sltiu       zero, t3, 620
                  slli        s11, s2, 17
                  sltu        zero, s2, s10
                  add         s0, t6, s2
                  sub         a1, s7, s8
                  slti        gp, a1, -823
                  sra         t0, a2, s8
                  c.mv        s3, t5
                  sra         s3, a3, s8
                  ori         s9, s8, 976
                  mul         s7, a4, ra
                  c.sub       a3, a3
                  auipc       s6, 712261
                  divu        t0, s11, t6
                  c.xor       a3, a3
                  sra         tp, sp, t2
                  srli        a5, s1, 2
                  sltu        zero, a1, a1
                  auipc       zero, 720610
                  addi        s3, ra, 762
                  rem         s6, a7, a5
                  addi        s8, t6, 1341
                  sll         a0, t2, a3
                  sll         s0, s0, t4
                  slli        a1, a1, 5
                  andi        s8, t1, -888
                  sub         t4, ra, t3
                  c.srli      a3, 1
                  sll         t4, a2, a2
                  c.sub       a3, a3
                  srai        t1, a1, 5
                  sltu        t4, t6, s5
                  mul         a4, t6, a4
                  c.add       a3, t6
                  c.srai      a3, 11
                  sra         ra, s7, s4
                  c.srai      a1, 16
                  and         s6, s11, a0
                  ori         a3, t2, 491
                  sltiu       s7, t2, 1804
                  div         s2, t4, t0
                  auipc       a1, 877480
                  c.or        a3, a3
                  c.mv        s7, t1
                  nop
                  c.mv        a4, s4
                  mulhu       s3, sp, s4
                  c.mv        gp, s4
                  divu        zero, t5, t6
                  c.or        a3, a3
                  srai        gp, a6, 14
                  mul         t4, ra, a5
                  c.li        s0, 2
                  lui         a0, 421584
                  mulhsu      s10, t3, t4
                  c.addi4spn  a3, sp, 640
                  c.addi      t3, 21
                  divu        s4, zero, ra
                  c.andi      a3, 27
                  or          t0, zero, zero
                  c.slli      a4, 17
                  c.srli      a4, 25
                  mul         t4, s10, s0
                  add         t4, t6, s6
                  or          a1, s11, s6
                  srl         a3, ra, s3
                  slt         a5, a4, s2
                  srli        t3, a3, 1
                  add         a2, ra, t1
                  c.or        a3, a2
                  divu        zero, a2, zero
                  c.srai      a3, 31
                  li         t2, 0x1 #start riscv_int_numeric_corner_stream_12
                  li         t4, 0xe55b5d9
                  li         t3, 0x6adba948
                  li         s6, 0x399ea310
                  li         a4, 0x1
                  li         gp, 0x0
                  li         a0, 0x0
                  li         s8, 0x0
                  li         a3, 0x5d7ed946
                  li         a2, 0x0
                  c.nop
                  c.li        s0, -1
                  c.lui       a4, 10
                  sub         gp, tp, ra
                  add         a4, t0, ra
                  addi        zero, sp, 1178
                  c.nop
                  rem         zero, t5, a6
                  c.addi4spn  a3, sp, 384
                  rem         a1, s8, a5
                  mulhsu      t1, t5, t3
                  divu        t4, a7, s5
                  div         zero, t5, t2
                  div         gp, t2, s1
                  mulhsu      a0, tp, a1
                  rem         s1, s7, s4
                  div         zero, s2, s5
                  lui         a2, 1025849 #end riscv_int_numeric_corner_stream_12
                  srl         zero, s4, a0
                  c.li        t4, 18
                  andi        sp, t4, -734
                  c.addi4spn  a3, sp, 896
                  sltu        t4, a0, s5
                  xor         a7, t0, a4
                  c.lui       ra, 23
                  andi        a6, tp, -288
                  sll         s8, s6, a0
                  xor         t2, tp, tp
                  xor         a2, s8, t2
                  sll         t4, a0, a6
                  c.add       t3, sp
                  sltiu       gp, s3, -618
                  c.xor       a1, a3
                  srli        s3, s10, 4
                  divu        s4, s9, t1
                  mulhsu      a2, tp, a2
                  c.mv        sp, s0
                  srl         t1, a1, a0
                  c.or        a3, a2
                  c.srli      a3, 7
                  sll         zero, t0, s3
                  srl         s11, a4, tp
                  xor         a2, s6, zero
                  c.li        ra, -1
                  c.and       a3, a3
                  c.add       s0, ra
                  c.slli      t2, 7
                  c.srai      s1, 10
                  sltu        zero, s8, t3
                  ori         zero, a2, 1821
                  mulh        s9, zero, t4
                  c.or        a2, a3
                  auipc       s8, 1048424
                  c.andi      a2, -1
                  c.srli      a3, 28
                  sll         s9, s5, t3
                  c.lui       a7, 16
                  c.li        s1, 26
                  add         a7, s3, a1
                  slt         s8, zero, s6
                  andi        s10, t1, 1836
                  srai        s7, a5, 14
                  c.xor       a3, s0
                  c.nop
                  xori        a3, t0, 1448
                  c.addi      t4, 28
                  sra         ra, s11, s7
                  c.xor       a3, a3
                  divu        t2, s7, s8
                  nop
                  sll         a1, s1, s5
                  xor         zero, a0, a7
                  c.srai      a3, 10
                  divu        s11, s7, t2
                  nop
                  andi        s10, sp, 181
                  slli        s7, gp, 18
                  c.srai      a3, 10
                  and         s6, s10, s5
                  c.andi      s1, -1
                  xori        zero, a2, -360
                  c.or        a3, a3
                  addi        t3, a1, 786
                  lui         sp, 116615
                  slli        a7, s10, 0
                  slti        s11, a5, 317
                  sltiu       zero, t6, 1412
                  divu        a7, t5, t0
                  andi        tp, s9, -450
                  slt         s3, a3, s11
                  divu        ra, ra, s10
                  slt         a7, s5, t2
                  c.slli      a7, 23
                  sra         tp, s6, s6
                  mulhsu      sp, s3, s7
                  c.add       s1, a4
                  ori         a4, s2, -1483
                  mulhsu      t2, t5, s11
                  nop
                  xor         zero, ra, a7
                  srl         a0, t3, s7
                  c.xor       a3, a3
                  srai        zero, ra, 18
                  slti        a0, s9, -1339
                  srli        a7, a3, 28
                  c.addi16sp  sp, -16
                  mulhsu      s10, s0, s11
                  divu        t0, s10, s3
                  divu        s0, s11, s10
                  c.lui       t2, 25
                  c.or        a3, a3
                  xori        zero, t6, 63
                  srl         sp, gp, ra
                  lui         zero, 874712
                  slt         s8, t2, s9
                  c.or        a3, a3
                  sub         s3, s10, a5
                  slt         a1, sp, s2
                  slti        a2, s6, -1282
                  c.nop
                  ori         s2, s8, -638
                  c.srli      a3, 12
                  srl         tp, s8, t4
                  c.addi      s8, -1
                  srli        s11, t5, 8
                  c.addi      a4, 28
                  sra         s1, gp, gp
                  lui         s10, 429307
                  c.lui       s0, 1
                  c.srli      a3, 27
                  c.sub       a3, a3
                  mulhsu      t0, a5, sp
                  or          a5, s8, s5
                  c.sub       a3, a3
                  c.srli      a3, 18
                  c.srai      a3, 27
                  sltiu       a1, sp, 1924
                  c.or        a3, a3
                  srl         s9, a3, gp
                  c.nop
                  c.sub       a4, a3
                  sub         zero, t6, s7
                  c.mv        a1, ra
                  c.srai      a3, 16
                  srl         a5, zero, t2
                  c.srai      a3, 22
                  divu        a0, a3, s11
                  c.addi16sp  sp, -16
                  sltiu       t3, s9, -697
                  c.and       a3, a3
                  c.slli      t3, 25
                  and         t2, s5, a0
                  mulh        s7, s6, s0
                  c.addi16sp  sp, 224
                  c.xor       a3, a3
                  and         s2, a2, a0
                  sltiu       s9, s11, 1335
                  rem         s4, t2, s11
                  srli        a1, t1, 9
                  sub         t4, s1, s1
                  mulh        s10, t2, t3
                  c.add       ra, gp
                  sra         tp, s4, a6
                  c.srli      s0, 5
                  c.addi      ra, 11
                  srli        t1, t4, 0
                  slt         a2, s11, s9
                  c.slli      ra, 11
                  c.or        a3, a3
                  c.or        a3, a3
                  c.nop
                  mulhu       a7, s9, s6
                  c.sub       a3, a0
                  c.and       a3, a3
                  divu        s2, s5, t1
                  c.sub       a3, a0
                  sra         s7, ra, t3
                  c.and       a3, a3
                  sltiu       s8, tp, 1629
                  srli        s2, a7, 12
                  sra         s0, t5, s1
                  slli        zero, s10, 8
                  c.xor       a3, a3
                  nop
                  and         zero, s10, s9
                  c.srai      a1, 28
                  ori         s6, ra, -1204
                  xor         s3, a5, tp
                  nop
                  c.xor       a3, a3
                  c.srli      a3, 30
                  nop
                  c.mv        s2, t0
                  ori         zero, gp, 963
                  div         s4, sp, s7
                  c.addi16sp  sp, -16
                  andi        a7, t6, -1066
                  c.li        a6, 25
                  addi        s9, a5, -1325
                  rem         a5, gp, a6
                  auipc       a4, 65993
                  c.lui       a3, 5
                  c.mv        s10, ra
                  slti        s6, gp, 501
                  c.srli      a3, 5
                  ori         sp, a0, -1735
                  sll         zero, tp, zero
                  sra         zero, a4, gp
                  srai        s6, t6, 14
                  c.slli      tp, 16
                  mulhsu      zero, sp, a3
                  andi        s8, a5, -80
                  andi        gp, a0, 958
                  or          t3, t6, t3
                  mulh        ra, t0, s0
                  c.and       a3, a3
                  c.slli      tp, 27
                  ori         zero, t6, 1645
                  mul         zero, a5, a0
                  c.addi16sp  sp, 400
                  mulhu       zero, t5, a4
                  or          a2, t5, a3
                  c.andi      a3, 21
                  auipc       ra, 695821
                  c.srai      a3, 31
                  mulh        s1, s8, a6
                  nop
                  c.sub       a3, a3
                  c.andi      a3, 27
                  and         a0, a2, s8
                  xor         zero, a7, t5
                  c.addi      s0, -1
                  sra         s4, s0, s6
                  mul         a5, a2, a7
                  addi        a5, t0, 1323
                  or          zero, a1, s5
                  div         a0, a7, a1
                  sub         s10, sp, s6
                  sra         s6, t6, s7
                  sub         a6, t0, tp
                  sra         a1, a7, s8
                  c.li        s7, -1
                  or          t3, tp, t5
                  sub         a0, a3, t4
                  c.or        a4, a3
                  c.lui       s8, 13
                  or          s3, t5, s0
                  c.mv        s11, gp
                  xori        t0, s8, -1797
                  c.addi4spn  a3, sp, 320
                  or          t1, s8, a5
                  auipc       a1, 874654
                  nop
                  c.slli      s1, 14
                  c.xor       a3, a3
                  srl         gp, a0, s3
                  sltiu       s10, s1, -1814
                  mulhsu      a3, s1, t2
                  sll         t3, a3, s2
                  slti        s7, a4, 142
                  ori         s11, a1, 779
                  andi        zero, a4, 1550
                  divu        sp, a0, t3
                  mulhsu      s10, a5, s2
                  c.and       a4, s0
                  c.nop
                  sltiu       a4, a5, -1450
                  c.and       a3, a3
                  sll         s0, t1, a3
                  andi        s6, s4, 1191
                  xor         zero, s11, s10
                  sll         a3, a4, s4
                  c.xor       s0, a3
                  xor         s4, zero, t0
                  srai        a5, t0, 22
                  c.slli      s9, 8
                  c.nop
                  c.slli      a5, 30
                  slti        a2, zero, -989
                  xor         s8, s9, s9
                  sll         t4, s5, s10
                  add         s7, a7, a3
                  andi        s1, s0, -865
                  c.nop
                  divu        zero, sp, a3
                  c.addi16sp  sp, 224
                  c.slli      a7, 7
                  mulhsu      zero, s11, t2
                  c.xor       s1, a3
                  c.addi16sp  sp, -16
                  c.and       a5, a3
                  slt         zero, t5, a7
                  slli        t3, s5, 18
                  slli        gp, s4, 25
                  c.lui       a1, 23
                  c.andi      a3, -1
                  add         t4, a4, s4
                  sub         t0, zero, s3
                  addi        s8, t6, 1660
                  c.lui       s8, 26
                  and         s3, s2, s8
                  ori         t2, a7, 1743
                  xor         s4, a5, zero
                  divu        zero, a2, s11
                  div         zero, t5, a7
                  srl         zero, s9, a7
                  c.srai      s0, 23
                  sltiu       gp, s3, -1010
                  sltiu       tp, gp, 999
                  c.addi16sp  sp, 336
                  divu        zero, a6, t6
                  add         a6, sp, a3
                  mulhsu      sp, gp, t6
                  c.andi      a3, -1
                  c.sub       a3, s1
                  mulh        s4, t1, t2
                  lui         t0, 281377
                  and         s11, s3, s5
                  mul         sp, s8, a7
                  c.lui       a3, 19
                  c.srli      a3, 11
                  xori        a6, gp, -640
                  div         s10, a7, a6
                  auipc       a7, 513432
                  slti        s3, s8, 415
                  sltiu       gp, tp, 1876
                  srli        gp, s4, 18
                  c.srli      a3, 15
                  ori         zero, s5, -1026
                  auipc       t1, 369650
                  add         a7, s10, zero
                  c.or        a3, a3
                  xori        s4, s9, 1111
                  slt         gp, s0, s0
                  c.add       tp, a6
                  nop
                  slt         s7, a2, s4
                  sra         s7, a2, a3
                  c.lui       s3, 9
                  mul         s9, ra, a5
                  srai        t2, t1, 26
                  c.nop
                  c.lui       s1, 22
                  srli        t4, a7, 28
                  mulh        a2, zero, s3
                  addi        a5, s9, -1056
                  mulh        s1, s9, s7
                  auipc       zero, 393723
                  div         s3, s9, a4
                  sub         s7, a5, t3
                  c.nop
                  div         t1, a6, t0
                  xor         ra, t0, a4
                  ori         a0, t1, -1129
                  mulhsu      s3, tp, sp
                  mulhu       zero, t5, s3
                  or          s7, a7, t6
                  div         s4, a5, s0
                  slt         s8, s5, t1
                  ori         t2, t5, -1771
                  c.srai      a3, 8
                  c.or        a3, a3
                  c.andi      a0, 31
                  or          s6, s1, s7
                  srl         s2, s3, t1
                  c.mv        a0, t0
                  addi        t4, s5, 232
                  c.andi      a3, 3
                  srai        zero, s8, 28
                  srli        zero, a0, 27
                  sll         a3, s0, a4
                  auipc       a7, 589844
                  mulh        a0, a0, t0
                  c.lui       gp, 10
                  auipc       a7, 381286
                  c.add       ra, t3
                  add         a3, a7, s0
                  xori        s3, s1, 1319
                  sra         a0, a5, t0
                  sltu        t1, sp, t4
                  addi        s11, ra, 411
                  c.or        a3, a3
                  srl         t3, a2, s4
                  sra         s0, gp, s3
                  div         s8, t4, s4
                  c.addi16sp  sp, 240
                  mul         t4, zero, s6
                  ori         a4, a0, -648
                  slt         a6, zero, s3
                  sub         s8, s11, t2
                  or          t2, a5, tp
                  c.slli      a4, 19
                  ori         s8, a0, 1931
                  xor         zero, ra, s11
                  sub         zero, zero, s0
                  lui         t0, 365207
                  c.xor       a2, a3
                  mul         a4, gp, s8
                  sll         a6, zero, t1
                  nop
                  nop
                  c.addi4spn  a0, sp, 640
                  add         a6, a1, tp
                  c.addi4spn  a3, sp, 128
                  ori         s2, s10, -1982
                  c.sub       a2, a3
                  add         zero, t3, s0
                  ori         a5, s6, 375
                  c.xor       a3, a2
                  mulhsu      t3, t3, s1
                  mul         zero, s9, sp
                  auipc       a1, 826018
                  c.and       a3, a3
                  ori         a3, s7, 1387
                  xor         t0, a6, a0
                  slt         t2, a0, t3
                  slt         s7, s3, s0
                  add         s2, s4, s4
                  add         zero, t1, s10
                  mulh        gp, s1, a2
                  mulh        t2, t4, s0
                  slti        a5, a5, 1446
                  auipc       a6, 713741
                  c.nop
                  lui         s11, 971349
                  slt         gp, zero, s7
                  srli        a3, t4, 10
                  or          s7, s7, s7
                  srl         a1, a1, a3
                  c.srli      a4, 19
                  c.nop
                  sltu        a7, zero, s0
                  sub         a7, s7, gp
                  c.addi16sp  sp, -16
                  c.lui       s6, 22
                  c.li        s2, -1
                  andi        a1, a1, 1579
                  c.nop
                  nop
                  rem         s2, s10, a4
                  auipc       zero, 632151
                  c.srai      a3, 11
                  rem         t0, s6, sp
                  sub         s9, s3, s9
                  mulh        a7, s7, t4
                  div         t4, s10, s2
                  andi        s6, s7, 1377
                  nop
                  c.mv        s0, s3
                  ori         zero, s2, -1653
                  mulhsu      s11, s6, t3
                  c.mv        t0, a6
                  nop
                  c.xor       a3, a3
                  add         a7, a1, t3
                  c.addi16sp  sp, 224
                  sub         zero, s7, t2
                  c.or        a4, a3
                  c.addi4spn  a1, sp, 608
                  sltu        t2, a0, a0
                  srli        a0, a1, 20
                  c.slli      s2, 18
                  mul         s2, ra, a0
                  sltu        a5, a3, s9
                  c.srli      s1, 4
                  srl         s4, s0, t2
                  lui         sp, 825651
                  ori         zero, gp, 1
                  srli        s3, a4, 19
                  srl         ra, s3, zero
                  and         zero, sp, a6
                  c.srli      a3, 7
                  or          s1, s9, t6
                  c.sub       s0, a3
                  addi        s2, t5, 1915
                  sltu        a7, s2, a7
                  c.mv        tp, gp
                  c.and       a3, a3
                  c.or        a3, a3
                  mul         t3, a2, s10
                  srl         t3, tp, t2
                  srli        zero, t1, 0
                  c.srli      a3, 26
                  mulh        s8, t1, s4
                  srl         s7, s3, a3
                  c.srli      s0, 14
                  c.xor       a3, a3
                  mulh        a0, s3, s11
                  c.or        a3, a1
                  slti        s6, a2, -751
                  c.mv        ra, a2
                  slli        ra, t4, 1
                  nop
                  c.xor       a4, a3
                  c.and       a3, a3
                  or          zero, t5, s7
                  srai        s7, t0, 24
                  sll         a6, t0, t3
                  c.xor       a3, a3
                  mulhu       s10, s6, a0
                  rem         s11, gp, s1
                  srl         zero, t1, gp
                  c.xor       a3, a3
                  slli        a3, a5, 21
                  c.and       a3, a3
                  c.slli      ra, 31
                  slli        t3, a3, 26
                  slt         s1, t6, t5
                  li         t1, 0x3ac69709 #start riscv_int_numeric_corner_stream_3
                  li         gp, 0x1b2d3d27
                  li         t4, 0x0
                  li         t3, 0x0
                  li         s10, 0x421cffa1
                  li         a2, 0x63363165
                  li         tp, 0x1
                  li         s4, 0x51143ab2
                  li         s8, 0x52b3cc9b
                  li         a3, 0x0
                  c.nop
                  mulhu       s1, t2, s3
                  c.addi      s1, 28
                  c.addi      t1, -1
                  c.nop
                  divu        t3, a5, a0
                  c.li        s8, -1
                  c.add       a7, tp
                  c.add       t1, gp
                  c.lui       s4, 1
                  mulhsu      sp, s5, a4
                  mulhsu      zero, a7, a0
                  addi        t0, t5, 129
                  c.lui       a1, 4
                  mulh        t0, a5, a0
                  mulhsu      t2, s8, t3
                  auipc       ra, 791137
                  mulhsu      s8, a6, a2
                  rem         ra, ra, a0
                  auipc       sp, 756048
                  c.addi4spn  a3, sp, 416
                  divu        zero, zero, zero
                  divu        ra, s10, ra
                  divu        ra, s5, s10 #end riscv_int_numeric_corner_stream_3
                  c.sub       a3, a3
                  c.and       a3, a3
                  c.and       a3, a3
                  mul         sp, t4, t4
                  div         a3, s11, s1
                  c.nop
                  xori        a3, zero, -1029
                  auipc       ra, 143254
                  mulhu       s8, a1, s3
                  sub         a0, t6, ra
                  slli        s4, zero, 15
                  mulhu       s10, tp, gp
                  srli        s7, a3, 1
                  slli        zero, t3, 5
                  mulhu       t4, t6, s4
                  srl         t3, a3, s5
                  slti        ra, t0, -1992
                  div         s4, ra, a1
                  srl         ra, t3, t6
                  sra         a1, a5, gp
                  c.lui       s6, 24
                  sub         sp, tp, a6
                  c.or        a0, a3
                  c.nop
                  c.sub       s1, a5
                  c.addi4spn  a3, sp, 896
                  srl         s11, t0, a6
                  srai        a2, t1, 9
                  ori         a7, s11, -1434
                  and         zero, tp, s11
                  lui         a6, 592540
                  andi        s3, s3, -563
                  c.mv        ra, s3
                  xori        s4, t0, 290
                  c.nop
                  slt         t1, a6, a1
                  sltu        tp, s5, t5
                  slt         a7, t6, t4
                  c.li        ra, 19
                  auipc       t3, 337253
                  sub         a3, a3, t3
                  add         s2, a3, a7
                  nop
                  c.srli      a3, 14
                  sll         zero, s6, s10
                  c.addi      a7, 25
                  nop
                  or          s10, s9, s7
                  c.or        a4, a2
                  c.andi      a3, -1
                  divu        t0, s7, s0
                  nop
                  mulh        s10, t2, ra
                  slli        zero, a4, 28
                  or          a2, t2, a1
                  mulhu       zero, a7, t6
                  slti        zero, tp, 285
                  c.lui       t2, 26
                  srai        t3, a2, 21
                  srli        a6, t5, 14
                  sltu        ra, t6, a1
                  divu        s10, s2, a0
                  c.addi      t0, -1
                  sltu        t0, t0, t5
                  c.nop
                  slt         s7, a7, ra
                  c.xor       a3, a3
                  c.nop
                  c.srli      a3, 1
                  rem         s2, t3, t5
                  c.lui       t3, 28
                  mulhu       a0, tp, gp
                  sll         s8, a0, t2
                  sltu        s6, t2, gp
                  mulh        zero, s4, a6
                  c.xor       a0, a3
                  slt         s11, s10, a2
                  c.addi4spn  a3, sp, 448
                  ori         ra, s8, -687
                  add         tp, a1, a6
                  add         a1, s7, s9
                  c.add       ra, s5
                  sltiu       s2, t1, -1495
                  c.add       a7, s0
                  c.li        t3, -1
                  div         a6, a4, t5
                  slti        s8, t3, 587
                  c.srli      a2, 17
                  sub         zero, t1, a4
                  sltiu       t2, s0, 1945
                  c.andi      a3, 31
                  mulhsu      a7, s7, s1
                  mulhsu      s9, sp, t6
                  c.or        a3, a3
                  mulh        s6, a4, sp
                  div         s11, s8, s2
                  c.mv        s9, t2
                  auipc       sp, 895938
                  c.nop
                  add         s6, a7, sp
                  c.nop
                  sltiu       s4, tp, 13
                  nop
                  c.mv        a1, s5
                  sltu        zero, s3, a7
                  srai        zero, s2, 27
                  c.mv        s0, a3
                  c.or        a3, a5
                  rem         a7, a4, t2
                  rem         s4, t3, t5
                  c.slli      s4, 6
                  c.sub       a0, a3
                  mulhsu      t2, t2, a4
                  lui         a1, 618073
                  c.add       tp, t1
                  sltu        gp, t5, sp
                  slli        a6, ra, 22
                  slt         tp, a7, t1
                  add         s9, a4, s9
                  c.addi4spn  a3, sp, 32
                  c.mv        ra, s1
                  c.addi16sp  sp, -16
                  c.addi16sp  sp, -16
                  sra         t4, a5, s1
                  c.addi16sp  sp, 416
                  c.nop
                  divu        s1, ra, a2
                  c.addi4spn  a3, sp, 896
                  c.addi4spn  a3, sp, 832
                  mulhsu      t2, t1, t3
                  add         s10, t0, a3
                  xor         t4, zero, s11
                  c.sub       a4, a1
                  c.addi      ra, -1
                  srl         zero, a2, a6
                  mul         a6, s0, t3
                  slli        gp, a6, 26
                  c.lui       s3, 9
                  rem         sp, a4, zero
                  sltiu       a6, t5, 1344
                  or          zero, s10, t4
                  slti        a5, a4, 286
                  slt         t2, s8, a6
                  slli        a7, a5, 14
                  div         t3, s6, a3
                  rem         s7, gp, s1
                  rem         s10, tp, s7
                  srai        tp, t1, 2
                  mul         s0, a7, zero
                  nop
                  sra         a4, a6, tp
                  c.srai      a3, 20
                  sltiu       sp, t2, -1333
                  c.addi      gp, 27
                  c.add       sp, t1
                  rem         s2, s4, a7
                  auipc       s8, 593331
                  c.lui       s2, 25
                  c.xor       a3, a3
                  divu        s10, a2, tp
                  c.andi      a3, -1
                  c.addi16sp  sp, 128
                  andi        s2, t5, -759
                  mulh        s2, a0, a7
                  auipc       s3, 133723
                  c.add       ra, t4
                  slli        t4, s2, 24
                  c.nop
                  sll         s1, a7, t1
                  c.srli      a3, 30
                  c.addi4spn  a3, sp, 528
                  c.andi      a1, 22
                  and         s6, a6, s9
                  c.li        tp, -1
                  rem         sp, a0, a2
                  sltiu       s10, s5, 0
                  mulhsu      zero, s8, a3
                  add         s7, sp, t4
                  ori         t2, s4, -927
                  sra         ra, t4, tp
                  div         s11, s7, s8
                  or          a6, t4, s10
                  andi        t3, a6, -1845
                  mulh        tp, s9, s0
                  srli        ra, a3, 4
                  c.add       a3, t4
                  mulhu       s1, t0, s8
                  and         t4, a6, a5
                  divu        zero, s7, s6
                  mulhu       a2, a7, a2
                  ori         a3, t3, 739
                  xori        zero, gp, -414
                  mul         s3, a1, t2
                  sra         s11, tp, t0
                  div         zero, s0, s8
                  c.sub       a3, a3
                  div         a3, zero, t3
                  mulhsu      s11, t4, sp
                  c.srli      s0, 24
                  and         s1, t4, a2
                  slli        a2, t0, 28
                  xor         a7, t6, s10
                  c.xor       a3, a5
                  c.srai      s1, 10
                  c.nop
                  srai        s2, s7, 31
                  srl         s7, gp, a2
                  c.addi4spn  a3, sp, 448
                  rem         s10, s8, s9
                  c.or        s1, a3
                  c.and       a3, a3
                  c.slli      sp, 31
                  slli        tp, t5, 15
                  xor         a2, a3, s5
                  ori         a3, s0, -2009
                  divu        a3, a0, ra
                  xori        s7, s10, 1003
                  sub         zero, a2, sp
                  div         zero, a6, s11
                  c.mv        s10, a0
                  sltu        a7, zero, a2
                  c.mv        s9, s11
                  c.andi      a3, -1
                  addi        a0, s10, -682
                  and         t0, s4, s1
                  c.sub       a3, a3
                  mulhu       s6, t6, a4
                  c.lui       s11, 1
                  add         s3, s1, a2
                  c.slli      tp, 18
                  rem         gp, a2, a4
                  c.srai      a3, 9
                  ori         s1, t0, -1188
                  c.add       s4, s7
                  mul         a4, a7, s3
                  c.mv        a7, t0
                  div         gp, t4, t3
                  slti        zero, s8, -1462
                  c.li        a4, -1
                  sltiu       a0, s11, -829
                  c.add       t2, s1
                  sra         t3, s8, t3
                  c.addi16sp  sp, -16
                  c.slli      ra, 24
                  srai        t0, a4, 30
                  c.slli      t3, 2
                  srli        t0, t4, 24
                  c.addi4spn  a3, sp, 1008
                  slt         t3, s2, a6
                  andi        s4, s6, -1892
                  slti        t1, t1, -99
                  and         a1, t1, t2
                  divu        a5, gp, zero
                  c.addi      s1, -1
                  sll         s9, zero, sp
                  c.xor       a3, a3
                  c.addi16sp  sp, -16
                  xori        zero, zero, -319
                  auipc       a2, 861793
                  sltiu       s10, tp, 1608
                  c.and       a2, a3
                  rem         a3, sp, a0
                  andi        s3, s7, -1380
                  addi        t0, zero, 1597
                  sub         zero, s3, sp
                  srai        sp, a6, 2
                  c.slli      s9, 17
                  mulhsu      s6, t2, gp
                  or          s3, a7, s8
                  mul         zero, a1, a6
                  and         s2, gp, s6
                  c.addi16sp  sp, 336
                  c.nop
                  andi        s0, t4, 683
                  slli        s10, s4, 2
                  c.addi      t1, -1
                  c.and       a3, s0
                  c.or        a3, a1
                  c.addi16sp  sp, -16
                  c.andi      a3, 23
                  c.and       a3, a0
                  c.addi16sp  sp, -16
                  sltiu       t1, a2, -1754
                  c.li        s0, -1
                  rem         t2, s3, a3
                  mulh        tp, tp, t0
                  c.addi16sp  sp, 320
                  ori         a2, a7, -429
                  c.xor       a3, a3
                  nop
                  c.mv        a7, s10
                  srai        sp, s11, 4
                  auipc       zero, 334579
                  srl         s6, s1, a1
                  c.xor       a3, a4
                  mulhsu      ra, s8, tp
                  sll         s4, gp, s2
                  mulh        a2, t3, s0
                  rem         s3, t3, a5
                  c.li        s8, 25
                  c.sub       a3, a3
                  c.slli      s10, 29
                  c.addi      s6, 19
                  sra         sp, a5, s5
                  lui         t0, 873052
                  lui         s1, 66086
                  xori        a0, s8, -37
                  slti        s1, s2, -1079
                  sltiu       ra, t0, -2002
                  c.slli      a1, 21
                  andi        ra, s0, 606
                  nop
                  div         a3, a3, a3
                  slt         t2, s6, a1
                  addi        a1, s11, 1638
                  nop
                  slt         s9, a2, s3
                  lui         a3, 858003
                  andi        s10, a2, -1590
                  divu        gp, s0, a0
                  slli        t3, gp, 19
                  c.srai      a3, 13
                  c.or        a3, a3
                  div         s8, t3, t0
                  nop
                  c.mv        ra, t2
                  c.add       s2, t1
                  add         zero, t6, t1
                  c.nop
                  sra         s6, s9, t0
                  srli        s2, t5, 16
                  div         t4, s2, t4
                  andi        sp, s1, -1783
                  mulh        s9, s0, t0
                  srl         s3, t5, t2
                  c.andi      a3, -1
                  mulh        s4, s11, t6
                  divu        a7, t6, zero
                  andi        zero, a5, -1713
                  xori        ra, a4, -638
                  c.andi      a3, 22
                  addi        s11, a3, -1113
                  and         a1, a1, tp
                  c.or        s1, a3
                  c.addi      s4, 2
                  c.srli      a3, 24
                  slti        t0, a4, 553
                  c.li        ra, -1
                  divu        a7, s0, t5
                  lui         sp, 23958
                  c.mv        t3, s1
                  srai        t3, sp, 20
                  c.or        a3, a3
                  c.nop
                  auipc       zero, 539178
                  c.andi      a3, -1
                  c.addi16sp  sp, 496
                  slti        s11, a7, 885
                  c.mv        a4, s11
                  c.lui       ra, 19
                  lui         a0, 36843
                  c.addi4spn  a3, sp, 320
                  sra         s10, s9, a0
                  slli        zero, a0, 30
                  srli        s9, s10, 13
                  andi        s0, t5, 53
                  mulh        s8, t5, tp
                  c.addi4spn  s0, sp, 320
                  andi        t2, s1, 416
                  xor         sp, s5, s0
                  c.xor       a3, a5
                  rem         s4, gp, s11
                  slt         a1, t2, s8
                  div         a5, ra, a0
                  mulhu       t0, s2, t3
                  c.li        ra, -1
                  c.nop
                  sltiu       s7, a2, 1008
                  auipc       t3, 101709
                  nop
                  auipc       zero, 388199
                  nop
                  c.sub       a3, a3
                  c.li        s9, 22
                  add         ra, t0, sp
                  sub         s2, ra, t4
                  c.mv        ra, s11
                  c.nop
                  rem         s8, a6, s0
                  sltiu       zero, tp, 852
                  slli        zero, t5, 26
                  c.addi4spn  a3, sp, 896
                  c.andi      a3, -1
                  c.nop
                  mulhu       t0, s3, sp
                  slli        a0, t4, 15
                  and         a0, s2, s11
                  add         tp, s6, zero
                  xor         a6, s8, s9
                  c.slli      t3, 26
                  mulhu       a5, s7, t2
                  c.srli      a3, 14
                  lui         a3, 440076
                  c.addi16sp  sp, 448
                  c.sub       a3, a3
                  c.srli      a3, 20
                  c.add       s10, s3
                  xor         s0, s4, t6
                  c.add       s3, a0
                  c.li        ra, 6
                  sub         zero, a3, t3
                  auipc       ra, 313230
                  rem         zero, sp, a7
                  lui         s8, 351740
                  andi        gp, a0, 380
                  add         a1, s8, a1
                  c.li        ra, -1
                  c.li        s4, -1
                  slti        s1, t5, -1591
                  c.nop
                  li         t3, 0x63a6522 #start riscv_int_numeric_corner_stream_1
                  li         s8, 0x0
                  li         s11, 0x1
                  li         t4, 0x5de949de
                  li         s10, 0x4f259e45
                  li         a0, 0x1
                  li         tp, 0x1
                  li         sp, 0x0
                  li         a1, 0x0
                  li         a2, 0x0
                  c.addi      s3, 20
                  c.addi      ra, -1
                  nop
                  c.mv        s0, t2
                  c.add       a7, s10
                  c.sub       a3, a3
                  c.mv        s6, s6
                  c.mv        s4, gp
                  c.addi16sp  sp, 288
                  addi        s6, sp, 1135
                  c.lui       ra, 13
                  c.li        s4, 25
                  c.nop
                  auipc       s10, 832074
                  c.addi16sp  sp, 320
                  c.lui       a7, 29
                  c.nop
                  nop
                  srl         a2, tp, t5
                  and         s1, s5, s1
                  srl         s8, s7, s10
                  c.lui       a1, 8
                  c.or        s0, a3
                  xori        a6, s6, 1168
                  c.addi4spn  a5, sp, 384
                  ori         sp, s9, 18
                  c.or        a3, a3
                  sll         a6, s7, sp
                  srai        t0, t5, 2
                  mul         s7, a1, tp
                  c.xor       a3, a3
                  slli        s10, s4, 17
                  add         ra, t1, a4
                  mul         t4, a7, a7
                  nop
                  c.sub       a3, a3
                  rem         a4, s9, a4
                  nop
                  c.addi      s4, -1
                  c.srai      a3, 16
                  c.li        a1, -1
                  c.addi      t0, 9
                  c.addi      t4, -1
                  srl         t3, a5, a4
                  lui         s0, 636616
                  c.nop
                  sltu        s11, tp, a3
                  andi        t1, t6, 210
                  c.addi      t4, -1
                  xori        s7, s0, 1885
                  lui         t4, 820346
                  rem         tp, t2, t4
                  srli        t0, t5, 24
                  srai        s7, s2, 6
                  div         t2, gp, t4
                  sltiu       t3, s4, -1988
                  sll         zero, s7, s1
                  c.andi      a3, 25
                  xori        zero, s9, 643
                  xori        a7, t2, 935
                  or          s9, s6, s2
                  ori         s11, s5, -558
                  add         tp, ra, s7
                  mulhu       s9, t5, s6
                  xor         ra, a6, a7
                  or          t2, a0, t4
                  sra         a0, a4, a1
                  c.nop
                  c.or        a5, a3
                  addi        s3, zero, -1939
                  c.addi4spn  a3, sp, 864
                  and         s1, tp, s0
                  c.andi      a3, -1
                  addi        s9, t0, 1839
                  c.mv        t0, gp
                  c.xor       a3, a5
                  slt         zero, s7, t2
                  c.mv        ra, s11
                  c.li        tp, 11
                  add         t0, a5, s1
                  srai        a7, a3, 8
                  c.slli      s8, 6
                  sltu        sp, s9, a7
                  mulhu       s4, s3, s7
                  c.slli      a7, 17
                  div         s7, s1, a4
                  sltu        s10, tp, s3
                  div         zero, t5, s7
                  ori         tp, tp, 1376
                  andi        s10, a3, -1315
                  srli        a0, tp, 23
                  srl         ra, s9, t6
                  srli        a1, a1, 12
                  slli        zero, s10, 8
                  auipc       t4, 549903
                  nop
                  mul         ra, tp, a1
                  c.addi4spn  a3, sp, 640
                  c.srai      s1, 16
                  c.slli      ra, 8
                  c.and       a3, a3
                  c.mv        t4, a7
                  lui         t2, 689015
                  xori        s3, a2, -1991
                  add         t1, a4, a3
                  or          s4, gp, s3
                  divu        s4, t3, s8
                  c.li        a3, 20
                  c.and       a3, a3
                  rem         s2, s1, a0
                  sll         s2, t1, s7
                  sra         t1, gp, t6
                  nop
                  slli        t1, a4, 13
                  divu        t2, s6, sp
                  srl         t1, gp, s9
                  c.xor       a3, a3
                  andi        t1, s6, -886
                  sra         t1, s4, s4
                  slti        zero, s1, 2041
                  addi        a5, s10, -516
                  c.addi      s2, 26
                  nop
                  div         s3, a0, t0
                  c.slli      ra, 14
                  addi        s11, a0, -1921
                  rem         t3, a7, a3
                  or          a5, tp, s2
                  c.li        s11, -1
                  mulhu       a6, a7, gp
                  or          s6, a0, a4
                  add         s0, a4, a5
                  mulhsu      s2, a3, s4
                  c.andi      a3, -1
                  c.slli      t1, 15
                  slt         a6, s3, s2
                  srai        a5, s9, 9
                  c.srai      a3, 18
                  xori        tp, a4, -1381
                  lui         t3, 274465
                  ori         s1, ra, -1018
                  mul         s6, s1, s1
                  mulhu       s6, s3, a3
                  c.or        a3, a2
                  sltu        s3, sp, s4
                  c.srli      a3, 26
                  mul         a4, sp, s9
                  xori        a2, t0, 1333
                  srl         gp, s2, t3
                  sltiu       a3, zero, -1827
                  xori        s0, a0, -274
                  c.lui       a5, 14
                  c.addi      s3, -1
                  addi        t1, s10, 443
                  slli        a7, t3, 15
                  mul         a4, gp, t0
                  andi        t2, a5, 1091
                  c.xor       s1, a3
                  or          s9, s8, s9
                  c.li        s11, 6
                  c.sub       a3, a0
                  mulhsu      s10, a6, s9
                  mulhu       s6, s1, s9
                  and         tp, t2, tp
                  c.mv        a1, a4
                  c.srai      a3, 5
                  c.andi      a3, -1
                  srai        a0, zero, 27
                  c.srai      a3, 18
                  slli        s10, a5, 25
                  mulh        s0, s11, sp
                  rem         zero, t0, s4
                  sltiu       s1, s0, 1236
                  or          s9, a4, a2
                  c.and       a3, a3
                  sltiu       s2, ra, 495
                  addi        a1, tp, 991
                  srai        zero, s4, 31
                  srli        s3, a4, 21
                  srl         zero, a6, a3
                  c.addi16sp  sp, 256
                  lui         t0, 704750
                  auipc       zero, 924490
                  c.addi4spn  a3, sp, 896
                  c.addi      s0, 4
                  divu        s6, t5, a3
                  auipc       a5, 842792
                  or          s3, a5, ra
                  srai        a1, t5, 20
                  c.sub       a0, a3
                  xor         s6, a7, s10
                  div         s7, sp, a0
                  c.andi      a3, -1
                  sub         ra, t1, tp
                  c.srli      a3, 3
                  c.srli      a2, 19
                  sltu        s3, sp, t2
                  and         a4, a4, tp
                  sltu        t1, s9, t4
                  mulh        zero, ra, a6
                  mul         a5, zero, s4
                  mulhsu      t4, t3, s2
                  c.addi4spn  a0, sp, 608
                  lui         t3, 217046
                  divu        zero, t5, a3
                  c.sub       a3, a3
                  c.slli      sp, 21
                  slti        sp, t6, 1137
                  mulh        s9, s1, s10
                  srai        s3, s0, 5
                  c.nop
                  slli        s6, s3, 14
                  c.mv        s6, s4
                  c.mv        ra, s7
                  mulh        a4, a6, ra
                  c.srai      a3, 11
                  c.addi16sp  sp, 208
                  c.add       a3, a5
                  xor         zero, t3, a5
                  c.sub       a0, a3
                  mulh        a4, s8, ra
                  xori        t2, s3, -347
                  c.srai      a3, 26
                  ori         t2, s0, 905
                  or          a2, zero, s7
                  c.srai      a3, 25
                  c.sub       a3, a3
                  c.and       a1, a3
                  sra         a3, s2, a7
                  c.li        s6, 24
                  add         t4, a7, a4
                  slt         s2, t4, a4
                  or          t1, ra, a6
                  c.addi      s6, 10
                  srl         sp, s5, sp
                  mulh        s10, gp, s7
                  add         zero, gp, t6
                  divu        s3, a6, s4
                  c.addi4spn  a3, sp, 192
                  srli        s6, s8, 20
                  nop
                  xori        s3, a1, -1110
                  xori        s9, s10, -2043
                  sltiu       ra, a2, 186
                  auipc       t3, 592503
                  sll         a5, sp, t6
                  sra         s3, s8, sp
                  sltiu       s6, t3, -297
                  sltu        a5, a5, a3
                  slt         zero, s8, s1
                  srl         s11, t5, zero
                  c.add       s9, t3
                  c.lui       s8, 20
                  c.srli      a3, 20
                  c.and       a3, a3
                  mul         t3, s7, s3
                  nop
                  ori         tp, a7, 455
                  srl         a4, s2, gp
                  c.addi4spn  a3, sp, 128
                  lui         a5, 304040
                  sub         s6, s10, t4
                  lui         zero, 728001
                  mulh        ra, t1, s11
                  sltu        t4, t1, a0
                  auipc       zero, 348525
                  c.add       s11, a4
                  divu        a7, a5, s1
                  sll         t0, s3, a3
                  srl         s0, zero, s3
                  mulhsu      s4, gp, t4
                  c.srli      a3, 2
                  mulh        a2, s2, s4
                  c.lui       s9, 30
                  srli        t3, gp, 12
                  andi        zero, a1, 28
                  or          zero, a5, a0
                  mulhu       a7, a2, s3
                  c.addi4spn  a3, sp, 576
                  sltiu       s11, sp, 702
                  and         zero, ra, t0
                  c.addi16sp  sp, -16
                  c.li        sp, 5
                  c.addi4spn  a3, sp, 672
                  c.addi4spn  a3, sp, 832
                  c.add       a0, t5
                  xor         a5, a3, t3
                  sra         t0, gp, s6
                  add         s7, a7, t0
                  mulh        s10, a3, s2
                  ori         zero, s10, -1482
                  slli        t0, s6, 27
                  c.andi      a3, -1
                  add         sp, s11, t3
                  add         s8, s0, t6
                  c.addi4spn  a3, sp, 448
                  nop
                  mulhu       a2, s10, zero
                  xori        t1, a3, 1119
                  c.li        s10, -1
                  ori         gp, s8, -1674
                  c.addi16sp  sp, -16
                  sub         gp, zero, t4
                  andi        zero, s3, -638
                  rem         s11, t6, tp
                  c.add       s8, ra
                  mulhsu      s7, a1, a1
                  rem         s7, a4, gp
                  srai        t1, s5, 5
                  nop
                  srli        s1, a3, 7
                  c.addi16sp  sp, -16
                  ori         a5, sp, -1005
                  lui         a4, 598626
                  nop
                  mul         s9, s9, s7
                  c.lui       t3, 6
                  c.addi      s9, -1
                  lui         t1, 734193
                  mulhsu      zero, t3, a0
                  slti        a5, zero, -2040
                  c.addi      s9, 29
                  c.andi      a3, 26
                  ori         t0, s8, 1921
                  c.xor       a3, a3
                  mul         a0, s11, t2
                  slli        s4, s8, 3
                  c.andi      a3, -1
                  sltiu       a3, s5, -1965
                  c.lui       s3, 8
                  mulhsu      s6, t0, s10
                  sltu        s6, s1, s7
                  or          a4, s1, tp
                  rem         a5, t6, s2
                  c.mv        t4, s9
                  c.nop
                  c.lui       t1, 20
                  c.xor       a3, a3
                  mul         a2, s1, a3
                  c.addi16sp  sp, 336
                  xor         zero, t4, a3
                  mul         gp, s1, s4
                  and         a3, a5, a1
                  slti        s8, s9, 797
                  and         a2, s6, s2
                  c.sub       a3, a3
                  c.add       t2, a0
                  mul         s6, s7, t2
                  c.or        a3, a3
                  div         s2, s8, a6
                  srai        a7, a6, 19
                  nop
                  div         a3, t1, s8
                  sltu        s2, s11, s1
                  c.srli      a3, 12
                  c.srli      a3, 5
                  sub         zero, t2, s11
                  nop
                  nop
                  c.xor       a3, a2
                  c.srli      a3, 16
                  rem         a5, tp, s10
                  slti        zero, a1, 933
                  div         s4, ra, t4
                  ori         s9, s11, -221
                  srl         s0, gp, s8
                  andi        s8, s1, -38
                  sll         s0, s8, t1
                  andi        t0, s11, 662
                  and         zero, zero, a0
                  add         a3, t1, s0
                  xor         t1, s7, s11
                  c.addi4spn  a3, sp, 640
                  xori        a5, a6, -433
                  sub         t0, ra, t5
                  c.mv        s0, s11
                  c.or        a3, a3
                  c.nop
                  c.and       a3, a3
                  nop
                  div         tp, tp, s5
                  divu        t3, t1, s11
                  ori         a1, a5, 1426
                  srl         a3, s5, s1
                  c.lui       ra, 15
                  srl         t3, s6, a7
                  c.addi4spn  a3, sp, 640
                  sub         s2, s11, gp
                  srli        a6, s7, 27
                  c.li        a3, 17
                  divu        s10, t4, zero
                  sll         t4, ra, s5
                  lui         zero, 978139
                  mulhsu      t2, zero, a3
                  li         s6, 0x1 #start riscv_int_numeric_corner_stream_30
                  li         t4, 0x4a9b7e49
                  li         t3, 0x0
                  li         s11, 0x0
                  li         t2, 0x174c8a9d
                  li         s10, 0x0
                  li         a0, 0x0
                  li         a2, 0x1
                  li         a5, 0x40120263
                  li         a1, 0x0
                  c.addi      t2, -1
                  c.sub       s1, a3
                  addi        a1, gp, -865
                  addi        zero, t4, -1270
                  c.addi16sp  sp, 32
                  c.add       a4, a5
                  mulh        ra, s2, s5
                  c.lui       a7, 9
                  c.sub       a3, a0
                  mul         t2, t1, t1
                  c.addi      a7, -1
                  c.add       a1, a3
                  c.lui       a5, 14
                  lui         s2, 418901
                  c.addi4spn  a3, sp, 864
                  c.addi4spn  s1, sp, 640
                  c.nop
                  c.lui       s9, 12
                  rem         t2, a0, t3
                  mulhsu      s2, s8, s0
                  div         s2, s7, s7
                  sub         ra, t6, t2
                  mulhsu      zero, t4, a6
                  c.add       s8, a2
                  mulhsu      s4, s3, s3
                  nop #end riscv_int_numeric_corner_stream_30
                  c.srli      a3, 13
                  c.or        a3, a3
                  slti        s2, s10, 1079
                  c.nop
                  sll         s8, tp, s10
                  c.addi      sp, 6
                  slli        t2, t6, 24
                  c.lui       a1, 23
                  srai        t1, s9, 12
                  srl         s9, a4, sp
                  xori        s4, s10, 68
                  mulhu       zero, t2, s4
                  srai        a4, s8, 9
                  xor         a0, t6, t2
                  c.mv        a1, t3
                  c.andi      a3, 11
                  c.mv        t1, t5
                  xori        s7, s8, 1889
                  ori         zero, t3, -951
                  mul         s9, a7, s4
                  c.srai      a3, 15
                  divu        s7, s11, tp
                  div         t0, a6, a1
                  c.mv        s0, s6
                  div         t3, s0, s7
                  divu        a6, ra, t1
                  c.xor       a3, a3
                  c.srai      a2, 9
                  c.add       ra, s11
                  ori         s3, ra, 1384
                  sra         t4, t1, s6
                  sltiu       t1, a3, -1229
                  c.add       t3, a7
                  andi        s10, s6, -1533
                  divu        a3, a4, s7
                  c.srli      a3, 30
                  c.mv        s8, gp
                  ori         s11, s8, 1515
                  c.andi      a3, -1
                  sltu        zero, s2, sp
                  mulh        s3, s9, a5
                  add         zero, a6, a0
                  add         t2, a4, s5
                  c.andi      a3, 27
                  add         a0, s2, t6
                  sub         s2, s0, a0
                  srli        zero, s2, 19
                  c.nop
                  mul         s8, s8, s11
                  c.mv        ra, s10
                  c.srai      a3, 11
                  divu        s9, t0, sp
                  c.srli      a3, 31
                  c.addi16sp  sp, -16
                  sltu        s1, ra, s0
                  rem         t3, s9, s5
                  c.slli      a0, 5
                  auipc       t1, 21685
                  sll         t0, t5, t2
                  srai        a6, a4, 18
                  mul         zero, a0, a0
                  c.or        a5, a1
                  srai        t3, s10, 16
                  xori        zero, s5, -1235
                  mul         s9, a1, gp
                  c.nop
                  srli        s7, a7, 12
                  add         a3, t1, t3
                  c.add       tp, s3
                  mulhu       s10, t4, s7
                  slti        s8, t1, 1048
                  nop
                  slti        s1, s3, -1788
                  sub         sp, ra, s6
                  sltu        s4, a6, s11
                  c.nop
                  and         s1, t0, s6
                  c.nop
                  c.and       a3, a3
                  c.sub       a3, a3
                  xor         tp, t0, t4
                  c.add       a7, s11
                  and         a3, t5, t2
                  slti        a3, s2, -287
                  lui         zero, 976025
                  sub         a4, s7, a0
                  xori        s2, t0, 422
                  sub         s3, t6, a1
                  ori         a1, zero, -1271
                  c.addi16sp  sp, 496
                  c.li        s10, 2
                  sra         a0, s10, s8
                  divu        a4, sp, s4
                  c.lui       a1, 4
                  sub         a3, s2, s9
                  nop
                  sltu        s11, t2, t5
                  nop
                  mulh        t4, s5, zero
                  sltiu       t0, t4, 1191
                  add         a6, s1, s1
                  rem         t1, a3, s11
                  srai        s4, ra, 24
                  sub         s9, s10, a1
                  c.or        a3, a3
                  c.and       a3, a0
                  c.slli      a7, 26
                  sltu        ra, s7, a0
                  c.add       t3, sp
                  c.nop
                  divu        t3, sp, zero
                  add         zero, a2, s8
                  slt         t1, t4, tp
                  c.andi      a3, -1
                  c.and       a3, a3
                  mulhsu      a0, t6, a2
                  c.lui       ra, 17
                  sra         a6, a0, gp
                  div         a6, s2, ra
                  c.srai      a3, 6
                  c.and       a3, a3
                  lui         t1, 717724
                  div         a0, s3, s5
                  slti        a3, s2, -561
                  rem         t3, a0, a2
                  or          a7, s3, gp
                  lui         zero, 643759
                  xori        s4, zero, 1502
                  c.addi4spn  a3, sp, 896
                  sra         zero, a2, a2
                  nop
                  c.addi4spn  a0, sp, 640
                  c.nop
                  slli        s10, s9, 21
                  slli        zero, s4, 14
                  nop
                  mulhsu      gp, t4, a2
                  and         s11, s3, a7
                  c.li        tp, 15
                  or          zero, t2, s10
                  c.slli      ra, 26
                  mulhu       a1, ra, s8
                  srli        t0, t5, 17
                  mulhu       a1, gp, a2
                  c.sub       a3, s0
                  srli        ra, s2, 14
                  sra         a4, s5, a3
                  c.addi      a4, -1
                  andi        a6, s9, 1192
                  or          a2, s5, t5
                  c.addi16sp  sp, -16
                  sll         ra, t2, a2
                  ori         s11, a4, -2042
                  srli        ra, s2, 21
                  c.xor       a3, a3
                  sll         zero, sp, t4
                  srai        sp, s0, 30
                  c.srai      a3, 16
                  mulhsu      a7, a3, a5
                  sltiu       a1, s1, -1549
                  c.mv        ra, ra
                  c.and       a3, a3
                  sub         s10, a7, s6
                  mulhsu      gp, t1, s3
                  lui         zero, 716182
                  srli        s7, a2, 17
                  or          a7, s8, a3
                  sra         zero, t2, s9
                  addi        a0, a3, -1146
                  mulhu       zero, a1, a5
                  c.or        a2, a3
                  add         s0, a2, a1
                  mulhsu      s3, s5, a3
                  slt         zero, t6, s2
                  slli        zero, s8, 22
                  c.nop
                  div         s8, zero, t6
                  divu        zero, s2, gp
                  srl         a3, a7, a5
                  andi        s10, a4, 1506
                  sltu        zero, a3, t3
                  sub         s6, t0, tp
                  add         zero, a7, t6
                  lui         zero, 395700
                  c.xor       a3, a3
                  c.lui       a4, 10
                  c.lui       t3, 9
                  c.or        a3, a0
                  srl         a6, a6, t4
                  div         s4, a5, s2
                  mul         ra, a1, s3
                  c.srai      a0, 10
                  c.mv        s8, a7
                  c.xor       a5, a3
                  add         a4, a6, s7
                  srai        s4, s0, 21
                  xori        t0, a6, 1340
                  and         t3, s1, a7
                  slti        t4, a0, -768
                  srai        a0, s0, 2
                  c.mv        s8, s5
                  divu        s7, sp, s2
                  c.slli      ra, 10
                  slti        t3, a1, 285
                  c.add       s1, s2
                  c.sub       a3, a3
                  c.sub       a4, a3
                  c.lui       s7, 11
                  c.lui       ra, 16
                  sll         a0, a6, s4
                  ori         tp, s7, 1494
                  div         tp, a7, s2
                  c.srai      a5, 8
                  c.nop
                  rem         a7, s5, t5
                  c.xor       s0, a3
                  c.slli      s1, 27
                  c.lui       t3, 10
                  mul         t2, a1, t2
                  sll         a2, s9, t3
                  slt         tp, s6, a2
                  div         zero, s2, s0
                  srai        t3, a3, 13
                  c.srli      s0, 16
                  slli        s9, s4, 24
                  divu        s2, s3, t5
                  srai        s9, ra, 9
                  c.mv        a4, a0
                  addi        t0, sp, -906
                  div         a1, t3, sp
                  addi        gp, s2, 1074
                  sub         a6, s0, s8
                  c.addi      s1, -1
                  srl         tp, s1, a7
                  c.addi16sp  sp, -16
                  mul         a6, s7, s7
                  c.srli      a3, 14
                  lui         t0, 75725
                  c.or        a3, a3
                  srl         gp, s9, a5
                  andi        a3, a6, 235
                  c.andi      a3, 3
                  c.or        a3, a3
                  lui         zero, 583673
                  mul         zero, s8, tp
                  slti        t2, t5, 577
                  ori         s11, s10, 310
                  rem         s0, s3, zero
                  divu        a3, t5, t4
                  sra         a0, a6, t3
                  sltu        ra, zero, t1
                  srl         zero, s11, a4
                  rem         a7, a5, t5
                  nop
                  c.srli      a3, 4
                  andi        s0, a7, 1244
                  addi        a7, s4, 301
                  or          s8, s6, s2
                  or          zero, t3, s11
                  rem         s6, s3, s3
                  c.mv        s2, ra
                  c.addi16sp  sp, 176
                  c.li        a3, -1
                  c.lui       s11, 22
                  sltu        zero, s7, s11
                  nop
                  c.srai      a3, 24
                  c.srli      a3, 13
                  andi        t1, a0, 748
                  lui         t1, 578262
                  sll         s8, a0, t6
                  nop
                  mulh        ra, a1, t0
                  mul         ra, s6, t0
                  srli        t1, s0, 13
                  c.and       a3, a3
                  c.or        a3, a3
                  and         zero, s2, s3
                  slti        zero, a5, -1233
                  srl         s4, sp, t6
                  c.li        ra, 0
                  c.or        a3, a3
                  sra         t3, s2, t4
                  div         gp, ra, zero
                  div         tp, gp, a0
                  and         zero, s6, s9
                  slli        s1, a5, 16
                  c.addi      s1, 21
                  auipc       sp, 65321
                  c.sub       s1, a3
                  andi        t2, t0, 1191
                  mulhsu      s0, s8, s6
                  c.or        a3, a3
                  rem         zero, s4, a3
                  mulh        t1, s1, s2
                  mulhsu      s9, s4, s2
                  c.addi      s10, 1
                  c.add       s9, sp
                  auipc       s7, 7509
                  c.li        a2, 8
                  c.srli      a3, 31
                  slt         s1, gp, t0
                  xori        a2, t3, 1908
                  c.sub       a4, a3
                  c.addi      a2, 7
                  mul         a0, s0, t5
                  sra         a0, tp, s1
                  c.addi16sp  sp, 224
                  slli        t4, t2, 29
                  slti        a1, a0, 381
                  sra         sp, s3, s8
                  nop
                  srli        a3, a7, 3
                  mulh        zero, s10, t2
                  c.srai      a3, 27
                  c.andi      a3, 13
                  c.addi16sp  sp, -16
                  mul         s6, s1, a2
                  c.addi4spn  a3, sp, 352
                  slli        t3, gp, 7
                  addi        t4, a2, -473
                  xori        zero, t6, -1057
                  rem         s0, s5, a6
                  srli        s3, a4, 27
                  rem         s0, s0, s6
                  sub         s7, a7, t6
                  and         s6, s4, s1
                  add         sp, s5, s5
                  c.xor       a3, a3
                  c.lui       a7, 12
                  rem         zero, a5, s5
                  mul         a5, tp, t3
                  c.lui       s2, 31
                  c.nop
                  c.sub       a3, a3
                  divu        s1, a2, a7
                  sra         a6, a1, s10
                  c.addi16sp  sp, -16
                  div         s8, gp, s11
                  sll         zero, s8, gp
                  srai        t3, t3, 4
                  xor         zero, zero, a1
                  divu        s10, a7, s1
                  c.addi4spn  a2, sp, 128
                  c.srai      a2, 24
                  c.or        a3, s0
                  auipc       a1, 909323
                  rem         s4, t3, a5
                  slli        s8, zero, 13
                  c.srli      a4, 13
                  mulh        s4, s8, a6
                  ori         t4, t0, 860
                  c.addi4spn  a3, sp, 128
                  lui         zero, 804518
                  c.nop
                  mulhu       t2, s4, s2
                  auipc       a4, 308182
                  div         s2, s8, a2
                  slli        a2, a0, 3
                  mulh        a2, t6, s3
                  c.addi      a5, -1
                  divu        tp, a0, a2
                  rem         s9, s11, zero
                  slti        t2, t4, 971
                  xori        s2, s5, 114
                  div         s3, t6, t2
                  xor         t2, sp, a4
                  c.addi4spn  a3, sp, 128
                  c.li        s2, 3
                  c.srai      a2, 14
                  c.sub       a3, a3
                  add         t0, t2, s7
                  lui         a1, 41066
                  c.slli      tp, 22
                  c.srli      a3, 29
                  mul         s7, s10, s4
                  mulh        zero, s4, ra
                  sltiu       s9, t0, 515
                  c.or        a3, a3
                  sltiu       s4, ra, 1576
                  nop
                  c.nop
                  mulh        t1, a2, a1
                  c.or        a3, a3
                  c.li        s2, -1
                  slti        gp, t6, -1615
                  mulhu       tp, s10, s5
                  mulhsu      zero, s4, s5
                  or          t0, s2, a4
                  c.addi4spn  a3, sp, 320
                  sll         a2, t2, tp
                  srai        ra, tp, 20
                  c.xor       a3, a3
                  mulhsu      a3, t5, a0
                  c.addi      t4, -1
                  c.or        a3, a3
                  xor         t2, t2, tp
                  c.li        t4, -1
                  ori         t3, a7, 281
                  slt         a1, tp, s4
                  auipc       a1, 471910
                  c.and       a3, a3
                  c.xor       a3, a3
                  srl         a7, t5, t1
                  auipc       s1, 301191
                  sltu        t2, a7, s10
                  srai        s2, t6, 4
                  mulhsu      zero, sp, t6
                  c.and       a0, a3
                  c.add       s7, a7
                  or          a5, ra, s9
                  addi        s3, a7, 782
                  divu        zero, s7, s7
                  sra         t2, gp, s11
                  c.addi      a3, 20
                  c.slli      tp, 21
                  mulhsu      a6, s0, s5
                  srl         zero, a5, a0
                  and         s7, t2, a4
                  srl         a5, s3, gp
                  c.add       s1, a3
                  ori         zero, a2, -991
                  c.mv        s8, t0
                  srl         s11, s5, sp
                  xor         a2, s6, t6
                  sltu        s1, t4, a7
                  c.li        s6, -1
                  mul         t2, zero, t6
                  c.srli      a3, 15
                  c.or        a4, a3
                  auipc       zero, 727706
                  mul         s7, s6, t0
                  sra         a5, s8, a6
                  xori        zero, sp, -132
                  slli        s4, s7, 30
                  mulh        s4, a1, ra
                  c.li        a3, -1
                  c.or        a3, a3
                  c.mv        t1, t5
                  slti        zero, t4, -1361
                  srai        s4, a5, 29
                  c.xor       a3, a4
                  mulhsu      s8, t0, a2
                  c.xor       a3, s0
                  auipc       tp, 528473
                  div         s9, s0, s7
                  slt         tp, ra, s1
                  sltu        a5, a7, a4
                  mulh        s3, a2, s1
                  c.sub       a3, a3
                  xor         s8, s6, zero
                  mulhu       a5, a5, s10
                  c.srli      a3, 23
                  nop
                  slt         a3, a6, s1
                  sltu        a3, tp, s11
                  divu        t3, a0, a5
                  c.srai      a3, 26
                  divu        s4, t0, a1
                  div         a6, zero, s11
                  and         s4, s5, s0
                  c.add       ra, s9
                  c.sub       a3, a3
                  c.or        a3, a3
                  c.srli      a3, 4
                  div         s9, s10, ra
                  c.addi      sp, -1
                  mul         s2, s3, tp
                  nop
                  c.xor       s0, a3
                  c.li        a0, -1
                  lui         s1, 883013
                  ori         a5, s5, 1871
                  nop
                  add         gp, s3, a6
                  rem         a4, s0, zero
                  and         a0, a5, s6
                  c.xor       a3, a3
                  mulhu       zero, t2, a4
                  add         sp, t1, a2
                  divu        a7, t6, t3
                  mulhsu      a4, t0, s10
                  c.addi16sp  sp, 384
                  xori        t0, ra, 2018
                  c.li        s7, 15
                  sltiu       t0, ra, 936
                  c.sub       a3, a3
                  srl         s4, a2, t1
                  srai        t0, s5, 2
                  c.and       a3, a3
                  srai        a4, s9, 13
                  c.mv        s2, ra
                  c.li        a5, 0
                  slti        t0, tp, 60
                  div         s11, zero, a6
                  srai        s7, t6, 18
                  slti        a3, s9, 1330
                  mulh        s3, zero, t0
                  c.sub       a3, a3
                  xori        sp, a6, -194
                  xor         tp, s5, s11
                  mulh        s10, s9, t0
                  c.srli      a3, 16
                  c.addi4spn  a3, sp, 128
                  c.sub       a3, a4
                  nop
                  c.addi      s10, 17
                  slt         sp, s2, a3
                  xori        a4, t4, -1844
                  c.and       a3, a3
                  c.xor       a3, a3
                  xor         s8, a4, t0
                  xori        zero, t0, 410
                  mulhsu      s4, zero, t3
                  sll         a0, a7, ra
                  c.srli      a3, 29
                  nop
                  c.addi16sp  sp, -16
                  srai        s8, a5, 2
                  c.mv        s8, s2
                  c.xor       a3, a3
                  sra         ra, tp, a2
                  slti        a6, s11, 1486
                  auipc       sp, 555745
                  xor         s8, s3, t6
                  sll         t4, t5, a2
                  slti        a0, a5, -992
                  c.addi4spn  s0, sp, 576
                  c.addi      a0, -1
                  mulhu       a7, t3, s5
                  sltu        zero, a3, t1
                  c.sub       a3, a3
                  srl         a1, ra, t3
                  srli        zero, a1, 15
                  rem         zero, a6, s7
                  mulh        t1, t5, a6
                  c.add       t0, s11
                  srai        zero, t1, 1
                  rem         a7, gp, t2
                  mulhu       s9, s5, a7
                  sltiu       tp, tp, 255
                  slti        a6, gp, -146
                  c.and       a3, a3
                  c.add       t3, s3
                  sub         a0, s10, s6
                  c.nop
                  c.add       t3, t2
                  c.slli      s4, 1
                  srai        tp, zero, 27
                  divu        t0, a7, t0
                  slt         zero, zero, a2
                  add         zero, t3, zero
                  sub         s6, a2, a3
                  c.addi16sp  sp, -16
                  or          t1, s6, ra
                  c.addi16sp  sp, 272
                  sll         a2, t5, a3
                  mulhu       zero, s5, t4
                  mulhu       a6, t1, sp
                  srai        t0, t2, 25
                  slli        s0, t5, 9
                  mul         s6, s9, t1
                  c.addi      t3, 9
                  slti        s6, t3, 1974
                  mulhsu      sp, s8, t2
                  c.mv        tp, s2
                  c.addi4spn  a3, sp, 448
                  sltiu       s9, t0, -829
                  mulh        a5, s4, a6
                  c.nop
                  c.xor       a3, a3
                  auipc       a5, 644213
                  srai        tp, gp, 13
                  c.and       a3, a3
                  mulhsu      s1, a7, s2
                  rem         s7, tp, s5
                  c.add       a5, s6
                  and         a0, a3, t5
                  c.addi4spn  a3, sp, 640
                  c.addi      s2, -1
                  slli        a3, t2, 22
                  slti        s4, t4, -26
                  c.addi16sp  sp, 176
                  rem         tp, zero, a1
                  auipc       a7, 701615
                  c.xor       a3, a3
                  lui         t4, 666996
                  sra         s6, a7, s1
                  c.li        sp, 7
                  mulhsu      t2, ra, s3
                  c.srai      a3, 4
                  srai        a6, a1, 18
                  srl         s7, ra, s3
                  div         s4, ra, t1
                  c.nop
                  sltu        a6, a3, s5
                  add         tp, s11, s0
                  nop
                  divu        t2, t2, a2
                  mul         a1, t5, a3
                  xori        t4, t6, -1884
                  c.sub       a3, a3
                  div         s8, t1, a1
                  c.addi16sp  sp, 304
                  c.add       t1, t0
                  c.addi      s4, -1
                  add         a7, t4, s8
                  mulh        a6, t1, s6
                  c.add       a2, a6
                  andi        a0, t5, -1987
                  div         a0, ra, a4
                  mulhu       t1, s5, s5
                  sra         a5, t6, s2
                  c.nop
                  add         t4, t6, tp
                  c.xor       a3, a3
                  c.and       a4, a3
                  srl         a3, s7, s6
                  auipc       s2, 148425
                  mul         ra, s10, s10
                  c.xor       a1, a3
                  addi        zero, s7, -1648
                  mul         ra, s0, a5
                  c.add       a5, t4
                  div         s1, s0, s2
                  srli        a4, t0, 9
                  c.or        a3, a3
                  c.xor       a3, a3
                  auipc       a0, 109643
                  c.add       a5, tp
                  c.and       a3, a3
                  div         zero, t1, sp
                  sltiu       a4, a1, -1330
                  c.or        a3, a3
                  srl         zero, t2, s0
                  sltiu       zero, s1, 1518
                  slt         s1, t5, s2
                  or          sp, a3, t1
                  c.xor       a2, a3
                  mulh        a3, t1, t2
                  c.addi      t0, -1
                  rem         t4, gp, t1
                  mulhu       a6, s5, gp
                  nop
                  c.addi4spn  a3, sp, 336
                  slli        ra, a7, 9
                  c.nop
                  c.nop
                  lui         t3, 949578
                  sltiu       a0, s5, -1325
                  or          a1, ra, s10
                  c.lui       s1, 12
                  sltiu       s10, a0, 1962
                  sltu        s1, s7, t6
                  c.lui       a2, 12
                  c.slli      s2, 19
                  and         tp, a1, s9
                  lui         a3, 717891
                  c.andi      a3, -1
                  c.srai      a3, 4
                  sltiu       s0, zero, -1008
                  divu        t4, a4, s0
                  rem         s1, a4, s5
                  auipc       a6, 1015113
                  srl         zero, s4, a6
                  c.srli      s0, 6
                  sltiu       s8, a1, -779
                  srli        zero, a0, 13
                  c.addi16sp  sp, 144
                  c.and       a3, a3
                  auipc       a5, 299195
                  srl         zero, t6, t5
                  xor         a2, a7, a6
                  c.srli      a3, 20
                  mulh        s11, t0, t0
                  c.xor       a3, a3
                  c.or        a3, a3
                  c.mv        ra, s7
                  rem         gp, s10, s5
                  sub         tp, s3, a0
                  srli        a1, t1, 29
                  sra         t4, t1, a1
                  c.srai      a3, 21
                  c.mv        s11, a5
                  mul         s11, sp, ra
                  c.addi      ra, -1
                  or          t3, a5, sp
                  sll         s0, gp, a6
                  xori        a1, a7, -1347
                  and         t4, tp, a6
                  nop
                  or          s7, a2, s8
                  addi        s1, s8, 1287
                  nop
                  sub         zero, ra, t4
                  lui         sp, 564153
                  nop
                  and         tp, a4, t5
                  or          s10, s6, s11
                  sub         s1, s4, s4
                  c.addi16sp  sp, -16
                  c.add       s9, t0
                  c.srai      a3, 9
                  add         s2, s10, s1
                  slt         a1, s9, s6
                  and         t0, sp, t0
                  c.addi      a0, -1
                  add         sp, a7, a7
                  c.addi16sp  sp, 160
                  c.mv        s11, t1
                  c.addi      a2, -1
                  ori         a0, s3, 1794
                  sltu        s4, gp, a1
                  c.nop
                  c.li        ra, 14
                  srai        a5, gp, 14
                  c.slli      sp, 25
                  lui         s7, 532485
                  c.srai      a3, 29
                  c.nop
                  c.slli      a1, 18
                  c.srai      a3, 30
                  c.nop
                  nop
                  add         t4, a3, gp
                  srai        zero, s7, 4
                  slti        t4, t2, 1725
                  mulhsu      a4, t4, t5
                  or          ra, t4, a3
                  c.and       a3, a3
                  auipc       s2, 663306
                  c.xor       s0, a3
                  srli        a5, s10, 4
                  and         a6, a3, s10
                  c.or        a3, a3
                  add         t0, s3, a5
                  c.srli      a3, 28
                  c.li        s9, -1
                  ori         s3, s6, -1334
                  c.srli      a3, 24
                  c.andi      a3, 30
                  c.and       a3, a2
                  c.xor       a3, a3
                  rem         a7, zero, s2
                  mul         s3, t0, s11
                  c.mv        a4, t3
                  mulhu       s10, s3, t2
                  c.srai      s0, 9
                  srl         zero, a6, s5
                  slt         t4, s0, t6
                  c.and       a2, a3
                  sltiu       zero, t2, 1093
                  add         a5, a7, sp
                  divu        a7, t5, s9
                  add         s4, t3, s8
                  mul         s11, zero, a1
                  c.and       a3, a3
                  c.slli      t0, 16
                  and         a2, t2, ra
                  c.lui       a0, 24
                  mul         a4, t1, a1
                  div         a0, a7, s2
                  or          zero, s1, t6
                  sub         s4, sp, sp
                  add         zero, s0, tp
                  sra         s10, s9, a4
                  c.and       a3, a3
                  or          tp, s11, a4
                  addi        a3, s10, -152
                  c.addi16sp  sp, -16
                  slti        s7, t2, -1375
                  sltiu       s1, s2, -1527
                  c.sub       a3, a3
                  or          s6, s4, a3
                  nop
                  mul         zero, s5, zero
                  slti        s9, s9, 640
                  ori         s6, t5, 111
                  xori        t1, a3, 987
                  lui         s3, 473749
                  slli        s8, t1, 4
                  c.andi      a5, -1
                  mulhsu      a2, t5, sp
                  sll         t0, s1, s10
                  c.addi      s2, -1
                  xor         a6, a4, a2
                  divu        gp, gp, s1
                  c.xor       s0, a3
                  or          s2, a1, s3
                  srai        s2, a1, 11
                  c.addi16sp  sp, -16
                  c.srai      a5, 4
                  c.add       a3, s4
                  c.addi16sp  sp, -16
                  c.li        ra, -1
                  sll         t2, t4, t4
                  sltiu       s8, a3, 477
                  ori         t3, a0, -1662
                  c.addi      s3, 5
                  addi        zero, tp, 2031
                  c.and       a5, a3
                  auipc       t2, 203481
                  sub         zero, s3, s9
                  c.add       a4, a6
                  c.sub       a3, a0
                  mulhu       s4, t0, t4
                  sll         a1, a3, s3
                  auipc       s1, 983688
                  mulhsu      s9, s9, s5
                  sltu        zero, a5, t5
                  nop
                  ori         s11, a3, -1608
                  sra         s10, t1, s11
                  andi        s11, s0, 428
                  sll         gp, s1, s6
                  mulhu       a1, s11, s3
                  lui         t1, 343702
                  slli        a6, s2, 29
                  add         a7, s1, s9
                  c.addi16sp  sp, -16
                  c.addi      s7, 29
                  xor         a5, a6, t0
                  srl         zero, t1, s10
                  ori         s6, sp, 96
                  nop
                  sub         t1, s5, t1
                  c.addi4spn  a3, sp, 640
                  sub         a7, s0, s8
                  c.add       a0, ra
                  sub         s3, s2, t6
                  c.andi      a3, 18
                  c.xor       a3, a3
                  srai        s8, sp, 29
                  c.nop
                  sub         s3, zero, a2
                  srli        zero, gp, 31
                  c.and       a2, s0
                  c.mv        s10, s10
                  c.or        a2, a3
                  or          gp, a7, a2
                  xori        s11, gp, 1104
                  sltiu       zero, s9, 1090
                  c.li        a7, -1
                  add         gp, a0, s10
                  c.addi16sp  sp, -16
                  or          t0, s9, ra
                  c.lui       s6, 21
                  srli        s7, t2, 12
                  c.add       s1, a3
                  mul         a2, t0, a2
                  divu        a2, t6, a0
                  srl         a7, zero, a3
                  sra         t0, s10, a3
                  c.andi      a3, -1
                  c.mv        t3, t4
                  andi        s8, s1, 1449
                  srli        t2, a3, 11
                  auipc       a3, 608968
                  and         ra, tp, s4
                  addi        zero, zero, 524
                  srli        a6, s11, 27
                  c.li        ra, -1
                  ori         t4, s11, -1125
                  and         a7, s0, s11
                  c.add       ra, ra
                  mulh        sp, gp, s7
                  c.xor       a3, a3
                  lui         s9, 312605
                  sltu        a1, s7, a5
                  slt         a4, s1, s11
                  c.addi      s9, 30
                  sltu        t1, a2, a0
                  mulh        t0, a7, s3
                  c.and       a3, a4
                  lui         s3, 330399
                  sll         s7, ra, a5
                  c.nop
                  c.addi16sp  sp, -16
                  c.or        a3, a2
                  c.lui       a5, 31
                  addi        zero, ra, 1288
                  c.srai      a3, 16
                  and         ra, sp, a5
                  and         a4, t1, t4
                  slti        s2, s0, -910
                  slti        ra, t4, 318
                  ori         s6, s4, 200
                  c.addi4spn  a3, sp, 608
                  or          t1, s2, a6
                  c.andi      a4, 12
                  divu        a3, s6, a1
                  mulh        sp, sp, t4
                  srl         s0, s8, t3
                  nop
                  and         zero, a6, t6
                  c.srai      a3, 27
                  srai        sp, t3, 20
                  srli        s9, t6, 15
                  xori        s8, s6, -7
                  nop
                  and         zero, t0, t3
                  rem         s11, s11, a0
                  c.slli      sp, 8
                  c.li        t1, 11
                  c.addi4spn  a3, sp, 272
                  and         gp, t6, a7
                  c.sub       a3, a3
                  andi        a5, a5, -1118
                  c.addi16sp  sp, -16
                  addi        ra, s6, 809
                  slti        a6, a0, 1738
                  mul         t1, zero, s11
                  nop
                  c.nop
                  c.and       a3, a3
                  xori        s4, gp, 1502
                  mulhsu      tp, a3, s4
                  nop
                  srl         sp, a5, a3
                  c.or        a3, a4
                  c.and       a3, a3
                  c.srai      a3, 16
                  auipc       a1, 865256
                  c.nop
                  slt         t4, s0, s0
                  mulhsu      t3, s11, s10
                  sll         zero, s8, a7
                  slt         gp, s7, s0
                  slt         s1, t3, a6
                  c.add       s2, s8
                  c.add       gp, a2
                  c.and       a3, a3
                  srl         t0, a2, s7
                  c.addi4spn  a3, sp, 64
                  or          s10, zero, s1
                  sltu        zero, s7, tp
                  c.sub       a5, a3
                  slli        ra, s1, 29
                  rem         a7, a7, s7
                  sltu        a5, a5, t3
                  add         s1, a4, gp
                  rem         a4, sp, t5
                  sub         a3, a6, s4
                  rem         a7, t3, sp
                  andi        t0, s4, -1366
                  andi        a6, s1, 2032
                  mulh        t2, gp, t1
                  c.andi      a3, 11
                  c.add       a3, s7
                  lui         a1, 1022505
                  c.xor       a3, a3
                  c.add       a4, t0
                  c.add       a2, s6
                  c.and       a3, a3
                  addi        s10, tp, -1217
                  c.srai      a3, 18
                  xori        t4, s6, 1313
                  mulhsu      s7, a4, a3
                  c.sub       a3, a3
                  rem         s2, t6, t6
                  c.addi16sp  sp, -16
                  mul         t1, t5, s6
                  sub         tp, a2, s9
                  c.addi16sp  sp, 416
                  sltiu       a2, s10, 956
                  mulhsu      sp, tp, s2
                  sub         a2, s1, t3
                  and         s4, s7, t3
                  mul         a4, t0, a3
                  c.addi16sp  sp, 304
                  ori         zero, s4, -172
                  lui         a3, 994648
                  c.add       s8, t3
                  rem         a1, a3, s7
                  rem         a5, s3, s4
                  srl         s6, a6, s2
                  addi        a2, t1, -230
                  slti        s7, s2, 366
                  mulhu       s9, gp, t2
                  mulhu       t3, s1, a0
                  c.srli      a3, 28
                  srli        s4, t3, 11
                  c.or        a3, s1
                  c.and       a3, a3
                  c.slli      s9, 4
                  c.lui       s3, 3
                  c.addi16sp  sp, 32
                  slli        s7, ra, 21
                  srl         s9, ra, a5
                  c.nop
                  slli        gp, s5, 16
                  add         a2, gp, t4
                  or          a7, t4, a4
                  c.mv        t0, gp
                  sra         a0, s1, t1
                  xori        s11, s9, 2014
                  c.and       a3, a3
                  divu        s10, t5, tp
                  mul         zero, t5, s3
                  or          s7, s3, s8
                  auipc       t4, 650929
                  div         a6, s11, gp
                  or          zero, s5, a4
                  c.nop
                  mul         s0, t4, t5
                  slt         a0, s8, t4
                  rem         s4, a3, sp
                  auipc       t1, 583922
                  slt         s3, s3, s2
                  mul         s2, s2, a5
                  mulhu       s8, t4, s2
                  slti        t0, s9, 663
                  divu        zero, s1, a3
                  and         s2, s4, a2
                  c.sub       a3, a3
                  addi        a4, gp, 1149
                  sra         s8, t0, tp
                  sltiu       a5, s4, 608
                  c.and       a3, a3
                  rem         a0, a1, t5
                  srl         ra, s8, s0
                  nop
                  c.mv        s3, t4
                  mulh        tp, s0, t6
                  sub         tp, a0, a4
                  rem         s11, a0, zero
                  sltiu       t2, t6, -1020
                  divu        t4, a3, a0
                  c.srai      a3, 30
                  lui         a0, 741489
                  c.li        s3, -1
                  xori        zero, s3, -27
                  c.li        ra, -1
                  rem         a3, t0, t2
                  c.lui       t4, 19
                  slli        s7, a4, 17
                  mulhu       s3, a5, t4
                  c.nop
                  c.nop
                  sll         gp, s5, t2
                  c.addi4spn  a3, sp, 384
                  or          s7, t6, s11
                  c.li        a6, 16
                  c.sub       a3, a3
                  c.srli      a3, 16
                  xori        a5, ra, -1064
                  c.addi      a2, -1
                  c.xor       a3, a3
                  c.srai      a3, 7
                  rem         zero, s11, gp
                  slt         t0, a0, a2
                  c.nop
                  c.or        a3, a3
                  add         s2, a3, s8
                  sub         s9, a3, s1
                  sub         a3, s9, a0
                  xor         s6, s3, s8
                  c.or        a3, a3
                  mulh        tp, s2, a0
                  xori        a2, gp, -662
                  c.and       a3, a3
                  c.xor       a3, a5
                  and         tp, t1, s6
                  mulh        s7, t2, s11
                  c.addi      s2, 18
                  c.mv        ra, t3
                  c.add       t1, s4
                  c.addi16sp  sp, 160
                  nop
                  c.and       a4, a3
                  auipc       a0, 758787
                  c.addi4spn  a3, sp, 128
                  c.sub       a3, a4
                  srl         a4, t2, s11
                  auipc       zero, 5453
                  and         zero, a2, a1
                  divu        a2, s6, s5
                  xori        t0, s4, 373
                  c.add       a0, s3
                  c.addi4spn  a3, sp, 832
                  srai        a4, s0, 9
                  slti        a1, a2, 1645
                  c.slli      s0, 13
                  addi        a2, sp, 1211
                  xor         t4, tp, zero
                  xori        a5, a1, -1359
                  c.and       a3, a5
                  nop
                  sltiu       zero, t1, -951
                  nop
                  xori        zero, t6, -194
                  and         t2, t6, a5
                  xori        zero, s9, -72
                  ori         gp, a1, 113
                  xori        s9, a4, -1095
                  c.and       a3, a2
                  xor         s8, a6, a4
                  add         tp, ra, a7
                  c.add       s0, s9
                  c.nop
                  or          a3, t0, a5
                  c.mv        ra, s0
                  div         s4, s4, s0
                  srl         s1, a7, s4
                  c.and       a5, a3
                  c.sub       a3, a3
                  c.andi      a0, -1
                  srai        s3, t5, 3
                  c.srli      a3, 6
                  or          s2, s2, t3
                  srl         tp, t5, t3
                  mulh        s1, s1, t2
                  nop
                  c.srli      s0, 10
                  c.srai      a3, 16
                  c.mv        ra, tp
                  c.lui       a5, 28
                  c.add       s10, t6
                  c.addi4spn  a3, sp, 320
                  c.andi      a3, 14
                  sltu        s11, tp, gp
                  c.srai      a4, 18
                  sll         t3, s11, s9
                  slli        a6, a1, 21
                  mulhu       t0, s2, a1
                  nop
                  xor         s2, zero, t0
                  mulh        a2, s9, s4
                  c.nop
                  andi        ra, t6, 1286
                  srai        s0, t6, 15
                  c.add       gp, s1
                  mulhsu      t1, a2, s7
                  sra         a4, s9, s11
                  c.li        s3, 22
                  c.li        s11, 10
                  c.addi16sp  sp, -16
                  c.addi16sp  sp, -16
                  andi        a7, s9, 1961
                  c.xor       a5, a1
                  add         s3, s1, sp
                  mulhsu      a6, s0, a3
                  c.nop
                  c.srai      a3, 6
                  nop
                  or          s7, zero, gp
                  c.li        t2, 0
                  c.andi      a3, -1
                  lui         zero, 937226
                  andi        s10, s6, 143
                  c.addi4spn  s0, sp, 272
                  div         a3, a1, s4
                  divu        a3, a4, a4
                  c.add       a0, t4
                  c.sub       a3, a3
                  andi        s7, s5, -1827
                  or          t2, tp, t6
                  c.slli      ra, 20
                  andi        t3, t6, -961
                  andi        s10, s11, -712
                  sltu        s10, t0, t5
                  c.xor       a3, a3
                  c.addi4spn  a3, sp, 896
                  sub         s4, t6, t3
                  c.or        s0, a3
                  and         s1, s9, s2
                  sltu        s9, t1, gp
                  mul         a0, s1, s3
                  c.mv        ra, a4
                  c.slli      a6, 15
                  rem         zero, t6, zero
                  lui         s3, 89376
                  addi        a0, s11, -566
                  c.nop
                  c.srli      a2, 16
                  c.mv        a3, a6
                  andi        zero, t6, -391
                  c.and       a3, a1
                  and         s1, a2, t3
                  c.nop
                  sll         a4, zero, a5
                  sra         s0, t0, t3
                  c.and       a3, a3
                  c.slli      s1, 21
                  divu        s9, a2, a3
                  sra         a3, t1, a4
                  c.addi      t2, -1
                  srl         a5, s0, t2
                  rem         a4, s3, s7
                  auipc       zero, 474763
                  and         a1, s11, zero
                  c.srai      a3, 16
                  mulhsu      t4, zero, tp
                  mulhu       a7, s3, s9
                  sub         a4, s11, s6
                  sub         a6, s4, t0
                  c.add       ra, t0
                  c.lui       t3, 12
                  nop
                  slti        t0, sp, -1582
                  c.addi      s1, 27
                  srl         t2, ra, t2
                  c.andi      a3, -1
                  c.srli      a3, 30
                  c.or        a3, a1
                  ori         s6, gp, -1539
                  c.or        a3, a3
                  slti        a5, s9, -1090
                  add         a0, t3, a6
                  c.addi      sp, -1
                  mulhsu      t2, s0, ra
                  c.li        s7, 26
                  mulhu       s1, s2, s2
                  lui         s4, 382297
                  c.addi4spn  a3, sp, 688
                  c.slli      s8, 6
                  c.mv        a0, t2
                  sub         s10, t0, t6
                  addi        t4, t4, 1818
                  auipc       a5, 963026
                  xor         s10, t2, t4
                  andi        s8, zero, -134
                  c.andi      a3, 7
                  slli        ra, s0, 23
                  slti        a2, t2, -1832
                  c.andi      a3, -1
                  div         s2, t6, s11
                  add         tp, s9, zero
                  ori         s4, a6, 880
                  c.addi      sp, 21
                  slt         a2, t5, zero
                  c.or        a4, a3
                  c.add       s3, a7
                  c.addi      ra, 5
                  mulhsu      s9, a6, t3
                  c.addi16sp  sp, 48
                  ori         s7, s8, 1810
                  c.nop
                  c.xor       a4, a3
                  c.mv        a7, sp
                  mulhsu      a1, s3, s9
                  rem         s7, s3, s7
                  lui         tp, 185719
                  c.xor       a3, a3
                  slti        s0, s4, -1244
                  slti        t1, s5, 1765
                  c.lui       s2, 27
                  c.lui       ra, 17
                  slt         sp, s2, a3
                  or          a0, a5, a1
                  c.sub       a3, a0
                  xor         a1, s10, tp
                  c.srai      a3, 4
                  ori         t0, ra, -356
                  nop
                  divu        zero, a6, s11
                  and         tp, gp, s2
                  slt         s7, s5, t6
                  mul         t4, a2, t4
                  slli        s3, a3, 29
                  c.xor       a3, a0
                  or          ra, t3, s4
                  c.addi16sp  sp, 304
                  lui         tp, 877008
                  mulhsu      t3, s6, s5
                  sra         t3, tp, s7
                  mulhu       tp, zero, tp
                  auipc       s3, 901730
                  sra         sp, t5, a0
                  addi        s10, a0, 959
                  c.addi4spn  a3, sp, 384
                  c.xor       s0, a3
                  c.add       a0, s5
                  c.lui       s4, 6
                  ori         tp, t3, -1839
                  and         zero, tp, a4
                  divu        s6, s5, t2
                  xori        zero, a6, -1484
                  nop
                  xor         t0, a2, t4
                  nop
                  sra         s2, zero, s2
                  c.and       a3, a3
                  mul         a1, s6, t5
                  divu        zero, s11, zero
                  c.li        s9, 23
                  c.add       a3, ra
                  andi        a1, sp, 923
                  slti        zero, zero, -1506
                  sra         s0, ra, s9
                  mulhu       sp, a4, t3
                  mulhsu      ra, a1, s5
                  nop
                  c.nop
                  c.xor       s0, s1
                  c.or        a3, a3
                  c.sub       a3, a3
                  c.mv        t0, a7
                  c.lui       a3, 3
                  mulhsu      t1, s0, t6
                  mulhsu      t0, a4, s10
                  c.nop
                  lui         t4, 175063
                  sll         a2, t3, s7
                  add         s1, s11, s6
                  sltu        zero, t5, a3
                  c.addi4spn  a3, sp, 352
                  rem         gp, t6, a6
                  sltu        ra, s11, a4
                  c.and       a3, a5
                  mulhu       s8, t6, t2
                  sra         a1, s7, a4
                  c.xor       a3, a3
                  mulhu       a1, s9, tp
                  c.or        s0, a3
                  andi        t3, t3, 1466
                  div         a0, t0, t1
                  srai        s8, a4, 2
                  c.mv        t4, s11
                  sltiu       t1, gp, -951
                  c.and       a3, a3
                  xor         s4, s4, zero
                  slt         s11, t4, a1
                  auipc       s10, 597289
                  srai        t4, tp, 31
                  c.nop
                  xori        s2, sp, -1956
                  sltu        a7, gp, s6
                  c.addi      s8, 24
                  mulhsu      s0, s10, a0
                  sra         s9, a1, s6
                  ori         s4, gp, -1585
                  and         s6, s2, s8
                  c.nop
                  mulhsu      a1, s10, t4
                  div         s9, a2, a6
                  c.add       ra, t0
                  c.addi4spn  a2, sp, 896
                  c.nop
                  slt         a2, a5, sp
                  sra         zero, s2, a0
                  c.addi      s2, 23
                  c.andi      a3, 23
                  or          a6, s2, a2
                  srai        a0, s1, 8
                  lui         s3, 65653
                  sub         s2, t1, t5
                  c.addi16sp  sp, 80
                  rem         s0, a0, a0
                  nop
                  slli        s10, s9, 24
                  add         a6, s8, zero
                  lui         sp, 74887
                  c.addi4spn  a3, sp, 832
                  mulhsu      t0, t6, s0
                  nop
                  sltiu       t0, a5, 520
                  addi        s8, s10, -1329
                  mulhsu      t0, s5, s10
                  mul         a2, ra, a1
                  srai        zero, a3, 19
                  slti        s6, s1, 903
                  mulhu       gp, s11, gp
                  mulhsu      a4, tp, t5
                  add         s0, s10, s8
                  or          sp, a2, t0
                  sltu        s10, s4, t2
                  c.addi16sp  sp, 224
                  sltu        zero, s6, a3
                  c.lui       t1, 27
                  mul         s4, t4, a7
                  c.addi4spn  a4, sp, 96
                  sll         zero, a3, sp
                  sll         a3, s1, t3
                  c.nop
                  c.andi      a3, -1
                  addi        s4, s8, -393
                  mulhu       a2, s5, tp
                  sltiu       gp, s8, 437
                  c.xor       a3, a3
                  c.addi4spn  a3, sp, 640
                  mulhsu      s8, s9, t1
                  rem         sp, a3, t6
                  slli        s3, t4, 19
                  andi        t0, t4, 976
                  mulhsu      zero, s7, sp
                  slt         a4, s2, s5
                  mulhu       t1, s1, tp
                  div         s10, t4, s1
                  sltu        zero, a3, t5
                  slti        ra, a0, -965
                  c.xor       a3, a3
                  lui         a7, 156381
                  c.li        gp, -1
                  c.sub       a3, a3
                  c.addi      t0, -1
                  xori        t0, a4, -1673
                  xori        s9, s8, 1636
                  sub         a2, sp, s10
                  xor         gp, t2, s11
                  mul         a6, t1, s10
                  auipc       t0, 696583
                  slli        a3, sp, 5
                  srai        s10, zero, 31
                  auipc       s0, 500167
                  srai        s3, a3, 19
                  rem         zero, a3, s2
                  xor         gp, s1, zero
                  c.addi      s6, -1
                  xor         zero, a1, s5
                  c.or        a3, a3
                  c.addi      ra, 15
                  sltu        a5, s1, t6
                  lui         ra, 122570
                  c.sub       a3, a3
                  slt         t4, sp, gp
                  c.xor       a3, a3
                  andi        a5, t6, 871
                  srl         s6, s9, s8
                  mulhsu      s9, a4, s9
                  xor         zero, s2, t2
                  c.srli      a3, 16
                  sra         t1, ra, a2
                  rem         sp, s4, a2
                  sub         s11, s10, t4
                  add         s8, s5, gp
                  srli        s7, s9, 21
                  add         zero, s6, t5
                  lui         s3, 947640
                  nop
                  c.addi16sp  sp, -16
                  c.li        t4, 11
                  add         s7, a2, t5
                  c.xor       a3, a3
                  sll         t4, a1, s0
                  ori         a0, a2, -309
                  divu        s11, t4, t4
                  c.nop
                  rem         s1, a2, s5
                  srl         a6, s4, t1
                  c.li        t4, -1
                  c.slli      a6, 7
                  and         s8, s9, s3
                  c.mv        a7, s7
                  c.li        a1, -1
                  sltu        s4, a3, t1
                  slt         s9, t3, a4
                  c.lui       ra, 13
                  div         t0, a3, t6
                  sltu        t3, a0, s3
                  slti        a7, s0, 970
                  c.lui       ra, 6
                  addi        a7, zero, 1834
                  c.srli      a3, 24
                  c.addi16sp  sp, -16
                  c.andi      a1, 26
                  c.addi      ra, -1
                  c.lui       s0, 9
                  c.li        a6, -1
                  srl         a4, a1, a3
                  c.lui       s3, 11
                  c.addi16sp  sp, -16
                  div         s4, t6, t5
                  divu        sp, t6, a4
                  divu        s8, a1, s6
                  andi        a7, a4, -1932
                  ori         s10, t2, 283
                  c.srai      a3, 10
                  c.lui       s8, 22
                  c.lui       a2, 17
                  xor         a7, a1, s7
                  c.slli      a7, 20
                  c.or        a3, a3
                  mulh        t0, s4, a5
                  xor         ra, s2, a7
                  mul         s11, sp, t5
                  srl         s9, s11, s2
                  c.mv        ra, a6
                  sra         a4, a5, t6
                  sltu        a1, a7, s1
                  c.xor       s0, a3
                  c.addi      s7, -1
                  or          t4, t0, a6
                  sltu        s8, t2, s9
                  andi        a3, a4, -398
                  mulh        a0, s7, s4
                  xori        t2, t1, -1099
                  addi        t0, s0, 191
                  sub         s3, s11, gp
                  rem         s10, a2, a7
                  c.xor       a3, a2
                  sltiu       a5, a3, -1291
                  c.srai      a3, 25
                  divu        s11, t3, a7
                  c.andi      a3, 18
                  nop
                  c.or        a3, a0
                  andi        t2, s3, -2030
                  lui         a5, 20722
                  add         a7, s0, s3
                  rem         zero, zero, a7
                  mulhu       a7, s6, t3
                  mulhu       tp, zero, a4
                  mulhu       s9, a1, s7
                  or          t1, t4, a2
                  c.sub       a3, a3
                  lui         s3, 92796
                  srai        a4, a3, 15
                  c.addi      s9, 28
                  auipc       zero, 939623
                  srli        a3, s5, 5
                  sra         a4, t1, a5
                  c.srai      a1, 27
                  div         zero, s1, s3
                  xor         s8, a2, sp
                  divu        s10, t5, a0
                  mul         s2, s7, gp
                  sltu        t0, a6, zero
                  srai        s10, zero, 11
                  slti        t0, s2, 1024
                  mulh        sp, s4, s10
                  or          ra, s4, a4
                  sltiu       gp, a3, 1972
                  mulhu       t3, s1, s2
                  xori        zero, a4, -683
                  or          zero, s5, t3
                  c.xor       a3, a3
                  sra         s8, s7, a1
                  and         ra, a1, a6
                  c.srli      a1, 1
                  lui         a4, 439045
                  srai        zero, zero, 3
                  c.srai      a3, 28
                  nop
                  c.sub       a3, a3
                  mulh        zero, tp, a1
                  c.sub       a3, a3
                  or          s8, a3, s8
                  c.lui       s2, 18
                  c.srai      a3, 28
                  c.andi      a3, -1
                  mulh        a4, t0, s9
                  ori         sp, s10, 213
                  srai        zero, sp, 14
                  c.add       a7, s10
                  auipc       sp, 407638
                  addi        s3, a0, 237
                  slti        a6, t3, -1374
                  addi        a1, a1, 1568
                  mulhsu      s11, s2, a5
                  c.xor       a3, a3
                  xor         s0, a4, t4
                  ori         zero, t6, -2023
                  mulhu       a5, a3, a3
                  c.add       s2, a6
                  c.srai      a3, 20
                  c.xor       a3, a3
                  c.li        t3, -1
                  c.addi4spn  s0, sp, 640
                  c.addi16sp  sp, -16
                  mulh        s0, gp, a6
                  c.mv        s4, t1
                  lui         a2, 1036659
                  and         s1, s6, s4
                  sll         zero, a5, t0
                  c.addi16sp  sp, 400
                  sub         sp, s1, a1
                  c.addi16sp  sp, -16
                  xori        a7, a0, 298
                  div         zero, s3, a2
                  c.xor       a3, a3
                  sll         a2, tp, gp
                  divu        zero, s0, s7
                  c.xor       a3, a3
                  c.slli      t4, 15
                  rem         s6, t1, zero
                  c.srai      a3, 11
                  andi        s6, a1, -127
                  c.andi      a3, -1
                  c.slli      s11, 17
                  c.andi      a2, -1
                  c.or        a3, a3
                  and         s3, s6, a4
                  srl         t1, t4, s10
                  sltiu       a0, a5, -61
                  c.addi4spn  a3, sp, 576
                  mulhsu      s11, s10, s2
                  mulhsu      a7, s2, t0
                  c.add       t1, s6
                  sltu        s11, t0, s1
                  srli        a4, ra, 21
                  slli        s3, zero, 8
                  add         s2, s5, a1
                  c.addi16sp  sp, 208
                  c.mv        s11, a3
                  slt         s10, s1, s0
                  sll         t2, t2, a1
                  srli        a3, s10, 5
                  mulhsu      zero, a5, t5
                  srl         s2, s5, s10
                  srl         a7, gp, t6
                  c.addi16sp  sp, -16
                  ori         a4, t0, -27
                  div         gp, s5, gp
                  c.srai      a3, 27
                  div         zero, s3, zero
                  mulhsu      s4, t2, s10
                  slli        t4, zero, 8
                  slt         t1, s9, a2
                  sra         t4, a0, s6
                  sltu        s3, s11, gp
                  slti        t0, a1, -786
                  c.addi      s3, 10
                  xori        s1, gp, 1817
                  c.srai      s0, 18
                  or          s6, a0, s2
                  auipc       s10, 178038
                  xor         s1, sp, ra
                  add         s2, t2, a2
                  c.mv        t1, a0
                  andi        zero, s4, -1622
                  lui         a0, 283953
                  sll         a6, s2, a2
                  and         a1, tp, t6
                  ori         s1, a5, 244
                  c.srli      a3, 11
                  c.lui       a5, 5
                  or          t3, s11, t1
                  xor         s7, t3, a7
                  slt         a3, s3, a1
                  mulh        zero, a6, s7
                  c.lui       t2, 26
                  xor         t1, t5, a3
                  mulh        zero, s1, t6
                  sltu        tp, s4, a7
                  srli        zero, gp, 6
                  c.addi16sp  sp, -16
                  mulh        s9, t6, tp
                  mulhsu      zero, t6, gp
                  and         s2, s10, a3
                  addi        a3, s2, 1967
                  mulhu       t0, s10, s1
                  c.nop
                  mulh        a0, t0, s10
                  c.and       a2, a4
                  srli        a3, s8, 5
                  slti        zero, a7, 883
                  c.addi      ra, 25
                  ori         s6, a4, 1982
                  add         s8, s2, ra
                  srli        a4, tp, 1
                  c.li        s0, 6
                  mulhu       s3, a6, a0
                  c.or        a3, a3
                  auipc       t0, 808620
                  mulhsu      s0, t5, gp
                  mul         s1, a6, t6
                  srl         gp, a3, t5
                  div         zero, sp, a0
                  or          s0, t5, s3
                  c.mv        s6, a1
                  slt         zero, t3, t2
                  c.lui       a5, 4
                  divu        a5, s9, tp
                  andi        gp, gp, -1285
                  c.andi      a3, -1
                  c.andi      a0, -1
                  ori         zero, a7, 714
                  c.addi16sp  sp, -16
                  add         zero, a3, a5
                  c.addi      s3, 9
                  srai        s1, t1, 11
                  mulhu       a1, t0, s8
                  rem         zero, t5, s0
                  c.andi      a3, 11
                  mulh        zero, t3, s6
                  slt         a3, a3, t1
                  slt         s8, t0, s0
                  c.andi      a5, -1
                  sra         t3, a6, s0
                  xori        s8, s11, 1232
                  and         t1, tp, a3
                  c.andi      a3, -1
                  slli        a2, sp, 28
                  addi        a0, t4, 1129
                  and         s9, t4, s4
                  or          ra, zero, a6
                  div         a5, t6, zero
                  c.addi4spn  a5, sp, 576
                  sll         t1, s10, a3
                  rem         s6, s11, s0
                  xori        t2, a1, -1573
                  srl         t4, s0, s6
                  mulhsu      s6, t5, a1
                  c.or        a3, s1
                  c.li        a3, 21
                  c.or        a3, a3
                  c.and       a3, a4
                  c.nop
                  c.srli      a3, 22
                  srl         t4, s6, sp
                  and         a2, s5, s2
                  c.addi16sp  sp, 272
                  rem         s8, s9, s4
                  c.addi      a6, -1
                  slti        t2, s7, -1614
                  c.li        t2, -1
                  c.andi      a3, -1
                  rem         s9, a2, s11
                  slt         a7, s9, s9
                  or          a4, s6, s2
                  and         a6, t2, t2
                  add         zero, t6, t1
                  xori        zero, t6, 955
                  or          t1, a6, t1
                  c.lui       s3, 6
                  rem         s10, a6, t2
                  c.xor       a4, a1
                  c.sub       a3, a3
                  srl         a5, s11, s1
                  c.add       tp, ra
                  nop
                  c.sub       a3, s1
                  sltiu       s10, s5, -1815
                  rem         a5, a3, s1
                  lui         a7, 222127
                  c.lui       s0, 30
                  c.addi16sp  sp, -16
                  c.nop
                  c.addi16sp  sp, 480
                  c.slli      gp, 1
                  c.addi16sp  sp, -16
                  lui         t0, 234349
                  srai        s0, t1, 14
                  c.sub       a3, a3
                  div         a6, a0, a4
                  c.mv        a6, s11
                  divu        a6, a6, s11
                  xori        t4, a4, -759
                  c.and       a3, a3
                  rem         ra, s0, t6
                  sltiu       s2, s6, -1419
                  andi        a1, s1, 593
                  c.sub       a1, s1
                  c.lui       s11, 1
                  c.or        s1, a3
                  nop
                  srai        s4, a7, 31
                  addi        a0, a4, 718
                  and         s11, t2, a2
                  c.addi16sp  sp, -16
                  sll         s8, t2, gp
                  srl         a3, a2, a3
                  c.srai      a2, 23
                  c.add       t3, a2
                  sltiu       a0, ra, -388
                  c.or        a3, a3
                  divu        zero, t1, t4
                  slt         s8, sp, a4
                  div         a4, s0, s8
                  add         a5, s10, sp
                  xori        s7, t3, -304
                  c.nop
                  c.andi      a3, 8
                  auipc       a0, 93241
                  c.add       s2, a4
                  srl         a7, ra, s1
                  c.sub       a5, a3
                  c.lui       s1, 16
                  c.add       a5, s8
                  c.srli      a3, 26
                  or          a3, s0, a7
                  sltu        zero, s6, t2
                  ori         s11, a1, -1621
                  nop
                  c.xor       a3, a3
                  slt         a1, s9, sp
                  c.add       gp, s6
                  andi        s6, a7, 496
                  c.or        a3, a3
                  ori         t4, s4, 424
                  sltu        gp, t2, s0
                  lui         ra, 177090
                  c.slli      s9, 15
                  div         zero, ra, a2
                  c.lui       a2, 5
                  c.xor       a3, a3
                  ori         s6, t2, 2008
                  sltiu       zero, a3, 417
                  slli        t2, a0, 27
                  c.addi      s11, 6
                  c.and       a3, a3
                  mulhu       t3, s11, t4
                  c.sub       s0, a5
                  xori        s9, s4, 855
                  c.add       ra, gp
                  slti        zero, s0, -1499
                  mulhu       a5, a0, a7
                  c.addi4spn  a3, sp, 384
                  divu        a5, s3, sp
                  xor         t1, ra, s2
                  c.or        a3, a3
                  c.addi4spn  a3, sp, 400
                  nop
                  c.addi      s8, 11
                  li         t4, 0x0 #start riscv_int_numeric_corner_stream_22
                  li         t3, 0x0
                  li         s4, 0x1
                  li         tp, 0x1
                  li         t2, 0x2eae5646
                  li         s11, 0x1
                  li         s10, 0x1
                  li         t0, 0x1
                  li         s8, 0x1
                  li         a3, 0x0
                  rem         s8, a1, a5
                  c.addi4spn  a3, sp, 64
                  c.lui       a1, 23
                  c.mv        ra, t4
                  c.sub       a3, a3
                  divu        s4, s4, ra
                  add         zero, t4, s5
                  nop
                  sub         zero, t1, t3
                  c.li        t1, -1
                  auipc       s6, 215049
                  mul         zero, t6, tp
                  c.nop
                  c.sub       a3, a3
                  mulhu       gp, t3, sp
                  lui         tp, 177324
                  mulhsu      s10, s3, a4
                  c.addi16sp  sp, 368
                  div         gp, t1, t3 #end riscv_int_numeric_corner_stream_22
                  xori        t4, s9, 656
                  c.sub       a3, a3
                  slli        s6, t0, 22
                  ori         a0, t3, -1589
                  mulhsu      zero, s4, zero
                  c.srai      a3, 10
                  c.li        t2, 0
                  c.addi4spn  a3, sp, 384
                  andi        s9, s2, 1733
                  mulhu       ra, s2, a3
                  c.srli      a3, 5
                  xor         a1, gp, s10
                  sltiu       s10, a7, 1485
                  c.or        a3, a3
                  auipc       a3, 680227
                  sra         a1, t6, zero
                  c.addi      t2, -1
                  sltu        a0, t6, s11
                  auipc       t1, 895174
                  c.andi      a3, -1
                  mul         a6, s1, s3
                  c.srai      a3, 16
                  andi        zero, a0, 1789
                  ori         s8, zero, 525
                  slti        s8, s10, -1169
                  c.lui       gp, 29
                  c.add       s0, t4
                  srli        t1, s4, 31
                  c.addi      s9, -1
                  nop
                  slti        a0, a3, 1724
                  mulhu       a2, a7, t6
                  mulhsu      a6, a7, s0
                  c.andi      a3, 16
                  and         t0, s8, s8
                  divu        zero, sp, a1
                  sub         zero, a0, s2
                  ori         s8, s11, -201
                  ori         s11, s3, 489
                  sra         a5, s10, s5
                  or          s10, t4, s4
                  auipc       a1, 905558
                  mulh        a7, a1, zero
                  addi        s4, a2, -568
                  mulhsu      a4, tp, tp
                  c.srli      a1, 17
                  srai        zero, a4, 6
                  add         a2, s7, s4
                  c.lui       ra, 11
                  c.slli      t2, 17
                  rem         a6, s5, s5
                  divu        s2, a4, s5
                  c.li        ra, -1
                  xori        a7, s1, 839
                  xor         ra, s1, t5
                  c.li        ra, 5
                  add         s7, s9, a4
                  divu        s4, a5, a6
                  c.mv        a2, s8
                  xori        s9, a4, -514
                  c.sub       a3, a3
                  or          a3, t3, zero
                  c.srai      a3, 17
                  sub         t1, t5, s10
                  sra         s11, a3, s7
                  c.nop
                  ori         s10, s5, 228
                  rem         t3, s4, s0
                  sll         s7, s3, s7
                  div         s11, a4, sp
                  c.slli      a2, 17
                  mulhu       a6, s11, t2
                  nop
                  c.add       ra, s1
                  add         s7, s3, t0
                  lui         zero, 773026
                  auipc       a2, 931660
                  slti        t1, s1, 1558
                  xor         s10, zero, t1
                  xor         ra, t4, s0
                  andi        a0, t6, 50
                  sltu        t2, a5, gp
                  c.add       s1, ra
                  sltiu       a3, t3, 763
                  srl         s8, s2, a5
                  mulhu       a1, s0, a1
                  or          s3, t6, t4
                  addi        t3, sp, -1673
                  c.slli      a2, 26
                  c.slli      a4, 5
                  mul         t1, t1, a1
                  mulhu       ra, a3, a5
                  c.addi16sp  sp, 464
                  mul         t3, s7, tp
                  c.lui       ra, 21
                  auipc       s6, 898335
                  slli        ra, s4, 27
                  c.addi16sp  sp, 176
                  divu        s2, s0, t3
                  slli        zero, s6, 9
                  c.addi4spn  a3, sp, 320
                  mulhu       s6, t1, s11
                  c.lui       s7, 14
                  mulh        a2, sp, ra
                  sltiu       t3, a0, 1015
                  c.addi      tp, 20
                  srl         a5, s8, s3
                  or          a7, s2, s1
                  ori         s10, t2, -1628
                  add         gp, s9, s4
                  c.srai      a3, 14
                  auipc       t0, 603169
                  sub         s10, ra, t0
                  lui         sp, 619924
                  div         zero, a0, zero
                  slti        s4, a3, 1070
                  slt         zero, t4, a7
                  lui         t2, 147323
                  c.andi      a3, 1
                  slli        a2, s3, 26
                  auipc       zero, 910563
                  and         s11, a6, a4
                  c.add       tp, s6
                  xor         t4, s4, a6
                  c.add       s3, sp
                  sll         a7, s1, sp
                  c.and       a3, a5
                  sub         a6, s10, a1
                  divu        s9, a5, s5
                  sub         t1, s7, s0
                  and         t1, t3, s7
                  ori         zero, tp, 443
                  c.srai      s1, 27
                  c.addi4spn  a3, sp, 896
                  xori        gp, a2, -1708
                  srli        a6, tp, 25
                  sll         zero, t5, t0
                  sll         a6, a4, tp
                  sltiu       s2, zero, -996
                  sra         s1, s8, s10
                  ori         t4, s2, 1516
                  and         s9, a2, t4
                  c.srli      a3, 15
                  rem         ra, t6, s6
                  c.srai      a3, 4
                  c.li        t1, 5
                  sub         a0, s11, a5
                  slt         a6, s9, t0
                  mulh        gp, a3, a1
                  nop
                  c.or        a3, a3
                  and         s4, a3, s5
                  slt         s8, t1, a1
                  c.nop
                  c.or        a3, a3
                  divu        zero, zero, a3
                  srl         t2, s3, t4
                  andi        a6, s10, -1464
                  mulhsu      tp, tp, a4
                  mulhsu      tp, zero, a2
                  ori         ra, s5, -1717
                  slli        zero, ra, 19
                  c.and       a3, a3
                  nop
                  addi        gp, s2, -468
                  c.li        t2, 3
                  c.andi      a3, 28
                  sll         a1, s5, tp
                  rem         zero, t0, s8
                  andi        t0, t0, 181
                  c.li        s2, -1
                  sltiu       t1, s8, 1286
                  c.addi4spn  a5, sp, 192
                  addi        a0, a1, 599
                  andi        t3, a5, -1252
                  mulh        sp, t0, s3
                  c.addi      s9, 1
                  c.addi4spn  a3, sp, 352
                  c.slli      s2, 11
                  addi        gp, t6, 122
                  c.nop
                  slti        a3, s5, -1935
                  slti        s1, ra, -1469
                  mulhu       sp, a5, s4
                  c.lui       ra, 15
                  c.slli      t3, 1
                  c.mv        ra, a7
                  slti        t0, s7, -14
                  xori        t4, a7, -2011
                  rem         a7, s9, t4
                  xor         s0, a5, s10
                  c.srai      a3, 14
                  c.slli      t2, 22
                  div         s3, s11, ra
                  add         s0, t1, s6
                  div         a6, a4, tp
                  add         s2, s9, a3
                  add         ra, a4, t1
                  c.srai      a4, 7
                  c.xor       a4, a0
                  c.lui       a0, 16
                  c.mv        tp, t6
                  or          gp, t2, zero
                  ori         zero, t6, -1642
                  add         s9, s2, s11
                  xor         gp, a6, a0
                  slli        tp, s1, 2
                  mulh        s1, zero, s7
                  c.srai      a3, 17
                  c.addi      a4, 31
                  c.slli      s8, 21
                  mulh        s7, a6, a0
                  sltu        t0, s2, s5
                  sub         zero, a1, gp
                  lui         a7, 397435
                  c.mv        tp, a6
                  c.add       a2, a1
                  c.lui       a3, 22
                  mul         t1, a5, s4
                  srl         sp, ra, t2
                  mulhu       tp, t6, a2
                  slti        s3, a0, -842
                  mulh        sp, a6, a2
                  mulh        a3, a1, s4
                  mul         t0, t2, a5
                  mulh        s10, sp, s7
                  nop
                  c.nop
                  c.lui       a1, 6
                  slli        zero, t6, 3
                  srl         t0, t3, a7
                  mulhsu      sp, t2, s7
                  andi        gp, tp, 1267
                  c.and       a3, a0
                  mulhu       a1, a0, a1
                  mul         s7, s1, t1
                  srai        a3, s4, 27
                  and         s11, s2, s8
                  addi        zero, s3, 589
                  mulh        a7, s9, a0
                  c.addi4spn  a3, sp, 832
                  c.lui       ra, 19
                  srli        zero, ra, 13
                  slti        t1, tp, -648
                  c.addi4spn  a3, sp, 352
                  and         a5, t0, s3
                  andi        s0, t4, -232
                  addi        a7, s4, -1697
                  mulhu       s6, t6, t1
                  c.li        s8, 20
                  sll         zero, a7, s11
                  mulh        a4, gp, a4
                  srai        s3, a5, 1
                  auipc       s2, 809330
                  c.li        t1, 17
                  xor         s2, a1, a2
                  c.addi16sp  sp, -16
                  c.addi      ra, 9
                  c.or        a3, a3
                  divu        a1, s5, s0
                  slli        zero, a7, 3
                  sll         a4, a1, a6
                  mul         t2, s2, t5
                  c.nop
                  addi        zero, s9, 13
                  srl         a2, zero, s4
                  c.addi16sp  sp, 272
                  c.addi16sp  sp, -16
                  c.xor       a3, a3
                  c.addi16sp  sp, 208
                  addi        s3, t6, -1379
                  c.addi4spn  a3, sp, 544
                  c.addi16sp  sp, 144
                  xor         a1, a0, a4
                  xor         s10, sp, s10
                  c.srai      a3, 17
                  c.addi      a0, -1
                  c.srai      a3, 4
                  c.nop
                  addi        t0, s11, -1803
                  c.sub       a3, a3
                  c.lui       t2, 8
                  c.sub       a3, a3
                  c.srai      a3, 18
                  sltiu       t0, t6, -986
                  divu        tp, s4, s10
                  andi        a1, a0, -148
                  c.mv        ra, a2
                  nop
                  ori         zero, t0, -1715
                  slli        t0, a6, 16
                  c.andi      a1, -1
                  andi        s2, s3, -858
                  srli        t1, s4, 8
                  mul         a2, s1, a3
                  sub         s0, gp, s9
                  c.addi16sp  sp, 352
                  mulh        zero, ra, t4
                  c.slli      ra, 13
                  div         s6, s1, a0
                  addi        tp, a2, 1438
                  xor         t3, t0, s3
                  andi        s1, a2, 1503
                  divu        tp, s10, zero
                  c.slli      s11, 22
                  c.andi      a3, 9
                  c.andi      a3, -1
                  c.and       s0, a3
                  mulh        t1, s0, a0
                  c.xor       a3, a3
                  add         zero, s8, zero
                  mulhsu      zero, a1, s10
                  c.li        s11, 31
                  c.add       ra, gp
                  sub         a1, t1, s0
                  c.srli      a0, 6
                  c.sub       a3, a3
                  sltu        s8, s3, s6
                  slt         zero, a3, s6
                  ori         s2, a7, -285
                  c.addi4spn  a3, sp, 320
                  sub         t0, a1, a6
                  slti        zero, t0, -1396
                  srl         s4, a4, s1
                  and         t3, a4, t6
                  mul         a6, s8, sp
                  c.or        a3, a3
                  c.slli      a0, 11
                  rem         a5, zero, t5
                  or          zero, zero, s3
                  add         t0, a3, a7
                  c.add       a0, t1
                  c.addi16sp  sp, 256
                  divu        a0, a1, s0
                  mul         t4, a5, s1
                  sltiu       zero, a7, -398
                  c.lui       ra, 4
                  srai        tp, ra, 1
                  c.nop
                  div         s11, a3, t6
                  nop
                  mul         s6, a7, a4
                  sltu        s8, s6, t5
                  andi        sp, a3, 1742
                  rem         s2, t5, s2
                  srai        a3, s7, 9
                  srli        s6, s2, 10
                  sltu        zero, s3, a7
                  xori        a6, a5, -1871
                  srl         zero, s7, s2
                  srai        zero, a1, 0
                  div         a4, a2, ra
                  mulh        t1, zero, s9
                  sltu        a6, t3, s9
                  slt         s2, t0, t4
                  lui         t1, 704970
                  slti        zero, tp, -684
                  divu        s6, sp, s6
                  divu        s4, a6, t0
                  c.li        gp, -1
                  nop
                  auipc       a0, 362462
                  c.srai      a5, 7
                  mulhu       zero, ra, gp
                  xori        s2, s0, -1622
                  mulh        ra, s8, a3
                  slli        t0, s5, 16
                  and         s6, sp, t3
                  c.sub       a5, a3
                  c.xor       a3, a3
                  c.addi16sp  sp, -16
                  slli        s7, a4, 5
                  slt         t2, t6, t6
                  c.slli      ra, 15
                  sll         sp, t1, s3
                  rem         zero, t1, t3
                  divu        a3, a4, a5
                  slli        sp, s7, 22
                  or          t4, s5, s5
                  c.mv        a4, a1
                  addi        t1, ra, -1323
                  c.lui       a7, 29
                  c.addi      ra, -1
                  c.or        a0, a3
                  srl         a3, a3, a4
                  sltiu       s6, s1, 457
                  ori         zero, a7, 803
                  c.add       s1, s6
                  c.srai      s1, 15
                  lui         s4, 25060
                  slti        s4, s10, 410
                  mulhsu      t3, s10, s0
                  sra         tp, s8, a0
                  mulh        a0, t5, a1
                  c.andi      a3, -1
                  lui         s0, 1149
                  c.or        a3, s1
                  xori        s11, zero, -56
                  c.addi4spn  a3, sp, 128
                  c.sub       a3, a3
                  c.addi      t2, 10
                  srai        t3, t5, 7
                  c.srli      a3, 14
                  c.add       s9, t6
                  xor         s9, t5, a6
                  c.mv        ra, a2
                  c.addi      tp, -1
                  lui         a6, 152978
                  c.and       a3, a3
                  slli        t3, s0, 21
                  c.and       a3, a3
                  c.or        a3, a3
                  c.nop
                  mul         tp, t1, tp
                  and         s4, tp, t1
                  or          a1, sp, tp
                  c.sub       a3, a3
                  srli        zero, t1, 17
                  c.add       s10, a2
                  srli        zero, s1, 3
                  mulhsu      t2, tp, a6
                  slli        s6, t5, 4
                  or          zero, tp, a0
                  or          s1, s3, a7
                  c.nop
                  div         a1, t3, a1
                  sltu        t3, a5, ra
                  srli        zero, t5, 15
                  c.andi      a3, -1
                  c.nop
                  c.mv        s2, s4
                  c.mv        s8, s1
                  c.srai      a3, 19
                  c.srli      a0, 15
                  xor         s0, a0, t6
                  c.xor       a2, a3
                  nop
                  and         s1, s1, t4
                  c.slli      s8, 15
                  andi        tp, tp, -1629
                  divu        t2, s6, a4
                  slli        s9, s6, 8
                  sltu        ra, a5, zero
                  c.sub       a3, a3
                  sra         zero, a5, a4
                  sltiu       a6, a2, 671
                  div         s2, s7, zero
                  c.and       a3, a3
                  addi        s0, s6, -1109
                  slli        s10, s6, 0
                  andi        a7, gp, -372
                  c.addi4spn  a3, sp, 832
                  srl         tp, a4, t6
                  c.andi      a2, 4
                  or          s9, t4, s8
                  divu        zero, s8, s10
                  mulh        sp, sp, ra
                  nop
                  sltu        a2, s9, a6
                  andi        s6, s3, 1897
                  c.xor       a3, a1
                  c.li        tp, 12
                  c.addi4spn  a3, sp, 944
                  xor         t4, a5, s9
                  or          s0, gp, a5
                  c.and       a3, s0
                  c.addi      s10, -1
                  mul         s8, a6, s2
                  c.add       s1, a7
                  xor         a2, a0, a2
                  sra         s9, s9, sp
                  div         a2, t3, s3
                  sub         s10, s5, t0
                  c.addi      tp, 27
                  c.andi      a3, 27
                  c.and       a3, a3
                  c.addi4spn  a3, sp, 64
                  c.addi16sp  sp, 48
                  c.slli      a7, 30
                  auipc       a2, 108789
                  mulh        zero, t3, ra
                  slt         s4, s7, sp
                  slli        zero, t1, 2
                  c.add       t3, s4
                  add         a6, gp, t0
                  sltu        s10, ra, a4
                  c.andi      a3, -1
                  c.xor       a3, a3
                  c.srli      a4, 20
                  c.srli      a3, 28
                  c.and       a3, s1
                  c.addi4spn  s1, sp, 288
                  mulhu       s0, gp, a0
                  c.lui       a4, 10
                  c.or        a3, a2
                  rem         s10, a1, s7
                  mulhu       zero, tp, ra
                  c.slli      t2, 30
                  c.addi      t0, -1
                  c.or        a3, a3
                  sub         s2, a2, s11
                  c.srli      a3, 27
                  and         tp, s0, s7
                  mulhu       s0, a1, a3
                  c.addi16sp  sp, 192
                  c.sub       a1, a2
                  mul         s0, s3, a1
                  c.or        a3, a3
                  add         zero, gp, t6
                  c.or        a3, a3
                  c.and       a3, a3
                  add         t1, a4, a4
                  c.addi      ra, 9
                  c.srai      a3, 31
                  c.srli      s1, 2
                  c.nop
                  mulhsu      t3, a1, tp
                  c.slli      t3, 4
                  or          t0, tp, t2
                  or          a2, ra, s3
                  mulhu       s7, s5, ra
                  xor         a0, s3, s9
                  srai        gp, s4, 22
                  mul         s1, s11, s4
                  mulh        a5, t4, s4
                  xor         zero, t5, s1
                  c.nop
                  mulhu       s9, t4, t4
                  srli        zero, a1, 3
                  c.lui       t2, 13
                  andi        a5, a6, -1718
                  sra         s2, a6, s0
                  c.sub       a3, a3
                  auipc       s11, 98807
                  mulhu       s10, s4, t3
                  srli        zero, t1, 7
                  c.and       a3, a3
                  srai        t1, s8, 4
                  c.or        a3, a3
                  c.xor       a1, a0
                  sltu        s0, zero, t0
                  c.and       a3, s0
                  c.or        a3, a2
                  ori         zero, t6, 111
                  srli        zero, s0, 2
                  slti        a6, a1, 592
                  xor         s11, a4, zero
                  or          zero, a7, sp
                  ori         ra, s11, -639
                  slt         ra, s8, a0
                  mulhsu      s6, ra, a2
                  sltu        s2, sp, a3
                  nop
                  c.addi4spn  a3, sp, 64
                  srl         zero, ra, zero
                  c.and       a3, a3
                  slt         zero, gp, a3
                  mul         gp, s1, a6
                  div         a6, tp, t5
                  add         zero, t4, s0
                  xori        a3, s6, 32
                  c.mv        a5, a4
                  srl         s10, gp, a3
                  rem         t4, s10, s6
                  mul         zero, zero, t6
                  srli        t2, a7, 3
                  c.xor       a3, a0
                  srl         zero, ra, t3
                  mulhu       s8, t2, gp
                  lui         a1, 889081
                  mulh        s7, s2, s8
                  srl         s8, t2, a3
                  mul         s10, s2, gp
                  or          s10, s0, s3
                  add         zero, sp, a4
                  add         s9, s4, s8
                  div         t2, s8, a3
                  c.addi      a1, 4
                  c.or        a3, a3
                  slt         s6, s7, s7
                  c.sub       a3, a3
                  xor         t2, a7, t6
                  c.nop
                  and         tp, s10, t6
                  c.sub       a3, a3
                  srl         a4, s7, s11
                  srli        s7, s9, 22
                  c.addi      t0, -1
                  add         s1, s11, a7
                  c.sub       a3, a0
                  c.andi      a3, -1
                  slt         s2, a2, s11
                  c.sub       s0, a3
                  c.andi      a3, 31
                  c.addi16sp  sp, -16
                  mulh        t3, t0, s8
                  c.and       a3, a3
                  slti        a2, s9, -1322
                  c.srli      a3, 17
                  auipc       t1, 405410
                  xor         s6, gp, s0
                  c.addi4spn  a3, sp, 448
                  mulhu       zero, s11, s11
                  c.or        a3, a3
                  c.mv        s10, t6
                  add         t2, s11, gp
                  sub         zero, a6, t6
                  or          s7, t6, t0
                  c.sub       a3, a1
                  c.addi16sp  sp, 272
                  c.add       s10, t3
                  xor         s10, t0, s3
                  sltu        a0, t3, a2
                  div         a2, s9, s9
                  addi        sp, a2, 1911
                  c.andi      a0, -1
                  slti        zero, t3, 1310
                  mulhu       ra, s10, s3
                  mulhsu      a4, a4, s1
                  xori        a4, s8, -1949
                  c.and       a3, s1
                  xor         a3, s0, s10
                  srai        s4, a2, 20
                  c.li        ra, 22
                  or          a5, s7, t5
                  srai        zero, a6, 24
                  mul         s10, s9, a4
                  slti        zero, a7, -463
                  sltu        zero, a6, s10
                  c.andi      a3, -1
                  c.addi4spn  a3, sp, 128
                  c.andi      a3, 30
                  c.addi16sp  sp, 288
                  auipc       zero, 823621
                  sra         t4, s6, s11
                  c.andi      a3, 7
                  mulhsu      t4, a2, s6
                  and         s6, t1, s5
                  lui         zero, 561521
                  srli        t3, s6, 15
                  sltu        sp, zero, t6
                  nop
                  srli        s0, t0, 31
                  or          s9, a0, sp
                  sltu        zero, t5, ra
                  c.addi4spn  a3, sp, 896
                  srl         s3, s6, t5
                  c.addi4spn  a4, sp, 896
                  c.or        a3, a3
                  slli        s9, t2, 3
                  slt         t2, a6, s10
                  sub         t1, s5, tp
                  mulh        t1, s9, a3
                  mulhu       tp, s11, ra
                  slt         s2, ra, a7
                  c.addi4spn  a3, sp, 576
                  divu        t0, zero, a5
                  rem         a0, s11, t0
                  srli        s8, s10, 12
                  c.addi4spn  a3, sp, 864
                  sll         s8, s11, a1
                  mulh        s2, a6, s1
                  divu        a3, s9, a5
                  mul         a7, s2, s7
                  c.addi      s2, -1
                  c.srli      a3, 18
                  sltiu       s8, a2, -867
                  divu        sp, sp, a5
                  or          gp, sp, s1
                  sra         sp, t5, a7
                  c.srai      a3, 12
                  mulh        s1, a0, a7
                  c.add       a3, t3
                  div         t3, s5, t1
                  sra         s9, a1, a2
                  c.and       s0, a3
                  sltiu       s9, t1, -1609
                  slt         t1, a6, t4
                  div         s0, s1, s9
                  c.sub       a3, a3
                  nop
                  add         s2, s10, a0
                  divu        a5, s9, a4
                  c.slli      gp, 11
                  xori        t4, s0, -164
                  srl         a0, s7, a3
                  c.srli      a4, 7
                  c.addi16sp  sp, 352
                  c.li        s0, 9
                  xor         s6, s8, a2
                  lui         zero, 227788
                  c.sub       a3, a3
                  addi        sp, s4, 890
                  sltiu       sp, s1, -1540
                  c.li        s3, 27
                  sra         s9, t4, s1
                  div         ra, a4, a4
                  c.xor       a3, a3
                  c.lui       ra, 31
                  c.srli      a3, 28
                  ori         s11, s9, -1846
                  or          t2, s7, s2
                  divu        t0, t4, s4
                  ori         s4, t0, 522
                  c.nop
                  xor         a2, t5, t5
                  mulhsu      s1, zero, tp
                  nop
                  srli        zero, ra, 6
                  xori        t3, s8, -366
                  sll         a7, t6, a3
                  srai        a4, a3, 5
                  slt         s4, t4, t2
                  ori         s1, a1, 1687
                  srl         s2, s1, a2
                  c.addi16sp  sp, 192
                  c.addi      s7, -1
                  auipc       a3, 853555
                  c.srai      a3, 26
                  c.srai      a3, 10
                  ori         s9, a5, -345
                  srli        zero, s9, 22
                  sub         s10, s4, s2
                  srl         s0, sp, s1
                  c.lui       s8, 18
                  lui         a6, 952277
                  srli        t4, s9, 31
                  nop
                  c.srli      a3, 3
                  mulhu       s0, t0, gp
                  rem         a3, t6, s5
                  c.lui       t3, 6
                  c.addi4spn  a3, sp, 64
                  c.add       s0, ra
                  add         t2, a5, s0
                  c.addi4spn  a3, sp, 576
                  srai        s7, a2, 26
                  c.xor       a3, s0
                  or          s2, a1, a3
                  addi        zero, s0, 1299
                  c.li        ra, 24
                  lui         a6, 942744
                  mulhu       gp, t0, s8
                  mul         s1, tp, s11
                  xor         s2, zero, t6
                  sll         zero, gp, s7
                  c.lui       t3, 21
                  c.andi      a3, -1
                  c.addi4spn  a0, sp, 704
                  c.addi      s0, -1
                  mulh        t2, tp, s0
                  srai        sp, a7, 2
                  xor         s3, zero, t1
                  mulhsu      a6, s8, t2
                  divu        a3, t5, t0
                  c.addi4spn  a3, sp, 576
                  xor         s1, s7, sp
                  srl         a4, gp, a3
                  c.nop
                  addi        zero, s2, -978
                  c.addi16sp  sp, 208
                  slli        s11, s4, 12
                  or          sp, t6, a4
                  c.or        a3, s0
                  c.srai      a3, 16
                  srli        s4, t0, 11
                  c.add       s4, t5
                  sltu        s0, t3, gp
                  c.or        a3, a3
                  c.addi4spn  a3, sp, 96
                  c.addi4spn  a3, sp, 64
                  c.srli      a3, 30
                  c.slli      a2, 12
                  c.andi      a3, -1
                  c.or        a3, a3
                  rem         zero, s8, s11
                  add         a4, s5, sp
                  divu        ra, s0, a2
                  srl         zero, s9, a3
                  c.nop
                  c.add       a1, a0
                  c.mv        t3, t6
                  c.xor       a3, a3
                  or          a6, tp, s0
                  c.addi16sp  sp, -16
                  mul         t1, ra, t5
                  lui         s2, 78657
                  c.mv        s2, t3
                  c.or        a4, a2
                  c.srli      a0, 18
                  and         t4, ra, t5
                  mulhu       s7, sp, gp
                  c.andi      a3, -1
                  srai        gp, zero, 16
                  nop
                  c.addi4spn  a3, sp, 864
                  c.andi      a3, 23
                  c.srli      a3, 14
                  srai        a7, s6, 19
                  div         a0, s6, s8
                  srli        t3, tp, 3
                  nop
                  xor         zero, a4, s0
                  sub         a5, a4, s11
                  c.andi      a4, -1
                  and         s9, a2, a2
                  c.or        a3, a1
                  c.add       s8, a2
                  sltiu       a6, a0, -696
                  sub         zero, a2, s8
                  c.srai      a3, 21
                  divu        gp, s9, t0
                  slti        zero, a2, -1641
                  slt         s9, t3, t4
                  c.addi16sp  sp, -16
                  divu        zero, gp, a7
                  c.mv        s10, s9
                  c.srli      a3, 12
                  andi        sp, a3, 631
                  slti        s6, s0, -190
                  add         s4, s10, s5
                  sub         a3, s11, tp
                  div         s10, ra, t5
                  c.add       ra, s10
                  c.addi4spn  a3, sp, 320
                  divu        s6, a7, a7
                  slti        s6, s9, 1262
                  c.srli      a3, 14
                  and         ra, s5, t3
                  c.mv        s3, s8
                  add         s2, a3, s9
                  c.srai      a3, 21
                  rem         s4, a2, t3
                  div         s2, a5, ra
                  lui         s11, 90258
                  c.and       a3, s1
                  or          s11, tp, t1
                  rem         ra, t6, t1
                  sll         a7, tp, t1
                  sltu        s7, s3, t5
                  c.srai      a3, 5
                  xor         t0, t2, t3
                  c.mv        ra, t6
                  or          s10, s7, s7
                  sub         zero, s7, zero
                  slt         s4, a4, s6
                  rem         zero, t0, tp
                  c.srli      a3, 13
                  slt         a0, t4, s1
                  c.sub       a3, a3
                  add         s7, a1, t5
                  sltu        s2, a4, sp
                  ori         s6, a0, -593
                  c.srai      a3, 29
                  sub         gp, a1, gp
                  c.addi4spn  a3, sp, 704
                  divu        a1, s10, s0
                  c.li        s7, -1
                  c.and       s1, s0
                  xor         t1, a1, a1
                  c.srai      a0, 30
                  slti        zero, gp, 99
                  auipc       a1, 410155
                  slt         zero, s10, t5
                  c.andi      a3, 4
                  c.addi      t0, 16
                  auipc       zero, 128332
                  div         s10, s10, s5
                  c.srli      a3, 13
                  sltiu       a3, ra, -1444
                  nop
                  andi        ra, s10, -1977
                  sltu        a5, a4, t4
                  c.nop
                  sltu        zero, a0, s9
                  slti        s11, a6, 704
                  mulh        zero, t4, a1
                  c.andi      s1, 12
                  srl         s9, a2, t4
                  c.slli      a1, 7
                  ori         s1, sp, -1246
                  c.or        a3, a3
                  divu        a5, s4, t2
                  slti        zero, sp, 1544
                  addi        s10, a0, -1048
                  slti        s4, sp, -1250
                  c.srai      a3, 27
                  addi        zero, s0, 620
                  add         zero, sp, a2
                  sra         zero, s6, t1
                  div         s11, a4, t4
                  sub         s2, s1, s5
                  c.addi4spn  a3, sp, 752
                  c.nop
                  slti        s3, a4, -342
                  addi        s4, s3, -1227
                  sltu        s8, s1, ra
                  lui         a0, 476892
                  c.lui       a3, 3
                  c.add       t0, a2
                  slt         t4, ra, t0
                  c.srli      a3, 30
                  auipc       a4, 257807
                  mulh        t2, a2, t5
                  c.andi      a3, -1
                  c.addi      s11, -1
                  sub         t3, s0, s1
                  ori         gp, s5, 1398
                  rem         zero, zero, t3
                  slti        a6, a3, 937
                  andi        s9, tp, -1343
                  div         s0, t3, t0
                  mulh        a5, gp, a7
                  c.addi4spn  a3, sp, 128
                  c.srai      s1, 7
                  c.andi      a2, 31
                  srl         zero, s5, sp
                  add         gp, a3, a5
                  xor         t3, a1, gp
                  c.andi      a3, -1
                  and         s0, s7, t5
                  or          a7, t1, a2
                  c.li        s9, -1
                  c.or        a3, s1
                  sll         zero, s1, a3
                  c.and       a5, a1
                  andi        a7, tp, -2030
                  c.and       a3, a1
                  c.add       s3, s10
                  lui         a7, 300757
                  srl         a1, a2, s1
                  andi        zero, t3, 923
                  c.srli      a3, 13
                  mulhu       a5, tp, sp
                  c.nop
                  c.addi      s4, -1
                  sltiu       s10, a5, 34
                  and         zero, a4, a2
                  sll         zero, t5, s6
                  andi        a7, sp, -1476
                  c.or        a3, a3
                  xor         t3, s11, t6
                  nop
                  nop
                  sra         t0, a4, s9
                  mulhsu      s2, t5, a5
                  c.addi      s4, -1
                  c.nop
                  c.addi      tp, -1
                  mulhu       zero, gp, a7
                  srl         a3, t6, t0
                  divu        s3, a4, gp
                  sub         zero, t4, gp
                  c.or        a3, a3
                  mulhsu      gp, s9, s0
                  c.lui       s4, 15
                  c.srai      a3, 21
                  c.li        t3, -1
                  c.srai      a3, 23
                  mulhu       s7, t6, t6
                  slli        a7, t2, 24
                  sltu        s0, s3, a1
                  srai        t2, s4, 25
                  and         s11, s4, zero
                  rem         a4, a6, s3
                  c.andi      a3, 27
                  c.xor       a3, a3
                  c.addi      s9, 4
                  sra         sp, t1, s8
                  div         s2, a1, a5
                  c.addi      a6, 12
                  c.and       a3, s1
                  nop
                  slti        s9, a0, 723
                  c.nop
                  srl         a0, s9, zero
                  xori        s6, zero, 682
                  and         s0, t2, s8
                  c.add       t4, tp
                  slt         zero, s10, s2
                  c.nop
                  slt         s10, s5, sp
                  c.li        s8, 23
                  or          a0, a4, s10
                  rem         a6, s7, a3
                  sll         t3, a4, s7
                  slt         s11, s7, t6
                  sub         a7, s6, a5
                  sll         s3, ra, a7
                  add         s1, tp, a6
                  lui         zero, 660592
                  xori        t1, zero, 1707
                  auipc       sp, 161013
                  c.slli      a5, 23
                  add         t2, tp, s11
                  c.add       ra, s5
                  c.addi      a4, 3
                  auipc       t2, 744656
                  and         t1, t0, s7
                  c.or        a3, a3
                  add         s0, s11, gp
                  srai        a0, t4, 10
                  slti        s7, a2, 1965
                  c.add       a1, s0
                  and         t0, s6, s0
                  add         gp, a7, s3
                  c.sub       a3, a3
                  c.addi16sp  sp, 352
                  srai        gp, t4, 23
                  sltu        s6, sp, a4
                  c.nop
                  xori        a6, a1, 1137
                  nop
                  c.li        gp, -1
                  c.srai      a3, 23
                  andi        a0, gp, -1266
                  c.add       ra, t3
                  srl         zero, s10, s3
                  addi        a4, s2, -1440
                  mulhu       s6, s11, t4
                  xori        a4, s7, 1671
                  c.li        ra, -1
                  lui         a1, 541491
                  slt         t4, tp, t2
                  mulh        tp, t0, ra
                  srli        a0, zero, 28
                  c.slli      t0, 9
                  auipc       s10, 90274
                  and         gp, t5, a4
                  c.add       s7, s8
                  c.addi      a1, 28
                  xor         a6, a1, s9
                  nop
                  ori         a6, s2, 712
                  srai        zero, t5, 13
                  andi        s1, s0, -843
                  sll         s6, a4, s0
                  c.or        a3, a3
                  mul         tp, t3, s1
                  c.addi16sp  sp, 480
                  auipc       ra, 555421
                  c.mv        s1, a2
                  and         a6, t6, a0
                  add         sp, s9, s4
                  nop
                  sub         zero, s11, a1
                  li         t4, 0x179f431e #start riscv_int_numeric_corner_stream_15
                  li         t3, 0x5fa35532
                  li         s7, 0x0
                  li         s11, 0x0
                  li         s10, 0x0
                  li         s8, 0x1
                  li         s9, 0x0
                  li         tp, 0x0
                  li         gp, 0x1
                  li         a4, 0x0
                  c.addi      ra, 27
                  c.nop
                  mul         a7, s11, sp
                  addi        s2, a5, -418
                  lui         s1, 565909
                  c.sub       a3, a2
                  rem         a3, a5, t3
                  auipc       t4, 827702
                  nop
                  c.mv        a7, s11
                  c.add       s3, a3
                  c.addi16sp  sp, 320
                  sub         a3, t6, a5
                  c.li        a1, 30
                  mulh        zero, s6, s4
                  c.mv        gp, tp
                  mulhu       zero, ra, s7
                  c.mv        gp, t4
                  sub         t1, ra, s0
                  c.addi      s0, 18
                  rem         s11, s6, s5 #end riscv_int_numeric_corner_stream_15
                  c.lui       t0, 21
                  div         s6, s8, a5
                  sltu        t2, s6, a1
                  c.nop
                  c.srli      a3, 2
                  slt         a3, s9, t0
                  xori        a1, a7, -1906
                  addi        t2, s4, 352
                  c.xor       a3, a3
                  c.xor       a3, a3
                  addi        s7, t4, -2019
                  ori         sp, zero, -1482
                  c.slli      t0, 1
                  auipc       zero, 431033
                  ori         a0, s5, -974
                  c.mv        t0, ra
                  c.add       ra, s7
                  nop
                  c.andi      a3, 31
                  auipc       t3, 928847
                  c.mv        s7, t2
                  c.li        a2, -1
                  c.andi      a3, -1
                  xori        sp, t2, -94
                  srai        s6, s5, 0
                  sub         t3, a1, t1
                  slt         zero, sp, a3
                  c.xor       a3, a3
                  sltu        s2, s10, t2
                  srli        a6, t2, 2
                  c.addi4spn  a2, sp, 736
                  slt         t4, s2, a5
                  sltu        s2, s10, sp
                  sltu        s1, t6, s8
                  div         s4, s9, a4
                  div         ra, s5, tp
                  or          s0, gp, zero
                  mul         t1, s6, t5
                  c.addi16sp  sp, 192
                  c.srli      a3, 11
                  slti        gp, t6, -1086
                  sra         t0, t4, s10
                  nop
                  c.li        a3, -1
                  andi        a7, t2, 1056
                  mulhsu      t2, a4, s11
                  c.or        a3, a3
                  c.li        s4, -1
                  c.mv        s0, s1
                  c.li        a1, -1
                  c.mv        a2, t6
                  sub         ra, a6, s0
                  auipc       s0, 696785
                  nop
                  nop
                  sltu        s2, s6, s11
                  c.slli      a7, 27
                  slli        s7, s7, 31
                  c.andi      a3, -1
                  c.li        a4, -1
                  addi        t4, s0, -298
                  srai        t3, s10, 4
                  sra         s9, a4, a7
                  c.srai      a3, 22
                  c.li        t2, 10
                  sra         t4, s9, a6
                  c.xor       a3, a3
                  or          zero, s10, t2
                  c.add       s10, t5
                  sll         a4, zero, ra
                  c.addi      s7, -1
                  ori         s6, s11, 1136
                  slt         t1, s6, s11
                  sra         s11, s0, a6
                  auipc       a6, 27609
                  slti        t4, t0, 584
                  slt         s9, t0, a4
                  sra         a0, t3, a5
                  c.li        s10, 9
                  mul         s3, a4, s3
                  c.mv        sp, s0
                  sra         zero, s6, s8
                  c.add       s7, a0
                  sub         s1, sp, zero
                  ori         s4, a2, -1102
                  ori         sp, s8, -1422
                  c.or        a5, a3
                  divu        s9, a7, s2
                  sub         zero, s4, a5
                  addi        a2, t3, -888
                  c.addi      s11, -1
                  mulh        s7, gp, s4
                  mulhu       s8, zero, s2
                  auipc       s10, 613538
                  add         a1, t5, s1
                  c.nop
                  sltu        ra, sp, t3
                  and         zero, t5, a4
                  sll         s9, gp, a4
                  rem         t4, s9, a0
                  c.li        t4, 16
                  nop
                  c.lui       a0, 8
                  c.addi      a6, -1
                  sub         s0, s11, a4
                  slli        a7, t1, 30
                  c.li        a1, 13
                  sll         zero, a0, t5
                  andi        gp, s0, -1305
                  sra         s4, s6, a7
                  c.nop
                  c.addi16sp  sp, -16
                  xori        tp, a6, -1275
                  xor         zero, a0, t2
                  add         a2, s10, t3
                  xor         t3, s10, a4
                  srli        a0, s9, 16
                  c.addi      s10, 16
                  mulh        a4, s0, ra
                  divu        t1, s7, s3
                  c.add       t1, a5
                  div         zero, t0, ra
                  sra         s0, s8, s7
                  c.nop
                  c.andi      a3, 11
                  c.add       s1, a3
                  lui         t1, 1004011
                  c.addi4spn  a5, sp, 864
                  divu        s8, tp, t2
                  srai        s7, t5, 28
                  c.or        a3, a3
                  mulh        sp, s7, s4
                  lui         sp, 306841
                  c.add       t4, t2
                  mulhu       t0, a4, s4
                  c.addi4spn  a1, sp, 96
                  mulhsu      zero, t0, s7
                  div         s2, a5, t3
                  slti        a3, s8, -345
                  c.addi4spn  a3, sp, 896
                  xori        zero, s3, -749
                  slti        ra, a1, 624
                  srl         a1, t3, s2
                  c.sub       a3, a3
                  c.or        a3, a3
                  slli        s6, a7, 10
                  c.xor       a3, a3
                  c.srli      a3, 9
                  mulhsu      s3, s7, a4
                  mulh        zero, sp, s6
                  xori        s0, s3, -1498
                  lui         sp, 5567
                  slti        tp, s3, 1669
                  add         t4, s8, a5
                  andi        s2, s6, -1625
                  c.andi      a3, -1
                  mulh        a1, t6, a5
                  andi        zero, s7, -959
                  div         a5, t4, gp
                  slt         t2, t6, t2
                  slt         tp, ra, gp
                  sltu        t1, t6, s9
                  rem         t2, s9, gp
                  c.xor       a3, a3
                  c.lui       gp, 4
                  xori        t3, a5, 1237
                  c.mv        s2, s2
                  sra         s0, s5, s3
                  sltu        s10, zero, s10
                  ori         t0, t1, 397
                  rem         a0, a2, t4
                  mulh        s6, s2, a6
                  addi        ra, s5, 476
                  c.andi      a3, -1
                  and         s3, tp, s3
                  and         s4, t4, a6
                  add         s4, t3, a7
                  mul         s11, s3, t3
                  mulh        sp, a5, t5
                  c.addi      t1, 29
                  c.addi      a6, 2
                  c.mv        ra, a2
                  sll         s8, t4, a2
                  c.addi4spn  a1, sp, 64
                  c.xor       a3, s0
                  xori        t0, t1, -1929
                  c.and       a3, a5
                  c.li        s3, -1
                  srl         s1, ra, s7
                  c.andi      a3, -1
                  slti        s7, s8, 380
                  c.addi4spn  s0, sp, 896
                  c.andi      a1, 5
                  c.addi      ra, -1
                  mulhu       t2, t2, t2
                  c.andi      a4, -1
                  auipc       s8, 451749
                  c.sub       a3, a3
                  c.or        a5, a3
                  andi        a5, t2, 55
                  c.nop
                  c.xor       a3, a3
                  lui         a3, 292692
                  sub         s6, a7, a2
                  divu        gp, ra, s2
                  c.slli      tp, 15
                  c.or        a0, a3
                  c.li        a4, -1
                  rem         zero, t2, gp
                  sltiu       t1, tp, 648
                  slli        tp, zero, 0
                  c.addi16sp  sp, -16
                  mulhsu      t4, s3, a2
                  c.and       a2, a3
                  c.li        a2, 18
                  slt         t1, t1, s6
                  rem         t2, sp, t4
                  c.lui       ra, 29
                  c.addi      t1, 4
                  divu        s7, a1, t2
                  nop
                  slli        a2, s4, 16
                  c.and       a3, a5
                  mulhsu      gp, zero, s9
                  sra         a3, gp, s1
                  srai        s1, a2, 1
                  c.addi      a5, -1
                  xori        a2, t1, -1030
                  mulhu       s8, s6, s3
                  add         zero, s8, s10
                  sll         zero, zero, s4
                  c.slli      s2, 11
                  andi        a0, a7, 974
                  slt         gp, a3, a4
                  lui         s7, 996664
                  sll         s3, s10, s7
                  slt         t4, a7, a1
                  div         s9, a0, s1
                  nop
                  lui         t1, 548055
                  addi        a3, t5, -933
                  c.slli      a6, 7
                  nop
                  c.sub       a3, a3
                  mulhu       t2, t3, zero
                  c.and       a3, a3
                  sltiu       zero, t1, -1761
                  srai        zero, t2, 5
                  mulh        a3, zero, t2
                  c.lui       s11, 21
                  rem         s4, s11, s11
                  c.andi      a3, -1
                  divu        a7, s9, a0
                  sll         t2, sp, s10
                  addi        zero, ra, 707
                  lui         t2, 839578
                  xor         t3, s4, s0
                  mulhu       a6, s4, gp
                  xor         a4, sp, a0
                  divu        sp, t0, a6
                  addi        a0, t0, -1169
                  xori        s1, a2, 114
                  mulh        t1, s3, tp
                  nop
                  c.li        s3, 28
                  c.srai      a3, 12
                  c.sub       a0, a3
                  slli        zero, gp, 6
                  auipc       a1, 589967
                  sltiu       s2, a7, 849
                  auipc       ra, 643710
                  srli        t3, gp, 12
                  c.nop
                  c.sub       a3, a3
                  sra         s1, s9, a0
                  c.mv        s2, a4
                  c.and       a3, a3
                  andi        s3, s1, 1156
                  andi        zero, a1, -257
                  c.sub       a3, a3
                  divu        tp, s11, a5
                  rem         s4, zero, s11
                  c.sub       a3, a4
                  rem         s10, a1, a2
                  c.xor       a3, a3
                  c.and       a3, s1
                  c.xor       a3, a3
                  and         s7, s6, zero
                  sltiu       s3, t3, 957
                  sll         s6, ra, s0
                  xori        t3, s1, -1456
                  c.and       a3, s0
                  c.xor       a3, a3
                  xori        a2, t5, 654
                  c.srai      a3, 18
                  c.lui       gp, 1
                  sltiu       a0, s4, -1230
                  c.and       a3, a3
                  mul         t4, t3, s7
                  c.li        sp, 0
                  mul         a3, s0, a6
                  xori        a0, s8, 353
                  ori         a6, t1, 1068
                  c.nop
                  c.add       s3, t3
                  c.addi16sp  sp, 96
                  sra         t4, s8, zero
                  addi        sp, gp, -439
                  c.sub       a3, a3
                  ori         a0, t3, 1950
                  auipc       s6, 694764
                  xor         s11, s7, a1
                  rem         tp, zero, s6
                  c.andi      a3, -1
                  div         a4, t3, s11
                  c.srli      a3, 16
                  c.xor       a3, a3
                  nop
                  nop
                  c.sub       a2, a3
                  sub         ra, a1, s10
                  c.addi16sp  sp, 64
                  c.srli      a3, 14
                  c.srli      a3, 13
                  mulhu       a5, a5, a7
                  c.add       a5, t6
                  nop
                  sltiu       zero, s1, -143
                  sltu        tp, s3, s7
                  c.srli      a3, 26
                  c.slli      tp, 16
                  srai        s0, tp, 3
                  sltiu       t1, s4, 778
                  xori        t1, s7, -1133
                  c.nop
                  srl         a5, t2, s10
                  sltu        a1, t1, s3
                  c.and       s1, a3
                  mulhu       a3, s7, t5
                  c.slli      a0, 1
                  c.add       s0, t4
                  add         tp, t6, s2
                  c.li        a4, 10
                  mul         s7, a6, s7
                  c.and       a2, a4
                  srai        zero, a2, 26
                  divu        s2, t3, t1
                  andi        a6, t2, 256
                  c.add       t4, sp
                  c.and       a3, a3
                  c.slli      s0, 29
                  c.or        a2, a3
                  c.sub       a3, a3
                  c.and       s1, a4
                  c.slli      ra, 3
                  c.or        a3, a3
                  divu        zero, t0, t2
                  c.or        a3, s0
                  c.addi      a7, 15
                  c.addi16sp  sp, -16
                  srai        tp, s1, 8
                  c.nop
                  auipc       s7, 428285
                  c.nop
                  sll         a0, t2, s5
                  c.addi16sp  sp, 464
                  div         s9, sp, t5
                  lui         s0, 817019
                  c.add       a1, t2
                  ori         zero, tp, 431
                  srl         a5, s9, gp
                  srli        s9, a1, 28
                  c.addi4spn  a5, sp, 320
                  mulh        zero, s4, s6
                  mulh        gp, zero, s8
                  c.add       a7, a0
                  and         ra, s2, zero
                  c.sub       a3, a2
                  c.nop
                  sltiu       t3, s11, -1164
                  ori         s2, t1, -1798
                  c.nop
                  c.andi      a3, -1
                  mulh        a1, a4, a3
                  sltiu       a7, a7, 2029
                  mul         s7, ra, zero
                  srli        a7, t0, 9
                  addi        t1, s8, -1453
                  srl         zero, s3, a5
                  addi        s11, t4, -927
                  add         zero, a2, s6
                  lui         ra, 513308
                  divu        zero, a7, s2
                  sltu        s4, s7, a3
                  slti        a1, a3, 1601
                  auipc       s7, 574255
                  mulhu       zero, s2, t0
                  xori        a3, zero, -1178
                  rem         a0, a3, zero
                  srl         zero, sp, s10
                  c.srli      a3, 16
                  srai        zero, s9, 3
                  mul         zero, s4, s9
                  sub         zero, t3, t3
                  sll         s4, tp, s6
                  c.or        a3, a3
                  c.li        a2, 31
                  xor         s7, a6, sp
                  sltu        s0, s6, a2
                  lui         a2, 719609
                  xor         t4, a4, a2
                  xor         s0, s10, s2
                  mulhsu      s6, a1, a5
                  sub         gp, a7, t1
                  sltiu       a1, a5, 1043
                  c.slli      a6, 7
                  rem         a2, a1, a3
                  c.addi      s10, 10
                  slt         tp, s4, ra
                  addi        a2, s11, 69
                  c.sub       a4, a3
                  c.srli      a3, 8
                  srl         s4, t4, s0
                  mul         s10, a5, s2
                  or          zero, s2, t5
                  mulhsu      a1, t3, a4
                  srai        a3, s8, 17
                  c.or        a3, a3
                  c.xor       a3, a3
                  lui         t3, 75059
                  ori         zero, a5, -1240
                  slt         a0, a6, a3
                  slti        s1, t4, 633
                  divu        a5, gp, sp
                  mul         s6, s5, t4
                  c.slli      ra, 24
                  c.srli      s1, 17
                  c.and       a3, a3
                  sltiu       s3, t0, -755
                  c.srai      a3, 12
                  nop
                  c.sub       a3, a3
                  mulhu       sp, t1, t0
                  or          s0, s3, s11
                  c.addi4spn  a1, sp, 832
                  slt         tp, a7, t5
                  nop
                  lui         a5, 156250
                  mul         zero, s7, s8
                  mulh        s11, gp, a0
                  c.slli      a5, 7
                  div         s9, s3, ra
                  slti        s11, t4, -842
                  slli        zero, zero, 31
                  and         a6, a3, a0
                  mulh        a1, a7, s7
                  sll         sp, ra, t3
                  c.slli      t2, 2
                  srli        sp, t6, 12
                  slt         s11, a0, a0
                  slti        a0, s11, -1590
                  c.addi4spn  a3, sp, 64
                  c.addi4spn  a3, sp, 736
                  c.sub       a3, a3
                  lui         s9, 572991
                  slli        a2, a4, 7
                  xori        a0, t6, 1219
                  c.sub       a3, a3
                  addi        s3, s8, 1572
                  xori        sp, t0, -657
                  c.srai      a4, 18
                  lui         s11, 868168
                  srai        t0, t6, 31
                  divu        t2, s3, sp
                  sltiu       t0, t6, -1834
                  mulhu       s1, s2, t0
                  srl         s0, a5, s2
                  c.andi      a0, 2
                  c.addi16sp  sp, 288
                  srl         s9, sp, s11
                  c.or        a5, a3
                  c.and       a3, s1
                  c.sub       a3, a3
                  rem         s3, t6, s8
                  c.sub       a3, a5
                  sll         a4, ra, a7
                  addi        a3, t3, -1079
                  c.add       s7, s0
                  c.sub       a3, a3
                  addi        s0, s10, -1691
                  c.and       a3, a2
                  c.addi      t1, 6
                  xor         zero, t1, s2
                  xor         s7, s10, sp
                  c.addi16sp  sp, 80
                  divu        zero, ra, s9
                  auipc       a6, 109764
                  slli        a6, zero, 5
                  or          a6, t3, tp
                  slt         t3, zero, zero
                  c.and       a3, a3
                  add         t0, s8, t5
                  c.nop
                  mulh        zero, t0, t5
                  c.addi16sp  sp, 224
                  srli        zero, s9, 3
                  srai        zero, t3, 19
                  srai        s7, a0, 30
                  and         ra, s4, ra
                  slti        t4, s9, -1910
                  sra         zero, t1, s10
                  add         zero, t0, t4
                  c.xor       s1, a1
                  sltu        s11, a2, a4
                  c.addi4spn  a3, sp, 96
                  c.and       a3, a4
                  c.xor       a3, a3
                  auipc       a2, 484793
                  c.sub       a3, a3
                  add         a2, s2, a4
                  c.sub       a1, a3
                  c.nop
                  nop
                  c.mv        a6, t5
                  sll         zero, tp, s0
                  slli        s1, a3, 3
                  c.li        a7, -1
                  c.andi      a3, 13
                  c.srai      a3, 29
                  c.addi16sp  sp, 384
                  c.nop
                  c.srli      a3, 31
                  c.mv        t1, t0
                  ori         s11, sp, -142
                  sra         s1, a4, t3
                  andi        t1, s11, 509
                  srl         a4, a0, s0
                  mulhsu      zero, ra, t2
                  slti        a6, sp, 1903
                  mulhu       s0, s8, s8
                  mulhu       s9, s1, t2
                  c.and       a0, a3
                  sub         ra, a6, s11
                  slli        zero, s10, 4
                  srli        s3, s8, 23
                  or          gp, s7, a7
                  c.or        a3, a3
                  sltiu       a0, t3, -845
                  divu        a4, zero, t2
                  auipc       zero, 344885
                  slt         a2, s3, t1
                  c.lui       s7, 9
                  or          s0, zero, a7
                  mulhu       t4, s6, a4
                  sra         ra, a7, t3
                  andi        gp, s5, 1323
                  sll         s11, t2, a1
                  c.slli      ra, 6
                  c.slli      s0, 13
                  sltiu       t2, s11, 1716
                  c.sub       s1, a3
                  c.nop
                  srl         a3, ra, s6
                  c.or        a1, a3
                  mulh        zero, gp, a2
                  rem         s6, a0, s6
                  xori        a5, gp, -1314
                  slli        zero, s4, 28
                  c.srli      a3, 30
                  xor         s6, a5, s6
                  lui         a1, 146982
                  xori        t1, t0, -1574
                  c.sub       a3, a3
                  ori         s7, s10, 547
                  c.nop
                  srl         s7, s9, t5
                  c.andi      a3, -1
                  xor         s0, zero, a6
                  slli        s9, s2, 1
                  c.and       a3, a3
                  addi        a0, ra, 1352
                  slli        t4, gp, 11
                  c.addi4spn  a3, sp, 608
                  c.addi      gp, -1
                  mulhu       a7, a2, a1
                  add         ra, a6, tp
                  c.sub       a3, a1
                  addi        s10, t6, 1797
                  c.nop
                  auipc       gp, 148330
                  c.slli      a7, 2
                  mulhu       a5, a5, a3
                  slli        a2, gp, 17
                  xor         s10, t6, t2
                  sltu        t1, ra, s3
                  andi        tp, s2, 1431
                  c.mv        s6, ra
                  c.or        a3, a3
                  mulhu       t0, s1, s4
                  c.srli      a3, 18
                  divu        a3, t1, sp
                  sltiu       s6, t2, -438
                  addi        s8, a0, -252
                  c.addi16sp  sp, -16
                  slti        a3, t5, -260
                  mul         t1, s7, s11
                  andi        sp, t4, 1177
                  sltu        sp, t0, a4
                  mul         s10, s6, t6
                  divu        t4, s9, s4
                  div         ra, a7, zero
                  c.and       a3, a3
                  c.addi      sp, 29
                  c.addi16sp  sp, -16
                  sub         t1, s2, a6
                  add         t2, sp, a3
                  c.or        a3, a4
                  c.xor       a3, a4
                  c.add       ra, tp
                  lui         s0, 627261
                  add         s6, t2, a5
                  c.andi      a3, -1
                  mulhsu      s2, a5, a4
                  c.xor       a3, a3
                  c.addi      s8, -1
                  sll         zero, tp, a5
                  xor         zero, a3, tp
                  add         s1, s0, t0
                  c.xor       a3, a3
                  add         a0, gp, a4
                  c.and       a3, a3
                  sltiu       zero, t4, 1860
                  slti        t0, t0, -1667
                  xori        a7, s4, 11
                  xori        s3, gp, -1052
                  c.nop
                  nop
                  addi        s3, tp, 488
                  c.addi      t1, 6
                  slli        s8, s5, 23
                  sll         t3, ra, t4
                  c.andi      a3, -1
                  addi        t1, s4, -1905
                  xori        tp, t4, -1618
                  mul         t2, s3, s0
                  c.srli      a3, 19
                  c.addi4spn  a3, sp, 864
                  c.addi16sp  sp, 48
                  sltu        s1, gp, t3
                  c.srli      a3, 25
                  andi        s4, a3, -1227
                  c.addi4spn  a3, sp, 384
                  c.li        a1, -1
                  xor         zero, s2, ra
                  rem         s7, ra, s11
                  srl         sp, t5, s10
                  srai        t2, s5, 17
                  mulh        ra, t5, a5
                  mulh        sp, a3, s8
                  mulh        a5, s5, a0
                  c.srai      a3, 2
                  c.xor       a3, a3
                  c.srai      a3, 16
                  c.andi      a3, -1
                  c.slli      tp, 19
                  c.addi16sp  sp, 16
                  c.lui       ra, 7
                  c.xor       a3, a5
                  sltiu       t2, t5, -1811
                  or          zero, t6, s6
                  c.sub       a3, a3
                  mulhu       s0, t5, tp
                  ori         a5, t2, -78
                  lui         s9, 393109
                  c.and       a3, a3
                  c.add       gp, s10
                  xor         zero, t1, a2
                  nop
                  c.nop
                  sltiu       s7, s6, 104
                  mul         s4, s5, a0
                  sub         t4, zero, s11
                  c.slli      s4, 29
                  auipc       a5, 829145
                  c.xor       a3, a3
                  and         zero, zero, a7
                  or          zero, s1, s1
                  c.addi16sp  sp, -16
                  slti        a1, s0, 1293
                  addi        s2, s4, 2040
                  andi        a7, s9, -780
                  c.and       a3, a3
                  sltu        s10, s1, t2
                  add         t1, s4, s1
                  and         t4, gp, a3
                  srli        t4, s9, 31
                  c.srai      a3, 2
                  add         a6, gp, zero
                  or          s8, s0, s7
                  or          zero, s6, a2
                  c.or        a3, a3
                  c.sub       a3, a0
                  c.xor       a3, a3
                  c.addi16sp  sp, -16
                  slli        zero, t5, 26
                  mulh        s4, a0, s3
                  xor         ra, a6, s0
                  xor         s6, a7, s10
                  srli        s9, a7, 9
                  slt         a3, a6, s10
                  sltu        s8, a2, s8
                  sll         ra, gp, t2
                  xor         s7, ra, sp
                  slti        s7, s0, 1835
                  c.li        t3, 21
                  slli        t4, s2, 22
                  sltu        gp, t4, tp
                  slli        a7, s8, 17
                  c.xor       a3, a3
                  auipc       s11, 509036
                  c.mv        t1, t1
                  c.addi4spn  a3, sp, 896
                  c.sub       a4, a3
                  c.andi      a3, -1
                  c.xor       a3, a1
                  or          zero, a1, a5
                  divu        zero, sp, a6
                  c.slli      s2, 9
                  sra         s11, t6, t4
                  div         a6, t4, a4
                  c.srai      a0, 18
                  slt         zero, a1, zero
                  c.mv        ra, t0
                  sub         a0, s11, s9
                  add         t1, gp, s10
                  sra         sp, s0, t0
                  srai        zero, gp, 28
                  mulhsu      a4, s2, a3
                  xor         a0, a6, a5
                  divu        a2, a1, t2
                  add         sp, s7, t6
                  c.li        t1, 10
                  srli        zero, a5, 10
                  mulhsu      a0, s7, tp
                  and         a6, sp, s4
                  divu        sp, s2, a7
                  mulhu       a0, t6, t4
                  c.andi      a0, 23
                  c.xor       a3, s1
                  xor         s0, a4, t3
                  mulhu       t1, s8, s2
                  ori         a2, s4, 1253
                  sltiu       s6, t0, 1846
                  add         zero, s1, sp
                  sltiu       a1, s7, -273
                  c.srli      a3, 27
                  mulh        sp, t1, t4
                  slt         a0, s9, s3
                  divu        s8, t6, t1
                  c.srli      a3, 30
                  slt         s9, s6, t1
                  c.sub       a3, a2
                  andi        s3, s4, -1051
                  srl         t2, s10, t2
                  div         a0, s7, a1
                  c.mv        a3, t0
                  mul         t1, s9, s8
                  addi        s9, a3, -634
                  sra         a6, a5, a4
                  c.add       t1, t1
                  mul         gp, s9, tp
                  srl         s0, t3, s5
                  c.li        s9, 9
                  addi        t0, t5, 1679
                  andi        s0, ra, 844
                  mulhsu      zero, t2, s11
                  and         s7, s1, a7
                  c.nop
                  mulhsu      t0, a7, s11
                  addi        s11, s2, -594
                  rem         sp, gp, s2
                  c.nop
                  xori        a6, t3, -194
                  c.addi4spn  a3, sp, 576
                  mul         s11, s5, gp
                  or          s0, s4, s3
                  sltu        a4, gp, a2
                  srl         a6, t1, s11
                  c.srai      a3, 9
                  sra         zero, a0, s1
                  srli        s6, a3, 0
                  c.sub       a3, a3
                  srli        gp, s4, 3
                  ori         a4, t4, 949
                  divu        s8, s8, zero
                  div         s4, tp, t4
                  mulh        t4, zero, s9
                  c.sub       a3, a3
                  auipc       t3, 870033
                  sra         s6, s9, a0
                  or          t4, sp, s7
                  mulhu       zero, zero, s2
                  c.add       ra, s7
                  slti        a7, t5, 645
                  and         s7, a6, a1
                  srli        t4, s2, 14
                  or          a4, a7, s8
                  c.addi4spn  a3, sp, 432
                  mul         s11, zero, a7
                  c.sub       a3, s1
                  slli        t0, s3, 2
                  lui         zero, 360189
                  mulhsu      a3, a3, gp
                  c.slli      ra, 25
                  c.and       a3, a3
                  srai        a1, a5, 25
                  mul         s6, gp, a4
                  c.and       a3, a3
                  c.sub       a3, s0
                  mul         a3, s11, t4
                  xori        s1, t1, -705
                  c.sub       a3, s0
                  lui         s11, 337112
                  slti        s11, a5, 1917
                  c.addi      gp, -1
                  ori         s4, s2, -1450
                  c.xor       a3, a3
                  c.lui       ra, 1
                  mul         t0, t6, s5
                  mulhu       gp, t4, s11
                  and         s11, t2, s10
                  c.addi16sp  sp, -16
                  ori         gp, t3, 297
                  c.or        a3, a3
                  sra         s2, a7, t2
                  c.addi      a2, 2
                  mulhsu      t3, s4, t1
                  c.li        s4, 0
                  slt         a5, t6, s8
                  nop
                  addi        t3, s6, -1144
                  c.andi      a5, -1
                  c.sub       a3, a3
                  mulhsu      s9, s8, a0
                  c.xor       a3, a5
                  c.addi4spn  a3, sp, 320
                  sltiu       s11, s2, -1933
                  c.or        a4, a3
                  srl         s0, s2, s8
                  slti        t1, a0, -1950
                  nop
                  sra         t4, a4, sp
                  div         a1, s6, s6
                  and         zero, s1, t4
                  c.andi      a3, -1
                  c.and       a3, a0
                  c.lui       ra, 4
                  sub         gp, t4, a0
                  xori        t0, t4, 1233
                  xori        t2, t1, 21
                  c.srli      a3, 18
                  c.addi16sp  sp, 112
                  c.srli      a3, 15
                  rem         s4, s7, gp
                  c.lui       s11, 9
                  and         zero, s5, s10
                  ori         t2, s8, 334
                  c.addi      s7, -1
                  divu        a2, s4, t4
                  sra         a5, gp, s7
                  or          s11, a3, s5
                  srl         s8, s2, t3
                  c.nop
                  xori        a4, s11, -915
                  c.addi4spn  a3, sp, 608
                  sltiu       s2, a0, -1493
                  c.slli      a5, 18
                  c.xor       a3, a3
                  mulhu       s3, s5, a2
                  divu        a2, ra, a7
                  c.andi      a3, 9
                  mulh        a3, s3, t0
                  rem         s0, t5, a5
                  divu        ra, s0, a7
                  and         a6, s9, s6
                  c.xor       a3, a3
                  mul         a5, s2, t5
                  c.addi      ra, -1
                  or          zero, a5, t4
                  sll         s0, s0, s3
                  or          a4, s0, s0
                  xori        a7, a3, -190
                  slti        s4, t6, 1615
                  slti        a0, t5, -1644
                  lui         a1, 296242
                  mulhu       t3, s11, a1
                  addi        a4, s3, 1284
                  srli        s2, s1, 21
                  mulh        s1, t6, s8
                  c.addi4spn  a3, sp, 384
                  c.mv        t0, a4
                  auipc       s7, 888956
                  sub         s11, sp, gp
                  addi        s4, a1, -1769
                  addi        a2, s4, -1136
                  xori        a2, t1, -534
                  sub         s11, s4, tp
                  c.andi      s1, -1
                  c.addi16sp  sp, 304
                  add         s10, ra, s6
                  sub         s1, zero, a1
                  c.or        a3, a3
                  sltiu       a3, tp, 632
                  slli        s8, a7, 16
                  sltiu       s0, a2, 1026
                  c.addi16sp  sp, -16
                  slli        t4, a5, 21
                  nop
                  c.nop
                  slt         a3, zero, tp
                  c.addi4spn  a3, sp, 64
                  mul         s2, s8, s8
                  c.xor       a3, a3
                  slt         s4, s5, a2
                  c.or        a2, a3
                  c.or        a3, a3
                  sltiu       s7, t2, -1309
                  sra         s8, s2, t1
                  and         a7, a3, t0
                  c.add       t2, s10
                  c.srai      s1, 3
                  c.andi      a3, 16
                  mul         zero, s7, ra
                  rem         a4, s9, a0
                  ori         sp, a3, -1313
                  c.srli      a3, 21
                  and         t0, ra, s9
                  c.and       a3, a3
                  c.addi16sp  sp, 144
                  c.and       a2, a3
                  xori        s4, t3, 846
                  c.addi      s7, 13
                  c.and       a3, a3
                  c.lui       t4, 17
                  c.nop
                  c.addi4spn  a3, sp, 384
                  sltiu       a6, ra, 1766
                  mul         tp, s9, a6
                  c.slli      ra, 25
                  c.srli      a3, 13
                  lui         a4, 749048
                  c.add       t4, gp
                  andi        t3, ra, 460
                  srl         s7, tp, tp
                  sltu        s8, s11, s9
                  srl         t1, t3, s7
                  c.srai      a5, 29
                  ori         a2, s3, -1388
                  xor         s0, ra, tp
                  slti        a4, ra, -1852
                  or          a5, s9, s8
                  xori        a2, s0, -1450
                  c.addi      a6, 23
                  mul         sp, t0, s2
                  sltiu       t0, a0, -846
                  lui         s11, 262051
                  and         s4, s10, s3
                  rem         t1, tp, s0
                  rem         a3, s2, a2
                  c.lui       s9, 31
                  mulhu       s9, tp, a1
                  addi        s3, s4, -1038
                  c.addi16sp  sp, -16
                  mul         s4, s1, a6
                  c.addi      a1, 5
                  xor         s10, t3, s7
                  xor         a5, a1, sp
                  c.addi16sp  sp, -16
                  auipc       t2, 588666
                  c.srli      a3, 21
                  sra         a4, s2, t1
                  srl         tp, a6, s2
                  sltiu       sp, s1, -1180
                  mulh        t0, zero, ra
                  sltiu       zero, a6, 1094
                  c.srai      a2, 6
                  srai        s4, a3, 18
                  c.sub       a1, a3
                  mulhsu      s1, t3, a3
                  srai        s9, t3, 9
                  divu        s10, s5, t0
                  and         s8, s9, a7
                  c.addi16sp  sp, -16
                  mulhsu      s10, s11, s11
                  c.sub       a3, a3
                  sub         zero, ra, s11
                  c.mv        s1, a5
                  div         a3, t5, s5
                  mulh        a1, s8, s8
                  c.nop
                  addi        t1, a7, 1029
                  slti        a0, s11, 782
                  nop
                  sltu        a0, ra, a4
                  ori         t4, t1, 1649
                  mulh        gp, zero, s0
                  auipc       zero, 393495
                  c.addi4spn  a3, sp, 576
                  sltiu       s0, a5, -2029
                  mulh        t3, gp, a5
                  sub         s6, ra, a3
                  c.nop
                  c.sub       a3, a2
                  rem         t4, s0, a0
                  c.andi      a1, -1
                  c.sub       a3, a5
                  rem         a3, a4, t4
                  sub         s0, s4, zero
                  c.addi16sp  sp, -16
                  lui         t2, 513416
                  auipc       sp, 467323
                  c.andi      a5, 22
                  slti        tp, a3, 1213
                  c.lui       a5, 29
                  c.slli      t2, 7
                  c.nop
                  c.xor       a3, a3
                  mulhu       s9, a5, t3
                  srai        zero, a6, 10
                  sub         a0, a6, a1
                  div         s8, a7, sp
                  c.addi      a7, 28
                  sltu        s7, a7, a7
                  slti        s10, s0, -1834
                  or          zero, s2, t1
                  rem         a6, t6, s2
                  c.addi16sp  sp, -16
                  mul         a0, t4, s0
                  c.li        tp, -1
                  nop
                  mulhsu      a4, sp, a3
                  slti        s7, s11, 1438
                  xori        a1, a3, -1741
                  mulh        gp, ra, a0
                  sltiu       gp, s7, 535
                  c.srai      a3, 6
                  c.srai      s1, 19
                  mulhsu      s11, s10, s9
                  c.or        a3, a3
                  c.andi      a2, 11
                  c.andi      s0, 18
                  xor         a6, t4, s2
                  srl         tp, t1, t6
                  divu        zero, s11, s8
                  rem         a1, t3, a4
                  c.addi16sp  sp, -16
                  mulh        a0, s8, ra
                  mul         t3, s2, a2
                  slli        s6, sp, 8
                  sll         tp, t6, a5
                  c.srli      a5, 18
                  srl         t1, a3, zero
                  sltu        a6, s1, a7
                  slli        a1, s8, 4
                  srai        s7, s3, 8
                  slt         t1, s3, t6
                  andi        s9, a0, -2041
                  lui         s2, 137230
                  rem         a0, t1, s7
                  c.sub       a3, a2
                  c.slli      t0, 25
                  c.or        a3, a3
                  ori         s11, s2, -2009
                  c.and       a3, s0
                  mul         s4, t4, a6
                  c.addi      ra, -1
                  auipc       tp, 887542
                  c.addi      ra, -1
                  addi        a1, s0, 355
                  div         a5, a0, ra
                  slti        a1, s11, -605
                  mulh        zero, s0, tp
                  auipc       s1, 706841
                  mulhu       s9, a1, s9
                  sll         s4, s8, gp
                  or          a3, s6, t2
                  c.nop
                  xor         a6, t5, sp
                  nop
                  c.slli      s2, 18
                  sltiu       s4, t3, -1086
                  c.xor       a3, a3
                  ori         t2, a0, 1209
                  mulhsu      s6, t0, s10
                  divu        a2, a6, s10
                  auipc       s7, 657351
                  andi        ra, s3, -893
                  slti        s6, a4, -166
                  c.or        a3, a3
                  c.mv        t1, a4
                  xori        s8, t6, -1375
                  or          ra, s11, t0
                  auipc       ra, 130230
                  c.li        a2, -1
                  c.slli      s10, 12
                  c.and       a3, a3
                  c.addi      s10, 17
                  slti        zero, s2, 440
                  c.li        s7, 1
                  mulhu       tp, sp, a1
                  divu        a4, t4, s3
                  c.li        a5, 20
                  xor         s7, a6, s8
                  srai        ra, s0, 16
                  mulhu       a3, a1, sp
                  slti        t0, s0, 1124
                  c.xor       a3, a5
                  slti        zero, a6, -1155
                  c.nop
                  xori        a6, t4, -851
                  c.and       a3, a3
                  sra         a6, tp, s4
                  sub         a1, t0, s11
                  xor         s10, a3, s5
                  slti        s9, sp, -379
                  c.sub       a3, a4
                  c.add       a2, s4
                  add         zero, s10, t2
                  sub         s6, t6, zero
                  sltiu       s8, sp, -1623
                  ori         s8, a4, -1957
                  c.or        a3, a3
                  divu        gp, s11, tp
                  andi        s11, a5, 448
                  rem         t3, s2, a4
                  sltiu       sp, gp, -1525
                  srai        zero, a3, 9
                  div         zero, a7, t4
                  rem         a4, tp, zero
                  c.lui       a3, 1
                  c.mv        a0, a4
                  c.and       a3, a3
                  addi        a3, a5, 1895
                  c.sub       a3, a3
                  mulh        s11, a3, t1
                  c.andi      a3, -1
                  c.srli      a0, 31
                  addi        a0, tp, -933
                  divu        tp, s1, s0
                  mulh        zero, s7, s7
                  ori         a3, t6, 350
                  c.srai      a3, 25
                  lui         zero, 983550
                  add         sp, s6, s2
                  c.lui       s0, 5
                  mulhsu      zero, a5, tp
                  slti        zero, s1, -102
                  c.or        a3, a3
                  c.andi      a5, -1
                  rem         zero, a3, tp
                  c.nop
                  c.li        ra, -1
                  sra         zero, a5, a1
                  c.slli      ra, 5
                  c.or        a3, a3
                  c.addi16sp  sp, 320
                  c.addi4spn  a3, sp, 64
                  c.addi4spn  a3, sp, 176
                  xor         zero, s7, a7
                  andi        s1, t1, 1375
                  xori        a2, t2, 1167
                  auipc       s2, 358023
                  xor         t1, a4, t0
                  nop
                  mulhsu      t2, a4, t0
                  add         sp, sp, a6
                  c.addi16sp  sp, 496
                  sll         tp, a2, a3
                  c.slli      t3, 13
                  c.srli      a3, 30
                  c.srli      a5, 22
                  c.srai      a3, 28
                  xor         s11, gp, s10
                  c.srai      a3, 9
                  c.mv        ra, t5
                  c.li        t3, 31
                  sra         s10, a4, s8
                  sltu        s0, tp, a6
                  mulhsu      t3, a6, zero
                  xori        ra, a2, 1383
                  c.sub       a2, a3
                  c.add       s1, a6
                  slti        a1, a1, 1385
                  sltu        a4, t2, s9
                  c.andi      a3, -1
                  c.add       t3, t2
                  div         s8, s5, s6
                  slt         sp, t2, s2
                  c.xor       a3, a3
                  sub         a2, t2, tp
                  c.xor       a3, a3
                  c.li        s4, -1
                  mulh        ra, a5, a1
                  and         t1, sp, t1
                  c.mv        s8, s8
                  sll         zero, t0, s11
                  xor         a4, s6, sp
                  divu        sp, a2, s3
                  c.add       s7, ra
                  ori         a6, s2, -1192
                  c.nop
                  srli        s7, t6, 24
                  auipc       tp, 887875
                  c.li        s2, 6
                  slti        a4, sp, -1568
                  ori         t3, t2, 992
                  c.add       gp, s4
                  mulh        a2, sp, a4
                  c.li        t4, -1
                  div         s10, t2, s4
                  c.addi4spn  a3, sp, 128
                  sltu        s1, a3, a3
                  lui         a6, 1004190
                  c.sub       a3, a3
                  c.nop
                  c.addi      gp, 6
                  divu        a0, t6, a7
                  rem         tp, a1, t1
                  add         a1, t1, a1
                  c.andi      a3, 8
                  sub         zero, t5, t0
                  slti        t0, a5, 1485
                  c.lui       s10, 2
                  lui         s6, 497639
                  auipc       s9, 76204
                  c.lui       s1, 7
                  slli        s0, s11, 24
                  c.and       a3, a3
                  addi        s7, s11, -802
                  c.andi      a3, -1
                  sltiu       a2, a7, 1965
                  c.lui       ra, 16
                  addi        zero, s0, -1456
                  c.addi16sp  sp, -16
                  nop
                  c.mv        a3, t5
                  ori         a2, s3, -501
                  ori         a4, s11, 492
                  c.and       a4, a3
                  xori        s0, a7, 860
                  c.srli      a3, 23
                  div         s8, tp, t5
                  sltiu       s10, s10, -807
                  slti        a2, t3, -1896
                  sra         a4, t6, s9
                  mulhsu      s10, s0, a1
                  rem         s10, gp, t4
                  div         s6, sp, s9
                  rem         s11, s7, s8
                  mulh        t0, s4, t1
                  sll         s4, a1, t3
                  rem         s8, t4, s11
                  xori        a5, t0, 1053
                  slti        a0, a3, 1876
                  slli        a3, a7, 10
                  div         zero, ra, t2
                  sra         ra, s5, a2
                  sra         s8, s3, a1
                  c.and       a3, a3
                  andi        s7, s4, 1887
                  sll         ra, t6, t0
                  sltu        a5, t6, s6
                  c.srli      a3, 13
                  c.add       s10, a7
                  div         s3, ra, a3
                  mulhu       s0, gp, a3
                  c.addi      s2, -1
                  c.add       a3, a3
                  sra         s10, t4, t4
                  mul         a2, gp, s6
                  c.addi      s2, -1
                  auipc       sp, 660664
                  addi        a1, s5, 1782
                  c.xor       a3, a3
                  lui         a0, 17321
                  srai        a4, s10, 24
                  mulhsu      sp, t2, s0
                  c.or        a1, a3
                  c.li        ra, -1
                  sltu        gp, s7, t6
                  and         t0, t2, a6
                  ori         zero, t2, -2016
                  sll         a5, a1, gp
                  c.xor       a3, s1
                  sll         sp, s3, ra
                  mul         zero, s7, a1
                  c.and       a2, a4
                  lui         t2, 66686
                  slli        sp, a1, 25
                  c.lui       s4, 1
                  mulhu       a1, s1, a6
                  c.srai      a3, 10
                  c.srli      a3, 28
                  c.andi      a3, -1
                  or          s7, s0, s10
                  slli        t4, s10, 30
                  ori         s7, a0, 193
                  slli        t3, s1, 8
                  c.srai      a3, 26
                  c.srli      a3, 27
                  srai        a3, s2, 23
                  c.addi16sp  sp, -16
                  c.and       s0, a4
                  srli        s11, zero, 29
                  c.li        ra, -1
                  mulh        t2, a4, t2
                  sltu        zero, a2, t2
                  sub         zero, s2, s11
                  c.and       a3, a3
                  c.or        a5, a3
                  srl         s10, a3, a1
                  xori        s7, a0, 556
                  div         a3, t0, a1
                  c.li        a0, 1
                  c.and       a3, a3
                  c.li        ra, -1
                  c.addi      a1, 19
                  srli        t2, s9, 1
                  xor         a1, s1, s4
                  srl         a4, a0, a0
                  c.sub       s1, a3
                  c.li        ra, 22
                  xor         s9, t5, a7
                  andi        s10, t0, 703
                  c.or        a3, a3
                  c.addi16sp  sp, -16
                  sub         s4, t4, s0
                  xor         t0, t2, a7
                  c.lui       s0, 19
                  auipc       t2, 963021
                  c.li        ra, 7
                  c.xor       a3, a3
                  c.add       s9, t4
                  c.andi      a3, -1
                  c.srai      a3, 29
                  sub         s8, s9, t0
                  mulhsu      sp, a1, t3
                  addi        s4, s2, 674
                  nop
                  rem         s11, a5, t0
                  srli        s8, a6, 30
                  c.xor       a3, a3
                  xor         zero, s9, tp
                  mulh        t2, s11, t1
                  c.srli      a3, 27
                  ori         a7, s6, -1375
                  nop
                  c.sub       a3, a3
                  and         s8, t2, a5
                  srai        t3, s2, 1
                  srl         s10, s6, s9
                  c.slli      t0, 5
                  xori        a6, sp, 1765
                  sltu        s2, t0, s5
                  c.addi      a7, -1
                  ori         t0, s5, -390
                  c.xor       a3, a3
                  c.sub       a0, a3
                  lui         t2, 582325
                  mulhsu      a5, gp, a0
                  c.sub       a3, a3
                  rem         s0, gp, s11
                  div         t1, a4, a3
                  c.nop
                  c.li        s10, -1
                  c.li        s0, 17
                  ori         zero, s10, -207
                  sltiu       zero, sp, 302
                  c.addi16sp  sp, 464
                  c.add       s9, a7
                  c.lui       ra, 5
                  slli        zero, s9, 29
                  c.add       tp, t3
                  andi        sp, t4, 500
                  div         t1, a1, a3
                  srai        s0, t3, 0
                  c.sub       a3, a3
                  c.and       a3, a3
                  ori         s1, s11, -426
                  c.xor       a3, a0
                  slti        zero, t6, 2044
                  c.or        a2, a3
                  c.add       a0, s1
                  c.lui       s9, 24
                  mulh        a6, s1, a7
                  sub         s0, s7, tp
                  c.or        a3, a3
                  andi        s4, s4, -1506
                  nop
                  c.and       a3, a4
                  sra         t0, s6, s10
                  srl         gp, s5, gp
                  xori        a4, t6, -802
                  li         t1, 0x0 #start riscv_int_numeric_corner_stream_32
                  li         t4, 0x0
                  li         t3, 0x1
                  li         s11, 0x0
                  li         a0, 0x0
                  li         s6, 0x0
                  li         s7, 0x1
                  li         s10, 0x0
                  li         s3, 0x0
                  li         a1, 0x2156786f
                  c.li        s10, -1
                  mul         s6, s0, t6
                  c.addi      tp, -1
                  mul         s6, a6, a7
                  c.addi16sp  sp, -16
                  addi        ra, a7, -1074
                  rem         s4, a7, s0
                  div         a6, a0, t3
                  mulhsu      s4, s11, gp
                  add         a1, t2, t4
                  lui         t3, 492378
                  mulh        a7, t6, s5
                  div         zero, s1, gp
                  c.addi16sp  sp, 384
                  c.li        s3, -1
                  c.nop
                  ori         s0, t3, -1189
                  sra         sp, t1, a4
                  c.srai      a3, 21
                  c.and       s1, a3
                  c.lui       a0, 31
                  sltiu       s10, s10, 780
                  addi        s8, a2, -1996
                  sltiu       sp, s11, -192
                  sltu        a3, s11, a2
                  c.add       s1, a1
                  sra         a6, a4, t6
                  c.lui       s4, 7
                  and         a4, t4, a0
                  srli        a3, t3, 23
                  c.mv        a0, gp
                  sll         s2, a2, s11
                  sltu        s0, a0, t0
                  or          zero, s2, s8
                  mulh        zero, t0, s5
                  sll         a0, s7, a4
                  c.and       a3, a3
                  c.sub       a3, a4
                  and         s6, a5, a6
                  and         zero, a4, a3
                  nop
                  lui         s11, 144260
                  sra         a4, a1, s2
                  sub         a7, t0, t4
                  slli        s0, s8, 26
                  c.andi      a3, 25
                  slti        tp, s2, 205
                  c.lui       a6, 22
                  slti        tp, a2, 1676
                  andi        s1, ra, 1990
                  c.add       a5, t2
                  sra         s1, tp, s2
                  sll         s10, a0, a5
                  slti        ra, a3, -855
                  c.andi      a3, -1
                  or          sp, s4, s8
                  c.mv        t1, a6
                  mul         t1, a0, a7
                  c.lui       s1, 24
                  c.sub       a3, a3
                  auipc       t3, 210951
                  ori         s6, s9, 1941
                  c.srli      a2, 19
                  srai        s1, t0, 24
                  c.mv        ra, t6
                  slt         t1, tp, tp
                  addi        t4, s8, 1633
                  slli        t2, t2, 22
                  c.and       a3, a3
                  addi        a0, s5, -566
                  divu        a6, t3, s9
                  auipc       t0, 859400
                  add         t4, gp, s11
                  sltu        zero, t1, a5
                  c.andi      s1, 7
                  ori         s2, t0, 1188
                  c.srli      a3, 6
                  c.and       a5, a3
                  slli        a1, a5, 22
                  rem         gp, s0, tp
                  sll         s9, t6, t3
                  nop
                  c.sub       a3, a1
                  slt         s11, a3, gp
                  c.mv        a7, tp
                  or          s10, ra, t1
                  slli        a5, tp, 30
                  c.srai      a3, 11
                  nop
                  srl         a6, t4, s2
                  c.lui       t2, 10
                  add         s3, tp, a2
                  mulhu       s10, sp, ra
                  c.slli      s11, 18
                  sra         s8, a5, s0
                  c.addi      s0, 18
                  slli        sp, s1, 7
                  and         t1, t2, s3
                  auipc       sp, 1026476
                  c.xor       a3, a3
                  auipc       ra, 442653
                  c.or        a3, a3
                  mul         a5, tp, a4
                  addi        a3, gp, 1410
                  rem         t4, t6, sp
                  slti        t4, a7, -481
                  c.xor       a3, a3
                  mul         a0, gp, s10
                  addi        a6, s11, 1810
                  mulhu       gp, s7, t2
                  divu        s1, t6, t6
                  slt         s6, a0, a6
                  lui         t2, 427391
                  mulhu       t1, t0, s5
                  nop
                  or          a0, s0, a6
                  c.sub       a2, a3
                  and         zero, s2, s8
                  c.srai      a0, 24
                  ori         zero, s6, 71
                  c.xor       s1, a3
                  c.addi      s8, -1
                  sll         zero, sp, a0
                  andi        zero, s9, -1542
                  mulh        a6, t3, a7
                  addi        a4, s0, -1151
                  nop
                  nop
                  c.addi16sp  sp, -16
                  c.srai      a3, 6
                  mulhu       a5, sp, s9
                  c.srai      a3, 13
                  c.nop
                  and         a1, s4, t5
                  div         zero, s7, a1
                  c.srai      a3, 24
                  c.lui       t2, 1
                  slt         zero, a3, t4
                  or          s7, a3, a4
                  sltu        t0, a7, s6
                  srli        a3, t6, 15
                  c.addi      tp, 28
                  add         a2, s11, a5
                  c.or        a2, a5
                  rem         tp, zero, sp
                  mulhsu      s2, gp, a0
                  c.addi      a6, 15
                  andi        s11, s8, 1953
                  divu        tp, s6, s7
                  srai        t0, s3, 6
                  c.and       a3, s1
                  c.nop
                  c.slli      t1, 29
                  c.and       s1, a3
                  sltiu       sp, a0, 41
                  c.sub       a3, a3
                  mulhsu      s8, t1, s1
                  add         s9, s8, s4
                  mulh        s4, a7, ra
                  c.li        gp, -1
                  slti        t1, gp, 1056
                  mulh        zero, a0, gp
                  mulh        s1, a1, t4
                  srli        t4, a6, 26
                  andi        zero, gp, -768
                  andi        s0, zero, 413
                  li         t1, 0x1 #start riscv_int_numeric_corner_stream_29
                  li         t4, 0x0
                  li         t0, 0x0
                  li         t3, 0x311d03ca
                  li         s8, 0x78f39d61
                  li         s0, 0x0
                  li         a2, 0x1
                  li         s10, 0x2b0be3e4
                  li         a6, 0x0
                  li         a3, 0x27e969aa
                  rem         s3, s3, a2
                  c.sub       a3, a1
                  c.addi      t1, -1
                  c.addi      a2, -1
                  rem         a5, t4, s8
                  auipc       a7, 541810
                  sub         gp, s10, a3
                  c.add       t3, s1
                  lui         a5, 846740
                  div         a6, t4, t6
                  c.nop
                  sub         s11, s10, t1
                  sub         a2, s4, s7
                  mulhu       a7, t3, s3
                  mulhu       zero, sp, t3
                  addi        t4, s10, -1637
                  c.add       t0, a7
                  c.addi16sp  sp, -16
                  c.sub       a3, a3
                  nop
                  c.sub       a3, a3
                  nop
                  c.mv        s8, s1
                  c.mv        t0, t6
                  nop
                  lui         s1, 781149
                  sub         s2, s3, s0
                  mulhsu      s10, a4, s2
                  add         t2, a5, s6 #end riscv_int_numeric_corner_stream_29
                  c.or        a3, a3
                  c.sub       a5, s0
                  slli        ra, sp, 30
                  sub         a3, tp, ra
                  divu        s2, s5, t0
                  sltiu       s2, s3, 1929
                  and         s9, ra, s3
                  lui         t1, 876503
                  mulh        a2, zero, s10
                  c.addi      sp, 22
                  lui         s0, 781410
                  srli        s11, s9, 0
                  and         s4, t3, sp
                  rem         a4, a5, a4
                  sll         zero, s3, s10
                  srli        gp, gp, 3
                  c.lui       ra, 8
                  divu        a6, t2, s11
                  xori        s0, t5, 422
                  c.xor       a3, a3
                  slli        s1, a0, 23
                  srli        s9, a0, 0
                  c.addi      ra, 11
                  srli        tp, s4, 30
                  c.or        a3, a3
                  c.lui       ra, 8
                  mulhu       s10, tp, s4
                  andi        t2, s7, 1613
                  sra         ra, tp, s9
                  andi        t4, a2, -938
                  sltu        s8, zero, s5
                  or          tp, t5, s0
                  c.addi16sp  sp, -16
                  srai        s1, a7, 3
                  slli        zero, s8, 6
                  mulh        s1, s4, s1
                  c.li        a3, -1
                  c.srai      a3, 10
                  lui         s11, 498015
                  c.addi16sp  sp, -16
                  xor         s11, s9, t5
                  c.xor       a0, a3
                  c.srai      a0, 21
                  slti        zero, s11, -219
                  c.or        a4, a3
                  c.mv        ra, s2
                  srli        zero, s4, 13
                  c.sub       a1, a3
                  c.add       sp, gp
                  andi        s0, s3, -1335
                  c.sub       a3, a3
                  srai        t3, a7, 3
                  c.li        a7, -1
                  sltiu       t3, a2, 429
                  c.sub       s1, a3
                  srli        t2, s2, 9
                  c.nop
                  c.slli      a6, 12
                  and         t2, sp, a1
                  nop
                  div         t4, s1, s2
                  andi        s3, t5, 1353
                  xori        zero, t5, 1728
                  c.li        a4, -1
                  xori        s11, sp, 1351
                  auipc       ra, 108682
                  lui         tp, 575638
                  c.add       gp, gp
                  c.addi      s0, 30
                  or          zero, a5, s2
                  srli        a2, s0, 1
                  divu        s3, s5, t4
                  c.srai      a3, 17
                  andi        s10, t6, 741
                  xori        s6, t6, 1819
                  mulh        s1, zero, gp
                  lui         ra, 251884
                  c.addi16sp  sp, -16
                  nop
                  sltu        a7, s6, s6
                  andi        s0, s0, -939
                  c.add       a4, s9
                  c.and       a3, a3
                  c.srai      a3, 25
                  c.lui       a4, 21
                  c.mv        t0, a5
                  rem         t1, a7, zero
                  sll         a1, s5, s1
                  sub         s6, a3, t4
                  c.and       s1, a3
                  c.li        s2, 31
                  c.and       a3, s0
                  slli        a1, s6, 29
                  lui         a4, 942279
                  divu        a4, tp, s3
                  c.andi      a3, -1
                  slli        zero, t2, 23
                  c.li        s2, -1
                  auipc       s6, 718604
                  and         s8, s0, a5
                  slti        t4, t1, 321
                  srl         a5, s3, s6
                  and         a3, s11, t3
                  slli        s10, tp, 2
                  sra         t4, s0, s2
                  or          t3, s9, s8
                  xori        s10, a0, -116
                  slli        s10, t5, 26
                  and         sp, t4, t0
                  c.add       s10, a4
                  lui         s9, 704579
                  mulh        a6, s3, s11
                  slt         zero, t6, a7
                  c.and       a3, a3
                  xor         a7, s7, s9
                  mulhsu      ra, t5, a5
                  c.lui       gp, 18
                  c.add       a7, s11
                  c.nop
                  slti        a1, zero, 620
                  c.addi      a2, -1
                  c.slli      a7, 3
                  mul         a0, ra, s8
                  c.slli      a7, 22
                  sub         zero, t5, a3
                  c.addi4spn  a3, sp, 320
                  nop
                  srai        s2, t2, 3
                  auipc       s8, 180808
                  and         s1, gp, s9
                  c.add       s11, s2
                  andi        a7, t3, 1078
                  divu        t2, t2, s7
                  c.nop
                  andi        s9, t1, 179
                  c.li        tp, -1
                  rem         a5, a5, a7
                  c.xor       a3, a4
                  c.and       a3, a3
                  c.addi4spn  a3, sp, 320
                  sub         t3, s10, t0
                  or          a2, s8, t5
                  srl         s0, a0, a4
                  srli        t0, s5, 0
                  ori         a2, s10, -1070
                  c.sub       a0, a5
                  xor         a2, a4, t6
                  srli        t4, t3, 10
                  or          zero, s3, t3
                  c.sub       a3, a3
                  c.add       ra, s2
                  mulhsu      s2, s10, t4
                  addi        t2, t6, -416
                  sra         s8, s4, a7
                  c.li        ra, 24
                  c.addi      s11, -1
                  c.and       a3, a4
                  xori        a3, zero, -492
                  c.addi16sp  sp, 304
                  c.mv        a7, t3
                  slti        zero, a7, -1387
                  rem         t4, s7, a1
                  auipc       s7, 395026
                  c.andi      a3, -1
                  sra         s4, a0, s11
                  c.addi4spn  a1, sp, 864
                  c.srli      a4, 9
                  srl         t0, s7, t2
                  c.or        a3, a3
                  ori         s1, s5, -874
                  c.add       a4, ra
                  addi        t4, s7, -509
                  slti        sp, s0, -133
                  c.addi      t1, -1
                  sll         a1, t1, s7
                  lui         a5, 682796
                  or          t1, a6, gp
                  c.srli      a3, 12
                  div         ra, s3, s5
                  mulhu       a0, a2, t5
                  addi        s11, a7, -1288
                  div         s7, a1, tp
                  srl         gp, s5, s6
                  slt         sp, a5, s5
                  c.li        a7, 29
                  add         tp, a3, t1
                  lui         s6, 531881
                  xor         s1, ra, s7
                  ori         a6, t2, 1528
                  ori         a1, zero, 1009
                  sll         t4, a1, sp
                  c.and       a3, a3
                  c.add       s3, s5
                  c.and       a1, a3
                  mulh        tp, a1, t6
                  xori        t4, a3, -1754
                  slti        s7, a2, -1394
                  srli        s3, t6, 20
                  c.sub       a3, a3
                  add         a4, t3, s3
                  auipc       a1, 593865
                  c.slli      t3, 8
                  slt         zero, a1, t1
                  add         ra, s9, s7
                  c.andi      a3, 12
                  c.or        a3, a3
                  slti        s6, a2, 589
                  divu        t1, t4, s11
                  xor         tp, t5, s7
                  slli        s8, a5, 24
                  srai        a0, s5, 3
                  srl         a7, a5, a6
                  slti        t3, a3, 357
                  rem         zero, t4, zero
                  div         t1, s4, a6
                  c.add       s1, tp
                  mul         a4, t1, t0
                  add         sp, s6, t3
                  c.srli      a2, 2
                  c.xor       a3, a3
                  c.add       ra, a1
                  mulh        s11, s5, zero
                  c.mv        s9, ra
                  srli        gp, s3, 9
                  c.sub       a3, a3
                  c.addi16sp  sp, -16
                  ori         t2, a2, -81
                  c.srai      a3, 11
                  ori         s6, a6, 311
                  slt         a3, a3, gp
                  c.sub       a3, a3
                  rem         s6, s8, s7
                  c.or        s1, a3
                  slti        s11, s3, -602
                  c.and       a3, a3
                  c.and       a3, a0
                  lui         zero, 334153
                  c.addi16sp  sp, 432
                  c.slli      s0, 7
                  slt         zero, t6, a0
                  and         sp, s7, gp
                  sltu        t2, zero, t0
                  c.sub       a4, a3
                  slli        zero, s11, 8
                  c.xor       s1, a3
                  xor         zero, s4, t5
                  c.addi16sp  sp, -16
                  c.or        a3, a3
                  srl         s8, s9, t4
                  mulh        zero, t6, t2
                  or          a5, a2, a7
                  c.nop
                  c.mv        sp, t4
                  lui         ra, 152373
                  divu        s11, zero, s1
                  c.slli      s9, 31
                  sltiu       s10, t5, -1447
                  mulh        s8, gp, a7
                  addi        s2, a3, -1065
                  c.addi4spn  a3, sp, 384
                  div         s6, a7, s7
                  srai        gp, t5, 26
                  sltu        zero, s9, s2
                  srl         s7, t3, s9
                  c.slli      a7, 1
                  slli        gp, t3, 15
                  sub         s10, s2, t4
                  c.lui       s11, 4
                  xori        zero, s3, 1018
                  mulhu       a0, t5, s1
                  mul         s6, a5, a0
                  div         gp, a2, s0
                  mulhu       a6, s0, s1
                  add         s9, s0, t2
                  c.addi4spn  a3, sp, 576
                  srl         zero, s5, s10
                  nop
                  divu        zero, a4, t1
                  slli        zero, a5, 23
                  c.srai      a3, 20
                  add         s9, a5, sp
                  sub         s7, t2, t2
                  mulh        a7, t3, tp
                  c.mv        t1, gp
                  slli        a5, t4, 15
                  ori         s7, s3, -482
                  c.lui       a0, 16
                  c.xor       a3, a3
                  slli        s9, s0, 19
                  c.srai      a2, 25
                  c.nop
                  lui         a0, 38350
                  sub         s7, s10, gp
                  mulhu       t0, gp, a6
                  c.addi16sp  sp, -16
                  mulhu       zero, ra, s4
                  c.addi4spn  a3, sp, 576
                  srli        zero, t4, 31
                  slli        s3, s5, 17
                  mulhsu      a4, s0, s10
                  c.mv        t0, s0
                  c.li        s4, -1
                  slt         a3, t0, s2
                  srai        t2, tp, 14
                  c.xor       a3, a3
                  auipc       a3, 378597
                  sll         s1, s9, t3
                  c.andi      a3, 11
                  or          s1, a1, a7
                  c.li        a2, 23
                  auipc       zero, 847032
                  c.srli      a3, 4
                  sra         t4, gp, a4
                  c.lui       t2, 5
                  mul         zero, t3, a7
                  c.mv        ra, s1
                  mulhsu      tp, ra, t0
                  c.mv        a4, gp
                  sltu        zero, s8, t6
                  c.nop
                  mulh        s11, t5, zero
                  slti        s1, t3, -189
                  srl         ra, sp, s9
                  c.xor       a3, a3
                  ori         t1, t1, -811
                  c.slli      ra, 23
                  c.mv        s2, gp
                  sltu        s4, a0, zero
                  c.or        a3, a3
                  div         s11, a5, s9
                  div         a0, s8, t4
                  c.mv        s11, a2
                  c.xor       a3, a0
                  c.xor       a1, a3
                  c.srai      a3, 11
                  and         gp, s1, s5
                  c.or        a4, s1
                  rem         s3, s6, s9
                  c.sub       a3, a3
                  nop
                  mul         a0, a5, s7
                  srai        a0, t2, 3
                  nop
                  xori        s10, s3, -1399
                  mulhsu      zero, t2, gp
                  c.addi      t2, -1
                  and         a1, s6, t4
                  slti        s7, a4, 1007
                  srai        a0, s8, 16
                  lui         s9, 937772
                  c.and       a5, a3
                  srl         t4, a6, s9
                  c.srai      a1, 22
                  sltiu       s6, a0, 654
                  or          t4, a2, ra
                  mulh        t0, a5, a2
                  mul         t2, s6, ra
                  lui         s3, 420789
                  c.li        t1, 26
                  ori         s0, t0, 1164
                  c.addi4spn  a3, sp, 832
                  sll         s1, t4, t6
                  c.srli      a3, 17
                  c.lui       ra, 1
                  c.or        a3, a1
                  sll         gp, t0, t5
                  ori         zero, s10, 1075
                  auipc       s4, 98793
                  c.li        s11, 14
                  sub         s11, a0, a4
                  nop
                  c.sub       a3, a3
                  c.lui       ra, 21
                  c.or        a3, a3
                  and         t0, a6, s0
                  mulhu       a7, s2, s4
                  add         s6, t2, zero
                  c.andi      a0, 31
                  c.add       a7, a3
                  c.addi16sp  sp, -16
                  c.xor       a3, a3
                  mulh        s8, s0, tp
                  mulh        s1, a5, t5
                  sll         s1, a6, t5
                  mulhu       s2, ra, t4
                  andi        a3, a5, 1745
                  sra         t0, s8, t6
                  c.slli      tp, 2
                  lui         a1, 455176
                  c.slli      ra, 17
                  nop
                  c.sub       a3, a3
                  c.add       ra, a4
                  c.and       a5, a3
                  lui         gp, 394469
                  nop
                  slti        t2, a5, -63
                  c.srai      a0, 8
                  addi        a1, t5, 1063
                  mulhsu      s6, s7, a2
                  xori        s2, a6, -876
                  mulhu       zero, s1, t4
                  c.addi      tp, -1
                  auipc       a3, 946362
                  divu        s11, gp, s1
                  c.mv        t1, t2
                  c.or        a3, a3
                  add         t0, a1, a4
                  rem         zero, t0, sp
                  slt         t2, t2, t4
                  c.andi      s0, -1
                  addi        sp, a4, -1181
                  c.lui       s8, 20
                  srl         s7, t3, t2
                  div         s2, zero, t5
                  sll         s7, zero, a1
                  mulhsu      sp, t3, s10
                  c.and       a3, a3
                  lui         s2, 432188
                  c.srai      s0, 25
                  mul         zero, t6, s11
                  c.addi4spn  a3, sp, 960
                  c.addi4spn  a3, sp, 992
                  c.srli      a5, 2
                  rem         a1, s7, a0
                  c.srli      s0, 11
                  srai        a0, t4, 14
                  srl         s1, sp, t3
                  c.addi4spn  a3, sp, 64
                  srl         s8, s11, sp
                  c.sub       a1, a3
                  c.slli      a3, 19
                  mul         s4, t5, s6
                  c.slli      s3, 21
                  c.slli      t0, 30
                  div         s2, zero, a4
                  slt         a1, s3, s7
                  srai        s4, s8, 23
                  and         t2, t4, a7
                  and         t3, a3, s10
                  div         s10, s7, t6
                  div         sp, a0, sp
                  c.addi4spn  a3, sp, 896
                  addi        s6, sp, 1006
                  divu        s0, s5, t6
                  add         t2, s8, s7
                  mulhu       t1, t6, a5
                  slt         t2, gp, t1
                  nop
                  slli        s3, s7, 20
                  srl         sp, s2, s3
                  srli        a4, s10, 10
                  slti        s0, s9, -152
                  lui         s11, 532318
                  or          t0, gp, t2
                  c.srai      a3, 16
                  c.lui       ra, 18
                  c.sub       a3, a3
                  sll         a7, s5, t3
                  addi        a0, s10, -654
                  andi        t4, a6, 1010
                  c.or        a3, a3
                  mulhu       s8, a0, t5
                  auipc       s4, 284810
                  div         a7, t1, s0
                  mulhsu      s2, a5, s8
                  li         t4, 0x1 #start riscv_int_numeric_corner_stream_5
                  li         s2, 0x7519f264
                  li         s8, 0x0
                  li         a3, 0x6b3056c2
                  li         t0, 0x0
                  li         a1, 0x0
                  li         s11, 0x1
                  li         t3, 0x0
                  li         a7, 0x253ea1be
                  li         a2, 0x1
                  sub         s6, s7, s10
                  nop
                  rem         a6, t5, a3
                  add         s8, ra, ra
                  c.li        ra, 1
                  mulhsu      a2, zero, t5
                  c.lui       ra, 31
                  c.sub       a5, a3
                  c.addi      t0, 1
                  div         t4, s3, s7
                  div         a0, s10, a7
                  mulh        s3, s9, s2
                  div         s4, t4, a0
                  rem         t4, zero, a7
                  c.sub       a3, s1
                  add         a6, tp, a3
                  add         a6, s7, zero
                  c.addi      sp, -1
                  lui         s10, 958546
                  lui         a4, 32047
                  mulhsu      s0, s2, s6
                  mulhu       s6, zero, t6
                  c.li        ra, -1
                  sub         a1, s3, s1
                  add         s8, a7, t6
                  c.li        t1, 16
                  srai        s7, a1, 1
                  c.sub       a3, a3
                  add         t4, s8, s4
                  divu        t0, s9, t2
                  c.li        a3, 12
                  c.addi4spn  a3, sp, 320
                  c.srai      a3, 23
                  c.addi16sp  sp, 96
                  c.or        a3, a4
                  c.lui       a2, 12
                  srai        a6, t2, 29
                  c.li        a2, -1
                  addi        s4, a7, -325
                  lui         zero, 549300
                  c.slli      a0, 4
                  c.addi16sp  sp, -16
                  c.srai      a3, 6
                  add         s0, a5, t6
                  srl         ra, t0, t3
                  slti        s0, s4, -799
                  xori        a6, s10, -711
                  sltu        sp, tp, t0
                  c.andi      a3, 19
                  c.xor       a3, a3
                  and         t0, a5, s10
                  slt         t1, t6, a1
                  slt         a7, s9, s9
                  sltu        t3, t0, s3
                  c.add       s3, s10
                  c.or        a3, a3
                  xor         zero, t2, s8
                  c.addi4spn  a3, sp, 608
                  c.mv        a7, t1
                  c.lui       s9, 5
                  slt         a5, t1, a6
                  div         zero, s1, a2
                  srl         gp, t1, a6
                  c.and       a3, a3
                  sra         a0, s4, t3
                  sll         gp, s6, s10
                  c.sub       a3, s1
                  andi        s7, s5, 251
                  lui         a3, 256963
                  c.addi      t0, -1
                  rem         s4, s7, t3
                  auipc       t3, 838195
                  andi        a6, a6, -1338
                  c.andi      a3, -1
                  mulhu       t0, t1, s5
                  c.srli      a3, 7
                  c.addi      a2, -1
                  c.lui       s3, 6
                  c.li        ra, 18
                  slli        a7, zero, 15
                  auipc       zero, 1013622
                  or          t0, s9, t2
                  sltu        a1, t2, s9
                  c.or        a3, a3
                  c.or        a3, a3
                  c.addi16sp  sp, 80
                  xori        zero, s4, -1281
                  sltu        t2, a4, s11
                  slt         a3, s1, t4
                  mulh        a6, a4, t2
                  auipc       s11, 121350
                  c.nop
                  mul         s1, t5, t1
                  c.lui       s0, 20
                  srli        a6, s11, 8
                  srli        ra, t4, 19
                  mul         sp, a4, t6
                  andi        s9, t6, -983
                  mul         ra, s0, s6
                  sltiu       sp, a2, -1968
                  srai        zero, s8, 20
                  xor         a4, s6, s10
                  c.addi16sp  sp, 96
                  c.addi      ra, -1
                  c.lui       s8, 15
                  c.add       a5, s9
                  c.xor       s1, a3
                  or          s6, a3, a2
                  mulh        zero, a1, t0
                  divu        zero, s3, a3
                  addi        a7, sp, 25
                  sub         s0, s4, s8
                  c.add       s9, t3
                  mulhu       s0, a2, zero
                  c.slli      a7, 26
                  slt         zero, t4, t1
                  and         tp, t5, s6
                  srli        a7, s11, 30
                  c.addi      s6, -1
                  add         a3, s11, s4
                  c.xor       a3, s1
                  auipc       a6, 222718
                  srl         t4, gp, s11
                  lui         a0, 384535
                  mulh        s0, sp, s8
                  auipc       zero, 153902
                  c.add       ra, a1
                  c.slli      t0, 1
                  mulhu       zero, t4, s3
                  sltu        s1, tp, a5
                  andi        a0, a5, -357
                  rem         s2, s9, s1
                  c.addi16sp  sp, -16
                  mulh        a5, s10, s8
                  slli        s0, a4, 31
                  srli        s10, s1, 18
                  c.li        s10, 22
                  c.li        a4, 18
                  c.and       a3, a3
                  c.li        tp, 28
                  c.lui       a0, 6
                  srl         a5, gp, t5
                  sub         s6, s11, a3
                  slt         s6, t5, s3
                  divu        s4, s1, a6
                  c.and       a3, a3
                  sll         zero, t2, a6
                  srai        s6, t4, 24
                  divu        a0, s6, a2
                  addi        s4, zero, 397
                  c.or        a3, a3
                  c.xor       a3, a3
                  sra         s2, a1, t2
                  sltiu       s0, s10, 572
                  mulhsu      a3, s11, s11
                  sub         zero, s9, t5
                  or          s1, s0, ra
                  c.addi      t0, 19
                  mul         s1, s11, a5
                  srli        s2, s2, 26
                  ori         ra, a5, -1077
                  ori         s4, t6, -1037
                  slli        zero, t0, 10
                  xori        s7, s5, -338
                  div         gp, s11, s1
                  div         a3, s10, a1
                  c.addi4spn  a3, sp, 960
                  divu        t3, s5, a2
                  c.slli      a5, 7
                  div         sp, a1, tp
                  nop
                  xori        s7, gp, -1576
                  c.addi4spn  a3, sp, 640
                  srl         sp, a0, t3
                  slti        zero, s3, -1808
                  c.addi16sp  sp, 464
                  c.xor       a3, a3
                  ori         t2, t3, 101
                  xor         t2, tp, a7
                  andi        zero, t4, 1102
                  c.slli      ra, 8
                  c.sub       a3, a3
                  addi        zero, s0, -1036
                  c.andi      a3, 20
                  sltiu       a2, tp, -751
                  andi        a7, t3, -283
                  c.add       t2, ra
                  c.li        s9, 6
                  sra         s8, s5, a7
                  andi        ra, t5, -1712
                  mulh        ra, s4, gp
                  srli        s1, gp, 18
                  sll         a6, a1, s8
                  c.lui       s4, 16
                  sll         s7, t5, a4
                  ori         a5, zero, -1370
                  c.srai      a1, 30
                  slli        a4, t6, 11
                  c.addi16sp  sp, -16
                  mulhu       a1, ra, a4
                  c.srli      a3, 27
                  c.nop
                  div         a3, s3, s2
                  c.mv        s6, a0
                  c.srli      a3, 15
                  slti        s11, a7, -552
                  nop
                  srl         t0, t4, s8
                  c.lui       s9, 17
                  c.srai      a3, 21
                  c.or        a3, a3
                  srli        s2, a1, 13
                  c.addi4spn  a3, sp, 640
                  mul         a3, s0, t6
                  sra         a5, zero, a4
                  c.addi16sp  sp, -16
                  c.andi      a3, 21
                  sll         gp, a5, s5
                  xori        s0, t6, -1303
                  div         t4, t6, a5
                  or          ra, s7, a3
                  c.srli      a3, 8
                  sltiu       a5, t6, 1459
                  srli        t4, t2, 2
                  add         s11, s0, t3
                  c.li        s11, 31
                  c.slli      s6, 1
                  mul         zero, a7, s7
                  c.addi16sp  sp, -16
                  andi        a6, a5, 1851
                  slti        zero, s10, 1
                  div         a7, a4, a1
                  c.andi      a3, -1
                  sra         a4, s4, s8
                  mulh        a6, a3, s3
                  c.mv        s11, a4
                  andi        s11, a0, -339
                  mulhsu      a2, t3, a0
                  c.andi      a3, -1
                  addi        a1, s10, -1097
                  c.srai      a3, 4
                  c.add       gp, s8
                  sll         a3, s6, a1
                  sltiu       t0, t2, -1230
                  sltiu       s2, s9, 1991
                  slli        a4, sp, 20
                  divu        a4, t5, t6
                  mul         t4, a6, a1
                  mul         a4, s5, s4
                  slti        s11, a6, -525
                  xor         a1, s8, t3
                  xor         sp, s0, a5
                  srli        a0, a1, 19
                  nop
                  add         a0, tp, s3
                  c.xor       a3, a3
                  srl         s7, t6, s6
                  and         s11, a2, a2
                  nop
                  srl         sp, t0, s5
                  sltiu       t1, s10, 544
                  xor         zero, a5, a3
                  addi        t2, t1, -575
                  and         a3, t2, a4
                  c.addi      a1, 3
                  xori        a7, a2, 1316
                  lui         t4, 787929
                  sll         gp, s1, a1
                  c.xor       a3, a3
                  c.andi      a3, -1
                  c.sub       a3, a3
                  sltu        ra, s8, t2
                  srl         zero, s0, a3
                  srai        a5, t4, 11
                  c.or        a3, a0
                  mulh        s1, a0, a3
                  addi        s9, tp, -388
                  c.and       a3, a3
                  c.srli      a1, 9
                  c.or        a3, a3
                  xor         s6, a7, a1
                  mul         tp, s7, a0
                  auipc       t2, 244374
                  c.addi16sp  sp, -16
                  c.nop
                  andi        sp, t3, -1195
                  andi        zero, t4, -153
                  c.xor       a3, a1
                  c.srli      a3, 4
                  c.andi      a3, -1
                  and         t4, a0, t0
                  c.srli      a3, 8
                  andi        t1, tp, 555
                  slti        s10, t6, -1806
                  c.xor       a3, a3
                  c.srli      a3, 3
                  mulhsu      s9, a2, sp
                  divu        s9, a5, sp
                  xori        t3, s6, 1413
                  c.and       a3, a3
                  c.addi      ra, 11
                  c.li        gp, 8
                  c.mv        s11, a1
                  sltu        t3, s8, a1
                  slt         s9, a3, t1
                  slti        t3, t6, 284
                  auipc       a1, 182344
                  and         s9, t6, s1
                  slti        a4, sp, 1878
                  and         t4, a4, a2
                  ori         zero, a4, 1273
                  c.srai      a4, 16
                  xor         s3, s6, t4
                  c.and       a3, a3
                  c.srli      a3, 15
                  mulhsu      a4, a5, s1
                  c.add       s0, a4
                  c.addi16sp  sp, -16
                  auipc       tp, 481996
                  xori        a6, s3, -47
                  xori        s2, a1, -1550
                  mulhu       tp, sp, t3
                  andi        t1, s6, 123
                  srl         zero, zero, t0
                  auipc       zero, 102563
                  c.andi      a3, 23
                  or          s10, s6, s11
                  c.addi4spn  a3, sp, 320
                  c.or        a3, a3
                  srai        a4, t3, 28
                  sub         s6, s1, a2
                  rem         a5, a3, t3
                  and         a1, s0, a4
                  nop
                  c.xor       a4, a3
                  slti        zero, t2, -275
                  ori         t4, s0, 1480
                  ori         tp, a1, 179
                  c.addi16sp  sp, -16
                  c.nop
                  sra         s1, s8, zero
                  addi        a2, t0, 261
                  c.srli      a3, 8
                  auipc       s6, 415196
                  xori        s2, a0, 504
                  divu        zero, s0, a1
                  c.lui       t1, 18
                  c.and       a3, a3
                  divu        t0, t3, s7
                  c.srai      a3, 27
                  c.slli      s9, 19
                  rem         s3, t3, gp
                  ori         s10, t5, 1784
                  sltu        s8, t5, s2
                  c.li        s7, 30
                  or          t2, s1, s11
                  c.add       t0, a2
                  srl         gp, a4, a1
                  c.addi4spn  a3, sp, 624
                  mulhsu      a6, s6, a4
                  srli        zero, a7, 1
                  mul         tp, s3, a7
                  mulh        s3, s6, s6
                  sll         a0, t3, s0
                  c.addi16sp  sp, 160
                  c.li        s7, 14
                  mul         gp, t4, a0
                  c.mv        ra, a5
                  andi        s9, a2, -1136
                  sra         s9, a4, s4
                  or          s6, gp, s9
                  c.andi      a3, 13
                  c.addi16sp  sp, 288
                  c.add       s6, ra
                  addi        t3, gp, 1692
                  slt         t1, a3, s8
                  c.slli      ra, 26
                  c.andi      s1, -1
                  sra         t2, zero, s1
                  add         t0, s8, t6
                  c.sub       a3, a3
                  c.add       s7, s6
                  sltiu       a5, t5, -1724
                  c.xor       a3, a3
                  andi        t4, t4, 1988
                  slt         s4, s7, s5
                  div         s11, gp, t1
                  c.srai      a3, 17
                  slti        s2, t5, -1541
                  sll         t4, s6, t6
                  slti        tp, s1, 2004
                  mulhu       zero, s0, s6
                  sub         gp, a4, t3
                  c.andi      a0, 11
                  rem         ra, s2, a7
                  c.xor       a3, a3
                  mulh        t4, s9, a1
                  c.andi      a3, 26
                  c.mv        a4, s4
                  c.lui       t0, 11
                  c.or        s0, a3
                  c.xor       a3, a3
                  div         a4, zero, a6
                  srai        t4, s3, 6
                  sra         s0, s11, a7
                  div         zero, s2, s3
                  c.and       a3, a3
                  add         s3, a2, ra
                  xor         zero, s3, t1
                  sltiu       zero, ra, 348
                  and         s3, sp, t0
                  c.srai      a3, 7
                  auipc       s4, 81535
                  c.and       a3, a3
                  sub         s0, s2, a6
                  divu        ra, a7, t4
                  c.srli      a0, 8
                  slti        s3, s5, 935
                  c.and       a3, a3
                  c.srai      a3, 6
                  c.li        ra, 31
                  mul         zero, s1, ra
                  xori        s11, s3, -758
                  c.andi      a3, -1
                  sltu        s10, t0, t1
                  mulhu       t4, s5, sp
                  c.mv        s4, t2
                  xor         t1, s0, t2
                  c.or        a3, a3
                  sll         t2, a0, t0
                  c.andi      a5, -1
                  rem         ra, t3, tp
                  c.addi      a2, 9
                  mul         t3, a4, sp
                  sltu        t4, s6, t4
                  srli        t4, a5, 11
                  slti        zero, gp, 1857
                  srli        a3, s9, 5
                  c.sub       a3, a5
                  c.xor       a4, s1
                  srli        t1, s4, 3
                  or          s0, s11, s5
                  xori        a3, a4, -339
                  auipc       t0, 187734
                  sltu        s0, t2, a7
                  srli        s11, s6, 7
                  or          s6, s5, s5
                  addi        t0, t1, 1159
                  rem         s3, t5, s2
                  srli        s4, s8, 0
                  mulhu       s3, s11, s3
                  sra         s0, t1, s10
                  c.addi16sp  sp, -16
                  c.srli      a3, 13
                  c.lui       a6, 10
                  c.slli      ra, 9
                  c.addi      a2, 28
                  c.li        s9, -1
                  mulhu       a7, s11, tp
                  c.andi      a3, -1
                  lui         a0, 40693
                  c.andi      a4, 17
                  c.nop
                  slti        zero, t3, -1530
                  xori        s1, s6, 1560
                  c.xor       a3, a3
                  mulhsu      tp, t1, s8
                  auipc       s11, 370497
                  lui         zero, 536709
                  c.li        t3, 21
                  c.xor       a3, a3
                  and         zero, ra, s7
                  xori        s4, sp, 1224
                  c.sub       s1, a3
                  sra         t3, a6, a3
                  mulhu       s9, t4, a6
                  divu        zero, t2, t4
                  c.andi      a3, -1
                  c.slli      s10, 29
                  mul         t2, a4, a1
                  li         a4, 0x1 #start riscv_int_numeric_corner_stream_13
                  li         t4, 0x1
                  li         t3, 0x0
                  li         s11, 0x0
                  li         a1, 0x0
                  li         s9, 0x0
                  li         t0, 0x1
                  li         s1, 0x0
                  li         s10, 0x0
                  li         tp, 0x60f3e1c2
                  lui         s7, 623144
                  mulhu       s1, t1, s9
                  c.nop
                  add         s10, a2, zero
                  c.addi4spn  a3, sp, 128
                  divu        s0, a5, t3
                  mul         s10, s6, s11
                  mul         s3, a4, t1
                  addi        a5, a1, -1928
                  c.sub       a3, a3
                  c.li        a7, -1
                  mulhu       sp, s7, a1
                  rem         s2, a6, gp
                  nop
                  addi        s9, a0, 816
                  mulh        a6, tp, a5
                  auipc       zero, 891798
                  c.addi      s9, -1
                  c.lui       s3, 20
                  div         t4, s3, s1
                  c.nop
                  c.addi16sp  sp, 480
                  mul         t2, s4, a0
                  c.li        s11, 1
                  c.mv        t3, s2
                  sub         s4, t6, a7
                  c.addi      ra, -1
                  sra         s3, a7, a1
                  slti        s4, a4, -1497
                  c.andi      a3, -1
                  mulhsu      a3, a3, gp
                  sltu        zero, a4, s4
                  nop
                  c.or        a3, a3
                  c.or        a1, a3
                  c.addi      s11, 26
                  c.add       ra, s7
                  xor         a1, a1, s9
                  slti        sp, a5, -123
                  and         zero, a7, gp
                  xori        s1, t6, -601
                  c.mv        s8, a1
                  sub         zero, s2, s7
                  div         s2, t3, s10
                  srli        t3, gp, 31
                  slli        s9, s3, 9
                  srl         s4, a6, s2
                  andi        t4, t1, 1888
                  andi        a1, s5, 58
                  c.slli      s2, 21
                  c.xor       a3, a3
                  c.addi      s10, 12
                  c.addi16sp  sp, -16
                  slt         a2, t4, zero
                  c.andi      a3, -1
                  slli        s2, sp, 31
                  c.and       a3, a4
                  nop
                  add         t4, a1, t4
                  add         t4, gp, s11
                  slti        s9, sp, 1728
                  and         s11, a1, s1
                  sub         zero, s8, s2
                  xor         t0, s3, s11
                  add         zero, s7, ra
                  mulh        a5, zero, t2
                  c.xor       a3, a3
                  c.sub       a3, s1
                  c.xor       a3, a3
                  ori         s6, t6, -845
                  xori        a1, s9, 585
                  c.or        a3, a3
                  c.nop
                  sra         a3, s0, a1
                  srai        s8, s11, 19
                  mulhu       a2, gp, ra
                  c.or        s0, a3
                  auipc       a4, 678279
                  sltu        s0, s10, s5
                  andi        s2, a2, 1612
                  c.and       a3, a3
                  nop
                  sll         tp, a5, t1
                  and         s10, a3, a6
                  mulhsu      s7, a1, s11
                  c.addi4spn  a3, sp, 144
                  ori         tp, t5, 175
                  c.lui       t1, 30
                  xori        a5, s5, 828
                  c.slli      a2, 31
                  div         s2, t3, s3
                  mulh        tp, s3, sp
                  slti        a0, t6, -355
                  auipc       a3, 635310
                  andi        s6, a5, -165
                  sra         sp, a5, t1
                  mulhu       t3, t1, s7
                  mulh        s11, s5, s8
                  c.and       a3, a3
                  addi        a7, sp, -1399
                  c.slli      s11, 23
                  sub         ra, t4, sp
                  c.srli      a3, 2
                  slti        s0, ra, 572
                  c.or        a3, s1
                  srl         ra, s0, s10
                  xor         s11, a2, a0
                  srl         s9, s10, t5
                  c.addi      t4, -1
                  divu        a1, s0, a0
                  c.addi16sp  sp, 224
                  c.slli      s1, 8
                  c.andi      a3, 5
                  and         s9, a0, gp
                  c.slli      a6, 30
                  add         t1, zero, s10
                  sltu        s9, zero, t0
                  c.andi      a3, 20
                  div         ra, s11, zero
                  mulhu       s10, s3, a6
                  c.xor       a3, a0
                  c.li        s10, 24
                  slti        s10, a4, 634
                  c.addi4spn  a3, sp, 384
                  c.sub       a3, a3
                  c.srli      a1, 21
                  slt         ra, gp, t3
                  slt         zero, s0, a5
                  c.mv        s1, t2
                  nop
                  c.sub       a3, a3
                  c.andi      a3, 28
                  c.sub       s0, a3
                  ori         t0, s8, 530
                  sltu        a0, a4, a5
                  xori        s2, a6, 1899
                  c.lui       s1, 25
                  c.and       a3, a3
                  c.slli      a7, 21
                  andi        a4, s10, -1335
                  or          zero, s0, a6
                  sll         zero, s2, t2
                  rem         ra, a2, s3
                  c.addi      s10, 22
                  or          t0, a5, s8
                  c.andi      a1, 16
                  c.andi      a3, -1
                  slt         zero, s11, tp
                  slti        a1, s6, -73
                  and         tp, s0, a6
                  c.slli      a7, 11
                  sltiu       sp, a3, 634
                  c.addi16sp  sp, -16
                  ori         t2, s4, 1777
                  div         s0, t1, a5
                  sltiu       zero, zero, 609
                  c.add       a6, s10
                  c.add       s11, t5
                  sub         a4, s0, s5
                  srli        s1, gp, 7
                  xor         s1, s5, s10
                  nop
                  c.lui       s10, 3
                  xori        a0, s7, 65
                  slti        t1, s0, 1562
                  nop
                  c.mv        t4, a7
                  sll         zero, t5, a0
                  sub         a5, s4, a4
                  c.addi16sp  sp, -16
                  c.slli      a7, 11
                  nop
                  sltu        a1, gp, a7
                  mulh        a3, s0, a6
                  c.li        s3, 15
                  c.addi      t0, 26
                  mulhu       s9, s6, a7
                  mulhsu      a3, s3, t3
                  c.addi      s11, -1
                  slti        t2, zero, 1429
                  addi        s6, s9, -271
                  c.xor       a2, a3
                  c.mv        ra, ra
                  c.or        a3, s1
                  sub         s6, t3, a6
                  c.lui       t1, 12
                  or          s0, t0, s3
                  c.mv        ra, s7
                  nop
                  c.li        s4, 4
                  c.slli      t1, 15
                  ori         zero, t1, -519
                  lui         zero, 5899
                  c.nop
                  c.li        s1, 19
                  or          s1, tp, s8
                  c.and       s0, s0
                  slti        t3, s6, -126
                  lui         s7, 728411
                  c.and       a5, a3
                  auipc       s3, 375462
                  c.add       t3, t5
                  c.addi16sp  sp, 96
                  c.addi16sp  sp, 160
                  c.and       a3, a3
                  c.slli      ra, 9
                  xor         t4, s4, s7
                  add         a2, s2, a1
                  c.srai      a3, 16
                  srli        s0, s4, 5
                  xori        s9, s0, -1798
                  mul         s3, s11, a0
                  c.add       sp, a3
                  c.xor       a3, a3
                  c.slli      s2, 1
                  sll         zero, a0, t4
                  addi        a4, a1, 878
                  nop
                  sra         a4, a2, t4
                  mulhsu      s2, s10, a5
                  c.nop
                  c.and       a3, a3
                  srl         a6, s8, a2
                  xor         s9, t5, tp
                  auipc       a2, 895743
                  div         a0, s1, a4
                  srl         ra, s5, a4
                  andi        a2, s4, 1843
                  sra         s9, s2, s4
                  mulhu       s9, zero, tp
                  c.addi16sp  sp, 96
                  slt         s8, t1, s11
                  xor         a2, s7, a4
                  c.mv        s10, t3
                  addi        a5, t3, 1127
                  srai        s4, ra, 30
                  div         s3, a2, s0
                  add         gp, sp, s5
                  c.li        s9, 18
                  add         s3, a0, a2
                  mul         t2, t4, a2
                  c.slli      t1, 11
                  c.li        sp, -1
                  la x21, test_done
                  jalr x0, x21, 0
test_done:        
                  li gp, 1
                  ecall
write_tohost:     
                  sw gp, tohost, t5

_exit:            
                  j write_tohost

instr_end:        
                  nop

.section .data
.align 6; .global tohost; tohost: .dword 0;
.align 6; .global fromhost; fromhost: .dword 0;
.section .user_stack,"aw",@progbits;
.align 2
user_stack_start:
.rept 4999
.4byte 0x0
.endr
user_stack_end:
.4byte 0x0
.align 2
kernel_instr_start:
.text
.align 2
mtvec_handler:    
                  csrrw x30, 0x340, x30
                  add x30, x31, zero
                  1: addi x30, x30, -124
                  sw x1, 4(x30)
                  sw x2, 8(x30)
                  sw x3, 12(x30)
                  sw x4, 16(x30)
                  sw x5, 20(x30)
                  sw x6, 24(x30)
                  sw x7, 28(x30)
                  sw x8, 32(x30)
                  sw x9, 36(x30)
                  sw x10, 40(x30)
                  sw x11, 44(x30)
                  sw x12, 48(x30)
                  sw x13, 52(x30)
                  sw x14, 56(x30)
                  sw x15, 60(x30)
                  sw x16, 64(x30)
                  sw x17, 68(x30)
                  sw x18, 72(x30)
                  sw x19, 76(x30)
                  sw x20, 80(x30)
                  sw x21, 84(x30)
                  sw x22, 88(x30)
                  sw x23, 92(x30)
                  sw x24, 96(x30)
                  sw x25, 100(x30)
                  sw x26, 104(x30)
                  sw x27, 108(x30)
                  sw x28, 112(x30)
                  sw x29, 116(x30)
                  sw x30, 120(x30)
                  sw x31, 124(x30)
                  csrr x29, 0x300 # MSTATUS
                  csrr x29, 0x342 # MCAUSE
                  srli x29, x29, 31
                  bne x29, x0, mmode_intr_handler

mmode_exception_handler:
                  csrr x29, 0x341 # MEPC
                  csrr x29, 0x342 # MCAUSE
                  li x7, 0xb # ECALL_MMODE
                  beq x29, x7, ecall_handler
                  li x7, 0x2 # ILLEGAL_INSTRUCTION
                  beq x29, x7, illegal_instr_handler
                  csrr x7, 0x343 # MTVAL
                  1: la x21, test_done
                  jalr x1, x21, 0

ecall_handler:    
                  la x29, _start
                  sw x0, 0(x29)
                  sw x1, 4(x29)
                  sw x2, 8(x29)
                  sw x3, 12(x29)
                  sw x4, 16(x29)
                  sw x5, 20(x29)
                  sw x6, 24(x29)
                  sw x7, 28(x29)
                  sw x8, 32(x29)
                  sw x9, 36(x29)
                  sw x10, 40(x29)
                  sw x11, 44(x29)
                  sw x12, 48(x29)
                  sw x13, 52(x29)
                  sw x14, 56(x29)
                  sw x15, 60(x29)
                  sw x16, 64(x29)
                  sw x17, 68(x29)
                  sw x18, 72(x29)
                  sw x19, 76(x29)
                  sw x20, 80(x29)
                  sw x21, 84(x29)
                  sw x22, 88(x29)
                  sw x23, 92(x29)
                  sw x24, 96(x29)
                  sw x25, 100(x29)
                  sw x26, 104(x29)
                  sw x27, 108(x29)
                  sw x28, 112(x29)
                  sw x29, 116(x29)
                  sw x30, 120(x29)
                  sw x31, 124(x29)
                  la x21, write_tohost
                  jalr x0, x21, 0

illegal_instr_handler:
                  csrr  x29, 0x341
                  addi  x29, x29, 4
                  csrw  0x341, x29
                  lw x1, 4(x30)
                  lw x2, 8(x30)
                  lw x3, 12(x30)
                  lw x4, 16(x30)
                  lw x5, 20(x30)
                  lw x6, 24(x30)
                  lw x7, 28(x30)
                  lw x8, 32(x30)
                  lw x9, 36(x30)
                  lw x10, 40(x30)
                  lw x11, 44(x30)
                  lw x12, 48(x30)
                  lw x13, 52(x30)
                  lw x14, 56(x30)
                  lw x15, 60(x30)
                  lw x16, 64(x30)
                  lw x17, 68(x30)
                  lw x18, 72(x30)
                  lw x19, 76(x30)
                  lw x20, 80(x30)
                  lw x21, 84(x30)
                  lw x22, 88(x30)
                  lw x23, 92(x30)
                  lw x24, 96(x30)
                  lw x25, 100(x30)
                  lw x26, 104(x30)
                  lw x27, 108(x30)
                  lw x28, 112(x30)
                  lw x29, 116(x30)
                  lw x30, 120(x30)
                  lw x31, 124(x30)
                  addi x30, x30, 124
                  add x31, x30, zero
                  csrrw x30, 0x340, x30
                  mret

pt_fault_handler: 

.align 2
mmode_intr_handler:
                  csrr  x29, 0x300 # MSTATUS;
                  csrr  x29, 0x304 # MIE;
                  csrr  x29, 0x344 # MIP;
                  csrrc x29, 0x344, x29 # MIP;
                  lw x1, 4(x30)
                  lw x2, 8(x30)
                  lw x3, 12(x30)
                  lw x4, 16(x30)
                  lw x5, 20(x30)
                  lw x6, 24(x30)
                  lw x7, 28(x30)
                  lw x8, 32(x30)
                  lw x9, 36(x30)
                  lw x10, 40(x30)
                  lw x11, 44(x30)
                  lw x12, 48(x30)
                  lw x13, 52(x30)
                  lw x14, 56(x30)
                  lw x15, 60(x30)
                  lw x16, 64(x30)
                  lw x17, 68(x30)
                  lw x18, 72(x30)
                  lw x19, 76(x30)
                  lw x20, 80(x30)
                  lw x21, 84(x30)
                  lw x22, 88(x30)
                  lw x23, 92(x30)
                  lw x24, 96(x30)
                  lw x25, 100(x30)
                  lw x26, 104(x30)
                  lw x27, 108(x30)
                  lw x28, 112(x30)
                  lw x29, 116(x30)
                  lw x30, 120(x30)
                  lw x31, 124(x30)
                  addi x30, x30, 124
                  add x31, x30, zero
                  csrrw x30, 0x340, x30
                  mret;

kernel_instr_end: nop
.align 2
kernel_data_start:
.section .kernel_stack,"aw",@progbits;
.align 2
kernel_stack_start:
.rept 4999
.4byte 0x0
.endr
kernel_stack_end:
.4byte 0x0
