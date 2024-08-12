
a.out:     file format elf32-littleriscv


Disassembly of section .text:

00002000 <main>:
    2000:	04402703          	lw	a4,68(zero) # 44 <main_gpio_val>
    2004:	67c1                	lui	a5,0x10
    2006:	4581                	li	a1,0
    2008:	0742                	slli	a4,a4,0x10
    200a:	8341                	srli	a4,a4,0x10
    200c:	c3d8                	sw	a4,4(a5)
    200e:	4605                	li	a2,1
    2010:	557d                	li	a0,-1
    2012:	252d                	jal	263c <timer_conf>
    2014:	65c1                	lui	a1,0x10
    2016:	46a1                	li	a3,8
    2018:	419c                	lw	a5,0(a1)
    201a:	07c2                	slli	a5,a5,0x10
    201c:	83c1                	srli	a5,a5,0x10
    201e:	0cf01e23          	sh	a5,220(zero) # dc <main_state>
    2022:	0dc05783          	lhu	a5,220(zero) # dc <main_state>
    2026:	c799                	beqz	a5,2034 <main+0x34>
    2028:	67c1                	lui	a5,0x10
    202a:	0007a223          	sw	zero,4(a5) # 10004 <__GNU_EH_FRAME_HDR+0xd198>
    202e:	67b1                	lui	a5,0xc
    2030:	0007a623          	sw	zero,12(a5) # c00c <__GNU_EH_FRAME_HDR+0x91a0>
    2034:	0dc05603          	lhu	a2,220(zero) # dc <main_state>
    2038:	01061793          	slli	a5,a2,0x10
    203c:	83c1                	srli	a5,a5,0x10
    203e:	02d60b63          	beq	a2,a3,2074 <main+0x74>
    2042:	00f6ec63          	bltu	a3,a5,205a <main+0x5a>
    2046:	4609                	li	a2,2
    2048:	02c78563          	beq	a5,a2,2072 <main+0x72>
    204c:	4611                	li	a2,4
    204e:	02c78363          	beq	a5,a2,2074 <main+0x74>
    2052:	4605                	li	a2,1
    2054:	fcc792e3          	bne	a5,a2,2018 <main+0x18>
    2058:	2585                	jal	26b8 <uart_main>
    205a:	02000613          	li	a2,32
    205e:	00c78c63          	beq	a5,a2,2076 <main+0x76>
    2062:	04000613          	li	a2,64
    2066:	00c78963          	beq	a5,a2,2078 <main+0x78>
    206a:	4641                	li	a2,16
    206c:	fac796e3          	bne	a5,a2,2018 <main+0x18>
    2070:	2739                	jal	277e <gpio_main>
    2072:	2d95                	jal	26e6 <i2c_main>
    2074:	2d55                	jal	2728 <timer_main>
    2076:	2f31                	jal	2792 <usb_main>
    2078:	7fe000ef          	jal	2876 <data_mem_main>
	...

00002200 <interrupt>:
    2200:	7139                	addi	sp,sp,-64
    2202:	cc3e                	sw	a5,24(sp)
    2204:	d036                	sw	a3,32(sp)
    2206:	0dc05683          	lhu	a3,220(zero) # dc <main_state>
    220a:	ce3a                	sw	a4,28(sp)
    220c:	de06                	sw	ra,60(sp)
    220e:	dc16                	sw	t0,56(sp)
    2210:	da1a                	sw	t1,52(sp)
    2212:	d81e                	sw	t2,48(sp)
    2214:	d62a                	sw	a0,44(sp)
    2216:	d42e                	sw	a1,40(sp)
    2218:	d232                	sw	a2,36(sp)
    221a:	ca42                	sw	a6,20(sp)
    221c:	c846                	sw	a7,16(sp)
    221e:	c672                	sw	t3,12(sp)
    2220:	c476                	sw	t4,8(sp)
    2222:	c27a                	sw	t5,4(sp)
    2224:	c07e                	sw	t6,0(sp)
    2226:	4721                	li	a4,8
    2228:	06e68563          	beq	a3,a4,2292 <interrupt+0x92>
    222c:	01069793          	slli	a5,a3,0x10
    2230:	83c1                	srli	a5,a5,0x10
    2232:	02f76963          	bltu	a4,a5,2264 <interrupt+0x64>
    2236:	cf8d                	beqz	a5,2270 <interrupt+0x70>
    2238:	4709                	li	a4,2
    223a:	04e78863          	beq	a5,a4,228a <interrupt+0x8a>
    223e:	50f2                	lw	ra,60(sp)
    2240:	52e2                	lw	t0,56(sp)
    2242:	5352                	lw	t1,52(sp)
    2244:	53c2                	lw	t2,48(sp)
    2246:	5532                	lw	a0,44(sp)
    2248:	55a2                	lw	a1,40(sp)
    224a:	5612                	lw	a2,36(sp)
    224c:	5682                	lw	a3,32(sp)
    224e:	4772                	lw	a4,28(sp)
    2250:	47e2                	lw	a5,24(sp)
    2252:	4852                	lw	a6,20(sp)
    2254:	48c2                	lw	a7,16(sp)
    2256:	4e32                	lw	t3,12(sp)
    2258:	4ea2                	lw	t4,8(sp)
    225a:	4f12                	lw	t5,4(sp)
    225c:	4f82                	lw	t6,0(sp)
    225e:	6121                	addi	sp,sp,64
    2260:	30200073          	mret
    2264:	02000713          	li	a4,32
    2268:	fce79be3          	bne	a5,a4,223e <interrupt+0x3e>
    226c:	2be5                	jal	2864 <usb_interrupt>
    226e:	bfc1                	j	223e <interrupt+0x3e>
    2270:	04402703          	lw	a4,68(zero) # 44 <main_gpio_val>
    2274:	fff74713          	not	a4,a4
    2278:	04e02223          	sw	a4,68(zero) # 44 <main_gpio_val>
    227c:	04402703          	lw	a4,68(zero) # 44 <main_gpio_val>
    2280:	67c1                	lui	a5,0x10
    2282:	0742                	slli	a4,a4,0x10
    2284:	8341                	srli	a4,a4,0x10
    2286:	c3d8                	sw	a4,4(a5)
    2288:	bf5d                	j	223e <interrupt+0x3e>
    228a:	4705                	li	a4,1
    228c:	04e02623          	sw	a4,76(zero) # 4c <i2c_tmp>
    2290:	b77d                	j	223e <interrupt+0x3e>
    2292:	29e1                	jal	276a <timer_interrupt>
    2294:	b76d                	j	223e <interrupt+0x3e>

Disassembly of section .text.uart_conf:

00002296 <uart_conf>:
    2296:	039387b7          	lui	a5,0x3938
    229a:	70078793          	addi	a5,a5,1792 # 3938700 <__GNU_EH_FRAME_HDR+0x3935894>
    229e:	02a7d7b3          	divu	a5,a5,a0
    22a2:	6719                	lui	a4,0x6
    22a4:	17fd                	addi	a5,a5,-1
    22a6:	c31c                	sw	a5,0(a4)
    22a8:	6799                	lui	a5,0x6
    22aa:	c3cc                	sw	a1,4(a5)
    22ac:	8082                	ret

Disassembly of section .text.uart_read:

000022ae <uart_read>:
    22ae:	6799                	lui	a5,0x6
    22b0:	07c1                	addi	a5,a5,16 # 6010 <__GNU_EH_FRAME_HDR+0x31a4>
    22b2:	4709                	li	a4,2
    22b4:	4394                	lw	a3,0(a5)
    22b6:	fee69fe3          	bne	a3,a4,22b4 <uart_read+0x6>
    22ba:	6719                	lui	a4,0x6
    22bc:	4708                	lw	a0,8(a4)
    22be:	0007a023          	sw	zero,0(a5)
    22c2:	0ff57513          	zext.b	a0,a0
    22c6:	8082                	ret

Disassembly of section .text.uart_write:

000022c8 <uart_write>:
    22c8:	6799                	lui	a5,0x6
    22ca:	c7c8                	sw	a0,12(a5)
    22cc:	6799                	lui	a5,0x6
    22ce:	07c1                	addi	a5,a5,16 # 6010 <__GNU_EH_FRAME_HDR+0x31a4>
    22d0:	4705                	li	a4,1
    22d2:	c398                	sw	a4,0(a5)
    22d4:	4398                	lw	a4,0(a5)
    22d6:	8b11                	andi	a4,a4,4
    22d8:	df75                	beqz	a4,22d4 <uart_write+0xc>
    22da:	4398                	lw	a4,0(a5)
    22dc:	8b09                	andi	a4,a4,2
    22de:	c398                	sw	a4,0(a5)
    22e0:	8082                	ret

Disassembly of section .text.i2c_conf:

000022e2 <i2c_conf>:
    22e2:	67a1                	lui	a5,0x8
    22e4:	c3c8                	sw	a0,4(a5)
    22e6:	8082                	ret

Disassembly of section .text.i2c_write:

000022e8 <i2c_write>:
    22e8:	67a1                	lui	a5,0x8
    22ea:	c38c                	sw	a1,0(a5)
    22ec:	c7c8                	sw	a0,12(a5)
    22ee:	67a1                	lui	a5,0x8
    22f0:	07c1                	addi	a5,a5,16 # 8010 <__GNU_EH_FRAME_HDR+0x51a4>
    22f2:	4705                	li	a4,1
    22f4:	c398                	sw	a4,0(a5)
    22f6:	4398                	lw	a4,0(a5)
    22f8:	8b09                	andi	a4,a4,2
    22fa:	df75                	beqz	a4,22f6 <i2c_write+0xe>
    22fc:	4398                	lw	a4,0(a5)
    22fe:	8b31                	andi	a4,a4,12
    2300:	c398                	sw	a4,0(a5)
    2302:	8082                	ret

Disassembly of section .text.i2c_read:

00002304 <i2c_read>:
    2304:	67a1                	lui	a5,0x8
    2306:	c388                	sw	a0,0(a5)
    2308:	4711                	li	a4,4
    230a:	07c1                	addi	a5,a5,16 # 8010 <__GNU_EH_FRAME_HDR+0x51a4>
    230c:	c398                	sw	a4,0(a5)
    230e:	4398                	lw	a4,0(a5)
    2310:	8b21                	andi	a4,a4,8
    2312:	df75                	beqz	a4,230e <i2c_read+0xa>
    2314:	4398                	lw	a4,0(a5)
    2316:	8b0d                	andi	a4,a4,3
    2318:	c398                	sw	a4,0(a5)
    231a:	67a1                	lui	a5,0x8
    231c:	4788                	lw	a0,8(a5)
    231e:	8082                	ret

Disassembly of section .text.qspi_wait:

00002320 <qspi_wait>:
    2320:	67a9                	lui	a5,0xa
    2322:	02878793          	addi	a5,a5,40 # a028 <__GNU_EH_FRAME_HDR+0x71bc>
    2326:	4705                	li	a4,1
    2328:	4394                	lw	a3,0(a5)
    232a:	fee69fe3          	bne	a3,a4,2328 <qspi_wait+0x8>
    232e:	67a9                	lui	a5,0xa
    2330:	02878793          	addi	a5,a5,40 # a028 <__GNU_EH_FRAME_HDR+0x71bc>
    2334:	4705                	li	a4,1
    2336:	4394                	lw	a3,0(a5)
    2338:	fee69fe3          	bne	a3,a4,2336 <qspi_wait+0x16>
    233c:	8082                	ret

Disassembly of section .text.qspi_read_array:

0000233e <qspi_read_array>:
    233e:	058d                	addi	a1,a1,3 # 10003 <__GNU_EH_FRAME_HDR+0xd197>
    2340:	6729                	lui	a4,0xa
    2342:	99f1                	andi	a1,a1,-4
    2344:	4781                	li	a5,0
    2346:	0721                	addi	a4,a4,8 # a008 <__GNU_EH_FRAME_HDR+0x719c>
    2348:	00b79363          	bne	a5,a1,234e <qspi_read_array+0x10>
    234c:	8082                	ret
    234e:	00e786b3          	add	a3,a5,a4
    2352:	4290                	lw	a2,0(a3)
    2354:	00f506b3          	add	a3,a0,a5
    2358:	0791                	addi	a5,a5,4
    235a:	c290                	sw	a2,0(a3)
    235c:	b7f5                	j	2348 <qspi_read_array+0xa>

Disassembly of section .text.qspi_write_array:

0000235e <qspi_write_array>:
    235e:	058d                	addi	a1,a1,3
    2360:	6729                	lui	a4,0xa
    2362:	99f1                	andi	a1,a1,-4
    2364:	4781                	li	a5,0
    2366:	0721                	addi	a4,a4,8 # a008 <__GNU_EH_FRAME_HDR+0x719c>
    2368:	00b79363          	bne	a5,a1,236e <qspi_write_array+0x10>
    236c:	8082                	ret
    236e:	00f50633          	add	a2,a0,a5
    2372:	4210                	lw	a2,0(a2)
    2374:	00e786b3          	add	a3,a5,a4
    2378:	0791                	addi	a5,a5,4
    237a:	c290                	sw	a2,0(a3)
    237c:	b7f5                	j	2368 <qspi_write_array+0xa>

Disassembly of section .text.s25fl128s_wren:

0000237e <s25fl128s_wren>:
    237e:	800007b7          	lui	a5,0x80000
    2382:	0799                	addi	a5,a5,6 # 80000006 <__GNU_EH_FRAME_HDR+0x7fffd19a>
    2384:	6729                	lui	a4,0xa
    2386:	c31c                	sw	a5,0(a4)
    2388:	bf61                	j	2320 <qspi_wait>

Disassembly of section .text.s25fl128s_wrdi:

0000238a <s25fl128s_wrdi>:
    238a:	800007b7          	lui	a5,0x80000
    238e:	0791                	addi	a5,a5,4 # 80000004 <__GNU_EH_FRAME_HDR+0x7fffd198>
    2390:	6729                	lui	a4,0xa
    2392:	c31c                	sw	a5,0(a4)
    2394:	b771                	j	2320 <qspi_wait>

Disassembly of section .text.s25fl128s_clsr:

00002396 <s25fl128s_clsr>:
    2396:	800007b7          	lui	a5,0x80000
    239a:	03078793          	addi	a5,a5,48 # 80000030 <__GNU_EH_FRAME_HDR+0x7fffd1c4>
    239e:	6729                	lui	a4,0xa
    23a0:	c31c                	sw	a5,0(a4)
    23a2:	bfbd                	j	2320 <qspi_wait>

Disassembly of section .text.s25fl128s_reset:

000023a4 <s25fl128s_reset>:
    23a4:	800007b7          	lui	a5,0x80000
    23a8:	0f078793          	addi	a5,a5,240 # 800000f0 <__GNU_EH_FRAME_HDR+0x7fffd284>
    23ac:	6729                	lui	a4,0xa
    23ae:	c31c                	sw	a5,0(a4)
    23b0:	bf85                	j	2320 <qspi_wait>

Disassembly of section .text.s25fl128s_rdid:

000023b2 <s25fl128s_rdid>:
    23b2:	fff58793          	addi	a5,a1,-1
    23b6:	80000737          	lui	a4,0x80000
    23ba:	1101                	addi	sp,sp,-32
    23bc:	19f70713          	addi	a4,a4,415 # 8000019f <__GNU_EH_FRAME_HDR+0x7fffd333>
    23c0:	07c2                	slli	a5,a5,0x10
    23c2:	ce06                	sw	ra,28(sp)
    23c4:	c62a                	sw	a0,12(sp)
    23c6:	c42e                	sw	a1,8(sp)
    23c8:	97ba                	add	a5,a5,a4
    23ca:	6729                	lui	a4,0xa
    23cc:	c31c                	sw	a5,0(a4)
    23ce:	3f89                	jal	2320 <qspi_wait>
    23d0:	45a2                	lw	a1,8(sp)
    23d2:	4532                	lw	a0,12(sp)
    23d4:	40f2                	lw	ra,28(sp)
    23d6:	6105                	addi	sp,sp,32
    23d8:	b79d                	j	233e <qspi_read_array>

Disassembly of section .text.s25fl128s_rdsr1:

000023da <s25fl128s_rdsr1>:
    23da:	1141                	addi	sp,sp,-16
    23dc:	800007b7          	lui	a5,0x80000
    23e0:	c606                	sw	ra,12(sp)
    23e2:	10578793          	addi	a5,a5,261 # 80000105 <__GNU_EH_FRAME_HDR+0x7fffd299>
    23e6:	6729                	lui	a4,0xa
    23e8:	c31c                	sw	a5,0(a4)
    23ea:	3f1d                	jal	2320 <qspi_wait>
    23ec:	67a9                	lui	a5,0xa
    23ee:	4788                	lw	a0,8(a5)
    23f0:	40b2                	lw	ra,12(sp)
    23f2:	0ff57513          	zext.b	a0,a0
    23f6:	0141                	addi	sp,sp,16
    23f8:	8082                	ret

Disassembly of section .text.s25fl128s_rdsr2:

000023fa <s25fl128s_rdsr2>:
    23fa:	1141                	addi	sp,sp,-16
    23fc:	800007b7          	lui	a5,0x80000
    2400:	c606                	sw	ra,12(sp)
    2402:	10778793          	addi	a5,a5,263 # 80000107 <__GNU_EH_FRAME_HDR+0x7fffd29b>
    2406:	6729                	lui	a4,0xa
    2408:	c31c                	sw	a5,0(a4)
    240a:	3f19                	jal	2320 <qspi_wait>
    240c:	67a9                	lui	a5,0xa
    240e:	4788                	lw	a0,8(a5)
    2410:	40b2                	lw	ra,12(sp)
    2412:	0ff57513          	zext.b	a0,a0
    2416:	0141                	addi	sp,sp,16
    2418:	8082                	ret

Disassembly of section .text.s25fl128s_rdcr:

0000241a <s25fl128s_rdcr>:
    241a:	1141                	addi	sp,sp,-16
    241c:	800007b7          	lui	a5,0x80000
    2420:	c606                	sw	ra,12(sp)
    2422:	13578793          	addi	a5,a5,309 # 80000135 <__GNU_EH_FRAME_HDR+0x7fffd2c9>
    2426:	6729                	lui	a4,0xa
    2428:	c31c                	sw	a5,0(a4)
    242a:	3ddd                	jal	2320 <qspi_wait>
    242c:	67a9                	lui	a5,0xa
    242e:	4788                	lw	a0,8(a5)
    2430:	40b2                	lw	ra,12(sp)
    2432:	0ff57513          	zext.b	a0,a0
    2436:	0141                	addi	sp,sp,16
    2438:	8082                	ret

Disassembly of section .text.s25fl128s_read_id:

0000243a <s25fl128s_read_id>:
    243a:	1141                	addi	sp,sp,-16
    243c:	c606                	sw	ra,12(sp)
    243e:	67a9                	lui	a5,0xa
    2440:	c3c8                	sw	a0,4(a5)
    2442:	800127b7          	lui	a5,0x80012
    2446:	99078793          	addi	a5,a5,-1648 # 80011990 <__GNU_EH_FRAME_HDR+0x8000eb24>
    244a:	6729                	lui	a4,0xa
    244c:	c31c                	sw	a5,0(a4)
    244e:	3dc9                	jal	2320 <qspi_wait>
    2450:	67a9                	lui	a5,0xa
    2452:	4788                	lw	a0,8(a5)
    2454:	40b2                	lw	ra,12(sp)
    2456:	0542                	slli	a0,a0,0x10
    2458:	8141                	srli	a0,a0,0x10
    245a:	0141                	addi	sp,sp,16
    245c:	8082                	ret

Disassembly of section .text.s25fl128s_res:

0000245e <s25fl128s_res>:
    245e:	1141                	addi	sp,sp,-16
    2460:	800027b7          	lui	a5,0x80002
    2464:	c606                	sw	ra,12(sp)
    2466:	9ab78793          	addi	a5,a5,-1621 # 800019ab <__GNU_EH_FRAME_HDR+0x7fffeb3f>
    246a:	6729                	lui	a4,0xa
    246c:	c31c                	sw	a5,0(a4)
    246e:	3d4d                	jal	2320 <qspi_wait>
    2470:	67a9                	lui	a5,0xa
    2472:	4788                	lw	a0,8(a5)
    2474:	40b2                	lw	ra,12(sp)
    2476:	0ff57513          	zext.b	a0,a0
    247a:	0141                	addi	sp,sp,16
    247c:	8082                	ret

Disassembly of section .text.s25fl128s_wrr:

0000247e <s25fl128s_wrr>:
    247e:	67a9                	lui	a5,0xa
    2480:	c788                	sw	a0,8(a5)
    2482:	800107b7          	lui	a5,0x80010
    2486:	50178793          	addi	a5,a5,1281 # 80010501 <__GNU_EH_FRAME_HDR+0x8000d695>
    248a:	6729                	lui	a4,0xa
    248c:	c31c                	sw	a5,0(a4)
    248e:	bd49                	j	2320 <qspi_wait>

Disassembly of section .text.s25fl128s_read:

00002490 <s25fl128s_read>:
    2490:	fff60793          	addi	a5,a2,-1
    2494:	80002737          	lui	a4,0x80002
    2498:	1141                	addi	sp,sp,-16
    249a:	90370713          	addi	a4,a4,-1789 # 80001903 <__GNU_EH_FRAME_HDR+0x7fffea97>
    249e:	07c2                	slli	a5,a5,0x10
    24a0:	c422                	sw	s0,8(sp)
    24a2:	c226                	sw	s1,4(sp)
    24a4:	c606                	sw	ra,12(sp)
    24a6:	97ba                	add	a5,a5,a4
    24a8:	6729                	lui	a4,0xa
    24aa:	c348                	sw	a0,4(a4)
    24ac:	6729                	lui	a4,0xa
    24ae:	c31c                	sw	a5,0(a4)
    24b0:	84ae                	mv	s1,a1
    24b2:	8432                	mv	s0,a2
    24b4:	35b5                	jal	2320 <qspi_wait>
    24b6:	85a2                	mv	a1,s0
    24b8:	4422                	lw	s0,8(sp)
    24ba:	40b2                	lw	ra,12(sp)
    24bc:	8526                	mv	a0,s1
    24be:	4492                	lw	s1,4(sp)
    24c0:	0141                	addi	sp,sp,16
    24c2:	bdb5                	j	233e <qspi_read_array>

Disassembly of section .text.s25fl128s_pp:

000024c4 <s25fl128s_pp>:
    24c4:	1141                	addi	sp,sp,-16
    24c6:	c422                	sw	s0,8(sp)
    24c8:	800027b7          	lui	a5,0x80002
    24cc:	fff60413          	addi	s0,a2,-1
    24d0:	d0278793          	addi	a5,a5,-766 # 80001d02 <__GNU_EH_FRAME_HDR+0x7fffee96>
    24d4:	0442                	slli	s0,s0,0x10
    24d6:	c606                	sw	ra,12(sp)
    24d8:	872a                	mv	a4,a0
    24da:	943e                	add	s0,s0,a5
    24dc:	67a9                	lui	a5,0xa
    24de:	852e                	mv	a0,a1
    24e0:	c3d8                	sw	a4,4(a5)
    24e2:	85b2                	mv	a1,a2
    24e4:	3dad                	jal	235e <qspi_write_array>
    24e6:	67a9                	lui	a5,0xa
    24e8:	c380                	sw	s0,0(a5)
    24ea:	4422                	lw	s0,8(sp)
    24ec:	40b2                	lw	ra,12(sp)
    24ee:	0141                	addi	sp,sp,16
    24f0:	bd05                	j	2320 <qspi_wait>

Disassembly of section .text.s25fl128s_se:

000024f2 <s25fl128s_se>:
    24f2:	67a9                	lui	a5,0xa
    24f4:	c788                	sw	a0,8(a5)
    24f6:	800207b7          	lui	a5,0x80020
    24fa:	5d878793          	addi	a5,a5,1496 # 800205d8 <__GNU_EH_FRAME_HDR+0x8001d76c>
    24fe:	6729                	lui	a4,0xa
    2500:	c31c                	sw	a5,0(a4)
    2502:	bd39                	j	2320 <qspi_wait>

Disassembly of section .text.s25fl128s_dor:

00002504 <s25fl128s_dor>:
    2504:	fff60793          	addi	a5,a2,-1
    2508:	80002737          	lui	a4,0x80002
    250c:	1141                	addi	sp,sp,-16
    250e:	23b70713          	addi	a4,a4,571 # 8000223b <__GNU_EH_FRAME_HDR+0x7ffff3cf>
    2512:	07c2                	slli	a5,a5,0x10
    2514:	c422                	sw	s0,8(sp)
    2516:	c226                	sw	s1,4(sp)
    2518:	c606                	sw	ra,12(sp)
    251a:	97ba                	add	a5,a5,a4
    251c:	6729                	lui	a4,0xa
    251e:	c348                	sw	a0,4(a4)
    2520:	6729                	lui	a4,0xa
    2522:	c31c                	sw	a5,0(a4)
    2524:	84ae                	mv	s1,a1
    2526:	8432                	mv	s0,a2
    2528:	3be5                	jal	2320 <qspi_wait>
    252a:	85a2                	mv	a1,s0
    252c:	4422                	lw	s0,8(sp)
    252e:	40b2                	lw	ra,12(sp)
    2530:	8526                	mv	a0,s1
    2532:	4492                	lw	s1,4(sp)
    2534:	0141                	addi	sp,sp,16
    2536:	b521                	j	233e <qspi_read_array>

Disassembly of section .text.s25fl128s_qor:

00002538 <s25fl128s_qor>:
    2538:	fff60793          	addi	a5,a2,-1
    253c:	80002737          	lui	a4,0x80002
    2540:	1141                	addi	sp,sp,-16
    2542:	36b70713          	addi	a4,a4,875 # 8000236b <__GNU_EH_FRAME_HDR+0x7ffff4ff>
    2546:	07c2                	slli	a5,a5,0x10
    2548:	c422                	sw	s0,8(sp)
    254a:	c226                	sw	s1,4(sp)
    254c:	c606                	sw	ra,12(sp)
    254e:	97ba                	add	a5,a5,a4
    2550:	6729                	lui	a4,0xa
    2552:	c348                	sw	a0,4(a4)
    2554:	6729                	lui	a4,0xa
    2556:	c31c                	sw	a5,0(a4)
    2558:	84ae                	mv	s1,a1
    255a:	8432                	mv	s0,a2
    255c:	33d1                	jal	2320 <qspi_wait>
    255e:	85a2                	mv	a1,s0
    2560:	4422                	lw	s0,8(sp)
    2562:	40b2                	lw	ra,12(sp)
    2564:	8526                	mv	a0,s1
    2566:	4492                	lw	s1,4(sp)
    2568:	0141                	addi	sp,sp,16
    256a:	bbd1                	j	233e <qspi_read_array>

Disassembly of section .text.s25fl128s_qpp:

0000256c <s25fl128s_qpp>:
    256c:	fff60793          	addi	a5,a2,-1
    2570:	80002737          	lui	a4,0x80002
    2574:	1141                	addi	sp,sp,-16
    2576:	f3270713          	addi	a4,a4,-206 # 80001f32 <__GNU_EH_FRAME_HDR+0x7ffff0c6>
    257a:	07c2                	slli	a5,a5,0x10
    257c:	c606                	sw	ra,12(sp)
    257e:	86aa                	mv	a3,a0
    2580:	97ba                	add	a5,a5,a4
    2582:	6729                	lui	a4,0xa
    2584:	c354                	sw	a3,4(a4)
    2586:	6729                	lui	a4,0xa
    2588:	852e                	mv	a0,a1
    258a:	c31c                	sw	a5,0(a4)
    258c:	85b2                	mv	a1,a2
    258e:	3bc1                	jal	235e <qspi_write_array>
    2590:	40b2                	lw	ra,12(sp)
    2592:	0141                	addi	sp,sp,16
    2594:	b371                	j	2320 <qspi_wait>

Disassembly of section .text.qspi_custom_write:

00002596 <qspi_custom_write>:
    2596:	88aa                	mv	a7,a0
    2598:	852e                	mv	a0,a1
    259a:	85be                	mv	a1,a5
    259c:	800007b7          	lui	a5,0x80000
    25a0:	40078793          	addi	a5,a5,1024 # 80000400 <__GNU_EH_FRAME_HDR+0x7fffd594>
    25a4:	0866                	slli	a6,a6,0x19
    25a6:	983e                	add	a6,a6,a5
    25a8:	072e                	slli	a4,a4,0xb
    25aa:	fff58793          	addi	a5,a1,-1
    25ae:	1141                	addi	sp,sp,-16
    25b0:	983a                	add	a6,a6,a4
    25b2:	07c2                	slli	a5,a5,0x10
    25b4:	c422                	sw	s0,8(sp)
    25b6:	c606                	sw	ra,12(sp)
    25b8:	983e                	add	a6,a6,a5
    25ba:	06a2                	slli	a3,a3,0x8
    25bc:	67a9                	lui	a5,0xa
    25be:	0ff67613          	zext.b	a2,a2
    25c2:	9836                	add	a6,a6,a3
    25c4:	0117a223          	sw	a7,4(a5) # a004 <__GNU_EH_FRAME_HDR+0x7198>
    25c8:	00c80433          	add	s0,a6,a2
    25cc:	3b49                	jal	235e <qspi_write_array>
    25ce:	67a9                	lui	a5,0xa
    25d0:	c380                	sw	s0,0(a5)
    25d2:	4422                	lw	s0,8(sp)
    25d4:	40b2                	lw	ra,12(sp)
    25d6:	0141                	addi	sp,sp,16
    25d8:	b3a1                	j	2320 <qspi_wait>

Disassembly of section .text.qspi_custom_read:

000025da <qspi_custom_read>:
    25da:	1141                	addi	sp,sp,-16
    25dc:	c422                	sw	s0,8(sp)
    25de:	0866                	slli	a6,a6,0x19
    25e0:	843e                	mv	s0,a5
    25e2:	800007b7          	lui	a5,0x80000
    25e6:	983e                	add	a6,a6,a5
    25e8:	072e                	slli	a4,a4,0xb
    25ea:	fff40793          	addi	a5,s0,-1
    25ee:	983a                	add	a6,a6,a4
    25f0:	07c2                	slli	a5,a5,0x10
    25f2:	983e                	add	a6,a6,a5
    25f4:	06a2                	slli	a3,a3,0x8
    25f6:	c226                	sw	s1,4(sp)
    25f8:	c606                	sw	ra,12(sp)
    25fa:	0ff67613          	zext.b	a2,a2
    25fe:	9836                	add	a6,a6,a3
    2600:	67a9                	lui	a5,0xa
    2602:	c3c8                	sw	a0,4(a5)
    2604:	9832                	add	a6,a6,a2
    2606:	67a9                	lui	a5,0xa
    2608:	0107a023          	sw	a6,0(a5) # a000 <__GNU_EH_FRAME_HDR+0x7194>
    260c:	84ae                	mv	s1,a1
    260e:	3b09                	jal	2320 <qspi_wait>
    2610:	85a2                	mv	a1,s0
    2612:	4422                	lw	s0,8(sp)
    2614:	40b2                	lw	ra,12(sp)
    2616:	8526                	mv	a0,s1
    2618:	4492                	lw	s1,4(sp)
    261a:	0141                	addi	sp,sp,16
    261c:	b30d                	j	233e <qspi_read_array>

Disassembly of section .text.timer_counter:

0000261e <timer_counter>:
    261e:	67b1                	lui	a5,0xc
    2620:	4bc8                	lw	a0,20(a5)
    2622:	8082                	ret

Disassembly of section .text.timer_event:

00002624 <timer_event>:
    2624:	67b1                	lui	a5,0xc
    2626:	4f88                	lw	a0,24(a5)
    2628:	8082                	ret

Disassembly of section .text.timer_clear:

0000262a <timer_clear>:
    262a:	67b1                	lui	a5,0xc
    262c:	4705                	li	a4,1
    262e:	c798                	sw	a4,8(a5)
    2630:	67b1                	lui	a5,0xc
    2632:	cfd8                	sw	a4,28(a5)
    2634:	8082                	ret

Disassembly of section .text.timer_enabled:

00002636 <timer_enabled>:
    2636:	67b1                	lui	a5,0xc
    2638:	c7c8                	sw	a0,12(a5)
    263a:	8082                	ret

Disassembly of section .text.timer_conf:

0000263c <timer_conf>:
    263c:	1141                	addi	sp,sp,-16
    263e:	c606                	sw	ra,12(sp)
    2640:	67b1                	lui	a5,0xc
    2642:	c388                	sw	a0,0(a5)
    2644:	c3cc                	sw	a1,4(a5)
    2646:	67b1                	lui	a5,0xc
    2648:	cb90                	sw	a2,16(a5)
    264a:	08000613          	li	a2,128
    264e:	6589                	lui	a1,0x2
    2650:	20058593          	addi	a1,a1,512 # 2200 <interrupt>
    2654:	30559073          	csrw	mtvec,a1
    2658:	30046073          	csrsi	mstatus,8
    265c:	30462073          	csrs	mie,a2
    2660:	37e9                	jal	262a <timer_clear>
    2662:	40b2                	lw	ra,12(sp)
    2664:	67b1                	lui	a5,0xc
    2666:	4705                	li	a4,1
    2668:	c7d8                	sw	a4,12(a5)
    266a:	0141                	addi	sp,sp,16
    266c:	8082                	ret

Disassembly of section .text.usb_connected:

0000266e <usb_connected>:
    266e:	67b9                	lui	a5,0xe
    2670:	47c8                	lw	a0,12(a5)
    2672:	8905                	andi	a0,a0,1
    2674:	8082                	ret

Disassembly of section .text.usb_conf:

00002676 <usb_conf>:
    2676:	67b9                	lui	a5,0xe
    2678:	6739                	lui	a4,0xe
    267a:	c388                	sw	a0,0(a5)
    267c:	0731                	addi	a4,a4,12 # e00c <__GNU_EH_FRAME_HDR+0xb1a0>
    267e:	431c                	lw	a5,0(a4)
    2680:	8b85                	andi	a5,a5,1
    2682:	dff5                	beqz	a5,267e <usb_conf+0x8>
    2684:	8082                	ret

Disassembly of section .text.usb_rw:

00002686 <usb_rw>:
    2686:	67b9                	lui	a5,0xe
    2688:	c788                	sw	a0,8(a5)
    268a:	67b9                	lui	a5,0xe
    268c:	07b1                	addi	a5,a5,12 # e00c <__GNU_EH_FRAME_HDR+0xb1a0>
    268e:	4709                	li	a4,2
    2690:	4394                	lw	a3,0(a5)
    2692:	fee68fe3          	beq	a3,a4,2690 <usb_rw+0xa>
    2696:	c398                	sw	a4,0(a5)
    2698:	67b9                	lui	a5,0xe
    269a:	43c8                	lw	a0,4(a5)
    269c:	8082                	ret

Disassembly of section .text.gpio_write:

0000269e <gpio_write>:
    269e:	67c1                	lui	a5,0x10
    26a0:	c3c8                	sw	a0,4(a5)
    26a2:	8082                	ret

Disassembly of section .text.gpio_read:

000026a4 <gpio_read>:
    26a4:	67c1                	lui	a5,0x10
    26a6:	4388                	lw	a0,0(a5)
    26a8:	0542                	slli	a0,a0,0x10
    26aa:	8141                	srli	a0,a0,0x10
    26ac:	8082                	ret

Disassembly of section .text.instr_mem_write:

000026ae <instr_mem_write>:
    26ae:	050a                	slli	a0,a0,0x2
    26b0:	6791                	lui	a5,0x4
    26b2:	97aa                	add	a5,a5,a0
    26b4:	c38c                	sw	a1,0(a5)
    26b6:	8082                	ret

Disassembly of section .text.uart_main:

000026b8 <uart_main>:
    26b8:	1141                	addi	sp,sp,-16
    26ba:	6785                	lui	a5,0x1
    26bc:	c422                	sw	s0,8(sp)
    26be:	c226                	sw	s1,4(sp)
    26c0:	c606                	sw	ra,12(sp)
    26c2:	45778793          	addi	a5,a5,1111 # 1457 <timer_tmp+0x1367>
    26c6:	6719                	lui	a4,0x6
    26c8:	c31c                	sw	a5,0(a4)
    26ca:	6441                	lui	s0,0x10
    26cc:	6799                	lui	a5,0x6
    26ce:	0007a223          	sw	zero,4(a5) # 6004 <__GNU_EH_FRAME_HDR+0x3198>
    26d2:	64c1                	lui	s1,0x10
    26d4:	0411                	addi	s0,s0,4 # 10004 <__GNU_EH_FRAME_HDR+0xd198>
    26d6:	3ee1                	jal	22ae <uart_read>
    26d8:	c008                	sw	a0,0(s0)
    26da:	4088                	lw	a0,0(s1)
    26dc:	0ff57513          	zext.b	a0,a0
    26e0:	36e5                	jal	22c8 <uart_write>
    26e2:	bfd5                	j	26d6 <uart_main+0x1e>

Disassembly of section .text.uart_interrupt:

000026e4 <uart_interrupt>:
    26e4:	8082                	ret

Disassembly of section .text.i2c_main:

000026e6 <i2c_main>:
    26e6:	1141                	addi	sp,sp,-16
    26e8:	c422                	sw	s0,8(sp)
    26ea:	c226                	sw	s1,4(sp)
    26ec:	c04a                	sw	s2,0(sp)
    26ee:	c606                	sw	ra,12(sp)
    26f0:	67a1                	lui	a5,0x8
    26f2:	07b00713          	li	a4,123
    26f6:	c3d8                	sw	a4,4(a5)
    26f8:	4605                	li	a2,1
    26fa:	4581                	li	a1,0
    26fc:	557d                	li	a0,-1
    26fe:	64c1                	lui	s1,0x10
    2700:	6441                	lui	s0,0x10
    2702:	3f2d                	jal	263c <timer_conf>
    2704:	14fd                	addi	s1,s1,-1 # ffff <__GNU_EH_FRAME_HDR+0xd193>
    2706:	0411                	addi	s0,s0,4 # 10004 <__GNU_EH_FRAME_HDR+0xd198>
    2708:	04c02783          	lw	a5,76(zero) # 4c <i2c_tmp>
    270c:	dff5                	beqz	a5,2708 <i2c_main+0x22>
    270e:	4509                	li	a0,2
    2710:	3ed5                	jal	2304 <i2c_read>
    2712:	8d65                	and	a0,a0,s1
    2714:	c008                	sw	a0,0(s0)
    2716:	04002623          	sw	zero,76(zero) # 4c <i2c_tmp>
    271a:	b7fd                	j	2708 <i2c_main+0x22>

Disassembly of section .text.i2c_interrupt:

0000271c <i2c_interrupt>:
    271c:	4705                	li	a4,1
    271e:	04e02623          	sw	a4,76(zero) # 4c <i2c_tmp>
    2722:	8082                	ret

Disassembly of section .text.qspi_main:

00002724 <qspi_main>:
    2724:	8082                	ret

Disassembly of section .text.qspi_interrupt:

00002726 <qspi_interrupt>:
    2726:	8082                	ret

Disassembly of section .text.timer_main:

00002728 <timer_main>:
    2728:	1101                	addi	sp,sp,-32
    272a:	653d                	lui	a0,0xf
    272c:	cc22                	sw	s0,24(sp)
    272e:	c84a                	sw	s2,16(sp)
    2730:	4605                	li	a2,1
    2732:	4581                	li	a1,0
    2734:	a5f50513          	addi	a0,a0,-1441 # ea5f <__GNU_EH_FRAME_HDR+0xbbf3>
    2738:	6441                	lui	s0,0x10
    273a:	6931                	lui	s2,0xc
    273c:	ca26                	sw	s1,20(sp)
    273e:	c64e                	sw	s3,12(sp)
    2740:	ce06                	sw	ra,28(sp)
    2742:	3ded                	jal	263c <timer_conf>
    2744:	fff40493          	addi	s1,s0,-1 # ffff <__GNU_EH_FRAME_HDR+0xd193>
    2748:	0911                	addi	s2,s2,4 # c004 <__GNU_EH_FRAME_HDR+0x9198>
    274a:	04802703          	lw	a4,72(zero) # 48 <timer_tmp2>
    274e:	401c                	lw	a5,0(s0)
    2750:	8fe5                	and	a5,a5,s1
    2752:	fee78ee3          	beq	a5,a4,274e <timer_main+0x26>
    2756:	401c                	lw	a5,0(s0)
    2758:	8fe5                	and	a5,a5,s1
    275a:	00f92023          	sw	a5,0(s2)
    275e:	35f1                	jal	262a <timer_clear>
    2760:	401c                	lw	a5,0(s0)
    2762:	8fe5                	and	a5,a5,s1
    2764:	04f02423          	sw	a5,72(zero) # 48 <timer_tmp2>
    2768:	b7cd                	j	274a <timer_main+0x22>

Disassembly of section .text.timer_interrupt:

0000276a <timer_interrupt>:
    276a:	0f005683          	lhu	a3,240(zero) # f0 <timer_tmp>
    276e:	6741                	lui	a4,0x10
    2770:	c354                	sw	a3,4(a4)
    2772:	0f002703          	lw	a4,240(zero) # f0 <timer_tmp>
    2776:	0705                	addi	a4,a4,1 # 10001 <__GNU_EH_FRAME_HDR+0xd195>
    2778:	0ee02823          	sw	a4,240(zero) # f0 <timer_tmp>
    277c:	8082                	ret

Disassembly of section .text.gpio_main:

0000277e <gpio_main>:
    277e:	66c1                	lui	a3,0x10
    2780:	67c1                	lui	a5,0x10
    2782:	fff68613          	addi	a2,a3,-1 # ffff <__GNU_EH_FRAME_HDR+0xd193>
    2786:	0791                	addi	a5,a5,4 # 10004 <__GNU_EH_FRAME_HDR+0xd198>
    2788:	4298                	lw	a4,0(a3)
    278a:	8f71                	and	a4,a4,a2
    278c:	c398                	sw	a4,0(a5)
    278e:	bfed                	j	2788 <gpio_main+0xa>

Disassembly of section .text.gpio_interrupt:

00002790 <gpio_interrupt>:
    2790:	8082                	ret

Disassembly of section .text.usb_main:

00002792 <usb_main>:
    2792:	7139                	addi	sp,sp,-64
    2794:	d84a                	sw	s2,48(sp)
    2796:	d64e                	sw	s3,44(sp)
    2798:	4605                	li	a2,1
    279a:	4581                	li	a1,0
    279c:	557d                	li	a0,-1
    279e:	6939                	lui	s2,0xe
    27a0:	69c1                	lui	s3,0x10
    27a2:	dc22                	sw	s0,56(sp)
    27a4:	da26                	sw	s1,52(sp)
    27a6:	d452                	sw	s4,40(sp)
    27a8:	d256                	sw	s5,36(sp)
    27aa:	d05a                	sw	s6,32(sp)
    27ac:	ce5e                	sw	s7,28(sp)
    27ae:	de06                	sw	ra,60(sp)
    27b0:	cc62                	sw	s8,24(sp)
    27b2:	ca66                	sw	s9,20(sp)
    27b4:	c86a                	sw	s10,16(sp)
    27b6:	c66e                	sw	s11,12(sp)
    27b8:	6ac1                	lui	s5,0x10
    27ba:	3549                	jal	263c <timer_conf>
    27bc:	0931                	addi	s2,s2,12 # e00c <__GNU_EH_FRAME_HDR+0xb1a0>
    27be:	0991                	addi	s3,s3,4 # 10004 <__GNU_EH_FRAME_HDR+0xd198>
    27c0:	4b91                	li	s7,4
    27c2:	000aa783          	lw	a5,0(s5) # 10000 <__GNU_EH_FRAME_HDR+0xd194>
    27c6:	0e002223          	sw	zero,228(zero) # e4 <usb_state>
    27ca:	0ff7f793          	zext.b	a5,a5
    27ce:	0ef02623          	sw	a5,236(zero) # ec <usb_tmp>
    27d2:	e381                	bnez	a5,27d2 <usb_main+0x40>
    27d4:	0e002783          	lw	a5,224(zero) # e0 <usb_old_state>
    27d8:	c399                	beqz	a5,27de <usb_main+0x4c>
    27da:	4501                	li	a0,0
    27dc:	3d69                	jal	2676 <usb_conf>
    27de:	0e402783          	lw	a5,228(zero) # e4 <usb_state>
    27e2:	0ef02023          	sw	a5,224(zero) # e0 <usb_old_state>
    27e6:	00092703          	lw	a4,0(s2)
    27ea:	07a2                	slli	a5,a5,0x8
    27ec:	8b05                	andi	a4,a4,1
    27ee:	97ba                	add	a5,a5,a4
    27f0:	07c2                	slli	a5,a5,0x10
    27f2:	83c1                	srli	a5,a5,0x10
    27f4:	00f9a023          	sw	a5,0(s3)
    27f8:	0e402783          	lw	a5,228(zero) # e4 <usb_state>
    27fc:	05778c63          	beq	a5,s7,2854 <usb_main+0xc2>
    2800:	04fbe163          	bltu	s7,a5,2842 <usb_main+0xb0>
    2804:	4705                	li	a4,1
    2806:	04e78163          	beq	a5,a4,2848 <usb_main+0xb6>
    280a:	4709                	li	a4,2
    280c:	fae79be3          	bne	a5,a4,27c2 <usb_main+0x30>
    2810:	4501                	li	a0,0
    2812:	3d95                	jal	2686 <usb_rw>
    2814:	4c81                	li	s9,0
    2816:	14000d13          	li	s10,320
    281a:	0b400d93          	li	s11,180
    281e:	4c01                	li	s8,0
    2820:	0e802503          	lw	a0,232(zero) # e8 <usb_tmp2>
    2824:	9566                	add	a0,a0,s9
    2826:	9562                	add	a0,a0,s8
    2828:	0c05                	addi	s8,s8,1
    282a:	3db1                	jal	2686 <usb_rw>
    282c:	ffac1ae3          	bne	s8,s10,2820 <usb_main+0x8e>
    2830:	0c85                	addi	s9,s9,1
    2832:	ffbc96e3          	bne	s9,s11,281e <usb_main+0x8c>
    2836:	0e802783          	lw	a5,232(zero) # e8 <usb_tmp2>
    283a:	0785                	addi	a5,a5,1
    283c:	0ef02423          	sw	a5,232(zero) # e8 <usb_tmp2>
    2840:	b749                	j	27c2 <usb_main+0x30>
    2842:	4715                	li	a4,5
    2844:	f6e79fe3          	bne	a5,a4,27c2 <usb_main+0x30>
    2848:	0ec02503          	lw	a0,236(zero) # ec <usb_tmp>
    284c:	3d2d                	jal	2686 <usb_rw>
    284e:	0ea02623          	sw	a0,236(zero) # ec <usb_tmp>
    2852:	bf85                	j	27c2 <usb_main+0x30>
    2854:	000aa783          	lw	a5,0(s5)
    2858:	07c2                	slli	a5,a5,0x10
    285a:	83c1                	srli	a5,a5,0x10
    285c:	83a1                	srli	a5,a5,0x8
    285e:	0ef02623          	sw	a5,236(zero) # ec <usb_tmp>
    2862:	b785                	j	27c2 <usb_main+0x30>

Disassembly of section .text.usb_interrupt:

00002864 <usb_interrupt>:
    2864:	0e402703          	lw	a4,228(zero) # e4 <usb_state>
    2868:	4791                	li	a5,4
    286a:	00f71563          	bne	a4,a5,2874 <usb_interrupt+0x10>
    286e:	0ec02503          	lw	a0,236(zero) # ec <usb_tmp>
    2872:	bd11                	j	2686 <usb_rw>
    2874:	8082                	ret

Disassembly of section .text.data_mem_main:

00002876 <data_mem_main>:
    2876:	66c1                	lui	a3,0x10
    2878:	6741                	lui	a4,0x10
    287a:	fff68613          	addi	a2,a3,-1 # ffff <__GNU_EH_FRAME_HDR+0xd193>
    287e:	0711                	addi	a4,a4,4 # 10004 <__GNU_EH_FRAME_HDR+0xd198>
    2880:	429c                	lw	a5,0(a3)
    2882:	8ff1                	and	a5,a5,a2
    2884:	0786                	slli	a5,a5,0x1
    2886:	0007d783          	lhu	a5,0(a5)
    288a:	c31c                	sw	a5,0(a4)
    288c:	bfd5                	j	2880 <data_mem_main+0xa>
