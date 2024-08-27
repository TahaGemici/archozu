
a.out:     file format elf32-littleriscv


Disassembly of section .text:

00002000 <.text>:
    2000:	67a1                	lui	a5,0x8
    2002:	07900713          	li	a4,121
    2006:	c3d8                	sw	a4,4(a5)
    2008:	67a1                	lui	a5,0x8
    200a:	0007a823          	sw	zero,16(a5) # 0x8010
    200e:	6789                	lui	a5,0x2
    2010:	6719                	lui	a4,0x6
    2012:	86978793          	addi	a5,a5,-1943 # 0x1869
    2016:	c31c                	sw	a5,0(a4)
    2018:	6799                	lui	a5,0x6
    201a:	0007a223          	sw	zero,4(a5) # 0x6004
    201e:	4601                	li	a2,0
    2020:	55ed                	li	a1,-5
    2022:	06400513          	li	a0,100
    2026:	2da1                	jal	0x267e
    2028:	6741                	lui	a4,0x10
    202a:	66c1                	lui	a3,0x10
    202c:	0711                	addi	a4,a4,4 # 0x10004
    202e:	429c                	lw	a5,0(a3)
    2030:	fff7c793          	not	a5,a5
    2034:	07c2                	slli	a5,a5,0x10
    2036:	83c1                	srli	a5,a5,0x10
    2038:	c31c                	sw	a5,0(a4)
    203a:	bfd5                	j	0x202e
	...
    2200:	715d                	addi	sp,sp,-80
    2202:	de22                	sw	s0,60(sp)
    2204:	d03e                	sw	a5,32(sp)
    2206:	0d402783          	lw	a5,212(zero) # 0xd4
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
    2238:	28c9                	jal	0x230a
    223a:	0ca02823          	sw	a0,208(zero) # 0xd0
    223e:	0d002503          	lw	a0,208(zero) # 0xd0
    2242:	4585                	li	a1,1
    2244:	fff54513          	not	a0,a0
    2248:	2055                	jal	0x22ec
    224a:	0d004503          	lbu	a0,208(zero) # 0xd0
    224e:	28a5                	jal	0x22c6
    2250:	28b1                	jal	0x22ac
    2252:	0ca02823          	sw	a0,208(zero) # 0xd0
    2256:	a021                	j	0x225e
    2258:	470d                	li	a4,3
    225a:	fee78be3          	beq	a5,a4,0x2250
    225e:	0d402783          	lw	a5,212(zero) # 0xd4
    2262:	40b6                	lw	ra,76(sp)
    2264:	42a6                	lw	t0,72(sp)
    2266:	0785                	addi	a5,a5,1
    2268:	8b8d                	andi	a5,a5,3
    226a:	0cf02a23          	sw	a5,212(zero) # 0xd4
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
    22e2:	c3cc                	sw	a1,4(a5)
    22e4:	0512                	slli	a0,a0,0x4
    22e6:	67a1                	lui	a5,0x8
    22e8:	cb88                	sw	a0,16(a5)
    22ea:	8082                	ret

Disassembly of section .text.i2c_write:

000022ec <.text.i2c_write>:
    22ec:	67a1                	lui	a5,0x8
    22ee:	c38c                	sw	a1,0(a5)
    22f0:	c7c8                	sw	a0,12(a5)
    22f2:	67a1                	lui	a5,0x8
    22f4:	4b98                	lw	a4,16(a5)
    22f6:	07c1                	addi	a5,a5,16 # 0x8010
    22f8:	0705                	addi	a4,a4,1 # 0x6001
    22fa:	c398                	sw	a4,0(a5)
    22fc:	4398                	lw	a4,0(a5)
    22fe:	8b09                	andi	a4,a4,2
    2300:	df75                	beqz	a4,0x22fc
    2302:	4398                	lw	a4,0(a5)
    2304:	1775                	addi	a4,a4,-3
    2306:	c398                	sw	a4,0(a5)
    2308:	8082                	ret

Disassembly of section .text.i2c_read:

0000230a <.text.i2c_read>:
    230a:	67a1                	lui	a5,0x8
    230c:	c388                	sw	a0,0(a5)
    230e:	4b98                	lw	a4,16(a5)
    2310:	07c1                	addi	a5,a5,16 # 0x8010
    2312:	0711                	addi	a4,a4,4
    2314:	c398                	sw	a4,0(a5)
    2316:	4398                	lw	a4,0(a5)
    2318:	8b21                	andi	a4,a4,8
    231a:	df75                	beqz	a4,0x2316
    231c:	4398                	lw	a4,0(a5)
    231e:	1751                	addi	a4,a4,-12
    2320:	c398                	sw	a4,0(a5)
    2322:	67a1                	lui	a5,0x8
    2324:	4788                	lw	a0,8(a5)
    2326:	8082                	ret

Disassembly of section .text.qspi_wait:

00002328 <.text.qspi_wait>:
    2328:	67a9                	lui	a5,0xa
    232a:	02878793          	addi	a5,a5,40 # 0xa028
    232e:	4705                	li	a4,1
    2330:	4394                	lw	a3,0(a5)
    2332:	fee69fe3          	bne	a3,a4,0x2330
    2336:	67a9                	lui	a5,0xa
    2338:	02878793          	addi	a5,a5,40 # 0xa028
    233c:	4705                	li	a4,1
    233e:	4394                	lw	a3,0(a5)
    2340:	fee69fe3          	bne	a3,a4,0x233e
    2344:	8082                	ret

Disassembly of section .text.qspi_custom_x0:

00002346 <.text.qspi_custom_x0>:
    2346:	47f9                	li	a5,30
    2348:	02b7f733          	remu	a4,a5,a1
    234c:	02b7d7b3          	divu	a5,a5,a1
    2350:	00173713          	seqz	a4,a4
    2354:	8f99                	sub	a5,a5,a4
    2356:	80000737          	lui	a4,0x80000
    235a:	953a                	add	a0,a0,a4
    235c:	07e6                	slli	a5,a5,0x19
    235e:	97aa                	add	a5,a5,a0
    2360:	6729                	lui	a4,0xa
    2362:	c31c                	sw	a5,0(a4)
    2364:	b7d1                	j	0x2328

Disassembly of section .text.qspi_custom_write:

00002366 <.text.qspi_custom_write>:
    2366:	4891                	li	a7,4
    2368:	05169763          	bne	a3,a7,0x23b6
    236c:	30060613          	addi	a2,a2,768
    2370:	46f9                	li	a3,30
    2372:	0306f8b3          	remu	a7,a3,a6
    2376:	8305                	srli	a4,a4,0x1
    2378:	072e                	slli	a4,a4,0xb
    237a:	0306d6b3          	divu	a3,a3,a6
    237e:	0018b813          	seqz	a6,a7
    2382:	800008b7          	lui	a7,0x80000
    2386:	40088893          	addi	a7,a7,1024 # 0x80000400
    238a:	410686b3          	sub	a3,a3,a6
    238e:	fff78813          	addi	a6,a5,-1
    2392:	0842                	slli	a6,a6,0x10
    2394:	9846                	add	a6,a6,a7
    2396:	06e6                	slli	a3,a3,0x19
    2398:	9742                	add	a4,a4,a6
    239a:	9736                	add	a4,a4,a3
    239c:	9732                	add	a4,a4,a2
    239e:	66a9                	lui	a3,0xa
    23a0:	078d                	addi	a5,a5,3
    23a2:	6629                	lui	a2,0xa
    23a4:	c2cc                	sw	a1,4(a3)
    23a6:	9bf1                	andi	a5,a5,-4
    23a8:	4681                	li	a3,0
    23aa:	0621                	addi	a2,a2,8 # 0xa008
    23ac:	00d79863          	bne	a5,a3,0x23bc
    23b0:	67a9                	lui	a5,0xa
    23b2:	c398                	sw	a4,0(a5)
    23b4:	bf95                	j	0x2328
    23b6:	06a2                	slli	a3,a3,0x8
    23b8:	9636                	add	a2,a2,a3
    23ba:	bf5d                	j	0x2370
    23bc:	00d50833          	add	a6,a0,a3
    23c0:	00082803          	lw	a6,0(a6)
    23c4:	00c685b3          	add	a1,a3,a2
    23c8:	0691                	addi	a3,a3,4 # 0xa004
    23ca:	0105a023          	sw	a6,0(a1)
    23ce:	bff9                	j	0x23ac

Disassembly of section .text.qspi_custom_read:

000023d0 <.text.qspi_custom_read>:
    23d0:	1141                	addi	sp,sp,-16
    23d2:	c422                	sw	s0,8(sp)
    23d4:	c226                	sw	s1,4(sp)
    23d6:	843e                	mv	s0,a5
    23d8:	c606                	sw	ra,12(sp)
    23da:	4791                	li	a5,4
    23dc:	84aa                	mv	s1,a0
    23de:	04f69a63          	bne	a3,a5,0x2432
    23e2:	30060613          	addi	a2,a2,768
    23e6:	46f9                	li	a3,30
    23e8:	0306f7b3          	remu	a5,a3,a6
    23ec:	80000537          	lui	a0,0x80000
    23f0:	8305                	srli	a4,a4,0x1
    23f2:	072e                	slli	a4,a4,0xb
    23f4:	0306d6b3          	divu	a3,a3,a6
    23f8:	0017b793          	seqz	a5,a5
    23fc:	8e9d                	sub	a3,a3,a5
    23fe:	fff40793          	addi	a5,s0,-1
    2402:	07c2                	slli	a5,a5,0x10
    2404:	97aa                	add	a5,a5,a0
    2406:	06e6                	slli	a3,a3,0x19
    2408:	97ba                	add	a5,a5,a4
    240a:	00f68733          	add	a4,a3,a5
    240e:	67a9                	lui	a5,0xa
    2410:	9732                	add	a4,a4,a2
    2412:	c3cc                	sw	a1,4(a5)
    2414:	67a9                	lui	a5,0xa
    2416:	c398                	sw	a4,0(a5)
    2418:	3f01                	jal	0x2328
    241a:	040d                	addi	s0,s0,3
    241c:	6729                	lui	a4,0xa
    241e:	9871                	andi	s0,s0,-4
    2420:	4781                	li	a5,0
    2422:	0721                	addi	a4,a4,8 # 0xa008
    2424:	00f41a63          	bne	s0,a5,0x2438
    2428:	40b2                	lw	ra,12(sp)
    242a:	4422                	lw	s0,8(sp)
    242c:	4492                	lw	s1,4(sp)
    242e:	0141                	addi	sp,sp,16
    2430:	8082                	ret
    2432:	06a2                	slli	a3,a3,0x8
    2434:	9636                	add	a2,a2,a3
    2436:	bf45                	j	0x23e6
    2438:	00e786b3          	add	a3,a5,a4
    243c:	4290                	lw	a2,0(a3)
    243e:	00f486b3          	add	a3,s1,a5
    2442:	0791                	addi	a5,a5,4 # 0xa004
    2444:	c290                	sw	a2,0(a3)
    2446:	bff9                	j	0x2424

Disassembly of section .text.s25fl128s_wren:

00002448 <.text.s25fl128s_wren>:
    2448:	800007b7          	lui	a5,0x80000
    244c:	0799                	addi	a5,a5,6 # 0x80000006
    244e:	6729                	lui	a4,0xa
    2450:	c31c                	sw	a5,0(a4)
    2452:	bdd9                	j	0x2328

Disassembly of section .text.s25fl128s_wrdi:

00002454 <.text.s25fl128s_wrdi>:
    2454:	800007b7          	lui	a5,0x80000
    2458:	0791                	addi	a5,a5,4 # 0x80000004
    245a:	6729                	lui	a4,0xa
    245c:	c31c                	sw	a5,0(a4)
    245e:	b5e9                	j	0x2328

Disassembly of section .text.s25fl128s_clsr:

00002460 <.text.s25fl128s_clsr>:
    2460:	800007b7          	lui	a5,0x80000
    2464:	03078793          	addi	a5,a5,48 # 0x80000030
    2468:	6729                	lui	a4,0xa
    246a:	c31c                	sw	a5,0(a4)
    246c:	bd75                	j	0x2328

Disassembly of section .text.s25fl128s_reset:

0000246e <.text.s25fl128s_reset>:
    246e:	800007b7          	lui	a5,0x80000
    2472:	0f078793          	addi	a5,a5,240 # 0x800000f0
    2476:	6729                	lui	a4,0xa
    2478:	c31c                	sw	a5,0(a4)
    247a:	b57d                	j	0x2328

Disassembly of section .text.s25fl128s_rdid:

0000247c <.text.s25fl128s_rdid>:
    247c:	08500813          	li	a6,133
    2480:	02000793          	li	a5,32
    2484:	4701                	li	a4,0
    2486:	4685                	li	a3,1
    2488:	09f00613          	li	a2,159
    248c:	4581                	li	a1,0
    248e:	b789                	j	0x23d0

Disassembly of section .text.s25fl128s_rdsr1:

00002490 <.text.s25fl128s_rdsr1>:
    2490:	08500813          	li	a6,133
    2494:	4785                	li	a5,1
    2496:	4701                	li	a4,0
    2498:	4685                	li	a3,1
    249a:	4615                	li	a2,5
    249c:	4581                	li	a1,0
    249e:	bf0d                	j	0x23d0

Disassembly of section .text.s25fl128s_rdsr2:

000024a0 <.text.s25fl128s_rdsr2>:
    24a0:	08500813          	li	a6,133
    24a4:	4785                	li	a5,1
    24a6:	4701                	li	a4,0
    24a8:	4685                	li	a3,1
    24aa:	461d                	li	a2,7
    24ac:	4581                	li	a1,0
    24ae:	b70d                	j	0x23d0

Disassembly of section .text.s25fl128s_rdcr:

000024b0 <.text.s25fl128s_rdcr>:
    24b0:	08500813          	li	a6,133
    24b4:	4785                	li	a5,1
    24b6:	4701                	li	a4,0
    24b8:	4685                	li	a3,1
    24ba:	03500613          	li	a2,53
    24be:	4581                	li	a1,0
    24c0:	bf01                	j	0x23d0

Disassembly of section .text.s25fl128s_res:

000024c2 <.text.s25fl128s_res>:
    24c2:	03200813          	li	a6,50
    24c6:	4785                	li	a5,1
    24c8:	4761                	li	a4,24
    24ca:	4685                	li	a3,1
    24cc:	0ab00613          	li	a2,171
    24d0:	4581                	li	a1,0
    24d2:	bdfd                	j	0x23d0

Disassembly of section .text.s25fl128s_read_id:

000024d4 <.text.s25fl128s_read_id>:
    24d4:	08500813          	li	a6,133
    24d8:	4789                	li	a5,2
    24da:	4761                	li	a4,24
    24dc:	4685                	li	a3,1
    24de:	09000613          	li	a2,144
    24e2:	b5fd                	j	0x23d0

Disassembly of section .text.s25fl128s_read:

000024e4 <.text.s25fl128s_read>:
    24e4:	87b2                	mv	a5,a2
    24e6:	03200813          	li	a6,50
    24ea:	4761                	li	a4,24
    24ec:	4685                	li	a3,1
    24ee:	460d                	li	a2,3
    24f0:	b5c5                	j	0x23d0

Disassembly of section .text.s25fl128s_wrr:

000024f2 <.text.s25fl128s_wrr>:
    24f2:	08500813          	li	a6,133
    24f6:	4789                	li	a5,2
    24f8:	4701                	li	a4,0
    24fa:	4685                	li	a3,1
    24fc:	4605                	li	a2,1
    24fe:	4581                	li	a1,0
    2500:	b59d                	j	0x2366

Disassembly of section .text.s25fl128s_se:

00002502 <.text.s25fl128s_se>:
    2502:	08500813          	li	a6,133
    2506:	478d                	li	a5,3
    2508:	4701                	li	a4,0
    250a:	4685                	li	a3,1
    250c:	0d800613          	li	a2,216
    2510:	4581                	li	a1,0
    2512:	bd91                	j	0x2366

Disassembly of section .text.s25fl128s_pp:

00002514 <.text.s25fl128s_pp>:
    2514:	87b2                	mv	a5,a2
    2516:	08500813          	li	a6,133
    251a:	4761                	li	a4,24
    251c:	4685                	li	a3,1
    251e:	4609                	li	a2,2
    2520:	b599                	j	0x2366

Disassembly of section .text.s25fl128s_dor:

00002522 <.text.s25fl128s_dor>:
    2522:	87b2                	mv	a5,a2
    2524:	06800813          	li	a6,104
    2528:	02000713          	li	a4,32
    252c:	4689                	li	a3,2
    252e:	03b00613          	li	a2,59
    2532:	bd79                	j	0x23d0

Disassembly of section .text.s25fl128s_qor:

00002534 <.text.s25fl128s_qor>:
    2534:	87b2                	mv	a5,a2
    2536:	06800813          	li	a6,104
    253a:	02000713          	li	a4,32
    253e:	4691                	li	a3,4
    2540:	06b00613          	li	a2,107
    2544:	b571                	j	0x23d0

Disassembly of section .text.s25fl128s_qpp:

00002546 <.text.s25fl128s_qpp>:
    2546:	87b2                	mv	a5,a2
    2548:	05000813          	li	a6,80
    254c:	4761                	li	a4,24
    254e:	4691                	li	a3,4
    2550:	03200613          	li	a2,50
    2554:	bd09                	j	0x2366

Disassembly of section .text.mt25ql256aba_write_disable:

00002556 <.text.mt25ql256aba_write_disable>:
    2556:	bdfd                	j	0x2454

Disassembly of section .text.mt25ql256aba_write_enable:

00002558 <.text.mt25ql256aba_write_enable>:
    2558:	bdc5                	j	0x2448

Disassembly of section .text.mt25ql256aba_reset_enable:

0000255a <.text.mt25ql256aba_reset_enable>:
    255a:	800007b7          	lui	a5,0x80000
    255e:	06678793          	addi	a5,a5,102 # 0x80000066
    2562:	6729                	lui	a4,0xa
    2564:	c31c                	sw	a5,0(a4)
    2566:	b3c9                	j	0x2328

Disassembly of section .text.mt25ql256aba_reset_memory:

00002568 <.text.mt25ql256aba_reset_memory>:
    2568:	800007b7          	lui	a5,0x80000
    256c:	09978793          	addi	a5,a5,153 # 0x80000099
    2570:	6729                	lui	a4,0xa
    2572:	c31c                	sw	a5,0(a4)
    2574:	bb55                	j	0x2328

Disassembly of section .text.mt25ql256aba_read:

00002576 <.text.mt25ql256aba_read>:
    2576:	87b2                	mv	a5,a2
    2578:	08500813          	li	a6,133
    257c:	4761                	li	a4,24
    257e:	4685                	li	a3,1
    2580:	460d                	li	a2,3
    2582:	b5b9                	j	0x23d0

Disassembly of section .text.mt25ql256aba_page_program:

00002584 <.text.mt25ql256aba_page_program>:
    2584:	bf41                	j	0x2514

Disassembly of section .text.mt25ql256aba_4KiB_sector_erase:

00002586 <.text.mt25ql256aba_4KiB_sector_erase>:
    2586:	08500813          	li	a6,133
    258a:	478d                	li	a5,3
    258c:	4701                	li	a4,0
    258e:	4685                	li	a3,1
    2590:	02000613          	li	a2,32
    2594:	4581                	li	a1,0
    2596:	bbc1                	j	0x2366

Disassembly of section .text.mt25ql256aba_32KiB_sector_erase:

00002598 <.text.mt25ql256aba_32KiB_sector_erase>:
    2598:	08500813          	li	a6,133
    259c:	478d                	li	a5,3
    259e:	4701                	li	a4,0
    25a0:	4685                	li	a3,1
    25a2:	05200613          	li	a2,82
    25a6:	4581                	li	a1,0
    25a8:	bb7d                	j	0x2366

Disassembly of section .text.mt25ql256aba_sector_erase:

000025aa <.text.mt25ql256aba_sector_erase>:
    25aa:	bfa1                	j	0x2502

Disassembly of section .text.mt25ql256aba_read_id:

000025ac <.text.mt25ql256aba_read_id>:
    25ac:	87ae                	mv	a5,a1
    25ae:	08500813          	li	a6,133
    25b2:	4701                	li	a4,0
    25b4:	4685                	li	a3,1
    25b6:	09f00613          	li	a2,159
    25ba:	4581                	li	a1,0
    25bc:	bd11                	j	0x23d0

Disassembly of section .text.mt25ql256aba_read_status_register:

000025be <.text.mt25ql256aba_read_status_register>:
    25be:	bdc9                	j	0x2490

Disassembly of section .text.mt25ql256aba_read_flag_status_register:

000025c0 <.text.mt25ql256aba_read_flag_status_register>:
    25c0:	08500813          	li	a6,133
    25c4:	4785                	li	a5,1
    25c6:	4701                	li	a4,0
    25c8:	4685                	li	a3,1
    25ca:	07000613          	li	a2,112
    25ce:	4581                	li	a1,0
    25d0:	b501                	j	0x23d0

Disassembly of section .text.mt25ql256aba_read_nonvolatile_configuration_register:

000025d2 <.text.mt25ql256aba_read_nonvolatile_configuration_register>:
    25d2:	08500813          	li	a6,133
    25d6:	4789                	li	a5,2
    25d8:	4701                	li	a4,0
    25da:	4685                	li	a3,1
    25dc:	0b500613          	li	a2,181
    25e0:	4581                	li	a1,0
    25e2:	b3fd                	j	0x23d0

Disassembly of section .text.mt25ql256aba_read_volatile_configuration_register:

000025e4 <.text.mt25ql256aba_read_volatile_configuration_register>:
    25e4:	08500813          	li	a6,133
    25e8:	4785                	li	a5,1
    25ea:	4701                	li	a4,0
    25ec:	4685                	li	a3,1
    25ee:	08500613          	li	a2,133
    25f2:	4581                	li	a1,0
    25f4:	bbf1                	j	0x23d0

Disassembly of section .text.mt25ql256aba_write_status_register:

000025f6 <.text.mt25ql256aba_write_status_register>:
    25f6:	08500813          	li	a6,133
    25fa:	4785                	li	a5,1
    25fc:	4701                	li	a4,0
    25fe:	4685                	li	a3,1
    2600:	4605                	li	a2,1
    2602:	4581                	li	a1,0
    2604:	b38d                	j	0x2366

Disassembly of section .text.mt25ql256aba_write_nonvolatile_configuration_register:

00002606 <.text.mt25ql256aba_write_nonvolatile_configuration_register>:
    2606:	08500813          	li	a6,133
    260a:	4789                	li	a5,2
    260c:	4701                	li	a4,0
    260e:	4685                	li	a3,1
    2610:	0b100613          	li	a2,177
    2614:	4581                	li	a1,0
    2616:	bb81                	j	0x2366

Disassembly of section .text.mt25ql256aba_write_volatile_configuration_register:

00002618 <.text.mt25ql256aba_write_volatile_configuration_register>:
    2618:	08500813          	li	a6,133
    261c:	4785                	li	a5,1
    261e:	4701                	li	a4,0
    2620:	4685                	li	a3,1
    2622:	08100613          	li	a2,129
    2626:	4581                	li	a1,0
    2628:	bb3d                	j	0x2366

Disassembly of section .text.mt25ql256aba_write_enhanced_volatile_configuration_register:

0000262a <.text.mt25ql256aba_write_enhanced_volatile_configuration_register>:
    262a:	08500813          	li	a6,133
    262e:	4785                	li	a5,1
    2630:	4701                	li	a4,0
    2632:	4685                	li	a3,1
    2634:	06100613          	li	a2,97
    2638:	4581                	li	a1,0
    263a:	b335                	j	0x2366

Disassembly of section .text.mt25ql256aba_dual_output_fast_read:

0000263c <.text.mt25ql256aba_dual_output_fast_read>:
    263c:	87b2                	mv	a5,a2
    263e:	08500813          	li	a6,133
    2642:	02000713          	li	a4,32
    2646:	4689                	li	a3,2
    2648:	03b00613          	li	a2,59
    264c:	b351                	j	0x23d0

Disassembly of section .text.mt25ql256aba_quad_output_fast_read:

0000264e <.text.mt25ql256aba_quad_output_fast_read>:
    264e:	87b2                	mv	a5,a2
    2650:	08500813          	li	a6,133
    2654:	02000713          	li	a4,32
    2658:	4691                	li	a3,4
    265a:	06b00613          	li	a2,107
    265e:	bb8d                	j	0x23d0

Disassembly of section .text.timer_counter:

00002660 <.text.timer_counter>:
    2660:	67b1                	lui	a5,0xc
    2662:	4bc8                	lw	a0,20(a5)
    2664:	8082                	ret

Disassembly of section .text.timer_event:

00002666 <.text.timer_event>:
    2666:	67b1                	lui	a5,0xc
    2668:	4f88                	lw	a0,24(a5)
    266a:	8082                	ret

Disassembly of section .text.timer_clear:

0000266c <.text.timer_clear>:
    266c:	67b1                	lui	a5,0xc
    266e:	4705                	li	a4,1
    2670:	c798                	sw	a4,8(a5)
    2672:	67b1                	lui	a5,0xc
    2674:	cfd8                	sw	a4,28(a5)
    2676:	8082                	ret

Disassembly of section .text.timer_enabled:

00002678 <.text.timer_enabled>:
    2678:	67b1                	lui	a5,0xc
    267a:	c7c8                	sw	a0,12(a5)
    267c:	8082                	ret

Disassembly of section .text.timer_conf:

0000267e <.text.timer_conf>:
    267e:	1141                	addi	sp,sp,-16
    2680:	c606                	sw	ra,12(sp)
    2682:	67b1                	lui	a5,0xc
    2684:	c388                	sw	a0,0(a5)
    2686:	c3cc                	sw	a1,4(a5)
    2688:	67b1                	lui	a5,0xc
    268a:	cb90                	sw	a2,16(a5)
    268c:	08000613          	li	a2,128
    2690:	6589                	lui	a1,0x2
    2692:	20058593          	addi	a1,a1,512 # 0x2200
    2696:	30559073          	csrw	mtvec,a1
    269a:	30046073          	csrsi	mstatus,8
    269e:	30462073          	csrs	mie,a2
    26a2:	37e9                	jal	0x266c
    26a4:	40b2                	lw	ra,12(sp)
    26a6:	67b1                	lui	a5,0xc
    26a8:	4705                	li	a4,1
    26aa:	c7d8                	sw	a4,12(a5)
    26ac:	0141                	addi	sp,sp,16
    26ae:	8082                	ret

Disassembly of section .text.delay_us:

000026b0 <.text.delay_us>:
    26b0:	7179                	addi	sp,sp,-48
    26b2:	d422                	sw	s0,40(sp)
    26b4:	6731                	lui	a4,0xc
    26b6:	0040                	addi	s0,sp,4
    26b8:	d606                	sw	ra,44(sp)
    26ba:	86a2                	mv	a3,s0
    26bc:	67b1                	lui	a5,0xc
    26be:	0771                	addi	a4,a4,28 # 0xc01c
    26c0:	4390                	lw	a2,0(a5)
    26c2:	0791                	addi	a5,a5,4 # 0xc004
    26c4:	c290                	sw	a2,0(a3)
    26c6:	0691                	addi	a3,a3,4
    26c8:	fee79ce3          	bne	a5,a4,0x26c0
    26cc:	fff50593          	addi	a1,a0,-1 # 0x7fffffff
    26d0:	4605                	li	a2,1
    26d2:	03b00513          	li	a0,59
    26d6:	3765                	jal	0x267e
    26d8:	4705                	li	a4,1
    26da:	0ee02823          	sw	a4,240(zero) # 0xf0
    26de:	0f002703          	lw	a4,240(zero) # 0xf0
    26e2:	ff75                	bnez	a4,0x26de
    26e4:	6731                	lui	a4,0xc
    26e6:	67b1                	lui	a5,0xc
    26e8:	0771                	addi	a4,a4,28 # 0xc01c
    26ea:	4014                	lw	a3,0(s0)
    26ec:	0411                	addi	s0,s0,4
    26ee:	c394                	sw	a3,0(a5)
    26f0:	0791                	addi	a5,a5,4 # 0xc004
    26f2:	fee79ce3          	bne	a5,a4,0x26ea
    26f6:	50b2                	lw	ra,44(sp)
    26f8:	5422                	lw	s0,40(sp)
    26fa:	6145                	addi	sp,sp,48
    26fc:	8082                	ret

Disassembly of section .text.usb_conf:

000026fe <.text.usb_conf>:
    26fe:	67b9                	lui	a5,0xe
    2700:	4398                	lw	a4,0(a5)
    2702:	00a70963          	beq	a4,a0,0x2714
    2706:	4715                	li	a4,5
    2708:	00a77563          	bgeu	a4,a0,0x2712
    270c:	0007a023          	sw	zero,0(a5) # 0xe000
    2710:	8082                	ret
    2712:	c388                	sw	a0,0(a5)
    2714:	8082                	ret

Disassembly of section .text.usb_audio:

00002716 <.text.usb_audio>:
    2716:	67b9                	lui	a5,0xe
    2718:	c788                	sw	a0,8(a5)
    271a:	67b9                	lui	a5,0xe
    271c:	07b1                	addi	a5,a5,12 # 0xe00c
    271e:	4705                	li	a4,1
    2720:	c398                	sw	a4,0(a5)
    2722:	4398                	lw	a4,0(a5)
    2724:	ff7d                	bnez	a4,0x2722
    2726:	67b9                	lui	a5,0xe
    2728:	43c8                	lw	a0,4(a5)
    272a:	8082                	ret

Disassembly of section .text.usb_camera:

0000272c <.text.usb_camera>:
    272c:	67b9                	lui	a5,0xe
    272e:	c788                	sw	a0,8(a5)
    2730:	67b9                	lui	a5,0xe
    2732:	07b1                	addi	a5,a5,12 # 0xe00c
    2734:	4705                	li	a4,1
    2736:	c398                	sw	a4,0(a5)
    2738:	4398                	lw	a4,0(a5)
    273a:	ff7d                	bnez	a4,0x2738
    273c:	8082                	ret

Disassembly of section .text.usb_keyboard:

0000273e <.text.usb_keyboard>:
    273e:	67b9                	lui	a5,0xe
    2740:	c788                	sw	a0,8(a5)
    2742:	67b9                	lui	a5,0xe
    2744:	07b1                	addi	a5,a5,12 # 0xe00c
    2746:	4705                	li	a4,1
    2748:	c398                	sw	a4,0(a5)
    274a:	4398                	lw	a4,0(a5)
    274c:	ff7d                	bnez	a4,0x274a
    274e:	8082                	ret

Disassembly of section .text.usb_serial_read:

00002750 <.text.usb_serial_read>:
    2750:	67b9                	lui	a5,0xe
    2752:	07b1                	addi	a5,a5,12 # 0xe00c
    2754:	4398                	lw	a4,0(a5)
    2756:	df7d                	beqz	a4,0x2754
    2758:	0007a023          	sw	zero,0(a5)
    275c:	67b9                	lui	a5,0xe
    275e:	43c8                	lw	a0,4(a5)
    2760:	0ff57513          	zext.b	a0,a0
    2764:	8082                	ret

Disassembly of section .text.usb_serial_write:

00002766 <.text.usb_serial_write>:
    2766:	b7d9                	j	0x272c

Disassembly of section .text.usb_print_short:

00002768 <.text.usb_print_short>:
    2768:	1141                	addi	sp,sp,-16
    276a:	c422                	sw	s0,8(sp)
    276c:	c226                	sw	s1,4(sp)
    276e:	c04a                	sw	s2,0(sp)
    2770:	c606                	sw	ra,12(sp)
    2772:	842a                	mv	s0,a0
    2774:	4491                	li	s1,4
    2776:	03900913          	li	s2,57
    277a:	00c45793          	srli	a5,s0,0xc
    277e:	03078513          	addi	a0,a5,48 # 0xe030
    2782:	00a97463          	bgeu	s2,a0,0x278a
    2786:	03778513          	addi	a0,a5,55
    278a:	0412                	slli	s0,s0,0x4
    278c:	0442                	slli	s0,s0,0x10
    278e:	14fd                	addi	s1,s1,-1
    2790:	3f71                	jal	0x272c
    2792:	8041                	srli	s0,s0,0x10
    2794:	f0fd                	bnez	s1,0x277a
    2796:	40b2                	lw	ra,12(sp)
    2798:	4422                	lw	s0,8(sp)
    279a:	4492                	lw	s1,4(sp)
    279c:	4902                	lw	s2,0(sp)
    279e:	0141                	addi	sp,sp,16
    27a0:	8082                	ret

Disassembly of section .text.usb_print_int:

000027a2 <.text.usb_print_int>:
    27a2:	1141                	addi	sp,sp,-16
    27a4:	c422                	sw	s0,8(sp)
    27a6:	842a                	mv	s0,a0
    27a8:	8141                	srli	a0,a0,0x10
    27aa:	c606                	sw	ra,12(sp)
    27ac:	3f75                	jal	0x2768
    27ae:	01041513          	slli	a0,s0,0x10
    27b2:	4422                	lw	s0,8(sp)
    27b4:	40b2                	lw	ra,12(sp)
    27b6:	8141                	srli	a0,a0,0x10
    27b8:	0141                	addi	sp,sp,16
    27ba:	b77d                	j	0x2768

Disassembly of section .text.usb_print_newline:

000027bc <.text.usb_print_newline>:
    27bc:	1141                	addi	sp,sp,-16
    27be:	4535                	li	a0,13
    27c0:	c606                	sw	ra,12(sp)
    27c2:	37ad                	jal	0x272c
    27c4:	40b2                	lw	ra,12(sp)
    27c6:	4529                	li	a0,10
    27c8:	0141                	addi	sp,sp,16
    27ca:	b78d                	j	0x272c

Disassembly of section .text.usb_read_short:

000027cc <.text.usb_read_short>:
    27cc:	1101                	addi	sp,sp,-32
    27ce:	cc22                	sw	s0,24(sp)
    27d0:	c84a                	sw	s2,16(sp)
    27d2:	c64e                	sw	s3,12(sp)
    27d4:	ce06                	sw	ra,28(sp)
    27d6:	ca26                	sw	s1,20(sp)
    27d8:	4411                	li	s0,4
    27da:	4501                	li	a0,0
    27dc:	4925                	li	s2,9
    27de:	49bd                	li	s3,15
    27e0:	0512                	slli	a0,a0,0x4
    27e2:	01051493          	slli	s1,a0,0x10
    27e6:	37ad                	jal	0x2750
    27e8:	fd050793          	addi	a5,a0,-48
    27ec:	0ff7f793          	zext.b	a5,a5
    27f0:	80c1                	srli	s1,s1,0x10
    27f2:	00f97c63          	bgeu	s2,a5,0x280a
    27f6:	fc950793          	addi	a5,a0,-55
    27fa:	0ff7f793          	zext.b	a5,a5
    27fe:	00f9f663          	bgeu	s3,a5,0x280a
    2802:	fa950513          	addi	a0,a0,-87
    2806:	0ff57793          	zext.b	a5,a0
    280a:	00978533          	add	a0,a5,s1
    280e:	0542                	slli	a0,a0,0x10
    2810:	147d                	addi	s0,s0,-1
    2812:	8141                	srli	a0,a0,0x10
    2814:	f471                	bnez	s0,0x27e0
    2816:	40f2                	lw	ra,28(sp)
    2818:	4462                	lw	s0,24(sp)
    281a:	44d2                	lw	s1,20(sp)
    281c:	4942                	lw	s2,16(sp)
    281e:	49b2                	lw	s3,12(sp)
    2820:	6105                	addi	sp,sp,32
    2822:	8082                	ret

Disassembly of section .text.usb_read_int:

00002824 <.text.usb_read_int>:
    2824:	1141                	addi	sp,sp,-16
    2826:	c606                	sw	ra,12(sp)
    2828:	c422                	sw	s0,8(sp)
    282a:	374d                	jal	0x27cc
    282c:	01051413          	slli	s0,a0,0x10
    2830:	3f71                	jal	0x27cc
    2832:	40b2                	lw	ra,12(sp)
    2834:	9522                	add	a0,a0,s0
    2836:	4422                	lw	s0,8(sp)
    2838:	0141                	addi	sp,sp,16
    283a:	8082                	ret

Disassembly of section .text.gpio_write:

0000283c <.text.gpio_write>:
    283c:	67c1                	lui	a5,0x10
    283e:	c3c8                	sw	a0,4(a5)
    2840:	8082                	ret

Disassembly of section .text.gpio_read:

00002842 <.text.gpio_read>:
    2842:	67c1                	lui	a5,0x10
    2844:	4388                	lw	a0,0(a5)
    2846:	0542                	slli	a0,a0,0x10
    2848:	8141                	srli	a0,a0,0x10
    284a:	8082                	ret

Disassembly of section .text.instr_mem_write:

0000284c <.text.instr_mem_write>:
    284c:	050a                	slli	a0,a0,0x2
    284e:	6791                	lui	a5,0x4
    2850:	97aa                	add	a5,a5,a0
    2852:	c38c                	sw	a1,0(a5)
    2854:	8082                	ret

Disassembly of section .text.uart_main:

00002856 <.text.uart_main>:
    2856:	1101                	addi	sp,sp,-32
    2858:	cc22                	sw	s0,24(sp)
    285a:	ca26                	sw	s1,20(sp)
    285c:	c84a                	sw	s2,16(sp)
    285e:	c64e                	sw	s3,12(sp)
    2860:	ce06                	sw	ra,28(sp)
    2862:	6799                	lui	a5,0x6
    2864:	0c700713          	li	a4,199
    2868:	c398                	sw	a4,0(a5)
    286a:	64c1                	lui	s1,0x10
    286c:	0007a223          	sw	zero,4(a5) # 0x6004
    2870:	4401                	li	s0,0
    2872:	4901                	li	s2,0
    2874:	69c1                	lui	s3,0x10
    2876:	0491                	addi	s1,s1,4 # 0x10004
    2878:	0009a503          	lw	a0,0(s3) # 0x10000
    287c:	02090363          	beqz	s2,0x28a2
    2880:	0ff57513          	zext.b	a0,a0
    2884:	3489                	jal	0x22c6
    2886:	f0047413          	andi	s0,s0,-256
    288a:	340d                	jal	0x22ac
    288c:	9522                	add	a0,a0,s0
    288e:	01051413          	slli	s0,a0,0x10
    2892:	8441                	srai	s0,s0,0x10
    2894:	01041793          	slli	a5,s0,0x10
    2898:	83c1                	srli	a5,a5,0x10
    289a:	00194913          	xori	s2,s2,1
    289e:	c09c                	sw	a5,0(s1)
    28a0:	bfe1                	j	0x2878
    28a2:	0542                	slli	a0,a0,0x10
    28a4:	8141                	srli	a0,a0,0x10
    28a6:	8121                	srli	a0,a0,0x8
    28a8:	3c39                	jal	0x22c6
    28aa:	3409                	jal	0x22ac
    28ac:	0ff47413          	zext.b	s0,s0
    28b0:	0522                	slli	a0,a0,0x8
    28b2:	942a                	add	s0,s0,a0
    28b4:	0442                	slli	s0,s0,0x10
    28b6:	bff1                	j	0x2892

Disassembly of section .text.uart_interrupt:

000028b8 <.text.uart_interrupt>:
    28b8:	8082                	ret

Disassembly of section .text.i2c_main:

000028ba <.text.i2c_main>:
    28ba:	1101                	addi	sp,sp,-32
    28bc:	cc22                	sw	s0,24(sp)
    28be:	ca26                	sw	s1,20(sp)
    28c0:	c84a                	sw	s2,16(sp)
    28c2:	c64e                	sw	s3,12(sp)
    28c4:	c452                	sw	s4,8(sp)
    28c6:	ce06                	sw	ra,28(sp)
    28c8:	67a1                	lui	a5,0x8
    28ca:	07b00713          	li	a4,123
    28ce:	c3d8                	sw	a4,4(a5)
    28d0:	69c1                	lui	s3,0x10
    28d2:	67a1                	lui	a5,0x8
    28d4:	03000713          	li	a4,48
    28d8:	6941                	lui	s2,0x10
    28da:	0007a4b7          	lui	s1,0x7a
    28de:	cb98                	sw	a4,16(a5)
    28e0:	fff98a13          	addi	s4,s3,-1 # 0xffff
    28e4:	0911                	addi	s2,s2,4 # 0x10004
    28e6:	12048493          	addi	s1,s1,288 # 0x7a120
    28ea:	02002783          	lw	a5,32(zero) # 0x20
    28ee:	c385                	beqz	a5,0x290e
    28f0:	0009a503          	lw	a0,0(s3)
    28f4:	4589                	li	a1,2
    28f6:	01457533          	and	a0,a0,s4
    28fa:	3acd                	jal	0x22ec
    28fc:	8526                	mv	a0,s1
    28fe:	3b4d                	jal	0x26b0
    2900:	02002783          	lw	a5,32(zero) # 0x20
    2904:	0017b793          	seqz	a5,a5
    2908:	02f02023          	sw	a5,32(zero) # 0x20
    290c:	bff9                	j	0x28ea
    290e:	4509                	li	a0,2
    2910:	3aed                	jal	0x230a
    2912:	01457533          	and	a0,a0,s4
    2916:	00a92023          	sw	a0,0(s2)
    291a:	b7cd                	j	0x28fc

Disassembly of section .text.i2c_interrupt:

0000291c <.text.i2c_interrupt>:
    291c:	8082                	ret

Disassembly of section .text.qspi_main:

0000291e <.text.qspi_main>:
    291e:	7139                	addi	sp,sp,-64
    2920:	da26                	sw	s1,52(sp)
    2922:	d64e                	sw	s3,44(sp)
    2924:	4515                	li	a0,5
    2926:	69c1                	lui	s3,0x10
    2928:	64c1                	lui	s1,0x10
    292a:	d452                	sw	s4,40(sp)
    292c:	d256                	sw	s5,36(sp)
    292e:	de06                	sw	ra,60(sp)
    2930:	dc22                	sw	s0,56(sp)
    2932:	d84a                	sw	s2,48(sp)
    2934:	d05a                	sw	s6,32(sp)
    2936:	ce5e                	sw	s7,28(sp)
    2938:	fff98a13          	addi	s4,s3,-1 # 0xffff
    293c:	33c9                	jal	0x26fe
    293e:	0491                	addi	s1,s1,4 # 0x10004
    2940:	4685                	li	a3,1
    2942:	0009a783          	lw	a5,0(s3)
    2946:	0147f733          	and	a4,a5,s4
    294a:	07c2                	slli	a5,a5,0x10
    294c:	c098                	sw	a4,0(s1)
    294e:	83c1                	srli	a5,a5,0x10
    2950:	dbed                	beqz	a5,0x2942
    2952:	0009a783          	lw	a5,0(s3)
    2956:	07c2                	slli	a5,a5,0x10
    2958:	83c1                	srli	a5,a5,0x10
    295a:	ffe5                	bnez	a5,0x2952
    295c:	fed713e3          	bne	a4,a3,0x2942
    2960:	c402                	sw	zero,8(sp)
    2962:	c602                	sw	zero,12(sp)
    2964:	34d5                	jal	0x2448
    2966:	0028                	addi	a0,sp,8
    2968:	3905                	jal	0x2598
    296a:	47b2                	lw	a5,12(sp)
    296c:	0807f793          	andi	a5,a5,128
    2970:	c7b1                	beqz	a5,0x29bc
    2972:	4901                	li	s2,0
    2974:	6b11                	lui	s6,0x4
    2976:	0b000413          	li	s0,176
    297a:	02040b93          	addi	s7,s0,32
    297e:	355d                	jal	0x2824
    2980:	c008                	sw	a0,0(s0)
    2982:	0411                	addi	s0,s0,4
    2984:	ff741de3          	bne	s0,s7,0x297e
    2988:	33e1                	jal	0x2750
    298a:	3c7d                	jal	0x2448
    298c:	02000613          	li	a2,32
    2990:	85ca                	mv	a1,s2
    2992:	0b000513          	li	a0,176
    2996:	3ebd                	jal	0x2514
    2998:	c602                	sw	zero,12(sp)
    299a:	47b2                	lw	a5,12(sp)
    299c:	0807f793          	andi	a5,a5,128
    29a0:	c38d                	beqz	a5,0x29c2
    29a2:	47a2                	lw	a5,8(sp)
    29a4:	02090913          	addi	s2,s2,32
    29a8:	0785                	addi	a5,a5,1 # 0x8001
    29aa:	c43e                	sw	a5,8(sp)
    29ac:	0147f7b3          	and	a5,a5,s4
    29b0:	c09c                	sw	a5,0(s1)
    29b2:	fd6912e3          	bne	s2,s6,0x2976
    29b6:	00000067          	jr	zero # 0x0
    29ba:	b759                	j	0x2940
    29bc:	0068                	addi	a0,sp,12
    29be:	3109                	jal	0x25c0
    29c0:	b76d                	j	0x296a
    29c2:	0068                	addi	a0,sp,12
    29c4:	3ef5                	jal	0x25c0
    29c6:	bfd1                	j	0x299a

Disassembly of section .text.qspi_interrupt:

000029c8 <.text.qspi_interrupt>:
    29c8:	8082                	ret

Disassembly of section .text.timer_main:

000029ca <.text.timer_main>:
    29ca:	1101                	addi	sp,sp,-32
    29cc:	653d                	lui	a0,0xf
    29ce:	cc22                	sw	s0,24(sp)
    29d0:	c84a                	sw	s2,16(sp)
    29d2:	4605                	li	a2,1
    29d4:	4581                	li	a1,0
    29d6:	a5f50513          	addi	a0,a0,-1441 # 0xea5f
    29da:	6441                	lui	s0,0x10
    29dc:	6931                	lui	s2,0xc
    29de:	ca26                	sw	s1,20(sp)
    29e0:	c64e                	sw	s3,12(sp)
    29e2:	ce06                	sw	ra,28(sp)
    29e4:	3969                	jal	0x267e
    29e6:	fff40493          	addi	s1,s0,-1 # 0xffff
    29ea:	0911                	addi	s2,s2,4 # 0xc004
    29ec:	01c02703          	lw	a4,28(zero) # 0x1c
    29f0:	401c                	lw	a5,0(s0)
    29f2:	8fe5                	and	a5,a5,s1
    29f4:	fee78ee3          	beq	a5,a4,0x29f0
    29f8:	401c                	lw	a5,0(s0)
    29fa:	8fe5                	and	a5,a5,s1
    29fc:	00f92023          	sw	a5,0(s2)
    2a00:	31b5                	jal	0x266c
    2a02:	401c                	lw	a5,0(s0)
    2a04:	8fe5                	and	a5,a5,s1
    2a06:	00f02e23          	sw	a5,28(zero) # 0x1c
    2a0a:	b7cd                	j	0x29ec

Disassembly of section .text.timer_interrupt:

00002a0c <.text.timer_interrupt>:
    2a0c:	0ec05683          	lhu	a3,236(zero) # 0xec
    2a10:	6741                	lui	a4,0x10
    2a12:	c354                	sw	a3,4(a4)
    2a14:	0ec02703          	lw	a4,236(zero) # 0xec
    2a18:	0705                	addi	a4,a4,1 # 0x10001
    2a1a:	0ee02623          	sw	a4,236(zero) # 0xec
    2a1e:	8082                	ret

Disassembly of section .text.gpio_main:

00002a20 <.text.gpio_main>:
    2a20:	66c1                	lui	a3,0x10
    2a22:	67c1                	lui	a5,0x10
    2a24:	fff68613          	addi	a2,a3,-1 # 0xffff
    2a28:	0791                	addi	a5,a5,4 # 0x10004
    2a2a:	4298                	lw	a4,0(a3)
    2a2c:	8f71                	and	a4,a4,a2
    2a2e:	c398                	sw	a4,0(a5)
    2a30:	bfed                	j	0x2a2a

Disassembly of section .text.gpio_interrupt:

00002a32 <.text.gpio_interrupt>:
    2a32:	8082                	ret

Disassembly of section .text.usb_main:

00002a34 <.text.usb_main>:
    2a34:	1101                	addi	sp,sp,-32
    2a36:	cc22                	sw	s0,24(sp)
    2a38:	ca26                	sw	s1,20(sp)
    2a3a:	c84a                	sw	s2,16(sp)
    2a3c:	c64e                	sw	s3,12(sp)
    2a3e:	c452                	sw	s4,8(sp)
    2a40:	ce06                	sw	ra,28(sp)
    2a42:	6a41                	lui	s4,0x10
    2a44:	4991                	li	s3,4
    2a46:	000a2783          	lw	a5,0(s4) # 0x10000
    2a4a:	0ff7f793          	zext.b	a5,a5
    2a4e:	0ef02423          	sw	a5,232(zero) # 0xe8
    2a52:	0e002023          	sw	zero,224(zero) # 0xe0
    2a56:	0e802783          	lw	a5,232(zero) # 0xe8
    2a5a:	e3d1                	bnez	a5,0x2ade
    2a5c:	0e002703          	lw	a4,224(zero) # 0xe0
    2a60:	0dc02783          	lw	a5,220(zero) # 0xdc
    2a64:	00f70763          	beq	a4,a5,0x2a72
    2a68:	0e002503          	lw	a0,224(zero) # 0xe0
    2a6c:	0ff57513          	zext.b	a0,a0
    2a70:	3179                	jal	0x26fe
    2a72:	0e002783          	lw	a5,224(zero) # 0xe0
    2a76:	0cf02e23          	sw	a5,220(zero) # 0xdc
    2a7a:	0e002783          	lw	a5,224(zero) # 0xe0
    2a7e:	05378463          	beq	a5,s3,0x2ac6
    2a82:	06f9e963          	bltu	s3,a5,0x2af4
    2a86:	4705                	li	a4,1
    2a88:	06e78c63          	beq	a5,a4,0x2b00
    2a8c:	4709                	li	a4,2
    2a8e:	fae79ce3          	bne	a5,a4,0x2a46
    2a92:	4501                	li	a0,0
    2a94:	3961                	jal	0x272c
    2a96:	4481                	li	s1,0
    2a98:	28000993          	li	s3,640
    2a9c:	16800a13          	li	s4,360
    2aa0:	4401                	li	s0,0
    2aa2:	0e402503          	lw	a0,228(zero) # 0xe4
    2aa6:	9526                	add	a0,a0,s1
    2aa8:	9522                	add	a0,a0,s0
    2aaa:	0ff57513          	zext.b	a0,a0
    2aae:	0405                	addi	s0,s0,1
    2ab0:	39b5                	jal	0x272c
    2ab2:	ff3418e3          	bne	s0,s3,0x2aa2
    2ab6:	0485                	addi	s1,s1,1
    2ab8:	ff4494e3          	bne	s1,s4,0x2aa0
    2abc:	0e402783          	lw	a5,228(zero) # 0xe4
    2ac0:	0785                	addi	a5,a5,1
    2ac2:	0ef02223          	sw	a5,228(zero) # 0xe4
    2ac6:	000f4437          	lui	s0,0xf4
    2aca:	64c1                	lui	s1,0x10
    2acc:	24040413          	addi	s0,s0,576 # 0xf4240
    2ad0:	4088                	lw	a0,0(s1)
    2ad2:	0542                	slli	a0,a0,0x10
    2ad4:	8141                	srli	a0,a0,0x10
    2ad6:	31a5                	jal	0x273e
    2ad8:	8522                	mv	a0,s0
    2ada:	3ed9                	jal	0x26b0
    2adc:	bfd5                	j	0x2ad0
    2ade:	0e802783          	lw	a5,232(zero) # 0xe8
    2ae2:	8385                	srli	a5,a5,0x1
    2ae4:	0ef02423          	sw	a5,232(zero) # 0xe8
    2ae8:	0e002783          	lw	a5,224(zero) # 0xe0
    2aec:	0785                	addi	a5,a5,1
    2aee:	0ef02023          	sw	a5,224(zero) # 0xe0
    2af2:	b795                	j	0x2a56
    2af4:	4715                	li	a4,5
    2af6:	f4e798e3          	bne	a5,a4,0x2a46
    2afa:	3999                	jal	0x2750
    2afc:	3905                	jal	0x272c
    2afe:	b7a1                	j	0x2a46
    2b00:	0e402503          	lw	a0,228(zero) # 0xe4
    2b04:	3909                	jal	0x2716
    2b06:	0ea02223          	sw	a0,228(zero) # 0xe4
    2b0a:	b761                	j	0x2a92

Disassembly of section .text.usb_interrupt:

00002b0c <.text.usb_interrupt>:
    2b0c:	8082                	ret

Disassembly of section .text.debug_main:

00002b0e <.text.debug_main>:
    2b0e:	711d                	addi	sp,sp,-96
    2b10:	caa6                	sw	s1,84(sp)
    2b12:	c4d2                	sw	s4,72(sp)
    2b14:	4515                	li	a0,5
    2b16:	6a41                	lui	s4,0x10
    2b18:	6485                	lui	s1,0x1
    2b1a:	c8ca                	sw	s2,80(sp)
    2b1c:	c2d6                	sw	s5,68(sp)
    2b1e:	c0da                	sw	s6,64(sp)
    2b20:	de5e                	sw	s7,60(sp)
    2b22:	dc62                	sw	s8,56(sp)
    2b24:	ce86                	sw	ra,92(sp)
    2b26:	cca2                	sw	s0,88(sp)
    2b28:	c6ce                	sw	s3,76(sp)
    2b2a:	da66                	sw	s9,52(sp)
    2b2c:	d86a                	sw	s10,48(sp)
    2b2e:	d66e                	sw	s11,44(sp)
    2b30:	6ac1                	lui	s5,0x10
    2b32:	36f1                	jal	0x26fe
    2b34:	0a11                	addi	s4,s4,4 # 0x10004
    2b36:	4b05                	li	s6,1
    2b38:	38848493          	addi	s1,s1,904 # 0x1388
    2b3c:	4b89                	li	s7,2
    2b3e:	6c05                	lui	s8,0x1
    2b40:	000aa783          	lw	a5,0(s5) # 0x10000
    2b44:	07c2                	slli	a5,a5,0x10
    2b46:	83c1                	srli	a5,a5,0x10
    2b48:	0cf01c23          	sh	a5,216(zero) # 0xd8
    2b4c:	0d805783          	lhu	a5,216(zero) # 0xd8
    2b50:	07c2                	slli	a5,a5,0x10
    2b52:	83c1                	srli	a5,a5,0x10
    2b54:	00fa2023          	sw	a5,0(s4)
    2b58:	0d805783          	lhu	a5,216(zero) # 0xd8
    2b5c:	d3f5                	beqz	a5,0x2b40
    2b5e:	000aa783          	lw	a5,0(s5)
    2b62:	07c2                	slli	a5,a5,0x10
    2b64:	83c1                	srli	a5,a5,0x10
    2b66:	ffe5                	bnez	a5,0x2b5e
    2b68:	0d805783          	lhu	a5,216(zero) # 0xd8
    2b6c:	01079713          	slli	a4,a5,0x10
    2b70:	8341                	srli	a4,a4,0x10
    2b72:	05678e63          	beq	a5,s6,0x2bce
    2b76:	fd7715e3          	bne	a4,s7,0x2b40
    2b7a:	4981                	li	s3,0
    2b7c:	4c81                	li	s9,0
    2b7e:	01099413          	slli	s0,s3,0x10
    2b82:	8041                	srli	s0,s0,0x10
    2b84:	02040d13          	addi	s10,s0,32
    2b88:	02000613          	li	a2,32
    2b8c:	85ce                	mv	a1,s3
    2b8e:	850a                	mv	a0,sp
    2b90:	0d42                	slli	s10,s10,0x10
    2b92:	3c75                	jal	0x264e
    2b94:	8d8a                	mv	s11,sp
    2b96:	010d5d13          	srli	s10,s10,0x10
    2b9a:	8522                	mv	a0,s0
    2b9c:	36f1                	jal	0x2768
    2b9e:	03a00513          	li	a0,58
    2ba2:	3669                	jal	0x272c
    2ba4:	02000513          	li	a0,32
    2ba8:	3651                	jal	0x272c
    2baa:	000da503          	lw	a0,0(s11)
    2bae:	0411                	addi	s0,s0,4
    2bb0:	0442                	slli	s0,s0,0x10
    2bb2:	3ec5                	jal	0x27a2
    2bb4:	3121                	jal	0x27bc
    2bb6:	8526                	mv	a0,s1
    2bb8:	8041                	srli	s0,s0,0x10
    2bba:	3cdd                	jal	0x26b0
    2bbc:	0d91                	addi	s11,s11,4
    2bbe:	fda41ee3          	bne	s0,s10,0x2b9a
    2bc2:	0ca1                	addi	s9,s9,8
    2bc4:	02098993          	addi	s3,s3,32
    2bc8:	fb8c9be3          	bne	s9,s8,0x2b7e
    2bcc:	bf95                	j	0x2b40
    2bce:	4401                	li	s0,0
    2bd0:	00241513          	slli	a0,s0,0x2
    2bd4:	0542                	slli	a0,a0,0x10
    2bd6:	8141                	srli	a0,a0,0x10
    2bd8:	3e41                	jal	0x2768
    2bda:	03a00513          	li	a0,58
    2bde:	36b9                	jal	0x272c
    2be0:	8526                	mv	a0,s1
    2be2:	34f9                	jal	0x26b0
    2be4:	00340993          	addi	s3,s0,3
    2be8:	fff40c93          	addi	s9,s0,-1
    2bec:	02000513          	li	a0,32
    2bf0:	3e35                	jal	0x272c
    2bf2:	00299793          	slli	a5,s3,0x2
    2bf6:	4388                	lw	a0,0(a5)
    2bf8:	19fd                	addi	s3,s3,-1
    2bfa:	3665                	jal	0x27a2
    2bfc:	8526                	mv	a0,s1
    2bfe:	3c4d                	jal	0x26b0
    2c00:	ff9996e3          	bne	s3,s9,0x2bec
    2c04:	3e65                	jal	0x27bc
    2c06:	0411                	addi	s0,s0,4
    2c08:	80040793          	addi	a5,s0,-2048
    2c0c:	f3f1                	bnez	a5,0x2bd0
    2c0e:	bf0d                	j	0x2b40

Disassembly of section .text.debug_interrupt:

00002c10 <.text.debug_interrupt>:
    2c10:	8082                	ret
