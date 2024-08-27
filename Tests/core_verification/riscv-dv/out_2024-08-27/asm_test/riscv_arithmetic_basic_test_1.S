.include "user_define.h"
.globl _start
.section .text
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x7, h0_start
jalr x0, x7, 0
h0_start:
                  li x30, 0x40001104
                  csrw 0x301, x30
kernel_sp:        
                  la x31, kernel_stack_end

trap_vec_init:    
                  la x30, mtvec_handler
                  ori x30, x30, 1
                  csrw 0x305, x30 # MTVEC

mepc_setup:       
                  la x30, init
                  csrw 0x341, x30

init_machine_mode:
                  li x30, 0x1e00
                  csrw 0x300, x30 # MSTATUS
                  li x30, 0x0
                  csrw 0x304, x30 # MIE
                  mret
init:             
                  li x0, 0x0
                  li x1, 0x80000000
                  li x2, 0x80000000
                  li x3, 0x8
                  li x4, 0x0
                  li x5, 0x7
                  li x6, 0x7848dfe9
                  li x7, 0x7
                  li x8, 0x0
                  li x9, 0x0
                  li x10, 0x80000000
                  li x11, 0x3
                  li x12, 0x80000000
                  li x13, 0xa59110c1
                  li x14, 0x0
                  li x15, 0x0
                  li x16, 0x80000000
                  li x17, 0xc895a00c
                  li x18, 0x0
                  li x19, 0x0
                  li x20, 0x80000000
                  li x21, 0x80000000
                  li x22, 0x0
                  li x23, 0xd2cae2c9
                  li x24, 0x0
                  li x25, 0x0
                  li x27, 0x2
                  li x28, 0xf
                  li x29, 0x80000000
                  li x30, 0xa76ebd17
                  la x26, user_stack_end
main:             li         t1, 0x1c761589 #start riscv_int_numeric_corner_stream_13
                  li         t4, 0x0
                  li         t3, 0x79157d7d
                  li         s4, 0x1
                  li         a6, 0x1
                  li         s11, 0x7d77a833
                  li         t5, 0x1
                  li         a2, 0x0
                  li         s8, 0x74be5589
                  li         s9, 0x0
                  rem         t4, s6, t2
                  div         s11, ra, t0
                  lui         zero, 895250
                  auipc       t1, 232321
                  divu        a6, a3, t5
                  sub         s2, a0, s11
                  div         zero, s2, s8
                  c.lui       ra, 15
                  rem         a7, t3, s4
                  mul         zero, tp, a7
                  add         a1, t6, a0
                  lui         s7, 316887
                  c.addi16sp  sp, 464
                  c.lui       s3, 23
                  c.mv        s7, t6
                  rem         s0, t6, t5
                  add         s1, s1, s8
                  add         a6, a7, a1 #end riscv_int_numeric_corner_stream_13
                  li         t5, 0x0 #start riscv_int_numeric_corner_stream_5
                  li         t4, 0x0
                  li         t1, 0x0
                  li         a7, 0x0
                  li         t3, 0x1
                  li         s4, 0x1
                  li         tp, 0x41e1c89a
                  li         a3, 0x0
                  li         a4, 0x34045882
                  li         a2, 0x0
                  mul         t1, a7, t0
                  c.add       s0, ra
                  nop
                  lui         s1, 212091
                  div         a5, s0, a4
                  sub         t3, a3, s6
                  mul         a5, a2, t1
                  addi        s6, s2, 212
                  divu        s0, s1, tp
                  mul         a5, a2, t6
                  addi        t3, t2, 71
                  mulhsu      a7, gp, gp
                  c.nop
                  c.sub       a0, a2
                  c.addi4spn  a0, sp, 128
                  auipc       s11, 852118
                  sub         s11, sp, s1
                  c.addi4spn  a0, sp, 128
                  c.add       ra, a3
                  c.mv        s4, t3
                  divu        zero, s7, t4
                  c.addi4spn  a0, sp, 704
                  divu        tp, s3, a4
                  c.add       ra, s1
                  c.mv        a7, t2
                  c.lui       ra, 2
                  mulh        s0, s11, a7
                  c.li        s5, 16
                  nop
                  sub         a4, s5, ra #end riscv_int_numeric_corner_stream_5
                  li         t4, 0x0 #start riscv_int_numeric_corner_stream_10
                  li         t3, 0x0
                  li         t5, 0x0
                  li         s9, 0x19f8dec2
                  li         s4, 0x0
                  li         s11, 0x0
                  li         s8, 0x0
                  li         a3, 0x0
                  li         a2, 0x356ae19d
                  li         a7, 0x0
                  c.addi      a6, -1
                  c.lui       ra, 8
                  lui         s9, 36892
                  c.nop
                  mulhsu      a5, s7, s9
                  nop
                  div         a7, s9, t5
                  auipc       a1, 293765
                  addi        t0, s2, 1350
                  addi        a4, gp, 793
                  sub         a3, t3, s8
                  c.mv        sp, t1
                  c.addi16sp  sp, 272
                  c.lui       a0, 26
                  nop
                  div         a6, zero, s10
                  c.mv        ra, ra
                  lui         s9, 107400
                  c.add       tp, t4
                  add         a4, a0, s1 #end riscv_int_numeric_corner_stream_10
                  li         s8, 0x1 #start riscv_int_numeric_corner_stream_23
                  li         a4, 0x4e05e816
                  li         s11, 0x5b4c7e15
                  li         s6, 0x0
                  li         s9, 0x17f07dcd
                  li         t3, 0x1
                  li         t5, 0x0
                  li         s1, 0x1a6dabc1
                  li         a0, 0x0
                  li         t4, 0x67037a42
                  mulh        zero, sp, ra
                  c.addi16sp  sp, 64
                  sub         s9, gp, a2
                  mulhsu      gp, ra, s2
                  c.addi4spn  a4, sp, 832
                  auipc       a2, 224819
                  c.sub       a0, a3
                  c.addi4spn  a1, sp, 960
                  c.addi16sp  sp, 480
                  addi        a3, s0, -1010
                  lui         s3, 991250
                  sub         zero, a5, a6
                  mulh        s1, t4, s1
                  c.nop
                  auipc       t1, 671783
                  mulhu       a3, a7, sp
                  c.li        a0, 14
                  c.addi      s9, 12
                  mul         a2, gp, t3
                  c.addi4spn  a3, sp, 144
                  li         t5, 0x0 #start riscv_int_numeric_corner_stream_8
                  li         t4, 0x23374ed6
                  li         s11, 0x1
                  li         s5, 0x0
                  li         a3, 0x1
                  li         t3, 0x1
                  li         a5, 0x1
                  li         a2, 0x1
                  li         s9, 0x1
                  li         s8, 0x0
                  c.addi4spn  a3, sp, 960
                  divu        zero, t0, t6
                  add         t1, a3, a7
                  c.lui       s5, 31
                  mulhsu      ra, t2, t2
                  c.li        s7, -1
                  c.lui       s2, 3
                  c.lui       ra, 31
                  addi        t3, s10, 74
                  div         s0, s7, t3
                  c.addi16sp  sp, -16
                  c.addi16sp  sp, 384
                  c.nop
                  auipc       s6, 266928
                  c.sub       a2, a3
                  c.li        s11, -1
                  nop
                  sub         a2, s9, s6
                  c.sub       a0, a1
                  mulhu       zero, s6, s10
                  lui         a0, 2899
                  rem         a0, a5, a7
                  c.sub       s1, a1
                  add         a2, a2, s2
                  addi        s2, t4, -90 #end riscv_int_numeric_corner_stream_8
                  li         t5, 0x0 #start riscv_int_numeric_corner_stream_3
                  li         s3, 0x3f18dff6
                  li         a3, 0x1
                  li         t3, 0x1
                  li         t1, 0x6ed101f0
                  li         t4, 0x1
                  li         s9, 0x0
                  li         a2, 0x742c5ca0
                  li         s8, 0x1
                  li         s1, 0x1
                  sub         a4, sp, a2
                  mul         t5, t1, t5
                  add         a4, a1, s11
                  c.addi      a7, 26
                  c.addi4spn  a1, sp, 96
                  c.li        s11, 16
                  c.mv        s2, t0
                  c.mv        a5, a0
                  mulh        zero, a2, s10
                  c.mv        t5, s2
                  addi        s7, s4, -1050
                  c.addi      ra, 4
                  mulh        t3, s5, sp
                  c.add       ra, tp
                  c.sub       a0, a3
                  c.mv        a3, t4
                  mulhsu      tp, t2, t1
                  c.add       a7, s3
                  c.sub       a2, s0
                  c.li        tp, -1
                  auipc       t1, 1019290
                  sub         t4, s4, s1
                  mulhu       t5, t3, sp #end riscv_int_numeric_corner_stream_3
                  li         t4, 0x28ecf4fc #start riscv_int_numeric_corner_stream_21
                  li         ra, 0x0
                  li         t5, 0x1
                  li         t3, 0x0
                  li         s11, 0x1
                  li         a2, 0x0
                  li         s9, 0x69bb3e13
                  li         a1, 0x0
                  li         a4, 0x149947f6
                  li         s1, 0x0
                  c.sub       a2, a0
                  mulh        a2, sp, t6
                  mulhsu      s0, a1, s9
                  c.addi16sp  sp, 32
                  addi        a7, t2, 1039
                  addi        tp, t0, -551
                  auipc       a5, 969414
                  divu        zero, s7, a3
                  sub         ra, t2, t1
                  lui         t1, 172691
                  addi        zero, s9, -1054
                  c.add       s4, s11
                  divu        a6, ra, t2
                  c.addi      t0, -1
                  add         zero, ra, a0
                  c.li        ra, -1
                  mulhu       zero, sp, s8
                  mulhsu      zero, gp, s10
                  auipc       s8, 387115
                  sub         a6, a4, t5
                  mulhsu      ra, t3, a7
                  c.addi4spn  a2, sp, 624
                  c.add       ra, t3
                  auipc       a0, 312225
                  auipc       a1, 1046340
                  mul         s7, s1, s9
                  c.lui       s0, 1
                  c.addi4spn  a3, sp, 160
                  li         t5, 0x0 #start riscv_int_numeric_corner_stream_17
                  li         t4, 0x441ab705
                  li         t3, 0x0
                  li         s2, 0x1
                  li         s11, 0x1
                  li         s9, 0x1
                  li         a2, 0x1
                  li         a5, 0x7bb190b6
                  li         s6, 0x0
                  li         a4, 0x0
                  nop
                  auipc       tp, 290898
                  auipc       s9, 742561
                  divu        t0, a7, t3
                  divu        a1, a2, a4
                  nop
                  lui         zero, 643715
                  c.addi4spn  s0, sp, 64
                  add         s3, s10, tp
                  c.addi16sp  sp, -16
                  divu        a0, s2, tp
                  mulh        a2, s5, s7
                  c.addi16sp  sp, 160
                  lui         a5, 360536
                  div         a2, gp, t0
                  mulhu       t4, s3, t4
                  c.nop
                  mulhu       s1, s4, s6
                  lui         t5, 591442
                  div         a7, s11, a5
                  mul         zero, zero, t1
                  mulhu       t0, t5, s9
                  c.sub       a3, a2
                  mul         s1, s8, tp
                  mulh        a4, a2, t1 #end riscv_int_numeric_corner_stream_17
                  li         t5, 0x7223cf40 #start riscv_int_numeric_corner_stream_20
                  li         a4, 0x6c09b3be
                  li         t4, 0x1
                  li         t3, 0x2147485b
                  li         ra, 0x0
                  li         s11, 0x1
                  li         a1, 0x0
                  li         a2, 0x1
                  li         s2, 0x1
                  li         s9, 0x0
                  c.mv        t4, a7
                  divu        s4, s0, a7
                  rem         ra, gp, s4
                  mul         sp, sp, s0
                  rem         s1, s5, t5
                  sub         t1, a5, a4
                  c.add       t5, t1
                  add         a1, s8, t6
                  sub         a5, t0, s5
                  lui         tp, 808518
                  c.mv        s9, a2
                  mul         zero, s8, t3
                  div         a5, ra, a1
                  c.addi16sp  sp, 16
                  nop
                  c.lui       a0, 9
                  sub         sp, t2, a1
                  c.li        s3, 29
                  c.nop
                  auipc       a7, 478666
                  addi        zero, tp, -1062
                  addi        s0, s1, 1838
                  mulhu       zero, s2, s0 #end riscv_int_numeric_corner_stream_20
                  li         t5, 0x6bc9ddb2 #start riscv_int_numeric_corner_stream_25
                  li         t3, 0x1
                  li         s9, 0x308f5276
                  li         s4, 0x0
                  li         t4, 0x0
                  li         a2, 0x0
                  li         s8, 0x6a3eca21
                  li         a3, 0x1
                  li         a6, 0x5e94a2ef
                  li         s6, 0x374ce1c1
                  sub         s4, zero, a7
                  mulhu       s0, s5, s11
                  divu        zero, s3, t2
                  divu        a1, zero, s0
                  c.nop
                  c.add       a6, t3
                  nop
                  mulhsu      zero, t4, gp
                  c.sub       a0, a0
                  addi        sp, t0, 584
                  c.addi      s0, -1
                  mulhu       gp, t6, s8
                  c.add       a1, t2
                  div         s2, t2, s11
                  c.nop
                  c.addi16sp  sp, -16
                  divu        a7, s9, sp
                  mulhsu      zero, t0, t6
                  mulhsu      t4, s7, a5
                  auipc       s7, 261704
                  mulh        tp, zero, zero
                  lui         sp, 282248
                  c.add       t4, s1
                  auipc       zero, 586027
                  div         a5, t4, s8
                  c.addi4spn  a3, sp, 112
                  li         t3, 0x1 #start riscv_int_numeric_corner_stream_1
                  li         t5, 0x0
                  li         s11, 0x0
                  li         s6, 0x0
                  li         ra, 0x1
                  li         t4, 0x0
                  li         s8, 0x3726562b
                  li         a4, 0x0
                  li         a5, 0x0
                  li         s9, 0x1
                  c.nop
                  lui         a4, 398188
                  c.lui       s7, 21
                  c.addi      a3, 3
                  c.addi      t3, 18
                  c.li        t1, 10
                  lui         tp, 882026
                  c.addi16sp  sp, 448
                  mul         s4, s10, s6
                  add         s1, a1, s1
                  lui         s11, 454341
                  lui         s11, 425231
                  c.sub       s0, a2
                  c.lui       ra, 13
                  divu        t4, sp, a4
                  mulh        zero, t0, s3
                  nop
                  c.nop
                  c.sub       a0, a1
                  divu        s9, t4, s1
                  divu        s3, sp, t3
                  div         t4, t0, s0 #end riscv_int_numeric_corner_stream_1
                  li         t5, 0x0 #start riscv_int_numeric_corner_stream_15
                  li         t4, 0x1
                  li         s2, 0xd7402b9
                  li         t3, 0x1
                  li         s8, 0x79735a9
                  li         a6, 0x0
                  li         s4, 0x1
                  li         s9, 0x0
                  li         a3, 0x0
                  li         sp, 0x4ad66f17
                  auipc       a2, 371449
                  mulh        s4, t5, a3
                  mul         a0, a5, a4
                  sub         t0, a0, t6
                  auipc       s5, 484588
                  auipc       zero, 668352
                  addi        a5, a4, -780
                  nop
                  c.sub       a0, a3
                  c.mv        ra, ra
                  c.lui       t3, 19
                  c.lui       t0, 30
                  c.add       s4, s11
                  c.mv        s1, s7
                  c.addi      t3, 12
                  divu        a2, s0, s3
                  divu        t0, s10, t3
                  mul         a1, zero, t4
                  add         s4, tp, s5
                  mulhu       a1, gp, tp
                  c.sub       s0, a2
                  c.nop
                  c.li        s11, 15
                  c.add       s7, s4
                  addi        zero, ra, 1533
                  divu        zero, a5, t5
                  mul         s7, t2, a2 #end riscv_int_numeric_corner_stream_15
                  li         t4, 0x0 #start riscv_int_numeric_corner_stream_27
                  li         a2, 0x7f573c99
                  li         s9, 0x1
                  li         s8, 0x1
                  li         t5, 0x1
                  li         s11, 0x0
                  li         s4, 0x0
                  li         s1, 0x76827a7f
                  li         a3, 0x1
                  li         t3, 0x1
                  c.sub       a0, a1
                  mul         s1, t6, t1
                  lui         t0, 753943
                  c.nop
                  sub         a1, a4, t5
                  auipc       s4, 201735
                  mulhsu      t5, s1, a4
                  divu        s6, s11, a3
                  nop
                  c.mv        a2, t4
                  addi        zero, a1, 1977
                  auipc       t0, 110877
                  c.addi16sp  sp, 112
                  div         zero, a6, tp
                  c.addi16sp  sp, 240
                  c.sub       a0, a1
                  sub         zero, gp, ra #end riscv_int_numeric_corner_stream_27
                  li         t5, 0x0 #start riscv_int_numeric_corner_stream_19
                  li         t4, 0x2500fe00
                  li         t3, 0x0
                  li         s4, 0x0
                  li         tp, 0x6a255e1b
                  li         s8, 0x3c143634
                  li         sp, 0x0
                  li         a6, 0x0
                  li         a2, 0x7e7be9d1
                  li         a4, 0x0
                  auipc       ra, 642887
                  c.li        a5, -1
                  c.sub       a1, s1
                  divu        s1, s7, a3
                  mulh        s4, t0, s8
                  c.addi      s0, 28
                  c.sub       a0, a0
                  sub         s5, t1, s1
                  c.lui       s2, 30
                  c.add       sp, a0
                  c.sub       a2, a0
                  c.nop
                  c.li        sp, 28
                  c.addi4spn  a0, sp, 272
                  divu        t3, s6, s7
                  addi        s6, s10, 1835
                  c.mv        a7, s9
                  add         t3, a0, tp
                  mulh        sp, s1, s5
                  mul         s2, t1, t4
                  sub         a4, a0, a3
                  nop
                  c.li        t4, -1
                  c.add       ra, s9
                  auipc       s8, 447671
                  c.li        a7, -1
                  nop #end riscv_int_numeric_corner_stream_19
                  li         t5, 0x0 #start riscv_int_numeric_corner_stream_2
                  li         a3, 0x1
                  li         s4, 0x0
                  li         s0, 0x1
                  li         s3, 0x0
                  li         t0, 0x4f53811
                  li         s11, 0x0
                  li         ra, 0x0
                  li         a5, 0x1
                  li         sp, 0x0
                  c.nop
                  mul         a2, t4, s3
                  div         sp, s9, s5
                  mul         sp, tp, t5
                  mulhsu      s11, s6, t2
                  c.add       a5, t2
                  c.addi4spn  a0, sp, 976
                  auipc       a5, 161005
                  c.addi16sp  sp, -16
                  mulhu       a1, t4, t3
                  c.addi4spn  a3, sp, 528
                  rem         s4, s8, a5
                  mulhsu      t1, a6, a3
                  add         tp, a4, s0
                  c.li        a1, -1
                  mulhu       a0, s8, s2
                  c.addi      a6, -1
                  divu        a7, s4, a7
                  c.addi4spn  a0, sp, 64
                  auipc       a6, 596367
                  lui         s3, 291713
                  mul         sp, a5, t0
                  c.add       s9, s11
                  sub         s2, t4, s10 #end riscv_int_numeric_corner_stream_2
                  c.addi16sp  sp, 96
                  srl         a7, a3, gp
                  c.addi16sp  sp, -16
                  rem         s11, s5, t5
                  xori        a0, s5, 789
                  xori        s9, a0, 1279
                  c.addi4spn  a0, sp, 976
                  c.sub       a0, a2
                  add         s9, zero, a6
                  lui         a1, 523255
                  c.sub       a0, a2
                  andi        s4, s2, -1697
                  slt         t5, s11, a3
                  mulh        sp, a3, s1
                  addi        zero, s10, 189
                  addi        t4, a0, -1169
                  or          a6, a5, a2
                  c.xor       a2, a1
                  or          a0, sp, s1
                  andi        gp, zero, -1500
                  lui         s11, 271364
                  c.add       t1, a4
                  c.srli      a2, 2
                  srli        s7, a7, 7
                  mulhu       s11, zero, t1
                  nop
                  c.or        s0, a0
                  c.addi16sp  sp, 112
                  or          t1, gp, a1
                  nop
                  mulh        zero, t2, sp
                  add         zero, a4, s7
                  srl         s6, a3, gp
                  add         t3, tp, t2
                  srai        tp, s6, 7
                  c.andi      a2, 14
                  mul         t3, a3, t5
                  andi        t1, a7, -348
                  c.xor       a2, a2
                  srli        tp, s2, 29
                  rem         zero, s7, t2
                  sra         t1, t2, a2
                  c.nop
                  c.nop
                  c.mv        a6, t2
                  c.li        a7, -1
                  add         a3, t4, t6
                  c.lui       a7, 7
                  and         sp, gp, sp
                  mulh        t1, t5, s6
                  mul         tp, s5, a2
                  add         t4, zero, s7
                  srli        a7, s2, 4
                  mulh        a0, a6, a0
                  sltiu       t4, t0, -676
                  andi        s7, s4, -1976
                  slti        s0, gp, -701
                  c.nop
                  slli        s7, t4, 0
                  mulhsu      a1, ra, a3
                  c.mv        t5, t1
                  c.lui       a3, 1
                  c.sub       a2, a5
                  c.mv        s1, t0
                  mulhu       t3, a2, a7
                  ori         s2, s11, -1872
                  mulh        gp, t2, sp
                  nop
                  srli        s5, s8, 28
                  c.addi      t5, 31
                  mulhu       s9, s6, t2
                  ori         t1, s2, 1360
                  rem         a0, s6, t4
                  div         ra, t2, t4
                  c.srai      a0, 4
                  srli        s6, s6, 11
                  addi        a2, t2, -1591
                  and         s0, gp, s2
                  divu        a1, zero, a7
                  c.andi      a2, 12
                  slli        tp, s5, 29
                  sltiu       s2, s2, -936
                  srl         zero, gp, t1
                  lui         t0, 476657
                  sub         zero, tp, s1
                  sltu        s7, t4, tp
                  srli        s8, a5, 20
                  c.srli      a0, 7
                  sub         a7, t0, a2
                  srli        gp, s5, 16
                  divu        a1, s9, t2
                  c.srli      a3, 17
                  xori        zero, s8, -1038
                  mul         a3, s5, s3
                  sltiu       t3, s3, 565
                  and         s4, s0, a2
                  addi        a6, a4, -165
                  rem         t1, a7, a6
                  c.and       a3, a4
                  c.or        a2, a3
                  srl         s2, t2, s11
                  c.xor       a3, a3
                  srl         sp, s11, s0
                  auipc       a2, 389274
                  c.li        s3, -1
                  sltiu       a0, ra, -820
                  lui         gp, 421440
                  sltu        a0, a4, s9
                  c.add       t4, s0
                  c.mv        s1, t2
                  sltiu       a2, s6, -1533
                  xori        t4, s2, 1496
                  c.addi4spn  a0, sp, 352
                  c.sub       a2, a3
                  addi        s9, t2, -1723
                  ori         a0, s9, 1219
                  div         a1, t0, a3
                  c.addi4spn  a0, sp, 880
                  c.slli      sp, 6
                  slli        t3, s0, 4
                  rem         a5, a7, sp
                  add         t3, t0, a2
                  c.lui       s9, 18
                  and         gp, a2, a1
                  c.addi      t0, 27
                  c.nop
                  sub         a4, a5, tp
                  sltu        s7, a5, gp
                  addi        gp, t4, -1871
                  divu        a6, s5, t4
                  srli        s6, s8, 1
                  sub         s2, s0, t6
                  ori         s5, ra, 1472
                  sll         s3, t1, t1
                  c.and       a0, a3
                  c.nop
                  c.addi      s0, -1
                  sub         s4, t2, a1
                  divu        s0, a7, t3
                  sra         zero, t6, s2
                  div         t0, a6, a5
                  c.addi4spn  a0, sp, 320
                  nop
                  mul         t5, s7, a0
                  c.andi      a0, -1
                  c.slli      ra, 5
                  xor         a2, t1, s11
                  sub         sp, s1, ra
                  sub         zero, t5, zero
                  c.and       a0, a0
                  c.sub       a0, a2
                  and         zero, zero, s7
                  sra         s2, s1, t4
                  sltu        ra, t6, s7
                  c.mv        a6, a2
                  c.mv        s6, s7
                  mulhu       a2, zero, s8
                  srai        s0, sp, 29
                  sra         s9, s3, s3
                  ori         zero, t3, 1042
                  mulhsu      s11, a1, s11
                  sub         sp, zero, t6
                  c.srai      a5, 8
                  c.addi4spn  a0, sp, 736
                  addi        a4, zero, 1195
                  lui         t5, 622487
                  sra         s5, a1, a5
                  slti        s6, a4, -1864
                  c.mv        ra, s10
                  c.xor       a0, s1
                  c.mv        t1, t5
                  nop
                  slli        a4, gp, 24
                  c.or        a0, a2
                  sltiu       a6, a4, -314
                  addi        s8, s4, -1410
                  nop
                  add         a7, gp, a0
                  c.and       a0, a3
                  c.srai      s0, 18
                  xori        a2, s10, -709
                  slt         s4, tp, s7
                  lui         s0, 876023
                  c.add       ra, a6
                  c.addi16sp  sp, 240
                  c.nop
                  c.andi      a1, -1
                  mulhsu      s4, a2, t5
                  or          a2, t0, ra
                  c.add       s11, s6
                  ori         s6, zero, 1429
                  c.add       a6, t2
                  c.srai      a3, 26
                  sltu        a2, t3, s8
                  addi        zero, t5, -131
                  sltu        a4, t6, s8
                  c.or        a0, a2
                  and         sp, s10, s7
                  c.srai      a3, 8
                  c.or        a0, a2
                  c.srli      a2, 1
                  ori         s9, a3, -1926
                  c.and       a2, a1
                  c.nop
                  mulhu       a5, s3, s9
                  c.xor       a0, a2
                  c.andi      a0, 25
                  mulhsu      a0, ra, s7
                  c.addi16sp  sp, 144
                  xor         ra, s6, s9
                  lui         zero, 182575
                  sltu        zero, s2, a5
                  c.addi16sp  sp, 432
                  divu        s11, t2, s7
                  mul         a1, a3, s11
                  c.srai      s1, 22
                  or          s6, a6, a7
                  or          s3, tp, sp
                  c.li        a4, 3
                  xor         t0, s11, t6
                  rem         a5, s10, ra
                  c.addi4spn  a0, sp, 560
                  or          a0, s5, sp
                  addi        a6, a4, -1349
                  addi        sp, a5, -673
                  ori         a6, zero, 123
                  c.nop
                  c.srai      a4, 1
                  sub         s6, a4, t5
                  add         a4, s0, gp
                  sltu        s6, t6, s6
                  rem         zero, t3, s1
                  srai        t0, s0, 9
                  andi        a1, s7, -625
                  srli        a7, s10, 9
                  mulhsu      s4, t0, a0
                  andi        s7, s2, 1393
                  div         a4, s9, s6
                  slti        zero, s11, 1336
                  mulhsu      a6, gp, s6
                  mulhsu      zero, s10, s0
                  c.sub       a1, a3
                  c.andi      a0, -1
                  li         t5, 0x0 #start riscv_int_numeric_corner_stream_26
                  li         t4, 0xe82c3ef
                  li         s1, 0x121c77f8
                  li         t3, 0x0
                  li         s11, 0x7cf1aad0
                  li         a4, 0x251ed9ed
                  li         a0, 0x0
                  li         a1, 0x305ae50e
                  li         a6, 0x1
                  li         s9, 0x1
                  c.addi4spn  a3, sp, 448
                  c.nop
                  nop
                  divu        t0, ra, tp
                  div         a2, s9, s6
                  mulh        s1, a3, s3
                  add         a4, gp, s0
                  mulh        ra, a1, a2
                  c.mv        t3, a4
                  mul         a3, s1, a3
                  mulhu       t4, s11, s8
                  rem         s2, t1, s0
                  div         zero, t6, s7
                  mulhu       s7, t6, t5
                  mulhsu      a3, a6, t5
                  c.add       ra, t6
                  c.li        t1, -1
                  c.addi      s4, 4
                  addi        a4, t2, 805
                  c.addi16sp  sp, 208
                  rem         s1, t0, s7
                  mulh        sp, a5, a7
                  add         ra, s8, t2
                  mulh        zero, s9, a5
                  c.addi      a0, -1
                  andi        s9, s1, 354
                  divu        t0, gp, t6
                  c.mv        ra, s8
                  sra         t1, s9, tp
                  slli        a5, t1, 21
                  c.srai      a4, 26
                  c.and       a3, a5
                  mulhsu      s11, a3, a1
                  mulh        gp, a2, zero
                  c.xor       a5, a3
                  add         s5, s4, t3
                  mulhsu      s4, a4, t0
                  c.and       a0, s0
                  srai        a4, s9, 25
                  slli        sp, s8, 18
                  sub         a5, sp, a5
                  c.addi4spn  a5, sp, 160
                  c.or        a4, a1
                  c.addi      s2, 29
                  xori        gp, t0, -1488
                  srl         s0, s11, s8
                  c.andi      a0, 25
                  slt         t0, a5, s9
                  srai        zero, a3, 28
                  mulhu       a0, ra, s11
                  xori        a3, a6, -1046
                  addi        a5, a6, 106
                  lui         s8, 643452
                  c.xor       a0, a2
                  c.mv        gp, t5
                  c.or        a0, a2
                  c.li        a3, 24
                  or          t4, a7, a0
                  slti        t0, a6, 234
                  mul         zero, sp, a4
                  c.andi      s0, -1
                  or          a1, a1, gp
                  srai        sp, t4, 18
                  c.srli      a0, 13
                  slli        t5, t6, 10
                  c.slli      s2, 20
                  rem         a5, zero, a2
                  lui         t1, 843671
                  srli        s3, t1, 25
                  c.or        s0, s1
                  rem         gp, t5, zero
                  sltu        a4, s11, sp
                  addi        zero, s11, 1878
                  div         t1, a6, a3
                  mul         s5, t2, t1
                  c.or        a3, a5
                  and         s7, s1, t2
                  mulh        s1, s6, t2
                  mul         t5, s0, t3
                  sltu        zero, s0, s11
                  srai        t1, a0, 17
                  c.nop
                  ori         a7, zero, -42
                  srli        tp, a7, 10
                  c.slli      a3, 18
                  div         a0, s6, t4
                  c.add       a7, t3
                  c.addi4spn  a0, sp, 192
                  mulhsu      s2, s1, s3
                  addi        a7, t5, -1773
                  mulhu       a0, s7, ra
                  xor         a1, s4, s10
                  c.nop
                  lui         zero, 279635
                  sub         zero, t5, a3
                  c.add       t4, ra
                  c.li        t1, 30
                  c.mv        ra, s10
                  c.srli      a3, 25
                  c.lui       s6, 15
                  mulh        t5, t2, s3
                  mul         gp, s4, s5
                  c.mv        ra, a4
                  lui         a0, 382563
                  c.slli      a4, 26
                  xor         s4, s8, a6
                  c.lui       tp, 1
                  c.add       t3, s2
                  mulh        t0, a0, s4
                  c.lui       s1, 18
                  c.or        a3, a3
                  sll         zero, t1, s7
                  slti        a7, s1, -232
                  mulhu       s0, s3, a3
                  ori         t3, tp, -818
                  sltiu       s2, s9, -1861
                  srli        s3, a0, 25
                  c.li        a7, 21
                  rem         s7, a3, s11
                  srai        zero, s6, 5
                  lui         a2, 655787
                  c.sub       s1, s0
                  c.and       a0, a1
                  sltu        s4, tp, s3
                  c.li        s8, 29
                  sltiu       zero, t1, 127
                  mul         a3, t4, t4
                  srai        zero, s10, 30
                  srl         zero, s0, a2
                  c.and       a0, a5
                  c.nop
                  sra         gp, a2, s7
                  addi        ra, s6, 1626
                  mulh        zero, s8, s0
                  c.li        a0, 28
                  sltiu       a0, s9, 333
                  c.addi16sp  sp, 192
                  sll         a4, t1, a3
                  c.and       a2, a0
                  c.srai      a4, 26
                  nop
                  c.xor       s0, a2
                  and         s7, t3, t2
                  or          s8, a3, a4
                  sra         zero, s5, a1
                  slt         a2, a0, s7
                  sltu        s6, s6, s11
                  xori        zero, s9, 734
                  c.and       a1, s0
                  sltu        s7, s10, s1
                  c.sub       a5, a1
                  srli        t5, t6, 26
                  mulhu       t3, s9, s3
                  nop
                  c.or        a4, s1
                  and         t3, t2, gp
                  c.nop
                  srli        a1, a5, 10
                  c.addi16sp  sp, -16
                  sltiu       t0, a5, 235
                  or          gp, t5, s6
                  mulhsu      s11, s8, a5
                  auipc       ra, 508219
                  c.li        s11, -1
                  c.sub       a3, a2
                  mul         t5, tp, t4
                  mulhsu      s5, zero, a1
                  auipc       s11, 83877
                  div         s6, s9, s0
                  mulhsu      tp, a2, t1
                  slti        s2, s11, 438
                  c.nop
                  and         s0, ra, t5
                  xor         a5, a2, s10
                  sltiu       zero, gp, 1339
                  mulh        a1, t4, s1
                  xor         a2, s3, t3
                  sltu        sp, a5, s0
                  divu        s5, s7, tp
                  and         t1, t3, s3
                  srli        t0, s2, 15
                  c.addi      t3, -1
                  c.addi4spn  s1, sp, 240
                  slli        zero, t5, 0
                  and         sp, s5, s9
                  c.srli      a0, 28
                  ori         s1, s7, 192
                  c.addi4spn  a2, sp, 560
                  c.srai      a0, 5
                  nop
                  rem         a6, a1, s4
                  slti        t4, t3, -1277
                  xori        s1, s8, 149
                  xori        a2, s9, -1936
                  or          zero, s7, a0
                  andi        s4, ra, -1603
                  c.addi      t1, -1
                  sub         s11, t5, a7
                  or          s0, t2, t6
                  or          s3, ra, zero
                  sll         a5, s7, t6
                  c.addi16sp  sp, -16
                  c.addi      s0, -1
                  sub         s4, a3, t6
                  c.addi16sp  sp, -16
                  c.addi16sp  sp, 32
                  mulhsu      a0, s11, s3
                  c.lui       s11, 8
                  sltu        s1, t2, t2
                  sltu        zero, a1, sp
                  addi        s7, zero, 22
                  slti        t0, s9, -530
                  slt         a2, a3, s4
                  andi        s6, s0, -328
                  lui         a4, 553698
                  nop
                  slli        tp, s4, 22
                  nop
                  c.add       a0, a2
                  c.addi4spn  a2, sp, 720
                  addi        a6, a6, -408
                  c.addi4spn  a0, sp, 624
                  c.addi      sp, -1
                  xor         a7, t3, t2
                  c.mv        t1, t2
                  c.or        a3, a2
                  sltu        zero, t4, t6
                  srli        a2, s2, 17
                  andi        t4, s11, -568
                  c.sub       a0, a2
                  divu        s4, s6, gp
                  c.add       a3, t1
                  sra         t1, a1, t5
                  srl         a2, s8, s4
                  addi        s11, t1, -1465
                  rem         t1, s4, a0
                  xor         t3, a3, t3
                  slti        s8, sp, -591
                  c.srli      a0, 23
                  sub         zero, s5, t1
                  sltu        a2, t4, s6
                  c.sub       a0, a3
                  sll         a1, s10, ra
                  slli        zero, t5, 13
                  mul         tp, a2, s6
                  li         t5, 0x0 #start riscv_int_numeric_corner_stream_14
                  li         s4, 0x6f7e77d6
                  li         a7, 0x0
                  li         t4, 0x2a5ff722
                  li         t3, 0x1
                  li         s11, 0x32918d4
                  li         s9, 0x0
                  li         t1, 0x0
                  li         a2, 0x1
                  li         s6, 0x46f11472
                  c.sub       a0, a2
                  c.mv        t3, a0
                  mul         a1, tp, s9
                  c.nop
                  rem         s1, ra, s4
                  divu        tp, a0, a0
                  div         s6, sp, sp
                  c.mv        ra, s4
                  c.lui       gp, 28
                  add         zero, ra, t3
                  c.nop
                  divu        s11, a5, s4
                  add         zero, t2, a1
                  sub         a6, a6, s6
                  div         t5, a1, s4
                  addi        a4, a3, -1668
                  c.sub       a3, a3
                  c.addi      ra, -1
                  c.addi4spn  a0, sp, 464
                  c.mv        t5, t2
                  c.mv        t1, s7
                  c.li        s4, -1
                  c.mv        s5, a1
                  c.nop
                  and         t1, a1, ra
                  xor         zero, tp, s1
                  andi        tp, a4, -1949
                  sra         a2, s3, s8
                  slti        zero, t6, -1566
                  c.add       a7, s1
                  slt         t5, t3, tp
                  mulhu       s4, a4, gp
                  c.addi4spn  a0, sp, 1008
                  c.li        t1, -1
                  c.li        s4, -1
                  andi        s0, a3, 352
                  srl         s9, t2, t5
                  c.lui       t5, 1
                  div         s5, a1, t2
                  mul         s0, s4, t2
                  c.li        s9, 21
                  c.slli      ra, 6
                  mulh        s1, a6, s6
                  slt         s6, t0, a3
                  addi        s0, t1, 1160
                  c.li        s5, -1
                  mulh        s5, a2, t0
                  mulh        s1, t3, a7
                  ori         sp, a5, -161
                  sll         zero, s10, s11
                  c.mv        t0, s5
                  c.addi4spn  a0, sp, 272
                  divu        tp, ra, a7
                  c.srai      a3, 28
                  mulh        s9, s8, a6
                  c.addi16sp  sp, -16
                  c.mv        s6, a4
                  c.addi4spn  a0, sp, 416
                  sub         s0, s11, tp
                  slli        s11, a5, 21
                  lui         s9, 602524
                  sub         gp, a5, s3
                  mulhsu      a0, a1, a5
                  sra         a0, a5, s4
                  srl         t3, a4, a0
                  nop
                  c.slli      sp, 5
                  c.mv        t5, s8
                  c.addi16sp  sp, -16
                  c.slli      t4, 13
                  c.srai      a3, 15
                  srl         s7, ra, s3
                  rem         s9, a5, s0
                  c.xor       a0, a1
                  divu        s11, s6, t1
                  mul         ra, t2, a4
                  srl         s2, a3, zero
                  sub         s1, a4, a1
                  addi        s0, sp, -524
                  addi        a1, sp, 1759
                  c.srai      a2, 23
                  mul         tp, s4, a6
                  c.sub       a0, a3
                  srl         gp, s7, t5
                  c.and       a2, a0
                  ori         s0, a3, 895
                  sra         zero, a6, s4
                  or          gp, s9, t1
                  divu        a0, s5, s8
                  c.lui       tp, 25
                  sub         a3, tp, a6
                  c.mv        t1, t0
                  c.nop
                  divu        a3, s1, a1
                  and         s1, s10, t5
                  c.mv        s5, a6
                  xori        a6, s6, 1679
                  mul         a7, a0, t4
                  srli        a1, tp, 12
                  c.srai      a3, 29
                  sra         zero, a6, s0
                  div         s3, a4, t0
                  c.lui       a0, 8
                  add         s11, s1, a1
                  or          s1, s5, a1
                  c.nop
                  addi        t5, s10, 1164
                  c.add       ra, tp
                  c.srli      a3, 4
                  auipc       s0, 491603
                  c.nop
                  mul         a1, t0, s5
                  c.addi4spn  a0, sp, 880
                  and         a2, t4, s1
                  c.lui       a4, 17
                  slli        gp, s8, 30
                  li         t0, 0x6b4fd011 #start riscv_int_numeric_corner_stream_18
                  li         gp, 0x1e28d335
                  li         t5, 0x7d1f1dcf
                  li         t4, 0x0
                  li         s8, 0x1
                  li         s11, 0x1
                  li         s9, 0x1
                  li         a3, 0x0
                  li         t3, 0x796e4841
                  li         s3, 0x1
                  c.addi4spn  a0, sp, 656
                  c.mv        s2, s4
                  mulh        a3, s11, t5
                  sub         a5, tp, a3
                  c.addi4spn  a0, sp, 656
                  c.add       ra, ra
                  c.addi4spn  a2, sp, 192
                  c.addi4spn  a0, sp, 432
                  nop
                  c.mv        a4, t3
                  c.add       t0, s9
                  c.nop
                  c.lui       a0, 30
                  nop
                  sub         s7, s7, a0 #end riscv_int_numeric_corner_stream_18
                  div         s8, a0, t0
                  c.addi16sp  sp, 320
                  c.lui       t5, 29
                  c.and       a0, s0
                  c.lui       ra, 4
                  xori        s0, a5, -768
                  srl         zero, t3, s7
                  c.mv        s5, s4
                  srli        zero, s0, 17
                  srli        s9, a5, 17
                  sub         t4, s4, sp
                  sub         a4, a2, t4
                  sltu        a6, sp, a0
                  mulhu       s5, s11, a6
                  c.andi      a0, -1
                  slli        a1, s3, 9
                  ori         ra, sp, -1545
                  or          s6, gp, a2
                  c.mv        gp, s6
                  c.srli      s0, 11
                  c.lui       s8, 26
                  mulh        zero, s11, gp
                  or          a7, s8, t3
                  c.srai      a0, 25
                  sltu        s9, t2, gp
                  sltu        s9, s4, a3
                  sra         s5, a7, tp
                  nop
                  c.slli      s11, 25
                  c.addi4spn  a3, sp, 208
                  sll         a3, t4, s0
                  andi        tp, a0, 484
                  c.srli      a0, 6
                  sub         s3, a3, s7
                  mulhsu      t0, t0, s1
                  ori         t3, s8, 1634
                  mul         s7, s8, s10
                  and         gp, s7, s11
                  c.lui       a5, 7
                  srai        a5, a5, 8
                  c.addi4spn  a2, sp, 544
                  c.mv        t5, ra
                  c.andi      a0, -1
                  c.mv        t4, s1
                  c.andi      a3, -1
                  xori        tp, a4, 266
                  andi        zero, ra, 2036
                  rem         s9, gp, s5
                  srai        s7, s0, 7
                  c.lui       s8, 31
                  xori        a1, t1, -1260
                  srai        gp, a0, 4
                  c.addi4spn  a0, sp, 208
                  c.add       t1, s11
                  addi        a5, tp, -1620
                  add         t0, s7, a7
                  mulhu       zero, s4, a6
                  xor         zero, t1, sp
                  nop
                  ori         s9, t3, -1112
                  divu        a0, sp, s2
                  add         ra, t5, t2
                  c.srli      a0, 24
                  c.xor       a0, a0
                  c.and       a0, a0
                  xori        t5, s7, -1683
                  andi        a1, s5, 1367
                  c.or        s0, a1
                  mul         zero, s8, zero
                  mul         t3, a1, s2
                  addi        s3, a7, -1070
                  slti        t5, a0, -1503
                  xor         zero, a5, s5
                  or          s3, a7, tp
                  slli        s6, s4, 0
                  c.sub       a0, a3
                  addi        a0, a4, 1399
                  c.srai      a2, 30
                  mulh        tp, a0, a2
                  sltiu       s9, t1, 1001
                  mulhsu      s2, ra, s11
                  andi        gp, t1, -105
                  add         sp, t6, a6
                  slt         s0, s3, s2
                  srai        s11, t0, 6
                  c.addi16sp  sp, -16
                  addi        s7, s3, 400
                  mulh        a0, t6, t0
                  c.mv        s11, s3
                  mul         zero, gp, a7
                  auipc       s4, 884285
                  c.addi4spn  a0, sp, 272
                  divu        a5, a1, t4
                  c.add       s3, a6
                  li         t5, 0x0 #start riscv_int_numeric_corner_stream_11
                  li         t3, 0x1
                  li         t4, 0x1
                  li         a2, 0x1
                  li         s11, 0x0
                  li         s4, 0x0
                  li         s3, 0x1
                  li         s9, 0x1
                  li         s1, 0x1
                  li         a6, 0x0
                  c.add       a6, t0
                  addi        s3, t6, -52
                  c.nop
                  c.li        a5, -1
                  mulh        s1, ra, zero
                  addi        t1, t0, -615
                  mul         t3, s10, a7
                  auipc       gp, 727201
                  mulhsu      a0, a2, t3
                  div         s2, a7, t3
                  sub         tp, a4, t3
                  c.lui       t5, 24
                  c.nop
                  rem         t3, t2, s4
                  mulhsu      a3, s8, s10
                  c.lui       a6, 19
                  c.lui       t4, 27
                  nop
                  nop
                  auipc       s11, 691574
                  div         s2, a0, s11
                  mulhu       a2, t5, s10
                  rem         t1, tp, s9
                  c.addi16sp  sp, -16
                  mulhu       s9, s7, s7
                  c.li        s4, -1
                  c.li        a7, -1
                  or          s2, a6, s5
                  c.addi      s11, -1
                  sltiu       a4, a0, 1441
                  xori        a5, a4, -1770
                  add         s11, a4, t3
                  lui         s4, 24267
                  c.xor       a2, a1
                  mul         a6, s5, a1
                  c.addi      a1, 21
                  c.nop
                  sub         s0, a0, gp
                  c.addi16sp  sp, 320
                  c.andi      a2, 11
                  c.addi4spn  a3, sp, 816
                  slti        gp, s1, 1239
                  c.lui       t1, 1
                  c.srli      s0, 12
                  div         s9, sp, s10
                  c.mv        a1, s1
                  divu        zero, t2, s6
                  sltiu       a6, t6, 1384
                  sra         s11, ra, s9
                  or          a1, s10, s8
                  srli        ra, s8, 19
                  addi        zero, s3, -700
                  c.xor       a2, a2
                  c.addi16sp  sp, -16
                  c.sub       a0, a0
                  andi        a7, s10, -58
                  c.srli      a0, 13
                  andi        a2, s2, 312
                  c.add       s7, a2
                  c.li        a4, -1
                  slt         a2, a7, s4
                  divu        sp, s3, s3
                  c.addi      s11, -1
                  slli        s5, s0, 28
                  c.and       s0, s1
                  lui         gp, 389835
                  divu        a0, a6, s8
                  andi        t0, sp, 1146
                  nop
                  c.srai      a3, 28
                  c.and       a3, s1
                  c.srli      a0, 11
                  div         s1, t3, ra
                  srai        a7, a2, 20
                  c.slli      a7, 28
                  c.and       a2, a1
                  auipc       s8, 910284
                  sra         t3, a3, s6
                  c.andi      a0, 23
                  andi        s11, t3, 248
                  sra         zero, s7, a0
                  rem         a4, a3, t2
                  auipc       a1, 695997
                  sra         ra, s7, a3
                  slti        s8, a7, 873
                  div         zero, s6, s6
                  c.mv        a4, t6
                  c.lui       a6, 1
                  or          s9, s11, a7
                  sll         t4, t4, s3
                  lui         t5, 878252
                  addi        t0, s2, 1250
                  add         s6, t3, a1
                  slt         sp, s9, s6
                  c.xor       a5, a0
                  mul         s9, zero, s10
                  xor         t4, t6, a1
                  srli        gp, a2, 2
                  c.li        s11, -1
                  c.addi16sp  sp, 160
                  c.add       s4, tp
                  addi        t4, s3, -1442
                  rem         a4, t4, s9
                  xori        s11, tp, 1144
                  c.andi      a3, 14
                  xori        s7, a5, 1004
                  rem         s2, t5, t2
                  c.and       a0, a0
                  add         s4, s8, zero
                  slti        s4, a0, 1830
                  c.li        s8, 18
                  slti        a7, t1, -1453
                  c.add       s11, t1
                  sub         t3, zero, s1
                  c.nop
                  slti        a7, s11, -1916
                  addi        a6, s9, -1109
                  nop
                  addi        sp, t2, -569
                  c.addi      a4, -1
                  mul         s7, sp, s1
                  sra         gp, t2, s4
                  c.lui       ra, 20
                  c.xor       a0, a1
                  c.slli      sp, 5
                  div         t0, a1, t0
                  c.slli      a0, 18
                  c.addi4spn  a2, sp, 224
                  ori         s9, s1, -324
                  ori         a1, s10, 526
                  mul         zero, s5, s9
                  sll         tp, ra, t3
                  c.nop
                  sub         t1, t0, a0
                  mul         s3, s9, s5
                  sll         sp, s10, s11
                  c.xor       a2, a3
                  andi        a4, t1, -1665
                  c.addi      a5, -1
                  divu        t4, a0, s5
                  div         s2, sp, a3
                  srl         gp, a1, s1
                  c.li        t3, 21
                  srl         s3, tp, s7
                  auipc       a4, 307978
                  srai        gp, s1, 6
                  c.srli      a2, 8
                  c.srai      s0, 3
                  c.or        a0, s1
                  sltu        s2, ra, s0
                  or          t4, t5, t1
                  xori        s11, s10, -1630
                  c.mv        ra, t3
                  mulhu       zero, s11, a5
                  lui         s8, 229570
                  srli        a6, a0, 7
                  c.add       a7, s3
                  nop
                  or          s8, s4, t1
                  slt         a7, s6, ra
                  c.nop
                  sub         s6, t0, t2
                  c.srai      a3, 2
                  and         a3, s8, ra
                  div         s7, a5, ra
                  nop
                  c.add       t3, a2
                  c.sub       a0, a3
                  c.xor       a3, a5
                  srli        s11, s0, 8
                  slli        s5, t5, 20
                  mulhu       zero, a5, a7
                  slt         t5, a5, gp
                  c.xor       s0, a2
                  sltiu       s9, tp, 170
                  c.and       a2, a1
                  srl         s9, s10, s9
                  c.addi      a0, 26
                  sra         zero, t1, s8
                  c.xor       a0, a2
                  c.srli      a0, 10
                  and         s6, sp, a1
                  slt         s8, t2, s5
                  c.sub       a3, s1
                  c.mv        s1, s7
                  mulhsu      a3, ra, t6
                  lui         t3, 960158
                  slti        tp, s11, -1997
                  c.and       a3, a3
                  sltiu       s4, t0, 455
                  c.add       s2, s9
                  srai        a1, s0, 14
                  c.and       a0, a2
                  divu        gp, a4, t0
                  c.add       a1, t6
                  mulhu       zero, tp, s4
                  sltu        s3, s6, s6
                  c.andi      a2, -1
                  c.li        a6, -1
                  c.li        s8, 26
                  mul         ra, s6, t4
                  sltu        tp, a6, t1
                  sltiu       a5, gp, -1034
                  slt         s4, t5, s7
                  c.addi4spn  a3, sp, 128
                  srli        a2, s3, 31
                  srli        s1, a0, 4
                  c.addi      ra, 21
                  lui         t4, 893039
                  add         s11, a0, s0
                  c.sub       a3, a2
                  sll         s7, s7, t0
                  lui         a5, 1005643
                  nop
                  c.andi      a0, -1
                  c.srli      a3, 28
                  add         s9, s3, a3
                  c.andi      a2, 8
                  c.addi      t1, 3
                  nop
                  addi        t4, t0, 1188
                  sra         t3, t3, sp
                  divu        a2, tp, a4
                  c.xor       a1, a2
                  mulh        a1, t4, a4
                  c.mv        s2, s3
                  sra         a2, a6, a3
                  c.lui       a2, 16
                  sll         a5, s5, a3
                  c.or        a2, a3
                  auipc       a7, 334967
                  mulh        a6, s7, t6
                  sltiu       s4, a5, -378
                  xor         s4, s8, ra
                  c.andi      a2, -1
                  mulhsu      s2, s7, a0
                  addi        tp, t3, 340
                  c.xor       a0, a2
                  c.addi      ra, 20
                  c.sub       a0, a3
                  divu        t4, a0, tp
                  rem         a4, a5, s1
                  mulh        t5, t1, a7
                  xor         t3, gp, s11
                  c.li        a6, 16
                  c.mv        s2, a5
                  c.nop
                  c.nop
                  c.and       a2, s1
                  srli        zero, t0, 18
                  xor         gp, t5, gp
                  sub         t4, s7, a2
                  slti        t0, a6, 935
                  slt         s4, ra, s6
                  slli        a2, s7, 29
                  c.srai      a5, 12
                  mulh        t4, zero, t4
                  xori        s2, a7, -1275
                  or          zero, a2, s11
                  sub         s9, s11, s0
                  rem         s1, tp, s9
                  andi        a0, a0, -613
                  srai        s5, s7, 17
                  c.add       s3, s2
                  c.or        a0, a0
                  c.addi4spn  a0, sp, 480
                  c.srli      a1, 13
                  xori        s8, t3, -640
                  srl         a7, s3, a1
                  sub         t5, ra, t3
                  c.or        a0, a0
                  xor         zero, a7, s10
                  mulhsu      ra, t1, a1
                  srli        a1, t0, 16
                  c.or        s0, a1
                  andi        s9, a1, -445
                  sltu        s1, tp, t3
                  add         zero, s11, s5
                  sll         s9, t5, s5
                  srli        t5, t4, 20
                  c.andi      a0, 3
                  slti        s2, s7, -375
                  srli        s9, s6, 12
                  srli        t5, s8, 28
                  c.or        a0, a1
                  mulh        s3, s10, ra
                  c.li        a1, 22
                  srli        s6, a6, 5
                  divu        s5, t5, s3
                  nop
                  c.addi16sp  sp, -16
                  sub         t3, a6, s9
                  c.mv        ra, s9
                  c.lui       gp, 17
                  sltiu       s9, tp, -993
                  xori        s7, t2, -1474
                  c.slli      a3, 26
                  addi        t0, ra, -526
                  sra         ra, zero, t6
                  slt         s5, t0, s5
                  nop
                  c.and       a0, a2
                  div         s8, sp, s0
                  mulhu       zero, s7, s2
                  c.li        ra, -1
                  xor         t0, a6, s6
                  sltiu       a6, s3, 106
                  sltu        s11, s9, s2
                  mulhsu      t1, a1, s1
                  and         t5, t3, gp
                  div         s2, s2, a3
                  andi        gp, t2, -1265
                  c.slli      s0, 18
                  c.srli      a3, 8
                  c.li        s2, -1
                  sll         s3, a4, ra
                  mul         s0, t0, s0
                  sltu        s2, sp, t0
                  mulh        a6, zero, a3
                  c.addi16sp  sp, -16
                  andi        s0, a3, 62
                  lui         t5, 50059
                  div         s1, t1, gp
                  andi        a3, s0, -1977
                  c.and       a5, a1
                  slli        s9, t2, 12
                  andi        a2, ra, -1163
                  slli        a3, s11, 24
                  c.addi4spn  a0, sp, 624
                  srl         s0, gp, s11
                  addi        s5, s0, 916
                  xor         sp, t2, s10
                  slli        s4, ra, 19
                  c.addi16sp  sp, 144
                  nop
                  c.srli      a0, 26
                  and         t3, t0, sp
                  c.li        s3, -1
                  xor         t3, a5, a1
                  addi        t1, t0, -1361
                  c.addi      a6, -1
                  c.addi16sp  sp, -16
                  slli        a7, s7, 27
                  sltiu       s3, t4, 843
                  c.sub       a0, a1
                  c.srli      a2, 2
                  mulh        ra, t0, ra
                  c.sub       a4, a2
                  addi        zero, t6, 1561
                  slli        s3, s5, 27
                  li         t5, 0x7476a7f #start riscv_int_numeric_corner_stream_0
                  li         t4, 0x1
                  li         t3, 0x0
                  li         s8, 0x0
                  li         s11, 0x1c2b546
                  li         a1, 0x719c050a
                  li         a4, 0x0
                  li         a2, 0x0
                  li         s9, 0x7fb9a9e3
                  li         tp, 0x0
                  nop
                  c.addi4spn  a1, sp, 176
                  addi        sp, a1, 1730
                  c.sub       a0, a2
                  div         s1, s11, t0
                  auipc       s4, 711668
                  c.addi4spn  a0, sp, 176
                  nop
                  mulhsu      zero, s1, s6
                  c.addi      a1, -1
                  div         t3, t2, gp
                  c.mv        tp, s9
                  div         a5, s11, ra
                  c.lui       s3, 1
                  sub         s11, s1, s4
                  c.sub       a2, a2
                  c.li        s3, -1
                  c.addi16sp  sp, 16
                  mulhu       a5, t6, t2
                  c.mv        a0, ra
                  mulhsu      tp, s10, s0
                  mul         s1, s11, s10
                  c.add       s3, t1
                  c.srai      a1, 6
                  c.sub       a0, a3
                  sltu        t3, a3, t3
                  addi        zero, gp, 811
                  andi        a5, s2, -141
                  c.mv        a6, a7
                  c.andi      a3, 22
                  and         s5, s11, s7
                  add         a1, s7, s5
                  srli        sp, t6, 24
                  slti        s4, a1, 681
                  sub         t0, s9, s7
                  c.srli      a3, 23
                  sub         t0, s10, s10
                  mulhu       s9, s7, a6
                  c.addi16sp  sp, 16
                  divu        s5, t0, gp
                  srai        zero, a0, 15
                  srli        a0, a6, 1
                  nop
                  sll         tp, t4, s0
                  sub         a2, a1, a2
                  sll         sp, t5, s1
                  andi        zero, ra, 932
                  sll         a4, s3, a1
                  slt         a1, t5, s11
                  nop
                  srl         s7, a0, s8
                  sll         gp, t0, a3
                  addi        t5, s1, -1887
                  sltiu       s6, t4, 1485
                  mul         a4, a5, tp
                  c.slli      ra, 4
                  nop
                  mulh        s6, s7, t4
                  auipc       ra, 327563
                  c.sub       a0, a0
                  c.mv        ra, s10
                  c.addi4spn  a0, sp, 240
                  c.li        s8, -1
                  xor         a6, a6, s7
                  srli        s11, t3, 13
                  auipc       a2, 892964
                  sll         t0, s9, a1
                  c.addi      ra, -1
                  c.srli      a0, 6
                  rem         zero, t2, ra
                  c.addi      s0, 23
                  xori        ra, zero, 1300
                  c.and       a0, a0
                  c.and       a4, a4
                  c.lui       s11, 24
                  c.lui       a1, 7
                  add         s6, sp, a7
                  c.xor       a0, a1
                  auipc       t5, 967294
                  and         tp, zero, t5
                  xor         s11, a3, s6
                  c.or        a3, a5
                  sltiu       s2, s2, 1423
                  srai        s0, a1, 12
                  mul         zero, s5, s0
                  c.mv        ra, ra
                  c.addi16sp  sp, 128
                  or          zero, s7, a4
                  lui         s7, 770861
                  c.nop
                  or          s0, zero, gp
                  c.add       ra, a0
                  c.lui       ra, 26
                  c.addi16sp  sp, -16
                  slt         a4, t2, a3
                  rem         a2, t4, s9
                  c.add       t5, a6
                  c.li        t5, 3
                  c.addi4spn  a1, sp, 464
                  c.addi16sp  sp, -16
                  sll         sp, t4, t3
                  c.addi16sp  sp, -16
                  c.srli      a0, 20
                  div         s2, a7, s1
                  add         a0, a2, a2
                  c.li        s0, 3
                  div         s4, a3, zero
                  c.li        a1, 4
                  rem         ra, a4, zero
                  sub         a4, s7, s6
                  add         zero, s2, s9
                  lui         t5, 663869
                  c.addi      s0, 9
                  mulhsu      s7, zero, s10
                  srli        a1, t6, 29
                  c.addi      tp, -1
                  sra         s4, zero, s10
                  c.sub       a3, a1
                  c.addi4spn  a2, sp, 176
                  c.addi      ra, -1
                  c.slli      t1, 25
                  srli        s9, s2, 18
                  and         tp, s10, s11
                  andi        gp, a3, 1949
                  sra         t3, t0, a7
                  addi        t1, a1, -1126
                  c.xor       a3, a5
                  srai        a6, s6, 10
                  div         t1, a2, a3
                  c.srai      a3, 25
                  c.li        ra, 30
                  srli        sp, s9, 31
                  c.mv        s1, a0
                  c.and       a3, a1
                  srl         gp, s7, sp
                  c.addi16sp  sp, -16
                  srli        a2, a3, 14
                  slli        s4, tp, 9
                  c.srli      a0, 1
                  mul         s11, tp, tp
                  c.slli      s3, 30
                  c.srli      a0, 16
                  c.nop
                  c.add       gp, a5
                  c.sub       a3, a3
                  c.sub       a0, a1
                  c.sub       a2, s1
                  auipc       sp, 1037683
                  c.mv        s5, t6
                  ori         s7, s1, 1068
                  ori         a7, a5, -1161
                  srai        ra, s11, 18
                  div         s1, s7, s1
                  slti        zero, s9, -964
                  mul         zero, t0, a0
                  c.lui       t5, 12
                  mul         s11, s3, s11
                  or          s7, a6, t2
                  xori        a4, a2, -702
                  c.or        a0, a0
                  c.lui       t1, 26
                  c.slli      s11, 19
                  or          a7, sp, ra
                  div         s8, s1, s3
                  c.slli      s11, 27
                  c.xor       a0, a1
                  c.addi16sp  sp, -16
                  c.add       s6, a6
                  c.li        a5, -1
                  lui         s1, 474648
                  lui         a4, 481138
                  mulhsu      a4, s2, a5
                  xor         s11, t6, s1
                  rem         gp, s3, a6
                  add         s7, a3, t2
                  mulhu       a3, gp, s1
                  c.srli      a3, 31
                  c.slli      ra, 12
                  srli        t1, tp, 16
                  auipc       t3, 533331
                  sll         a0, t5, t2
                  ori         s9, ra, -102
                  nop
                  slti        t3, s0, -1193
                  c.nop
                  xor         a7, s5, t5
                  c.addi16sp  sp, -16
                  c.addi4spn  a4, sp, 480
                  xori        s6, a0, 620
                  slli        s7, s0, 13
                  slli        s0, a2, 21
                  c.lui       s0, 22
                  c.srai      a3, 24
                  srl         gp, a5, a1
                  c.srli      a2, 21
                  srl         zero, s7, a5
                  srli        zero, t5, 10
                  c.or        a1, a1
                  slti        a4, t6, 707
                  sltu        t5, a5, s8
                  slti        a3, s1, -1921
                  auipc       a0, 765671
                  or          a5, s10, s7
                  and         s5, a6, a1
                  lui         a7, 695681
                  c.nop
                  mulhu       t5, t5, t0
                  srai        t3, zero, 12
                  slt         zero, s6, sp
                  sltu        a7, tp, t1
                  srai        a7, tp, 12
                  slti        t1, s5, -500
                  c.xor       a2, a1
                  and         a5, s5, t6
                  c.addi4spn  a0, sp, 800
                  div         s1, t1, s3
                  and         s2, tp, t4
                  nop
                  slt         t4, t6, s11
                  c.addi16sp  sp, 48
                  c.and       a5, s1
                  add         s0, s6, t4
                  nop
                  addi        s0, a4, 1905
                  mul         s0, s10, s1
                  mulhu       a7, a5, s8
                  mul         zero, t2, a4
                  srai        gp, s8, 27
                  sltu        gp, a2, s4
                  or          a2, t0, s2
                  ori         zero, a5, 1196
                  c.li        sp, 21
                  ori         a7, a4, 1510
                  div         zero, a7, sp
                  sltiu       gp, s3, -98
                  rem         zero, tp, s6
                  c.or        s1, s1
                  divu        zero, a3, s6
                  slt         s1, s7, t2
                  c.addi      t4, -1
                  c.sub       a5, a2
                  c.lui       t1, 13
                  srli        s3, ra, 7
                  c.srai      a0, 2
                  mulhu       zero, a4, s4
                  mulh        a2, t4, tp
                  divu        gp, a4, s6
                  sra         a6, s7, s1
                  c.slli      s2, 31
                  c.add       s6, s8
                  nop
                  rem         s3, t6, zero
                  auipc       t4, 28627
                  mulh        a5, zero, a7
                  sub         a1, s8, sp
                  sra         s5, a4, a0
                  andi        s8, s9, 143
                  srl         zero, a0, a1
                  xor         t3, a4, ra
                  auipc       a3, 398247
                  sll         ra, s2, a1
                  c.addi16sp  sp, 384
                  mulhu       s8, a5, sp
                  lui         t3, 711350
                  slti        a4, s0, -818
                  nop
                  mulhsu      a2, s5, s0
                  mulhsu      s3, s8, s0
                  c.sub       a0, a3
                  c.and       a1, a1
                  add         tp, a1, s10
                  c.sub       a0, a2
                  andi        a5, t4, -1559
                  c.addi      a6, 20
                  mulhsu      zero, sp, s0
                  c.andi      a3, -1
                  c.li        a4, -1
                  divu        s5, s8, a0
                  mulhsu      t5, a4, gp
                  c.or        a0, a0
                  nop
                  mulhsu      s1, s10, s7
                  srl         sp, t1, a4
                  mulh        t3, t2, a5
                  c.nop
                  mulhu       zero, t0, t1
                  mulh        gp, a7, s0
                  nop
                  c.addi      s8, -1
                  slli        a7, ra, 4
                  sll         s5, s10, s7
                  lui         ra, 1011137
                  rem         s6, s2, a3
                  auipc       s11, 935697
                  rem         s3, zero, a7
                  c.andi      a2, -1
                  c.addi16sp  sp, 160
                  c.xor       a0, a3
                  lui         s3, 124946
                  c.mv        ra, s5
                  xori        zero, t3, 1252
                  c.lui       a1, 11
                  sltu        zero, s8, t6
                  c.addi      a7, 11
                  c.srai      a0, 10
                  c.li        s9, -1
                  nop
                  mul         tp, s3, s0
                  c.sub       a0, a0
                  c.sub       s0, a3
                  srli        s0, t3, 16
                  xor         s1, a7, a0
                  c.sub       a0, a3
                  c.or        a2, a2
                  add         zero, t4, t1
                  mul         zero, t5, a3
                  c.andi      a0, 16
                  srli        s2, a2, 9
                  add         s7, s9, s7
                  c.addi16sp  sp, -16
                  c.lui       a3, 20
                  nop
                  c.mv        s2, s0
                  c.li        a5, -1
                  c.and       a3, a3
                  addi        ra, t2, 1146
                  c.add       t4, a3
                  mulhsu      tp, s11, s6
                  c.lui       s5, 1
                  slti        s2, s5, 423
                  mul         a5, a4, s8
                  add         t5, a7, s0
                  c.or        a0, a1
                  c.addi16sp  sp, 304
                  c.slli      s11, 22
                  div         s5, t1, s11
                  sll         s0, a5, tp
                  sll         ra, a7, s7
                  c.xor       a2, a3
                  slti        t1, zero, -1977
                  sltu        s4, t4, s4
                  divu        ra, s4, t3
                  c.addi4spn  a1, sp, 672
                  c.addi16sp  sp, -16
                  ori         s0, s3, -797
                  xor         a3, t1, s11
                  slli        t5, a6, 31
                  sltiu       a7, a0, 1692
                  mul         s0, a3, a0
                  c.xor       a5, a2
                  c.mv        a3, sp
                  srli        s11, s5, 2
                  ori         s8, a0, -1860
                  c.xor       a0, s1
                  ori         a0, s5, 1972
                  mulhsu      s7, gp, zero
                  auipc       a7, 890494
                  c.addi4spn  a2, sp, 576
                  xor         sp, ra, a1
                  c.srai      a3, 1
                  c.or        a0, a2
                  slti        s11, a0, -1591
                  slti        tp, a1, -766
                  srli        a0, t1, 16
                  c.and       a2, a1
                  slli        t0, s5, 1
                  c.sub       a3, a1
                  c.or        a0, a4
                  c.mv        ra, t0
                  sll         t4, a6, zero
                  c.slli      ra, 28
                  c.mv        t4, t0
                  c.addi      gp, -1
                  c.li        s9, -1
                  xor         zero, s4, s7
                  c.mv        s7, t4
                  c.and       a3, s0
                  c.andi      a2, 30
                  ori         tp, s8, -651
                  nop
                  sra         t3, t1, ra
                  andi        tp, t0, -655
                  srli        t3, s1, 31
                  div         a2, a7, s2
                  nop
                  slti        zero, s11, -157
                  c.addi16sp  sp, 240
                  c.addi      ra, 30
                  srli        s3, s6, 27
                  c.and       a0, a0
                  c.slli      a0, 4
                  sra         s3, t6, t4
                  mul         s1, s11, a2
                  xori        a7, s3, -341
                  sll         s11, s7, s9
                  rem         a1, a7, a4
                  addi        s4, s0, 550
                  c.lui       t1, 10
                  sltu        s2, s7, a2
                  slt         s5, t2, t0
                  add         s0, a6, a1
                  c.mv        ra, ra
                  andi        t1, sp, -101
                  sltiu       s1, zero, -279
                  c.srli      a1, 16
                  srli        s1, s10, 12
                  srai        a1, a2, 25
                  mul         t3, s4, t4
                  c.or        a0, a2
                  sll         ra, s6, s8
                  ori         a1, s3, 1020
                  c.lui       a2, 18
                  c.add       t1, ra
                  slli        s3, sp, 17
                  sltu        s6, t2, s7
                  xor         a1, tp, t5
                  divu        t1, t2, a2
                  c.srai      a0, 29
                  lui         s7, 767807
                  xor         s5, ra, gp
                  xori        t3, t2, -418
                  ori         a1, zero, -1266
                  auipc       a0, 733765
                  mulhu       sp, s0, s11
                  c.and       a0, a2
                  divu        t0, s0, t3
                  ori         a7, a7, 787
                  c.sub       a0, s1
                  c.addi16sp  sp, 176
                  c.and       a3, a1
                  and         a3, t5, zero
                  srl         a0, tp, a5
                  srl         tp, a1, t4
                  nop
                  c.addi      s11, 30
                  rem         s6, t6, a5
                  c.slli      s1, 27
                  slti        t4, a1, 780
                  c.lui       s3, 18
                  c.addi      s2, -1
                  c.li        a2, 11
                  rem         s8, a7, t0
                  slti        a2, s3, 1298
                  addi        a1, ra, -1216
                  c.mv        a3, s9
                  sll         a4, a5, sp
                  srai        s11, t1, 23
                  mulhu       zero, s1, t1
                  c.addi      sp, 6
                  c.addi16sp  sp, -16
                  c.add       ra, s10
                  xor         s3, ra, ra
                  slti        a7, t2, 1959
                  sltu        tp, a6, s7
                  slli        a5, s3, 29
                  ori         s5, s8, -1771
                  auipc       a4, 288362
                  c.slli      a5, 24
                  nop
                  rem         s0, s3, s1
                  c.addi16sp  sp, -16
                  c.srli      a0, 1
                  xori        a3, a5, 979
                  c.mv        t1, sp
                  c.nop
                  rem         ra, a2, t0
                  c.addi      t0, 30
                  addi        s7, s1, -632
                  c.slli      gp, 19
                  rem         s2, a6, s0
                  addi        a3, t4, 1594
                  or          t0, t0, sp
                  ori         s4, t1, 1154
                  c.slli      ra, 6
                  ori         t1, s4, 1357
                  srai        s1, s0, 2
                  nop
                  srai        a4, t3, 11
                  c.slli      a2, 1
                  sra         a0, s11, s6
                  c.addi      ra, 4
                  rem         s3, a6, s7
                  c.mv        s2, t1
                  addi        a7, s7, 1254
                  ori         a7, s5, 814
                  mulhu       zero, s10, a5
                  srli        a7, s10, 9
                  mul         s1, t2, s6
                  xor         a3, a5, t4
                  c.mv        s7, s11
                  addi        s4, s2, 1263
                  mulh        zero, s2, s8
                  auipc       t4, 302639
                  c.sub       s0, s1
                  addi        s8, s7, 1832
                  auipc       a7, 432684
                  sra         s1, gp, s1
                  c.nop
                  mulhu       ra, s9, a0
                  and         a0, a5, t1
                  c.andi      a0, 23
                  slt         s1, t3, a1
                  and         a3, a6, s4
                  c.lui       tp, 16
                  add         a2, s6, s6
                  ori         a6, s5, 1411
                  c.add       s9, t0
                  and         a4, sp, s5
                  c.add       s11, a4
                  slti        a3, a7, 2029
                  c.mv        s11, s7
                  lui         t0, 1002268
                  sub         t3, a7, s0
                  c.lui       a7, 25
                  c.xor       a0, s1
                  slti        t4, s6, -364
                  slt         s8, s3, tp
                  sltiu       t5, t1, -1110
                  c.and       a1, a2
                  rem         a6, a7, t3
                  sltiu       zero, a7, 890
                  c.addi4spn  a0, sp, 784
                  auipc       zero, 672261
                  c.nop
                  mulhsu      t4, t3, gp
                  c.nop
                  andi        a3, s1, 651
                  or          a1, tp, s4
                  srai        s6, a0, 14
                  sll         gp, s8, a2
                  sub         a0, a7, s2
                  mul         a2, s10, a5
                  divu        t1, ra, s7
                  c.li        ra, 23
                  c.addi4spn  a1, sp, 352
                  c.xor       a3, a1
                  c.addi16sp  sp, 128
                  c.xor       a1, s1
                  mul         a5, a7, s3
                  mul         a0, s8, s10
                  sra         a1, s6, s0
                  c.add       a0, s7
                  xori        zero, a5, -1000
                  c.addi4spn  a0, sp, 704
                  lui         s1, 226568
                  c.xor       a0, a5
                  and         zero, t0, t5
                  c.xor       a5, a0
                  slti        zero, s0, 1125
                  c.li        s1, 28
                  mulhsu      s1, a0, t1
                  c.addi16sp  sp, 320
                  c.sub       a0, a3
                  sub         s1, t4, t4
                  mulh        s8, t3, gp
                  c.add       a7, t4
                  c.srli      a1, 30
                  nop
                  and         zero, a1, a1
                  addi        ra, s11, -1154
                  c.xor       s1, a3
                  and         s3, s4, a1
                  srai        gp, t2, 23
                  mulh        a6, a3, s10
                  sra         zero, a0, s11
                  c.mv        a2, a6
                  c.andi      a0, 23
                  addi        s2, sp, -852
                  divu        s4, s4, s11
                  auipc       a7, 916016
                  slt         a5, t2, sp
                  c.sub       s0, s0
                  c.nop
                  div         a7, t1, a7
                  mulhsu      a5, sp, a1
                  c.andi      a0, 5
                  rem         s1, s1, a6
                  c.mv        t5, a4
                  divu        s9, s1, gp
                  c.or        a3, a3
                  slli        s6, a0, 11
                  c.li        a3, -1
                  c.sub       a0, a1
                  srl         s7, s1, a4
                  c.and       a0, a1
                  mulhu       t4, t3, a4
                  c.xor       a3, a3
                  div         s1, zero, zero
                  srli        s11, t6, 25
                  lui         zero, 866846
                  c.addi4spn  a0, sp, 16
                  divu        t0, a2, s2
                  slli        t4, s9, 15
                  c.addi4spn  a2, sp, 352
                  sltu        zero, tp, a5
                  mulhu       a1, ra, s4
                  andi        s11, s7, -1532
                  c.li        sp, -1
                  c.addi4spn  s1, sp, 608
                  slt         a6, t4, t1
                  div         s5, tp, s6
                  c.or        a0, s0
                  slli        a0, gp, 17
                  c.slli      s1, 1
                  lui         s2, 913499
                  c.addi4spn  a2, sp, 592
                  addi        s8, a2, -1506
                  c.addi      t4, -1
                  add         s11, s0, s9
                  nop
                  divu        a0, zero, t3
                  c.addi      t5, -1
                  c.or        a0, a0
                  mulhsu      s7, s2, ra
                  auipc       s1, 13747
                  sll         t3, s2, a3
                  auipc       gp, 391953
                  slti        s7, s3, 668
                  or          ra, s6, a6
                  mulh        a1, s2, a7
                  srl         a4, s7, s3
                  sll         t0, a6, t1
                  xor         a4, a0, a0
                  auipc       s6, 79241
                  sub         a1, a4, s2
                  ori         s8, a3, -187
                  sltu        a2, s3, s2
                  andi        t1, a4, 1303
                  ori         s6, t6, -1522
                  ori         s6, tp, 241
                  c.srli      a2, 25
                  slt         zero, a1, a3
                  andi        s0, t4, 1319
                  sub         ra, s0, s8
                  slti        s1, t3, -380
                  slt         s0, a3, s0
                  c.lui       gp, 3
                  nop
                  c.srai      a3, 30
                  c.addi16sp  sp, 16
                  auipc       t4, 359232
                  srl         s11, s5, t0
                  addi        s8, zero, 807
                  c.and       a2, a4
                  c.li        t3, -1
                  c.mv        sp, t1
                  c.srli      a2, 16
                  mulh        sp, s7, t6
                  slli        sp, t1, 22
                  c.andi      a1, -1
                  slli        s1, a0, 9
                  srli        s11, a4, 12
                  addi        a0, a1, 1608
                  ori         s11, s2, -156
                  slli        t5, t0, 14
                  c.addi4spn  a1, sp, 832
                  slt         zero, a1, t2
                  lui         s8, 392299
                  nop
                  mul         t5, s5, t0
                  c.slli      a5, 16
                  auipc       a6, 38167
                  nop
                  c.li        a3, 1
                  xor         s4, s1, ra
                  c.andi      a0, -1
                  c.and       a2, a1
                  c.xor       a2, s0
                  lui         s4, 811380
                  c.sub       a0, a5
                  c.srli      s0, 31
                  xori        ra, a1, -240
                  srli        zero, s4, 11
                  c.addi      s7, -1
                  c.addi      a0, 31
                  c.andi      a2, 20
                  sltiu       s8, t5, 722
                  auipc       a4, 198545
                  ori         a4, t6, -566
                  mul         a7, tp, s7
                  c.nop
                  slt         a2, tp, ra
                  c.srai      a5, 27
                  c.li        s1, 18
                  c.srai      a0, 2
                  c.addi4spn  a0, sp, 208
                  slli        s8, s6, 2
                  nop
                  c.lui       t5, 5
                  c.srli      a0, 30
                  slli        a5, ra, 4
                  nop
                  c.addi      gp, -1
                  rem         s6, a5, a4
                  addi        sp, s9, -1352
                  andi        s3, a5, 1254
                  c.sub       a0, a1
                  sltiu       s2, t3, 420
                  sltu        tp, a0, t2
                  c.srai      a0, 11
                  c.addi16sp  sp, 176
                  slt         tp, s9, t1
                  c.lui       s2, 4
                  sltu        zero, s7, s7
                  sra         t4, t0, t5
                  c.addi16sp  sp, -16
                  srai        zero, s3, 13
                  lui         s5, 102497
                  mulh        t5, gp, s11
                  mul         t1, tp, t4
                  c.srli      a0, 12
                  add         s2, tp, a4
                  div         a4, t6, s2
                  slli        gp, s9, 3
                  c.nop
                  c.and       a2, a3
                  or          t1, s4, t0
                  sltu        t0, gp, s2
                  addi        t1, s10, -2012
                  c.or        a0, a3
                  lui         a7, 419064
                  c.andi      a2, -1
                  slli        a4, t5, 9
                  c.srai      s0, 30
                  sub         s6, tp, a1
                  sra         s0, ra, t2
                  mulh        zero, s4, sp
                  andi        a3, s9, -211
                  mulhsu      zero, a5, s7
                  divu        s1, t1, t5
                  sltu        sp, a6, a2
                  c.add       ra, ra
                  mulhsu      t1, s9, t6
                  slt         t0, a5, s9
                  ori         t5, s6, -999
                  mulhsu      a1, a3, t3
                  c.andi      a0, -1
                  mulhsu      t1, a6, t2
                  slli        s6, zero, 7
                  c.andi      a0, 11
                  c.srai      a0, 1
                  slt         t1, a4, tp
                  c.addi16sp  sp, 336
                  c.lui       s2, 20
                  c.addi      t3, 12
                  c.slli      ra, 28
                  slt         ra, t1, s9
                  xor         a0, tp, t1
                  nop
                  c.slli      ra, 7
                  sltiu       t1, s8, 608
                  mulh        s4, a6, t4
                  andi        a2, tp, 456
                  sltiu       s8, s11, 1776
                  and         zero, a2, a4
                  c.or        a0, a1
                  c.addi16sp  sp, -16
                  c.addi16sp  sp, -16
                  c.add       t4, s2
                  xor         t0, s5, s3
                  c.add       ra, s1
                  c.or        a0, a1
                  auipc       a3, 254108
                  sra         s11, a2, s5
                  c.addi16sp  sp, -16
                  srl         a1, t3, ra
                  rem         tp, a7, s4
                  xori        s4, t5, 1903
                  c.nop
                  srl         t1, gp, a0
                  srai        sp, a1, 29
                  c.nop
                  c.add       t3, s9
                  div         tp, tp, a3
                  sltiu       a3, ra, 1462
                  slli        t3, s8, 25
                  li         t5, 0xb8e26aa #start riscv_int_numeric_corner_stream_4
                  li         t4, 0x0
                  li         t3, 0x0
                  li         s11, 0x0
                  li         a5, 0x0
                  li         s2, 0x1
                  li         a1, 0x0
                  li         s9, 0x2690d201
                  li         gp, 0x1
                  li         sp, 0x1
                  c.mv        t3, s6
                  sub         t4, a7, sp
                  div         gp, tp, s11
                  c.addi4spn  a1, sp, 192
                  add         zero, a3, a7
                  c.addi16sp  sp, -16
                  c.nop
                  c.addi16sp  sp, -16
                  c.mv        sp, t3
                  mulh        t4, s6, t0
                  auipc       s7, 101685
                  c.addi      ra, 22
                  c.sub       a0, a3
                  c.addi      sp, 21
                  nop
                  nop
                  mul         s1, s3, s11
                  c.lui       s1, 14
                  mulh        s8, t3, s5
                  c.sub       a4, a3
                  sltiu       zero, a0, -116
                  mulh        zero, tp, s2
                  sra         s5, s5, s5
                  c.addi16sp  sp, -16
                  and         a3, t5, a4
                  and         s11, t4, a0
                  mulhsu      gp, s9, tp
                  andi        zero, s0, 1689
                  mul         a7, sp, s0
                  div         s4, s9, t5
                  c.andi      a3, 3
                  c.srli      a2, 22
                  c.sub       a3, a0
                  mulhsu      s3, s8, ra
                  nop
                  sltu        s8, s10, s5
                  c.addi4spn  a3, sp, 736
                  c.nop
                  c.addi      gp, 15
                  slli        s8, s4, 9
                  ori         s5, t5, -663
                  c.lui       s0, 1
                  xor         a7, s3, s3
                  mulhu       zero, s6, s2
                  div         s3, a4, s7
                  sll         zero, t0, a5
                  div         s2, a6, a2
                  c.addi      ra, -1
                  ori         s5, s7, -357
                  mulhu       s2, t6, s9
                  c.slli      s6, 8
                  xori        gp, t5, 1931
                  sub         zero, a1, s6
                  sltu        s11, a5, s1
                  srli        s9, a0, 15
                  c.addi      a4, -1
                  andi        a7, a2, -1324
                  c.add       tp, t5
                  c.nop
                  sltiu       a1, s7, 1464
                  c.slli      s3, 10
                  c.or        a2, s0
                  div         zero, t0, s3
                  c.nop
                  divu        s3, t5, s8
                  c.lui       a2, 2
                  sra         a3, s3, a6
                  sub         s1, a7, a2
                  andi        s4, zero, -713
                  nop
                  c.addi4spn  a0, sp, 832
                  c.slli      s2, 26
                  c.mv        ra, t2
                  sltu        s7, tp, a1
                  mul         t0, zero, s7
                  sub         a0, zero, s2
                  lui         a0, 188423
                  sra         a7, t2, t2
                  c.xor       a0, a1
                  rem         gp, s2, a3
                  sll         a0, tp, s6
                  sll         zero, a6, s6
                  c.add       s4, s3
                  slti        sp, s10, 1600
                  mulh        zero, t6, t4
                  rem         a1, tp, a2
                  auipc       s2, 921117
                  slli        t1, sp, 26
                  mul         zero, a4, t3
                  c.nop
                  add         a0, t4, s1
                  sll         s0, a1, s5
                  c.addi      t3, 19
                  sltiu       s2, s0, 1735
                  div         s2, s8, s0
                  rem         tp, s7, s0
                  c.add       a1, s6
                  ori         a1, s4, 629
                  srli        zero, s5, 27
                  srli        zero, s0, 0
                  sll         zero, t3, tp
                  c.or        a0, a1
                  divu        s4, a2, s4
                  mulh        a4, a5, t5
                  srai        a2, s3, 27
                  mulh        sp, a5, t6
                  c.srli      a0, 26
                  ori         a3, t3, -131
                  c.srli      a0, 27
                  ori         a5, a1, 1590
                  sra         s4, ra, a7
                  c.add       s8, ra
                  c.srai      a0, 12
                  auipc       ra, 747205
                  sltiu       t1, t3, -1434
                  add         zero, zero, ra
                  divu        tp, gp, s5
                  lui         zero, 122521
                  c.or        a0, a3
                  mulhsu      s6, s0, s2
                  c.srli      a0, 22
                  c.addi4spn  a0, sp, 528
                  mul         sp, s7, s2
                  auipc       t5, 947270
                  divu        a5, t3, a2
                  xori        t1, s1, -997
                  or          zero, a6, s5
                  xori        a3, t6, -267
                  c.mv        sp, t0
                  sltu        s1, tp, s9
                  andi        zero, ra, -1280
                  c.srli      a0, 20
                  mulhu       s1, s2, s8
                  and         zero, tp, sp
                  srli        s2, s3, 14
                  c.li        ra, -1
                  sub         a0, t2, s11
                  lui         a2, 173275
                  xori        t3, a3, -71
                  srai        s4, s6, 27
                  lui         zero, 173961
                  rem         t3, ra, a0
                  sra         s2, a7, s8
                  lui         t1, 479535
                  div         t5, zero, t3
                  c.and       a0, a1
                  c.add       s8, a1
                  c.addi      s6, -1
                  auipc       zero, 374071
                  c.srai      a0, 8
                  rem         a6, a2, s9
                  mulhsu      ra, s1, gp
                  sltu        s0, t6, s7
                  c.xor       a2, a1
                  slt         s8, ra, s10
                  slt         a2, t0, s8
                  mul         zero, s0, zero
                  divu        zero, t6, a7
                  and         t1, s6, t1
                  auipc       a7, 697557
                  addi        s4, a2, -1407
                  xor         t3, s1, t5
                  c.lui       a0, 9
                  andi        s6, t2, -1359
                  c.add       a1, ra
                  divu        s11, t3, sp
                  sra         s5, t3, s5
                  sltiu       a2, s10, -25
                  andi        s1, t2, -682
                  c.and       a3, s0
                  divu        s7, zero, a0
                  mulhu       a0, s0, s1
                  c.srli      a1, 18
                  sll         zero, t5, a5
                  addi        s2, s11, -1602
                  c.addi      a5, -1
                  mulhu       zero, s10, s4
                  c.srai      a0, 19
                  c.srai      a0, 17
                  addi        s6, a5, -1083
                  slli        tp, a3, 3
                  sub         s2, a1, s8
                  nop
                  sltiu       t0, s4, 89
                  mulhu       t3, s11, t3
                  c.lui       tp, 1
                  lui         s2, 724958
                  rem         a1, t4, t3
                  auipc       s11, 154770
                  add         zero, tp, s9
                  and         t4, t6, s7
                  c.and       a0, a2
                  c.add       ra, s9
                  andi        a4, t5, -71
                  c.addi16sp  sp, -16
                  and         a3, a7, s1
                  or          zero, s1, t2
                  c.add       sp, t1
                  sub         t4, s1, s0
                  srl         a2, t4, t2
                  lui         s8, 774346
                  c.slli      t5, 30
                  divu        s9, a6, gp
                  sltu        a3, zero, a4
                  c.addi4spn  a0, sp, 496
                  slti        a4, s4, -1482
                  c.addi      t1, 5
                  rem         tp, sp, s3
                  lui         a2, 937781
                  sltiu       tp, s4, -970
                  sra         s7, s9, t3
                  c.and       a3, a0
                  c.lui       a1, 17
                  mulh        zero, a0, a3
                  divu        t3, a2, t2
                  c.addi4spn  a3, sp, 560
                  sub         s1, sp, ra
                  c.addi      ra, 13
                  add         s1, s4, s2
                  lui         tp, 1039524
                  divu        zero, a7, t4
                  c.nop
                  srl         s7, s1, t1
                  slli        s11, s10, 23
                  c.addi      ra, 24
                  mulh        a1, t0, s9
                  nop
                  c.addi      s4, -1
                  slt         t3, t5, s1
                  andi        zero, s10, 2025
                  c.or        a3, a2
                  c.slli      ra, 10
                  and         s6, t3, gp
                  c.addi4spn  a5, sp, 224
                  c.sub       a0, s0
                  c.srli      a0, 1
                  c.and       a2, a2
                  c.and       a0, a0
                  srl         s9, a5, s6
                  div         s4, s2, zero
                  xori        zero, s3, 643
                  and         s7, s6, gp
                  c.addi4spn  a3, sp, 192
                  divu        a2, s0, s4
                  srl         a5, t3, a1
                  sll         s0, tp, s1
                  c.srli      a3, 1
                  c.sub       a1, a2
                  slti        t3, s1, 1843
                  c.or        a0, s1
                  c.mv        s6, t0
                  slt         a3, zero, t6
                  mul         a4, s9, a5
                  add         a4, sp, s3
                  mul         s3, s5, s7
                  slti        s5, a7, -1888
                  auipc       zero, 850056
                  ori         ra, t6, 1171
                  divu        a2, a5, s10
                  c.sub       a0, s1
                  ori         s2, s6, -1765
                  c.slli      sp, 6
                  rem         s11, t2, s9
                  sll         t1, s6, s6
                  nop
                  divu        zero, s10, t1
                  c.and       a2, s0
                  c.lui       a0, 26
                  sll         zero, a1, a6
                  and         zero, s7, t3
                  c.addi      tp, -1
                  c.add       ra, tp
                  c.and       a3, a1
                  c.srli      a3, 5
                  c.addi16sp  sp, -16
                  nop
                  c.li        a4, -1
                  mulh        t5, s8, s3
                  c.sub       a2, a3
                  c.lui       a3, 2
                  c.xor       a0, a0
                  mul         s4, t2, a6
                  c.srai      a1, 30
                  c.addi      s5, 24
                  nop
                  andi        gp, s0, -396
                  c.slli      tp, 19
                  c.or        a0, a3
                  c.srai      s1, 20
                  add         s3, s7, t5
                  c.addi16sp  sp, 400
                  auipc       s8, 737200
                  c.slli      s1, 24
                  sltiu       a7, a6, 1836
                  c.sub       a4, a3
                  sub         t4, t0, s6
                  c.add       s7, t1
                  c.addi4spn  a2, sp, 48
                  mul         s0, a4, s3
                  c.andi      a3, 14
                  srli        zero, a5, 8
                  ori         s2, s6, 543
                  c.xor       a0, a0
                  c.add       t0, s2
                  rem         zero, a0, s8
                  rem         a0, t1, s8
                  sltiu       s1, t0, -609
                  c.nop
                  rem         a4, t4, s10
                  nop
                  c.sub       s0, a3
                  c.andi      a3, -1
                  divu        sp, t6, a5
                  auipc       t1, 122306
                  and         ra, s3, t4
                  sub         zero, s9, s3
                  div         s6, t5, gp
                  c.srai      a4, 24
                  xori        a6, tp, 334
                  sltiu       s8, a3, 1211
                  srli        a3, t5, 2
                  c.srli      a2, 22
                  c.addi      t1, -1
                  c.srli      s1, 11
                  auipc       t1, 109182
                  lui         zero, 412243
                  xor         a5, s10, s9
                  mulhu       a2, s1, a4
                  sll         a7, s0, a5
                  c.xor       a0, a2
                  c.srli      a0, 13
                  c.lui       t4, 1
                  sltu        t4, s10, t5
                  c.addi16sp  sp, -16
                  lui         ra, 994510
                  auipc       t4, 719106
                  c.or        a0, a1
                  sra         ra, s0, t2
                  c.or        a0, s0
                  sll         t4, a4, s0
                  addi        t1, t0, 866
                  c.li        t4, -1
                  slt         zero, t3, t5
                  c.lui       a1, 13
                  c.or        a0, s0
                  addi        a1, gp, 1068
                  rem         zero, sp, a6
                  c.addi4spn  a1, sp, 128
                  add         zero, zero, t4
                  mulhu       s11, s5, a6
                  sll         s7, a4, gp
                  add         t0, t1, t6
                  slti        s8, a7, 692
                  c.and       a0, a3
                  xori        a5, s6, -1322
                  c.addi4spn  a0, sp, 752
                  sltu        s11, s11, a3
                  mulhsu      t3, s6, t0
                  nop
                  srl         t3, a3, t5
                  ori         t4, ra, 164
                  sltiu       s2, t2, -148
                  xor         s0, s8, a4
                  add         zero, a2, t4
                  andi        a2, s7, -1745
                  c.slli      s9, 30
                  divu        a1, s2, a6
                  sltiu       a6, s10, 1076
                  sltu        s1, s1, t3
                  c.addi16sp  sp, -16
                  addi        t4, s1, 1322
                  slli        a7, a6, 4
                  c.xor       a0, s0
                  c.li        ra, -1
                  or          a7, s0, t3
                  lui         a6, 544392
                  slli        t1, s11, 31
                  sra         a5, a4, a5
                  sub         tp, t4, ra
                  c.srai      a0, 5
                  andi        s1, t5, -155
                  lui         a3, 558116
                  nop
                  sltu        s5, ra, a1
                  c.or        a3, a3
                  c.addi4spn  a3, sp, 944
                  sra         a2, s0, s0
                  srli        t4, s6, 23
                  srai        a4, s7, 18
                  mulhu       gp, t4, a7
                  c.mv        ra, s5
                  c.nop
                  srli        t3, t2, 31
                  slt         t1, s11, zero
                  rem         sp, s4, a4
                  c.sub       a2, a2
                  nop
                  addi        t3, s6, 1663
                  sll         a0, t2, a0
                  c.addi16sp  sp, 288
                  c.addi      ra, -1
                  slti        s7, t3, 1619
                  add         zero, a4, gp
                  c.addi      a2, -1
                  andi        a5, s4, 1718
                  c.lui       a7, 21
                  c.xor       a2, a0
                  c.lui       ra, 31
                  c.slli      s5, 13
                  srai        zero, a1, 21
                  or          t4, a5, a3
                  c.lui       s1, 19
                  c.addi16sp  sp, -16
                  slli        zero, s1, 13
                  srli        a4, zero, 4
                  c.andi      a0, -1
                  sub         s7, a0, s4
                  lui         t4, 124202
                  andi        t4, t1, -378
                  c.sub       s1, a3
                  slli        s0, t6, 14
                  srli        t3, s4, 2
                  mul         s6, a2, s1
                  and         s9, s9, s9
                  mul         zero, a6, zero
                  mulhu       a5, s3, a4
                  or          s4, t4, s0
                  sltiu       a4, t5, -393
                  c.sub       a1, a0
                  div         t3, t3, s4
                  mulhu       s6, a6, s8
                  slti        s6, t4, -1545
                  srl         t1, t5, t4
                  mulh        sp, a5, s2
                  sltu        a0, ra, a7
                  andi        s1, gp, -1032
                  sub         a3, s1, s0
                  c.nop
                  c.addi4spn  a2, sp, 704
                  c.addi      s0, 22
                  xor         s6, s10, s7
                  divu        sp, t3, t6
                  c.nop
                  c.addi      a3, -1
                  or          s0, a6, gp
                  nop
                  divu        a6, s4, s11
                  srli        s9, s9, 13
                  mulh        t0, a0, s11
                  c.mv        s7, t4
                  addi        s11, a5, -1202
                  xor         t1, a3, s0
                  c.and       a3, s1
                  c.slli      s8, 15
                  add         zero, a0, s9
                  mul         a0, s10, a5
                  c.and       a0, a2
                  nop
                  sltiu       a7, s11, -333
                  c.add       s2, t1
                  slli        s8, gp, 15
                  rem         zero, s6, a3
                  c.srli      a3, 28
                  c.srli      a4, 28
                  srl         a1, s11, t0
                  ori         s3, s5, 515
                  c.add       s0, t6
                  srai        zero, s2, 2
                  sll         sp, t1, s9
                  div         s1, t2, t6
                  c.lui       ra, 18
                  c.addi4spn  a0, sp, 288
                  c.slli      t4, 7
                  srai        sp, a3, 13
                  or          t3, t6, s9
                  c.srli      a3, 11
                  slti        s7, s7, 375
                  c.addi4spn  a0, sp, 896
                  c.andi      a0, -1
                  c.xor       a5, s0
                  c.lui       ra, 26
                  c.addi4spn  a2, sp, 592
                  srli        tp, a6, 22
                  sltiu       zero, zero, -381
                  sra         t1, sp, s11
                  or          s2, s1, s3
                  or          t1, t0, a6
                  xor         gp, sp, t6
                  div         ra, s1, sp
                  and         t4, a3, s4
                  srli        a0, t4, 16
                  lui         s2, 842047
                  c.slli      s1, 3
                  rem         a6, t6, s7
                  slti        a7, a1, -56
                  srli        sp, gp, 23
                  c.slli      a1, 24
                  sltu        t5, s9, s5
                  c.xor       s0, a2
                  ori         s4, t1, -1946
                  nop
                  c.addi4spn  a0, sp, 176
                  c.or        a0, a2
                  slti        sp, t2, -383
                  c.mv        a1, t1
                  c.li        a6, 7
                  c.addi      a0, -1
                  sll         s6, s2, a0
                  c.srli      a0, 1
                  c.add       t5, a5
                  auipc       s3, 579392
                  srli        s4, s2, 19
                  and         tp, s5, s7
                  sra         a1, a6, s0
                  xori        sp, s1, 1161
                  mul         zero, t6, s6
                  slt         t1, a5, s10
                  c.srai      a0, 19
                  c.lui       a5, 25
                  add         s11, t2, t6
                  add         tp, s7, s11
                  auipc       s4, 630420
                  lui         zero, 172660
                  sltiu       t1, t5, -660
                  c.addi16sp  sp, -16
                  mul         zero, s4, s6
                  c.li        ra, 18
                  mulhu       a0, t4, t0
                  sltu        a7, s11, s5
                  sltu        a0, s6, zero
                  xori        s5, t5, -1564
                  c.mv        s1, sp
                  sub         s6, zero, tp
                  rem         s8, s11, a1
                  srli        a2, ra, 14
                  c.add       ra, a5
                  sll         sp, s5, a3
                  slt         a6, a1, a4
                  c.or        a0, a2
                  and         s7, t2, a6
                  c.slli      s8, 19
                  c.mv        a4, gp
                  c.andi      a0, 16
                  mulhu       s6, t0, t4
                  c.andi      a0, -1
                  andi        a6, gp, 1152
                  addi        s5, t6, 12
                  c.addi4spn  a0, sp, 880
                  and         t1, s11, t2
                  srli        s6, t0, 21
                  c.addi16sp  sp, 128
                  c.xor       a0, a0
                  srai        zero, t2, 28
                  slli        a7, t6, 11
                  c.slli      s11, 12
                  addi        a4, a0, -1098
                  mulhu       tp, ra, a2
                  ori         tp, a5, 1781
                  c.slli      t4, 7
                  c.addi16sp  sp, 224
                  sltu        a0, gp, t1
                  c.xor       a1, s1
                  sltu        s3, a3, sp
                  and         a7, t1, t4
                  c.andi      a0, 21
                  srai        a5, a7, 30
                  rem         zero, a1, t4
                  mulhu       zero, s2, tp
                  lui         zero, 425932
                  c.add       a7, tp
                  slti        zero, s11, -682
                  slti        zero, t1, -1268
                  c.srai      a2, 14
                  c.add       a3, s6
                  addi        zero, s11, 1541
                  c.addi4spn  a3, sp, 128
                  or          a4, s7, a7
                  c.srli      a0, 15
                  c.and       a2, a3
                  c.srai      a3, 17
                  c.and       a0, a0
                  c.srai      a0, 22
                  xor         s2, a0, s9
                  auipc       s5, 569264
                  c.addi      ra, -1
                  lui         s0, 381187
                  and         a2, s0, s1
                  c.addi      ra, 15
                  auipc       zero, 359659
                  c.sub       a1, a0
                  divu        s4, s5, ra
                  rem         s11, s1, sp
                  c.xor       s1, a1
                  mulhsu      t0, s5, a1
                  c.addi4spn  a3, sp, 960
                  c.and       a2, s1
                  andi        ra, a2, 1883
                  c.addi      s8, -1
                  sub         sp, zero, s7
                  ori         t0, s2, -1629
                  div         a3, s1, t0
                  mulhu       a5, zero, zero
                  c.mv        ra, t6
                  c.andi      a3, -1
                  slt         a0, a1, t3
                  c.or        a0, s0
                  add         t4, a2, t4
                  c.add       sp, gp
                  sltiu       a5, s6, 1628
                  c.xor       a0, a1
                  srli        s1, t1, 25
                  srli        t0, s11, 21
                  sra         a5, a3, a7
                  c.and       a2, a0
                  slti        a7, a4, 1260
                  sltu        s5, s7, s8
                  c.or        a2, s0
                  lui         s9, 516789
                  sltiu       sp, s9, -511
                  and         t5, gp, tp
                  andi        t0, t6, -1993
                  srli        s7, a1, 10
                  c.xor       a0, s1
                  c.mv        s11, s6
                  c.or        a0, s1
                  sub         s4, s8, a4
                  c.srli      a0, 10
                  mulhsu      a0, s11, s0
                  c.xor       a1, s1
                  ori         tp, t3, 263
                  and         a3, s5, s0
                  sub         s0, s11, sp
                  slt         tp, s10, a3
                  c.srai      a5, 1
                  mulh        s0, tp, a5
                  c.li        sp, -1
                  c.mv        sp, a5
                  addi        zero, s4, 1419
                  addi        s4, s8, -1827
                  rem         s5, zero, tp
                  c.and       a5, a1
                  xori        t0, a5, -897
                  c.addi16sp  sp, 144
                  slt         zero, t2, s8
                  c.and       a0, a2
                  c.slli      a6, 23
                  sra         s9, a7, s5
                  c.addi4spn  a0, sp, 960
                  slti        a7, s2, -891
                  c.slli      a3, 18
                  c.nop
                  c.xor       a0, a3
                  c.mv        s0, a0
                  mulhu       a3, zero, a6
                  c.andi      a0, -1
                  c.lui       s3, 28
                  c.add       sp, s8
                  c.sub       a0, s1
                  slti        gp, s10, -667
                  c.or        a2, s0
                  mulh        s0, t2, sp
                  c.xor       a0, a1
                  slti        a7, s5, -1560
                  auipc       t4, 344678
                  mulhsu      zero, t1, s5
                  sltu        s0, tp, s10
                  slti        a6, a2, -1266
                  xori        a4, t4, 1059
                  andi        s7, t4, -1789
                  and         a7, a5, gp
                  rem         s3, s2, a5
                  c.slli      a1, 17
                  nop
                  c.nop
                  c.add       s5, s0
                  srli        zero, s8, 6
                  sub         s2, tp, tp
                  c.slli      s7, 18
                  sra         a1, s0, a6
                  mulh        zero, a6, a1
                  slli        s6, gp, 2
                  c.and       a2, a3
                  c.nop
                  slti        s11, s3, -852
                  mulhsu      ra, zero, s11
                  sltu        a4, s5, gp
                  and         sp, a1, t5
                  c.mv        t1, tp
                  c.mv        tp, s8
                  c.and       a0, s1
                  and         zero, s3, sp
                  slli        s3, t1, 26
                  c.lui       a0, 10
                  xori        a2, a6, 4
                  lui         t5, 267059
                  slti        s9, s9, -1204
                  c.li        a7, -1
                  sltiu       a7, s3, 588
                  sub         t3, s6, s5
                  slti        s1, tp, -319
                  andi        s9, s10, -1385
                  c.or        a0, a2
                  sub         s4, a5, gp
                  c.nop
                  c.or        a1, a0
                  sra         ra, a2, a2
                  mulhu       t1, t6, t1
                  nop
                  c.and       a0, s1
                  c.addi16sp  sp, -16
                  c.or        a0, a0
                  andi        sp, s9, -1129
                  c.slli      ra, 29
                  c.slli      ra, 19
                  srai        sp, s7, 2
                  div         a0, s0, t0
                  srl         t3, s2, s7
                  sra         a3, t6, a6
                  divu        a2, s1, s0
                  slli        zero, s2, 18
                  srai        zero, a5, 29
                  rem         t0, s11, a7
                  ori         zero, ra, 1647
                  srai        tp, a3, 27
                  mul         t5, a5, a5
                  nop
                  xori        s2, s8, -1474
                  c.nop
                  lui         s3, 899941
                  srli        s1, s0, 21
                  srai        s0, s6, 2
                  andi        zero, s11, -1212
                  slti        t3, t3, 134
                  sra         a6, t6, a7
                  rem         s1, zero, ra
                  mul         t5, t2, gp
                  c.addi      s0, 30
                  sub         s7, a5, a3
                  c.srai      a0, 4
                  rem         ra, zero, t6
                  divu        sp, t5, a4
                  divu        a2, s3, a0
                  srl         a4, gp, t4
                  srli        sp, ra, 10
                  c.srli      a2, 28
                  auipc       s7, 104976
                  auipc       a2, 646366
                  mulhu       s0, s3, tp
                  mulh        s2, ra, s3
                  xor         zero, t2, ra
                  c.addi4spn  a0, sp, 752
                  c.addi4spn  a1, sp, 112
                  mulhsu      a5, t0, s6
                  c.and       a0, a1
                  or          s3, s0, s7
                  sll         s8, gp, s5
                  mulh        zero, t1, a6
                  divu        s9, a0, a3
                  sub         s7, a2, ra
                  slti        zero, s2, 1437
                  lui         a1, 911998
                  add         t1, s3, ra
                  div         a4, s8, a4
                  slt         zero, s7, s1
                  xori        s0, ra, -104
                  c.srai      a0, 16
                  rem         ra, s4, a3
                  c.srli      a3, 4
                  sltu        a5, a4, t2
                  mulhu       zero, a6, s3
                  div         a5, t3, s2
                  mulhu       s2, s5, s6
                  c.xor       a3, a2
                  c.slli      s11, 3
                  div         s0, a1, a4
                  sltiu       gp, s4, -1
                  c.nop
                  auipc       a4, 218309
                  c.and       a2, s1
                  and         gp, s2, t4
                  mulhsu      zero, s1, s3
                  c.slli      t3, 18
                  c.addi16sp  sp, 464
                  and         s5, s10, s11
                  slli        t5, a7, 5
                  or          sp, s6, sp
                  c.slli      s11, 1
                  auipc       t5, 237826
                  or          s11, s5, a7
                  add         zero, a3, s6
                  mulhsu      zero, tp, a0
                  srli        a7, t6, 10
                  c.addi      a1, -1
                  c.or        a0, s1
                  slti        a1, s4, -468
                  sltiu       t1, s8, -1727
                  c.slli      s8, 5
                  xori        zero, s4, 804
                  c.andi      a0, -1
                  addi        s5, s11, -2010
                  addi        tp, s8, 590
                  c.and       a0, a2
                  rem         sp, a4, s10
                  div         a5, s4, s6
                  slli        a0, s7, 12
                  c.sub       s0, a3
                  c.nop
                  c.addi4spn  a0, sp, 960
                  auipc       t3, 917723
                  c.srli      a4, 4
                  c.li        gp, 28
                  sll         a0, a6, s3
                  c.lui       s9, 16
                  or          t5, tp, a6
                  and         zero, a5, s6
                  rem         a0, a1, a2
                  c.xor       a2, a0
                  ori         s1, t6, -979
                  rem         a3, a4, s4
                  lui         a7, 408570
                  c.addi4spn  a2, sp, 992
                  c.srli      a3, 6
                  sub         a5, a1, a1
                  rem         a6, t4, t6
                  c.mv        s11, a4
                  srl         s2, s3, a0
                  sub         t1, t5, t0
                  srli        s3, a4, 0
                  xor         zero, s4, s1
                  nop
                  lui         zero, 584734
                  c.lui       t0, 30
                  c.add       tp, gp
                  andi        zero, s7, 957
                  c.li        t1, 14
                  nop
                  add         s11, t3, ra
                  ori         zero, s8, 519
                  sltu        t5, s6, a5
                  divu        gp, s6, s8
                  c.nop
                  c.li        ra, -1
                  xori        s7, s3, -1365
                  srai        tp, gp, 4
                  sub         zero, a5, t4
                  xori        s5, t3, 909
                  c.xor       a2, a0
                  or          s11, s6, t0
                  c.addi4spn  a0, sp, 992
                  sltu        zero, s0, a7
                  slti        tp, t2, 96
                  slli        t3, t5, 10
                  slti        t0, s6, 1484
                  c.or        a0, s1
                  c.srli      a2, 17
                  sub         s8, t4, a1
                  slli        t3, s5, 14
                  srl         a4, a4, t6
                  c.addi4spn  a3, sp, 608
                  c.andi      a2, -1
                  c.slli      t4, 17
                  c.lui       ra, 21
                  srai        s4, t1, 23
                  c.lui       t5, 17
                  c.lui       ra, 26
                  srai        ra, gp, 17
                  mul         sp, s4, a1
                  mulhsu      t1, s3, gp
                  c.or        s1, a1
                  c.slli      a5, 3
                  c.mv        a2, s0
                  c.and       a0, a2
                  c.sub       a0, a3
                  mul         s3, s11, a5
                  sra         a6, a5, a4
                  c.srli      a3, 4
                  c.mv        a5, s6
                  c.addi      ra, -1
                  c.addi4spn  a3, sp, 608
                  c.sub       a5, a3
                  xori        a0, s5, 1443
                  c.xor       a0, a0
                  c.mv        a7, a2
                  c.mv        s2, a1
                  sltiu       ra, t6, 1259
                  div         s8, sp, s7
                  ori         a1, s5, -435
                  c.addi      s4, 3
                  mul         a6, a5, a2
                  sll         a6, ra, s4
                  sll         a5, t2, s5
                  rem         zero, s0, s5
                  c.nop
                  slti        a0, s4, -1203
                  xor         s5, a3, tp
                  c.and       a0, s0
                  slli        s5, s2, 31
                  slli        a4, a4, 19
                  ori         s6, a0, 1935
                  c.li        a5, 26
                  andi        a6, s0, -375
                  addi        zero, t6, 383
                  mulhu       s1, t4, t3
                  slli        a2, ra, 28
                  addi        a1, a7, -1270
                  srai        ra, t2, 28
                  mulhu       a0, s0, t5
                  andi        zero, t1, -191
                  mulh        sp, s3, t6
                  sll         s6, s1, s6
                  sltiu       a5, s2, 290
                  srai        s6, a5, 4
                  c.and       a0, a2
                  c.nop
                  c.lui       s0, 21
                  nop
                  and         s2, t0, a1
                  nop
                  sra         zero, t2, t6
                  mul         a0, t5, sp
                  c.lui       s11, 4
                  c.andi      a0, 7
                  srl         s4, s0, a6
                  srai        zero, t6, 29
                  slt         zero, s7, gp
                  mulhsu      a4, t5, s8
                  nop
                  c.addi16sp  sp, 16
                  c.slli      ra, 14
                  c.add       s0, a2
                  div         zero, a0, t4
                  c.andi      a5, 2
                  rem         t5, a4, tp
                  slt         s6, s5, s3
                  c.addi4spn  a3, sp, 704
                  sub         s8, t6, t4
                  c.mv        ra, sp
                  slti        s5, t6, -588
                  c.srai      a0, 4
                  xori        a7, a4, 1971
                  c.li        t1, 22
                  c.and       a0, a2
                  sra         t0, s0, a3
                  slli        t1, t3, 14
                  xori        s2, s10, 1499
                  c.and       a0, s1
                  auipc       a6, 694052
                  c.xor       a0, s1
                  srai        s7, a1, 22
                  c.add       s2, s6
                  auipc       s9, 403130
                  div         s4, a1, t3
                  add         s8, ra, s5
                  xori        s2, a2, -102
                  c.and       a0, a3
                  c.sub       a0, a1
                  c.li        s11, -1
                  nop
                  slti        a3, a4, 387
                  c.slli      a6, 14
                  c.sub       a2, a3
                  sltu        zero, s9, s3
                  c.andi      a0, 0
                  srai        ra, sp, 6
                  mul         ra, a6, sp
                  sltiu       s3, ra, 623
                  srli        zero, a5, 18
                  srli        a0, tp, 20
                  lui         s9, 401426
                  and         s9, s11, t1
                  c.add       sp, ra
                  srai        t4, gp, 16
                  srli        t4, s2, 29
                  srli        s6, a6, 9
                  slli        a0, s1, 30
                  sltiu       s11, s5, 270
                  srai        a2, gp, 27
                  slti        sp, s1, -35
                  c.srai      a0, 6
                  srai        s5, a4, 24
                  add         s5, t3, s4
                  srl         s9, s10, a4
                  srai        s0, zero, 22
                  c.srli      a0, 29
                  div         t1, s11, s3
                  or          s7, a7, a4
                  or          t3, a5, t2
                  c.srai      a2, 11
                  c.addi4spn  a3, sp, 816
                  xor         t3, s3, a1
                  c.mv        t0, t0
                  sltiu       a6, a4, 767
                  c.add       s7, a1
                  c.srli      a2, 24
                  c.or        a0, a1
                  xori        t5, t5, -185
                  div         s1, zero, a4
                  c.addi      a1, -1
                  ori         a6, s6, -1976
                  add         a4, a4, t6
                  c.lui       t4, 19
                  and         s1, a0, a2
                  c.slli      t5, 18
                  xori        t4, tp, -360
                  mulhu       zero, t0, a1
                  div         s0, a4, t5
                  c.addi4spn  a2, sp, 976
                  mulhsu      t4, t1, a7
                  slti        s9, t6, 1120
                  sll         zero, s3, s2
                  sltiu       s9, tp, 194
                  c.andi      a0, -1
                  c.li        s1, -1
                  sub         s3, s8, a2
                  div         s4, s8, s7
                  add         t1, a1, ra
                  c.xor       a0, a0
                  mulh        zero, a6, a6
                  and         s6, s5, a3
                  c.and       a0, a5
                  c.add       a5, a4
                  slti        s0, gp, 289
                  c.or        s1, a0
                  c.nop
                  addi        zero, s3, -1803
                  slt         a7, s7, a0
                  lui         a3, 924659
                  sub         s6, s1, tp
                  add         t0, tp, t5
                  srli        a7, s10, 9
                  mul         s6, s3, s1
                  sra         s9, a3, s2
                  srai        s7, sp, 30
                  andi        zero, ra, 776
                  c.srai      a0, 24
                  srl         s2, s4, a2
                  sltu        gp, s10, s2
                  c.add       a1, s10
                  or          s11, t2, t6
                  c.lui       a7, 29
                  c.and       a0, a3
                  ori         s0, t5, 321
                  c.sub       a0, a2
                  c.lui       ra, 31
                  c.xor       a0, a0
                  div         s0, sp, s10
                  sub         s2, t4, sp
                  slti        s5, s10, 1446
                  mulhu       s0, s0, t6
                  auipc       s11, 478591
                  srai        ra, s10, 6
                  xor         a7, t6, a7
                  xor         s2, a3, s8
                  or          s11, a3, t5
                  sltiu       t0, a2, -1160
                  c.addi4spn  a0, sp, 176
                  sra         a3, a0, tp
                  c.sub       a1, a5
                  mulh        gp, sp, t1
                  ori         s1, a5, -1358
                  sltiu       s4, s8, -1325
                  slt         gp, a6, t3
                  addi        s7, a3, 666
                  c.and       a1, a3
                  mulhsu      s0, s6, s0
                  andi        gp, a4, 1185
                  c.xor       a0, a0
                  sra         zero, s1, s4
                  mulhsu      zero, s10, s4
                  xor         s5, tp, a5
                  mulhsu      s9, s2, s0
                  and         s11, a7, gp
                  c.srli      a1, 17
                  c.addi16sp  sp, -16
                  addi        s7, a5, -78
                  divu        ra, s3, ra
                  nop
                  sll         a1, s4, t0
                  mulhsu      t3, sp, s6
                  xori        a5, a0, -688
                  srl         a5, s1, zero
                  rem         tp, s11, s0
                  mulh        ra, s0, s6
                  sltu        s1, a0, tp
                  srl         a0, ra, t5
                  srai        a4, s6, 9
                  or          s7, tp, ra
                  add         t1, s7, s9
                  mulh        s3, gp, t3
                  srli        zero, s7, 28
                  xor         zero, s1, a7
                  andi        a2, ra, 1784
                  xori        a5, t6, 396
                  c.or        a2, s1
                  xori        t5, t6, -1294
                  mulhsu      s3, s7, t0
                  sra         a5, s2, s10
                  auipc       s11, 733891
                  mulhsu      ra, s6, s8
                  auipc       t5, 735482
                  addi        s2, ra, -772
                  c.slli      ra, 11
                  c.sub       a2, a1
                  c.mv        s7, s7
                  c.srli      a2, 6
                  auipc       s4, 820405
                  sub         s7, s11, s7
                  mul         s11, sp, ra
                  sltiu       gp, a0, -675
                  c.nop
                  or          a4, a2, t4
                  and         zero, sp, t0
                  li         s4, 0x0 #start riscv_int_numeric_corner_stream_6
                  li         t5, 0x0
                  li         a4, 0x0
                  li         a0, 0x1
                  li         s11, 0x0
                  li         s7, 0x0
                  li         tp, 0x1
                  li         s8, 0x1
                  li         t4, 0x1
                  li         a5, 0x0
                  add         a1, zero, t0
                  rem         t1, tp, a5
                  divu        s2, s1, s7
                  mulhu       s3, t3, t6
                  mulhsu      s3, a7, s7
                  auipc       s5, 49363
                  c.lui       a2, 30
                  c.nop
                  c.addi4spn  a0, sp, 912
                  c.mv        a5, s7
                  c.addi      s4, -1
                  c.mv        t0, s0
                  c.addi16sp  sp, -16
                  c.li        s6, 26
                  c.addi      a7, -1
                  nop
                  rem         a1, t6, sp
                  c.mv        s5, s2
                  addi        s2, a4, -443
                  nop
                  rem         a5, t5, t2
                  c.addi4spn  a1, sp, 880
                  nop
                  nop
                  c.mv        s11, s1
                  c.mv        s0, s8
                  slt         a2, a2, s11
                  c.nop
                  srai        s8, a0, 2
                  c.addi      t0, 30
                  c.andi      a1, 9
                  add         t0, a7, s7
                  rem         s7, a0, tp
                  srai        s1, t5, 31
                  addi        s3, a5, -375
                  srl         a7, sp, gp
                  c.xor       a3, a1
                  andi        ra, t4, 112
                  c.sub       a3, a3
                  divu        t4, s9, s3
                  and         s11, a3, a5
                  xori        s6, a4, -949
                  add         s0, a4, zero
                  rem         t4, t6, sp
                  srai        zero, s3, 22
                  sltiu       sp, s0, 1092
                  xor         a7, gp, a7
                  sra         a7, tp, a6
                  andi        ra, ra, -1476
                  add         s5, sp, a2
                  c.mv        t0, s8
                  mul         t5, t2, a4
                  sll         a0, s5, s6
                  c.slli      s4, 6
                  xori        zero, a0, 971
                  mul         a4, s8, a4
                  srl         s5, s10, t3
                  xor         sp, a4, a3
                  c.srai      a2, 11
                  divu        s0, a2, a1
                  c.mv        s6, tp
                  slti        ra, a7, 1303
                  c.xor       a0, s1
                  c.addi16sp  sp, -16
                  nop
                  or          s11, t2, t3
                  auipc       a1, 866986
                  sra         ra, s8, s6
                  c.andi      a2, -1
                  ori         s4, t0, 1697
                  auipc       ra, 62688
                  div         a0, a2, a1
                  divu        s8, ra, t3
                  c.add       a0, a3
                  addi        s11, t3, -1074
                  divu        t5, t0, a1
                  mulhu       zero, s8, sp
                  addi        zero, s7, 1438
                  srl         s2, t1, s7
                  srli        s3, t0, 25
                  mulhu       t3, a2, a0
                  slti        s8, s11, -1829
                  andi        zero, s6, 952
                  rem         a4, a4, s3
                  c.addi4spn  a3, sp, 736
                  c.mv        a0, tp
                  c.mv        t1, a1
                  c.add       ra, s6
                  c.li        s8, 30
                  or          a5, s8, sp
                  c.andi      a0, 2
                  andi        t4, a1, 265
                  div         ra, t1, gp
                  sub         a6, t2, a1
                  mulhsu      t3, tp, a5
                  c.lui       a6, 12
                  mulhsu      t1, s2, s7
                  rem         a5, s5, s6
                  sltu        s3, s8, gp
                  c.sub       a2, a2
                  nop
                  mulh        sp, sp, a7
                  c.add       a0, s4
                  c.or        a0, a1
                  mulhu       s11, ra, s0
                  sltu        s8, t3, ra
                  xor         t3, s1, s3
                  sub         a4, s3, s0
                  c.addi4spn  a3, sp, 928
                  c.add       t3, s10
                  sltu        s4, a7, a7
                  c.mv        ra, s0
                  slti        a4, s7, 288
                  add         tp, zero, s0
                  c.addi4spn  a0, sp, 880
                  sub         s9, s9, a1
                  c.addi16sp  sp, -16
                  c.xor       a2, a0
                  c.lui       a2, 23
                  mulh        t4, t0, s9
                  slli        s11, t3, 12
                  xor         s2, a6, gp
                  c.lui       gp, 29
                  slt         zero, a7, a5
                  c.sub       a1, a2
                  c.and       a2, a2
                  c.li        gp, -1
                  srl         s1, gp, t5
                  nop
                  c.addi16sp  sp, -16
                  c.srai      a3, 10
                  slti        zero, t1, 1773
                  mulhu       zero, zero, ra
                  c.li        a6, 20
                  c.sub       a2, a0
                  c.slli      s3, 25
                  srai        s2, a3, 20
                  auipc       zero, 671883
                  and         s8, t4, t4
                  c.li        s0, 2
                  mulhu       s9, s10, t4
                  sra         s11, gp, sp
                  and         s2, s4, s2
                  ori         a3, a6, -1370
                  slti        t1, a7, -1539
                  and         s1, s11, s5
                  xori        a3, t6, -558
                  lui         t3, 909233
                  c.sub       a0, a0
                  c.xor       a2, a5
                  sub         a1, sp, gp
                  slli        zero, t0, 31
                  addi        a2, s7, 360
                  c.mv        s8, gp
                  addi        s8, t4, -128
                  sub         s11, zero, t3
                  c.add       tp, t4
                  sltu        s0, s11, gp
                  rem         a2, s2, s1
                  mulhsu      zero, a0, t4
                  nop
                  c.andi      a5, -1
                  srai        sp, s3, 9
                  c.srai      a3, 15
                  c.addi4spn  a0, sp, 912
                  c.sub       a3, a1
                  and         a0, s0, s3
                  srl         t5, a1, zero
                  slt         s6, t5, a6
                  c.andi      a0, -1
                  c.addi4spn  a2, sp, 624
                  c.xor       a2, a3
                  c.xor       a0, a1
                  addi        a2, t3, -478
                  c.mv        ra, t5
                  c.lui       a7, 12
                  sll         s2, a6, ra
                  c.addi16sp  sp, 192
                  mul         s4, s10, s6
                  c.or        a0, a3
                  xori        s7, a1, -2023
                  xor         t1, t5, t4
                  c.nop
                  andi        ra, s10, -960
                  c.xor       s0, a3
                  c.lui       a6, 2
                  srai        ra, s6, 26
                  c.xor       a0, a2
                  c.xor       a0, a3
                  c.addi4spn  a3, sp, 848
                  divu        s1, t3, s3
                  sltiu       t5, t6, -2
                  mul         s2, t6, zero
                  sub         tp, t6, a1
                  ori         s7, a0, 1812
                  slli        s0, s7, 0
                  c.sub       a2, a0
                  srl         s3, s9, t6
                  c.addi      a7, -1
                  or          t5, t2, a3
                  mul         gp, s1, t4
                  c.addi4spn  a0, sp, 384
                  srai        a3, s10, 27
                  sltiu       a7, t0, 1769
                  xori        t5, ra, -1995
                  c.andi      a3, 31
                  c.xor       s0, s1
                  c.nop
                  and         zero, s7, a2
                  c.xor       a3, a2
                  lui         s1, 56413
                  mulhu       s9, s0, s8
                  and         a6, ra, t6
                  add         s3, a5, tp
                  add         a6, t1, gp
                  c.mv        s4, t4
                  add         a4, a0, s3
                  and         s4, t0, sp
                  c.slli      s2, 27
                  c.addi4spn  a1, sp, 544
                  c.sub       a0, a3
                  xor         s9, t0, s10
                  add         s5, a7, s0
                  srai        s6, t4, 3
                  add         t4, s8, s3
                  sra         s3, a5, s10
                  or          t3, tp, t1
                  div         s5, a7, s8
                  c.mv        t1, t3
                  c.li        s2, 18
                  c.addi4spn  a3, sp, 224
                  c.srli      a0, 8
                  c.addi      s7, -1
                  slt         tp, s5, a7
                  and         s4, s3, tp
                  sltiu       t0, a6, 840
                  sltu        a0, t6, s11
                  div         s7, a7, t0
                  srai        a6, t0, 9
                  xor         t4, t5, s4
                  c.addi      gp, 17
                  mulh        a0, a4, a3
                  srli        a0, s7, 31
                  c.li        s0, -1
                  ori         s3, a7, 797
                  c.and       a3, a4
                  c.add       s2, s3
                  c.addi16sp  sp, 400
                  c.sub       a1, a2
                  c.or        a3, a2
                  andi        a6, t1, -282
                  div         ra, s1, a1
                  c.li        s5, -1
                  mulh        t3, t2, tp
                  c.li        ra, 15
                  nop
                  c.addi      a7, 9
                  sltiu       a7, s6, 1937
                  rem         s7, s10, s3
                  c.li        s8, -1
                  lui         gp, 967634
                  c.sub       a0, a3
                  c.srai      a2, 5
                  c.sub       a3, a1
                  mulhsu      s6, t3, t3
                  slti        zero, t6, -69
                  c.slli      tp, 28
                  slli        zero, s6, 29
                  auipc       s0, 754266
                  c.sub       a0, a0
                  slti        t0, ra, -999
                  mulhsu      zero, a3, t6
                  c.srai      a0, 20
                  c.li        sp, 26
                  ori         t4, s10, 1123
                  xori        zero, a7, 1321
                  ori         gp, s0, 925
                  divu        s2, sp, t1
                  and         zero, a5, a6
                  mulhu       s11, sp, tp
                  xor         sp, s9, t5
                  c.srli      a4, 12
                  rem         s9, t4, a6
                  xor         s2, s9, s2
                  c.slli      s2, 8
                  mulhu       tp, a2, s11
                  mul         a4, s7, a2
                  divu        a4, s1, zero
                  add         a0, s3, a0
                  sll         s0, s11, gp
                  slli        t5, t2, 12
                  c.lui       a6, 21
                  c.andi      a0, 20
                  slti        zero, t0, -993
                  srl         t5, zero, s2
                  c.mv        t1, t6
                  xori        t1, t6, -1605
                  add         t4, t6, t1
                  and         t5, ra, s6
                  sll         s9, a6, t6
                  lui         a1, 738115
                  c.or        a3, a0
                  c.and       a0, s1
                  mulhu       zero, tp, s2
                  c.and       a2, a5
                  addi        t5, s8, 198
                  xori        gp, s7, 1391
                  c.sub       s1, s0
                  xor         a7, a5, ra
                  rem         t1, sp, s4
                  mulhu       s8, t3, t4
                  c.addi4spn  a5, sp, 368
                  sltu        ra, sp, a0
                  c.sub       a0, a3
                  sltu        a1, s2, a5
                  c.li        s4, -1
                  div         a3, a2, a7
                  sltiu       s0, s8, 754
                  slti        s8, t3, 345
                  c.xor       a0, a0
                  mulh        a0, a3, s4
                  and         tp, a0, t0
                  xor         a2, s8, t0
                  srli        s6, t0, 25
                  c.and       a3, a2
                  c.and       a0, a1
                  andi        t0, tp, -730
                  c.srai      a0, 9
                  c.nop
                  mulhu       t0, s9, t1
                  srl         gp, s1, t0
                  rem         sp, tp, s9
                  c.and       a3, s1
                  divu        t4, s7, gp
                  c.addi4spn  a0, sp, 336
                  slti        s0, gp, -1163
                  c.addi4spn  a0, sp, 672
                  sub         tp, zero, t1
                  and         zero, a6, a7
                  sltu        a7, a0, a1
                  c.srai      s0, 29
                  mulhu       a3, a6, a0
                  lui         s2, 369763
                  c.nop
                  or          a6, a4, a2
                  c.or        a0, a4
                  mul         ra, a0, s0
                  srli        s0, t6, 23
                  divu        a0, s3, t1
                  addi        t0, t0, -730
                  c.addi      a0, -1
                  nop
                  sra         a1, zero, s4
                  ori         a5, a0, -1597
                  sub         t3, s7, tp
                  c.or        a0, a0
                  ori         s11, s10, 1596
                  and         t0, t0, tp
                  mulh        zero, s6, t5
                  divu        s3, a2, a6
                  xori        s3, s7, -820
                  c.sub       a3, a1
                  or          a3, s1, ra
                  c.li        a7, 9
                  c.slli      s11, 15
                  srai        s5, s2, 12
                  sltiu       s2, s5, -503
                  sll         a3, t0, sp
                  sltiu       t4, t0, 1209
                  mulhu       tp, s1, a0
                  sltu        t5, a4, s1
                  nop
                  xori        t3, a2, -887
                  slt         t4, gp, t5
                  c.andi      a2, -1
                  c.slli      s4, 20
                  sra         s11, a3, gp
                  c.srai      a0, 6
                  srli        t5, a5, 21
                  c.li        s11, 31
                  c.slli      s0, 16
                  addi        zero, t3, -972
                  rem         tp, t5, s9
                  sltiu       zero, zero, -1475
                  c.add       s6, t2
                  c.xor       a2, a3
                  srai        ra, sp, 7
                  sll         t5, a6, sp
                  xori        a2, s11, -1021
                  mul         s6, s8, a0
                  srli        a6, s3, 6
                  xori        ra, s5, -1527
                  sltu        a7, s7, s4
                  c.slli      ra, 2
                  sltu        s3, s8, s2
                  c.lui       s3, 24
                  ori         a3, a0, -433
                  xor         gp, s5, tp
                  sra         a2, s9, s11
                  c.addi16sp  sp, -16
                  c.slli      a1, 31
                  c.slli      s5, 24
                  c.addi16sp  sp, 416
                  c.or        a0, a0
                  slt         a7, gp, s4
                  slti        s8, a1, 1110
                  divu        sp, tp, s8
                  auipc       a5, 525789
                  add         tp, s10, zero
                  c.srai      a2, 25
                  or          t3, s1, s1
                  c.or        a0, a0
                  slti        tp, a2, -1417
                  and         a3, a6, s2
                  c.xor       a3, a3
                  srai        a5, t5, 9
                  slti        a5, s5, -1461
                  c.andi      s1, -1
                  sltu        t4, a7, a0
                  sltu        a7, a3, s7
                  c.andi      a0, -1
                  c.addi4spn  a0, sp, 48
                  rem         ra, t6, s2
                  and         t5, a7, t2
                  mulhu       a6, s0, a4
                  sra         a5, t6, tp
                  auipc       a1, 551673
                  sub         t4, s3, s7
                  slli        s11, s7, 29
                  andi        a5, s2, -1327
                  div         zero, ra, sp
                  addi        s4, s9, 457
                  sltu        a0, s0, t2
                  srli        s6, t6, 7
                  sub         sp, a0, a0
                  c.or        a0, a4
                  sub         t5, s2, a6
                  mulh        t5, s9, s3
                  divu        s1, t5, a3
                  andi        a7, a5, 1762
                  slti        zero, s6, -1665
                  sub         s9, s9, zero
                  c.addi4spn  a2, sp, 752
                  slt         s5, t3, t5
                  ori         sp, tp, -31
                  c.slli      s11, 11
                  div         s3, a5, a4
                  sltiu       s1, t4, -573
                  c.add       tp, s5
                  mul         zero, gp, ra
                  rem         t3, t0, ra
                  sltu        s5, t1, s2
                  nop
                  sltu        tp, s0, s10
                  sll         a3, s6, a7
                  c.or        a0, s1
                  sltiu       zero, s2, 1952
                  xor         s9, a6, a1
                  divu        zero, t0, t2
                  slli        t1, t1, 11
                  xori        a1, s9, 718
                  c.or        a0, a0
                  srl         a5, s6, a7
                  c.andi      s0, 16
                  c.addi4spn  a3, sp, 448
                  lui         a5, 30166
                  c.sub       a2, a4
                  c.xor       a1, a0
                  mul         gp, t5, s11
                  c.nop
                  slti        s5, t1, 237
                  add         a1, a3, s10
                  c.slli      t4, 11
                  sub         s2, s11, s4
                  andi        a7, a2, 768
                  c.slli      s0, 7
                  xori        sp, a7, 1130
                  or          s1, s10, a4
                  add         s3, a0, s7
                  andi        zero, t4, 930
                  xor         a6, s4, t2
                  c.or        a0, a5
                  srli        t1, a2, 7
                  nop
                  c.or        a0, a0
                  c.mv        ra, t3
                  slti        t0, s3, 1892
                  c.addi16sp  sp, 384
                  mulh        zero, a6, s0
                  c.lui       s6, 14
                  or          s6, a1, s5
                  c.li        s2, -1
                  slti        s6, t6, -966
                  slli        zero, a6, 7
                  sltiu       a5, s6, 597
                  c.andi      s1, -1
                  rem         ra, t2, a0
                  divu        a3, s6, s10
                  srai        s6, zero, 23
                  andi        zero, t5, 462
                  xori        s5, zero, 709
                  c.addi16sp  sp, 144
                  c.add       ra, s7
                  c.slli      t0, 12
                  c.lui       gp, 11
                  c.addi4spn  a0, sp, 32
                  div         s1, t4, s11
                  c.addi      s0, -1
                  slli        a3, t6, 27
                  sltu        tp, s1, a7
                  c.slli      a6, 10
                  sra         s6, t1, s0
                  c.srli      a2, 26
                  slt         a0, t6, a7
                  div         a5, s9, s5
                  lui         t1, 244375
                  slt         t3, t3, s6
                  mulhu       sp, a0, s5
                  c.addi4spn  a2, sp, 688
                  slt         a6, a6, a1
                  lui         s9, 545950
                  c.nop
                  mul         a7, t1, sp
                  srai        t1, t0, 7
                  addi        a7, s2, 1794
                  mul         zero, s9, ra
                  add         a5, a6, s0
                  rem         t5, sp, s11
                  sub         t5, tp, s2
                  and         a2, a4, a6
                  auipc       t1, 567190
                  c.sub       a0, a0
                  srl         t1, t1, tp
                  c.slli      sp, 18
                  ori         a1, a0, 390
                  c.or        a1, a3
                  c.sub       s1, s0
                  c.addi16sp  sp, 352
                  c.add       t3, t4
                  add         tp, t1, tp
                  addi        zero, a3, -2046
                  addi        s7, t3, 628
                  c.andi      a2, 22
                  srl         gp, zero, a3
                  nop
                  c.nop
                  sra         zero, t6, s11
                  c.addi16sp  sp, -16
                  srl         a1, a4, a5
                  xor         s8, gp, t5
                  c.sub       a0, a3
                  mulh        s3, a1, a0
                  c.srli      s1, 1
                  mulhsu      ra, a5, t0
                  mul         a7, s3, a2
                  mulh        t1, s6, zero
                  mulhsu      a5, s7, s10
                  slli        a3, sp, 19
                  c.li        s0, 8
                  and         sp, t5, a2
                  c.slli      ra, 2
                  slti        s4, s1, -2045
                  c.srai      a2, 1
                  srli        s7, s3, 10
                  andi        t0, a1, -195
                  slli        sp, t3, 24
                  ori         a4, a5, 1259
                  c.li        s6, 10
                  c.srai      a0, 9
                  c.andi      a0, 9
                  c.lui       a1, 14
                  c.srli      a0, 5
                  slti        t4, s3, 1277
                  lui         t3, 297933
                  div         a5, a5, s11
                  c.srai      a2, 5
                  c.nop
                  c.add       ra, a5
                  nop
                  or          t4, s4, a4
                  c.lui       a5, 5
                  or          s1, t3, s0
                  c.slli      ra, 2
                  add         a0, a0, ra
                  c.xor       a0, a3
                  add         a1, s11, a0
                  c.addi      tp, -1
                  c.andi      s1, 9
                  c.srai      a0, 13
                  srli        t0, zero, 7
                  c.lui       t3, 13
                  rem         a3, t1, t1
                  div         t3, s0, t3
                  srli        t5, t6, 28
                  c.mv        s6, a0
                  c.or        a5, a0
                  c.and       s1, a3
                  c.andi      a4, -1
                  rem         a4, s9, s3
                  xori        a6, s10, -405
                  mulh        a2, tp, t4
                  mulhsu      a0, zero, s9
                  mulh        zero, gp, s2
                  ori         s0, sp, 692
                  sll         zero, t6, zero
                  andi        a1, s6, -1587
                  div         s6, s0, a6
                  add         s7, a5, s0
                  sltu        a0, t5, s3
                  c.andi      a5, 28
                  c.srai      a1, 31
                  c.sub       a0, a1
                  auipc       tp, 238586
                  xor         a6, s5, t5
                  c.addi4spn  a2, sp, 528
                  sra         tp, sp, t0
                  slti        s0, t1, -9
                  c.nop
                  srl         tp, s0, s8
                  mul         s6, tp, s7
                  c.slli      s3, 28
                  mulh        s6, a0, s4
                  rem         gp, a1, t3
                  c.li        ra, -1
                  mul         a3, s0, ra
                  c.li        s8, -1
                  srli        s9, a3, 16
                  lui         zero, 1043817
                  c.addi16sp  sp, -16
                  nop
                  add         zero, t3, t2
                  c.xor       a2, a3
                  rem         zero, ra, a3
                  slti        s11, a5, 1279
                  c.and       a0, a0
                  c.srli      a0, 4
                  rem         a5, s1, sp
                  xori        s2, zero, 21
                  slt         a6, tp, t0
                  c.nop
                  c.addi4spn  a0, sp, 752
                  c.or        a0, s1
                  add         tp, s1, t1
                  srai        a0, s1, 6
                  and         a0, tp, a3
                  xor         a3, a0, s2
                  slli        zero, a4, 3
                  mulhu       s8, s7, s1
                  c.add       ra, a5
                  srli        s8, a1, 10
                  mulhu       t1, ra, s10
                  c.mv        ra, s1
                  c.add       t3, a1
                  mulh        a1, s2, ra
                  c.slli      t0, 30
                  andi        t1, t5, 1185
                  ori         a2, s6, 691
                  andi        t4, t0, 1652
                  srai        ra, t4, 20
                  c.mv        ra, ra
                  div         s2, t2, a0
                  mulhu       s9, a6, s10
                  slt         s0, a4, a5
                  c.addi      s11, 11
                  rem         t4, s11, s0
                  c.li        t5, -1
                  c.add       s6, s1
                  c.and       a0, a5
                  add         a5, a6, t3
                  addi        s9, s0, 611
                  srai        gp, t1, 1
                  c.nop
                  xor         s2, s10, ra
                  sra         s0, a3, t0
                  mulhsu      s9, t5, a2
                  srai        zero, t4, 27
                  and         zero, s10, t2
                  nop
                  c.srai      a0, 31
                  divu        a7, t2, gp
                  c.lui       a4, 19
                  sltiu       gp, s4, -1636
                  auipc       a6, 833940
                  slt         zero, zero, s8
                  auipc       s4, 107484
                  c.lui       t5, 21
                  mulhsu      s3, a1, s8
                  lui         a7, 634082
                  ori         a7, a0, -1923
                  andi        a5, s10, -574
                  c.srli      a0, 27
                  c.and       a0, a1
                  slli        a1, s9, 16
                  srl         t3, s3, a7
                  div         zero, a2, s3
                  c.srli      a5, 12
                  mulhsu      tp, a2, ra
                  srai        s6, ra, 4
                  sll         t1, a3, a2
                  c.addi4spn  a0, sp, 976
                  addi        a3, s9, 1896
                  c.addi4spn  a0, sp, 496
                  lui         s3, 692048
                  slti        a0, s0, -783
                  c.xor       a0, a1
                  mul         t0, s9, s0
                  c.andi      a0, -1
                  srli        a4, s9, 11
                  sub         s2, s0, s9
                  mulh        s6, a0, tp
                  c.andi      s1, 23
                  xor         zero, t3, s7
                  c.xor       a3, a0
                  c.addi16sp  sp, 224
                  mulhu       tp, t3, t1
                  c.addi4spn  a1, sp, 736
                  mul         ra, t4, t3
                  sltu        a3, a4, s7
                  divu        a0, s3, t1
                  c.srli      a5, 7
                  c.sub       a2, a1
                  c.mv        a3, a3
                  sra         s9, a5, t3
                  c.addi      ra, -1
                  slti        t5, t4, -827
                  c.or        a0, a2
                  nop
                  c.addi4spn  a0, sp, 704
                  c.slli      gp, 1
                  c.slli      s8, 18
                  c.slli      s3, 25
                  slt         a3, t5, a4
                  mulh        zero, s4, t5
                  srai        a7, gp, 4
                  mulhsu      t1, s1, a4
                  sll         t1, ra, a7
                  c.or        a0, a2
                  srl         s0, t0, a3
                  c.addi      a2, 24
                  div         a3, a6, s4
                  slti        a4, a0, -355
                  mul         t1, a0, s2
                  mulhu       s7, s9, t3
                  divu        s8, s10, t0
                  c.andi      a0, 11
                  slti        a2, t0, -1024
                  div         zero, t3, s7
                  nop
                  mulhu       t0, zero, t1
                  c.or        a3, a3
                  c.addi16sp  sp, 304
                  srli        tp, s10, 22
                  or          t1, s3, s7
                  slti        s1, a5, -35
                  c.srli      a2, 29
                  add         t0, s7, s4
                  div         a5, s10, t3
                  c.srai      a0, 12
                  sltiu       gp, a3, 1038
                  slti        s11, ra, 143
                  sra         s3, t4, s3
                  mulhu       t0, a1, s0
                  c.srli      a0, 3
                  or          zero, a5, s4
                  c.sub       a0, a5
                  slli        s2, s2, 28
                  mul         s2, zero, s4
                  c.addi4spn  a3, sp, 384
                  mul         gp, a2, s7
                  c.sub       a2, a1
                  c.mv        t5, ra
                  lui         s5, 795142
                  srai        t0, a0, 17
                  sltu        a4, t3, a1
                  slt         s4, s5, t2
                  c.slli      s0, 19
                  c.add       a4, s11
                  mulhu       a5, s2, s6
                  div         a4, t2, s3
                  ori         s1, s4, -1223
                  xor         s11, ra, a2
                  c.slli      s8, 31
                  lui         s2, 434708
                  sll         a7, zero, ra
                  srl         a4, a5, s2
                  slt         a5, s8, ra
                  c.and       a0, a1
                  sll         t0, sp, t4
                  c.srli      a0, 9
                  c.and       a3, a0
                  or          t5, s11, a2
                  c.addi16sp  sp, 256
                  sltiu       s4, s5, -1533
                  rem         zero, ra, s8
                  c.andi      a0, -1
                  xori        a2, a5, 1367
                  c.srai      a2, 27
                  add         a2, s0, s2
                  sltiu       s7, t1, -1421
                  c.addi      gp, -1
                  c.andi      a3, -1
                  auipc       s0, 268956
                  c.andi      s0, -1
                  add         a5, t2, sp
                  mulhsu      zero, ra, s11
                  xori        gp, t2, -1143
                  c.nop
                  and         a4, s5, t1
                  c.add       s4, t2
                  c.and       a4, a1
                  c.and       a0, s1
                  div         t4, a5, s0
                  c.srai      a2, 4
                  c.srli      a0, 16
                  mulhsu      s9, a2, a4
                  and         gp, t3, s2
                  srl         s4, s4, sp
                  c.nop
                  addi        t5, a1, 1536
                  c.xor       a3, s1
                  mul         a1, s11, t6
                  sltu        s2, s1, a4
                  c.srli      a2, 2
                  xori        s3, t6, 1096
                  c.addi16sp  sp, -16
                  slt         a2, a5, s8
                  c.nop
                  c.addi16sp  sp, -16
                  srli        a3, t0, 16
                  sltiu       a4, s8, 1403
                  slt         a6, s4, t1
                  mul         s11, gp, zero
                  srl         s2, a0, s11
                  c.addi4spn  a0, sp, 848
                  c.lui       a6, 16
                  c.add       s4, t3
                  sra         a5, gp, zero
                  c.andi      a4, 12
                  mulhu       zero, t1, ra
                  sltu        ra, s7, gp
                  slti        t4, ra, 1522
                  c.lui       s2, 25
                  c.andi      a0, 7
                  sub         zero, ra, a0
                  c.srli      a3, 12
                  c.mv        a2, sp
                  mulhu       t3, t2, t4
                  c.slli      a3, 11
                  xori        s6, tp, -152
                  c.li        t5, 6
                  mulhu       zero, t5, ra
                  add         s5, t5, s6
                  c.addi      a3, 29
                  mul         s2, t4, zero
                  or          t0, s2, zero
                  sltiu       s6, s5, -1491
                  c.li        t4, -1
                  ori         zero, ra, 1325
                  c.or        a3, a0
                  mul         a7, t6, s9
                  c.addi4spn  a0, sp, 832
                  mulh        s7, s8, s8
                  srai        t4, t1, 25
                  slt         s9, a0, s9
                  and         s1, t0, ra
                  or          zero, t2, s3
                  c.addi      t0, 26
                  xori        a6, t2, -126
                  slli        sp, a1, 21
                  c.slli      s11, 12
                  c.nop
                  div         a4, a7, t6
                  slli        t1, t0, 20
                  sltiu       t5, s10, -188
                  c.andi      a0, 28
                  lui         s0, 755524
                  c.nop
                  srl         s9, tp, s2
                  rem         s11, s6, t5
                  c.and       a0, a1
                  c.slli      s7, 18
                  sra         s8, t4, s0
                  c.li        t3, -1
                  addi        s2, s8, -1428
                  c.lui       ra, 31
                  sll         sp, t2, s9
                  srl         s2, t2, a5
                  c.addi      t1, -1
                  slli        s5, s7, 27
                  sltu        a1, s6, s11
                  c.andi      a0, 23
                  srl         tp, t2, s6
                  c.and       a0, a3
                  and         zero, a3, s5
                  srai        s8, s6, 29
                  add         a7, a2, a6
                  div         s7, t6, s5
                  slt         s2, s8, a1
                  c.andi      a3, 8
                  sra         gp, s8, tp
                  c.li        gp, 18
                  or          s3, t1, a4
                  c.li        ra, 3
                  add         zero, t3, ra
                  div         t5, a6, zero
                  or          s5, t6, a7
                  andi        s6, t3, -1388
                  sltu        s9, zero, s11
                  c.lui       s6, 26
                  c.slli      s11, 2
                  c.slli      ra, 22
                  xor         s11, s6, t1
                  xori        a2, a2, 1269
                  mulhu       s9, t1, gp
                  c.srai      a2, 11
                  c.mv        s7, s1
                  c.or        s0, a4
                  c.or        a0, a2
                  mul         t3, a5, s10
                  lui         zero, 619142
                  or          t0, a6, zero
                  or          s6, ra, t5
                  c.mv        s9, tp
                  c.slli      s7, 24
                  c.slli      a0, 20
                  and         a0, t3, t6
                  c.addi4spn  a3, sp, 640
                  div         t0, t1, s1
                  divu        s4, sp, s10
                  srli        a0, a7, 4
                  or          s2, s4, zero
                  mulh        zero, s7, s3
                  mul         s11, t6, tp
                  or          a1, t1, s6
                  div         zero, s11, tp
                  slti        t4, tp, -313
                  c.srai      a3, 12
                  mulh        zero, a1, a0
                  sra         s5, a2, a6
                  sltu        s7, t3, s4
                  sltiu       zero, s11, -97
                  c.nop
                  mulhu       a5, a6, s9
                  or          s4, t4, s10
                  mulhu       t4, s3, t1
                  srl         s5, a3, a5
                  srai        s3, s8, 28
                  mulhsu      zero, t1, s2
                  c.andi      a0, 15
                  lui         a1, 645097
                  slt         zero, t0, tp
                  c.lui       ra, 22
                  c.srai      s0, 28
                  sll         zero, s10, s8
                  c.add       a0, a6
                  add         s0, t6, a5
                  sll         zero, s1, a3
                  sltu        a4, sp, a6
                  c.nop
                  c.or        a0, a1
                  c.mv        sp, s2
                  or          a2, s0, a6
                  sub         a3, s3, gp
                  c.nop
                  c.andi      a0, -1
                  srai        a1, t2, 24
                  rem         a0, s7, s2
                  c.andi      a4, -1
                  c.nop
                  c.slli      sp, 1
                  add         s7, t0, s5
                  c.or        a0, a0
                  c.slli      s3, 5
                  lui         zero, 531333
                  c.addi16sp  sp, -16
                  mulhsu      a6, s3, s8
                  c.addi      ra, -1
                  srl         s11, ra, a3
                  or          a6, t6, s4
                  rem         s7, a1, sp
                  ori         s4, a6, 1997
                  sub         s1, a1, s8
                  c.lui       t1, 4
                  srai        s11, s7, 18
                  div         a0, a1, t2
                  c.addi      s5, -1
                  mulhu       a5, sp, s3
                  mulhu       ra, t5, sp
                  mulh        a6, s5, s11
                  addi        s3, s6, 1335
                  rem         s6, t3, a3
                  xori        s0, a7, 894
                  c.or        a0, a2
                  addi        t4, a0, -197
                  c.lui       t1, 18
                  sltiu       a3, s4, 1552
                  sra         zero, tp, s0
                  c.or        a3, a2
                  mul         tp, s3, t0
                  c.add       t0, s3
                  slti        zero, s4, 374
                  c.or        a0, a1
                  addi        zero, tp, 983
                  c.andi      a0, 13
                  srai        s11, s7, 3
                  c.sub       a0, s1
                  c.xor       a0, a2
                  sltu        gp, sp, zero
                  addi        a4, tp, 1185
                  sltiu       ra, t6, -379
                  c.lui       ra, 26
                  sll         s2, s5, t1
                  c.and       a0, a3
                  c.or        a0, a0
                  srai        s6, t5, 0
                  mulhu       gp, s11, gp
                  c.li        s11, -1
                  c.addi4spn  a0, sp, 624
                  div         tp, s11, s10
                  c.andi      a2, -1
                  c.addi4spn  a2, sp, 656
                  or          zero, a7, s8
                  srai        s4, s3, 22
                  rem         t1, a4, s3
                  srai        ra, gp, 28
                  c.sub       a0, a3
                  srli        a0, a0, 29
                  c.slli      a4, 24
                  sltu        a3, s3, gp
                  ori         t3, s1, 1624
                  c.mv        s7, a6
                  add         t4, a4, s4
                  divu        a7, t6, s8
                  mulhsu      t5, a0, t3
                  sltiu       a0, s4, -2014
                  c.slli      s11, 1
                  auipc       s0, 302712
                  xori        ra, t1, 542
                  c.xor       a0, a0
                  mulhu       a6, t2, a3
                  add         s6, t2, a4
                  c.lui       a0, 27
                  rem         t0, a1, ra
                  c.xor       a0, a3
                  c.lui       s0, 29
                  add         s2, s1, a6
                  mulhsu      t5, s2, a0
                  slt         s4, s0, t6
                  srai        a5, a3, 11
                  rem         s11, s5, ra
                  mulhsu      t3, s8, t3
                  mul         zero, t2, zero
                  mul         a6, tp, t6
                  c.addi4spn  a2, sp, 352
                  c.slli      a0, 2
                  xor         tp, s8, sp
                  c.srai      a1, 22
                  c.nop
                  c.andi      a2, -1
                  c.and       a3, a3
                  or          a2, gp, s5
                  c.or        a3, a3
                  addi        tp, t3, 161
                  add         t3, a2, s8
                  sll         a4, s1, a1
                  c.xor       a5, s1
                  c.mv        a6, s10
                  sll         ra, s11, s10
                  c.andi      s0, 21
                  c.mv        tp, a1
                  srl         t3, s6, gp
                  sltiu       a2, s4, -1442
                  slti        s6, gp, -1962
                  c.slli      s5, 16
                  add         s3, a3, s4
                  c.addi4spn  a0, sp, 208
                  and         zero, a4, t4
                  srai        s7, t5, 20
                  rem         s3, s4, s9
                  srl         zero, s5, a5
                  ori         s9, s0, -410
                  mulhu       s8, s3, t5
                  lui         s11, 377144
                  nop
                  sub         a3, s0, t2
                  rem         s8, a6, s9
                  sltiu       s1, tp, -1720
                  auipc       a6, 839741
                  mulhsu      s4, t3, s10
                  lui         a7, 522006
                  c.or        a3, a2
                  rem         s4, a6, ra
                  sltu        gp, s8, s7
                  divu        a7, s8, a3
                  nop
                  c.addi4spn  a2, sp, 976
                  c.add       a0, s6
                  mulhsu      s11, a4, a4
                  c.lui       s11, 19
                  sll         t4, s9, t1
                  addi        a1, a3, 1076
                  mulh        sp, a1, ra
                  divu        t1, s6, t3
                  c.andi      a4, -1
                  sub         a5, s4, a1
                  c.and       a2, a0
                  slt         t4, s10, s6
                  mulhu       s7, zero, s3
                  srai        s0, a7, 20
                  srai        t0, s5, 25
                  c.andi      a3, -1
                  c.srli      a5, 23
                  or          t4, s5, zero
                  c.and       a0, s1
                  add         s4, s2, a7
                  or          a4, t2, a7
                  slli        s2, s7, 13
                  srl         zero, a6, a2
                  slli        a6, tp, 6
                  c.andi      a3, 17
                  c.addi4spn  a3, sp, 208
                  c.addi4spn  a0, sp, 608
                  srl         a0, a4, s1
                  mul         zero, s10, t2
                  c.andi      a1, 20
                  slt         zero, a5, gp
                  sltiu       zero, sp, -655
                  add         s5, s1, s8
                  c.sub       a3, a0
                  mul         s9, t4, gp
                  addi        s11, sp, -944
                  ori         t4, a7, -113
                  srl         t4, a5, s6
                  xori        sp, ra, 1243
                  mul         t3, zero, s6
                  div         gp, s9, s8
                  sub         a0, a0, t3
                  xori        t4, s5, -676
                  sltiu       zero, t3, -1612
                  and         a2, t6, s7
                  c.mv        ra, t1
                  sll         s6, a4, s7
                  slti        gp, a5, 1044
                  c.slli      ra, 11
                  c.xor       a0, a5
                  c.addi4spn  a5, sp, 640
                  add         a2, s3, s7
                  c.nop
                  auipc       t4, 505457
                  rem         s5, zero, t6
                  andi        t1, t2, 1007
                  mulhu       sp, s8, s10
                  mulhu       s5, s0, s3
                  or          a6, zero, s5
                  lui         t0, 672378
                  sra         s6, sp, a7
                  c.andi      a0, 10
                  sll         a1, t2, s9
                  li         gp, 0x0 #start riscv_int_numeric_corner_stream_7
                  li         t5, 0x3cdb0d24
                  li         t4, 0x210bfa21
                  li         t3, 0x41b9283
                  li         s11, 0x7ca418bd
                  li         s8, 0x3d29ff48
                  li         s7, 0x0
                  li         a3, 0x0
                  li         a2, 0x0
                  li         a5, 0x4dae178a
                  add         s8, a5, s7
                  c.add       ra, s9
                  mulhu       s3, s8, s7
                  c.li        a0, -1
                  c.lui       ra, 11
                  mulhsu      a2, s0, s2
                  c.sub       a0, a3
                  c.mv        a6, a1
                  sub         zero, a7, s5
                  c.mv        t3, s10
                  c.add       a3, t3
                  c.li        t1, 4
                  c.sub       s0, a3
                  add         s1, a3, zero
                  addi        gp, s3, 450
                  add         a4, s7, t0
                  mul         t1, s9, a2
                  sub         t5, s0, s1
                  c.add       s4, sp
                  add         s6, gp, a5
                  mulhsu      sp, zero, t4
                  mulh        a7, tp, s5
                  nop
                  div         a6, t4, a7
                  c.li        ra, 21
                  auipc       t5, 511474
                  add         s8, a2, sp
                  c.addi16sp  sp, -16
                  div         t1, s6, tp
                  mulhsu      s5, zero, s0
                  srl         s3, t0, t1
                  sra         sp, t5, s3
                  rem         a0, s10, s0
                  c.srli      a3, 6
                  divu        s3, a7, s7
                  srai        zero, s4, 2
                  c.add       t3, s1
                  srai        zero, s6, 6
                  c.xor       a2, a1
                  mul         s5, t3, a6
                  slti        zero, a2, -842
                  c.slli      s1, 26
                  slli        s3, a7, 27
                  c.andi      a0, 1
                  sra         s3, a6, s4
                  andi        gp, s1, 1865
                  auipc       s4, 913505
                  c.and       a0, a0
                  c.xor       a0, a2
                  slt         s0, s3, a4
                  xori        gp, a0, -588
                  sll         sp, t4, a1
                  lui         a7, 309484
                  ori         s2, zero, 251
                  srl         a0, a7, s11
                  c.or        a0, a1
                  sltu        a3, t6, a1
                  c.nop
                  sub         s8, s8, s0
                  div         t4, zero, s5
                  c.addi16sp  sp, 384
                  c.mv        t0, s10
                  c.nop
                  div         a1, t0, zero
                  nop
                  sltiu       t5, t3, -1417
                  srli        ra, s11, 27
                  sub         s4, s3, sp
                  addi        t5, s10, 1825
                  c.nop
                  lui         s9, 424832
                  c.addi4spn  a3, sp, 800
                  sub         t1, s5, t3
                  sltu        s8, sp, s11
                  c.addi4spn  a3, sp, 528
                  divu        t5, s0, sp
                  c.addi4spn  a0, sp, 544
                  c.addi16sp  sp, 464
                  c.slli      s6, 2
                  slli        s6, s11, 5
                  lui         t0, 141583
                  andi        a7, s8, 23
                  andi        s8, a3, 1854
                  addi        a2, s11, -1451
                  or          t0, s1, a5
                  sub         a6, s3, s0
                  srli        s3, s6, 25
                  c.andi      a0, 22
                  c.li        a7, -1
                  c.or        a0, a3
                  sra         a6, tp, zero
                  c.lui       ra, 31
                  sll         zero, a1, s0
                  sll         a5, ra, s6
                  xori        a5, a4, -575
                  li         t5, 0x1 #start riscv_int_numeric_corner_stream_16
                  li         s11, 0x0
                  li         t4, 0x1
                  li         s9, 0x1
                  li         s8, 0x0
                  li         t3, 0x0
                  li         s4, 0x71cc6e5b
                  li         s3, 0x1
                  li         a3, 0x1
                  li         s7, 0x0
                  c.add       sp, ra
                  sub         zero, s6, s7
                  c.nop
                  mulhsu      tp, t3, s4
                  addi        s4, a1, 1291
                  addi        s8, t3, -527
                  lui         a5, 185757
                  mulh        zero, s2, s5
                  c.add       ra, s7
                  divu        a6, s2, t5
                  c.mv        s6, s9
                  addi        t4, a0, -781
                  c.lui       gp, 29
                  rem         a6, a7, s5
                  sub         sp, s10, sp
                  c.addi4spn  a3, sp, 704
                  mulhsu      s1, a3, s4
                  c.mv        a4, t2
                  srl         sp, s11, s4
                  and         a2, t3, ra
                  c.and       a0, a0
                  add         s8, a4, s7
                  c.andi      s0, 12
                  slt         s6, s6, s6
                  c.srli      s1, 20
                  c.and       a0, s0
                  c.mv        s5, s9
                  c.addi4spn  a1, sp, 1008
                  ori         a4, zero, -236
                  add         s6, t5, tp
                  xor         s4, t5, gp
                  c.nop
                  c.lui       ra, 11
                  slli        s6, s3, 22
                  sll         a6, ra, s6
                  slti        zero, s6, 1601
                  mulhu       t0, sp, sp
                  xori        t5, t3, 29
                  c.srli      s0, 22
                  c.lui       a1, 21
                  nop
                  sltiu       a2, sp, 1546
                  slti        ra, t5, -1669
                  or          s2, a5, t2
                  c.nop
                  ori         a6, gp, -802
                  c.or        a1, a3
                  srai        sp, t1, 0
                  srli        ra, sp, 11
                  mulhu       t5, tp, s3
                  rem         s9, s3, t2
                  sll         s3, t0, t5
                  slli        t4, s1, 31
                  srai        t4, a0, 15
                  c.add       s7, a7
                  mulhsu      zero, s1, s1
                  c.li        s0, -1
                  lui         a2, 1024162
                  lui         s6, 394047
                  c.addi      a6, 31
                  c.sub       a0, a2
                  c.slli      s6, 14
                  rem         a6, t2, a5
                  slli        a3, t1, 7
                  add         s5, t4, a4
                  c.andi      a0, -1
                  srli        t3, s10, 2
                  or          s3, a0, s6
                  addi        zero, t6, -323
                  c.and       a2, a3
                  div         sp, zero, t1
                  auipc       s9, 873039
                  sub         a2, a1, s9
                  nop
                  c.add       a7, s0
                  c.or        a0, a0
                  mulh        s8, t0, s10
                  c.andi      a0, 27
                  c.addi4spn  a2, sp, 304
                  lui         a0, 748633
                  mulh        a4, t6, s8
                  ori         s1, a3, 1306
                  ori         s4, gp, -1117
                  lui         a4, 503852
                  c.add       a1, a7
                  c.add       t4, a5
                  srli        ra, s3, 14
                  slt         zero, s5, a7
                  mulhsu      a4, tp, t4
                  c.or        a0, a4
                  c.xor       a2, a1
                  xori        s3, t1, -1363
                  sll         a3, s11, t2
                  lui         s4, 673414
                  srli        t0, s2, 24
                  mulh        s0, a4, ra
                  nop
                  c.nop
                  srai        s8, t4, 25
                  mulhsu      s5, s4, t0
                  mulhsu      zero, a4, a4
                  c.lui       a4, 5
                  slli        t0, s4, 0
                  sub         t4, zero, s8
                  divu        sp, tp, zero
                  c.andi      a0, 30
                  c.srli      a0, 26
                  div         s4, t2, sp
                  lui         gp, 64582
                  or          a6, a3, a2
                  or          a2, a2, a3
                  div         a6, s11, t6
                  c.srai      a3, 30
                  sll         a5, s7, gp
                  sub         sp, s10, gp
                  nop
                  c.xor       a3, a5
                  or          t5, a7, s6
                  c.mv        ra, s11
                  ori         t1, s6, 1639
                  lui         a4, 465083
                  mulhu       a5, ra, a5
                  c.nop
                  addi        t3, ra, -933
                  c.srai      a0, 3
                  auipc       t3, 738521
                  addi        gp, s9, -1876
                  nop
                  nop
                  ori         a4, t0, 1746
                  div         t3, s1, tp
                  c.addi4spn  a0, sp, 96
                  sub         ra, a6, tp
                  c.or        a2, a0
                  mulhsu      a7, a3, sp
                  c.add       t0, t4
                  c.addi4spn  a0, sp, 208
                  c.li        a2, -1
                  slli        t3, s3, 10
                  srai        s0, a6, 11
                  sub         s2, t3, a0
                  nop
                  or          a2, s4, a4
                  c.lui       ra, 23
                  addi        s4, s2, -1921
                  sll         ra, sp, t3
                  auipc       t5, 850499
                  div         s1, a2, t0
                  add         s7, s7, gp
                  c.andi      a3, 9
                  c.slli      s7, 5
                  srai        a2, t0, 24
                  add         t5, t1, a2
                  lui         sp, 942435
                  sll         t3, s0, t4
                  srl         s3, s8, a6
                  nop
                  c.addi16sp  sp, -16
                  mulh        tp, t6, t6
                  slti        zero, a0, 1325
                  mulhu       s9, t3, a3
                  c.srli      a0, 14
                  sltiu       s5, s11, -1619
                  and         s5, a7, t1
                  slti        zero, t4, 1548
                  andi        a3, t4, 543
                  mul         s4, zero, s1
                  c.mv        a7, t2
                  srai        s2, s11, 11
                  c.or        a3, a3
                  auipc       sp, 896017
                  mulh        tp, t5, s2
                  and         a1, t6, t0
                  divu        t0, t0, t1
                  lui         s0, 252004
                  srai        s6, t4, 25
                  lui         gp, 114961
                  mulh        sp, t3, s2
                  and         s3, t5, a6
                  c.slli      a0, 29
                  sub         s2, tp, sp
                  c.slli      s2, 9
                  c.srai      a0, 9
                  slti        a0, zero, 69
                  c.and       a0, a3
                  div         zero, zero, a6
                  c.srai      a3, 21
                  sltiu       s6, s7, -1776
                  c.addi4spn  a0, sp, 80
                  c.nop
                  c.mv        sp, s7
                  or          zero, s0, zero
                  sltiu       s0, s1, 306
                  c.sub       a0, s1
                  c.andi      a0, 17
                  c.nop
                  div         s0, a0, sp
                  lui         a6, 261123
                  c.and       a0, a1
                  c.xor       a5, a1
                  divu        a7, a4, s7
                  c.andi      a2, -1
                  c.andi      s1, -1
                  div         ra, s5, ra
                  sub         s1, s3, s5
                  divu        a7, a2, s10
                  sltu        s2, a1, a2
                  rem         ra, a5, s1
                  c.sub       a3, a2
                  c.addi4spn  a0, sp, 384
                  xori        a1, s1, 64
                  c.addi16sp  sp, -16
                  sub         s0, s8, s10
                  c.srai      a5, 6
                  c.xor       a0, a3
                  c.nop
                  mulhsu      s6, t1, t4
                  c.nop
                  slt         a5, t6, t2
                  srai        s4, s3, 14
                  sltiu       s0, s10, -1571
                  c.and       a2, a3
                  c.lui       s5, 3
                  divu        s9, s8, a3
                  div         gp, s8, t4
                  sltu        a4, s0, a4
                  c.addi16sp  sp, 64
                  div         t5, s3, s2
                  xor         zero, s5, s1
                  sra         s5, t2, s2
                  c.addi      s1, 24
                  ori         s6, s3, 1179
                  srl         sp, a6, t2
                  auipc       s4, 298536
                  add         s3, a7, a5
                  mulh        sp, s9, a3
                  divu        zero, t0, a1
                  andi        zero, a7, 1548
                  slt         a1, t5, a0
                  c.addi      sp, 16
                  and         tp, t5, a6
                  c.addi4spn  a0, sp, 944
                  mulhsu      t0, a4, s8
                  c.addi4spn  a0, sp, 736
                  div         a7, s9, s4
                  c.srli      a2, 7
                  c.slli      ra, 30
                  mul         a4, s6, s2
                  add         s3, s6, s10
                  mulhu       s7, a3, s4
                  slt         s7, s10, gp
                  mulh        s5, s10, ra
                  add         t5, s1, s4
                  addi        a2, t1, 610
                  xor         sp, ra, a7
                  c.addi      a6, -1
                  c.or        a3, a3
                  nop
                  or          t3, a3, s0
                  c.srli      s1, 15
                  c.xor       a0, s0
                  slti        s0, s1, -183
                  nop
                  c.addi      s1, 18
                  addi        t1, s3, -236
                  srai        s4, s2, 11
                  sll         a5, a2, t0
                  c.mv        t5, a7
                  c.andi      a0, -1
                  c.xor       a0, a3
                  sltiu       s3, a3, -92
                  c.add       a6, a5
                  xori        a5, a6, -1090
                  c.nop
                  sub         zero, s3, t5
                  li         t5, 0xe3367a6 #start riscv_int_numeric_corner_stream_12
                  li         t3, 0x1
                  li         t4, 0x1
                  li         s11, 0x4b47f76f
                  li         s9, 0x1
                  li         t0, 0x0
                  li         a0, 0x0
                  li         a1, 0x1
                  li         s3, 0x1
                  li         gp, 0x1
                  mulhu       s5, a0, s8
                  lui         zero, 1007665
                  c.lui       s6, 22
                  c.sub       a0, a0
                  divu        s0, t5, a5
                  div         a0, a0, a3
                  mulhu       a3, a7, zero
                  mulh        a3, s4, sp
                  auipc       s9, 938924
                  c.lui       a7, 27
                  rem         s5, t1, s0
                  c.addi      t3, 21
                  c.addi16sp  sp, 304
                  c.add       t5, sp
                  rem         s0, t2, s10
                  addi        t3, sp, -50
                  c.li        s11, -1
                  c.li        t3, -1
                  add         a0, s3, s1
                  auipc       gp, 650454
                  mulhu       a5, s5, a2
                  c.add       sp, s3
                  mul         a3, zero, s11
                  c.nop
                  c.sub       a0, a2
                  sltiu       ra, a3, -1304
                  and         gp, ra, a3
                  c.nop
                  addi        a5, t2, 67
                  c.nop
                  div         a4, a6, a5
                  c.lui       s6, 10
                  mulh        zero, s9, a1
                  mulh        a6, s8, s8
                  srli        a7, s8, 0
                  lui         sp, 847302
                  addi        t4, a5, 284
                  sra         a6, sp, zero
                  xori        s6, s0, 1734
                  c.xor       a2, s0
                  divu        ra, s11, tp
                  c.addi4spn  a0, sp, 272
                  c.andi      a2, -1
                  sub         ra, t3, s5
                  and         a5, s11, a6
                  mul         a7, s4, s6
                  c.sub       a2, a1
                  xori        t3, t4, -1771
                  ori         gp, ra, -289
                  srl         s11, s9, a6
                  auipc       zero, 762116
                  c.and       a2, a1
                  sub         s4, t3, a4
                  sll         s11, t5, s1
                  rem         s8, t4, s8
                  sltu        a1, s0, t2
                  mulh        sp, a0, s8
                  srai        s9, t6, 2
                  c.srli      a4, 8
                  xor         a4, t0, s0
                  c.srai      a0, 20
                  sub         sp, t0, t6
                  mulhu       a2, tp, s2
                  auipc       a7, 600932
                  lui         ra, 134533
                  c.srai      a0, 27
                  slti        tp, s10, 1894
                  slli        t5, t3, 19
                  mulh        s8, ra, sp
                  rem         t4, s4, s0
                  c.li        a2, 8
                  nop
                  andi        s0, s7, 1037
                  c.and       a5, a0
                  sub         a6, s8, s11
                  c.addi4spn  a2, sp, 80
                  or          s6, s0, tp
                  or          ra, s11, gp
                  c.srli      a3, 2
                  sltu        s4, sp, s8
                  mul         a3, t5, sp
                  c.mv        s5, gp
                  slti        a1, a7, -1826
                  c.slli      a4, 18
                  xori        s4, tp, 913
                  c.srai      a0, 13
                  c.add       s0, t3
                  c.slli      t1, 16
                  andi        s4, a3, 1906
                  xor         ra, gp, t6
                  c.nop
                  auipc       s5, 919562
                  lui         ra, 68597
                  slli        zero, s7, 10
                  c.addi16sp  sp, 400
                  xori        zero, t6, 1187
                  srai        s8, t2, 30
                  slli        zero, ra, 29
                  c.slli      t0, 14
                  slti        s9, s6, -882
                  c.srli      a2, 26
                  divu        s5, s0, s7
                  ori         s4, t3, -370
                  mulhsu      a6, a0, t3
                  srl         zero, t6, ra
                  nop
                  c.or        a0, a1
                  mul         t4, s1, a6
                  div         s0, a0, gp
                  c.sub       a2, a0
                  slt         ra, zero, s11
                  sub         gp, t0, s9
                  srli        a4, s9, 0
                  addi        gp, a1, 1152
                  c.sub       a0, a5
                  rem         a4, zero, a3
                  add         s8, s2, s3
                  and         a5, gp, s2
                  mulh        zero, s11, s11
                  addi        ra, s7, 644
                  ori         sp, a2, 1979
                  auipc       t4, 768197
                  add         a2, s5, s5
                  srli        sp, s5, 20
                  c.mv        s4, s5
                  andi        s8, tp, -924
                  slli        s0, a1, 28
                  div         t0, gp, t6
                  nop
                  srl         s4, a7, s6
                  c.add       s0, t3
                  c.li        s9, 2
                  sra         zero, zero, t3
                  c.srli      a3, 16
                  slti        t3, ra, 1768
                  addi        zero, sp, 282
                  addi        ra, a0, -1895
                  mulhsu      t1, a4, t2
                  c.sub       a0, a3
                  mul         sp, s9, t6
                  rem         tp, a6, gp
                  ori         a3, ra, 1833
                  c.addi      s0, -1
                  srai        a0, t1, 8
                  srli        s7, a1, 12
                  mulhu       zero, s4, t1
                  c.and       s1, a1
                  and         a3, a4, t5
                  slli        s5, t2, 7
                  c.li        a5, 30
                  c.srai      a0, 9
                  c.mv        t3, a6
                  auipc       gp, 1021533
                  xori        zero, ra, -645
                  sltu        s3, t1, s7
                  slt         a3, s2, s9
                  ori         a4, a6, -1886
                  xori        a0, a5, 198
                  add         a2, sp, t5
                  c.addi16sp  sp, -16
                  nop
                  mulhsu      s7, s8, a0
                  c.or        s0, s1
                  c.srai      a0, 9
                  c.addi16sp  sp, -16
                  and         tp, a6, s1
                  xor         s2, t3, a4
                  c.add       ra, a3
                  c.addi16sp  sp, -16
                  rem         ra, gp, s11
                  c.sub       a0, a1
                  andi        t1, gp, -1621
                  mulh        s7, t5, a4
                  xor         tp, a6, t5
                  and         a0, s9, t0
                  slli        a2, s9, 24
                  sltu        s0, s11, s9
                  srli        ra, a7, 17
                  c.xor       a0, a0
                  c.and       a2, a1
                  c.addi16sp  sp, -16
                  mul         a3, a2, t1
                  add         a2, tp, zero
                  c.xor       a2, a2
                  xori        a5, t1, -1817
                  mulhsu      s3, t1, ra
                  c.slli      t3, 12
                  xor         t4, s8, tp
                  sltu        s8, tp, t1
                  slt         tp, s5, tp
                  slli        a6, s2, 13
                  divu        zero, a3, tp
                  c.srai      a4, 16
                  slt         zero, t1, s5
                  c.and       a3, s1
                  xori        zero, t5, 903
                  slt         a3, t5, s5
                  divu        s3, s10, s10
                  lui         s6, 455161
                  sra         s11, s5, t6
                  sltiu       s11, s11, 73
                  slt         s3, t0, s8
                  c.li        s4, -1
                  andi        t5, ra, -1704
                  and         ra, a4, a1
                  sltu        a5, a7, tp
                  xor         ra, tp, a2
                  srl         sp, t5, t5
                  or          s8, s1, s3
                  srli        t5, a6, 15
                  c.or        a5, a0
                  srli        a0, t2, 7
                  srl         ra, t6, zero
                  c.addi4spn  a4, sp, 720
                  div         s8, a1, t5
                  c.add       s11, a1
                  and         t5, s4, t1
                  div         s0, a6, a5
                  ori         t3, s1, -117
                  slt         tp, s7, a2
                  andi        ra, s1, -1859
                  c.addi16sp  sp, -16
                  c.slli      s3, 1
                  c.srai      a0, 21
                  add         a7, s3, s8
                  div         a0, s5, a6
                  srli        zero, gp, 31
                  sub         a0, s6, s4
                  c.andi      a0, -1
                  divu        s8, s11, a7
                  slli        a1, gp, 24
                  srl         t4, a4, s5
                  mulhsu      s1, s2, t6
                  div         s5, a3, a6
                  add         s0, t2, s2
                  sltiu       a2, t1, -832
                  mulhu       t4, ra, sp
                  c.li        s5, -1
                  auipc       t5, 746441
                  sll         s4, a2, s10
                  c.addi      t5, -1
                  c.srai      a0, 31
                  sub         sp, tp, zero
                  sll         a4, s5, zero
                  sub         s9, a4, s7
                  andi        s3, t4, -73
                  xori        zero, a2, -1656
                  and         a7, gp, t2
                  c.srai      a0, 13
                  lui         zero, 839995
                  c.xor       a0, a1
                  c.srli      a0, 17
                  slli        s5, a2, 18
                  c.andi      a0, -1
                  ori         zero, t3, -1467
                  c.add       t0, ra
                  slt         zero, s11, a7
                  addi        a5, s9, -482
                  mulh        t4, s3, a3
                  lui         a1, 753019
                  c.srai      a3, 28
                  nop
                  sltu        a6, s2, s9
                  c.sub       s1, a3
                  c.slli      ra, 22
                  c.or        s0, a1
                  c.xor       a0, a3
                  add         gp, s10, s4
                  add         sp, s6, s9
                  nop
                  divu        t4, s9, s7
                  rem         s5, t5, a0
                  srai        sp, t0, 12
                  c.lui       ra, 2
                  c.and       a3, a3
                  c.lui       ra, 22
                  mulhsu      s7, gp, a6
                  sub         t3, t6, a6
                  mulhu       s5, a4, a2
                  add         a7, t2, s7
                  ori         zero, ra, 1340
                  srl         a2, ra, a3
                  andi        s1, gp, 1060
                  sll         zero, t3, s0
                  mulh        s6, s0, a7
                  add         s8, s4, gp
                  sub         t5, t0, t3
                  srai        t0, ra, 10
                  srl         t1, a7, a0
                  addi        ra, t6, 1539
                  mulh        zero, t0, t6
                  nop
                  c.srli      a2, 10
                  or          zero, s5, s10
                  sub         a7, a6, t4
                  c.srli      a2, 7
                  c.nop
                  srli        ra, t3, 24
                  mulhu       sp, s5, a3
                  add         t4, a3, a4
                  and         ra, a7, s9
                  rem         t5, s9, a5
                  srli        t5, s0, 14
                  c.li        ra, -1
                  mulhu       zero, a2, s3
                  sltiu       a6, tp, 1961
                  c.and       s0, a0
                  srli        t1, a7, 19
                  ori         s4, s11, 1561
                  slt         s8, s6, s10
                  srli        t3, a4, 24
                  c.mv        a0, a2
                  c.srai      s0, 23
                  nop
                  andi        s11, a1, -716
                  divu        s5, s11, a2
                  mulhu       gp, t3, a0
                  c.srli      a0, 9
                  c.andi      a0, -1
                  and         gp, zero, s2
                  rem         s0, t6, s0
                  andi        t1, s6, 559
                  xor         t0, s3, s5
                  c.and       s0, a1
                  srai        s2, s9, 14
                  rem         a2, t1, s7
                  divu        s7, t5, s8
                  andi        tp, sp, -397
                  and         s2, t0, sp
                  c.addi16sp  sp, -16
                  auipc       a2, 469538
                  mulhu       s6, a4, t0
                  c.sub       a0, a0
                  xor         a6, t1, t4
                  c.srli      a5, 11
                  slli        s0, s11, 13
                  c.addi16sp  sp, 400
                  srli        s1, s8, 10
                  sltu        tp, t5, t0
                  srai        zero, s0, 3
                  sll         s0, a0, s11
                  c.li        a1, 28
                  ori         a5, s6, 117
                  c.addi16sp  sp, 304
                  xor         zero, t5, a2
                  srl         t4, s5, sp
                  xor         t4, s11, a5
                  c.addi16sp  sp, 368
                  c.or        a0, a3
                  c.addi4spn  s0, sp, 176
                  add         s7, a5, s4
                  c.srli      s0, 28
                  c.add       s2, a0
                  c.and       a2, a2
                  c.srai      a3, 8
                  c.add       sp, a5
                  auipc       s7, 212648
                  mul         a2, a1, a7
                  c.li        s7, -1
                  nop
                  sltu        ra, s4, a4
                  c.sub       a0, a1
                  mulhu       t5, t4, s1
                  ori         zero, a7, 906
                  divu        a4, a3, s10
                  or          t1, t2, t5
                  srl         sp, a1, s6
                  c.srai      a0, 18
                  c.andi      a0, -1
                  sltu        s3, a4, s3
                  c.mv        a6, s10
                  slli        s7, a1, 22
                  rem         s7, s6, s0
                  c.add       s7, s7
                  slli        t4, t4, 2
                  c.or        a0, a1
                  auipc       t1, 855741
                  rem         a3, sp, t5
                  c.srli      a0, 31
                  c.addi16sp  sp, -16
                  div         s7, a3, s1
                  c.or        a0, a0
                  mulhsu      s3, a7, s11
                  mulhu       s9, t1, a0
                  c.nop
                  sltu        s11, a1, s4
                  c.and       a3, a1
                  mulh        s1, t6, s8
                  xor         a6, gp, s10
                  and         s9, a5, a3
                  xori        t4, s2, -746
                  ori         s11, gp, -1982
                  srl         tp, s9, s6
                  slti        s9, s9, -1589
                  andi        s7, gp, 2004
                  add         s7, gp, s6
                  xori        s4, s6, 511
                  c.srli      a0, 7
                  divu        s5, s11, sp
                  c.xor       s0, a3
                  c.srli      s1, 12
                  nop
                  slti        a3, s7, -938
                  or          s8, zero, s10
                  c.addi16sp  sp, -16
                  mul         t0, t5, a1
                  ori         s3, sp, -863
                  srl         ra, t2, t4
                  mul         t1, a1, t6
                  slti        a7, t3, 1002
                  sra         a1, s11, a2
                  c.xor       a3, s1
                  mulh        a2, s10, s5
                  c.xor       a2, s0
                  mulhsu      s0, tp, a7
                  c.sub       a0, a4
                  ori         s1, s1, -1660
                  mulhsu      t3, a3, t1
                  ori         t0, s6, -188
                  c.slli      s6, 4
                  c.xor       a0, a1
                  div         a6, t6, s9
                  divu        s4, a2, t1
                  c.addi16sp  sp, 304
                  divu        a5, tp, a4
                  srl         s3, a1, t3
                  and         a3, a2, s5
                  c.li        s6, -1
                  addi        s7, s0, 283
                  srl         t3, a4, s6
                  c.or        a5, a1
                  c.li        ra, -1
                  addi        gp, t2, 809
                  c.srai      a0, 13
                  c.and       a0, a3
                  c.add       tp, s1
                  c.srli      a0, 27
                  sub         s7, a2, s10
                  c.xor       a1, a2
                  sll         a0, a7, t6
                  srl         a4, s10, s2
                  auipc       s4, 147945
                  srai        a5, a2, 13
                  mul         a5, tp, s3
                  mul         a4, s0, t4
                  sll         s1, gp, t6
                  c.slli      s2, 12
                  sll         s2, a1, s9
                  add         a6, t1, t2
                  sll         zero, a1, t4
                  mulhsu      a4, a2, s1
                  c.and       a5, a3
                  sra         zero, s9, s9
                  mulh        ra, s4, s3
                  mulhu       s3, t0, s3
                  c.addi      a3, 18
                  rem         t4, t6, a6
                  c.add       s0, s2
                  slt         t1, tp, a3
                  srai        gp, t4, 25
                  auipc       a0, 47574
                  c.srai      a0, 7
                  c.srai      a3, 25
                  auipc       s7, 881267
                  slli        a7, gp, 17
                  slti        s1, a6, 1857
                  sub         a6, a1, zero
                  or          s2, a3, ra
                  or          tp, sp, sp
                  xor         a7, s5, s9
                  c.add       s1, t6
                  add         a0, s9, s8
                  div         a3, s6, a1
                  c.addi4spn  s0, sp, 496
                  srai        a0, a7, 12
                  c.srli      a0, 30
                  sra         a6, s5, t6
                  srli        zero, s10, 31
                  xor         a7, sp, a3
                  auipc       s4, 597245
                  sll         tp, s6, s2
                  sltiu       zero, a7, -1083
                  xori        sp, s2, 165
                  lui         a7, 360452
                  slt         t4, s7, t6
                  nop
                  mulh        zero, a5, a2
                  slt         zero, s10, t1
                  nop
                  c.add       a2, a6
                  c.nop
                  or          s2, s9, t5
                  add         s1, s3, s2
                  divu        s0, a7, a2
                  c.or        a0, a1
                  sll         a5, t2, t3
                  c.addi16sp  sp, 336
                  c.andi      a1, -1
                  c.or        a4, a3
                  nop
                  divu        t3, s4, a2
                  slli        s2, t5, 23
                  mulh        t4, a3, a6
                  xori        a6, s7, 1431
                  c.and       a0, a0
                  sll         zero, s8, t5
                  mulhsu      tp, a1, s0
                  slli        s7, s2, 20
                  xori        t4, sp, -1159
                  rem         s3, t3, s8
                  c.add       t3, t3
                  c.srai      a0, 20
                  c.add       s3, a0
                  or          a5, ra, s10
                  xor         a6, s1, gp
                  c.add       t0, tp
                  ori         gp, ra, 779
                  sll         s1, t1, s9
                  or          s0, s11, a3
                  andi        s3, s5, -580
                  rem         s3, t4, a1
                  auipc       a3, 319253
                  c.srli      a3, 10
                  andi        s4, a6, 1281
                  c.xor       a0, s1
                  srl         s7, tp, s7
                  rem         tp, t6, zero
                  auipc       tp, 804371
                  nop
                  c.or        a3, s0
                  slti        s5, ra, 873
                  sra         tp, s3, s5
                  ori         zero, s7, -1660
                  sra         a3, t3, s8
                  div         s8, s8, a6
                  c.addi      s11, 5
                  c.addi      ra, 5
                  c.or        a0, a3
                  c.addi16sp  sp, -16
                  mulhu       s7, gp, s4
                  c.andi      a0, -1
                  mulh        sp, zero, t5
                  c.addi      t4, -1
                  divu        t0, s9, s10
                  sll         s2, ra, a7
                  sra         t3, s10, s1
                  c.srai      a1, 12
                  c.nop
                  c.xor       a0, a2
                  c.srli      a0, 17
                  c.andi      a0, -1
                  c.and       a2, a4
                  rem         t5, s2, s10
                  c.nop
                  c.andi      a3, -1
                  auipc       s3, 845983
                  ori         s9, t2, 1895
                  c.mv        s4, s6
                  srai        s9, s9, 25
                  slt         s9, a3, tp
                  c.sub       a3, a1
                  andi        s3, s3, -942
                  c.addi4spn  a1, sp, 544
                  sub         s11, t3, s0
                  c.sub       a0, a2
                  c.mv        s5, s1
                  sub         a4, s7, s9
                  addi        s6, ra, -1665
                  c.sub       a4, a3
                  srli        a4, a5, 9
                  andi        zero, s4, 1604
                  c.srli      a0, 27
                  xori        gp, t1, 148
                  c.andi      a3, 4
                  srl         a5, a6, tp
                  nop
                  c.mv        a5, gp
                  mulhu       a3, s9, s10
                  c.and       a0, a1
                  addi        a0, t2, 305
                  slli        s11, s9, 13
                  c.sub       a0, a3
                  sub         ra, s9, a2
                  mulh        t1, gp, t1
                  sra         a3, s4, t6
                  sltu        s1, s10, s8
                  srli        zero, s1, 7
                  nop
                  mulhsu      zero, sp, t4
                  div         t1, s4, a3
                  or          t3, t1, s4
                  divu        a4, a4, t3
                  c.andi      a2, -1
                  lui         s0, 1007453
                  c.sub       a0, s0
                  c.addi4spn  a0, sp, 528
                  slt         zero, tp, s0
                  mulhu       a5, a7, t6
                  sra         zero, sp, a1
                  mulhsu      a6, tp, t2
                  xori        t3, zero, -1474
                  srl         t1, a3, s7
                  srli        s2, s1, 16
                  srai        s2, a6, 2
                  mulh        a3, a1, ra
                  sra         s1, sp, s2
                  nop
                  mulhsu      a0, a3, s4
                  c.addi      s6, 1
                  c.srai      a5, 18
                  c.srli      a0, 19
                  slt         t4, t5, s7
                  andi        zero, s3, 1211
                  xor         sp, a7, a3
                  lui         a5, 1013972
                  c.srai      s1, 26
                  srli        a5, t6, 30
                  srli        a5, a1, 26
                  sll         tp, tp, s8
                  srli        a2, s7, 24
                  or          s7, zero, a3
                  c.mv        ra, a7
                  c.nop
                  c.xor       a2, a4
                  divu        a6, s3, s11
                  c.lui       a1, 14
                  srai        zero, a3, 12
                  c.addi      a6, -1
                  sra         t0, tp, gp
                  sltiu       s7, t5, 602
                  rem         s9, a3, s1
                  mul         s1, s10, s0
                  mulhu       zero, s5, a6
                  div         s6, s3, ra
                  c.xor       a3, s1
                  slli        zero, a5, 7
                  srl         sp, s11, t5
                  sltu        a7, a2, s2
                  c.nop
                  sll         a5, s0, t4
                  auipc       t5, 896533
                  mulhsu      tp, ra, a3
                  auipc       a2, 418842
                  sltiu       s7, s7, -630
                  c.or        a4, a0
                  div         tp, s2, s3
                  srli        a7, zero, 3
                  c.srli      a2, 10
                  c.or        a0, a2
                  sltu        a2, s2, t4
                  sub         zero, a6, s5
                  andi        a1, a3, 803
                  mulh        s4, s8, s0
                  ori         a2, t3, -735
                  slt         zero, s0, a3
                  div         zero, s8, s10
                  div         s2, ra, s11
                  add         s2, s6, s7
                  mulh        gp, a0, s10
                  nop
                  c.add       ra, s7
                  c.srai      a0, 12
                  mulhu       a1, t4, tp
                  srl         sp, tp, s4
                  xori        a2, t2, -776
                  or          s8, sp, a2
                  c.addi      ra, 9
                  xor         s2, a2, s8
                  slt         a4, tp, a5
                  sll         a6, a4, t0
                  c.sub       a3, a1
                  slti        s5, s2, 1843
                  sll         s9, s9, s6
                  sra         a0, s2, a1
                  mulh        zero, a7, t6
                  slli        tp, gp, 3
                  rem         ra, s7, t2
                  c.srai      a0, 23
                  mulh        s11, s5, t2
                  divu        s0, s0, zero
                  c.or        a0, s1
                  slli        s6, t6, 14
                  srai        a5, gp, 6
                  sll         a2, a4, gp
                  c.addi16sp  sp, 224
                  c.addi      a5, -1
                  xor         s5, s0, zero
                  sltu        s8, sp, a2
                  c.lui       t1, 14
                  srli        s9, t6, 18
                  c.add       ra, t6
                  sltu        s2, s7, s2
                  c.li        ra, 4
                  srl         a5, s0, s6
                  mulhu       gp, a3, sp
                  c.srli      a0, 23
                  sltiu       a6, a1, 1349
                  srli        gp, t3, 20
                  div         a2, a5, s1
                  xori        s3, s5, -914
                  mulhsu      t0, tp, s0
                  c.and       a3, a2
                  c.slli      a3, 6
                  slti        a0, tp, 599
                  slli        t3, s4, 4
                  c.srai      a2, 22
                  c.mv        ra, t0
                  xor         a6, s5, t0
                  c.srai      a0, 30
                  c.srai      a0, 7
                  mulhu       s4, s0, a2
                  srai        t5, t4, 8
                  nop
                  srai        a3, a6, 13
                  mulh        a7, s5, a3
                  slli        a7, a3, 23
                  c.addi4spn  a2, sp, 528
                  and         s3, a1, s10
                  addi        s8, s9, 1917
                  mulhu       a5, a0, ra
                  srai        t3, t5, 26
                  c.addi16sp  sp, 320
                  c.li        ra, 16
                  c.srli      a0, 1
                  c.srli      a4, 2
                  c.srai      s1, 30
                  mul         a3, a0, s5
                  nop
                  srli        s4, a6, 7
                  slti        a6, s0, 1870
                  ori         a4, sp, -384
                  c.slli      t3, 21
                  c.addi16sp  sp, 192
                  add         t4, gp, ra
                  mulh        sp, s8, s11
                  xori        s11, s10, 1294
                  slti        a1, t4, -1071
                  mulhsu      t1, gp, s11
                  sltiu       a4, s4, 171
                  c.andi      a3, -1
                  xori        a5, a1, -1131
                  c.slli      s0, 2
                  c.slli      s4, 1
                  lui         t4, 249353
                  ori         gp, t0, 1078
                  mul         a6, t5, tp
                  divu        t4, tp, s4
                  nop
                  c.mv        a3, ra
                  c.mv        s1, s11
                  c.add       a3, s10
                  c.and       a0, a2
                  addi        a6, s9, -493
                  nop
                  c.lui       a0, 15
                  xori        zero, sp, 199
                  srl         a3, a0, s2
                  mulhu       a4, ra, s0
                  srli        zero, s8, 13
                  sra         s9, s10, zero
                  c.andi      a0, -1
                  sub         s7, s10, a4
                  addi        gp, gp, -1261
                  c.slli      t3, 30
                  c.srai      s1, 13
                  andi        t3, gp, 1698
                  nop
                  srl         sp, s11, s2
                  srl         t5, ra, a4
                  sra         s3, a0, t5
                  lui         a1, 720862
                  mul         tp, s1, a0
                  c.andi      a0, 5
                  andi        t3, s9, 1946
                  srl         a0, a1, s11
                  andi        s1, a0, 759
                  add         s2, s2, s7
                  srai        s8, t1, 11
                  slti        sp, t6, -548
                  rem         s4, zero, t0
                  addi        s2, s4, 11
                  mul         s5, s10, t6
                  sra         s1, t2, tp
                  c.add       ra, a5
                  c.andi      a3, 27
                  c.addi      a3, -1
                  c.sub       a0, a1
                  sub         a2, t2, gp
                  mulhsu      t1, a6, s0
                  lui         ra, 223390
                  andi        tp, a5, 174
                  srai        s1, s11, 27
                  mul         s3, t2, a6
                  xori        t5, s8, 1944
                  sltiu       s8, s5, 708
                  c.lui       ra, 31
                  slti        zero, gp, -172
                  c.li        a7, 24
                  c.srai      a0, 14
                  slt         s7, t3, s2
                  div         s0, s0, s3
                  sub         a3, s10, a0
                  slt         a7, a5, s11
                  c.add       a3, t0
                  c.sub       a0, a1
                  c.nop
                  c.xor       a0, a0
                  slt         t4, a0, t4
                  c.addi      a4, 22
                  mulhsu      s6, t1, zero
                  c.xor       a3, a3
                  c.addi      gp, -1
                  ori         zero, s1, -942
                  and         sp, a2, a1
                  c.or        a0, a2
                  ori         ra, t3, 1674
                  c.add       s6, t2
                  c.srli      a0, 19
                  nop
                  auipc       s11, 304593
                  c.srai      a1, 16
                  andi        a6, a5, -406
                  srli        s1, tp, 24
                  divu        s0, a2, s10
                  mulhsu      t1, a0, sp
                  xor         s2, a7, s5
                  srl         ra, s10, t4
                  c.mv        s1, t5
                  sra         a7, a7, a7
                  c.add       a1, a4
                  c.slli      s2, 16
                  c.xor       s1, a2
                  srai        zero, t1, 10
                  srl         s7, s8, s8
                  c.add       t1, s8
                  slli        a0, a4, 0
                  c.xor       a0, a0
                  c.or        a0, a1
                  divu        s3, t1, s10
                  sltu        t0, s4, sp
                  c.addi      s1, -1
                  c.sub       a0, a1
                  c.and       a3, s1
                  srli        t5, a6, 1
                  c.slli      a3, 29
                  slt         s7, t4, a5
                  sll         s7, s3, a0
                  srl         ra, s5, t6
                  srli        s3, s7, 27
                  divu        a4, s4, gp
                  c.addi4spn  a0, sp, 736
                  slti        s1, a0, -2024
                  slti        s1, s1, 877
                  div         s0, tp, a5
                  div         a5, a1, a6
                  xor         t0, gp, s10
                  c.xor       a4, s1
                  or          s1, t0, zero
                  xori        s9, t5, -1011
                  add         s3, s7, s2
                  lui         s2, 885554
                  srai        t1, a3, 25
                  add         s1, t0, s7
                  sltu        s7, s4, a3
                  sll         zero, zero, a7
                  add         a7, s3, a0
                  c.srai      a2, 30
                  sll         a1, t4, s8
                  lui         a6, 932449
                  srl         sp, sp, t0
                  c.andi      a0, 2
                  add         sp, t1, s3
                  and         s7, ra, s8
                  c.lui       a4, 12
                  c.add       t0, a5
                  srl         s9, ra, t6
                  c.addi      ra, 19
                  c.xor       s1, a0
                  c.addi4spn  a1, sp, 352
                  c.addi      t3, 22
                  c.andi      a0, 9
                  c.andi      a2, 11
                  lui         s4, 624006
                  li         t5, 0x1 #start riscv_int_numeric_corner_stream_9
                  li         t4, 0x4e8673f3
                  li         s3, 0x1
                  li         t0, 0x1
                  li         s1, 0x1
                  li         t3, 0xa0c4535
                  li         s11, 0x1
                  li         s9, 0x0
                  li         s5, 0x1
                  li         a7, 0x1
                  c.lui       s11, 7
                  c.addi16sp  sp, 480
                  c.mv        ra, s3
                  c.nop
                  c.mv        ra, s2
                  mulhsu      t0, a5, s2
                  mulhu       a6, sp, a6
                  sub         a4, a5, t5
                  c.lui       ra, 30
                  mulh        s9, a0, s8
                  mulh        s0, a2, s5
                  lui         zero, 269286
                  c.nop
                  c.sub       a0, a1
                  mulhsu      a5, a4, t5
                  add         a5, t1, a7
                  divu        s0, gp, s3
                  c.addi16sp  sp, 112
                  c.addi      s0, -1
                  sub         s0, t3, a7
                  c.nop
                  divu        zero, a6, s2
                  c.mv        s3, s9
                  c.mv        ra, t3
                  lui         s4, 14095
                  c.addi      s3, -1
                  mulhu       s8, t6, s0
                  div         s6, s5, s10
                  mulhsu      s11, s3, a4
                  add         sp, a3, s6 #end riscv_int_numeric_corner_stream_9
                  lui         t3, 986372
                  mul         zero, a7, a7
                  c.xor       s1, a0
                  sra         zero, s9, a3
                  add         s1, t6, zero
                  c.slli      ra, 25
                  slti        t1, a5, 458
                  c.addi16sp  sp, -16
                  mulhu       zero, a5, s8
                  nop
                  mulhsu      t3, t3, a7
                  c.srai      a1, 18
                  mulh        a5, s0, t3
                  nop
                  addi        tp, s8, -860
                  sub         a2, t2, t2
                  c.addi4spn  a0, sp, 896
                  ori         t4, s8, 966
                  divu        s0, a6, a1
                  rem         zero, s9, t2
                  xor         zero, a4, s8
                  mulhsu      a4, t1, tp
                  addi        tp, a5, -32
                  sra         s1, t2, a0
                  addi        s11, t0, 1534
                  auipc       a4, 213084
                  c.addi4spn  a0, sp, 496
                  c.or        a3, a2
                  srl         a3, t4, t6
                  add         s3, a4, ra
                  or          s3, s6, t4
                  c.srai      a0, 1
                  srl         a5, a5, s1
                  sltiu       zero, t4, 1575
                  c.add       a6, t5
                  srl         s7, s10, a3
                  sra         t5, a0, t5
                  xori        zero, sp, 976
                  mulh        s1, t0, s8
                  sra         s0, s8, s9
                  c.add       s8, sp
                  lui         zero, 143895
                  c.sub       a0, a1
                  xor         s3, s0, s8
                  andi        t3, s10, 1392
                  c.add       a6, a7
                  c.addi16sp  sp, 400
                  srl         a7, a4, s11
                  nop
                  rem         ra, a2, a0
                  nop
                  sub         a0, t3, s3
                  sub         t5, s7, s6
                  c.lui       s0, 6
                  lui         s5, 333897
                  sra         tp, a2, s1
                  div         s2, t2, t3
                  c.and       a2, a1
                  srli        s11, a4, 17
                  c.addi      s1, -1
                  sltiu       a1, zero, -1252
                  ori         s11, a5, -1945
                  sltu        zero, sp, t5
                  sltu        s1, s0, tp
                  c.li        a3, 17
                  li         t5, 0x0 #start riscv_int_numeric_corner_stream_24
                  li         a6, 0x0
                  li         t4, 0x0
                  li         t3, 0x1
                  li         sp, 0x0
                  li         a5, 0x0
                  li         a3, 0x7aa6cfb2
                  li         s11, 0x1
                  li         s3, 0x0
                  li         s9, 0x35044e03
                  auipc       s2, 678079
                  c.li        ra, -1
                  divu        zero, t5, a7
                  c.addi      a1, 17
                  c.addi      t5, -1
                  c.addi4spn  a0, sp, 880
                  nop
                  sub         a2, s5, s10
                  c.sub       a0, s0
                  div         zero, s1, a4
                  c.addi      s1, -1
                  c.mv        a6, a2
                  mulh        t0, s5, t4
                  c.add       s2, t4
                  c.add       ra, s11
                  add         zero, a7, a2
                  c.mv        s11, a1
                  mul         s2, a2, t0
                  div         s5, s9, s3
                  mulh        ra, s6, sp
                  c.nop
                  mulh        a6, t4, t6
                  auipc       gp, 988895
                  mul         a7, t0, a1
                  c.lui       ra, 23
                  rem         a3, a2, a5 #end riscv_int_numeric_corner_stream_24
                  mulhsu      a5, zero, s6
                  c.srai      a0, 17
                  c.addi16sp  sp, 464
                  nop
                  srli        a1, s6, 4
                  srai        tp, ra, 11
                  auipc       s8, 19457
                  or          t4, zero, t0
                  divu        a2, gp, t5
                  c.andi      a3, 19
                  c.addi16sp  sp, -16
                  c.andi      a0, 17
                  and         a1, s8, a7
                  c.srli      a2, 15
                  lui         s5, 410060
                  andi        gp, s4, 1885
                  c.and       s1, a1
                  mulhsu      s11, s11, t0
                  srai        zero, s6, 19
                  rem         t5, t1, a2
                  c.addi4spn  a0, sp, 112
                  add         zero, s10, t4
                  sra         a4, s9, s9
                  c.slli      s7, 19
                  slt         zero, s7, gp
                  andi        zero, a7, 11
                  ori         t5, a4, 1256
                  c.slli      s8, 28
                  c.mv        s11, s0
                  srli        s4, s2, 21
                  sll         a1, tp, gp
                  c.andi      a3, -1
                  c.srli      a0, 4
                  c.sub       a3, a1
                  c.or        a2, a5
                  sll         tp, s1, t4
                  srl         a6, s2, s0
                  rem         s0, s10, a5
                  c.andi      a2, 0
                  andi        s5, a7, -1278
                  c.andi      a0, 11
                  srai        a1, s10, 20
                  c.li        s7, 5
                  mulh        zero, t0, a4
                  c.and       a2, a3
                  c.addi      a4, -1
                  srli        s11, a7, 22
                  divu        s0, s7, t1
                  c.add       ra, s4
                  slti        tp, gp, -1522
                  mulhu       zero, t5, s2
                  c.addi16sp  sp, -16
                  c.nop
                  c.xor       a2, a1
                  mulh        s7, s1, s5
                  div         zero, a4, t3
                  ori         t1, s2, -345
                  c.addi16sp  sp, -16
                  srl         a2, s7, t1
                  auipc       a5, 966087
                  c.sub       a4, a1
                  c.slli      a6, 2
                  c.li        s4, 23
                  rem         t5, zero, t6
                  mulhsu      a4, s6, t2
                  mulhu       s0, a7, s4
                  c.sub       a1, a4
                  nop
                  slti        a1, s2, -605
                  c.add       s0, s8
                  mul         a0, t1, t5
                  c.li        a5, 2
                  slli        a6, a7, 30
                  andi        a5, t0, 775
                  c.srai      a0, 1
                  divu        a1, ra, t1
                  c.addi      ra, -1
                  divu        a3, sp, s10
                  sra         zero, sp, zero
                  c.xor       s0, a0
                  c.addi4spn  a3, sp, 736
                  c.xor       a4, a0
                  c.addi      gp, 17
                  c.lui       s5, 21
                  mulh        a6, a4, s5
                  mulh        s9, a2, t0
                  xori        t0, s4, -664
                  c.nop
                  add         a6, zero, tp
                  nop
                  c.addi16sp  sp, 192
                  addi        zero, t6, 1518
                  c.slli      sp, 24
                  sltu        tp, s8, t2
                  mulh        a2, sp, s11
                  ori         gp, s7, -2026
                  or          a1, t0, a2
                  sra         gp, zero, zero
                  mulhu       s7, s3, s7
                  sll         zero, a7, t6
                  mulh        a3, s5, s9
                  c.srai      a0, 17
                  sra         s0, t6, a1
                  mulhu       a1, t6, a3
                  c.sub       a3, a2
                  xor         t3, sp, a5
                  c.or        s1, s1
                  c.addi4spn  a0, sp, 448
                  or          t4, a3, s8
                  slti        sp, ra, 840
                  lui         a0, 316140
                  c.addi16sp  sp, 64
                  c.mv        gp, s3
                  div         s9, a2, t3
                  mul         s11, s2, s2
                  c.or        a1, a0
                  slti        t3, a1, 1662
                  slt         s8, s4, t3
                  add         gp, a4, s8
                  and         s6, s6, s2
                  c.and       a2, a0
                  mulh        t0, s6, a6
                  sltu        t4, s0, a5
                  ori         t0, t3, 585
                  c.and       a0, a3
                  mul         zero, t3, s8
                  c.addi16sp  sp, 368
                  slli        zero, a0, 22
                  or          t0, sp, t6
                  c.andi      a0, 25
                  nop
                  c.xor       a3, s0
                  c.lui       gp, 1
                  mulh        s3, t6, a6
                  c.andi      a3, -1
                  sll         s6, s9, a2
                  srli        s3, s4, 24
                  c.andi      a2, 11
                  c.and       a0, a3
                  c.addi16sp  sp, -16
                  c.srli      a0, 25
                  mul         a3, a0, zero
                  div         zero, s6, a0
                  srl         a3, zero, sp
                  c.li        a1, 28
                  slli        s4, t4, 21
                  ori         s7, t3, 1633
                  c.addi16sp  sp, -16
                  xori        zero, s3, 878
                  srai        s6, a1, 27
                  c.lui       s6, 1
                  srli        a2, ra, 8
                  c.add       a4, t0
                  c.andi      a0, -1
                  xori        s8, zero, -1876
                  addi        t4, a4, 1028
                  sra         t3, t0, s5
                  or          a6, ra, a3
                  xor         s6, s9, s2
                  lui         gp, 912470
                  mulh        a6, s0, s7
                  and         a0, a2, s6
                  c.and       a0, a1
                  or          zero, t3, s4
                  slli        zero, gp, 6
                  sltu        a1, t3, a1
                  c.li        s0, 28
                  c.and       a0, a2
                  c.addi4spn  a0, sp, 560
                  c.mv        t1, a0
                  andi        zero, t5, 1106
                  sll         a1, tp, s1
                  ori         a1, gp, 1159
                  ori         a3, tp, 214
                  c.or        s1, a2
                  c.addi4spn  a3, sp, 896
                  sra         a2, s6, s1
                  lui         a7, 761399
                  c.mv        ra, a7
                  mulhsu      t0, t2, t4
                  c.srli      s0, 16
                  divu        s0, s10, s6
                  slti        t3, t3, 1545
                  c.addi16sp  sp, 320
                  andi        s0, s6, -1588
                  sub         s2, gp, a3
                  c.lui       a0, 27
                  mul         a6, t2, a7
                  c.or        a1, s0
                  c.addi16sp  sp, -16
                  c.addi      ra, -1
                  nop
                  srai        gp, t2, 2
                  add         ra, s9, s9
                  andi        ra, s9, 1482
                  c.add       s5, ra
                  c.xor       a5, a2
                  ori         zero, a7, -1792
                  c.mv        s11, t3
                  sub         s11, ra, tp
                  ori         zero, tp, 324
                  slti        zero, t2, 454
                  addi        a0, s1, -1836
                  and         zero, t3, s1
                  c.xor       a4, a2
                  divu        a7, s10, a6
                  c.xor       a0, s1
                  sub         s5, s0, s1
                  c.xor       a0, a1
                  addi        t3, s3, 1969
                  srl         s3, s3, s2
                  slli        tp, a5, 23
                  slt         s0, t3, t2
                  c.addi      a5, -1
                  sub         zero, s3, ra
                  c.mv        s3, a0
                  andi        zero, a6, -726
                  sra         zero, s11, s1
                  lui         a3, 584125
                  lui         a5, 898663
                  auipc       a4, 995696
                  c.srli      a3, 14
                  c.addi      gp, -1
                  c.andi      a0, 23
                  c.nop
                  srai        zero, gp, 2
                  c.srai      s0, 26
                  sltiu       ra, s6, 1527
                  slt         t1, s7, t5
                  c.addi16sp  sp, -16
                  sltu        t5, a3, t0
                  and         s9, t6, tp
                  c.lui       s4, 29
                  c.andi      a0, 0
                  mulhsu      s6, ra, a3
                  sub         t0, a4, s6
                  sltiu       s1, a6, -1093
                  divu        zero, s11, a4
                  c.xor       a3, a3
                  c.or        a3, a0
                  c.and       a0, a3
                  sub         gp, s11, t1
                  mul         a4, a6, a1
                  slli        s3, gp, 2
                  srli        t1, a0, 29
                  andi        a0, gp, 1016
                  divu        a0, s4, t4
                  nop
                  c.add       a7, tp
                  and         zero, s7, tp
                  srai        zero, t6, 22
                  div         t1, t5, t5
                  c.nop
                  andi        s1, a1, -310
                  c.srli      a2, 5
                  c.and       a1, a2
                  c.addi4spn  a2, sp, 848
                  c.lui       s6, 9
                  addi        s1, a1, 1097
                  sll         s3, t3, a3
                  c.andi      a0, 10
                  c.sub       a0, s1
                  c.add       t0, s6
                  sll         s5, t1, t5
                  c.lui       t5, 18
                  sltiu       s7, ra, 1438
                  c.srli      s1, 21
                  sltu        a3, t0, gp
                  c.mv        s9, s8
                  c.and       a0, a3
                  divu        a4, ra, t0
                  c.andi      a3, -1
                  c.add       s6, s11
                  c.srli      a3, 30
                  xori        s3, s4, -1131
                  c.add       a1, a1
                  sltu        a1, a0, t4
                  addi        a7, a7, 728
                  xori        a5, a6, 1102
                  c.li        t5, -1
                  c.slli      s0, 23
                  or          a6, a6, gp
                  andi        tp, a4, 1506
                  xori        sp, t2, 153
                  c.addi16sp  sp, -16
                  c.addi4spn  a3, sp, 160
                  or          zero, s8, a7
                  or          a4, s1, a5
                  sra         s6, a6, t3
                  c.srli      a0, 19
                  c.addi16sp  sp, 304
                  mulhsu      sp, t6, t4
                  c.andi      a1, 12
                  divu        s4, s7, s1
                  add         s1, gp, t1
                  mul         s3, a7, s1
                  c.nop
                  and         s5, t6, s3
                  sra         s5, gp, s10
                  c.srli      a0, 10
                  xor         a2, t0, s2
                  c.li        t3, -1
                  c.sub       a0, a1
                  sltu        s1, s10, sp
                  slli        t1, tp, 14
                  mulhu       zero, t2, s8
                  c.addi4spn  a0, sp, 800
                  c.andi      a0, -1
                  srli        gp, a7, 27
                  slli        a7, gp, 12
                  srai        sp, s10, 3
                  or          a3, a4, s10
                  mulhu       s4, s0, s1
                  c.andi      s1, 9
                  sltu        s0, s8, a0
                  c.slli      sp, 27
                  srai        a4, gp, 29
                  srli        s11, a7, 30
                  sltu        t4, a1, s1
                  c.li        t3, -1
                  sltiu       zero, t5, -1079
                  xori        a1, s1, -1039
                  xor         s0, tp, s0
                  nop
                  add         a3, s6, a4
                  c.srli      s1, 29
                  xori        a3, s3, 456
                  c.andi      a0, -1
                  add         t4, t2, t0
                  c.slli      a0, 27
                  sltiu       s0, a2, -1076
                  sub         t1, s5, t2
                  mulhu       a2, s6, a5
                  srl         a2, s9, s4
                  c.sub       s0, a0
                  ori         a3, s4, 969
                  c.addi4spn  a0, sp, 832
                  mulhsu      a6, a0, gp
                  c.xor       a0, a0
                  mulh        s0, s4, a1
                  lui         t3, 528383
                  div         t4, gp, a2
                  auipc       s0, 48313
                  c.li        a7, -1
                  div         s8, ra, a2
                  nop
                  c.nop
                  c.slli      s2, 10
                  sltu        a7, zero, a1
                  sll         s9, gp, sp
                  c.srai      a0, 30
                  c.lui       a6, 29
                  divu        s6, s7, t2
                  c.sub       a0, a3
                  divu        a4, a7, gp
                  nop
                  divu        s8, s3, s8
                  c.mv        s8, s8
                  divu        s6, zero, s0
                  and         a2, s11, a5
                  or          zero, a2, a7
                  mul         s4, s10, ra
                  c.or        a2, a0
                  lui         a2, 2121
                  c.add       a2, tp
                  c.li        t3, -1
                  lui         a6, 406366
                  c.or        a0, s0
                  rem         a2, t3, s2
                  add         a4, s8, s11
                  mul         zero, t6, t0
                  c.nop
                  sra         s7, s6, t3
                  sra         s4, gp, t5
                  c.addi      s2, -1
                  mulhsu      a5, s2, a2
                  c.nop
                  rem         a0, t6, s5
                  slti        a5, a2, -1020
                  c.li        ra, 8
                  addi        s1, s10, 758
                  sltiu       a0, t6, 431
                  slli        tp, t3, 1
                  c.addi4spn  a1, sp, 832
                  mul         ra, sp, s0
                  mulhsu      s9, t2, a6
                  c.sub       s0, a2
                  ori         s11, a3, 868
                  mulhsu      s3, t0, s0
                  or          s8, gp, s6
                  xori        t3, s7, 1050
                  mulhu       s8, a3, a7
                  xor         zero, s0, sp
                  or          zero, t3, a4
                  xori        s1, a5, 1449
                  ori         t1, a3, 1774
                  mul         t5, t6, t5
                  c.slli      a1, 6
                  xori        t4, tp, 1924
                  c.add       s6, s5
                  sra         s11, s0, a5
                  mul         a5, a0, a7
                  c.addi      s9, -1
                  rem         s9, a7, s8
                  c.xor       a0, a2
                  srl         s4, t2, a3
                  c.nop
                  andi        t0, t3, 1481
                  add         zero, s8, s10
                  c.add       s3, s8
                  srli        s8, a7, 23
                  slti        s5, s5, 328
                  auipc       s2, 137779
                  ori         s0, zero, 601
                  nop
                  c.slli      s6, 19
                  slt         a6, s1, a5
                  slli        s0, a2, 13
                  srli        zero, s9, 7
                  divu        a5, s11, s1
                  mulhu       s2, a2, t4
                  c.mv        a7, ra
                  c.sub       a0, a0
                  slti        zero, s11, 674
                  divu        tp, s11, s1
                  or          s5, t2, s5
                  auipc       s11, 812674
                  c.nop
                  srli        t3, t5, 7
                  sltiu       a0, s8, 1608
                  nop
                  sub         gp, a2, s5
                  c.srli      a3, 11
                  slti        t3, zero, 828
                  sltiu       t0, a6, -1447
                  c.slli      a6, 16
                  lui         s6, 657986
                  nop
                  or          t0, a1, a1
                  divu        s8, s2, t5
                  srai        t0, t5, 25
                  sll         s9, tp, t5
                  andi        a7, tp, -215
                  xor         zero, s3, tp
                  rem         t3, a0, a7
                  c.add       a0, t0
                  c.addi16sp  sp, -16
                  mulh        s2, a4, tp
                  c.nop
                  xor         s4, t3, a4
                  div         s2, s5, a5
                  lui         a2, 642602
                  lui         gp, 616776
                  and         s5, s6, a6
                  c.add       ra, a0
                  c.add       ra, a7
                  or          s11, s0, s11
                  srai        a7, s3, 1
                  mulh        sp, s1, t1
                  c.srai      a0, 25
                  add         tp, zero, a1
                  lui         zero, 878917
                  c.addi      s5, 24
                  srli        a7, t5, 23
                  srli        s1, gp, 29
                  auipc       t4, 570804
                  nop
                  andi        s3, a0, 1979
                  c.srai      a0, 1
                  slt         s1, a6, s2
                  c.addi16sp  sp, 176
                  c.or        s1, a1
                  c.addi16sp  sp, -16
                  c.addi      s2, 31
                  c.or        a1, a3
                  c.add       s3, ra
                  xor         s8, a4, a0
                  lui         a5, 730583
                  mul         t1, a0, t4
                  mulhsu      gp, a7, t4
                  sltiu       s5, a1, 1206
                  nop
                  c.andi      a3, 7
                  c.sub       a0, a1
                  c.andi      a0, -1
                  sltu        s8, a4, a0
                  sll         s9, t1, a4
                  sll         t5, s5, tp
                  slt         t4, s3, gp
                  c.sub       a3, a1
                  sltiu       a7, s2, 1465
                  slli        s4, s0, 4
                  slt         t4, t0, s10
                  nop
                  slli        sp, s6, 0
                  c.addi4spn  a0, sp, 912
                  c.sub       a0, a1
                  add         tp, s11, s7
                  addi        s9, a3, -1387
                  rem         a3, ra, ra
                  sltiu       a3, sp, 1513
                  c.addi4spn  a2, sp, 720
                  c.addi4spn  a3, sp, 496
                  srai        s6, s6, 3
                  slli        t1, gp, 28
                  c.mv        s11, a2
                  slt         a6, t1, s6
                  slt         a5, t6, s7
                  c.addi16sp  sp, 304
                  div         s2, t0, a7
                  c.andi      a0, -1
                  c.andi      a2, 3
                  c.xor       a0, a1
                  sra         s7, zero, s6
                  xori        t5, s8, -455
                  c.srai      a2, 12
                  xori        gp, s8, -832
                  sltiu       t0, a6, -262
                  addi        a3, s6, 237
                  divu        s6, t4, s3
                  c.srli      a2, 5
                  mulh        a6, sp, t4
                  srli        a0, a1, 8
                  lui         s0, 488379
                  addi        t0, s0, -308
                  sltiu       t5, a4, -374
                  c.srli      a0, 6
                  c.lui       t4, 1
                  c.li        a4, 13
                  div         t1, s6, a6
                  slti        s5, t1, -1798
                  slt         t3, t2, t1
                  c.add       a5, s5
                  sra         s4, s7, a2
                  c.mv        a2, a0
                  xor         gp, s8, a6
                  c.srli      s1, 28
                  c.srai      a5, 10
                  srli        t1, t1, 23
                  andi        t4, sp, -1653
                  ori         zero, t1, 1291
                  mul         s1, t6, t1
                  ori         s4, s1, 552
                  c.and       a2, a0
                  sltu        a7, t5, a2
                  c.andi      a0, 7
                  slli        a1, t6, 26
                  c.mv        t4, a7
                  auipc       t0, 635073
                  divu        zero, a4, a2
                  srli        zero, s9, 29
                  xor         s1, a3, s5
                  andi        s3, tp, 524
                  srl         a7, s9, t3
                  srl         a2, s3, a5
                  mulhu       sp, t3, zero
                  c.xor       a1, a3
                  sll         a4, t5, zero
                  slt         a5, t1, tp
                  andi        a6, s8, 1877
                  mulhsu      a3, ra, ra
                  mulhu       a7, s2, a7
                  c.addi      t4, -1
                  c.addi4spn  a3, sp, 96
                  mul         zero, s8, s10
                  xori        s5, s6, 452
                  c.xor       a2, a1
                  addi        s11, gp, -748
                  xor         s0, a2, t3
                  sll         ra, s8, t6
                  sltiu       s11, a5, 564
                  mulhsu      s3, s5, sp
                  mulh        sp, t6, s3
                  divu        s1, a2, s2
                  rem         t4, s5, s5
                  mulh        a6, s10, s10
                  andi        s0, a1, 1154
                  slt         a6, tp, t0
                  c.li        a1, 26
                  slli        a0, a3, 27
                  xori        s8, a0, 879
                  auipc       ra, 244656
                  c.or        a1, s1
                  c.addi      tp, -1
                  slt         s0, a3, t4
                  rem         t3, tp, a4
                  c.addi4spn  a4, sp, 224
                  sltiu       tp, a6, 457
                  lui         a5, 142440
                  slli        sp, t0, 13
                  c.addi16sp  sp, -16
                  addi        zero, s11, -1525
                  c.andi      a3, 4
                  add         s1, s9, tp
                  sub         zero, s2, t1
                  slli        a3, t2, 9
                  add         gp, t1, sp
                  lui         s2, 228403
                  mul         zero, t5, gp
                  srl         sp, zero, s0
                  add         a6, a7, s8
                  c.andi      a2, -1
                  c.srai      a3, 25
                  nop
                  xori        s2, a0, 387
                  c.sub       a2, a3
                  ori         t4, a7, -643
                  xori        s0, t5, 948
                  c.slli      ra, 15
                  c.sub       a3, a0
                  c.addi4spn  a2, sp, 304
                  mulhu       s11, ra, t1
                  c.lui       t1, 9
                  nop
                  c.srai      a0, 1
                  c.lui       a7, 30
                  addi        a5, s11, 300
                  mul         zero, s9, s0
                  xori        s8, t6, -664
                  c.or        a0, a1
                  mulhsu      t0, a5, tp
                  c.addi      s0, 31
                  srli        t4, s7, 24
                  c.sub       a3, a3
                  srai        s3, s9, 23
                  srli        t4, s11, 25
                  mulhsu      s4, zero, ra
                  c.lui       s2, 1
                  c.addi16sp  sp, -16
                  andi        s0, s1, 376
                  mul         s1, sp, s2
                  divu        zero, s8, a4
                  andi        tp, t1, 1963
                  c.andi      a2, -1
                  srl         t1, zero, a3
                  srl         s0, gp, s6
                  addi        gp, s4, 1721
                  c.mv        s8, t6
                  or          tp, s0, t5
                  c.nop
                  c.or        a0, a1
                  c.addi16sp  sp, 384
                  addi        a1, s1, -1607
                  c.mv        a5, tp
                  xor         s8, t2, s11
                  sra         a0, s7, ra
                  lui         s0, 125982
                  sra         a7, t2, s7
                  add         s7, s3, t2
                  mulhsu      s3, t0, a3
                  mulh        a7, t5, ra
                  c.add       a6, ra
                  c.nop
                  c.addi16sp  sp, -16
                  mulhsu      a3, s11, s0
                  c.addi4spn  a2, sp, 352
                  mulhu       s6, ra, gp
                  c.xor       a0, a1
                  srai        zero, t4, 6
                  c.srli      a0, 15
                  sll         zero, zero, s1
                  c.lui       s11, 23
                  c.and       a0, a5
                  c.srai      a0, 18
                  mulh        s9, gp, a6
                  slli        s1, s4, 29
                  sra         s11, t6, s8
                  c.addi16sp  sp, 144
                  xori        s5, s0, 757
                  c.and       a0, a0
                  c.srli      s1, 14
                  c.addi      t5, -1
                  c.xor       a0, a1
                  addi        a0, a1, 1528
                  sub         a7, gp, a3
                  nop
                  sub         s0, ra, ra
                  c.add       t1, a7
                  srai        s8, t4, 26
                  c.li        gp, 28
                  c.srai      a2, 14
                  xori        a3, s10, -70
                  divu        t4, s6, a2
                  c.li        ra, 7
                  c.addi16sp  sp, -16
                  sltu        zero, t4, zero
                  srli        s5, a3, 17
                  c.srai      s1, 25
                  auipc       s0, 4223
                  srli        s2, t3, 16
                  add         a5, a5, a7
                  slti        s0, t5, 787
                  srli        gp, a3, 2
                  c.xor       a5, a5
                  srl         a1, t1, s10
                  mulh        t1, s11, s5
                  lui         ra, 468070
                  and         s7, t4, s2
                  c.addi4spn  a0, sp, 880
                  and         s3, s6, s10
                  xor         a3, t6, s6
                  xor         s1, t0, a4
                  slti        s9, t4, 723
                  c.slli      s8, 24
                  slt         a4, s11, ra
                  c.srli      s1, 10
                  sltu        s0, gp, t0
                  divu        ra, a4, a6
                  xor         s11, a2, s2
                  auipc       s9, 990899
                  mul         s0, s1, t1
                  c.add       s7, t2
                  slli        s9, tp, 25
                  auipc       s11, 615386
                  sltiu       s1, a4, 1932
                  srl         t5, s4, a6
                  sll         t1, s1, a0
                  sltiu       a1, ra, 424
                  mulhsu      zero, zero, ra
                  auipc       s9, 639558
                  mulh        s9, t6, t1
                  c.addi16sp  sp, 176
                  xor         s7, s9, t0
                  sltiu       s9, zero, 1263
                  c.nop
                  auipc       t3, 757636
                  slti        a4, gp, -1510
                  add         s6, gp, a5
                  c.srai      s0, 10
                  slt         t1, s7, s0
                  sltu        sp, t4, t0
                  div         ra, a7, a5
                  sra         tp, t4, s8
                  xori        a6, t2, 43
                  andi        t0, t0, -360
                  divu        a5, a3, s2
                  mulhu       tp, s5, t6
                  mulh        t3, a4, gp
                  add         s2, zero, t4
                  ori         s9, t6, 338
                  c.srli      a2, 12
                  slti        a2, a6, -254
                  and         s8, sp, s8
                  c.xor       a5, a1
                  sra         s3, t2, s5
                  slti        t5, s1, -1916
                  c.xor       a0, a3
                  c.addi16sp  sp, -16
                  mulh        s11, a7, tp
                  add         a7, a5, s0
                  sltu        gp, a3, ra
                  slli        a2, s7, 7
                  c.addi4spn  a3, sp, 112
                  c.lui       a1, 12
                  ori         tp, s9, -1515
                  xor         sp, s5, a6
                  lui         s4, 346493
                  sub         s9, t3, t0
                  xor         s8, s11, s9
                  srai        a0, s10, 4
                  c.add       a5, t6
                  mulh        a5, tp, a5
                  addi        s5, a5, 970
                  sub         a1, a0, a5
                  c.add       a5, s3
                  c.addi16sp  sp, -16
                  c.nop
                  c.li        t4, 13
                  c.li        a3, 3
                  c.srli      a0, 21
                  xori        s2, s8, -1922
                  mul         sp, tp, a6
                  andi        a2, a1, -263
                  c.and       a1, a2
                  c.and       s1, a2
                  ori         t0, t3, -611
                  xori        t3, s9, -461
                  and         ra, t4, a5
                  mulh        s8, a4, t5
                  c.srai      a3, 1
                  srl         s11, t2, a2
                  and         a6, a1, s3
                  srai        s6, a0, 8
                  nop
                  mul         s8, t3, t2
                  c.xor       a3, a1
                  c.addi4spn  a4, sp, 432
                  divu        zero, a7, zero
                  c.or        a5, a0
                  c.lui       t5, 15
                  c.addi4spn  a2, sp, 112
                  or          ra, a4, a6
                  c.andi      a0, 10
                  c.addi      gp, -1
                  add         sp, s10, s7
                  auipc       a7, 8805
                  xori        s7, t6, -770
                  c.srai      a0, 12
                  c.sub       a2, a3
                  div         s9, s9, s9
                  add         s4, a5, a7
                  sll         zero, s10, t1
                  xor         t0, t1, sp
                  div         a3, t4, a3
                  div         s8, s7, sp
                  mul         gp, s1, a0
                  lui         gp, 613504
                  c.xor       a0, s1
                  c.nop
                  c.li        s3, 9
                  div         zero, a7, a3
                  srli        ra, a6, 22
                  lui         s9, 200172
                  xor         sp, s6, t0
                  mulh        zero, s2, s7
                  lui         a2, 321059
                  slli        a1, t6, 29
                  c.addi      s0, 18
                  rem         a1, a1, a3
                  c.and       a3, a1
                  sll         sp, a3, s9
                  xor         a4, a3, s7
                  srl         s2, a3, s6
                  c.or        a0, a3
                  xori        sp, s9, 1261
                  lui         a1, 241721
                  nop
                  xori        s6, a4, -309
                  or          s11, s2, a5
                  or          s8, t6, sp
                  slli        sp, ra, 30
                  c.and       a0, a3
                  c.add       a4, s5
                  c.lui       ra, 1
                  sltu        a1, s6, s9
                  c.nop
                  auipc       zero, 907526
                  auipc       s5, 887356
                  c.lui       ra, 18
                  srl         s3, sp, a1
                  c.slli      s2, 8
                  or          a0, s8, s5
                  c.xor       a3, s1
                  sub         s0, s10, a5
                  c.mv        ra, a4
                  c.srai      a0, 6
                  add         s2, tp, s8
                  c.sub       a0, a4
                  c.xor       a3, a2
                  and         s7, t5, s0
                  slli        a2, a4, 26
                  rem         s4, s4, a4
                  c.li        a0, -1
                  c.addi      a5, -1
                  c.and       a1, a0
                  sll         t4, s4, s11
                  and         t3, s9, s6
                  xori        s3, tp, 721
                  auipc       s3, 526992
                  c.or        a5, a3
                  slt         a2, t2, a4
                  nop
                  div         s0, gp, a1
                  add         zero, s4, s1
                  c.srai      a5, 2
                  sra         zero, s4, t0
                  andi        s8, s8, 1167
                  add         zero, s0, t0
                  div         a4, a5, s7
                  c.andi      a0, 9
                  sltu        tp, s5, a1
                  add         t4, gp, s8
                  c.srai      s1, 1
                  ori         a7, s5, 1276
                  ori         a6, t4, 425
                  c.nop
                  mul         s6, a0, sp
                  and         zero, s0, s2
                  xor         ra, ra, t3
                  c.srli      a2, 24
                  ori         s4, t3, 721
                  addi        a2, a5, 1052
                  c.mv        s5, s11
                  add         ra, s11, a2
                  c.addi4spn  a3, sp, 816
                  sub         a5, t0, s3
                  auipc       s8, 329866
                  sll         a0, s0, a0
                  mulhu       a4, ra, s5
                  mulh        sp, a1, a2
                  mul         zero, a1, s11
                  c.andi      a1, -1
                  mulh        s2, t1, t5
                  nop
                  c.xor       a2, a2
                  mul         s6, t1, s0
                  c.or        a0, a3
                  slt         tp, ra, a7
                  slli        s6, a4, 11
                  sll         s9, zero, t4
                  c.or        a1, a3
                  xori        s11, s6, 1816
                  c.andi      a0, 1
                  div         s5, gp, s1
                  divu        s3, s1, t2
                  c.andi      a0, 19
                  sltiu       t5, a7, -1524
                  c.srli      a0, 1
                  div         a7, ra, tp
                  mulh        s8, t3, t2
                  slli        s8, s0, 7
                  sra         s2, a2, t5
                  mulhu       a1, a4, s1
                  c.nop
                  c.andi      a3, 17
                  c.srli      a0, 12
                  c.slli      s11, 10
                  c.lui       s4, 26
                  mul         t1, s8, sp
                  lui         zero, 908371
                  mulhu       zero, a3, s6
                  c.xor       a3, a3
                  c.nop
                  c.nop
                  mul         a6, a5, a2
                  c.addi      a3, 22
                  c.srli      a3, 8
                  c.addi16sp  sp, -16
                  c.addi16sp  sp, -16
                  c.addi4spn  a2, sp, 112
                  mulhsu      zero, s7, t4
                  c.slli      gp, 10
                  srli        s3, t1, 10
                  c.and       a3, a0
                  c.addi16sp  sp, 48
                  sra         zero, zero, t3
                  c.srli      a5, 1
                  divu        zero, a3, s4
                  c.or        a0, a1
                  c.slli      s0, 17
                  and         s9, zero, s9
                  c.lui       t3, 7
                  lui         a2, 385608
                  lui         s9, 1004056
                  c.mv        a4, s1
                  c.slli      s8, 7
                  sra         a2, a2, s2
                  sll         ra, gp, s1
                  srli        zero, s8, 0
                  and         s7, ra, a3
                  c.andi      a0, -1
                  andi        s7, gp, 430
                  add         t5, gp, s5
                  c.slli      s8, 9
                  sltiu       s5, t1, 1396
                  c.lui       ra, 29
                  addi        s9, s10, -1439
                  c.add       sp, s3
                  mul         s2, s10, s3
                  srai        t1, t3, 16
                  rem         a2, s9, t0
                  c.mv        a0, a4
                  ori         a0, a6, -1058
                  slti        s4, s8, 1906
                  c.addi      t4, -1
                  addi        a1, s3, -1165
                  mulhsu      zero, t6, zero
                  c.li        sp, 16
                  mulhu       zero, s3, gp
                  sll         zero, s9, s10
                  ori         zero, a6, 1982
                  rem         a5, t3, ra
                  slli        s8, a7, 29
                  div         ra, s10, t1
                  sltiu       s6, s4, -1684
                  c.sub       a0, s1
                  or          zero, s11, s5
                  c.nop
                  c.nop
                  rem         a0, t5, a2
                  andi        t4, s1, -1190
                  c.addi      a7, -1
                  sub         t5, a2, t1
                  xori        zero, a0, 420
                  sll         t1, ra, t4
                  sll         zero, a2, a1
                  srli        zero, s3, 22
                  c.addi16sp  sp, -16
                  ori         s11, s1, 177
                  sub         t0, s0, tp
                  mulhu       zero, s3, a1
                  c.lui       s8, 9
                  sltiu       a1, s1, 217
                  slli        zero, t4, 3
                  sltiu       a2, t1, 1622
                  c.addi16sp  sp, 320
                  and         s4, s3, t3
                  c.nop
                  c.addi16sp  sp, 320
                  sll         tp, t3, a6
                  lui         a4, 321404
                  srai        tp, s4, 3
                  c.nop
                  mul         s5, t6, s4
                  sub         s4, zero, t4
                  sltiu       s5, s6, 1023
                  srai        t3, a0, 6
                  sub         a2, a6, a6
                  c.addi4spn  a0, sp, 560
                  sltu        a2, tp, t2
                  slti        s11, s11, 935
                  c.slli      a4, 6
                  c.nop
                  andi        a6, s8, -776
                  c.li        a1, 13
                  mulhu       t1, s6, a6
                  and         a1, t0, a0
                  srl         s0, s2, s1
                  addi        zero, s4, 657
                  mulh        t1, ra, s5
                  and         s9, t0, s5
                  mulh        a6, t4, s1
                  or          s0, s8, ra
                  sra         a1, s9, s8
                  c.nop
                  c.andi      a0, 20
                  add         t5, a5, a3
                  srli        s7, s11, 13
                  ori         s6, s8, -1335
                  lui         a2, 52980
                  div         a6, a0, s3
                  rem         s2, t5, a0
                  addi        s0, s2, -150
                  srli        t3, s3, 24
                  sub         t1, a3, s4
                  rem         s1, tp, t4
                  c.srai      a2, 31
                  slli        a2, t0, 1
                  andi        s11, a0, 1273
                  mulhsu      s3, t4, s11
                  c.mv        t4, s5
                  c.srli      a0, 1
                  c.addi      s3, -1
                  addi        t3, a0, 1505
                  c.nop
                  sub         a4, t6, t4
                  addi        a0, a6, 1765
                  c.lui       s1, 13
                  sltu        zero, a1, s7
                  mul         zero, s7, s6
                  slti        sp, s1, 1608
                  c.xor       a0, a1
                  mulhsu      a5, sp, t1
                  c.addi4spn  a0, sp, 432
                  slti        a7, s9, -38
                  c.srli      a4, 15
                  c.mv        s1, s9
                  sltu        zero, t2, s3
                  c.mv        a0, a5
                  ori         t4, s3, -653
                  c.lui       gp, 21
                  add         gp, a1, tp
                  slli        zero, t2, 8
                  auipc       s0, 704065
                  c.lui       s3, 27
                  mulhu       t3, s5, s9
                  add         s5, a7, a6
                  c.mv        a3, gp
                  srli        a5, t4, 19
                  c.xor       a0, s1
                  slt         zero, t3, zero
                  c.addi4spn  a0, sp, 688
                  sra         s4, s4, t6
                  c.li        a6, -1
                  ori         t3, gp, 92
                  mulhsu      s2, s4, ra
                  c.lui       s1, 9
                  xori        ra, tp, 1031
                  sltu        s0, a6, a6
                  mul         s8, gp, zero
                  c.mv        s4, a1
                  srl         a1, s11, s4
                  and         s7, t5, t5
                  ori         a1, s2, -714
                  sub         s4, s11, s3
                  c.addi4spn  a0, sp, 432
                  c.andi      a0, 19
                  c.sub       a0, s1
                  c.addi      t0, 15
                  divu        s5, ra, t2
                  srl         s6, t4, s8
                  lui         a4, 980318
                  mulh        a6, s7, a7
                  c.addi16sp  sp, 48
                  slli        s2, s2, 25
                  c.nop
                  mulhu       a4, s6, t5
                  mul         t4, a7, s9
                  addi        t3, s6, -865
                  sub         s5, t4, t5
                  sll         gp, s11, s8
                  mulh        a1, a1, a6
                  xori        a2, s8, 1444
                  ori         s4, s2, -1271
                  sra         a1, s3, t6
                  slti        s0, s4, -1658
                  sra         zero, ra, s7
                  c.addi16sp  sp, -16
                  add         t5, s3, t2
                  xori        zero, s4, 435
                  c.srai      a2, 22
                  addi        tp, sp, -1222
                  c.andi      a2, -1
                  divu        t0, t2, s0
                  c.li        ra, 27
                  c.andi      a0, -1
                  c.mv        a5, a3
                  xor         t5, s0, s4
                  c.andi      a0, 19
                  and         s5, s4, s3
                  slli        a4, s10, 27
                  c.mv        tp, s3
                  c.srli      a0, 14
                  c.srai      a2, 11
                  srli        a3, s1, 28
                  mulhsu      sp, s6, s0
                  srai        a0, a1, 5
                  slli        a1, s11, 9
                  c.andi      a0, 4
                  c.or        a2, a1
                  slti        s0, a0, -1598
                  sltiu       a7, s10, 1255
                  div         tp, sp, a4
                  srl         t1, a2, s1
                  slti        s4, s9, -1911
                  add         a0, s4, s11
                  div         a6, tp, a4
                  mul         a6, s0, tp
                  add         t4, t1, t2
                  c.or        a0, a1
                  c.andi      a0, 15
                  lui         a2, 747509
                  c.addi16sp  sp, -16
                  slt         zero, zero, t5
                  c.srli      a2, 14
                  c.srai      a3, 27
                  c.nop
                  xori        a6, t1, -658
                  c.sub       a1, s0
                  c.srli      a0, 1
                  c.slli      s5, 6
                  mulhu       s2, sp, ra
                  c.addi16sp  sp, -16
                  c.or        s0, a3
                  c.nop
                  sltu        t4, s10, zero
                  srli        t5, a1, 28
                  slti        t0, t5, 1683
                  c.xor       a0, a1
                  c.xor       a0, a3
                  srai        s8, s8, 2
                  addi        t4, s2, -1017
                  slt         t1, s7, s10
                  sll         zero, s2, s10
                  ori         t3, t0, 103
                  xor         a6, a2, a1
                  divu        zero, s0, t3
                  c.addi      t1, -1
                  mulhu       s6, tp, a4
                  sltiu       t1, s2, 1011
                  c.addi16sp  sp, -16
                  andi        t1, s11, 22
                  andi        s7, s5, 1838
                  slti        t0, s7, 1048
                  c.slli      t3, 17
                  c.srai      a3, 9
                  divu        gp, t4, t4
                  c.and       a3, s0
                  srl         a7, s2, a3
                  srli        s3, s8, 5
                  auipc       s2, 929374
                  sub         a5, t1, s3
                  rem         t5, s5, a2
                  c.addi16sp  sp, -16
                  c.sub       a3, a4
                  xori        a4, s7, -686
                  srli        zero, t0, 3
                  c.and       a3, a3
                  addi        s2, t6, 344
                  c.slli      a1, 16
                  or          t5, ra, a6
                  c.or        a0, a3
                  c.sub       a2, a1
                  ori         s1, s9, 1386
                  nop
                  div         t1, a2, sp
                  c.xor       a0, a2
                  c.nop
                  c.xor       a0, a0
                  c.xor       a1, s1
                  c.addi      a5, 29
                  c.nop
                  c.mv        s0, t1
                  c.li        tp, 8
                  srai        s7, a2, 19
                  sra         sp, s7, s10
                  c.and       a0, a0
                  divu        s5, sp, t0
                  sltu        s5, s5, a6
                  sll         ra, a2, tp
                  c.slli      sp, 17
                  xor         s8, sp, s0
                  c.nop
                  lui         zero, 6142
                  c.andi      s1, 3
                  c.lui       s1, 15
                  sub         s2, a4, a4
                  c.andi      s1, -1
                  c.slli      s7, 30
                  li         t5, 0x0 #start riscv_int_numeric_corner_stream_22
                  li         t4, 0x1
                  li         t3, 0x0
                  li         s4, 0x0
                  li         a6, 0x0
                  li         s8, 0x1
                  li         a0, 0x1
                  li         a2, 0x0
                  li         s5, 0x0
                  li         s6, 0x1
                  c.mv        a3, a2
                  auipc       sp, 356319
                  mulhu       a4, a4, t6
                  nop
                  c.addi16sp  sp, 128
                  mulh        s11, a3, ra
                  auipc       a1, 938222
                  mulhu       a5, a6, a7
                  auipc       s6, 842922
                  c.li        a2, 18
                  c.sub       a0, s0
                  c.mv        s0, t1
                  c.addi16sp  sp, 368
                  c.nop
                  mulh        s1, t5, zero
                  rem         zero, t6, a6
                  c.mv        t1, t3
                  div         a3, a2, ra
                  divu        zero, s10, t1
                  sub         s1, tp, ra
                  mulh        zero, a5, a5
                  div         a3, t4, t1
                  c.nop
                  c.li        t5, 22
                  mulh        s9, s1, s4
                  c.addi      t4, 4
                  auipc       ra, 90686
                  c.addi4spn  a0, sp, 688
                  c.add       t1, s7
                  or          s9, s4, s2
                  c.li        s6, -1
                  c.or        a2, a2
                  c.addi16sp  sp, 336
                  auipc       ra, 201464
                  xori        s2, s4, -535
                  c.lui       s11, 1
                  srli        a7, t5, 26
                  c.li        ra, 27
                  sltiu       s4, t4, 2032
                  sub         a6, s5, t3
                  slt         zero, tp, a1
                  ori         t1, sp, -792
                  divu        s0, t3, a0
                  nop
                  srli        a1, t0, 1
                  sltu        s1, s6, t3
                  and         a3, sp, a1
                  c.addi16sp  sp, -16
                  mul         s2, a1, t1
                  mul         s4, tp, gp
                  auipc       s4, 157404
                  c.nop
                  xori        tp, s1, -1987
                  rem         t0, s1, a7
                  c.mv        a1, s9
                  c.addi16sp  sp, 368
                  sltiu       ra, s4, -879
                  mulh        t4, s4, a7
                  slli        s6, t6, 23
                  andi        zero, tp, -26
                  c.li        s7, -1
                  c.sub       a0, a1
                  slli        s11, zero, 9
                  c.andi      a0, -1
                  sll         s8, s7, t2
                  sltiu       t0, s11, -581
                  rem         t1, a6, s4
                  mul         a3, s7, a2
                  andi        s8, a2, 2037
                  ori         zero, t5, -1735
                  xori        zero, a0, 264
                  c.srli      a3, 18
                  mulhu       ra, t4, a1
                  auipc       s11, 316450
                  lui         t0, 900539
                  c.add       t5, a4
                  c.addi16sp  sp, -16
                  c.slli      t5, 1
                  andi        s2, t2, -1055
                  or          zero, s8, a7
                  c.slli      sp, 2
                  slli        a2, s11, 23
                  c.nop
                  sub         s0, s2, a7
                  srl         s0, s9, a0
                  mulhu       a7, a6, sp
                  and         s6, a3, s7
                  c.srai      a0, 1
                  c.nop
                  lui         t5, 907897
                  divu        a5, s7, s4
                  slti        t5, t4, 1234
                  c.or        a0, a1
                  sltu        t5, a1, s7
                  sll         s7, s2, t5
                  c.xor       a3, a3
                  sra         t5, s0, s4
                  c.xor       a2, s1
                  mulhu       a0, ra, a2
                  c.addi4spn  a0, sp, 432
                  c.andi      a3, 9
                  c.or        a3, a0
                  c.addi16sp  sp, -16
                  nop
                  xori        s3, sp, 1434
                  slt         zero, ra, a2
                  rem         a3, s10, s6
                  mulh        a0, ra, s5
                  c.nop
                  mulhu       s5, s3, a0
                  rem         zero, t3, s1
                  sltu        s5, t1, s6
                  srai        a2, a2, 1
                  c.nop
                  c.mv        s7, tp
                  and         t5, a1, s1
                  c.srli      s1, 27
                  c.and       a0, s1
                  sltu        a1, a2, s8
                  auipc       s7, 13531
                  c.sub       a0, s1
                  auipc       a7, 338799
                  sltu        a2, zero, s10
                  divu        s0, t5, s4
                  c.lui       a5, 4
                  divu        t5, a1, t3
                  srl         s4, s10, s3
                  add         a2, s7, gp
                  c.slli      s2, 13
                  mulhu       a2, a6, a6
                  div         gp, ra, a5
                  xor         zero, t0, t5
                  srli        ra, a2, 1
                  add         a4, s5, a2
                  c.nop
                  srli        s1, zero, 12
                  add         gp, tp, a0
                  slti        gp, t4, 339
                  c.andi      a0, -1
                  ori         s2, a7, 1044
                  c.addi16sp  sp, -16
                  sub         a4, sp, s6
                  srai        a7, a4, 11
                  c.or        a0, a3
                  or          zero, s8, s0
                  ori         a4, t3, -1952
                  c.addi4spn  a3, sp, 976
                  c.add       s11, a4
                  c.li        s11, -1
                  and         s11, s3, tp
                  c.srai      a3, 16
                  slli        s5, gp, 21
                  auipc       zero, 222000
                  c.and       a0, a0
                  slti        tp, t6, -1168
                  c.add       tp, gp
                  c.srai      a0, 5
                  mulh        t4, ra, t6
                  xori        s7, a3, -636
                  c.li        a4, 31
                  c.lui       a7, 16
                  slli        gp, t3, 13
                  sra         a3, s11, s1
                  or          zero, a4, s7
                  xor         t4, zero, ra
                  c.mv        s2, sp
                  divu        a5, t4, a7
                  c.sub       a0, a2
                  c.srli      a0, 11
                  andi        ra, s8, -1565
                  nop
                  addi        gp, s4, 1798
                  c.addi4spn  s1, sp, 448
                  sra         s5, s2, s1
                  lui         s2, 224438
                  div         s1, s9, s1
                  srai        s11, ra, 26
                  andi        s2, t2, -854
                  divu        t5, s5, a0
                  slt         gp, a3, a2
                  sub         s5, s9, s11
                  c.li        a3, -1
                  c.or        a1, s0
                  sra         a4, a6, a4
                  xor         s2, t5, a0
                  sra         sp, a0, s2
                  xor         t1, s2, t1
                  c.srli      a0, 16
                  c.slli      s0, 29
                  sra         a7, t6, gp
                  c.andi      a0, -1
                  slt         s9, s1, a2
                  c.or        a0, s1
                  c.addi      t0, 14
                  sub         s2, t5, s5
                  c.srai      s0, 18
                  mulh        s7, a4, t3
                  sra         s6, t1, a4
                  lui         s9, 448540
                  sra         t4, s3, s5
                  srli        ra, s10, 5
                  c.and       a1, a3
                  div         a3, s2, zero
                  xor         a5, a4, a4
                  mulh        zero, s0, s8
                  c.addi      s8, -1
                  lui         s7, 117043
                  or          sp, t4, s2
                  slti        gp, s3, 1863
                  c.slli      s2, 13
                  xori        t5, t1, 1625
                  srl         s11, s3, a3
                  addi        tp, s1, -1037
                  srl         a1, t4, a7
                  c.and       a3, a0
                  c.andi      a0, 7
                  mulhsu      sp, t3, t1
                  add         t5, s10, a0
                  divu        s4, s10, a0
                  sltiu       s1, a1, 1567
                  and         s9, s8, s10
                  addi        s9, s9, 1787
                  sltu        a2, a1, tp
                  and         s2, a0, t0
                  c.and       a0, a2
                  c.sub       a3, a2
                  xori        t3, s11, 75
                  c.add       gp, s6
                  xor         a3, t4, s7
                  auipc       s4, 982165
                  c.addi16sp  sp, -16
                  c.srai      a1, 13
                  add         a6, a6, a0
                  divu        a0, t0, t6
                  c.and       a3, a2
                  or          s7, t3, s10
                  xori        a0, s9, -1810
                  and         a5, t4, zero
                  c.sub       a0, a0
                  mulh        a1, s3, a7
                  c.addi16sp  sp, -16
                  divu        ra, s10, s2
                  c.srli      a0, 18
                  ori         s11, s10, -201
                  mulh        s3, gp, s10
                  c.sub       a0, a0
                  mulhsu      zero, s4, a3
                  c.andi      s0, -1
                  and         gp, s5, a4
                  mulh        s11, a6, s8
                  mulhsu      a0, t1, s3
                  slt         s5, s4, zero
                  slt         a1, tp, t3
                  c.addi      s2, -1
                  slli        s0, t4, 15
                  c.sub       a2, a3
                  c.lui       s3, 2
                  srai        s6, t2, 16
                  c.sub       a0, a5
                  c.sub       a0, a1
                  c.add       s9, s9
                  ori         a5, s8, -42
                  xor         a0, s5, s10
                  addi        tp, t2, -973
                  c.lui       t3, 19
                  mulhsu      s4, s9, sp
                  mulh        a5, zero, tp
                  mul         s1, gp, s10
                  c.add       a5, a2
                  c.nop
                  div         s0, t0, s9
                  srai        ra, s5, 0
                  div         zero, gp, zero
                  c.srli      a0, 25
                  andi        t4, tp, 1764
                  c.addi16sp  sp, 240
                  andi        t1, a0, -2032
                  andi        s11, t6, -195
                  c.xor       a4, a1
                  divu        s0, t6, a0
                  sub         zero, a2, t2
                  c.add       t4, a4
                  lui         s3, 979427
                  sra         sp, s2, a2
                  c.mv        a6, a7
                  andi        t3, s10, 1755
                  c.or        a3, a0
                  c.sub       a3, s1
                  and         s1, s5, zero
                  c.or        a0, a2
                  div         a1, zero, a0
                  c.andi      a2, 7
                  mulhu       a2, s11, s9
                  c.slli      s8, 26
                  c.lui       a6, 15
                  c.or        a0, a1
                  c.or        a3, a3
                  c.lui       ra, 19
                  rem         a4, s10, s5
                  mulhsu      s5, s2, s10
                  sll         a3, t5, s9
                  mul         gp, t2, sp
                  sub         a4, s3, sp
                  sltiu       gp, t3, 1294
                  c.slli      a5, 13
                  srai        s2, a1, 24
                  lui         tp, 634999
                  srli        a6, s5, 28
                  addi        t4, s0, 55
                  or          s5, a6, a3
                  add         gp, s11, gp
                  c.srai      s1, 26
                  c.and       a0, a1
                  sll         t4, t2, t2
                  c.and       a3, s1
                  div         s9, t0, t6
                  c.mv        ra, s3
                  srl         a0, s0, a2
                  rem         t5, t0, s1
                  sltu        zero, t1, s5
                  sub         sp, gp, sp
                  c.andi      a2, 6
                  mulhsu      a5, s8, t5
                  c.addi      a0, 8
                  div         a6, a6, a1
                  xor         a7, t6, t0
                  c.lui       a3, 14
                  or          t0, s11, a7
                  nop
                  divu        s3, sp, s8
                  c.add       s5, s4
                  xori        a5, a7, 1487
                  c.or        a0, a2
                  c.and       a0, a1
                  c.add       tp, tp
                  c.nop
                  c.add       t1, s8
                  mulh        a7, a5, s3
                  c.addi4spn  a2, sp, 288
                  sra         tp, t6, a5
                  andi        s8, a6, -680
                  mul         t0, t5, t4
                  sltiu       zero, s9, 162
                  c.srli      a3, 20
                  mulhsu      s9, a7, t5
                  c.lui       ra, 6
                  slti        t1, a5, 1567
                  c.slli      ra, 14
                  add         a3, s3, s6
                  c.xor       a0, a1
                  xor         sp, s8, s2
                  sub         gp, t6, a7
                  c.addi      a4, -1
                  mulhsu      a6, t6, gp
                  sub         s0, s7, t5
                  xori        a1, sp, -1036
                  mulhu       sp, s6, s9
                  c.or        a0, s1
                  xori        a7, t2, -619
                  div         s0, s10, s5
                  c.li        a4, 14
                  sltiu       zero, s7, -963
                  c.addi4spn  a3, sp, 624
                  auipc       s11, 727802
                  lui         a1, 987667
                  mul         s1, zero, s3
                  addi        s8, s2, -1261
                  slli        s6, t1, 29
                  c.addi16sp  sp, 352
                  slti        t3, zero, -1536
                  ori         ra, a5, -623
                  sub         tp, a0, s11
                  c.add       a3, s6
                  andi        zero, s10, 1192
                  c.addi      s8, -1
                  c.mv        a7, a7
                  c.sub       s0, a0
                  c.srli      a3, 26
                  lui         zero, 467443
                  c.mv        tp, a6
                  slt         t4, s5, s5
                  sra         t3, s2, s8
                  c.lui       ra, 1
                  divu        t5, s3, tp
                  rem         a3, a5, a5
                  ori         zero, a4, 1957
                  or          ra, a2, a7
                  slli        a4, s7, 7
                  c.srai      a0, 8
                  sltiu       a0, t4, 768
                  c.addi16sp  sp, 288
                  sltiu       s1, s5, 1376
                  divu        t1, s8, t6
                  c.addi      a5, -1
                  divu        s9, s7, zero
                  c.sub       a0, a3
                  ori         s9, zero, 2042
                  c.li        ra, 3
                  slt         s1, gp, s7
                  sll         s5, s11, t6
                  mulhsu      ra, t5, s5
                  c.addi4spn  a2, sp, 640
                  slt         gp, s10, s8
                  or          s1, a6, s1
                  or          sp, s1, t2
                  c.srai      s0, 28
                  xor         s7, zero, s8
                  srli        zero, a7, 24
                  xori        t0, s9, -625
                  sltiu       zero, t2, 361
                  lui         t1, 63717
                  c.slli      s2, 17
                  c.andi      a3, -1
                  and         s11, t6, ra
                  c.or        a0, a3
                  sub         a2, ra, s6
                  sra         s7, s10, t1
                  div         t0, s10, t6
                  or          s5, zero, s2
                  c.addi4spn  a0, sp, 144
                  c.srli      a3, 18
                  andi        gp, t5, -702
                  sltiu       zero, s3, 612
                  c.add       t1, t1
                  c.addi4spn  a0, sp, 352
                  c.andi      a0, 14
                  c.srli      a4, 12
                  and         a6, s9, a0
                  mulhu       ra, s4, a7
                  c.addi      s5, -1
                  xori        zero, t0, 585
                  c.nop
                  c.and       a2, a0
                  or          s11, ra, a0
                  xor         sp, s10, t4
                  addi        s7, sp, 245
                  sub         zero, s6, s2
                  divu        s3, s2, s9
                  mul         gp, s10, s6
                  mulh        gp, t1, t1
                  c.srai      a3, 17
                  sltu        s8, s2, s6
                  sltiu       s3, s10, -1796
                  mulh        sp, sp, ra
                  slti        s3, s3, 1526
                  c.mv        t1, a4
                  c.or        a0, a1
                  mulhu       s4, t2, t4
                  addi        ra, s8, -466
                  mulhu       a0, a4, tp
                  c.sub       a0, a0
                  xor         s8, s11, a7
                  c.srai      a1, 13
                  or          a5, a3, s0
                  slli        s7, s6, 11
                  c.nop
                  c.addi      a4, -1
                  c.srli      a3, 18
                  c.nop
                  mulhu       a7, t6, s3
                  srl         sp, a4, t2
                  slli        ra, s11, 20
                  c.srai      a0, 4
                  add         t1, s4, sp
                  c.mv        a1, gp
                  c.addi16sp  sp, 432
                  auipc       zero, 527665
                  xori        s6, t2, -1702
                  rem         s11, ra, s7
                  slti        zero, s7, 1715
                  div         zero, s6, s8
                  rem         ra, s8, t2
                  srai        a1, gp, 14
                  c.add       s6, t6
                  add         a7, t2, s7
                  c.addi4spn  a3, sp, 528
                  xor         s9, s8, a0
                  c.slli      t3, 11
                  ori         s8, a4, 589
                  sltiu       s1, t3, 1660
                  c.addi4spn  s1, sp, 1008
                  sub         zero, a2, t4
                  and         zero, a6, t3
                  andi        t0, s3, -711
                  mul         t4, t2, t5
                  c.li        s11, 2
                  sra         t1, s7, t0
                  c.srai      a0, 30
                  mul         a3, sp, gp
                  srai        s9, t1, 20
                  srai        s9, t0, 21
                  mulh        a3, s5, a2
                  div         a1, t5, t1
                  add         t0, t2, ra
                  ori         a4, tp, -1556
                  c.addi4spn  a0, sp, 144
                  mulhsu      t0, t2, t4
                  xori        a7, tp, 486
                  c.andi      a1, -1
                  andi        a0, a0, 545
                  nop
                  ori         zero, s4, 77
                  andi        sp, zero, -1532
                  andi        a3, s9, -651
                  div         zero, s8, t5
                  auipc       t4, 563573
                  c.addi4spn  a3, sp, 448
                  sra         a2, s9, a0
                  divu        a7, t1, a5
                  div         a5, ra, a2
                  xor         zero, zero, s5
                  c.andi      a3, -1
                  addi        s7, s4, -1182
                  or          zero, s1, a3
                  slt         tp, s4, s4
                  and         a2, tp, ra
                  rem         a2, a7, a5
                  c.or        a0, a0
                  sltiu       a0, s5, 638
                  ori         s2, t0, 1712
                  mulhsu      s4, s9, s3
                  sra         ra, gp, s6
                  c.srli      a3, 23
                  c.or        a3, a1
                  c.andi      a0, -1
                  c.addi16sp  sp, -16
                  sll         a2, ra, zero
                  c.srli      s1, 26
                  c.xor       a0, s1
                  c.or        a0, a0
                  auipc       s11, 744161
                  c.mv        gp, t6
                  divu        s5, a2, gp
                  and         zero, a3, t4
                  sub         gp, t1, a0
                  slt         a5, s3, s9
                  mulhu       a2, s6, s2
                  c.mv        a2, a4
                  auipc       zero, 698395
                  add         s7, a4, t2
                  mulhu       t3, t5, a3
                  srai        zero, a7, 2
                  xor         t0, t0, s7
                  xor         s3, a3, sp
                  slti        a7, t1, -1523
                  xor         a6, gp, a4
                  c.mv        a2, s11
                  c.addi4spn  a2, sp, 784
                  sltiu       s4, a6, 1276
                  sltu        a5, a2, gp
                  slt         gp, sp, a5
                  lui         tp, 94398
                  slt         t4, s6, a0
                  c.mv        a3, s10
                  auipc       gp, 53417
                  div         t1, a2, t4
                  slt         t0, t1, ra
                  srai        a5, a7, 23
                  c.andi      a2, 13
                  addi        t0, a1, -1782
                  div         s4, zero, s6
                  sltu        zero, s7, gp
                  c.addi4spn  a5, sp, 592
                  slt         t1, a2, gp
                  c.mv        t4, t0
                  rem         s5, s3, gp
                  c.nop
                  c.and       a0, a1
                  sra         zero, s5, a4
                  divu        s8, s4, zero
                  mulhu       ra, s4, s3
                  srai        t4, zero, 1
                  c.li        s2, -1
                  c.addi16sp  sp, 368
                  srl         a2, t1, s10
                  c.lui       s9, 19
                  ori         t0, t1, 1826
                  c.addi      s0, 18
                  c.and       a2, a3
                  divu        zero, ra, s2
                  xor         s7, t4, t5
                  add         sp, s1, a0
                  and         a2, a6, s9
                  c.srli      a2, 5
                  sll         zero, s7, s2
                  mul         s0, s7, s1
                  and         a4, a5, ra
                  mul         t1, tp, s7
                  sra         a2, s11, ra
                  c.srai      s1, 12
                  mulhsu      s9, s8, ra
                  mulhsu      a3, a7, ra
                  sll         a1, s11, s8
                  rem         s1, t3, s2
                  xor         s11, s8, a3
                  c.sub       a3, a0
                  c.lui       s5, 5
                  mulhsu      t5, t2, t6
                  nop
                  sltiu       t3, s5, -1740
                  c.mv        ra, t3
                  c.srai      a1, 30
                  addi        a0, gp, 1583
                  sltu        a1, t6, a0
                  add         t4, s4, ra
                  sra         t0, t5, ra
                  c.xor       a3, a3
                  rem         s7, s10, s5
                  c.li        s7, -1
                  nop
                  nop
                  addi        s9, s10, -1374
                  sltu        a2, s8, s2
                  auipc       a5, 236981
                  slt         s7, tp, s11
                  c.li        s8, -1
                  add         s11, t6, t1
                  slli        t1, t1, 2
                  add         sp, t0, t2
                  xor         a2, a7, zero
                  c.sub       a3, a0
                  mul         s7, t2, t2
                  c.addi4spn  a3, sp, 720
                  andi        t1, sp, 1881
                  c.sub       a5, a1
                  c.add       s9, s11
                  c.andi      a1, 24
                  mulh        sp, s4, a0
                  slt         a5, s7, s4
                  c.nop
                  mulhu       zero, s11, a6
                  add         a6, zero, s5
                  nop
                  c.or        a0, a0
                  div         s9, s5, t3
                  add         t3, s0, s0
                  sub         a2, s4, s7
                  c.addi4spn  a2, sp, 944
                  xor         zero, s5, s1
                  ori         s1, s0, 1945
                  andi        a3, s10, -1816
                  c.sub       a1, s1
                  mulhsu      s6, a1, zero
                  c.xor       a0, a0
                  srl         tp, s5, a5
                  add         s2, s1, a0
                  rem         t4, s4, t3
                  auipc       t5, 942634
                  c.addi16sp  sp, -16
                  xori        ra, t1, -1208
                  mulhu       s2, a3, t4
                  c.mv        s2, a2
                  c.srai      a3, 13
                  c.xor       a0, a2
                  ori         a6, s10, 815
                  sll         sp, s3, s6
                  ori         a1, zero, -675
                  srli        s1, sp, 9
                  add         a6, a0, ra
                  c.addi4spn  a0, sp, 560
                  mulhu       s9, tp, a1
                  c.nop
                  srl         zero, a1, tp
                  c.and       a3, s1
                  c.slli      a2, 6
                  sltiu       s8, s9, -710
                  srl         ra, ra, sp
                  mulh        a1, t6, t6
                  slti        a5, t4, 595
                  c.or        a2, a1
                  srl         sp, tp, t3
                  sltiu       zero, tp, 961
                  or          s9, zero, s4
                  c.srai      a0, 20
                  c.lui       s9, 9
                  c.addi16sp  sp, -16
                  andi        t3, gp, -1456
                  ori         s5, a7, -378
                  or          zero, t5, tp
                  and         t5, a4, s11
                  mulh        zero, a6, s4
                  c.add       a6, a7
                  mulhsu      a4, a7, t0
                  divu        s8, s2, t4
                  c.or        a2, s1
                  or          s6, t6, s1
                  c.and       a0, a1
                  sltu        s7, s6, t1
                  c.addi16sp  sp, -16
                  sub         s1, s7, sp
                  mulhu       tp, a7, s7
                  c.li        t5, 13
                  sltu        zero, a0, s8
                  and         zero, t4, s4
                  slt         t0, s9, s9
                  or          s9, s1, a3
                  c.li        s8, 29
                  and         a2, a1, s8
                  c.xor       a0, a1
                  sra         zero, a0, tp
                  sra         zero, s8, s3
                  c.li        a5, 28
                  c.li        s5, -1
                  c.andi      a2, 8
                  c.addi4spn  a2, sp, 720
                  c.or        a0, a3
                  c.srli      a3, 14
                  lui         sp, 251090
                  slt         a3, t0, zero
                  div         s0, a2, t3
                  srl         s4, s3, a4
                  sll         s11, s2, zero
                  c.add       s0, s9
                  c.addi16sp  sp, 240
                  c.add       s5, a0
                  divu        a4, a5, s7
                  rem         a6, t5, s10
                  c.srli      a3, 3
                  c.srai      a3, 12
                  div         t1, s10, s1
                  sltiu       zero, s2, 243
                  c.mv        a4, s0
                  mulh        s3, s7, a4
                  sltiu       s4, t4, 30
                  c.addi4spn  a0, sp, 672
                  c.addi4spn  a0, sp, 528
                  rem         a4, t4, s8
                  addi        t3, a6, -1045
                  slt         tp, a7, t3
                  sll         s3, a4, s0
                  sltiu       gp, s3, 1591
                  andi        t5, zero, 187
                  mul         tp, s1, s2
                  c.nop
                  rem         t3, zero, t4
                  sll         t0, a4, s9
                  c.sub       a0, a0
                  auipc       t5, 238774
                  c.add       a4, t4
                  or          s6, gp, s11
                  slti        s5, s5, -1984
                  sltiu       s8, s0, 973
                  addi        a6, a6, 1864
                  srai        ra, a5, 7
                  c.add       ra, ra
                  sltu        a0, s8, a6
                  c.slli      ra, 28
                  c.li        tp, -1
                  c.addi4spn  a2, sp, 272
                  c.srai      a0, 8
                  slti        zero, ra, -15
                  mulhsu      tp, a1, s0
                  slt         s1, s8, a4
                  srl         s0, s9, a3
                  la x7, test_done
                  jalr x0, x7, 0
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
mmode_intr_vector_1:
                  csrrw x26, 0x340, x26
                  add x26, x31, zero
                  1: addi x26, x26, -124
                  sw x1, 4(x26)
                  sw x2, 8(x26)
                  sw x3, 12(x26)
                  sw x4, 16(x26)
                  sw x5, 20(x26)
                  sw x6, 24(x26)
                  sw x7, 28(x26)
                  sw x8, 32(x26)
                  sw x9, 36(x26)
                  sw x10, 40(x26)
                  sw x11, 44(x26)
                  sw x12, 48(x26)
                  sw x13, 52(x26)
                  sw x14, 56(x26)
                  sw x15, 60(x26)
                  sw x16, 64(x26)
                  sw x17, 68(x26)
                  sw x18, 72(x26)
                  sw x19, 76(x26)
                  sw x20, 80(x26)
                  sw x21, 84(x26)
                  sw x22, 88(x26)
                  sw x23, 92(x26)
                  sw x24, 96(x26)
                  sw x25, 100(x26)
                  sw x26, 104(x26)
                  sw x27, 108(x26)
                  sw x28, 112(x26)
                  sw x29, 116(x26)
                  sw x30, 120(x26)
                  sw x31, 124(x26)
                  csrr x30, 0x342 # MCAUSE
                  srli x30, x30, 0x1f
                  beqz x30, 1f
                  j mmode_intr_handler
                  1: la x7, test_done
                  jalr x0, x7, 0

mmode_intr_vector_2:
                  csrrw x26, 0x340, x26
                  add x26, x31, zero
                  1: addi x26, x26, -124
                  sw x1, 4(x26)
                  sw x2, 8(x26)
                  sw x3, 12(x26)
                  sw x4, 16(x26)
                  sw x5, 20(x26)
                  sw x6, 24(x26)
                  sw x7, 28(x26)
                  sw x8, 32(x26)
                  sw x9, 36(x26)
                  sw x10, 40(x26)
                  sw x11, 44(x26)
                  sw x12, 48(x26)
                  sw x13, 52(x26)
                  sw x14, 56(x26)
                  sw x15, 60(x26)
                  sw x16, 64(x26)
                  sw x17, 68(x26)
                  sw x18, 72(x26)
                  sw x19, 76(x26)
                  sw x20, 80(x26)
                  sw x21, 84(x26)
                  sw x22, 88(x26)
                  sw x23, 92(x26)
                  sw x24, 96(x26)
                  sw x25, 100(x26)
                  sw x26, 104(x26)
                  sw x27, 108(x26)
                  sw x28, 112(x26)
                  sw x29, 116(x26)
                  sw x30, 120(x26)
                  sw x31, 124(x26)
                  csrr x30, 0x342 # MCAUSE
                  srli x30, x30, 0x1f
                  beqz x30, 1f
                  j mmode_intr_handler
                  1: la x7, test_done
                  jalr x0, x7, 0

mmode_intr_vector_3:
                  csrrw x26, 0x340, x26
                  add x26, x31, zero
                  1: addi x26, x26, -124
                  sw x1, 4(x26)
                  sw x2, 8(x26)
                  sw x3, 12(x26)
                  sw x4, 16(x26)
                  sw x5, 20(x26)
                  sw x6, 24(x26)
                  sw x7, 28(x26)
                  sw x8, 32(x26)
                  sw x9, 36(x26)
                  sw x10, 40(x26)
                  sw x11, 44(x26)
                  sw x12, 48(x26)
                  sw x13, 52(x26)
                  sw x14, 56(x26)
                  sw x15, 60(x26)
                  sw x16, 64(x26)
                  sw x17, 68(x26)
                  sw x18, 72(x26)
                  sw x19, 76(x26)
                  sw x20, 80(x26)
                  sw x21, 84(x26)
                  sw x22, 88(x26)
                  sw x23, 92(x26)
                  sw x24, 96(x26)
                  sw x25, 100(x26)
                  sw x26, 104(x26)
                  sw x27, 108(x26)
                  sw x28, 112(x26)
                  sw x29, 116(x26)
                  sw x30, 120(x26)
                  sw x31, 124(x26)
                  csrr x30, 0x342 # MCAUSE
                  srli x30, x30, 0x1f
                  beqz x30, 1f
                  j mmode_intr_handler
                  1: la x7, test_done
                  jalr x0, x7, 0

mmode_intr_vector_4:
                  csrrw x26, 0x340, x26
                  add x26, x31, zero
                  1: addi x26, x26, -124
                  sw x1, 4(x26)
                  sw x2, 8(x26)
                  sw x3, 12(x26)
                  sw x4, 16(x26)
                  sw x5, 20(x26)
                  sw x6, 24(x26)
                  sw x7, 28(x26)
                  sw x8, 32(x26)
                  sw x9, 36(x26)
                  sw x10, 40(x26)
                  sw x11, 44(x26)
                  sw x12, 48(x26)
                  sw x13, 52(x26)
                  sw x14, 56(x26)
                  sw x15, 60(x26)
                  sw x16, 64(x26)
                  sw x17, 68(x26)
                  sw x18, 72(x26)
                  sw x19, 76(x26)
                  sw x20, 80(x26)
                  sw x21, 84(x26)
                  sw x22, 88(x26)
                  sw x23, 92(x26)
                  sw x24, 96(x26)
                  sw x25, 100(x26)
                  sw x26, 104(x26)
                  sw x27, 108(x26)
                  sw x28, 112(x26)
                  sw x29, 116(x26)
                  sw x30, 120(x26)
                  sw x31, 124(x26)
                  csrr x30, 0x342 # MCAUSE
                  srli x30, x30, 0x1f
                  beqz x30, 1f
                  j mmode_intr_handler
                  1: la x7, test_done
                  jalr x0, x7, 0

mmode_intr_vector_5:
                  csrrw x26, 0x340, x26
                  add x26, x31, zero
                  1: addi x26, x26, -124
                  sw x1, 4(x26)
                  sw x2, 8(x26)
                  sw x3, 12(x26)
                  sw x4, 16(x26)
                  sw x5, 20(x26)
                  sw x6, 24(x26)
                  sw x7, 28(x26)
                  sw x8, 32(x26)
                  sw x9, 36(x26)
                  sw x10, 40(x26)
                  sw x11, 44(x26)
                  sw x12, 48(x26)
                  sw x13, 52(x26)
                  sw x14, 56(x26)
                  sw x15, 60(x26)
                  sw x16, 64(x26)
                  sw x17, 68(x26)
                  sw x18, 72(x26)
                  sw x19, 76(x26)
                  sw x20, 80(x26)
                  sw x21, 84(x26)
                  sw x22, 88(x26)
                  sw x23, 92(x26)
                  sw x24, 96(x26)
                  sw x25, 100(x26)
                  sw x26, 104(x26)
                  sw x27, 108(x26)
                  sw x28, 112(x26)
                  sw x29, 116(x26)
                  sw x30, 120(x26)
                  sw x31, 124(x26)
                  csrr x30, 0x342 # MCAUSE
                  srli x30, x30, 0x1f
                  beqz x30, 1f
                  j mmode_intr_handler
                  1: la x7, test_done
                  jalr x0, x7, 0

mmode_intr_vector_6:
                  csrrw x26, 0x340, x26
                  add x26, x31, zero
                  1: addi x26, x26, -124
                  sw x1, 4(x26)
                  sw x2, 8(x26)
                  sw x3, 12(x26)
                  sw x4, 16(x26)
                  sw x5, 20(x26)
                  sw x6, 24(x26)
                  sw x7, 28(x26)
                  sw x8, 32(x26)
                  sw x9, 36(x26)
                  sw x10, 40(x26)
                  sw x11, 44(x26)
                  sw x12, 48(x26)
                  sw x13, 52(x26)
                  sw x14, 56(x26)
                  sw x15, 60(x26)
                  sw x16, 64(x26)
                  sw x17, 68(x26)
                  sw x18, 72(x26)
                  sw x19, 76(x26)
                  sw x20, 80(x26)
                  sw x21, 84(x26)
                  sw x22, 88(x26)
                  sw x23, 92(x26)
                  sw x24, 96(x26)
                  sw x25, 100(x26)
                  sw x26, 104(x26)
                  sw x27, 108(x26)
                  sw x28, 112(x26)
                  sw x29, 116(x26)
                  sw x30, 120(x26)
                  sw x31, 124(x26)
                  csrr x30, 0x342 # MCAUSE
                  srli x30, x30, 0x1f
                  beqz x30, 1f
                  j mmode_intr_handler
                  1: la x7, test_done
                  jalr x0, x7, 0

mmode_intr_vector_7:
                  csrrw x26, 0x340, x26
                  add x26, x31, zero
                  1: addi x26, x26, -124
                  sw x1, 4(x26)
                  sw x2, 8(x26)
                  sw x3, 12(x26)
                  sw x4, 16(x26)
                  sw x5, 20(x26)
                  sw x6, 24(x26)
                  sw x7, 28(x26)
                  sw x8, 32(x26)
                  sw x9, 36(x26)
                  sw x10, 40(x26)
                  sw x11, 44(x26)
                  sw x12, 48(x26)
                  sw x13, 52(x26)
                  sw x14, 56(x26)
                  sw x15, 60(x26)
                  sw x16, 64(x26)
                  sw x17, 68(x26)
                  sw x18, 72(x26)
                  sw x19, 76(x26)
                  sw x20, 80(x26)
                  sw x21, 84(x26)
                  sw x22, 88(x26)
                  sw x23, 92(x26)
                  sw x24, 96(x26)
                  sw x25, 100(x26)
                  sw x26, 104(x26)
                  sw x27, 108(x26)
                  sw x28, 112(x26)
                  sw x29, 116(x26)
                  sw x30, 120(x26)
                  sw x31, 124(x26)
                  csrr x30, 0x342 # MCAUSE
                  srli x30, x30, 0x1f
                  beqz x30, 1f
                  j mmode_intr_handler
                  1: la x7, test_done
                  jalr x0, x7, 0

mmode_intr_vector_8:
                  csrrw x26, 0x340, x26
                  add x26, x31, zero
                  1: addi x26, x26, -124
                  sw x1, 4(x26)
                  sw x2, 8(x26)
                  sw x3, 12(x26)
                  sw x4, 16(x26)
                  sw x5, 20(x26)
                  sw x6, 24(x26)
                  sw x7, 28(x26)
                  sw x8, 32(x26)
                  sw x9, 36(x26)
                  sw x10, 40(x26)
                  sw x11, 44(x26)
                  sw x12, 48(x26)
                  sw x13, 52(x26)
                  sw x14, 56(x26)
                  sw x15, 60(x26)
                  sw x16, 64(x26)
                  sw x17, 68(x26)
                  sw x18, 72(x26)
                  sw x19, 76(x26)
                  sw x20, 80(x26)
                  sw x21, 84(x26)
                  sw x22, 88(x26)
                  sw x23, 92(x26)
                  sw x24, 96(x26)
                  sw x25, 100(x26)
                  sw x26, 104(x26)
                  sw x27, 108(x26)
                  sw x28, 112(x26)
                  sw x29, 116(x26)
                  sw x30, 120(x26)
                  sw x31, 124(x26)
                  csrr x30, 0x342 # MCAUSE
                  srli x30, x30, 0x1f
                  beqz x30, 1f
                  j mmode_intr_handler
                  1: la x7, test_done
                  jalr x0, x7, 0

mmode_intr_vector_9:
                  csrrw x26, 0x340, x26
                  add x26, x31, zero
                  1: addi x26, x26, -124
                  sw x1, 4(x26)
                  sw x2, 8(x26)
                  sw x3, 12(x26)
                  sw x4, 16(x26)
                  sw x5, 20(x26)
                  sw x6, 24(x26)
                  sw x7, 28(x26)
                  sw x8, 32(x26)
                  sw x9, 36(x26)
                  sw x10, 40(x26)
                  sw x11, 44(x26)
                  sw x12, 48(x26)
                  sw x13, 52(x26)
                  sw x14, 56(x26)
                  sw x15, 60(x26)
                  sw x16, 64(x26)
                  sw x17, 68(x26)
                  sw x18, 72(x26)
                  sw x19, 76(x26)
                  sw x20, 80(x26)
                  sw x21, 84(x26)
                  sw x22, 88(x26)
                  sw x23, 92(x26)
                  sw x24, 96(x26)
                  sw x25, 100(x26)
                  sw x26, 104(x26)
                  sw x27, 108(x26)
                  sw x28, 112(x26)
                  sw x29, 116(x26)
                  sw x30, 120(x26)
                  sw x31, 124(x26)
                  csrr x30, 0x342 # MCAUSE
                  srli x30, x30, 0x1f
                  beqz x30, 1f
                  j mmode_intr_handler
                  1: la x7, test_done
                  jalr x0, x7, 0

mmode_intr_vector_10:
                  csrrw x26, 0x340, x26
                  add x26, x31, zero
                  1: addi x26, x26, -124
                  sw x1, 4(x26)
                  sw x2, 8(x26)
                  sw x3, 12(x26)
                  sw x4, 16(x26)
                  sw x5, 20(x26)
                  sw x6, 24(x26)
                  sw x7, 28(x26)
                  sw x8, 32(x26)
                  sw x9, 36(x26)
                  sw x10, 40(x26)
                  sw x11, 44(x26)
                  sw x12, 48(x26)
                  sw x13, 52(x26)
                  sw x14, 56(x26)
                  sw x15, 60(x26)
                  sw x16, 64(x26)
                  sw x17, 68(x26)
                  sw x18, 72(x26)
                  sw x19, 76(x26)
                  sw x20, 80(x26)
                  sw x21, 84(x26)
                  sw x22, 88(x26)
                  sw x23, 92(x26)
                  sw x24, 96(x26)
                  sw x25, 100(x26)
                  sw x26, 104(x26)
                  sw x27, 108(x26)
                  sw x28, 112(x26)
                  sw x29, 116(x26)
                  sw x30, 120(x26)
                  sw x31, 124(x26)
                  csrr x30, 0x342 # MCAUSE
                  srli x30, x30, 0x1f
                  beqz x30, 1f
                  j mmode_intr_handler
                  1: la x7, test_done
                  jalr x0, x7, 0

mmode_intr_vector_11:
                  csrrw x26, 0x340, x26
                  add x26, x31, zero
                  1: addi x26, x26, -124
                  sw x1, 4(x26)
                  sw x2, 8(x26)
                  sw x3, 12(x26)
                  sw x4, 16(x26)
                  sw x5, 20(x26)
                  sw x6, 24(x26)
                  sw x7, 28(x26)
                  sw x8, 32(x26)
                  sw x9, 36(x26)
                  sw x10, 40(x26)
                  sw x11, 44(x26)
                  sw x12, 48(x26)
                  sw x13, 52(x26)
                  sw x14, 56(x26)
                  sw x15, 60(x26)
                  sw x16, 64(x26)
                  sw x17, 68(x26)
                  sw x18, 72(x26)
                  sw x19, 76(x26)
                  sw x20, 80(x26)
                  sw x21, 84(x26)
                  sw x22, 88(x26)
                  sw x23, 92(x26)
                  sw x24, 96(x26)
                  sw x25, 100(x26)
                  sw x26, 104(x26)
                  sw x27, 108(x26)
                  sw x28, 112(x26)
                  sw x29, 116(x26)
                  sw x30, 120(x26)
                  sw x31, 124(x26)
                  csrr x30, 0x342 # MCAUSE
                  srli x30, x30, 0x1f
                  beqz x30, 1f
                  j mmode_intr_handler
                  1: la x7, test_done
                  jalr x0, x7, 0

mmode_intr_vector_12:
                  csrrw x26, 0x340, x26
                  add x26, x31, zero
                  1: addi x26, x26, -124
                  sw x1, 4(x26)
                  sw x2, 8(x26)
                  sw x3, 12(x26)
                  sw x4, 16(x26)
                  sw x5, 20(x26)
                  sw x6, 24(x26)
                  sw x7, 28(x26)
                  sw x8, 32(x26)
                  sw x9, 36(x26)
                  sw x10, 40(x26)
                  sw x11, 44(x26)
                  sw x12, 48(x26)
                  sw x13, 52(x26)
                  sw x14, 56(x26)
                  sw x15, 60(x26)
                  sw x16, 64(x26)
                  sw x17, 68(x26)
                  sw x18, 72(x26)
                  sw x19, 76(x26)
                  sw x20, 80(x26)
                  sw x21, 84(x26)
                  sw x22, 88(x26)
                  sw x23, 92(x26)
                  sw x24, 96(x26)
                  sw x25, 100(x26)
                  sw x26, 104(x26)
                  sw x27, 108(x26)
                  sw x28, 112(x26)
                  sw x29, 116(x26)
                  sw x30, 120(x26)
                  sw x31, 124(x26)
                  csrr x30, 0x342 # MCAUSE
                  srli x30, x30, 0x1f
                  beqz x30, 1f
                  j mmode_intr_handler
                  1: la x7, test_done
                  jalr x0, x7, 0

mmode_intr_vector_13:
                  csrrw x26, 0x340, x26
                  add x26, x31, zero
                  1: addi x26, x26, -124
                  sw x1, 4(x26)
                  sw x2, 8(x26)
                  sw x3, 12(x26)
                  sw x4, 16(x26)
                  sw x5, 20(x26)
                  sw x6, 24(x26)
                  sw x7, 28(x26)
                  sw x8, 32(x26)
                  sw x9, 36(x26)
                  sw x10, 40(x26)
                  sw x11, 44(x26)
                  sw x12, 48(x26)
                  sw x13, 52(x26)
                  sw x14, 56(x26)
                  sw x15, 60(x26)
                  sw x16, 64(x26)
                  sw x17, 68(x26)
                  sw x18, 72(x26)
                  sw x19, 76(x26)
                  sw x20, 80(x26)
                  sw x21, 84(x26)
                  sw x22, 88(x26)
                  sw x23, 92(x26)
                  sw x24, 96(x26)
                  sw x25, 100(x26)
                  sw x26, 104(x26)
                  sw x27, 108(x26)
                  sw x28, 112(x26)
                  sw x29, 116(x26)
                  sw x30, 120(x26)
                  sw x31, 124(x26)
                  csrr x30, 0x342 # MCAUSE
                  srli x30, x30, 0x1f
                  beqz x30, 1f
                  j mmode_intr_handler
                  1: la x7, test_done
                  jalr x0, x7, 0

mmode_intr_vector_14:
                  csrrw x26, 0x340, x26
                  add x26, x31, zero
                  1: addi x26, x26, -124
                  sw x1, 4(x26)
                  sw x2, 8(x26)
                  sw x3, 12(x26)
                  sw x4, 16(x26)
                  sw x5, 20(x26)
                  sw x6, 24(x26)
                  sw x7, 28(x26)
                  sw x8, 32(x26)
                  sw x9, 36(x26)
                  sw x10, 40(x26)
                  sw x11, 44(x26)
                  sw x12, 48(x26)
                  sw x13, 52(x26)
                  sw x14, 56(x26)
                  sw x15, 60(x26)
                  sw x16, 64(x26)
                  sw x17, 68(x26)
                  sw x18, 72(x26)
                  sw x19, 76(x26)
                  sw x20, 80(x26)
                  sw x21, 84(x26)
                  sw x22, 88(x26)
                  sw x23, 92(x26)
                  sw x24, 96(x26)
                  sw x25, 100(x26)
                  sw x26, 104(x26)
                  sw x27, 108(x26)
                  sw x28, 112(x26)
                  sw x29, 116(x26)
                  sw x30, 120(x26)
                  sw x31, 124(x26)
                  csrr x30, 0x342 # MCAUSE
                  srli x30, x30, 0x1f
                  beqz x30, 1f
                  j mmode_intr_handler
                  1: la x7, test_done
                  jalr x0, x7, 0

mmode_intr_vector_15:
                  csrrw x26, 0x340, x26
                  add x26, x31, zero
                  1: addi x26, x26, -124
                  sw x1, 4(x26)
                  sw x2, 8(x26)
                  sw x3, 12(x26)
                  sw x4, 16(x26)
                  sw x5, 20(x26)
                  sw x6, 24(x26)
                  sw x7, 28(x26)
                  sw x8, 32(x26)
                  sw x9, 36(x26)
                  sw x10, 40(x26)
                  sw x11, 44(x26)
                  sw x12, 48(x26)
                  sw x13, 52(x26)
                  sw x14, 56(x26)
                  sw x15, 60(x26)
                  sw x16, 64(x26)
                  sw x17, 68(x26)
                  sw x18, 72(x26)
                  sw x19, 76(x26)
                  sw x20, 80(x26)
                  sw x21, 84(x26)
                  sw x22, 88(x26)
                  sw x23, 92(x26)
                  sw x24, 96(x26)
                  sw x25, 100(x26)
                  sw x26, 104(x26)
                  sw x27, 108(x26)
                  sw x28, 112(x26)
                  sw x29, 116(x26)
                  sw x30, 120(x26)
                  sw x31, 124(x26)
                  csrr x30, 0x342 # MCAUSE
                  srli x30, x30, 0x1f
                  beqz x30, 1f
                  j mmode_intr_handler
                  1: la x7, test_done
                  jalr x0, x7, 0

.align 4
mtvec_handler:    
                  .option norvc;
                  j mmode_exception_handler
                  j mmode_intr_vector_1
                  j mmode_intr_vector_2
                  j mmode_intr_vector_3
                  j mmode_intr_vector_4
                  j mmode_intr_vector_5
                  j mmode_intr_vector_6
                  j mmode_intr_vector_7
                  j mmode_intr_vector_8
                  j mmode_intr_vector_9
                  j mmode_intr_vector_10
                  j mmode_intr_vector_11
                  j mmode_intr_vector_12
                  j mmode_intr_vector_13
                  j mmode_intr_vector_14
                  j mmode_intr_vector_15
                  .option rvc;

mmode_exception_handler:
                  csrrw x26, 0x340, x26
                  add x26, x31, zero
                  1: addi x26, x26, -124
                  sw x1, 4(x26)
                  sw x2, 8(x26)
                  sw x3, 12(x26)
                  sw x4, 16(x26)
                  sw x5, 20(x26)
                  sw x6, 24(x26)
                  sw x7, 28(x26)
                  sw x8, 32(x26)
                  sw x9, 36(x26)
                  sw x10, 40(x26)
                  sw x11, 44(x26)
                  sw x12, 48(x26)
                  sw x13, 52(x26)
                  sw x14, 56(x26)
                  sw x15, 60(x26)
                  sw x16, 64(x26)
                  sw x17, 68(x26)
                  sw x18, 72(x26)
                  sw x19, 76(x26)
                  sw x20, 80(x26)
                  sw x21, 84(x26)
                  sw x22, 88(x26)
                  sw x23, 92(x26)
                  sw x24, 96(x26)
                  sw x25, 100(x26)
                  sw x26, 104(x26)
                  sw x27, 108(x26)
                  sw x28, 112(x26)
                  sw x29, 116(x26)
                  sw x30, 120(x26)
                  sw x31, 124(x26)
                  csrr x30, 0x341 # MEPC
                  csrr x30, 0x342 # MCAUSE
                  li x22, 0xb # ECALL_MMODE
                  beq x30, x22, ecall_handler
                  li x22, 0x2 # ILLEGAL_INSTRUCTION
                  beq x30, x22, illegal_instr_handler
                  csrr x22, 0x343 # MTVAL
                  1: la x7, test_done
                  jalr x1, x7, 0

ecall_handler:    
                  la x30, _start
                  sw x0, 0(x30)
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
                  la x7, write_tohost
                  jalr x0, x7, 0

illegal_instr_handler:
                  csrr  x30, 0x341
                  addi  x30, x30, 4
                  csrw  0x341, x30
                  lw x1, 4(x26)
                  lw x2, 8(x26)
                  lw x3, 12(x26)
                  lw x4, 16(x26)
                  lw x5, 20(x26)
                  lw x6, 24(x26)
                  lw x7, 28(x26)
                  lw x8, 32(x26)
                  lw x9, 36(x26)
                  lw x10, 40(x26)
                  lw x11, 44(x26)
                  lw x12, 48(x26)
                  lw x13, 52(x26)
                  lw x14, 56(x26)
                  lw x15, 60(x26)
                  lw x16, 64(x26)
                  lw x17, 68(x26)
                  lw x18, 72(x26)
                  lw x19, 76(x26)
                  lw x20, 80(x26)
                  lw x21, 84(x26)
                  lw x22, 88(x26)
                  lw x23, 92(x26)
                  lw x24, 96(x26)
                  lw x25, 100(x26)
                  lw x26, 104(x26)
                  lw x27, 108(x26)
                  lw x28, 112(x26)
                  lw x29, 116(x26)
                  lw x30, 120(x26)
                  lw x31, 124(x26)
                  addi x26, x26, 124
                  add x31, x26, zero
                  csrrw x26, 0x340, x26
                  mret

pt_fault_handler: 

.align 2
mmode_intr_handler:
                  csrr  x30, 0x300 # MSTATUS;
                  csrr  x30, 0x304 # MIE;
                  csrr  x30, 0x344 # MIP;
                  csrrc x30, 0x344, x30 # MIP;
                  lw x1, 4(x26)
                  lw x2, 8(x26)
                  lw x3, 12(x26)
                  lw x4, 16(x26)
                  lw x5, 20(x26)
                  lw x6, 24(x26)
                  lw x7, 28(x26)
                  lw x8, 32(x26)
                  lw x9, 36(x26)
                  lw x10, 40(x26)
                  lw x11, 44(x26)
                  lw x12, 48(x26)
                  lw x13, 52(x26)
                  lw x14, 56(x26)
                  lw x15, 60(x26)
                  lw x16, 64(x26)
                  lw x17, 68(x26)
                  lw x18, 72(x26)
                  lw x19, 76(x26)
                  lw x20, 80(x26)
                  lw x21, 84(x26)
                  lw x22, 88(x26)
                  lw x23, 92(x26)
                  lw x24, 96(x26)
                  lw x25, 100(x26)
                  lw x26, 104(x26)
                  lw x27, 108(x26)
                  lw x28, 112(x26)
                  lw x29, 116(x26)
                  lw x30, 120(x26)
                  lw x31, 124(x26)
                  addi x26, x26, 124
                  add x31, x26, zero
                  csrrw x26, 0x340, x26
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
