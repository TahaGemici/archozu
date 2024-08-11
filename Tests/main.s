
a.out:     file format elf32-littleriscv


Disassembly of section .text:

00002000 <.text>:
    2000:	04402703          	lw	a4,68(zero) # 0x44
    2004:	67c1                	lui	a5,0x10
    2006:	4581                	li	a1,0
    2008:	0742                	slli	a4,a4,0x10
    200a:	8341                	srli	a4,a4,0x10
    200c:	c3d8                	sw	a4,4(a5)
    200e:	4605                	li	a2,1
    2010:	557d                	li	a0,-1
    2012:	2d19                	jal	0x2628
    2014:	65c1                	lui	a1,0x10
    2016:	46a1                	li	a3,8
    2018:	419c                	lw	a5,0(a1)
    201a:	07c2                	slli	a5,a5,0x10
    201c:	83c1                	srli	a5,a5,0x10
    201e:	0cf01c23          	sh	a5,216(zero) # 0xd8
    2022:	0d805783          	lhu	a5,216(zero) # 0xd8
    2026:	c781                	beqz	a5,0x202e
    2028:	67b1                	lui	a5,0xc
    202a:	0007a623          	sw	zero,12(a5) # 0xc00c
    202e:	0d805603          	lhu	a2,216(zero) # 0xd8
    2032:	01061793          	slli	a5,a2,0x10
    2036:	83c1                	srli	a5,a5,0x10
    2038:	02d60b63          	beq	a2,a3,0x206e
    203c:	00f6ec63          	bltu	a3,a5,0x2054
    2040:	4609                	li	a2,2
    2042:	02c78563          	beq	a5,a2,0x206c
    2046:	4611                	li	a2,4
    2048:	02c78363          	beq	a5,a2,0x206e
    204c:	4605                	li	a2,1
    204e:	fcc795e3          	bne	a5,a2,0x2018
    2052:	2d89                	jal	0x26a4
    2054:	02000613          	li	a2,32
    2058:	00c78c63          	beq	a5,a2,0x2070
    205c:	04000613          	li	a2,64
    2060:	00c78963          	beq	a5,a2,0x2072
    2064:	4641                	li	a2,16
    2066:	fac799e3          	bne	a5,a2,0x2018
    206a:	2dd5                	jal	0x275e
    206c:	259d                	jal	0x26d2
    206e:	2d69                	jal	0x2708
    2070:	2709                	jal	0x2772
    2072:	7e4000ef          	jal	0x2856
	...
    21fe:	0000                	unimp
    2200:	7139                	addi	sp,sp,-64
    2202:	cc3e                	sw	a5,24(sp)
    2204:	ce3a                	sw	a4,28(sp)
    2206:	0d805703          	lhu	a4,216(zero) # 0xd8
    220a:	d036                	sw	a3,32(sp)
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
    2226:	46a1                	li	a3,8
    2228:	04d70963          	beq	a4,a3,0x227a
    222c:	01071793          	slli	a5,a4,0x10
    2230:	83c1                	srli	a5,a5,0x10
    2232:	02000713          	li	a4,32
    2236:	04e78463          	beq	a5,a4,0x227e
    223a:	ef89                	bnez	a5,0x2254
    223c:	04402703          	lw	a4,68(zero) # 0x44
    2240:	fff74713          	not	a4,a4
    2244:	04e02223          	sw	a4,68(zero) # 0x44
    2248:	04402703          	lw	a4,68(zero) # 0x44
    224c:	67c1                	lui	a5,0x10
    224e:	0742                	slli	a4,a4,0x10
    2250:	8341                	srli	a4,a4,0x10
    2252:	c3d8                	sw	a4,4(a5)
    2254:	50f2                	lw	ra,60(sp)
    2256:	52e2                	lw	t0,56(sp)
    2258:	5352                	lw	t1,52(sp)
    225a:	53c2                	lw	t2,48(sp)
    225c:	5532                	lw	a0,44(sp)
    225e:	55a2                	lw	a1,40(sp)
    2260:	5612                	lw	a2,36(sp)
    2262:	5682                	lw	a3,32(sp)
    2264:	4772                	lw	a4,28(sp)
    2266:	47e2                	lw	a5,24(sp)
    2268:	4852                	lw	a6,20(sp)
    226a:	48c2                	lw	a7,16(sp)
    226c:	4e32                	lw	t3,12(sp)
    226e:	4ea2                	lw	t4,8(sp)
    2270:	4f12                	lw	t5,4(sp)
    2272:	4f82                	lw	t6,0(sp)
    2274:	6121                	addi	sp,sp,64
    2276:	30200073          	mret
    227a:	29c1                	jal	0x274a
    227c:	bfe1                	j	0x2254
    227e:	23d9                	jal	0x2844
    2280:	bfd1                	j	0x2254

Disassembly of section .text.uart_conf:

00002282 <.text.uart_conf>:
    2282:	039387b7          	lui	a5,0x3938
    2286:	70078793          	addi	a5,a5,1792 # 0x3938700
    228a:	02a7d7b3          	divu	a5,a5,a0
    228e:	6719                	lui	a4,0x6
    2290:	17fd                	addi	a5,a5,-1
    2292:	c31c                	sw	a5,0(a4)
    2294:	6799                	lui	a5,0x6
    2296:	c3cc                	sw	a1,4(a5)
    2298:	8082                	ret

Disassembly of section .text.uart_read:

0000229a <.text.uart_read>:
    229a:	6799                	lui	a5,0x6
    229c:	07c1                	addi	a5,a5,16 # 0x6010
    229e:	4709                	li	a4,2
    22a0:	4394                	lw	a3,0(a5)
    22a2:	fee69fe3          	bne	a3,a4,0x22a0
    22a6:	6719                	lui	a4,0x6
    22a8:	4708                	lw	a0,8(a4)
    22aa:	0007a023          	sw	zero,0(a5)
    22ae:	0ff57513          	zext.b	a0,a0
    22b2:	8082                	ret

Disassembly of section .text.uart_write:

000022b4 <.text.uart_write>:
    22b4:	6799                	lui	a5,0x6
    22b6:	c7c8                	sw	a0,12(a5)
    22b8:	6799                	lui	a5,0x6
    22ba:	07c1                	addi	a5,a5,16 # 0x6010
    22bc:	4705                	li	a4,1
    22be:	c398                	sw	a4,0(a5)
    22c0:	4398                	lw	a4,0(a5)
    22c2:	8b11                	andi	a4,a4,4
    22c4:	df75                	beqz	a4,0x22c0
    22c6:	4398                	lw	a4,0(a5)
    22c8:	8b09                	andi	a4,a4,2
    22ca:	c398                	sw	a4,0(a5)
    22cc:	8082                	ret

Disassembly of section .text.i2c_conf:

000022ce <.text.i2c_conf>:
    22ce:	67a1                	lui	a5,0x8
    22d0:	c3c8                	sw	a0,4(a5)
    22d2:	8082                	ret

Disassembly of section .text.i2c_write:

000022d4 <.text.i2c_write>:
    22d4:	67a1                	lui	a5,0x8
    22d6:	c38c                	sw	a1,0(a5)
    22d8:	c7c8                	sw	a0,12(a5)
    22da:	67a1                	lui	a5,0x8
    22dc:	07c1                	addi	a5,a5,16 # 0x8010
    22de:	4705                	li	a4,1
    22e0:	c398                	sw	a4,0(a5)
    22e2:	4398                	lw	a4,0(a5)
    22e4:	8b09                	andi	a4,a4,2
    22e6:	df75                	beqz	a4,0x22e2
    22e8:	4398                	lw	a4,0(a5)
    22ea:	8b31                	andi	a4,a4,12
    22ec:	c398                	sw	a4,0(a5)
    22ee:	8082                	ret

Disassembly of section .text.i2c_read:

000022f0 <.text.i2c_read>:
    22f0:	67a1                	lui	a5,0x8
    22f2:	c388                	sw	a0,0(a5)
    22f4:	4711                	li	a4,4
    22f6:	07c1                	addi	a5,a5,16 # 0x8010
    22f8:	c398                	sw	a4,0(a5)
    22fa:	4398                	lw	a4,0(a5)
    22fc:	8b21                	andi	a4,a4,8
    22fe:	df75                	beqz	a4,0x22fa
    2300:	4398                	lw	a4,0(a5)
    2302:	8b0d                	andi	a4,a4,3
    2304:	c398                	sw	a4,0(a5)
    2306:	67a1                	lui	a5,0x8
    2308:	4788                	lw	a0,8(a5)
    230a:	8082                	ret

Disassembly of section .text.qspi_wait:

0000230c <.text.qspi_wait>:
    230c:	67a9                	lui	a5,0xa
    230e:	02878793          	addi	a5,a5,40 # 0xa028
    2312:	4705                	li	a4,1
    2314:	4394                	lw	a3,0(a5)
    2316:	fee69fe3          	bne	a3,a4,0x2314
    231a:	67a9                	lui	a5,0xa
    231c:	02878793          	addi	a5,a5,40 # 0xa028
    2320:	4705                	li	a4,1
    2322:	4394                	lw	a3,0(a5)
    2324:	fee69fe3          	bne	a3,a4,0x2322
    2328:	8082                	ret

Disassembly of section .text.qspi_read_array:

0000232a <.text.qspi_read_array>:
    232a:	058d                	addi	a1,a1,3 # 0x10003
    232c:	6729                	lui	a4,0xa
    232e:	99f1                	andi	a1,a1,-4
    2330:	4781                	li	a5,0
    2332:	0721                	addi	a4,a4,8 # 0xa008
    2334:	00b79363          	bne	a5,a1,0x233a
    2338:	8082                	ret
    233a:	00e786b3          	add	a3,a5,a4
    233e:	4290                	lw	a2,0(a3)
    2340:	00f506b3          	add	a3,a0,a5
    2344:	0791                	addi	a5,a5,4
    2346:	c290                	sw	a2,0(a3)
    2348:	b7f5                	j	0x2334

Disassembly of section .text.qspi_write_array:

0000234a <.text.qspi_write_array>:
    234a:	058d                	addi	a1,a1,3
    234c:	6729                	lui	a4,0xa
    234e:	99f1                	andi	a1,a1,-4
    2350:	4781                	li	a5,0
    2352:	0721                	addi	a4,a4,8 # 0xa008
    2354:	00b79363          	bne	a5,a1,0x235a
    2358:	8082                	ret
    235a:	00f50633          	add	a2,a0,a5
    235e:	4210                	lw	a2,0(a2)
    2360:	00e786b3          	add	a3,a5,a4
    2364:	0791                	addi	a5,a5,4
    2366:	c290                	sw	a2,0(a3)
    2368:	b7f5                	j	0x2354

Disassembly of section .text.s25fl128s_wren:

0000236a <.text.s25fl128s_wren>:
    236a:	800007b7          	lui	a5,0x80000
    236e:	0799                	addi	a5,a5,6 # 0x80000006
    2370:	6729                	lui	a4,0xa
    2372:	c31c                	sw	a5,0(a4)
    2374:	bf61                	j	0x230c

Disassembly of section .text.s25fl128s_wrdi:

00002376 <.text.s25fl128s_wrdi>:
    2376:	800007b7          	lui	a5,0x80000
    237a:	0791                	addi	a5,a5,4 # 0x80000004
    237c:	6729                	lui	a4,0xa
    237e:	c31c                	sw	a5,0(a4)
    2380:	b771                	j	0x230c

Disassembly of section .text.s25fl128s_clsr:

00002382 <.text.s25fl128s_clsr>:
    2382:	800007b7          	lui	a5,0x80000
    2386:	03078793          	addi	a5,a5,48 # 0x80000030
    238a:	6729                	lui	a4,0xa
    238c:	c31c                	sw	a5,0(a4)
    238e:	bfbd                	j	0x230c

Disassembly of section .text.s25fl128s_reset:

00002390 <.text.s25fl128s_reset>:
    2390:	800007b7          	lui	a5,0x80000
    2394:	0f078793          	addi	a5,a5,240 # 0x800000f0
    2398:	6729                	lui	a4,0xa
    239a:	c31c                	sw	a5,0(a4)
    239c:	bf85                	j	0x230c

Disassembly of section .text.s25fl128s_rdid:

0000239e <.text.s25fl128s_rdid>:
    239e:	fff58793          	addi	a5,a1,-1
    23a2:	80000737          	lui	a4,0x80000
    23a6:	1101                	addi	sp,sp,-32
    23a8:	19f70713          	addi	a4,a4,415 # 0x8000019f
    23ac:	07c2                	slli	a5,a5,0x10
    23ae:	ce06                	sw	ra,28(sp)
    23b0:	c62a                	sw	a0,12(sp)
    23b2:	c42e                	sw	a1,8(sp)
    23b4:	97ba                	add	a5,a5,a4
    23b6:	6729                	lui	a4,0xa
    23b8:	c31c                	sw	a5,0(a4)
    23ba:	3f89                	jal	0x230c
    23bc:	45a2                	lw	a1,8(sp)
    23be:	4532                	lw	a0,12(sp)
    23c0:	40f2                	lw	ra,28(sp)
    23c2:	6105                	addi	sp,sp,32
    23c4:	b79d                	j	0x232a

Disassembly of section .text.s25fl128s_rdsr1:

000023c6 <.text.s25fl128s_rdsr1>:
    23c6:	1141                	addi	sp,sp,-16
    23c8:	800007b7          	lui	a5,0x80000
    23cc:	c606                	sw	ra,12(sp)
    23ce:	10578793          	addi	a5,a5,261 # 0x80000105
    23d2:	6729                	lui	a4,0xa
    23d4:	c31c                	sw	a5,0(a4)
    23d6:	3f1d                	jal	0x230c
    23d8:	67a9                	lui	a5,0xa
    23da:	4788                	lw	a0,8(a5)
    23dc:	40b2                	lw	ra,12(sp)
    23de:	0ff57513          	zext.b	a0,a0
    23e2:	0141                	addi	sp,sp,16
    23e4:	8082                	ret

Disassembly of section .text.s25fl128s_rdsr2:

000023e6 <.text.s25fl128s_rdsr2>:
    23e6:	1141                	addi	sp,sp,-16
    23e8:	800007b7          	lui	a5,0x80000
    23ec:	c606                	sw	ra,12(sp)
    23ee:	10778793          	addi	a5,a5,263 # 0x80000107
    23f2:	6729                	lui	a4,0xa
    23f4:	c31c                	sw	a5,0(a4)
    23f6:	3f19                	jal	0x230c
    23f8:	67a9                	lui	a5,0xa
    23fa:	4788                	lw	a0,8(a5)
    23fc:	40b2                	lw	ra,12(sp)
    23fe:	0ff57513          	zext.b	a0,a0
    2402:	0141                	addi	sp,sp,16
    2404:	8082                	ret

Disassembly of section .text.s25fl128s_rdcr:

00002406 <.text.s25fl128s_rdcr>:
    2406:	1141                	addi	sp,sp,-16
    2408:	800007b7          	lui	a5,0x80000
    240c:	c606                	sw	ra,12(sp)
    240e:	13578793          	addi	a5,a5,309 # 0x80000135
    2412:	6729                	lui	a4,0xa
    2414:	c31c                	sw	a5,0(a4)
    2416:	3ddd                	jal	0x230c
    2418:	67a9                	lui	a5,0xa
    241a:	4788                	lw	a0,8(a5)
    241c:	40b2                	lw	ra,12(sp)
    241e:	0ff57513          	zext.b	a0,a0
    2422:	0141                	addi	sp,sp,16
    2424:	8082                	ret

Disassembly of section .text.s25fl128s_read_id:

00002426 <.text.s25fl128s_read_id>:
    2426:	1141                	addi	sp,sp,-16
    2428:	c606                	sw	ra,12(sp)
    242a:	67a9                	lui	a5,0xa
    242c:	c3c8                	sw	a0,4(a5)
    242e:	800127b7          	lui	a5,0x80012
    2432:	99078793          	addi	a5,a5,-1648 # 0x80011990
    2436:	6729                	lui	a4,0xa
    2438:	c31c                	sw	a5,0(a4)
    243a:	3dc9                	jal	0x230c
    243c:	67a9                	lui	a5,0xa
    243e:	4788                	lw	a0,8(a5)
    2440:	40b2                	lw	ra,12(sp)
    2442:	0542                	slli	a0,a0,0x10
    2444:	8141                	srli	a0,a0,0x10
    2446:	0141                	addi	sp,sp,16
    2448:	8082                	ret

Disassembly of section .text.s25fl128s_res:

0000244a <.text.s25fl128s_res>:
    244a:	1141                	addi	sp,sp,-16
    244c:	800027b7          	lui	a5,0x80002
    2450:	c606                	sw	ra,12(sp)
    2452:	9ab78793          	addi	a5,a5,-1621 # 0x800019ab
    2456:	6729                	lui	a4,0xa
    2458:	c31c                	sw	a5,0(a4)
    245a:	3d4d                	jal	0x230c
    245c:	67a9                	lui	a5,0xa
    245e:	4788                	lw	a0,8(a5)
    2460:	40b2                	lw	ra,12(sp)
    2462:	0ff57513          	zext.b	a0,a0
    2466:	0141                	addi	sp,sp,16
    2468:	8082                	ret

Disassembly of section .text.s25fl128s_wrr:

0000246a <.text.s25fl128s_wrr>:
    246a:	67a9                	lui	a5,0xa
    246c:	c788                	sw	a0,8(a5)
    246e:	800107b7          	lui	a5,0x80010
    2472:	50178793          	addi	a5,a5,1281 # 0x80010501
    2476:	6729                	lui	a4,0xa
    2478:	c31c                	sw	a5,0(a4)
    247a:	bd49                	j	0x230c

Disassembly of section .text.s25fl128s_read:

0000247c <.text.s25fl128s_read>:
    247c:	fff60793          	addi	a5,a2,-1
    2480:	80002737          	lui	a4,0x80002
    2484:	1141                	addi	sp,sp,-16
    2486:	90370713          	addi	a4,a4,-1789 # 0x80001903
    248a:	07c2                	slli	a5,a5,0x10
    248c:	c422                	sw	s0,8(sp)
    248e:	c226                	sw	s1,4(sp)
    2490:	c606                	sw	ra,12(sp)
    2492:	97ba                	add	a5,a5,a4
    2494:	6729                	lui	a4,0xa
    2496:	c348                	sw	a0,4(a4)
    2498:	6729                	lui	a4,0xa
    249a:	c31c                	sw	a5,0(a4)
    249c:	84ae                	mv	s1,a1
    249e:	8432                	mv	s0,a2
    24a0:	35b5                	jal	0x230c
    24a2:	85a2                	mv	a1,s0
    24a4:	4422                	lw	s0,8(sp)
    24a6:	40b2                	lw	ra,12(sp)
    24a8:	8526                	mv	a0,s1
    24aa:	4492                	lw	s1,4(sp)
    24ac:	0141                	addi	sp,sp,16
    24ae:	bdb5                	j	0x232a

Disassembly of section .text.s25fl128s_pp:

000024b0 <.text.s25fl128s_pp>:
    24b0:	1141                	addi	sp,sp,-16
    24b2:	c422                	sw	s0,8(sp)
    24b4:	800027b7          	lui	a5,0x80002
    24b8:	fff60413          	addi	s0,a2,-1
    24bc:	d0278793          	addi	a5,a5,-766 # 0x80001d02
    24c0:	0442                	slli	s0,s0,0x10
    24c2:	c606                	sw	ra,12(sp)
    24c4:	872a                	mv	a4,a0
    24c6:	943e                	add	s0,s0,a5
    24c8:	67a9                	lui	a5,0xa
    24ca:	852e                	mv	a0,a1
    24cc:	c3d8                	sw	a4,4(a5)
    24ce:	85b2                	mv	a1,a2
    24d0:	3dad                	jal	0x234a
    24d2:	67a9                	lui	a5,0xa
    24d4:	c380                	sw	s0,0(a5)
    24d6:	4422                	lw	s0,8(sp)
    24d8:	40b2                	lw	ra,12(sp)
    24da:	0141                	addi	sp,sp,16
    24dc:	bd05                	j	0x230c

Disassembly of section .text.s25fl128s_se:

000024de <.text.s25fl128s_se>:
    24de:	67a9                	lui	a5,0xa
    24e0:	c788                	sw	a0,8(a5)
    24e2:	800207b7          	lui	a5,0x80020
    24e6:	5d878793          	addi	a5,a5,1496 # 0x800205d8
    24ea:	6729                	lui	a4,0xa
    24ec:	c31c                	sw	a5,0(a4)
    24ee:	bd39                	j	0x230c

Disassembly of section .text.s25fl128s_dor:

000024f0 <.text.s25fl128s_dor>:
    24f0:	fff60793          	addi	a5,a2,-1
    24f4:	80002737          	lui	a4,0x80002
    24f8:	1141                	addi	sp,sp,-16
    24fa:	23b70713          	addi	a4,a4,571 # 0x8000223b
    24fe:	07c2                	slli	a5,a5,0x10
    2500:	c422                	sw	s0,8(sp)
    2502:	c226                	sw	s1,4(sp)
    2504:	c606                	sw	ra,12(sp)
    2506:	97ba                	add	a5,a5,a4
    2508:	6729                	lui	a4,0xa
    250a:	c348                	sw	a0,4(a4)
    250c:	6729                	lui	a4,0xa
    250e:	c31c                	sw	a5,0(a4)
    2510:	84ae                	mv	s1,a1
    2512:	8432                	mv	s0,a2
    2514:	3be5                	jal	0x230c
    2516:	85a2                	mv	a1,s0
    2518:	4422                	lw	s0,8(sp)
    251a:	40b2                	lw	ra,12(sp)
    251c:	8526                	mv	a0,s1
    251e:	4492                	lw	s1,4(sp)
    2520:	0141                	addi	sp,sp,16
    2522:	b521                	j	0x232a

Disassembly of section .text.s25fl128s_qor:

00002524 <.text.s25fl128s_qor>:
    2524:	fff60793          	addi	a5,a2,-1
    2528:	80002737          	lui	a4,0x80002
    252c:	1141                	addi	sp,sp,-16
    252e:	36b70713          	addi	a4,a4,875 # 0x8000236b
    2532:	07c2                	slli	a5,a5,0x10
    2534:	c422                	sw	s0,8(sp)
    2536:	c226                	sw	s1,4(sp)
    2538:	c606                	sw	ra,12(sp)
    253a:	97ba                	add	a5,a5,a4
    253c:	6729                	lui	a4,0xa
    253e:	c348                	sw	a0,4(a4)
    2540:	6729                	lui	a4,0xa
    2542:	c31c                	sw	a5,0(a4)
    2544:	84ae                	mv	s1,a1
    2546:	8432                	mv	s0,a2
    2548:	33d1                	jal	0x230c
    254a:	85a2                	mv	a1,s0
    254c:	4422                	lw	s0,8(sp)
    254e:	40b2                	lw	ra,12(sp)
    2550:	8526                	mv	a0,s1
    2552:	4492                	lw	s1,4(sp)
    2554:	0141                	addi	sp,sp,16
    2556:	bbd1                	j	0x232a

Disassembly of section .text.s25fl128s_qpp:

00002558 <.text.s25fl128s_qpp>:
    2558:	fff60793          	addi	a5,a2,-1
    255c:	80002737          	lui	a4,0x80002
    2560:	1141                	addi	sp,sp,-16
    2562:	f3270713          	addi	a4,a4,-206 # 0x80001f32
    2566:	07c2                	slli	a5,a5,0x10
    2568:	c606                	sw	ra,12(sp)
    256a:	86aa                	mv	a3,a0
    256c:	97ba                	add	a5,a5,a4
    256e:	6729                	lui	a4,0xa
    2570:	c354                	sw	a3,4(a4)
    2572:	6729                	lui	a4,0xa
    2574:	852e                	mv	a0,a1
    2576:	c31c                	sw	a5,0(a4)
    2578:	85b2                	mv	a1,a2
    257a:	3bc1                	jal	0x234a
    257c:	40b2                	lw	ra,12(sp)
    257e:	0141                	addi	sp,sp,16
    2580:	b371                	j	0x230c

Disassembly of section .text.qspi_custom_write:

00002582 <.text.qspi_custom_write>:
    2582:	88aa                	mv	a7,a0
    2584:	852e                	mv	a0,a1
    2586:	85be                	mv	a1,a5
    2588:	800007b7          	lui	a5,0x80000
    258c:	40078793          	addi	a5,a5,1024 # 0x80000400
    2590:	0866                	slli	a6,a6,0x19
    2592:	983e                	add	a6,a6,a5
    2594:	072e                	slli	a4,a4,0xb
    2596:	fff58793          	addi	a5,a1,-1
    259a:	1141                	addi	sp,sp,-16
    259c:	983a                	add	a6,a6,a4
    259e:	07c2                	slli	a5,a5,0x10
    25a0:	c422                	sw	s0,8(sp)
    25a2:	c606                	sw	ra,12(sp)
    25a4:	983e                	add	a6,a6,a5
    25a6:	06a2                	slli	a3,a3,0x8
    25a8:	67a9                	lui	a5,0xa
    25aa:	0ff67613          	zext.b	a2,a2
    25ae:	9836                	add	a6,a6,a3
    25b0:	0117a223          	sw	a7,4(a5) # 0xa004
    25b4:	00c80433          	add	s0,a6,a2
    25b8:	3b49                	jal	0x234a
    25ba:	67a9                	lui	a5,0xa
    25bc:	c380                	sw	s0,0(a5)
    25be:	4422                	lw	s0,8(sp)
    25c0:	40b2                	lw	ra,12(sp)
    25c2:	0141                	addi	sp,sp,16
    25c4:	b3a1                	j	0x230c

Disassembly of section .text.qspi_custom_read:

000025c6 <.text.qspi_custom_read>:
    25c6:	1141                	addi	sp,sp,-16
    25c8:	c422                	sw	s0,8(sp)
    25ca:	0866                	slli	a6,a6,0x19
    25cc:	843e                	mv	s0,a5
    25ce:	800007b7          	lui	a5,0x80000
    25d2:	983e                	add	a6,a6,a5
    25d4:	072e                	slli	a4,a4,0xb
    25d6:	fff40793          	addi	a5,s0,-1
    25da:	983a                	add	a6,a6,a4
    25dc:	07c2                	slli	a5,a5,0x10
    25de:	983e                	add	a6,a6,a5
    25e0:	06a2                	slli	a3,a3,0x8
    25e2:	c226                	sw	s1,4(sp)
    25e4:	c606                	sw	ra,12(sp)
    25e6:	0ff67613          	zext.b	a2,a2
    25ea:	9836                	add	a6,a6,a3
    25ec:	67a9                	lui	a5,0xa
    25ee:	c3c8                	sw	a0,4(a5)
    25f0:	9832                	add	a6,a6,a2
    25f2:	67a9                	lui	a5,0xa
    25f4:	0107a023          	sw	a6,0(a5) # 0xa000
    25f8:	84ae                	mv	s1,a1
    25fa:	3b09                	jal	0x230c
    25fc:	85a2                	mv	a1,s0
    25fe:	4422                	lw	s0,8(sp)
    2600:	40b2                	lw	ra,12(sp)
    2602:	8526                	mv	a0,s1
    2604:	4492                	lw	s1,4(sp)
    2606:	0141                	addi	sp,sp,16
    2608:	b30d                	j	0x232a

Disassembly of section .text.timer_counter:

0000260a <.text.timer_counter>:
    260a:	67b1                	lui	a5,0xc
    260c:	4bc8                	lw	a0,20(a5)
    260e:	8082                	ret

Disassembly of section .text.timer_event:

00002610 <.text.timer_event>:
    2610:	67b1                	lui	a5,0xc
    2612:	4f88                	lw	a0,24(a5)
    2614:	8082                	ret

Disassembly of section .text.timer_clear:

00002616 <.text.timer_clear>:
    2616:	67b1                	lui	a5,0xc
    2618:	4705                	li	a4,1
    261a:	c798                	sw	a4,8(a5)
    261c:	67b1                	lui	a5,0xc
    261e:	cfd8                	sw	a4,28(a5)
    2620:	8082                	ret

Disassembly of section .text.timer_enabled:

00002622 <.text.timer_enabled>:
    2622:	67b1                	lui	a5,0xc
    2624:	c7c8                	sw	a0,12(a5)
    2626:	8082                	ret

Disassembly of section .text.timer_conf:

00002628 <.text.timer_conf>:
    2628:	1141                	addi	sp,sp,-16
    262a:	c606                	sw	ra,12(sp)
    262c:	67b1                	lui	a5,0xc
    262e:	c388                	sw	a0,0(a5)
    2630:	c3cc                	sw	a1,4(a5)
    2632:	67b1                	lui	a5,0xc
    2634:	cb90                	sw	a2,16(a5)
    2636:	08000613          	li	a2,128
    263a:	6589                	lui	a1,0x2
    263c:	20058593          	addi	a1,a1,512 # 0x2200
    2640:	30559073          	csrw	mtvec,a1
    2644:	30046073          	csrsi	mstatus,8
    2648:	30462073          	csrs	mie,a2
    264c:	37e9                	jal	0x2616
    264e:	40b2                	lw	ra,12(sp)
    2650:	67b1                	lui	a5,0xc
    2652:	4705                	li	a4,1
    2654:	c7d8                	sw	a4,12(a5)
    2656:	0141                	addi	sp,sp,16
    2658:	8082                	ret

Disassembly of section .text.usb_connected:

0000265a <.text.usb_connected>:
    265a:	67b9                	lui	a5,0xe
    265c:	47c8                	lw	a0,12(a5)
    265e:	8905                	andi	a0,a0,1
    2660:	8082                	ret

Disassembly of section .text.usb_conf:

00002662 <.text.usb_conf>:
    2662:	67b9                	lui	a5,0xe
    2664:	6739                	lui	a4,0xe
    2666:	c388                	sw	a0,0(a5)
    2668:	0731                	addi	a4,a4,12 # 0xe00c
    266a:	431c                	lw	a5,0(a4)
    266c:	8b85                	andi	a5,a5,1
    266e:	dff5                	beqz	a5,0x266a
    2670:	8082                	ret

Disassembly of section .text.usb_rw:

00002672 <.text.usb_rw>:
    2672:	67b9                	lui	a5,0xe
    2674:	c788                	sw	a0,8(a5)
    2676:	67b9                	lui	a5,0xe
    2678:	07b1                	addi	a5,a5,12 # 0xe00c
    267a:	4709                	li	a4,2
    267c:	4394                	lw	a3,0(a5)
    267e:	fee68fe3          	beq	a3,a4,0x267c
    2682:	c398                	sw	a4,0(a5)
    2684:	67b9                	lui	a5,0xe
    2686:	43c8                	lw	a0,4(a5)
    2688:	8082                	ret

Disassembly of section .text.gpio_write:

0000268a <.text.gpio_write>:
    268a:	67c1                	lui	a5,0x10
    268c:	c3c8                	sw	a0,4(a5)
    268e:	8082                	ret

Disassembly of section .text.gpio_read:

00002690 <.text.gpio_read>:
    2690:	67c1                	lui	a5,0x10
    2692:	4388                	lw	a0,0(a5)
    2694:	0542                	slli	a0,a0,0x10
    2696:	8141                	srli	a0,a0,0x10
    2698:	8082                	ret

Disassembly of section .text.instr_mem_write:

0000269a <.text.instr_mem_write>:
    269a:	050a                	slli	a0,a0,0x2
    269c:	6791                	lui	a5,0x4
    269e:	97aa                	add	a5,a5,a0
    26a0:	c38c                	sw	a1,0(a5)
    26a2:	8082                	ret

Disassembly of section .text.uart_main:

000026a4 <.text.uart_main>:
    26a4:	1141                	addi	sp,sp,-16
    26a6:	6785                	lui	a5,0x1
    26a8:	c422                	sw	s0,8(sp)
    26aa:	c226                	sw	s1,4(sp)
    26ac:	c606                	sw	ra,12(sp)
    26ae:	45778793          	addi	a5,a5,1111 # 0x1457
    26b2:	6719                	lui	a4,0x6
    26b4:	c31c                	sw	a5,0(a4)
    26b6:	6441                	lui	s0,0x10
    26b8:	6799                	lui	a5,0x6
    26ba:	0007a223          	sw	zero,4(a5) # 0x6004
    26be:	64c1                	lui	s1,0x10
    26c0:	0411                	addi	s0,s0,4 # 0x10004
    26c2:	3ee1                	jal	0x229a
    26c4:	c008                	sw	a0,0(s0)
    26c6:	4088                	lw	a0,0(s1)
    26c8:	0ff57513          	zext.b	a0,a0
    26cc:	36e5                	jal	0x22b4
    26ce:	bfd5                	j	0x26c2

Disassembly of section .text.uart_interrupt:

000026d0 <.text.uart_interrupt>:
    26d0:	8082                	ret

Disassembly of section .text.i2c_main:

000026d2 <.text.i2c_main>:
    26d2:	1141                	addi	sp,sp,-16
    26d4:	c422                	sw	s0,8(sp)
    26d6:	c226                	sw	s1,4(sp)
    26d8:	c04a                	sw	s2,0(sp)
    26da:	c606                	sw	ra,12(sp)
    26dc:	67a1                	lui	a5,0x8
    26de:	07b00713          	li	a4,123
    26e2:	6941                	lui	s2,0x10
    26e4:	6441                	lui	s0,0x10
    26e6:	c3d8                	sw	a4,4(a5)
    26e8:	fff90493          	addi	s1,s2,-1 # 0xffff
    26ec:	0411                	addi	s0,s0,4 # 0x10004
    26ee:	00092503          	lw	a0,0(s2)
    26f2:	4589                	li	a1,2
    26f4:	8d65                	and	a0,a0,s1
    26f6:	3ef9                	jal	0x22d4
    26f8:	4509                	li	a0,2
    26fa:	3edd                	jal	0x22f0
    26fc:	8d65                	and	a0,a0,s1
    26fe:	c008                	sw	a0,0(s0)
    2700:	b7fd                	j	0x26ee

Disassembly of section .text.i2c_interrupt:

00002702 <.text.i2c_interrupt>:
    2702:	8082                	ret

Disassembly of section .text.qspi_main:

00002704 <.text.qspi_main>:
    2704:	8082                	ret

Disassembly of section .text.qspi_interrupt:

00002706 <.text.qspi_interrupt>:
    2706:	8082                	ret

Disassembly of section .text.timer_main:

00002708 <.text.timer_main>:
    2708:	1101                	addi	sp,sp,-32
    270a:	653d                	lui	a0,0xf
    270c:	cc22                	sw	s0,24(sp)
    270e:	c84a                	sw	s2,16(sp)
    2710:	4605                	li	a2,1
    2712:	4581                	li	a1,0
    2714:	a5f50513          	addi	a0,a0,-1441 # 0xea5f
    2718:	6441                	lui	s0,0x10
    271a:	6931                	lui	s2,0xc
    271c:	ca26                	sw	s1,20(sp)
    271e:	c64e                	sw	s3,12(sp)
    2720:	ce06                	sw	ra,28(sp)
    2722:	3719                	jal	0x2628
    2724:	fff40493          	addi	s1,s0,-1 # 0xffff
    2728:	0911                	addi	s2,s2,4 # 0xc004
    272a:	04802703          	lw	a4,72(zero) # 0x48
    272e:	401c                	lw	a5,0(s0)
    2730:	8fe5                	and	a5,a5,s1
    2732:	fee78ee3          	beq	a5,a4,0x272e
    2736:	401c                	lw	a5,0(s0)
    2738:	8fe5                	and	a5,a5,s1
    273a:	00f92023          	sw	a5,0(s2)
    273e:	3de1                	jal	0x2616
    2740:	401c                	lw	a5,0(s0)
    2742:	8fe5                	and	a5,a5,s1
    2744:	04f02423          	sw	a5,72(zero) # 0x48
    2748:	b7cd                	j	0x272a

Disassembly of section .text.timer_interrupt:

0000274a <.text.timer_interrupt>:
    274a:	0ec05683          	lhu	a3,236(zero) # 0xec
    274e:	6741                	lui	a4,0x10
    2750:	c354                	sw	a3,4(a4)
    2752:	0ec02703          	lw	a4,236(zero) # 0xec
    2756:	0705                	addi	a4,a4,1 # 0x10001
    2758:	0ee02623          	sw	a4,236(zero) # 0xec
    275c:	8082                	ret

Disassembly of section .text.gpio_main:

0000275e <.text.gpio_main>:
    275e:	66c1                	lui	a3,0x10
    2760:	67c1                	lui	a5,0x10
    2762:	fff68613          	addi	a2,a3,-1 # 0xffff
    2766:	0791                	addi	a5,a5,4 # 0x10004
    2768:	4298                	lw	a4,0(a3)
    276a:	8f71                	and	a4,a4,a2
    276c:	c398                	sw	a4,0(a5)
    276e:	bfed                	j	0x2768

Disassembly of section .text.gpio_interrupt:

00002770 <.text.gpio_interrupt>:
    2770:	8082                	ret

Disassembly of section .text.usb_main:

00002772 <.text.usb_main>:
    2772:	7139                	addi	sp,sp,-64
    2774:	d84a                	sw	s2,48(sp)
    2776:	d64e                	sw	s3,44(sp)
    2778:	4605                	li	a2,1
    277a:	4581                	li	a1,0
    277c:	557d                	li	a0,-1
    277e:	6939                	lui	s2,0xe
    2780:	69c1                	lui	s3,0x10
    2782:	dc22                	sw	s0,56(sp)
    2784:	da26                	sw	s1,52(sp)
    2786:	d452                	sw	s4,40(sp)
    2788:	d256                	sw	s5,36(sp)
    278a:	d05a                	sw	s6,32(sp)
    278c:	ce5e                	sw	s7,28(sp)
    278e:	de06                	sw	ra,60(sp)
    2790:	cc62                	sw	s8,24(sp)
    2792:	ca66                	sw	s9,20(sp)
    2794:	c86a                	sw	s10,16(sp)
    2796:	c66e                	sw	s11,12(sp)
    2798:	6ac1                	lui	s5,0x10
    279a:	3579                	jal	0x2628
    279c:	0931                	addi	s2,s2,12 # 0xe00c
    279e:	0991                	addi	s3,s3,4 # 0x10004
    27a0:	4b91                	li	s7,4
    27a2:	000aa783          	lw	a5,0(s5) # 0x10000
    27a6:	0e002023          	sw	zero,224(zero) # 0xe0
    27aa:	0ff7f793          	zext.b	a5,a5
    27ae:	0ef02423          	sw	a5,232(zero) # 0xe8
    27b2:	e381                	bnez	a5,0x27b2
    27b4:	0dc02783          	lw	a5,220(zero) # 0xdc
    27b8:	c399                	beqz	a5,0x27be
    27ba:	4501                	li	a0,0
    27bc:	355d                	jal	0x2662
    27be:	0e002783          	lw	a5,224(zero) # 0xe0
    27c2:	0cf02e23          	sw	a5,220(zero) # 0xdc
    27c6:	00092703          	lw	a4,0(s2)
    27ca:	07a2                	slli	a5,a5,0x8
    27cc:	8b05                	andi	a4,a4,1
    27ce:	97ba                	add	a5,a5,a4
    27d0:	07c2                	slli	a5,a5,0x10
    27d2:	83c1                	srli	a5,a5,0x10
    27d4:	00f9a023          	sw	a5,0(s3)
    27d8:	0e002783          	lw	a5,224(zero) # 0xe0
    27dc:	05778c63          	beq	a5,s7,0x2834
    27e0:	04fbe163          	bltu	s7,a5,0x2822
    27e4:	4705                	li	a4,1
    27e6:	04e78163          	beq	a5,a4,0x2828
    27ea:	4709                	li	a4,2
    27ec:	fae79be3          	bne	a5,a4,0x27a2
    27f0:	4501                	li	a0,0
    27f2:	3541                	jal	0x2672
    27f4:	4c81                	li	s9,0
    27f6:	14000d13          	li	s10,320
    27fa:	0b400d93          	li	s11,180
    27fe:	4c01                	li	s8,0
    2800:	0e402503          	lw	a0,228(zero) # 0xe4
    2804:	9566                	add	a0,a0,s9
    2806:	9562                	add	a0,a0,s8
    2808:	0c05                	addi	s8,s8,1
    280a:	35a5                	jal	0x2672
    280c:	ffac1ae3          	bne	s8,s10,0x2800
    2810:	0c85                	addi	s9,s9,1
    2812:	ffbc96e3          	bne	s9,s11,0x27fe
    2816:	0e402783          	lw	a5,228(zero) # 0xe4
    281a:	0785                	addi	a5,a5,1
    281c:	0ef02223          	sw	a5,228(zero) # 0xe4
    2820:	b749                	j	0x27a2
    2822:	4715                	li	a4,5
    2824:	f6e79fe3          	bne	a5,a4,0x27a2
    2828:	0e802503          	lw	a0,232(zero) # 0xe8
    282c:	3599                	jal	0x2672
    282e:	0ea02423          	sw	a0,232(zero) # 0xe8
    2832:	bf85                	j	0x27a2
    2834:	000aa783          	lw	a5,0(s5)
    2838:	07c2                	slli	a5,a5,0x10
    283a:	83c1                	srli	a5,a5,0x10
    283c:	83a1                	srli	a5,a5,0x8
    283e:	0ef02423          	sw	a5,232(zero) # 0xe8
    2842:	b785                	j	0x27a2

Disassembly of section .text.usb_interrupt:

00002844 <.text.usb_interrupt>:
    2844:	0e002703          	lw	a4,224(zero) # 0xe0
    2848:	4791                	li	a5,4
    284a:	00f71563          	bne	a4,a5,0x2854
    284e:	0e802503          	lw	a0,232(zero) # 0xe8
    2852:	b505                	j	0x2672
    2854:	8082                	ret

Disassembly of section .text.data_mem_main:

00002856 <.text.data_mem_main>:
    2856:	66c1                	lui	a3,0x10
    2858:	6741                	lui	a4,0x10
    285a:	fff68613          	addi	a2,a3,-1 # 0xffff
    285e:	0711                	addi	a4,a4,4 # 0x10004
    2860:	429c                	lw	a5,0(a3)
    2862:	8ff1                	and	a5,a5,a2
    2864:	0786                	slli	a5,a5,0x1
    2866:	0007d783          	lhu	a5,0(a5)
    286a:	c31c                	sw	a5,0(a4)
    286c:	bfd5                	j	0x2860
