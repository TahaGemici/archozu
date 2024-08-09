
a.out:     file format elf32-littleriscv


Disassembly of section .text:

00002000 <main>:
    2000:	04405703          	lhu	a4,68(zero) # 44 <main_gpio_val>
    2004:	67c1                	lui	a5,0x10
    2006:	4605                	li	a2,1
    2008:	c3d8                	sw	a4,4(a5)
    200a:	4581                	li	a1,0
    200c:	557d                	li	a0,-1
    200e:	2d01                	jal	261e <timer_conf>
    2010:	66c1                	lui	a3,0x10
    2012:	429c                	lw	a5,0(a3)
    2014:	07c2                	slli	a5,a5,0x10
    2016:	87c1                	srai	a5,a5,0x10
    2018:	dfed                	beqz	a5,2012 <main+0x12>
    201a:	6731                	lui	a4,0xc
    201c:	00072623          	sw	zero,12(a4) # c00c <__GNU_EH_FRAME_HDR+0x91dc>
    2020:	4721                	li	a4,8
    2022:	02e78e63          	beq	a5,a4,205e <main+0x5e>
    2026:	00f74e63          	blt	a4,a5,2042 <main+0x42>
    202a:	4709                	li	a4,2
    202c:	02e78663          	beq	a5,a4,2058 <main+0x58>
    2030:	4711                	li	a4,4
    2032:	02e78663          	beq	a5,a4,205e <main+0x5e>
    2036:	4705                	li	a4,1
    2038:	fce79de3          	bne	a5,a4,2012 <main+0x12>
    203c:	0cf01a23          	sh	a5,212(zero) # d4 <main_state>
    2040:	2d81                	jal	2690 <uart_main>
    2042:	4741                	li	a4,16
    2044:	02e78063          	beq	a5,a4,2064 <main+0x64>
    2048:	02000713          	li	a4,32
    204c:	fce793e3          	bne	a5,a4,2012 <main+0x12>
    2050:	0cf01a23          	sh	a5,212(zero) # d4 <main_state>
    2054:	72c000ef          	jal	2780 <usb_main>
    2058:	0cf01a23          	sh	a5,212(zero) # d4 <main_state>
    205c:	25b5                	jal	26c8 <i2c_main>
    205e:	0cf01a23          	sh	a5,212(zero) # d4 <main_state>
    2062:	2d71                	jal	26fe <timer_main>
    2064:	0cf01a23          	sh	a5,212(zero) # d4 <main_state>
    2068:	2711                	jal	276c <gpio_main>
	...

00002200 <interrupt>:
    2200:	7139                	addi	sp,sp,-64
    2202:	cc3e                	sw	a5,24(sp)
    2204:	0d401783          	lh	a5,212(zero) # d4 <main_state>
    2208:	ce3a                	sw	a4,28(sp)
    220a:	de06                	sw	ra,60(sp)
    220c:	dc16                	sw	t0,56(sp)
    220e:	da1a                	sw	t1,52(sp)
    2210:	d81e                	sw	t2,48(sp)
    2212:	d62a                	sw	a0,44(sp)
    2214:	d42e                	sw	a1,40(sp)
    2216:	d232                	sw	a2,36(sp)
    2218:	d036                	sw	a3,32(sp)
    221a:	ca42                	sw	a6,20(sp)
    221c:	c846                	sw	a7,16(sp)
    221e:	c672                	sw	t3,12(sp)
    2220:	c476                	sw	t4,8(sp)
    2222:	c27a                	sw	t5,4(sp)
    2224:	c07e                	sw	t6,0(sp)
    2226:	4721                	li	a4,8
    2228:	04e78463          	beq	a5,a4,2270 <interrupt+0x70>
    222c:	02000713          	li	a4,32
    2230:	04e78263          	beq	a5,a4,2274 <interrupt+0x74>
    2234:	eb99                	bnez	a5,224a <interrupt+0x4a>
    2236:	04401783          	lh	a5,68(zero) # 44 <main_gpio_val>
    223a:	fff7c793          	not	a5,a5
    223e:	04f01223          	sh	a5,68(zero) # 44 <main_gpio_val>
    2242:	07c2                	slli	a5,a5,0x10
    2244:	83c1                	srli	a5,a5,0x10
    2246:	6741                	lui	a4,0x10
    2248:	c35c                	sw	a5,4(a4)
    224a:	50f2                	lw	ra,60(sp)
    224c:	52e2                	lw	t0,56(sp)
    224e:	5352                	lw	t1,52(sp)
    2250:	53c2                	lw	t2,48(sp)
    2252:	5532                	lw	a0,44(sp)
    2254:	55a2                	lw	a1,40(sp)
    2256:	5612                	lw	a2,36(sp)
    2258:	5682                	lw	a3,32(sp)
    225a:	4772                	lw	a4,28(sp)
    225c:	47e2                	lw	a5,24(sp)
    225e:	4852                	lw	a6,20(sp)
    2260:	48c2                	lw	a7,16(sp)
    2262:	4e32                	lw	t3,12(sp)
    2264:	4ea2                	lw	t4,8(sp)
    2266:	4f12                	lw	t5,4(sp)
    2268:	4f82                	lw	t6,0(sp)
    226a:	6121                	addi	sp,sp,64
    226c:	30200073          	mret
    2270:	29cd                	jal	2762 <timer_interrupt>
    2272:	bfe1                	j	224a <interrupt+0x4a>
    2274:	2bf9                	jal	2852 <usb_interrupt>
    2276:	bfd1                	j	224a <interrupt+0x4a>

Disassembly of section .text.uart_conf:

00002278 <uart_conf>:
    2278:	039387b7          	lui	a5,0x3938
    227c:	70078793          	addi	a5,a5,1792 # 3938700 <__GNU_EH_FRAME_HDR+0x39358d0>
    2280:	02a7d7b3          	divu	a5,a5,a0
    2284:	6719                	lui	a4,0x6
    2286:	17fd                	addi	a5,a5,-1
    2288:	c31c                	sw	a5,0(a4)
    228a:	6799                	lui	a5,0x6
    228c:	c3cc                	sw	a1,4(a5)
    228e:	8082                	ret

Disassembly of section .text.uart_read:

00002290 <uart_read>:
    2290:	6799                	lui	a5,0x6
    2292:	07c1                	addi	a5,a5,16 # 6010 <__GNU_EH_FRAME_HDR+0x31e0>
    2294:	4709                	li	a4,2
    2296:	4394                	lw	a3,0(a5)
    2298:	fee69fe3          	bne	a3,a4,2296 <uart_read+0x6>
    229c:	6719                	lui	a4,0x6
    229e:	4708                	lw	a0,8(a4)
    22a0:	0007a023          	sw	zero,0(a5)
    22a4:	0ff57513          	zext.b	a0,a0
    22a8:	8082                	ret

Disassembly of section .text.uart_write:

000022aa <uart_write>:
    22aa:	6799                	lui	a5,0x6
    22ac:	c7c8                	sw	a0,12(a5)
    22ae:	6799                	lui	a5,0x6
    22b0:	4705                	li	a4,1
    22b2:	07c1                	addi	a5,a5,16 # 6010 <__GNU_EH_FRAME_HDR+0x31e0>
    22b4:	c398                	sw	a4,0(a5)
    22b6:	4715                	li	a4,5
    22b8:	4394                	lw	a3,0(a5)
    22ba:	fee69fe3          	bne	a3,a4,22b8 <uart_write+0xe>
    22be:	0007a023          	sw	zero,0(a5)
    22c2:	8082                	ret

Disassembly of section .text.i2c_conf:

000022c4 <i2c_conf>:
    22c4:	67a1                	lui	a5,0x8
    22c6:	c3c8                	sw	a0,4(a5)
    22c8:	8082                	ret

Disassembly of section .text.i2c_write:

000022ca <i2c_write>:
    22ca:	67a1                	lui	a5,0x8
    22cc:	c38c                	sw	a1,0(a5)
    22ce:	c7c8                	sw	a0,12(a5)
    22d0:	67a1                	lui	a5,0x8
    22d2:	4705                	li	a4,1
    22d4:	07c1                	addi	a5,a5,16 # 8010 <__GNU_EH_FRAME_HDR+0x51e0>
    22d6:	c398                	sw	a4,0(a5)
    22d8:	470d                	li	a4,3
    22da:	4394                	lw	a3,0(a5)
    22dc:	fee69fe3          	bne	a3,a4,22da <i2c_write+0x10>
    22e0:	0007a023          	sw	zero,0(a5)
    22e4:	8082                	ret

Disassembly of section .text.i2c_read:

000022e6 <i2c_read>:
    22e6:	67a1                	lui	a5,0x8
    22e8:	c388                	sw	a0,0(a5)
    22ea:	4711                	li	a4,4
    22ec:	07c1                	addi	a5,a5,16 # 8010 <__GNU_EH_FRAME_HDR+0x51e0>
    22ee:	c398                	sw	a4,0(a5)
    22f0:	4731                	li	a4,12
    22f2:	4394                	lw	a3,0(a5)
    22f4:	fee69fe3          	bne	a3,a4,22f2 <i2c_read+0xc>
    22f8:	0007a023          	sw	zero,0(a5)
    22fc:	67a1                	lui	a5,0x8
    22fe:	4788                	lw	a0,8(a5)
    2300:	8082                	ret

Disassembly of section .text.qspi_wait:

00002302 <qspi_wait>:
    2302:	67a9                	lui	a5,0xa
    2304:	02878793          	addi	a5,a5,40 # a028 <__GNU_EH_FRAME_HDR+0x71f8>
    2308:	4705                	li	a4,1
    230a:	4394                	lw	a3,0(a5)
    230c:	fee69fe3          	bne	a3,a4,230a <qspi_wait+0x8>
    2310:	67a9                	lui	a5,0xa
    2312:	02878793          	addi	a5,a5,40 # a028 <__GNU_EH_FRAME_HDR+0x71f8>
    2316:	4705                	li	a4,1
    2318:	4394                	lw	a3,0(a5)
    231a:	fee69fe3          	bne	a3,a4,2318 <qspi_wait+0x16>
    231e:	8082                	ret

Disassembly of section .text.qspi_read_array:

00002320 <qspi_read_array>:
    2320:	058d                	addi	a1,a1,3
    2322:	6729                	lui	a4,0xa
    2324:	99f1                	andi	a1,a1,-4
    2326:	4781                	li	a5,0
    2328:	0721                	addi	a4,a4,8 # a008 <__GNU_EH_FRAME_HDR+0x71d8>
    232a:	00b79363          	bne	a5,a1,2330 <qspi_read_array+0x10>
    232e:	8082                	ret
    2330:	00e786b3          	add	a3,a5,a4
    2334:	4290                	lw	a2,0(a3)
    2336:	00f506b3          	add	a3,a0,a5
    233a:	0791                	addi	a5,a5,4
    233c:	c290                	sw	a2,0(a3)
    233e:	b7f5                	j	232a <qspi_read_array+0xa>

Disassembly of section .text.qspi_write_array:

00002340 <qspi_write_array>:
    2340:	058d                	addi	a1,a1,3
    2342:	6729                	lui	a4,0xa
    2344:	99f1                	andi	a1,a1,-4
    2346:	4781                	li	a5,0
    2348:	0721                	addi	a4,a4,8 # a008 <__GNU_EH_FRAME_HDR+0x71d8>
    234a:	00b79363          	bne	a5,a1,2350 <qspi_write_array+0x10>
    234e:	8082                	ret
    2350:	00f50633          	add	a2,a0,a5
    2354:	4210                	lw	a2,0(a2)
    2356:	00e786b3          	add	a3,a5,a4
    235a:	0791                	addi	a5,a5,4
    235c:	c290                	sw	a2,0(a3)
    235e:	b7f5                	j	234a <qspi_write_array+0xa>

Disassembly of section .text.s25fl128s_wren:

00002360 <s25fl128s_wren>:
    2360:	800007b7          	lui	a5,0x80000
    2364:	0799                	addi	a5,a5,6 # 80000006 <__GNU_EH_FRAME_HDR+0x7fffd1d6>
    2366:	6729                	lui	a4,0xa
    2368:	c31c                	sw	a5,0(a4)
    236a:	bf61                	j	2302 <qspi_wait>

Disassembly of section .text.s25fl128s_wrdi:

0000236c <s25fl128s_wrdi>:
    236c:	800007b7          	lui	a5,0x80000
    2370:	0791                	addi	a5,a5,4 # 80000004 <__GNU_EH_FRAME_HDR+0x7fffd1d4>
    2372:	6729                	lui	a4,0xa
    2374:	c31c                	sw	a5,0(a4)
    2376:	b771                	j	2302 <qspi_wait>

Disassembly of section .text.s25fl128s_clsr:

00002378 <s25fl128s_clsr>:
    2378:	800007b7          	lui	a5,0x80000
    237c:	03078793          	addi	a5,a5,48 # 80000030 <__GNU_EH_FRAME_HDR+0x7fffd200>
    2380:	6729                	lui	a4,0xa
    2382:	c31c                	sw	a5,0(a4)
    2384:	bfbd                	j	2302 <qspi_wait>

Disassembly of section .text.s25fl128s_reset:

00002386 <s25fl128s_reset>:
    2386:	800007b7          	lui	a5,0x80000
    238a:	0f078793          	addi	a5,a5,240 # 800000f0 <__GNU_EH_FRAME_HDR+0x7fffd2c0>
    238e:	6729                	lui	a4,0xa
    2390:	c31c                	sw	a5,0(a4)
    2392:	bf85                	j	2302 <qspi_wait>

Disassembly of section .text.s25fl128s_rdid:

00002394 <s25fl128s_rdid>:
    2394:	fff58793          	addi	a5,a1,-1
    2398:	80000737          	lui	a4,0x80000
    239c:	1101                	addi	sp,sp,-32
    239e:	19f70713          	addi	a4,a4,415 # 8000019f <__GNU_EH_FRAME_HDR+0x7fffd36f>
    23a2:	07c2                	slli	a5,a5,0x10
    23a4:	ce06                	sw	ra,28(sp)
    23a6:	c62a                	sw	a0,12(sp)
    23a8:	c42e                	sw	a1,8(sp)
    23aa:	97ba                	add	a5,a5,a4
    23ac:	6729                	lui	a4,0xa
    23ae:	c31c                	sw	a5,0(a4)
    23b0:	3f89                	jal	2302 <qspi_wait>
    23b2:	45a2                	lw	a1,8(sp)
    23b4:	4532                	lw	a0,12(sp)
    23b6:	40f2                	lw	ra,28(sp)
    23b8:	6105                	addi	sp,sp,32
    23ba:	b79d                	j	2320 <qspi_read_array>

Disassembly of section .text.s25fl128s_rdsr1:

000023bc <s25fl128s_rdsr1>:
    23bc:	1141                	addi	sp,sp,-16
    23be:	800007b7          	lui	a5,0x80000
    23c2:	c606                	sw	ra,12(sp)
    23c4:	10578793          	addi	a5,a5,261 # 80000105 <__GNU_EH_FRAME_HDR+0x7fffd2d5>
    23c8:	6729                	lui	a4,0xa
    23ca:	c31c                	sw	a5,0(a4)
    23cc:	3f1d                	jal	2302 <qspi_wait>
    23ce:	67a9                	lui	a5,0xa
    23d0:	4788                	lw	a0,8(a5)
    23d2:	40b2                	lw	ra,12(sp)
    23d4:	0ff57513          	zext.b	a0,a0
    23d8:	0141                	addi	sp,sp,16
    23da:	8082                	ret

Disassembly of section .text.s25fl128s_rdsr2:

000023dc <s25fl128s_rdsr2>:
    23dc:	1141                	addi	sp,sp,-16
    23de:	800007b7          	lui	a5,0x80000
    23e2:	c606                	sw	ra,12(sp)
    23e4:	10778793          	addi	a5,a5,263 # 80000107 <__GNU_EH_FRAME_HDR+0x7fffd2d7>
    23e8:	6729                	lui	a4,0xa
    23ea:	c31c                	sw	a5,0(a4)
    23ec:	3f19                	jal	2302 <qspi_wait>
    23ee:	67a9                	lui	a5,0xa
    23f0:	4788                	lw	a0,8(a5)
    23f2:	40b2                	lw	ra,12(sp)
    23f4:	0ff57513          	zext.b	a0,a0
    23f8:	0141                	addi	sp,sp,16
    23fa:	8082                	ret

Disassembly of section .text.s25fl128s_rdcr:

000023fc <s25fl128s_rdcr>:
    23fc:	1141                	addi	sp,sp,-16
    23fe:	800007b7          	lui	a5,0x80000
    2402:	c606                	sw	ra,12(sp)
    2404:	13578793          	addi	a5,a5,309 # 80000135 <__GNU_EH_FRAME_HDR+0x7fffd305>
    2408:	6729                	lui	a4,0xa
    240a:	c31c                	sw	a5,0(a4)
    240c:	3ddd                	jal	2302 <qspi_wait>
    240e:	67a9                	lui	a5,0xa
    2410:	4788                	lw	a0,8(a5)
    2412:	40b2                	lw	ra,12(sp)
    2414:	0ff57513          	zext.b	a0,a0
    2418:	0141                	addi	sp,sp,16
    241a:	8082                	ret

Disassembly of section .text.s25fl128s_read_id:

0000241c <s25fl128s_read_id>:
    241c:	1141                	addi	sp,sp,-16
    241e:	c606                	sw	ra,12(sp)
    2420:	67a9                	lui	a5,0xa
    2422:	c3c8                	sw	a0,4(a5)
    2424:	800127b7          	lui	a5,0x80012
    2428:	99078793          	addi	a5,a5,-1648 # 80011990 <__GNU_EH_FRAME_HDR+0x8000eb60>
    242c:	6729                	lui	a4,0xa
    242e:	c31c                	sw	a5,0(a4)
    2430:	3dc9                	jal	2302 <qspi_wait>
    2432:	67a9                	lui	a5,0xa
    2434:	4788                	lw	a0,8(a5)
    2436:	40b2                	lw	ra,12(sp)
    2438:	0542                	slli	a0,a0,0x10
    243a:	8141                	srli	a0,a0,0x10
    243c:	0141                	addi	sp,sp,16
    243e:	8082                	ret

Disassembly of section .text.s25fl128s_res:

00002440 <s25fl128s_res>:
    2440:	1141                	addi	sp,sp,-16
    2442:	800027b7          	lui	a5,0x80002
    2446:	c606                	sw	ra,12(sp)
    2448:	9ab78793          	addi	a5,a5,-1621 # 800019ab <__GNU_EH_FRAME_HDR+0x7fffeb7b>
    244c:	6729                	lui	a4,0xa
    244e:	c31c                	sw	a5,0(a4)
    2450:	3d4d                	jal	2302 <qspi_wait>
    2452:	67a9                	lui	a5,0xa
    2454:	4788                	lw	a0,8(a5)
    2456:	40b2                	lw	ra,12(sp)
    2458:	0ff57513          	zext.b	a0,a0
    245c:	0141                	addi	sp,sp,16
    245e:	8082                	ret

Disassembly of section .text.s25fl128s_wrr:

00002460 <s25fl128s_wrr>:
    2460:	67a9                	lui	a5,0xa
    2462:	c788                	sw	a0,8(a5)
    2464:	800107b7          	lui	a5,0x80010
    2468:	50178793          	addi	a5,a5,1281 # 80010501 <__GNU_EH_FRAME_HDR+0x8000d6d1>
    246c:	6729                	lui	a4,0xa
    246e:	c31c                	sw	a5,0(a4)
    2470:	bd49                	j	2302 <qspi_wait>

Disassembly of section .text.s25fl128s_read:

00002472 <s25fl128s_read>:
    2472:	fff60793          	addi	a5,a2,-1
    2476:	80002737          	lui	a4,0x80002
    247a:	1141                	addi	sp,sp,-16
    247c:	90370713          	addi	a4,a4,-1789 # 80001903 <__GNU_EH_FRAME_HDR+0x7fffead3>
    2480:	07c2                	slli	a5,a5,0x10
    2482:	c422                	sw	s0,8(sp)
    2484:	c226                	sw	s1,4(sp)
    2486:	c606                	sw	ra,12(sp)
    2488:	97ba                	add	a5,a5,a4
    248a:	6729                	lui	a4,0xa
    248c:	c348                	sw	a0,4(a4)
    248e:	6729                	lui	a4,0xa
    2490:	c31c                	sw	a5,0(a4)
    2492:	84ae                	mv	s1,a1
    2494:	8432                	mv	s0,a2
    2496:	35b5                	jal	2302 <qspi_wait>
    2498:	85a2                	mv	a1,s0
    249a:	4422                	lw	s0,8(sp)
    249c:	40b2                	lw	ra,12(sp)
    249e:	8526                	mv	a0,s1
    24a0:	4492                	lw	s1,4(sp)
    24a2:	0141                	addi	sp,sp,16
    24a4:	bdb5                	j	2320 <qspi_read_array>

Disassembly of section .text.s25fl128s_pp:

000024a6 <s25fl128s_pp>:
    24a6:	1141                	addi	sp,sp,-16
    24a8:	c422                	sw	s0,8(sp)
    24aa:	800027b7          	lui	a5,0x80002
    24ae:	fff60413          	addi	s0,a2,-1
    24b2:	d0278793          	addi	a5,a5,-766 # 80001d02 <__GNU_EH_FRAME_HDR+0x7fffeed2>
    24b6:	0442                	slli	s0,s0,0x10
    24b8:	c606                	sw	ra,12(sp)
    24ba:	872a                	mv	a4,a0
    24bc:	943e                	add	s0,s0,a5
    24be:	67a9                	lui	a5,0xa
    24c0:	852e                	mv	a0,a1
    24c2:	c3d8                	sw	a4,4(a5)
    24c4:	85b2                	mv	a1,a2
    24c6:	3dad                	jal	2340 <qspi_write_array>
    24c8:	67a9                	lui	a5,0xa
    24ca:	c380                	sw	s0,0(a5)
    24cc:	4422                	lw	s0,8(sp)
    24ce:	40b2                	lw	ra,12(sp)
    24d0:	0141                	addi	sp,sp,16
    24d2:	bd05                	j	2302 <qspi_wait>

Disassembly of section .text.s25fl128s_se:

000024d4 <s25fl128s_se>:
    24d4:	67a9                	lui	a5,0xa
    24d6:	c788                	sw	a0,8(a5)
    24d8:	800207b7          	lui	a5,0x80020
    24dc:	5d878793          	addi	a5,a5,1496 # 800205d8 <__GNU_EH_FRAME_HDR+0x8001d7a8>
    24e0:	6729                	lui	a4,0xa
    24e2:	c31c                	sw	a5,0(a4)
    24e4:	bd39                	j	2302 <qspi_wait>

Disassembly of section .text.s25fl128s_dor:

000024e6 <s25fl128s_dor>:
    24e6:	fff60793          	addi	a5,a2,-1
    24ea:	80002737          	lui	a4,0x80002
    24ee:	1141                	addi	sp,sp,-16
    24f0:	23b70713          	addi	a4,a4,571 # 8000223b <__GNU_EH_FRAME_HDR+0x7ffff40b>
    24f4:	07c2                	slli	a5,a5,0x10
    24f6:	c422                	sw	s0,8(sp)
    24f8:	c226                	sw	s1,4(sp)
    24fa:	c606                	sw	ra,12(sp)
    24fc:	97ba                	add	a5,a5,a4
    24fe:	6729                	lui	a4,0xa
    2500:	c348                	sw	a0,4(a4)
    2502:	6729                	lui	a4,0xa
    2504:	c31c                	sw	a5,0(a4)
    2506:	84ae                	mv	s1,a1
    2508:	8432                	mv	s0,a2
    250a:	3be5                	jal	2302 <qspi_wait>
    250c:	85a2                	mv	a1,s0
    250e:	4422                	lw	s0,8(sp)
    2510:	40b2                	lw	ra,12(sp)
    2512:	8526                	mv	a0,s1
    2514:	4492                	lw	s1,4(sp)
    2516:	0141                	addi	sp,sp,16
    2518:	b521                	j	2320 <qspi_read_array>

Disassembly of section .text.s25fl128s_qor:

0000251a <s25fl128s_qor>:
    251a:	fff60793          	addi	a5,a2,-1
    251e:	80002737          	lui	a4,0x80002
    2522:	1141                	addi	sp,sp,-16
    2524:	36b70713          	addi	a4,a4,875 # 8000236b <__GNU_EH_FRAME_HDR+0x7ffff53b>
    2528:	07c2                	slli	a5,a5,0x10
    252a:	c422                	sw	s0,8(sp)
    252c:	c226                	sw	s1,4(sp)
    252e:	c606                	sw	ra,12(sp)
    2530:	97ba                	add	a5,a5,a4
    2532:	6729                	lui	a4,0xa
    2534:	c348                	sw	a0,4(a4)
    2536:	6729                	lui	a4,0xa
    2538:	c31c                	sw	a5,0(a4)
    253a:	84ae                	mv	s1,a1
    253c:	8432                	mv	s0,a2
    253e:	33d1                	jal	2302 <qspi_wait>
    2540:	85a2                	mv	a1,s0
    2542:	4422                	lw	s0,8(sp)
    2544:	40b2                	lw	ra,12(sp)
    2546:	8526                	mv	a0,s1
    2548:	4492                	lw	s1,4(sp)
    254a:	0141                	addi	sp,sp,16
    254c:	bbd1                	j	2320 <qspi_read_array>

Disassembly of section .text.s25fl128s_qpp:

0000254e <s25fl128s_qpp>:
    254e:	fff60793          	addi	a5,a2,-1
    2552:	80002737          	lui	a4,0x80002
    2556:	1141                	addi	sp,sp,-16
    2558:	f3270713          	addi	a4,a4,-206 # 80001f32 <__GNU_EH_FRAME_HDR+0x7ffff102>
    255c:	07c2                	slli	a5,a5,0x10
    255e:	c606                	sw	ra,12(sp)
    2560:	86aa                	mv	a3,a0
    2562:	97ba                	add	a5,a5,a4
    2564:	6729                	lui	a4,0xa
    2566:	c354                	sw	a3,4(a4)
    2568:	6729                	lui	a4,0xa
    256a:	852e                	mv	a0,a1
    256c:	c31c                	sw	a5,0(a4)
    256e:	85b2                	mv	a1,a2
    2570:	3bc1                	jal	2340 <qspi_write_array>
    2572:	40b2                	lw	ra,12(sp)
    2574:	0141                	addi	sp,sp,16
    2576:	b371                	j	2302 <qspi_wait>

Disassembly of section .text.qspi_custom_write:

00002578 <qspi_custom_write>:
    2578:	88aa                	mv	a7,a0
    257a:	852e                	mv	a0,a1
    257c:	85be                	mv	a1,a5
    257e:	800007b7          	lui	a5,0x80000
    2582:	40078793          	addi	a5,a5,1024 # 80000400 <__GNU_EH_FRAME_HDR+0x7fffd5d0>
    2586:	0866                	slli	a6,a6,0x19
    2588:	983e                	add	a6,a6,a5
    258a:	072e                	slli	a4,a4,0xb
    258c:	fff58793          	addi	a5,a1,-1
    2590:	1141                	addi	sp,sp,-16
    2592:	983a                	add	a6,a6,a4
    2594:	07c2                	slli	a5,a5,0x10
    2596:	c422                	sw	s0,8(sp)
    2598:	c606                	sw	ra,12(sp)
    259a:	983e                	add	a6,a6,a5
    259c:	06a2                	slli	a3,a3,0x8
    259e:	67a9                	lui	a5,0xa
    25a0:	0ff67613          	zext.b	a2,a2
    25a4:	9836                	add	a6,a6,a3
    25a6:	0117a223          	sw	a7,4(a5) # a004 <__GNU_EH_FRAME_HDR+0x71d4>
    25aa:	00c80433          	add	s0,a6,a2
    25ae:	3b49                	jal	2340 <qspi_write_array>
    25b0:	67a9                	lui	a5,0xa
    25b2:	c380                	sw	s0,0(a5)
    25b4:	4422                	lw	s0,8(sp)
    25b6:	40b2                	lw	ra,12(sp)
    25b8:	0141                	addi	sp,sp,16
    25ba:	b3a1                	j	2302 <qspi_wait>

Disassembly of section .text.qspi_custom_read:

000025bc <qspi_custom_read>:
    25bc:	1141                	addi	sp,sp,-16
    25be:	c422                	sw	s0,8(sp)
    25c0:	0866                	slli	a6,a6,0x19
    25c2:	843e                	mv	s0,a5
    25c4:	800007b7          	lui	a5,0x80000
    25c8:	983e                	add	a6,a6,a5
    25ca:	072e                	slli	a4,a4,0xb
    25cc:	fff40793          	addi	a5,s0,-1
    25d0:	983a                	add	a6,a6,a4
    25d2:	07c2                	slli	a5,a5,0x10
    25d4:	983e                	add	a6,a6,a5
    25d6:	06a2                	slli	a3,a3,0x8
    25d8:	c226                	sw	s1,4(sp)
    25da:	c606                	sw	ra,12(sp)
    25dc:	0ff67613          	zext.b	a2,a2
    25e0:	9836                	add	a6,a6,a3
    25e2:	67a9                	lui	a5,0xa
    25e4:	c3c8                	sw	a0,4(a5)
    25e6:	9832                	add	a6,a6,a2
    25e8:	67a9                	lui	a5,0xa
    25ea:	0107a023          	sw	a6,0(a5) # a000 <__GNU_EH_FRAME_HDR+0x71d0>
    25ee:	84ae                	mv	s1,a1
    25f0:	3b09                	jal	2302 <qspi_wait>
    25f2:	85a2                	mv	a1,s0
    25f4:	4422                	lw	s0,8(sp)
    25f6:	40b2                	lw	ra,12(sp)
    25f8:	8526                	mv	a0,s1
    25fa:	4492                	lw	s1,4(sp)
    25fc:	0141                	addi	sp,sp,16
    25fe:	b30d                	j	2320 <qspi_read_array>

Disassembly of section .text.timer_counter:

00002600 <timer_counter>:
    2600:	67b1                	lui	a5,0xc
    2602:	4bc8                	lw	a0,20(a5)
    2604:	8082                	ret

Disassembly of section .text.timer_event:

00002606 <timer_event>:
    2606:	67b1                	lui	a5,0xc
    2608:	4f88                	lw	a0,24(a5)
    260a:	8082                	ret

Disassembly of section .text.timer_clear:

0000260c <timer_clear>:
    260c:	67b1                	lui	a5,0xc
    260e:	4705                	li	a4,1
    2610:	c798                	sw	a4,8(a5)
    2612:	67b1                	lui	a5,0xc
    2614:	cfd8                	sw	a4,28(a5)
    2616:	8082                	ret

Disassembly of section .text.timer_enabled:

00002618 <timer_enabled>:
    2618:	67b1                	lui	a5,0xc
    261a:	c7c8                	sw	a0,12(a5)
    261c:	8082                	ret

Disassembly of section .text.timer_conf:

0000261e <timer_conf>:
    261e:	1141                	addi	sp,sp,-16
    2620:	c606                	sw	ra,12(sp)
    2622:	67b1                	lui	a5,0xc
    2624:	c388                	sw	a0,0(a5)
    2626:	c3cc                	sw	a1,4(a5)
    2628:	67b1                	lui	a5,0xc
    262a:	cb90                	sw	a2,16(a5)
    262c:	08000613          	li	a2,128
    2630:	30046073          	csrsi	mstatus,8
    2634:	30462073          	csrs	mie,a2
    2638:	3fd1                	jal	260c <timer_clear>
    263a:	40b2                	lw	ra,12(sp)
    263c:	67b1                	lui	a5,0xc
    263e:	4705                	li	a4,1
    2640:	c7d8                	sw	a4,12(a5)
    2642:	0141                	addi	sp,sp,16
    2644:	8082                	ret

Disassembly of section .text.usb_connected:

00002646 <usb_connected>:
    2646:	67b9                	lui	a5,0xe
    2648:	47c8                	lw	a0,12(a5)
    264a:	8905                	andi	a0,a0,1
    264c:	8082                	ret

Disassembly of section .text.usb_conf:

0000264e <usb_conf>:
    264e:	67b9                	lui	a5,0xe
    2650:	6739                	lui	a4,0xe
    2652:	c388                	sw	a0,0(a5)
    2654:	0731                	addi	a4,a4,12 # e00c <__GNU_EH_FRAME_HDR+0xb1dc>
    2656:	431c                	lw	a5,0(a4)
    2658:	8b85                	andi	a5,a5,1
    265a:	dff5                	beqz	a5,2656 <usb_conf+0x8>
    265c:	8082                	ret

Disassembly of section .text.usb_rw:

0000265e <usb_rw>:
    265e:	67b9                	lui	a5,0xe
    2660:	c788                	sw	a0,8(a5)
    2662:	67b9                	lui	a5,0xe
    2664:	07b1                	addi	a5,a5,12 # e00c <__GNU_EH_FRAME_HDR+0xb1dc>
    2666:	4709                	li	a4,2
    2668:	4394                	lw	a3,0(a5)
    266a:	fee68fe3          	beq	a3,a4,2668 <usb_rw+0xa>
    266e:	c398                	sw	a4,0(a5)
    2670:	67b9                	lui	a5,0xe
    2672:	43c8                	lw	a0,4(a5)
    2674:	8082                	ret

Disassembly of section .text.gpio_write:

00002676 <gpio_write>:
    2676:	67c1                	lui	a5,0x10
    2678:	c3c8                	sw	a0,4(a5)
    267a:	8082                	ret

Disassembly of section .text.gpio_read:

0000267c <gpio_read>:
    267c:	67c1                	lui	a5,0x10
    267e:	4388                	lw	a0,0(a5)
    2680:	0542                	slli	a0,a0,0x10
    2682:	8141                	srli	a0,a0,0x10
    2684:	8082                	ret

Disassembly of section .text.instr_mem_write:

00002686 <instr_mem_write>:
    2686:	050a                	slli	a0,a0,0x2
    2688:	6791                	lui	a5,0x4
    268a:	97aa                	add	a5,a5,a0
    268c:	c38c                	sw	a1,0(a5)
    268e:	8082                	ret

Disassembly of section .text.uart_main:

00002690 <uart_main>:
    2690:	1141                	addi	sp,sp,-16
    2692:	6789                	lui	a5,0x2
    2694:	c422                	sw	s0,8(sp)
    2696:	c226                	sw	s1,4(sp)
    2698:	c606                	sw	ra,12(sp)
    269a:	86978793          	addi	a5,a5,-1943 # 1869 <timer_tmp+0x177d>
    269e:	6719                	lui	a4,0x6
    26a0:	c31c                	sw	a5,0(a4)
    26a2:	6441                	lui	s0,0x10
    26a4:	6799                	lui	a5,0x6
    26a6:	0007a223          	sw	zero,4(a5) # 6004 <__GNU_EH_FRAME_HDR+0x31d4>
    26aa:	64c1                	lui	s1,0x10
    26ac:	0411                	addi	s0,s0,4 # 10004 <__GNU_EH_FRAME_HDR+0xd1d4>
    26ae:	4088                	lw	a0,0(s1)
    26b0:	00157793          	andi	a5,a0,1
    26b4:	c791                	beqz	a5,26c0 <uart_main+0x30>
    26b6:	8521                	srai	a0,a0,0x8
    26b8:	0ff57513          	zext.b	a0,a0
    26bc:	36fd                	jal	22aa <uart_write>
    26be:	bfc5                	j	26ae <uart_main+0x1e>
    26c0:	3ec1                	jal	2290 <uart_read>
    26c2:	c008                	sw	a0,0(s0)
    26c4:	b7ed                	j	26ae <uart_main+0x1e>

Disassembly of section .text.uart_interrupt:

000026c6 <uart_interrupt>:
    26c6:	8082                	ret

Disassembly of section .text.i2c_main:

000026c8 <i2c_main>:
    26c8:	1141                	addi	sp,sp,-16
    26ca:	c422                	sw	s0,8(sp)
    26cc:	c226                	sw	s1,4(sp)
    26ce:	c04a                	sw	s2,0(sp)
    26d0:	c606                	sw	ra,12(sp)
    26d2:	67a1                	lui	a5,0x8
    26d4:	07b00713          	li	a4,123
    26d8:	6941                	lui	s2,0x10
    26da:	6441                	lui	s0,0x10
    26dc:	c3d8                	sw	a4,4(a5)
    26de:	fff90493          	addi	s1,s2,-1 # ffff <__GNU_EH_FRAME_HDR+0xd1cf>
    26e2:	0411                	addi	s0,s0,4 # 10004 <__GNU_EH_FRAME_HDR+0xd1d4>
    26e4:	00092503          	lw	a0,0(s2)
    26e8:	4589                	li	a1,2
    26ea:	8d65                	and	a0,a0,s1
    26ec:	3ef9                	jal	22ca <i2c_write>
    26ee:	4509                	li	a0,2
    26f0:	3edd                	jal	22e6 <i2c_read>
    26f2:	8d65                	and	a0,a0,s1
    26f4:	c008                	sw	a0,0(s0)
    26f6:	b7fd                	j	26e4 <i2c_main+0x1c>

Disassembly of section .text.i2c_interrupt:

000026f8 <i2c_interrupt>:
    26f8:	8082                	ret

Disassembly of section .text.qspi_main:

000026fa <qspi_main>:
    26fa:	8082                	ret

Disassembly of section .text.qspi_interrupt:

000026fc <qspi_interrupt>:
    26fc:	8082                	ret

Disassembly of section .text.timer_main:

000026fe <timer_main>:
    26fe:	1101                	addi	sp,sp,-32
    2700:	cc22                	sw	s0,24(sp)
    2702:	ca26                	sw	s1,20(sp)
    2704:	c84a                	sw	s2,16(sp)
    2706:	c452                	sw	s4,8(sp)
    2708:	4605                	li	a2,1
    270a:	4581                	li	a1,0
    270c:	557d                	li	a0,-1
    270e:	6a41                	lui	s4,0x10
    2710:	64b1                	lui	s1,0xc
    2712:	6931                	lui	s2,0xc
    2714:	6431                	lui	s0,0xc
    2716:	c64e                	sw	s3,12(sp)
    2718:	c256                	sw	s5,4(sp)
    271a:	c05a                	sw	s6,0(sp)
    271c:	ce06                	sw	ra,28(sp)
    271e:	3701                	jal	261e <timer_conf>
    2720:	fffa0b13          	addi	s6,s4,-1 # ffff <__GNU_EH_FRAME_HDR+0xd1cf>
    2724:	04e1                	addi	s1,s1,24 # c018 <__GNU_EH_FRAME_HDR+0x91e8>
    2726:	0951                	addi	s2,s2,20 # c014 <__GNU_EH_FRAME_HDR+0x91e4>
    2728:	0431                	addi	s0,s0,12 # c00c <__GNU_EH_FRAME_HDR+0x91dc>
    272a:	000a2783          	lw	a5,0(s4)
    272e:	0167f733          	and	a4,a5,s6
    2732:	0ee02423          	sw	a4,232(zero) # e8 <timer_tmp2>
    2736:	0017f713          	andi	a4,a5,1
    273a:	cb19                	beqz	a4,2750 <timer_main+0x52>
    273c:	00092783          	lw	a5,0(s2)
    2740:	0ef02623          	sw	a5,236(zero) # ec <timer_tmp>
    2744:	0e802783          	lw	a5,232(zero) # e8 <timer_tmp2>
    2748:	878d                	srai	a5,a5,0x3
    274a:	8b85                	andi	a5,a5,1
    274c:	c01c                	sw	a5,0(s0)
    274e:	bff1                	j	272a <timer_main+0x2c>
    2750:	0027f713          	andi	a4,a5,2
    2754:	c319                	beqz	a4,275a <timer_main+0x5c>
    2756:	409c                	lw	a5,0(s1)
    2758:	b7e5                	j	2740 <timer_main+0x42>
    275a:	8b91                	andi	a5,a5,4
    275c:	d7e5                	beqz	a5,2744 <timer_main+0x46>
    275e:	357d                	jal	260c <timer_clear>
    2760:	b7d5                	j	2744 <timer_main+0x46>

Disassembly of section .text.timer_interrupt:

00002762 <timer_interrupt>:
    2762:	0ec05703          	lhu	a4,236(zero) # ec <timer_tmp>
    2766:	67c1                	lui	a5,0x10
    2768:	c3d8                	sw	a4,4(a5)
    276a:	8082                	ret

Disassembly of section .text.gpio_main:

0000276c <gpio_main>:
    276c:	66c1                	lui	a3,0x10
    276e:	67c1                	lui	a5,0x10
    2770:	fff68613          	addi	a2,a3,-1 # ffff <__GNU_EH_FRAME_HDR+0xd1cf>
    2774:	0791                	addi	a5,a5,4 # 10004 <__GNU_EH_FRAME_HDR+0xd1d4>
    2776:	4298                	lw	a4,0(a3)
    2778:	8f71                	and	a4,a4,a2
    277a:	c398                	sw	a4,0(a5)
    277c:	bfed                	j	2776 <gpio_main+0xa>

Disassembly of section .text.gpio_interrupt:

0000277e <gpio_interrupt>:
    277e:	8082                	ret

Disassembly of section .text.usb_main:

00002780 <usb_main>:
    2780:	7139                	addi	sp,sp,-64
    2782:	d84a                	sw	s2,48(sp)
    2784:	d64e                	sw	s3,44(sp)
    2786:	4605                	li	a2,1
    2788:	4581                	li	a1,0
    278a:	557d                	li	a0,-1
    278c:	6939                	lui	s2,0xe
    278e:	69c1                	lui	s3,0x10
    2790:	dc22                	sw	s0,56(sp)
    2792:	da26                	sw	s1,52(sp)
    2794:	d452                	sw	s4,40(sp)
    2796:	d256                	sw	s5,36(sp)
    2798:	d05a                	sw	s6,32(sp)
    279a:	ce5e                	sw	s7,28(sp)
    279c:	de06                	sw	ra,60(sp)
    279e:	cc62                	sw	s8,24(sp)
    27a0:	ca66                	sw	s9,20(sp)
    27a2:	c86a                	sw	s10,16(sp)
    27a4:	c66e                	sw	s11,12(sp)
    27a6:	6ac1                	lui	s5,0x10
    27a8:	3d9d                	jal	261e <timer_conf>
    27aa:	0931                	addi	s2,s2,12 # e00c <__GNU_EH_FRAME_HDR+0xb1dc>
    27ac:	0991                	addi	s3,s3,4 # 10004 <__GNU_EH_FRAME_HDR+0xd1d4>
    27ae:	4b91                	li	s7,4
    27b0:	000aa783          	lw	a5,0(s5) # 10000 <__GNU_EH_FRAME_HDR+0xd1d0>
    27b4:	0c002e23          	sw	zero,220(zero) # dc <usb_state>
    27b8:	0ff7f793          	zext.b	a5,a5
    27bc:	0ef02223          	sw	a5,228(zero) # e4 <usb_tmp>
    27c0:	e381                	bnez	a5,27c0 <usb_main+0x40>
    27c2:	0d802783          	lw	a5,216(zero) # d8 <usb_old_state>
    27c6:	c399                	beqz	a5,27cc <usb_main+0x4c>
    27c8:	4501                	li	a0,0
    27ca:	3551                	jal	264e <usb_conf>
    27cc:	0dc02783          	lw	a5,220(zero) # dc <usb_state>
    27d0:	0cf02c23          	sw	a5,216(zero) # d8 <usb_old_state>
    27d4:	00092703          	lw	a4,0(s2)
    27d8:	07a2                	slli	a5,a5,0x8
    27da:	8b05                	andi	a4,a4,1
    27dc:	97ba                	add	a5,a5,a4
    27de:	07c2                	slli	a5,a5,0x10
    27e0:	83c1                	srli	a5,a5,0x10
    27e2:	00f9a023          	sw	a5,0(s3)
    27e6:	0dc02783          	lw	a5,220(zero) # dc <usb_state>
    27ea:	05778c63          	beq	a5,s7,2842 <usb_main+0xc2>
    27ee:	04fbe163          	bltu	s7,a5,2830 <usb_main+0xb0>
    27f2:	4705                	li	a4,1
    27f4:	04e78163          	beq	a5,a4,2836 <usb_main+0xb6>
    27f8:	4709                	li	a4,2
    27fa:	fae79be3          	bne	a5,a4,27b0 <usb_main+0x30>
    27fe:	4501                	li	a0,0
    2800:	3db9                	jal	265e <usb_rw>
    2802:	4c81                	li	s9,0
    2804:	14000d13          	li	s10,320
    2808:	0b400d93          	li	s11,180
    280c:	4c01                	li	s8,0
    280e:	0e002503          	lw	a0,224(zero) # e0 <usb_tmp2>
    2812:	9566                	add	a0,a0,s9
    2814:	9562                	add	a0,a0,s8
    2816:	0c05                	addi	s8,s8,1
    2818:	3599                	jal	265e <usb_rw>
    281a:	ffac1ae3          	bne	s8,s10,280e <usb_main+0x8e>
    281e:	0c85                	addi	s9,s9,1
    2820:	ffbc96e3          	bne	s9,s11,280c <usb_main+0x8c>
    2824:	0e002783          	lw	a5,224(zero) # e0 <usb_tmp2>
    2828:	0785                	addi	a5,a5,1
    282a:	0ef02023          	sw	a5,224(zero) # e0 <usb_tmp2>
    282e:	b749                	j	27b0 <usb_main+0x30>
    2830:	4715                	li	a4,5
    2832:	f6e79fe3          	bne	a5,a4,27b0 <usb_main+0x30>
    2836:	0e402503          	lw	a0,228(zero) # e4 <usb_tmp>
    283a:	3515                	jal	265e <usb_rw>
    283c:	0ea02223          	sw	a0,228(zero) # e4 <usb_tmp>
    2840:	bf85                	j	27b0 <usb_main+0x30>
    2842:	000aa783          	lw	a5,0(s5)
    2846:	07c2                	slli	a5,a5,0x10
    2848:	83c1                	srli	a5,a5,0x10
    284a:	83a1                	srli	a5,a5,0x8
    284c:	0ef02223          	sw	a5,228(zero) # e4 <usb_tmp>
    2850:	b785                	j	27b0 <usb_main+0x30>

Disassembly of section .text.usb_interrupt:

00002852 <usb_interrupt>:
    2852:	0dc02703          	lw	a4,220(zero) # dc <usb_state>
    2856:	4791                	li	a5,4
    2858:	00f71563          	bne	a4,a5,2862 <usb_interrupt+0x10>
    285c:	0e402503          	lw	a0,228(zero) # e4 <usb_tmp>
    2860:	bbfd                	j	265e <usb_rw>
    2862:	8082                	ret
