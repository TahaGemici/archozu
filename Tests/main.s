
a.out:     file format elf32-littleriscv


Disassembly of section .text:

00002000 <.text>:
    2000:	67a1                	lui	a5,0x8
    2002:	07900713          	li	a4,121
    2006:	c3d8                	sw	a4,4(a5)
    2008:	6789                	lui	a5,0x2
    200a:	6719                	lui	a4,0x6
    200c:	86978793          	addi	a5,a5,-1943 # 0x1869
    2010:	c31c                	sw	a5,0(a4)
    2012:	6799                	lui	a5,0x6
    2014:	0007a223          	sw	zero,4(a5) # 0x6004
    2018:	4601                	li	a2,0
    201a:	55ed                	li	a1,-5
    201c:	06400513          	li	a0,100
    2020:	2d91                	jal	0x2674
    2022:	6741                	lui	a4,0x10
    2024:	66c1                	lui	a3,0x10
    2026:	0711                	addi	a4,a4,4 # 0x10004
    2028:	429c                	lw	a5,0(a3)
    202a:	fff7c793          	not	a5,a5
    202e:	07c2                	slli	a5,a5,0x10
    2030:	83c1                	srli	a5,a5,0x10
    2032:	c31c                	sw	a5,0(a4)
    2034:	bfd5                	j	0x2028
	...
    21fe:	0000                	unimp
    2200:	715d                	addi	sp,sp,-80
    2202:	de22                	sw	s0,60(sp)
    2204:	d03e                	sw	a5,32(sp)
    2206:	11802783          	lw	a5,280(zero) # 0x118
    220a:	d23a                	sw	a4,36(sp)
    220c:	c686                	sw	ra,76(sp)
    220e:	c496                	sw	t0,72(sp)
    2210:	c29a                	sw	t1,68(sp)
    2212:	c09e                	sw	t2,64(sp)
    2214:	dc26                	sw	s1,56(sp)
    2216:	da2a                	sw	a0,52(sp)
    2218:	d82e                	sw	a1,48(sp)
    221a:	d632                	sw	a2,44(sp)
    221c:	d436                	sw	a3,40(sp)
    221e:	ce42                	sw	a6,28(sp)
    2220:	cc46                	sw	a7,24(sp)
    2222:	ca72                	sw	t3,20(sp)
    2224:	c876                	sw	t4,16(sp)
    2226:	c67a                	sw	t5,12(sp)
    2228:	c47e                	sw	t6,8(sp)
    222a:	4709                	li	a4,2
    222c:	00e78f63          	beq	a5,a4,0x224a
    2230:	02f76463          	bltu	a4,a5,0x2258
    2234:	e789                	bnez	a5,0x223e
    2236:	4505                	li	a0,1
    2238:	20e9                	jal	0x2302
    223a:	10a02a23          	sw	a0,276(zero) # 0x114
    223e:	11402503          	lw	a0,276(zero) # 0x114
    2242:	4585                	li	a1,1
    2244:	fff54513          	not	a0,a0
    2248:	2879                	jal	0x22e6
    224a:	11404503          	lbu	a0,276(zero) # 0x114
    224e:	28a5                	jal	0x22c6
    2250:	28b1                	jal	0x22ac
    2252:	10a02a23          	sw	a0,276(zero) # 0x114
    2256:	a021                	j	0x225e
    2258:	470d                	li	a4,3
    225a:	fee78be3          	beq	a5,a4,0x2250
    225e:	11802783          	lw	a5,280(zero) # 0x118
    2262:	40b6                	lw	ra,76(sp)
    2264:	42a6                	lw	t0,72(sp)
    2266:	0785                	addi	a5,a5,1
    2268:	8b8d                	andi	a5,a5,3
    226a:	10f02c23          	sw	a5,280(zero) # 0x118
    226e:	5472                	lw	s0,60(sp)
    2270:	4316                	lw	t1,68(sp)
    2272:	4386                	lw	t2,64(sp)
    2274:	54e2                	lw	s1,56(sp)
    2276:	5552                	lw	a0,52(sp)
    2278:	55c2                	lw	a1,48(sp)
    227a:	5632                	lw	a2,44(sp)
    227c:	56a2                	lw	a3,40(sp)
    227e:	5712                	lw	a4,36(sp)
    2280:	5782                	lw	a5,32(sp)
    2282:	4872                	lw	a6,28(sp)
    2284:	48e2                	lw	a7,24(sp)
    2286:	4e52                	lw	t3,20(sp)
    2288:	4ec2                	lw	t4,16(sp)
    228a:	4f32                	lw	t5,12(sp)
    228c:	4fa2                	lw	t6,8(sp)
    228e:	6161                	addi	sp,sp,80
    2290:	30200073          	mret

Disassembly of section .text.uart_conf:

00002294 <.text.uart_conf>:
    2294:	039387b7          	lui	a5,0x3938
    2298:	70078793          	addi	a5,a5,1792 # 0x3938700
    229c:	02a7d7b3          	divu	a5,a5,a0
    22a0:	6719                	lui	a4,0x6
    22a2:	17fd                	addi	a5,a5,-1
    22a4:	c31c                	sw	a5,0(a4)
    22a6:	6799                	lui	a5,0x6
    22a8:	c3cc                	sw	a1,4(a5)
    22aa:	8082                	ret

Disassembly of section .text.uart_read:

000022ac <.text.uart_read>:
    22ac:	6799                	lui	a5,0x6
    22ae:	07c1                	addi	a5,a5,16 # 0x6010
    22b0:	4709                	li	a4,2
    22b2:	4394                	lw	a3,0(a5)
    22b4:	fee69fe3          	bne	a3,a4,0x22b2
    22b8:	6719                	lui	a4,0x6
    22ba:	4708                	lw	a0,8(a4)
    22bc:	0007a023          	sw	zero,0(a5)
    22c0:	0ff57513          	zext.b	a0,a0
    22c4:	8082                	ret

Disassembly of section .text.uart_write:

000022c6 <.text.uart_write>:
    22c6:	6799                	lui	a5,0x6
    22c8:	c7c8                	sw	a0,12(a5)
    22ca:	6799                	lui	a5,0x6
    22cc:	07c1                	addi	a5,a5,16 # 0x6010
    22ce:	4705                	li	a4,1
    22d0:	c398                	sw	a4,0(a5)
    22d2:	4398                	lw	a4,0(a5)
    22d4:	8b11                	andi	a4,a4,4
    22d6:	df75                	beqz	a4,0x22d2
    22d8:	4398                	lw	a4,0(a5)
    22da:	8b09                	andi	a4,a4,2
    22dc:	c398                	sw	a4,0(a5)
    22de:	8082                	ret

Disassembly of section .text.i2c_conf:

000022e0 <.text.i2c_conf>:
    22e0:	67a1                	lui	a5,0x8
    22e2:	c3c8                	sw	a0,4(a5)
    22e4:	8082                	ret

Disassembly of section .text.i2c_write:

000022e6 <.text.i2c_write>:
    22e6:	67a1                	lui	a5,0x8
    22e8:	c38c                	sw	a1,0(a5)
    22ea:	c7c8                	sw	a0,12(a5)
    22ec:	67a1                	lui	a5,0x8
    22ee:	07c1                	addi	a5,a5,16 # 0x8010
    22f0:	4705                	li	a4,1
    22f2:	c398                	sw	a4,0(a5)
    22f4:	4398                	lw	a4,0(a5)
    22f6:	8b09                	andi	a4,a4,2
    22f8:	df75                	beqz	a4,0x22f4
    22fa:	4398                	lw	a4,0(a5)
    22fc:	8b31                	andi	a4,a4,12
    22fe:	c398                	sw	a4,0(a5)
    2300:	8082                	ret

Disassembly of section .text.i2c_read:

00002302 <.text.i2c_read>:
    2302:	67a1                	lui	a5,0x8
    2304:	c388                	sw	a0,0(a5)
    2306:	4711                	li	a4,4
    2308:	07c1                	addi	a5,a5,16 # 0x8010
    230a:	c398                	sw	a4,0(a5)
    230c:	4398                	lw	a4,0(a5)
    230e:	8b21                	andi	a4,a4,8
    2310:	df75                	beqz	a4,0x230c
    2312:	4398                	lw	a4,0(a5)
    2314:	8b0d                	andi	a4,a4,3
    2316:	c398                	sw	a4,0(a5)
    2318:	67a1                	lui	a5,0x8
    231a:	4788                	lw	a0,8(a5)
    231c:	8082                	ret

Disassembly of section .text.qspi_wait:

0000231e <.text.qspi_wait>:
    231e:	67a9                	lui	a5,0xa
    2320:	02878793          	addi	a5,a5,40 # 0xa028
    2324:	4705                	li	a4,1
    2326:	4394                	lw	a3,0(a5)
    2328:	fee69fe3          	bne	a3,a4,0x2326
    232c:	67a9                	lui	a5,0xa
    232e:	02878793          	addi	a5,a5,40 # 0xa028
    2332:	4705                	li	a4,1
    2334:	4394                	lw	a3,0(a5)
    2336:	fee69fe3          	bne	a3,a4,0x2334
    233a:	8082                	ret

Disassembly of section .text.qspi_custom_x0:

0000233c <.text.qspi_custom_x0>:
    233c:	47f9                	li	a5,30
    233e:	02b7f733          	remu	a4,a5,a1
    2342:	02b7d7b3          	divu	a5,a5,a1
    2346:	00173713          	seqz	a4,a4
    234a:	8f99                	sub	a5,a5,a4
    234c:	80000737          	lui	a4,0x80000
    2350:	953a                	add	a0,a0,a4
    2352:	07e6                	slli	a5,a5,0x19
    2354:	97aa                	add	a5,a5,a0
    2356:	6729                	lui	a4,0xa
    2358:	c31c                	sw	a5,0(a4)
    235a:	b7d1                	j	0x231e

Disassembly of section .text.qspi_custom_write:

0000235c <.text.qspi_custom_write>:
    235c:	4891                	li	a7,4
    235e:	05169763          	bne	a3,a7,0x23ac
    2362:	30060613          	addi	a2,a2,768
    2366:	46f9                	li	a3,30
    2368:	0306f8b3          	remu	a7,a3,a6
    236c:	8305                	srli	a4,a4,0x1
    236e:	072e                	slli	a4,a4,0xb
    2370:	0306d6b3          	divu	a3,a3,a6
    2374:	0018b813          	seqz	a6,a7
    2378:	800008b7          	lui	a7,0x80000
    237c:	40088893          	addi	a7,a7,1024 # 0x80000400
    2380:	410686b3          	sub	a3,a3,a6
    2384:	fff78813          	addi	a6,a5,-1
    2388:	0842                	slli	a6,a6,0x10
    238a:	9846                	add	a6,a6,a7
    238c:	06e6                	slli	a3,a3,0x19
    238e:	9742                	add	a4,a4,a6
    2390:	9736                	add	a4,a4,a3
    2392:	9732                	add	a4,a4,a2
    2394:	66a9                	lui	a3,0xa
    2396:	078d                	addi	a5,a5,3
    2398:	6629                	lui	a2,0xa
    239a:	c2cc                	sw	a1,4(a3)
    239c:	9bf1                	andi	a5,a5,-4
    239e:	4681                	li	a3,0
    23a0:	0621                	addi	a2,a2,8 # 0xa008
    23a2:	00d79863          	bne	a5,a3,0x23b2
    23a6:	67a9                	lui	a5,0xa
    23a8:	c398                	sw	a4,0(a5)
    23aa:	bf95                	j	0x231e
    23ac:	06a2                	slli	a3,a3,0x8
    23ae:	9636                	add	a2,a2,a3
    23b0:	bf5d                	j	0x2366
    23b2:	00d50833          	add	a6,a0,a3
    23b6:	00082803          	lw	a6,0(a6)
    23ba:	00c685b3          	add	a1,a3,a2
    23be:	0691                	addi	a3,a3,4 # 0xa004
    23c0:	0105a023          	sw	a6,0(a1)
    23c4:	bff9                	j	0x23a2

Disassembly of section .text.qspi_custom_read:

000023c6 <.text.qspi_custom_read>:
    23c6:	1141                	addi	sp,sp,-16
    23c8:	c422                	sw	s0,8(sp)
    23ca:	c226                	sw	s1,4(sp)
    23cc:	843e                	mv	s0,a5
    23ce:	c606                	sw	ra,12(sp)
    23d0:	4791                	li	a5,4
    23d2:	84aa                	mv	s1,a0
    23d4:	04f69a63          	bne	a3,a5,0x2428
    23d8:	30060613          	addi	a2,a2,768
    23dc:	46f9                	li	a3,30
    23de:	0306f7b3          	remu	a5,a3,a6
    23e2:	80000537          	lui	a0,0x80000
    23e6:	8305                	srli	a4,a4,0x1
    23e8:	072e                	slli	a4,a4,0xb
    23ea:	0306d6b3          	divu	a3,a3,a6
    23ee:	0017b793          	seqz	a5,a5
    23f2:	8e9d                	sub	a3,a3,a5
    23f4:	fff40793          	addi	a5,s0,-1
    23f8:	07c2                	slli	a5,a5,0x10
    23fa:	97aa                	add	a5,a5,a0
    23fc:	06e6                	slli	a3,a3,0x19
    23fe:	97ba                	add	a5,a5,a4
    2400:	00f68733          	add	a4,a3,a5
    2404:	67a9                	lui	a5,0xa
    2406:	9732                	add	a4,a4,a2
    2408:	c3cc                	sw	a1,4(a5)
    240a:	67a9                	lui	a5,0xa
    240c:	c398                	sw	a4,0(a5)
    240e:	3f01                	jal	0x231e
    2410:	040d                	addi	s0,s0,3
    2412:	6729                	lui	a4,0xa
    2414:	9871                	andi	s0,s0,-4
    2416:	4781                	li	a5,0
    2418:	0721                	addi	a4,a4,8 # 0xa008
    241a:	00f41a63          	bne	s0,a5,0x242e
    241e:	40b2                	lw	ra,12(sp)
    2420:	4422                	lw	s0,8(sp)
    2422:	4492                	lw	s1,4(sp)
    2424:	0141                	addi	sp,sp,16
    2426:	8082                	ret
    2428:	06a2                	slli	a3,a3,0x8
    242a:	9636                	add	a2,a2,a3
    242c:	bf45                	j	0x23dc
    242e:	00e786b3          	add	a3,a5,a4
    2432:	4290                	lw	a2,0(a3)
    2434:	00f486b3          	add	a3,s1,a5
    2438:	0791                	addi	a5,a5,4 # 0xa004
    243a:	c290                	sw	a2,0(a3)
    243c:	bff9                	j	0x241a

Disassembly of section .text.s25fl128s_wren:

0000243e <.text.s25fl128s_wren>:
    243e:	800007b7          	lui	a5,0x80000
    2442:	0799                	addi	a5,a5,6 # 0x80000006
    2444:	6729                	lui	a4,0xa
    2446:	c31c                	sw	a5,0(a4)
    2448:	bdd9                	j	0x231e

Disassembly of section .text.s25fl128s_wrdi:

0000244a <.text.s25fl128s_wrdi>:
    244a:	800007b7          	lui	a5,0x80000
    244e:	0791                	addi	a5,a5,4 # 0x80000004
    2450:	6729                	lui	a4,0xa
    2452:	c31c                	sw	a5,0(a4)
    2454:	b5e9                	j	0x231e

Disassembly of section .text.s25fl128s_clsr:

00002456 <.text.s25fl128s_clsr>:
    2456:	800007b7          	lui	a5,0x80000
    245a:	03078793          	addi	a5,a5,48 # 0x80000030
    245e:	6729                	lui	a4,0xa
    2460:	c31c                	sw	a5,0(a4)
    2462:	bd75                	j	0x231e

Disassembly of section .text.s25fl128s_reset:

00002464 <.text.s25fl128s_reset>:
    2464:	800007b7          	lui	a5,0x80000
    2468:	0f078793          	addi	a5,a5,240 # 0x800000f0
    246c:	6729                	lui	a4,0xa
    246e:	c31c                	sw	a5,0(a4)
    2470:	b57d                	j	0x231e

Disassembly of section .text.s25fl128s_rdid:

00002472 <.text.s25fl128s_rdid>:
    2472:	08500813          	li	a6,133
    2476:	02000793          	li	a5,32
    247a:	4701                	li	a4,0
    247c:	4685                	li	a3,1
    247e:	09f00613          	li	a2,159
    2482:	4581                	li	a1,0
    2484:	b789                	j	0x23c6

Disassembly of section .text.s25fl128s_rdsr1:

00002486 <.text.s25fl128s_rdsr1>:
    2486:	08500813          	li	a6,133
    248a:	4785                	li	a5,1
    248c:	4701                	li	a4,0
    248e:	4685                	li	a3,1
    2490:	4615                	li	a2,5
    2492:	4581                	li	a1,0
    2494:	bf0d                	j	0x23c6

Disassembly of section .text.s25fl128s_rdsr2:

00002496 <.text.s25fl128s_rdsr2>:
    2496:	08500813          	li	a6,133
    249a:	4785                	li	a5,1
    249c:	4701                	li	a4,0
    249e:	4685                	li	a3,1
    24a0:	461d                	li	a2,7
    24a2:	4581                	li	a1,0
    24a4:	b70d                	j	0x23c6

Disassembly of section .text.s25fl128s_rdcr:

000024a6 <.text.s25fl128s_rdcr>:
    24a6:	08500813          	li	a6,133
    24aa:	4785                	li	a5,1
    24ac:	4701                	li	a4,0
    24ae:	4685                	li	a3,1
    24b0:	03500613          	li	a2,53
    24b4:	4581                	li	a1,0
    24b6:	bf01                	j	0x23c6

Disassembly of section .text.s25fl128s_res:

000024b8 <.text.s25fl128s_res>:
    24b8:	03200813          	li	a6,50
    24bc:	4785                	li	a5,1
    24be:	4761                	li	a4,24
    24c0:	4685                	li	a3,1
    24c2:	0ab00613          	li	a2,171
    24c6:	4581                	li	a1,0
    24c8:	bdfd                	j	0x23c6

Disassembly of section .text.s25fl128s_read_id:

000024ca <.text.s25fl128s_read_id>:
    24ca:	08500813          	li	a6,133
    24ce:	4789                	li	a5,2
    24d0:	4761                	li	a4,24
    24d2:	4685                	li	a3,1
    24d4:	09000613          	li	a2,144
    24d8:	b5fd                	j	0x23c6

Disassembly of section .text.s25fl128s_read:

000024da <.text.s25fl128s_read>:
    24da:	87b2                	mv	a5,a2
    24dc:	03200813          	li	a6,50
    24e0:	4761                	li	a4,24
    24e2:	4685                	li	a3,1
    24e4:	460d                	li	a2,3
    24e6:	b5c5                	j	0x23c6

Disassembly of section .text.s25fl128s_wrr:

000024e8 <.text.s25fl128s_wrr>:
    24e8:	08500813          	li	a6,133
    24ec:	4789                	li	a5,2
    24ee:	4701                	li	a4,0
    24f0:	4685                	li	a3,1
    24f2:	4605                	li	a2,1
    24f4:	4581                	li	a1,0
    24f6:	b59d                	j	0x235c

Disassembly of section .text.s25fl128s_se:

000024f8 <.text.s25fl128s_se>:
    24f8:	08500813          	li	a6,133
    24fc:	478d                	li	a5,3
    24fe:	4701                	li	a4,0
    2500:	4685                	li	a3,1
    2502:	0d800613          	li	a2,216
    2506:	4581                	li	a1,0
    2508:	bd91                	j	0x235c

Disassembly of section .text.s25fl128s_pp:

0000250a <.text.s25fl128s_pp>:
    250a:	87b2                	mv	a5,a2
    250c:	08500813          	li	a6,133
    2510:	4761                	li	a4,24
    2512:	4685                	li	a3,1
    2514:	4609                	li	a2,2
    2516:	b599                	j	0x235c

Disassembly of section .text.s25fl128s_dor:

00002518 <.text.s25fl128s_dor>:
    2518:	87b2                	mv	a5,a2
    251a:	06800813          	li	a6,104
    251e:	02000713          	li	a4,32
    2522:	4689                	li	a3,2
    2524:	03b00613          	li	a2,59
    2528:	bd79                	j	0x23c6

Disassembly of section .text.s25fl128s_qor:

0000252a <.text.s25fl128s_qor>:
    252a:	87b2                	mv	a5,a2
    252c:	06800813          	li	a6,104
    2530:	02000713          	li	a4,32
    2534:	4691                	li	a3,4
    2536:	06b00613          	li	a2,107
    253a:	b571                	j	0x23c6

Disassembly of section .text.s25fl128s_qpp:

0000253c <.text.s25fl128s_qpp>:
    253c:	87b2                	mv	a5,a2
    253e:	05000813          	li	a6,80
    2542:	4761                	li	a4,24
    2544:	4691                	li	a3,4
    2546:	03200613          	li	a2,50
    254a:	bd09                	j	0x235c

Disassembly of section .text.mt25ql256aba_write_disable:

0000254c <.text.mt25ql256aba_write_disable>:
    254c:	bdfd                	j	0x244a

Disassembly of section .text.mt25ql256aba_write_enable:

0000254e <.text.mt25ql256aba_write_enable>:
    254e:	bdc5                	j	0x243e

Disassembly of section .text.mt25ql256aba_reset_enable:

00002550 <.text.mt25ql256aba_reset_enable>:
    2550:	800007b7          	lui	a5,0x80000
    2554:	06678793          	addi	a5,a5,102 # 0x80000066
    2558:	6729                	lui	a4,0xa
    255a:	c31c                	sw	a5,0(a4)
    255c:	b3c9                	j	0x231e

Disassembly of section .text.mt25ql256aba_reset_memory:

0000255e <.text.mt25ql256aba_reset_memory>:
    255e:	800007b7          	lui	a5,0x80000
    2562:	09978793          	addi	a5,a5,153 # 0x80000099
    2566:	6729                	lui	a4,0xa
    2568:	c31c                	sw	a5,0(a4)
    256a:	bb55                	j	0x231e

Disassembly of section .text.mt25ql256aba_read:

0000256c <.text.mt25ql256aba_read>:
    256c:	87b2                	mv	a5,a2
    256e:	08500813          	li	a6,133
    2572:	4761                	li	a4,24
    2574:	4685                	li	a3,1
    2576:	460d                	li	a2,3
    2578:	b5b9                	j	0x23c6

Disassembly of section .text.mt25ql256aba_page_program:

0000257a <.text.mt25ql256aba_page_program>:
    257a:	bf41                	j	0x250a

Disassembly of section .text.mt25ql256aba_4KiB_sector_erase:

0000257c <.text.mt25ql256aba_4KiB_sector_erase>:
    257c:	08500813          	li	a6,133
    2580:	478d                	li	a5,3
    2582:	4701                	li	a4,0
    2584:	4685                	li	a3,1
    2586:	02000613          	li	a2,32
    258a:	4581                	li	a1,0
    258c:	bbc1                	j	0x235c

Disassembly of section .text.mt25ql256aba_32KiB_sector_erase:

0000258e <.text.mt25ql256aba_32KiB_sector_erase>:
    258e:	08500813          	li	a6,133
    2592:	478d                	li	a5,3
    2594:	4701                	li	a4,0
    2596:	4685                	li	a3,1
    2598:	05200613          	li	a2,82
    259c:	4581                	li	a1,0
    259e:	bb7d                	j	0x235c

Disassembly of section .text.mt25ql256aba_sector_erase:

000025a0 <.text.mt25ql256aba_sector_erase>:
    25a0:	bfa1                	j	0x24f8

Disassembly of section .text.mt25ql256aba_read_id:

000025a2 <.text.mt25ql256aba_read_id>:
    25a2:	87ae                	mv	a5,a1
    25a4:	08500813          	li	a6,133
    25a8:	4701                	li	a4,0
    25aa:	4685                	li	a3,1
    25ac:	09f00613          	li	a2,159
    25b0:	4581                	li	a1,0
    25b2:	bd11                	j	0x23c6

Disassembly of section .text.mt25ql256aba_read_status_register:

000025b4 <.text.mt25ql256aba_read_status_register>:
    25b4:	bdc9                	j	0x2486

Disassembly of section .text.mt25ql256aba_read_flag_status_register:

000025b6 <.text.mt25ql256aba_read_flag_status_register>:
    25b6:	08500813          	li	a6,133
    25ba:	4785                	li	a5,1
    25bc:	4701                	li	a4,0
    25be:	4685                	li	a3,1
    25c0:	07000613          	li	a2,112
    25c4:	4581                	li	a1,0
    25c6:	b501                	j	0x23c6

Disassembly of section .text.mt25ql256aba_read_nonvolatile_configuration_register:

000025c8 <.text.mt25ql256aba_read_nonvolatile_configuration_register>:
    25c8:	08500813          	li	a6,133
    25cc:	4789                	li	a5,2
    25ce:	4701                	li	a4,0
    25d0:	4685                	li	a3,1
    25d2:	0b500613          	li	a2,181
    25d6:	4581                	li	a1,0
    25d8:	b3fd                	j	0x23c6

Disassembly of section .text.mt25ql256aba_read_volatile_configuration_register:

000025da <.text.mt25ql256aba_read_volatile_configuration_register>:
    25da:	08500813          	li	a6,133
    25de:	4785                	li	a5,1
    25e0:	4701                	li	a4,0
    25e2:	4685                	li	a3,1
    25e4:	08500613          	li	a2,133
    25e8:	4581                	li	a1,0
    25ea:	bbf1                	j	0x23c6

Disassembly of section .text.mt25ql256aba_write_status_register:

000025ec <.text.mt25ql256aba_write_status_register>:
    25ec:	08500813          	li	a6,133
    25f0:	4785                	li	a5,1
    25f2:	4701                	li	a4,0
    25f4:	4685                	li	a3,1
    25f6:	4605                	li	a2,1
    25f8:	4581                	li	a1,0
    25fa:	b38d                	j	0x235c

Disassembly of section .text.mt25ql256aba_write_nonvolatile_configuration_register:

000025fc <.text.mt25ql256aba_write_nonvolatile_configuration_register>:
    25fc:	08500813          	li	a6,133
    2600:	4789                	li	a5,2
    2602:	4701                	li	a4,0
    2604:	4685                	li	a3,1
    2606:	0b100613          	li	a2,177
    260a:	4581                	li	a1,0
    260c:	bb81                	j	0x235c

Disassembly of section .text.mt25ql256aba_write_volatile_configuration_register:

0000260e <.text.mt25ql256aba_write_volatile_configuration_register>:
    260e:	08500813          	li	a6,133
    2612:	4785                	li	a5,1
    2614:	4701                	li	a4,0
    2616:	4685                	li	a3,1
    2618:	08100613          	li	a2,129
    261c:	4581                	li	a1,0
    261e:	bb3d                	j	0x235c

Disassembly of section .text.mt25ql256aba_write_enhanced_volatile_configuration_register:

00002620 <.text.mt25ql256aba_write_enhanced_volatile_configuration_register>:
    2620:	08500813          	li	a6,133
    2624:	4785                	li	a5,1
    2626:	4701                	li	a4,0
    2628:	4685                	li	a3,1
    262a:	06100613          	li	a2,97
    262e:	4581                	li	a1,0
    2630:	b335                	j	0x235c

Disassembly of section .text.mt25ql256aba_dual_output_fast_read:

00002632 <.text.mt25ql256aba_dual_output_fast_read>:
    2632:	87b2                	mv	a5,a2
    2634:	08500813          	li	a6,133
    2638:	02000713          	li	a4,32
    263c:	4689                	li	a3,2
    263e:	03b00613          	li	a2,59
    2642:	b351                	j	0x23c6

Disassembly of section .text.mt25ql256aba_quad_output_fast_read:

00002644 <.text.mt25ql256aba_quad_output_fast_read>:
    2644:	87b2                	mv	a5,a2
    2646:	08500813          	li	a6,133
    264a:	02000713          	li	a4,32
    264e:	4691                	li	a3,4
    2650:	06b00613          	li	a2,107
    2654:	bb8d                	j	0x23c6

Disassembly of section .text.timer_counter:

00002656 <.text.timer_counter>:
    2656:	67b1                	lui	a5,0xc
    2658:	4bc8                	lw	a0,20(a5)
    265a:	8082                	ret

Disassembly of section .text.timer_event:

0000265c <.text.timer_event>:
    265c:	67b1                	lui	a5,0xc
    265e:	4f88                	lw	a0,24(a5)
    2660:	8082                	ret

Disassembly of section .text.timer_clear:

00002662 <.text.timer_clear>:
    2662:	67b1                	lui	a5,0xc
    2664:	4705                	li	a4,1
    2666:	c798                	sw	a4,8(a5)
    2668:	67b1                	lui	a5,0xc
    266a:	cfd8                	sw	a4,28(a5)
    266c:	8082                	ret

Disassembly of section .text.timer_enabled:

0000266e <.text.timer_enabled>:
    266e:	67b1                	lui	a5,0xc
    2670:	c7c8                	sw	a0,12(a5)
    2672:	8082                	ret

Disassembly of section .text.timer_conf:

00002674 <.text.timer_conf>:
    2674:	1141                	addi	sp,sp,-16
    2676:	c606                	sw	ra,12(sp)
    2678:	67b1                	lui	a5,0xc
    267a:	c388                	sw	a0,0(a5)
    267c:	c3cc                	sw	a1,4(a5)
    267e:	67b1                	lui	a5,0xc
    2680:	cb90                	sw	a2,16(a5)
    2682:	08000613          	li	a2,128
    2686:	6589                	lui	a1,0x2
    2688:	20058593          	addi	a1,a1,512 # 0x2200
    268c:	30559073          	csrw	mtvec,a1
    2690:	30046073          	csrsi	mstatus,8
    2694:	30462073          	csrs	mie,a2
    2698:	37e9                	jal	0x2662
    269a:	40b2                	lw	ra,12(sp)
    269c:	67b1                	lui	a5,0xc
    269e:	4705                	li	a4,1
    26a0:	c7d8                	sw	a4,12(a5)
    26a2:	0141                	addi	sp,sp,16
    26a4:	8082                	ret

Disassembly of section .text.delay_us:

000026a6 <.text.delay_us>:
    26a6:	7179                	addi	sp,sp,-48
    26a8:	d422                	sw	s0,40(sp)
    26aa:	6731                	lui	a4,0xc
    26ac:	0040                	addi	s0,sp,4
    26ae:	d606                	sw	ra,44(sp)
    26b0:	86a2                	mv	a3,s0
    26b2:	67b1                	lui	a5,0xc
    26b4:	0771                	addi	a4,a4,28 # 0xc01c
    26b6:	4390                	lw	a2,0(a5)
    26b8:	0791                	addi	a5,a5,4 # 0xc004
    26ba:	c290                	sw	a2,0(a3)
    26bc:	0691                	addi	a3,a3,4
    26be:	fee79ce3          	bne	a5,a4,0x26b6
    26c2:	fff50593          	addi	a1,a0,-1 # 0x7fffffff
    26c6:	4605                	li	a2,1
    26c8:	03b00513          	li	a0,59
    26cc:	3765                	jal	0x2674
    26ce:	4705                	li	a4,1
    26d0:	12e02a23          	sw	a4,308(zero) # 0x134
    26d4:	13402703          	lw	a4,308(zero) # 0x134
    26d8:	ff75                	bnez	a4,0x26d4
    26da:	6731                	lui	a4,0xc
    26dc:	67b1                	lui	a5,0xc
    26de:	0771                	addi	a4,a4,28 # 0xc01c
    26e0:	4014                	lw	a3,0(s0)
    26e2:	0411                	addi	s0,s0,4
    26e4:	c394                	sw	a3,0(a5)
    26e6:	0791                	addi	a5,a5,4 # 0xc004
    26e8:	fee79ce3          	bne	a5,a4,0x26e0
    26ec:	50b2                	lw	ra,44(sp)
    26ee:	5422                	lw	s0,40(sp)
    26f0:	6145                	addi	sp,sp,48
    26f2:	8082                	ret

Disassembly of section .text.usb_conf:

000026f4 <.text.usb_conf>:
    26f4:	67b9                	lui	a5,0xe
    26f6:	4398                	lw	a4,0(a5)
    26f8:	00a70963          	beq	a4,a0,0x270a
    26fc:	4715                	li	a4,5
    26fe:	00a77563          	bgeu	a4,a0,0x2708
    2702:	0007a023          	sw	zero,0(a5) # 0xe000
    2706:	8082                	ret
    2708:	c388                	sw	a0,0(a5)
    270a:	8082                	ret

Disassembly of section .text.usb_audio:

0000270c <.text.usb_audio>:
    270c:	67b9                	lui	a5,0xe
    270e:	c788                	sw	a0,8(a5)
    2710:	67b9                	lui	a5,0xe
    2712:	07b1                	addi	a5,a5,12 # 0xe00c
    2714:	4705                	li	a4,1
    2716:	c398                	sw	a4,0(a5)
    2718:	4398                	lw	a4,0(a5)
    271a:	ff7d                	bnez	a4,0x2718
    271c:	67b9                	lui	a5,0xe
    271e:	43c8                	lw	a0,4(a5)
    2720:	8082                	ret

Disassembly of section .text.usb_camera:

00002722 <.text.usb_camera>:
    2722:	67b9                	lui	a5,0xe
    2724:	c788                	sw	a0,8(a5)
    2726:	67b9                	lui	a5,0xe
    2728:	07b1                	addi	a5,a5,12 # 0xe00c
    272a:	4705                	li	a4,1
    272c:	c398                	sw	a4,0(a5)
    272e:	4398                	lw	a4,0(a5)
    2730:	ff7d                	bnez	a4,0x272e
    2732:	8082                	ret

Disassembly of section .text.usb_keyboard:

00002734 <.text.usb_keyboard>:
    2734:	67b9                	lui	a5,0xe
    2736:	c788                	sw	a0,8(a5)
    2738:	67b9                	lui	a5,0xe
    273a:	07b1                	addi	a5,a5,12 # 0xe00c
    273c:	4705                	li	a4,1
    273e:	c398                	sw	a4,0(a5)
    2740:	4398                	lw	a4,0(a5)
    2742:	ff7d                	bnez	a4,0x2740
    2744:	8082                	ret

Disassembly of section .text.usb_serial_read:

00002746 <.text.usb_serial_read>:
    2746:	67b9                	lui	a5,0xe
    2748:	07b1                	addi	a5,a5,12 # 0xe00c
    274a:	4398                	lw	a4,0(a5)
    274c:	df7d                	beqz	a4,0x274a
    274e:	0007a023          	sw	zero,0(a5)
    2752:	67b9                	lui	a5,0xe
    2754:	43c8                	lw	a0,4(a5)
    2756:	0ff57513          	zext.b	a0,a0
    275a:	8082                	ret

Disassembly of section .text.usb_serial_write:

0000275c <.text.usb_serial_write>:
    275c:	b7d9                	j	0x2722

Disassembly of section .text.usb_print_short:

0000275e <.text.usb_print_short>:
    275e:	1141                	addi	sp,sp,-16
    2760:	c422                	sw	s0,8(sp)
    2762:	c226                	sw	s1,4(sp)
    2764:	c04a                	sw	s2,0(sp)
    2766:	c606                	sw	ra,12(sp)
    2768:	842a                	mv	s0,a0
    276a:	4491                	li	s1,4
    276c:	03900913          	li	s2,57
    2770:	00c45793          	srli	a5,s0,0xc
    2774:	03078513          	addi	a0,a5,48 # 0xe030
    2778:	00a97463          	bgeu	s2,a0,0x2780
    277c:	03778513          	addi	a0,a5,55
    2780:	0412                	slli	s0,s0,0x4
    2782:	0442                	slli	s0,s0,0x10
    2784:	14fd                	addi	s1,s1,-1
    2786:	3f71                	jal	0x2722
    2788:	8041                	srli	s0,s0,0x10
    278a:	f0fd                	bnez	s1,0x2770
    278c:	40b2                	lw	ra,12(sp)
    278e:	4422                	lw	s0,8(sp)
    2790:	4492                	lw	s1,4(sp)
    2792:	4902                	lw	s2,0(sp)
    2794:	0141                	addi	sp,sp,16
    2796:	8082                	ret

Disassembly of section .text.usb_print_int:

00002798 <.text.usb_print_int>:
    2798:	1141                	addi	sp,sp,-16
    279a:	c422                	sw	s0,8(sp)
    279c:	842a                	mv	s0,a0
    279e:	8141                	srli	a0,a0,0x10
    27a0:	c606                	sw	ra,12(sp)
    27a2:	3f75                	jal	0x275e
    27a4:	01041513          	slli	a0,s0,0x10
    27a8:	4422                	lw	s0,8(sp)
    27aa:	40b2                	lw	ra,12(sp)
    27ac:	8141                	srli	a0,a0,0x10
    27ae:	0141                	addi	sp,sp,16
    27b0:	b77d                	j	0x275e

Disassembly of section .text.usb_print_newline:

000027b2 <.text.usb_print_newline>:
    27b2:	1141                	addi	sp,sp,-16
    27b4:	4535                	li	a0,13
    27b6:	c606                	sw	ra,12(sp)
    27b8:	37ad                	jal	0x2722
    27ba:	40b2                	lw	ra,12(sp)
    27bc:	4529                	li	a0,10
    27be:	0141                	addi	sp,sp,16
    27c0:	b78d                	j	0x2722

Disassembly of section .text.usb_read_short:

000027c2 <.text.usb_read_short>:
    27c2:	1101                	addi	sp,sp,-32
    27c4:	cc22                	sw	s0,24(sp)
    27c6:	c84a                	sw	s2,16(sp)
    27c8:	c64e                	sw	s3,12(sp)
    27ca:	ce06                	sw	ra,28(sp)
    27cc:	ca26                	sw	s1,20(sp)
    27ce:	4411                	li	s0,4
    27d0:	4501                	li	a0,0
    27d2:	4925                	li	s2,9
    27d4:	49bd                	li	s3,15
    27d6:	0512                	slli	a0,a0,0x4
    27d8:	01051493          	slli	s1,a0,0x10
    27dc:	37ad                	jal	0x2746
    27de:	fd050793          	addi	a5,a0,-48
    27e2:	0ff7f793          	zext.b	a5,a5
    27e6:	80c1                	srli	s1,s1,0x10
    27e8:	00f97c63          	bgeu	s2,a5,0x2800
    27ec:	fc950793          	addi	a5,a0,-55
    27f0:	0ff7f793          	zext.b	a5,a5
    27f4:	00f9f663          	bgeu	s3,a5,0x2800
    27f8:	fa950513          	addi	a0,a0,-87
    27fc:	0ff57793          	zext.b	a5,a0
    2800:	00978533          	add	a0,a5,s1
    2804:	0542                	slli	a0,a0,0x10
    2806:	147d                	addi	s0,s0,-1
    2808:	8141                	srli	a0,a0,0x10
    280a:	f471                	bnez	s0,0x27d6
    280c:	40f2                	lw	ra,28(sp)
    280e:	4462                	lw	s0,24(sp)
    2810:	44d2                	lw	s1,20(sp)
    2812:	4942                	lw	s2,16(sp)
    2814:	49b2                	lw	s3,12(sp)
    2816:	6105                	addi	sp,sp,32
    2818:	8082                	ret

Disassembly of section .text.usb_read_int:

0000281a <.text.usb_read_int>:
    281a:	1141                	addi	sp,sp,-16
    281c:	c606                	sw	ra,12(sp)
    281e:	c422                	sw	s0,8(sp)
    2820:	374d                	jal	0x27c2
    2822:	01051413          	slli	s0,a0,0x10
    2826:	3f71                	jal	0x27c2
    2828:	40b2                	lw	ra,12(sp)
    282a:	9522                	add	a0,a0,s0
    282c:	4422                	lw	s0,8(sp)
    282e:	0141                	addi	sp,sp,16
    2830:	8082                	ret

Disassembly of section .text.gpio_write:

00002832 <.text.gpio_write>:
    2832:	67c1                	lui	a5,0x10
    2834:	c3c8                	sw	a0,4(a5)
    2836:	8082                	ret

Disassembly of section .text.gpio_read:

00002838 <.text.gpio_read>:
    2838:	67c1                	lui	a5,0x10
    283a:	4388                	lw	a0,0(a5)
    283c:	0542                	slli	a0,a0,0x10
    283e:	8141                	srli	a0,a0,0x10
    2840:	8082                	ret

Disassembly of section .text.instr_mem_write:

00002842 <.text.instr_mem_write>:
    2842:	050a                	slli	a0,a0,0x2
    2844:	6791                	lui	a5,0x4
    2846:	97aa                	add	a5,a5,a0
    2848:	c38c                	sw	a1,0(a5)
    284a:	8082                	ret

Disassembly of section .text.uart_main:

0000284c <.text.uart_main>:
    284c:	1101                	addi	sp,sp,-32
    284e:	cc22                	sw	s0,24(sp)
    2850:	ca26                	sw	s1,20(sp)
    2852:	c84a                	sw	s2,16(sp)
    2854:	c64e                	sw	s3,12(sp)
    2856:	ce06                	sw	ra,28(sp)
    2858:	6799                	lui	a5,0x6
    285a:	0c700713          	li	a4,199
    285e:	c398                	sw	a4,0(a5)
    2860:	64c1                	lui	s1,0x10
    2862:	0007a223          	sw	zero,4(a5) # 0x6004
    2866:	4401                	li	s0,0
    2868:	4901                	li	s2,0
    286a:	69c1                	lui	s3,0x10
    286c:	0491                	addi	s1,s1,4 # 0x10004
    286e:	0009a503          	lw	a0,0(s3) # 0x10000
    2872:	02090363          	beqz	s2,0x2898
    2876:	0ff57513          	zext.b	a0,a0
    287a:	34b1                	jal	0x22c6
    287c:	f0047413          	andi	s0,s0,-256
    2880:	3435                	jal	0x22ac
    2882:	9522                	add	a0,a0,s0
    2884:	01051413          	slli	s0,a0,0x10
    2888:	8441                	srai	s0,s0,0x10
    288a:	01041793          	slli	a5,s0,0x10
    288e:	83c1                	srli	a5,a5,0x10
    2890:	00194913          	xori	s2,s2,1
    2894:	c09c                	sw	a5,0(s1)
    2896:	bfe1                	j	0x286e
    2898:	0542                	slli	a0,a0,0x10
    289a:	8141                	srli	a0,a0,0x10
    289c:	8121                	srli	a0,a0,0x8
    289e:	3425                	jal	0x22c6
    28a0:	3431                	jal	0x22ac
    28a2:	0ff47413          	zext.b	s0,s0
    28a6:	0522                	slli	a0,a0,0x8
    28a8:	942a                	add	s0,s0,a0
    28aa:	0442                	slli	s0,s0,0x10
    28ac:	bff1                	j	0x2888

Disassembly of section .text.uart_interrupt:

000028ae <.text.uart_interrupt>:
    28ae:	8082                	ret

Disassembly of section .text.i2c_main:

000028b0 <.text.i2c_main>:
    28b0:	1101                	addi	sp,sp,-32
    28b2:	cc22                	sw	s0,24(sp)
    28b4:	ca26                	sw	s1,20(sp)
    28b6:	c84a                	sw	s2,16(sp)
    28b8:	c64e                	sw	s3,12(sp)
    28ba:	c452                	sw	s4,8(sp)
    28bc:	ce06                	sw	ra,28(sp)
    28be:	67a1                	lui	a5,0x8
    28c0:	07b00713          	li	a4,123
    28c4:	69c1                	lui	s3,0x10
    28c6:	6941                	lui	s2,0x10
    28c8:	0007a4b7          	lui	s1,0x7a
    28cc:	c3d8                	sw	a4,4(a5)
    28ce:	fff98a13          	addi	s4,s3,-1 # 0xffff
    28d2:	0911                	addi	s2,s2,4 # 0x10004
    28d4:	12048493          	addi	s1,s1,288 # 0x7a120
    28d8:	02002783          	lw	a5,32(zero) # 0x20
    28dc:	c385                	beqz	a5,0x28fc
    28de:	0009a503          	lw	a0,0(s3)
    28e2:	4585                	li	a1,1
    28e4:	01457533          	and	a0,a0,s4
    28e8:	3afd                	jal	0x22e6
    28ea:	8526                	mv	a0,s1
    28ec:	3b6d                	jal	0x26a6
    28ee:	02002783          	lw	a5,32(zero) # 0x20
    28f2:	0017b793          	seqz	a5,a5
    28f6:	02f02023          	sw	a5,32(zero) # 0x20
    28fa:	bff9                	j	0x28d8
    28fc:	4505                	li	a0,1
    28fe:	3411                	jal	0x2302
    2900:	01457533          	and	a0,a0,s4
    2904:	00a92023          	sw	a0,0(s2)
    2908:	b7cd                	j	0x28ea

Disassembly of section .text.i2c_interrupt:

0000290a <.text.i2c_interrupt>:
    290a:	8082                	ret

Disassembly of section .text.qspi_main:

0000290c <.text.qspi_main>:
    290c:	7179                	addi	sp,sp,-48
    290e:	4515                	li	a0,5
    2910:	d606                	sw	ra,44(sp)
    2912:	d422                	sw	s0,40(sp)
    2914:	d226                	sw	s1,36(sp)
    2916:	d04a                	sw	s2,32(sp)
    2918:	ce4e                	sw	s3,28(sp)
    291a:	cc52                	sw	s4,24(sp)
    291c:	ca56                	sw	s5,20(sp)
    291e:	c85a                	sw	s6,16(sp)
    2920:	3bd1                	jal	0x26f4
    2922:	6741                	lui	a4,0x10
    2924:	66c1                	lui	a3,0x10
    2926:	fff70593          	addi	a1,a4,-1 # 0xffff
    292a:	0691                	addi	a3,a3,4 # 0x10004
    292c:	4505                	li	a0,1
    292e:	4809                	li	a6,2
    2930:	431c                	lw	a5,0(a4)
    2932:	00b7f633          	and	a2,a5,a1
    2936:	07c2                	slli	a5,a5,0x10
    2938:	c290                	sw	a2,0(a3)
    293a:	83c1                	srli	a5,a5,0x10
    293c:	dbf5                	beqz	a5,0x2930
    293e:	431c                	lw	a5,0(a4)
    2940:	07c2                	slli	a5,a5,0x10
    2942:	83c1                	srli	a5,a5,0x10
    2944:	ffed                	bnez	a5,0x293e
    2946:	06a60a63          	beq	a2,a0,0x29ba
    294a:	ff0613e3          	bne	a2,a6,0x2930
    294e:	4a05                	li	s4,1
    2950:	3d8d                	jal	0x27c2
    2952:	842a                	mv	s0,a0
    2954:	02000613          	li	a2,32
    2958:	4581                	li	a1,0
    295a:	0f400513          	li	a0,244
    295e:	2689                	jal	0x2ca0
    2960:	3cf9                	jal	0x243e
    2962:	02000613          	li	a2,32
    2966:	85a2                	mv	a1,s0
    2968:	0f400513          	li	a0,244
    296c:	3e79                	jal	0x250a
    296e:	0068                	addi	a0,sp,12
    2970:	c652                	sw	s4,12(sp)
    2972:	3e11                	jal	0x2486
    2974:	00c15503          	lhu	a0,12(sp)
    2978:	02040913          	addi	s2,s0,32
    297c:	0942                	slli	s2,s2,0x10
    297e:	33c5                	jal	0x275e
    2980:	02000613          	li	a2,32
    2984:	85a2                	mv	a1,s0
    2986:	0f400513          	li	a0,244
    298a:	396d                	jal	0x2644
    298c:	0f400993          	li	s3,244
    2990:	01095913          	srli	s2,s2,0x10
    2994:	8522                	mv	a0,s0
    2996:	33e1                	jal	0x275e
    2998:	03a00513          	li	a0,58
    299c:	3359                	jal	0x2722
    299e:	02000513          	li	a0,32
    29a2:	3341                	jal	0x2722
    29a4:	0009a503          	lw	a0,0(s3)
    29a8:	0411                	addi	s0,s0,4
    29aa:	0442                	slli	s0,s0,0x10
    29ac:	8041                	srli	s0,s0,0x10
    29ae:	33ed                	jal	0x2798
    29b0:	0991                	addi	s3,s3,4
    29b2:	3501                	jal	0x27b2
    29b4:	ff2410e3          	bne	s0,s2,0x2994
    29b8:	bf61                	j	0x2950
    29ba:	c202                	sw	zero,4(sp)
    29bc:	c402                	sw	zero,8(sp)
    29be:	3441                	jal	0x243e
    29c0:	0048                	addi	a0,sp,4
    29c2:	36f1                	jal	0x258e
    29c4:	47a2                	lw	a5,8(sp)
    29c6:	0807f793          	andi	a5,a5,128
    29ca:	cbb9                	beqz	a5,0x2a20
    29cc:	6941                	lui	s2,0x10
    29ce:	69c1                	lui	s3,0x10
    29d0:	4481                	li	s1,0
    29d2:	197d                	addi	s2,s2,-1 # 0xffff
    29d4:	0991                	addi	s3,s3,4 # 0x10004
    29d6:	6b11                	lui	s6,0x4
    29d8:	0f400413          	li	s0,244
    29dc:	02040a93          	addi	s5,s0,32
    29e0:	3d2d                	jal	0x281a
    29e2:	c008                	sw	a0,0(s0)
    29e4:	0411                	addi	s0,s0,4
    29e6:	ff541de3          	bne	s0,s5,0x29e0
    29ea:	3bb1                	jal	0x2746
    29ec:	3c89                	jal	0x243e
    29ee:	02000613          	li	a2,32
    29f2:	85a6                	mv	a1,s1
    29f4:	0f400513          	li	a0,244
    29f8:	3e09                	jal	0x250a
    29fa:	c402                	sw	zero,8(sp)
    29fc:	47a2                	lw	a5,8(sp)
    29fe:	0807f793          	andi	a5,a5,128
    2a02:	c395                	beqz	a5,0x2a26
    2a04:	4792                	lw	a5,4(sp)
    2a06:	02048493          	addi	s1,s1,32
    2a0a:	0785                	addi	a5,a5,1 # 0x8001
    2a0c:	c23e                	sw	a5,4(sp)
    2a0e:	0127f7b3          	and	a5,a5,s2
    2a12:	00f9a023          	sw	a5,0(s3)
    2a16:	fd6491e3          	bne	s1,s6,0x29d8
    2a1a:	00000067          	jr	zero # 0x0
    2a1e:	bf05                	j	0x294e
    2a20:	0028                	addi	a0,sp,8
    2a22:	3e51                	jal	0x25b6
    2a24:	b745                	j	0x29c4
    2a26:	0028                	addi	a0,sp,8
    2a28:	3679                	jal	0x25b6
    2a2a:	bfc9                	j	0x29fc

Disassembly of section .text.qspi_interrupt:

00002a2c <.text.qspi_interrupt>:
    2a2c:	8082                	ret

Disassembly of section .text.timer_main:

00002a2e <.text.timer_main>:
    2a2e:	1101                	addi	sp,sp,-32
    2a30:	653d                	lui	a0,0xf
    2a32:	cc22                	sw	s0,24(sp)
    2a34:	c84a                	sw	s2,16(sp)
    2a36:	4605                	li	a2,1
    2a38:	4581                	li	a1,0
    2a3a:	a5f50513          	addi	a0,a0,-1441 # 0xea5f
    2a3e:	6441                	lui	s0,0x10
    2a40:	6931                	lui	s2,0xc
    2a42:	ca26                	sw	s1,20(sp)
    2a44:	c64e                	sw	s3,12(sp)
    2a46:	ce06                	sw	ra,28(sp)
    2a48:	3135                	jal	0x2674
    2a4a:	fff40493          	addi	s1,s0,-1 # 0xffff
    2a4e:	0911                	addi	s2,s2,4 # 0xc004
    2a50:	01c02703          	lw	a4,28(zero) # 0x1c
    2a54:	401c                	lw	a5,0(s0)
    2a56:	8fe5                	and	a5,a5,s1
    2a58:	fee78ee3          	beq	a5,a4,0x2a54
    2a5c:	401c                	lw	a5,0(s0)
    2a5e:	8fe5                	and	a5,a5,s1
    2a60:	00f92023          	sw	a5,0(s2)
    2a64:	3efd                	jal	0x2662
    2a66:	401c                	lw	a5,0(s0)
    2a68:	8fe5                	and	a5,a5,s1
    2a6a:	00f02e23          	sw	a5,28(zero) # 0x1c
    2a6e:	b7cd                	j	0x2a50

Disassembly of section .text.timer_interrupt:

00002a70 <.text.timer_interrupt>:
    2a70:	13005683          	lhu	a3,304(zero) # 0x130
    2a74:	6741                	lui	a4,0x10
    2a76:	c354                	sw	a3,4(a4)
    2a78:	13002703          	lw	a4,304(zero) # 0x130
    2a7c:	0705                	addi	a4,a4,1 # 0x10001
    2a7e:	12e02823          	sw	a4,304(zero) # 0x130
    2a82:	8082                	ret

Disassembly of section .text.gpio_main:

00002a84 <.text.gpio_main>:
    2a84:	66c1                	lui	a3,0x10
    2a86:	67c1                	lui	a5,0x10
    2a88:	fff68613          	addi	a2,a3,-1 # 0xffff
    2a8c:	0791                	addi	a5,a5,4 # 0x10004
    2a8e:	4298                	lw	a4,0(a3)
    2a90:	8f71                	and	a4,a4,a2
    2a92:	c398                	sw	a4,0(a5)
    2a94:	bfed                	j	0x2a8e

Disassembly of section .text.gpio_interrupt:

00002a96 <.text.gpio_interrupt>:
    2a96:	8082                	ret

Disassembly of section .text.usb_main:

00002a98 <.text.usb_main>:
    2a98:	1101                	addi	sp,sp,-32
    2a9a:	cc22                	sw	s0,24(sp)
    2a9c:	ca26                	sw	s1,20(sp)
    2a9e:	c84a                	sw	s2,16(sp)
    2aa0:	c64e                	sw	s3,12(sp)
    2aa2:	c452                	sw	s4,8(sp)
    2aa4:	ce06                	sw	ra,28(sp)
    2aa6:	6a41                	lui	s4,0x10
    2aa8:	4991                	li	s3,4
    2aaa:	000a2783          	lw	a5,0(s4) # 0x10000
    2aae:	0ff7f793          	zext.b	a5,a5
    2ab2:	12f02623          	sw	a5,300(zero) # 0x12c
    2ab6:	12002223          	sw	zero,292(zero) # 0x124
    2aba:	12c02783          	lw	a5,300(zero) # 0x12c
    2abe:	e3d1                	bnez	a5,0x2b42
    2ac0:	12402703          	lw	a4,292(zero) # 0x124
    2ac4:	12002783          	lw	a5,288(zero) # 0x120
    2ac8:	00f70763          	beq	a4,a5,0x2ad6
    2acc:	12402503          	lw	a0,292(zero) # 0x124
    2ad0:	0ff57513          	zext.b	a0,a0
    2ad4:	3105                	jal	0x26f4
    2ad6:	12402783          	lw	a5,292(zero) # 0x124
    2ada:	12f02023          	sw	a5,288(zero) # 0x120
    2ade:	12402783          	lw	a5,292(zero) # 0x124
    2ae2:	05378463          	beq	a5,s3,0x2b2a
    2ae6:	06f9e963          	bltu	s3,a5,0x2b58
    2aea:	4705                	li	a4,1
    2aec:	06e78c63          	beq	a5,a4,0x2b64
    2af0:	4709                	li	a4,2
    2af2:	fae79ce3          	bne	a5,a4,0x2aaa
    2af6:	4501                	li	a0,0
    2af8:	312d                	jal	0x2722
    2afa:	4481                	li	s1,0
    2afc:	28000993          	li	s3,640
    2b00:	16800a13          	li	s4,360
    2b04:	4401                	li	s0,0
    2b06:	12802503          	lw	a0,296(zero) # 0x128
    2b0a:	9526                	add	a0,a0,s1
    2b0c:	9522                	add	a0,a0,s0
    2b0e:	0ff57513          	zext.b	a0,a0
    2b12:	0405                	addi	s0,s0,1
    2b14:	3139                	jal	0x2722
    2b16:	ff3418e3          	bne	s0,s3,0x2b06
    2b1a:	0485                	addi	s1,s1,1
    2b1c:	ff4494e3          	bne	s1,s4,0x2b04
    2b20:	12802783          	lw	a5,296(zero) # 0x128
    2b24:	0785                	addi	a5,a5,1
    2b26:	12f02423          	sw	a5,296(zero) # 0x128
    2b2a:	000f4437          	lui	s0,0xf4
    2b2e:	64c1                	lui	s1,0x10
    2b30:	24040413          	addi	s0,s0,576 # 0xf4240
    2b34:	4088                	lw	a0,0(s1)
    2b36:	0542                	slli	a0,a0,0x10
    2b38:	8141                	srli	a0,a0,0x10
    2b3a:	3eed                	jal	0x2734
    2b3c:	8522                	mv	a0,s0
    2b3e:	36a5                	jal	0x26a6
    2b40:	bfd5                	j	0x2b34
    2b42:	12c02783          	lw	a5,300(zero) # 0x12c
    2b46:	8385                	srli	a5,a5,0x1
    2b48:	12f02623          	sw	a5,300(zero) # 0x12c
    2b4c:	12402783          	lw	a5,292(zero) # 0x124
    2b50:	0785                	addi	a5,a5,1
    2b52:	12f02223          	sw	a5,292(zero) # 0x124
    2b56:	b795                	j	0x2aba
    2b58:	4715                	li	a4,5
    2b5a:	f4e798e3          	bne	a5,a4,0x2aaa
    2b5e:	36e5                	jal	0x2746
    2b60:	36c9                	jal	0x2722
    2b62:	b7a1                	j	0x2aaa
    2b64:	12802503          	lw	a0,296(zero) # 0x128
    2b68:	3655                	jal	0x270c
    2b6a:	12a02423          	sw	a0,296(zero) # 0x128
    2b6e:	b761                	j	0x2af6

Disassembly of section .text.usb_interrupt:

00002b70 <.text.usb_interrupt>:
    2b70:	8082                	ret

Disassembly of section .text.debug_main:

00002b72 <.text.debug_main>:
    2b72:	711d                	addi	sp,sp,-96
    2b74:	caa6                	sw	s1,84(sp)
    2b76:	c4d2                	sw	s4,72(sp)
    2b78:	4515                	li	a0,5
    2b7a:	6a41                	lui	s4,0x10
    2b7c:	6485                	lui	s1,0x1
    2b7e:	c8ca                	sw	s2,80(sp)
    2b80:	c2d6                	sw	s5,68(sp)
    2b82:	c0da                	sw	s6,64(sp)
    2b84:	de5e                	sw	s7,60(sp)
    2b86:	dc62                	sw	s8,56(sp)
    2b88:	ce86                	sw	ra,92(sp)
    2b8a:	cca2                	sw	s0,88(sp)
    2b8c:	c6ce                	sw	s3,76(sp)
    2b8e:	da66                	sw	s9,52(sp)
    2b90:	d86a                	sw	s10,48(sp)
    2b92:	d66e                	sw	s11,44(sp)
    2b94:	6ac1                	lui	s5,0x10
    2b96:	3eb9                	jal	0x26f4
    2b98:	0a11                	addi	s4,s4,4 # 0x10004
    2b9a:	4b05                	li	s6,1
    2b9c:	38848493          	addi	s1,s1,904 # 0x1388
    2ba0:	4b89                	li	s7,2
    2ba2:	6c05                	lui	s8,0x1
    2ba4:	000aa783          	lw	a5,0(s5) # 0x10000
    2ba8:	07c2                	slli	a5,a5,0x10
    2baa:	83c1                	srli	a5,a5,0x10
    2bac:	10f01e23          	sh	a5,284(zero) # 0x11c
    2bb0:	11c05783          	lhu	a5,284(zero) # 0x11c
    2bb4:	07c2                	slli	a5,a5,0x10
    2bb6:	83c1                	srli	a5,a5,0x10
    2bb8:	00fa2023          	sw	a5,0(s4)
    2bbc:	11c05783          	lhu	a5,284(zero) # 0x11c
    2bc0:	d3f5                	beqz	a5,0x2ba4
    2bc2:	000aa783          	lw	a5,0(s5)
    2bc6:	07c2                	slli	a5,a5,0x10
    2bc8:	83c1                	srli	a5,a5,0x10
    2bca:	ffe5                	bnez	a5,0x2bc2
    2bcc:	11c05783          	lhu	a5,284(zero) # 0x11c
    2bd0:	01079713          	slli	a4,a5,0x10
    2bd4:	8341                	srli	a4,a4,0x10
    2bd6:	05678e63          	beq	a5,s6,0x2c32
    2bda:	fd7715e3          	bne	a4,s7,0x2ba4
    2bde:	4981                	li	s3,0
    2be0:	4c81                	li	s9,0
    2be2:	01099413          	slli	s0,s3,0x10
    2be6:	8041                	srli	s0,s0,0x10
    2be8:	02040d13          	addi	s10,s0,32
    2bec:	02000613          	li	a2,32
    2bf0:	85ce                	mv	a1,s3
    2bf2:	850a                	mv	a0,sp
    2bf4:	0d42                	slli	s10,s10,0x10
    2bf6:	34b9                	jal	0x2644
    2bf8:	8d8a                	mv	s11,sp
    2bfa:	010d5d13          	srli	s10,s10,0x10
    2bfe:	8522                	mv	a0,s0
    2c00:	3eb9                	jal	0x275e
    2c02:	03a00513          	li	a0,58
    2c06:	3e31                	jal	0x2722
    2c08:	02000513          	li	a0,32
    2c0c:	3e19                	jal	0x2722
    2c0e:	000da503          	lw	a0,0(s11)
    2c12:	0411                	addi	s0,s0,4
    2c14:	0442                	slli	s0,s0,0x10
    2c16:	3649                	jal	0x2798
    2c18:	3e69                	jal	0x27b2
    2c1a:	8526                	mv	a0,s1
    2c1c:	8041                	srli	s0,s0,0x10
    2c1e:	3461                	jal	0x26a6
    2c20:	0d91                	addi	s11,s11,4
    2c22:	fda41ee3          	bne	s0,s10,0x2bfe
    2c26:	0ca1                	addi	s9,s9,8
    2c28:	02098993          	addi	s3,s3,32
    2c2c:	fb8c9be3          	bne	s9,s8,0x2be2
    2c30:	bf95                	j	0x2ba4
    2c32:	4401                	li	s0,0
    2c34:	00241513          	slli	a0,s0,0x2
    2c38:	0542                	slli	a0,a0,0x10
    2c3a:	8141                	srli	a0,a0,0x10
    2c3c:	360d                	jal	0x275e
    2c3e:	03a00513          	li	a0,58
    2c42:	34c5                	jal	0x2722
    2c44:	8526                	mv	a0,s1
    2c46:	3485                	jal	0x26a6
    2c48:	00340993          	addi	s3,s0,3
    2c4c:	fff40c93          	addi	s9,s0,-1
    2c50:	02000513          	li	a0,32
    2c54:	34f9                	jal	0x2722
    2c56:	00299793          	slli	a5,s3,0x2
    2c5a:	4388                	lw	a0,0(a5)
    2c5c:	19fd                	addi	s3,s3,-1
    2c5e:	3e2d                	jal	0x2798
    2c60:	8526                	mv	a0,s1
    2c62:	3491                	jal	0x26a6
    2c64:	ff9996e3          	bne	s3,s9,0x2c50
    2c68:	36a9                	jal	0x27b2
    2c6a:	0411                	addi	s0,s0,4
    2c6c:	80040793          	addi	a5,s0,-2048
    2c70:	f3f1                	bnez	a5,0x2c34
    2c72:	bf0d                	j	0x2ba4

Disassembly of section .text.debug_interrupt:

00002c74 <.text.debug_interrupt>:
    2c74:	8082                	ret

Disassembly of section .plt:

00002c80 <.plt>:
    2c80:	ffffd397          	auipc	t2,0xffffd
    2c84:	41c30333          	sub	t1,t1,t3
    2c88:	4683ae03          	lw	t3,1128(t2) # 0xe8
    2c8c:	fd430313          	addi	t1,t1,-44
    2c90:	46838293          	addi	t0,t2,1128
    2c94:	00235313          	srli	t1,t1,0x2
    2c98:	0042a283          	lw	t0,4(t0)
    2c9c:	000e0067          	jr	t3
    2ca0:	ffffde17          	auipc	t3,0xffffd
    2ca4:	450e2e03          	lw	t3,1104(t3) # 0xf0
    2ca8:	000e0367          	jalr	t1,t3
    2cac:	00000013          	nop
