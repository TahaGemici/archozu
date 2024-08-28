
a.out:     file format elf32-littleriscv


Disassembly of section .text:

00002000 <.text>:
    2000:	03005703          	lhu	a4,48(zero) # 0x30
    2004:	002dc537          	lui	a0,0x2dc
    2008:	67c1                	lui	a5,0x10
    200a:	0742                	slli	a4,a4,0x10
    200c:	8341                	srli	a4,a4,0x10
    200e:	c3d8                	sw	a4,4(a5)
    2010:	4605                	li	a2,1
    2012:	4581                	li	a1,0
    2014:	6bf50513          	addi	a0,a0,1727 # 0x2dc6bf
    2018:	2589                	jal	0x265a
    201a:	4515                	li	a0,5
    201c:	2d7d                	jal	0x26da
    201e:	66c1                	lui	a3,0x10
    2020:	4298                	lw	a4,0(a3)
    2022:	0742                	slli	a4,a4,0x10
    2024:	8341                	srli	a4,a4,0x10
    2026:	0ee01423          	sh	a4,232(zero) # 0xe8
    202a:	0e805703          	lhu	a4,232(zero) # 0xe8
    202e:	db6d                	beqz	a4,0x2020
    2030:	6741                	lui	a4,0x10
    2032:	00072223          	sw	zero,4(a4) # 0x10004
    2036:	6731                	lui	a4,0xc
    2038:	00072623          	sw	zero,12(a4) # 0xc00c
    203c:	66c1                	lui	a3,0x10
    203e:	4298                	lw	a4,0(a3)
    2040:	0742                	slli	a4,a4,0x10
    2042:	8341                	srli	a4,a4,0x10
    2044:	ff6d                	bnez	a4,0x203e
    2046:	0e805683          	lhu	a3,232(zero) # 0xe8
    204a:	4721                	li	a4,8
    204c:	01069793          	slli	a5,a3,0x10
    2050:	83c1                	srli	a5,a5,0x10
    2052:	02e68f63          	beq	a3,a4,0x2090
    2056:	00f76d63          	bltu	a4,a5,0x2070
    205a:	4709                	li	a4,2
    205c:	02e78663          	beq	a5,a4,0x2088
    2060:	4711                	li	a4,4
    2062:	02e78563          	beq	a5,a4,0x208c
    2066:	4705                	li	a4,1
    2068:	00e78e63          	beq	a5,a4,0x2084
    206c:	2a5000ef          	jal	0x2b10
    2070:	4741                	li	a4,16
    2072:	02e78163          	beq	a5,a4,0x2094
    2076:	02000713          	li	a4,32
    207a:	fee799e3          	bne	a5,a4,0x206c
    207e:	193000ef          	jal	0x2a10
    2082:	b7ed                	j	0x206c
    2084:	7ae000ef          	jal	0x2832
    2088:	00f000ef          	jal	0x2896
    208c:	06f000ef          	jal	0x28fa
    2090:	117000ef          	jal	0x29a6
    2094:	169000ef          	jal	0x29fc
	...
    2200:	7139                	addi	sp,sp,-64
    2202:	cc3e                	sw	a5,24(sp)
    2204:	ce3a                	sw	a4,28(sp)
    2206:	0f802703          	lw	a4,248(zero) # 0xf8
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
    2226:	c715                	beqz	a4,0x2252
    2228:	0e002c23          	sw	zero,248(zero) # 0xf8
    222c:	50f2                	lw	ra,60(sp)
    222e:	52e2                	lw	t0,56(sp)
    2230:	5352                	lw	t1,52(sp)
    2232:	53c2                	lw	t2,48(sp)
    2234:	5532                	lw	a0,44(sp)
    2236:	55a2                	lw	a1,40(sp)
    2238:	5612                	lw	a2,36(sp)
    223a:	5682                	lw	a3,32(sp)
    223c:	4772                	lw	a4,28(sp)
    223e:	47e2                	lw	a5,24(sp)
    2240:	4852                	lw	a6,20(sp)
    2242:	48c2                	lw	a7,16(sp)
    2244:	4e32                	lw	t3,12(sp)
    2246:	4ea2                	lw	t4,8(sp)
    2248:	4f12                	lw	t5,4(sp)
    224a:	4f82                	lw	t6,0(sp)
    224c:	6121                	addi	sp,sp,64
    224e:	30200073          	mret
    2252:	0e805783          	lhu	a5,232(zero) # 0xe8
    2256:	01079713          	slli	a4,a5,0x10
    225a:	8341                	srli	a4,a4,0x10
    225c:	c799                	beqz	a5,0x226a
    225e:	47a1                	li	a5,8
    2260:	fcf716e3          	bne	a4,a5,0x222c
    2264:	784000ef          	jal	0x29e8
    2268:	b7d1                	j	0x222c
    226a:	1ab000ef          	jal	0x2c14
    226e:	bf7d                	j	0x222c

Disassembly of section .text.uart_conf:

00002270 <.text.uart_conf>:
    2270:	039387b7          	lui	a5,0x3938
    2274:	70078793          	addi	a5,a5,1792 # 0x3938700
    2278:	02a7d7b3          	divu	a5,a5,a0
    227c:	6719                	lui	a4,0x6
    227e:	17fd                	addi	a5,a5,-1
    2280:	c31c                	sw	a5,0(a4)
    2282:	6799                	lui	a5,0x6
    2284:	c3cc                	sw	a1,4(a5)
    2286:	8082                	ret

Disassembly of section .text.uart_read:

00002288 <.text.uart_read>:
    2288:	6799                	lui	a5,0x6
    228a:	07c1                	addi	a5,a5,16 # 0x6010
    228c:	4709                	li	a4,2
    228e:	4394                	lw	a3,0(a5)
    2290:	fee69fe3          	bne	a3,a4,0x228e
    2294:	6719                	lui	a4,0x6
    2296:	4708                	lw	a0,8(a4)
    2298:	0007a023          	sw	zero,0(a5)
    229c:	0ff57513          	zext.b	a0,a0
    22a0:	8082                	ret

Disassembly of section .text.uart_write:

000022a2 <.text.uart_write>:
    22a2:	6799                	lui	a5,0x6
    22a4:	c7c8                	sw	a0,12(a5)
    22a6:	6799                	lui	a5,0x6
    22a8:	07c1                	addi	a5,a5,16 # 0x6010
    22aa:	4705                	li	a4,1
    22ac:	c398                	sw	a4,0(a5)
    22ae:	4398                	lw	a4,0(a5)
    22b0:	8b11                	andi	a4,a4,4
    22b2:	df75                	beqz	a4,0x22ae
    22b4:	4398                	lw	a4,0(a5)
    22b6:	8b09                	andi	a4,a4,2
    22b8:	c398                	sw	a4,0(a5)
    22ba:	8082                	ret

Disassembly of section .text.i2c_conf:

000022bc <.text.i2c_conf>:
    22bc:	67a1                	lui	a5,0x8
    22be:	c3cc                	sw	a1,4(a5)
    22c0:	0512                	slli	a0,a0,0x4
    22c2:	67a1                	lui	a5,0x8
    22c4:	cb88                	sw	a0,16(a5)
    22c6:	8082                	ret

Disassembly of section .text.i2c_write:

000022c8 <.text.i2c_write>:
    22c8:	67a1                	lui	a5,0x8
    22ca:	c38c                	sw	a1,0(a5)
    22cc:	c7c8                	sw	a0,12(a5)
    22ce:	67a1                	lui	a5,0x8
    22d0:	4b98                	lw	a4,16(a5)
    22d2:	07c1                	addi	a5,a5,16 # 0x8010
    22d4:	0705                	addi	a4,a4,1 # 0x6001
    22d6:	c398                	sw	a4,0(a5)
    22d8:	4398                	lw	a4,0(a5)
    22da:	8b09                	andi	a4,a4,2
    22dc:	df75                	beqz	a4,0x22d8
    22de:	4398                	lw	a4,0(a5)
    22e0:	1775                	addi	a4,a4,-3
    22e2:	c398                	sw	a4,0(a5)
    22e4:	8082                	ret

Disassembly of section .text.i2c_read:

000022e6 <.text.i2c_read>:
    22e6:	67a1                	lui	a5,0x8
    22e8:	c388                	sw	a0,0(a5)
    22ea:	4b98                	lw	a4,16(a5)
    22ec:	07c1                	addi	a5,a5,16 # 0x8010
    22ee:	0711                	addi	a4,a4,4
    22f0:	c398                	sw	a4,0(a5)
    22f2:	4398                	lw	a4,0(a5)
    22f4:	8b21                	andi	a4,a4,8
    22f6:	df75                	beqz	a4,0x22f2
    22f8:	4398                	lw	a4,0(a5)
    22fa:	1751                	addi	a4,a4,-12
    22fc:	c398                	sw	a4,0(a5)
    22fe:	67a1                	lui	a5,0x8
    2300:	4788                	lw	a0,8(a5)
    2302:	8082                	ret

Disassembly of section .text.qspi_wait:

00002304 <.text.qspi_wait>:
    2304:	67a9                	lui	a5,0xa
    2306:	02878793          	addi	a5,a5,40 # 0xa028
    230a:	4705                	li	a4,1
    230c:	4394                	lw	a3,0(a5)
    230e:	fee69fe3          	bne	a3,a4,0x230c
    2312:	67a9                	lui	a5,0xa
    2314:	02878793          	addi	a5,a5,40 # 0xa028
    2318:	4705                	li	a4,1
    231a:	4394                	lw	a3,0(a5)
    231c:	fee69fe3          	bne	a3,a4,0x231a
    2320:	8082                	ret

Disassembly of section .text.qspi_custom_x0:

00002322 <.text.qspi_custom_x0>:
    2322:	47f9                	li	a5,30
    2324:	02b7f733          	remu	a4,a5,a1
    2328:	02b7d7b3          	divu	a5,a5,a1
    232c:	00173713          	seqz	a4,a4
    2330:	8f99                	sub	a5,a5,a4
    2332:	80000737          	lui	a4,0x80000
    2336:	953a                	add	a0,a0,a4
    2338:	07e6                	slli	a5,a5,0x19
    233a:	97aa                	add	a5,a5,a0
    233c:	6729                	lui	a4,0xa
    233e:	c31c                	sw	a5,0(a4)
    2340:	b7d1                	j	0x2304

Disassembly of section .text.qspi_custom_write:

00002342 <.text.qspi_custom_write>:
    2342:	4891                	li	a7,4
    2344:	05169763          	bne	a3,a7,0x2392
    2348:	30060613          	addi	a2,a2,768
    234c:	46f9                	li	a3,30
    234e:	0306f8b3          	remu	a7,a3,a6
    2352:	8305                	srli	a4,a4,0x1
    2354:	072e                	slli	a4,a4,0xb
    2356:	0306d6b3          	divu	a3,a3,a6
    235a:	0018b813          	seqz	a6,a7
    235e:	800008b7          	lui	a7,0x80000
    2362:	40088893          	addi	a7,a7,1024 # 0x80000400
    2366:	410686b3          	sub	a3,a3,a6
    236a:	fff78813          	addi	a6,a5,-1
    236e:	0842                	slli	a6,a6,0x10
    2370:	9846                	add	a6,a6,a7
    2372:	06e6                	slli	a3,a3,0x19
    2374:	9742                	add	a4,a4,a6
    2376:	9736                	add	a4,a4,a3
    2378:	9732                	add	a4,a4,a2
    237a:	66a9                	lui	a3,0xa
    237c:	078d                	addi	a5,a5,3
    237e:	6629                	lui	a2,0xa
    2380:	c2cc                	sw	a1,4(a3)
    2382:	9bf1                	andi	a5,a5,-4
    2384:	4681                	li	a3,0
    2386:	0621                	addi	a2,a2,8 # 0xa008
    2388:	00d79863          	bne	a5,a3,0x2398
    238c:	67a9                	lui	a5,0xa
    238e:	c398                	sw	a4,0(a5)
    2390:	bf95                	j	0x2304
    2392:	06a2                	slli	a3,a3,0x8
    2394:	9636                	add	a2,a2,a3
    2396:	bf5d                	j	0x234c
    2398:	00d50833          	add	a6,a0,a3
    239c:	00082803          	lw	a6,0(a6)
    23a0:	00c685b3          	add	a1,a3,a2
    23a4:	0691                	addi	a3,a3,4 # 0xa004
    23a6:	0105a023          	sw	a6,0(a1)
    23aa:	bff9                	j	0x2388

Disassembly of section .text.qspi_custom_read:

000023ac <.text.qspi_custom_read>:
    23ac:	1141                	addi	sp,sp,-16
    23ae:	c422                	sw	s0,8(sp)
    23b0:	c226                	sw	s1,4(sp)
    23b2:	843e                	mv	s0,a5
    23b4:	c606                	sw	ra,12(sp)
    23b6:	4791                	li	a5,4
    23b8:	84aa                	mv	s1,a0
    23ba:	04f69a63          	bne	a3,a5,0x240e
    23be:	30060613          	addi	a2,a2,768
    23c2:	46f9                	li	a3,30
    23c4:	0306f7b3          	remu	a5,a3,a6
    23c8:	80000537          	lui	a0,0x80000
    23cc:	8305                	srli	a4,a4,0x1
    23ce:	072e                	slli	a4,a4,0xb
    23d0:	0306d6b3          	divu	a3,a3,a6
    23d4:	0017b793          	seqz	a5,a5
    23d8:	8e9d                	sub	a3,a3,a5
    23da:	fff40793          	addi	a5,s0,-1
    23de:	07c2                	slli	a5,a5,0x10
    23e0:	97aa                	add	a5,a5,a0
    23e2:	06e6                	slli	a3,a3,0x19
    23e4:	97ba                	add	a5,a5,a4
    23e6:	00f68733          	add	a4,a3,a5
    23ea:	67a9                	lui	a5,0xa
    23ec:	9732                	add	a4,a4,a2
    23ee:	c3cc                	sw	a1,4(a5)
    23f0:	67a9                	lui	a5,0xa
    23f2:	c398                	sw	a4,0(a5)
    23f4:	3f01                	jal	0x2304
    23f6:	040d                	addi	s0,s0,3
    23f8:	6729                	lui	a4,0xa
    23fa:	9871                	andi	s0,s0,-4
    23fc:	4781                	li	a5,0
    23fe:	0721                	addi	a4,a4,8 # 0xa008
    2400:	00f41a63          	bne	s0,a5,0x2414
    2404:	40b2                	lw	ra,12(sp)
    2406:	4422                	lw	s0,8(sp)
    2408:	4492                	lw	s1,4(sp)
    240a:	0141                	addi	sp,sp,16
    240c:	8082                	ret
    240e:	06a2                	slli	a3,a3,0x8
    2410:	9636                	add	a2,a2,a3
    2412:	bf45                	j	0x23c2
    2414:	00e786b3          	add	a3,a5,a4
    2418:	4290                	lw	a2,0(a3)
    241a:	00f486b3          	add	a3,s1,a5
    241e:	0791                	addi	a5,a5,4 # 0xa004
    2420:	c290                	sw	a2,0(a3)
    2422:	bff9                	j	0x2400

Disassembly of section .text.s25fl128s_wren:

00002424 <.text.s25fl128s_wren>:
    2424:	800007b7          	lui	a5,0x80000
    2428:	0799                	addi	a5,a5,6 # 0x80000006
    242a:	6729                	lui	a4,0xa
    242c:	c31c                	sw	a5,0(a4)
    242e:	bdd9                	j	0x2304

Disassembly of section .text.s25fl128s_wrdi:

00002430 <.text.s25fl128s_wrdi>:
    2430:	800007b7          	lui	a5,0x80000
    2434:	0791                	addi	a5,a5,4 # 0x80000004
    2436:	6729                	lui	a4,0xa
    2438:	c31c                	sw	a5,0(a4)
    243a:	b5e9                	j	0x2304

Disassembly of section .text.s25fl128s_clsr:

0000243c <.text.s25fl128s_clsr>:
    243c:	800007b7          	lui	a5,0x80000
    2440:	03078793          	addi	a5,a5,48 # 0x80000030
    2444:	6729                	lui	a4,0xa
    2446:	c31c                	sw	a5,0(a4)
    2448:	bd75                	j	0x2304

Disassembly of section .text.s25fl128s_reset:

0000244a <.text.s25fl128s_reset>:
    244a:	800007b7          	lui	a5,0x80000
    244e:	0f078793          	addi	a5,a5,240 # 0x800000f0
    2452:	6729                	lui	a4,0xa
    2454:	c31c                	sw	a5,0(a4)
    2456:	b57d                	j	0x2304

Disassembly of section .text.s25fl128s_rdid:

00002458 <.text.s25fl128s_rdid>:
    2458:	08500813          	li	a6,133
    245c:	02000793          	li	a5,32
    2460:	4701                	li	a4,0
    2462:	4685                	li	a3,1
    2464:	09f00613          	li	a2,159
    2468:	4581                	li	a1,0
    246a:	b789                	j	0x23ac

Disassembly of section .text.s25fl128s_rdsr1:

0000246c <.text.s25fl128s_rdsr1>:
    246c:	08500813          	li	a6,133
    2470:	4785                	li	a5,1
    2472:	4701                	li	a4,0
    2474:	4685                	li	a3,1
    2476:	4615                	li	a2,5
    2478:	4581                	li	a1,0
    247a:	bf0d                	j	0x23ac

Disassembly of section .text.s25fl128s_rdsr2:

0000247c <.text.s25fl128s_rdsr2>:
    247c:	08500813          	li	a6,133
    2480:	4785                	li	a5,1
    2482:	4701                	li	a4,0
    2484:	4685                	li	a3,1
    2486:	461d                	li	a2,7
    2488:	4581                	li	a1,0
    248a:	b70d                	j	0x23ac

Disassembly of section .text.s25fl128s_rdcr:

0000248c <.text.s25fl128s_rdcr>:
    248c:	08500813          	li	a6,133
    2490:	4785                	li	a5,1
    2492:	4701                	li	a4,0
    2494:	4685                	li	a3,1
    2496:	03500613          	li	a2,53
    249a:	4581                	li	a1,0
    249c:	bf01                	j	0x23ac

Disassembly of section .text.s25fl128s_res:

0000249e <.text.s25fl128s_res>:
    249e:	03200813          	li	a6,50
    24a2:	4785                	li	a5,1
    24a4:	4761                	li	a4,24
    24a6:	4685                	li	a3,1
    24a8:	0ab00613          	li	a2,171
    24ac:	4581                	li	a1,0
    24ae:	bdfd                	j	0x23ac

Disassembly of section .text.s25fl128s_read_id:

000024b0 <.text.s25fl128s_read_id>:
    24b0:	08500813          	li	a6,133
    24b4:	4789                	li	a5,2
    24b6:	4761                	li	a4,24
    24b8:	4685                	li	a3,1
    24ba:	09000613          	li	a2,144
    24be:	b5fd                	j	0x23ac

Disassembly of section .text.s25fl128s_read:

000024c0 <.text.s25fl128s_read>:
    24c0:	87b2                	mv	a5,a2
    24c2:	03200813          	li	a6,50
    24c6:	4761                	li	a4,24
    24c8:	4685                	li	a3,1
    24ca:	460d                	li	a2,3
    24cc:	b5c5                	j	0x23ac

Disassembly of section .text.s25fl128s_wrr:

000024ce <.text.s25fl128s_wrr>:
    24ce:	08500813          	li	a6,133
    24d2:	4789                	li	a5,2
    24d4:	4701                	li	a4,0
    24d6:	4685                	li	a3,1
    24d8:	4605                	li	a2,1
    24da:	4581                	li	a1,0
    24dc:	b59d                	j	0x2342

Disassembly of section .text.s25fl128s_se:

000024de <.text.s25fl128s_se>:
    24de:	08500813          	li	a6,133
    24e2:	478d                	li	a5,3
    24e4:	4701                	li	a4,0
    24e6:	4685                	li	a3,1
    24e8:	0d800613          	li	a2,216
    24ec:	4581                	li	a1,0
    24ee:	bd91                	j	0x2342

Disassembly of section .text.s25fl128s_pp:

000024f0 <.text.s25fl128s_pp>:
    24f0:	87b2                	mv	a5,a2
    24f2:	08500813          	li	a6,133
    24f6:	4761                	li	a4,24
    24f8:	4685                	li	a3,1
    24fa:	4609                	li	a2,2
    24fc:	b599                	j	0x2342

Disassembly of section .text.s25fl128s_dor:

000024fe <.text.s25fl128s_dor>:
    24fe:	87b2                	mv	a5,a2
    2500:	06800813          	li	a6,104
    2504:	02000713          	li	a4,32
    2508:	4689                	li	a3,2
    250a:	03b00613          	li	a2,59
    250e:	bd79                	j	0x23ac

Disassembly of section .text.s25fl128s_qor:

00002510 <.text.s25fl128s_qor>:
    2510:	87b2                	mv	a5,a2
    2512:	06800813          	li	a6,104
    2516:	02000713          	li	a4,32
    251a:	4691                	li	a3,4
    251c:	06b00613          	li	a2,107
    2520:	b571                	j	0x23ac

Disassembly of section .text.s25fl128s_qpp:

00002522 <.text.s25fl128s_qpp>:
    2522:	87b2                	mv	a5,a2
    2524:	05000813          	li	a6,80
    2528:	4761                	li	a4,24
    252a:	4691                	li	a3,4
    252c:	03200613          	li	a2,50
    2530:	bd09                	j	0x2342

Disassembly of section .text.mt25ql256aba_write_disable:

00002532 <.text.mt25ql256aba_write_disable>:
    2532:	bdfd                	j	0x2430

Disassembly of section .text.mt25ql256aba_write_enable:

00002534 <.text.mt25ql256aba_write_enable>:
    2534:	bdc5                	j	0x2424

Disassembly of section .text.mt25ql256aba_reset_enable:

00002536 <.text.mt25ql256aba_reset_enable>:
    2536:	800007b7          	lui	a5,0x80000
    253a:	06678793          	addi	a5,a5,102 # 0x80000066
    253e:	6729                	lui	a4,0xa
    2540:	c31c                	sw	a5,0(a4)
    2542:	b3c9                	j	0x2304

Disassembly of section .text.mt25ql256aba_reset_memory:

00002544 <.text.mt25ql256aba_reset_memory>:
    2544:	800007b7          	lui	a5,0x80000
    2548:	09978793          	addi	a5,a5,153 # 0x80000099
    254c:	6729                	lui	a4,0xa
    254e:	c31c                	sw	a5,0(a4)
    2550:	bb55                	j	0x2304

Disassembly of section .text.mt25ql256aba_read:

00002552 <.text.mt25ql256aba_read>:
    2552:	87b2                	mv	a5,a2
    2554:	08500813          	li	a6,133
    2558:	4761                	li	a4,24
    255a:	4685                	li	a3,1
    255c:	460d                	li	a2,3
    255e:	b5b9                	j	0x23ac

Disassembly of section .text.mt25ql256aba_page_program:

00002560 <.text.mt25ql256aba_page_program>:
    2560:	bf41                	j	0x24f0

Disassembly of section .text.mt25ql256aba_4KiB_sector_erase:

00002562 <.text.mt25ql256aba_4KiB_sector_erase>:
    2562:	08500813          	li	a6,133
    2566:	478d                	li	a5,3
    2568:	4701                	li	a4,0
    256a:	4685                	li	a3,1
    256c:	02000613          	li	a2,32
    2570:	4581                	li	a1,0
    2572:	bbc1                	j	0x2342

Disassembly of section .text.mt25ql256aba_32KiB_sector_erase:

00002574 <.text.mt25ql256aba_32KiB_sector_erase>:
    2574:	08500813          	li	a6,133
    2578:	478d                	li	a5,3
    257a:	4701                	li	a4,0
    257c:	4685                	li	a3,1
    257e:	05200613          	li	a2,82
    2582:	4581                	li	a1,0
    2584:	bb7d                	j	0x2342

Disassembly of section .text.mt25ql256aba_sector_erase:

00002586 <.text.mt25ql256aba_sector_erase>:
    2586:	bfa1                	j	0x24de

Disassembly of section .text.mt25ql256aba_read_id:

00002588 <.text.mt25ql256aba_read_id>:
    2588:	87ae                	mv	a5,a1
    258a:	08500813          	li	a6,133
    258e:	4701                	li	a4,0
    2590:	4685                	li	a3,1
    2592:	09f00613          	li	a2,159
    2596:	4581                	li	a1,0
    2598:	bd11                	j	0x23ac

Disassembly of section .text.mt25ql256aba_read_status_register:

0000259a <.text.mt25ql256aba_read_status_register>:
    259a:	bdc9                	j	0x246c

Disassembly of section .text.mt25ql256aba_read_flag_status_register:

0000259c <.text.mt25ql256aba_read_flag_status_register>:
    259c:	08500813          	li	a6,133
    25a0:	4785                	li	a5,1
    25a2:	4701                	li	a4,0
    25a4:	4685                	li	a3,1
    25a6:	07000613          	li	a2,112
    25aa:	4581                	li	a1,0
    25ac:	b501                	j	0x23ac

Disassembly of section .text.mt25ql256aba_read_nonvolatile_configuration_register:

000025ae <.text.mt25ql256aba_read_nonvolatile_configuration_register>:
    25ae:	08500813          	li	a6,133
    25b2:	4789                	li	a5,2
    25b4:	4701                	li	a4,0
    25b6:	4685                	li	a3,1
    25b8:	0b500613          	li	a2,181
    25bc:	4581                	li	a1,0
    25be:	b3fd                	j	0x23ac

Disassembly of section .text.mt25ql256aba_read_volatile_configuration_register:

000025c0 <.text.mt25ql256aba_read_volatile_configuration_register>:
    25c0:	08500813          	li	a6,133
    25c4:	4785                	li	a5,1
    25c6:	4701                	li	a4,0
    25c8:	4685                	li	a3,1
    25ca:	08500613          	li	a2,133
    25ce:	4581                	li	a1,0
    25d0:	bbf1                	j	0x23ac

Disassembly of section .text.mt25ql256aba_write_status_register:

000025d2 <.text.mt25ql256aba_write_status_register>:
    25d2:	08500813          	li	a6,133
    25d6:	4785                	li	a5,1
    25d8:	4701                	li	a4,0
    25da:	4685                	li	a3,1
    25dc:	4605                	li	a2,1
    25de:	4581                	li	a1,0
    25e0:	b38d                	j	0x2342

Disassembly of section .text.mt25ql256aba_write_nonvolatile_configuration_register:

000025e2 <.text.mt25ql256aba_write_nonvolatile_configuration_register>:
    25e2:	08500813          	li	a6,133
    25e6:	4789                	li	a5,2
    25e8:	4701                	li	a4,0
    25ea:	4685                	li	a3,1
    25ec:	0b100613          	li	a2,177
    25f0:	4581                	li	a1,0
    25f2:	bb81                	j	0x2342

Disassembly of section .text.mt25ql256aba_write_volatile_configuration_register:

000025f4 <.text.mt25ql256aba_write_volatile_configuration_register>:
    25f4:	08500813          	li	a6,133
    25f8:	4785                	li	a5,1
    25fa:	4701                	li	a4,0
    25fc:	4685                	li	a3,1
    25fe:	08100613          	li	a2,129
    2602:	4581                	li	a1,0
    2604:	bb3d                	j	0x2342

Disassembly of section .text.mt25ql256aba_write_enhanced_volatile_configuration_register:

00002606 <.text.mt25ql256aba_write_enhanced_volatile_configuration_register>:
    2606:	08500813          	li	a6,133
    260a:	4785                	li	a5,1
    260c:	4701                	li	a4,0
    260e:	4685                	li	a3,1
    2610:	06100613          	li	a2,97
    2614:	4581                	li	a1,0
    2616:	b335                	j	0x2342

Disassembly of section .text.mt25ql256aba_dual_output_fast_read:

00002618 <.text.mt25ql256aba_dual_output_fast_read>:
    2618:	87b2                	mv	a5,a2
    261a:	08500813          	li	a6,133
    261e:	02000713          	li	a4,32
    2622:	4689                	li	a3,2
    2624:	03b00613          	li	a2,59
    2628:	b351                	j	0x23ac

Disassembly of section .text.mt25ql256aba_quad_output_fast_read:

0000262a <.text.mt25ql256aba_quad_output_fast_read>:
    262a:	87b2                	mv	a5,a2
    262c:	08500813          	li	a6,133
    2630:	02000713          	li	a4,32
    2634:	4691                	li	a3,4
    2636:	06b00613          	li	a2,107
    263a:	bb8d                	j	0x23ac

Disassembly of section .text.timer_counter:

0000263c <.text.timer_counter>:
    263c:	67b1                	lui	a5,0xc
    263e:	4bc8                	lw	a0,20(a5)
    2640:	8082                	ret

Disassembly of section .text.timer_event:

00002642 <.text.timer_event>:
    2642:	67b1                	lui	a5,0xc
    2644:	4f88                	lw	a0,24(a5)
    2646:	8082                	ret

Disassembly of section .text.timer_clear:

00002648 <.text.timer_clear>:
    2648:	67b1                	lui	a5,0xc
    264a:	4705                	li	a4,1
    264c:	c798                	sw	a4,8(a5)
    264e:	67b1                	lui	a5,0xc
    2650:	cfd8                	sw	a4,28(a5)
    2652:	8082                	ret

Disassembly of section .text.timer_enabled:

00002654 <.text.timer_enabled>:
    2654:	67b1                	lui	a5,0xc
    2656:	c7c8                	sw	a0,12(a5)
    2658:	8082                	ret

Disassembly of section .text.timer_conf:

0000265a <.text.timer_conf>:
    265a:	1141                	addi	sp,sp,-16
    265c:	c606                	sw	ra,12(sp)
    265e:	67b1                	lui	a5,0xc
    2660:	c388                	sw	a0,0(a5)
    2662:	c3cc                	sw	a1,4(a5)
    2664:	67b1                	lui	a5,0xc
    2666:	cb90                	sw	a2,16(a5)
    2668:	08000613          	li	a2,128
    266c:	6589                	lui	a1,0x2
    266e:	20058593          	addi	a1,a1,512 # 0x2200
    2672:	30559073          	csrw	mtvec,a1
    2676:	30046073          	csrsi	mstatus,8
    267a:	30462073          	csrs	mie,a2
    267e:	37e9                	jal	0x2648
    2680:	40b2                	lw	ra,12(sp)
    2682:	67b1                	lui	a5,0xc
    2684:	4705                	li	a4,1
    2686:	c7d8                	sw	a4,12(a5)
    2688:	0141                	addi	sp,sp,16
    268a:	8082                	ret

Disassembly of section .text.delay_us:

0000268c <.text.delay_us>:
    268c:	7179                	addi	sp,sp,-48
    268e:	d422                	sw	s0,40(sp)
    2690:	6731                	lui	a4,0xc
    2692:	0040                	addi	s0,sp,4
    2694:	d606                	sw	ra,44(sp)
    2696:	86a2                	mv	a3,s0
    2698:	67b1                	lui	a5,0xc
    269a:	0771                	addi	a4,a4,28 # 0xc01c
    269c:	4390                	lw	a2,0(a5)
    269e:	0791                	addi	a5,a5,4 # 0xc004
    26a0:	c290                	sw	a2,0(a3)
    26a2:	0691                	addi	a3,a3,4
    26a4:	fee79ce3          	bne	a5,a4,0x269c
    26a8:	fff50593          	addi	a1,a0,-1 # 0x7fffffff
    26ac:	4605                	li	a2,1
    26ae:	03b00513          	li	a0,59
    26b2:	3765                	jal	0x265a
    26b4:	4705                	li	a4,1
    26b6:	0ee02c23          	sw	a4,248(zero) # 0xf8
    26ba:	0f802703          	lw	a4,248(zero) # 0xf8
    26be:	ff75                	bnez	a4,0x26ba
    26c0:	6731                	lui	a4,0xc
    26c2:	67b1                	lui	a5,0xc
    26c4:	0771                	addi	a4,a4,28 # 0xc01c
    26c6:	4014                	lw	a3,0(s0)
    26c8:	0411                	addi	s0,s0,4
    26ca:	c394                	sw	a3,0(a5)
    26cc:	0791                	addi	a5,a5,4 # 0xc004
    26ce:	fee79ce3          	bne	a5,a4,0x26c6
    26d2:	50b2                	lw	ra,44(sp)
    26d4:	5422                	lw	s0,40(sp)
    26d6:	6145                	addi	sp,sp,48
    26d8:	8082                	ret

Disassembly of section .text.usb_conf:

000026da <.text.usb_conf>:
    26da:	67b9                	lui	a5,0xe
    26dc:	4398                	lw	a4,0(a5)
    26de:	00a70963          	beq	a4,a0,0x26f0
    26e2:	4715                	li	a4,5
    26e4:	00a77563          	bgeu	a4,a0,0x26ee
    26e8:	0007a023          	sw	zero,0(a5) # 0xe000
    26ec:	8082                	ret
    26ee:	c388                	sw	a0,0(a5)
    26f0:	8082                	ret

Disassembly of section .text.usb_audio:

000026f2 <.text.usb_audio>:
    26f2:	67b9                	lui	a5,0xe
    26f4:	c788                	sw	a0,8(a5)
    26f6:	67b9                	lui	a5,0xe
    26f8:	07b1                	addi	a5,a5,12 # 0xe00c
    26fa:	4705                	li	a4,1
    26fc:	c398                	sw	a4,0(a5)
    26fe:	4398                	lw	a4,0(a5)
    2700:	ff7d                	bnez	a4,0x26fe
    2702:	67b9                	lui	a5,0xe
    2704:	43c8                	lw	a0,4(a5)
    2706:	8082                	ret

Disassembly of section .text.usb_camera:

00002708 <.text.usb_camera>:
    2708:	67b9                	lui	a5,0xe
    270a:	c788                	sw	a0,8(a5)
    270c:	67b9                	lui	a5,0xe
    270e:	07b1                	addi	a5,a5,12 # 0xe00c
    2710:	4705                	li	a4,1
    2712:	c398                	sw	a4,0(a5)
    2714:	4398                	lw	a4,0(a5)
    2716:	ff7d                	bnez	a4,0x2714
    2718:	8082                	ret

Disassembly of section .text.usb_keyboard:

0000271a <.text.usb_keyboard>:
    271a:	67b9                	lui	a5,0xe
    271c:	c788                	sw	a0,8(a5)
    271e:	67b9                	lui	a5,0xe
    2720:	07b1                	addi	a5,a5,12 # 0xe00c
    2722:	4705                	li	a4,1
    2724:	c398                	sw	a4,0(a5)
    2726:	4398                	lw	a4,0(a5)
    2728:	ff7d                	bnez	a4,0x2726
    272a:	8082                	ret

Disassembly of section .text.usb_serial_read:

0000272c <.text.usb_serial_read>:
    272c:	67b9                	lui	a5,0xe
    272e:	07b1                	addi	a5,a5,12 # 0xe00c
    2730:	4398                	lw	a4,0(a5)
    2732:	df7d                	beqz	a4,0x2730
    2734:	0007a023          	sw	zero,0(a5)
    2738:	67b9                	lui	a5,0xe
    273a:	43c8                	lw	a0,4(a5)
    273c:	0ff57513          	zext.b	a0,a0
    2740:	8082                	ret

Disassembly of section .text.usb_serial_write:

00002742 <.text.usb_serial_write>:
    2742:	b7d9                	j	0x2708

Disassembly of section .text.usb_print_short:

00002744 <.text.usb_print_short>:
    2744:	1141                	addi	sp,sp,-16
    2746:	c422                	sw	s0,8(sp)
    2748:	c226                	sw	s1,4(sp)
    274a:	c04a                	sw	s2,0(sp)
    274c:	c606                	sw	ra,12(sp)
    274e:	842a                	mv	s0,a0
    2750:	4491                	li	s1,4
    2752:	03900913          	li	s2,57
    2756:	00c45793          	srli	a5,s0,0xc
    275a:	03078513          	addi	a0,a5,48 # 0xe030
    275e:	00a97463          	bgeu	s2,a0,0x2766
    2762:	03778513          	addi	a0,a5,55
    2766:	0412                	slli	s0,s0,0x4
    2768:	0442                	slli	s0,s0,0x10
    276a:	14fd                	addi	s1,s1,-1
    276c:	3f71                	jal	0x2708
    276e:	8041                	srli	s0,s0,0x10
    2770:	f0fd                	bnez	s1,0x2756
    2772:	40b2                	lw	ra,12(sp)
    2774:	4422                	lw	s0,8(sp)
    2776:	4492                	lw	s1,4(sp)
    2778:	4902                	lw	s2,0(sp)
    277a:	0141                	addi	sp,sp,16
    277c:	8082                	ret

Disassembly of section .text.usb_print_int:

0000277e <.text.usb_print_int>:
    277e:	1141                	addi	sp,sp,-16
    2780:	c422                	sw	s0,8(sp)
    2782:	842a                	mv	s0,a0
    2784:	8141                	srli	a0,a0,0x10
    2786:	c606                	sw	ra,12(sp)
    2788:	3f75                	jal	0x2744
    278a:	01041513          	slli	a0,s0,0x10
    278e:	4422                	lw	s0,8(sp)
    2790:	40b2                	lw	ra,12(sp)
    2792:	8141                	srli	a0,a0,0x10
    2794:	0141                	addi	sp,sp,16
    2796:	b77d                	j	0x2744

Disassembly of section .text.usb_print_newline:

00002798 <.text.usb_print_newline>:
    2798:	1141                	addi	sp,sp,-16
    279a:	4535                	li	a0,13
    279c:	c606                	sw	ra,12(sp)
    279e:	37ad                	jal	0x2708
    27a0:	40b2                	lw	ra,12(sp)
    27a2:	4529                	li	a0,10
    27a4:	0141                	addi	sp,sp,16
    27a6:	b78d                	j	0x2708

Disassembly of section .text.usb_read_short:

000027a8 <.text.usb_read_short>:
    27a8:	1101                	addi	sp,sp,-32
    27aa:	cc22                	sw	s0,24(sp)
    27ac:	c84a                	sw	s2,16(sp)
    27ae:	c64e                	sw	s3,12(sp)
    27b0:	ce06                	sw	ra,28(sp)
    27b2:	ca26                	sw	s1,20(sp)
    27b4:	4411                	li	s0,4
    27b6:	4501                	li	a0,0
    27b8:	4925                	li	s2,9
    27ba:	49bd                	li	s3,15
    27bc:	0512                	slli	a0,a0,0x4
    27be:	01051493          	slli	s1,a0,0x10
    27c2:	37ad                	jal	0x272c
    27c4:	fd050793          	addi	a5,a0,-48
    27c8:	0ff7f793          	zext.b	a5,a5
    27cc:	80c1                	srli	s1,s1,0x10
    27ce:	00f97c63          	bgeu	s2,a5,0x27e6
    27d2:	fc950793          	addi	a5,a0,-55
    27d6:	0ff7f793          	zext.b	a5,a5
    27da:	00f9f663          	bgeu	s3,a5,0x27e6
    27de:	fa950513          	addi	a0,a0,-87
    27e2:	0ff57793          	zext.b	a5,a0
    27e6:	00978533          	add	a0,a5,s1
    27ea:	0542                	slli	a0,a0,0x10
    27ec:	147d                	addi	s0,s0,-1
    27ee:	8141                	srli	a0,a0,0x10
    27f0:	f471                	bnez	s0,0x27bc
    27f2:	40f2                	lw	ra,28(sp)
    27f4:	4462                	lw	s0,24(sp)
    27f6:	44d2                	lw	s1,20(sp)
    27f8:	4942                	lw	s2,16(sp)
    27fa:	49b2                	lw	s3,12(sp)
    27fc:	6105                	addi	sp,sp,32
    27fe:	8082                	ret

Disassembly of section .text.usb_read_int:

00002800 <.text.usb_read_int>:
    2800:	1141                	addi	sp,sp,-16
    2802:	c606                	sw	ra,12(sp)
    2804:	c422                	sw	s0,8(sp)
    2806:	374d                	jal	0x27a8
    2808:	01051413          	slli	s0,a0,0x10
    280c:	3f71                	jal	0x27a8
    280e:	40b2                	lw	ra,12(sp)
    2810:	9522                	add	a0,a0,s0
    2812:	4422                	lw	s0,8(sp)
    2814:	0141                	addi	sp,sp,16
    2816:	8082                	ret

Disassembly of section .text.gpio_write:

00002818 <.text.gpio_write>:
    2818:	67c1                	lui	a5,0x10
    281a:	c3c8                	sw	a0,4(a5)
    281c:	8082                	ret

Disassembly of section .text.gpio_read:

0000281e <.text.gpio_read>:
    281e:	67c1                	lui	a5,0x10
    2820:	4388                	lw	a0,0(a5)
    2822:	0542                	slli	a0,a0,0x10
    2824:	8141                	srli	a0,a0,0x10
    2826:	8082                	ret

Disassembly of section .text.instr_mem_write:

00002828 <.text.instr_mem_write>:
    2828:	050a                	slli	a0,a0,0x2
    282a:	6791                	lui	a5,0x4
    282c:	97aa                	add	a5,a5,a0
    282e:	c38c                	sw	a1,0(a5)
    2830:	8082                	ret

Disassembly of section .text.uart_main:

00002832 <.text.uart_main>:
    2832:	1101                	addi	sp,sp,-32
    2834:	cc22                	sw	s0,24(sp)
    2836:	ca26                	sw	s1,20(sp)
    2838:	c84a                	sw	s2,16(sp)
    283a:	c64e                	sw	s3,12(sp)
    283c:	ce06                	sw	ra,28(sp)
    283e:	6799                	lui	a5,0x6
    2840:	0c700713          	li	a4,199
    2844:	c398                	sw	a4,0(a5)
    2846:	64c1                	lui	s1,0x10
    2848:	0007a223          	sw	zero,4(a5) # 0x6004
    284c:	4401                	li	s0,0
    284e:	4901                	li	s2,0
    2850:	69c1                	lui	s3,0x10
    2852:	0491                	addi	s1,s1,4 # 0x10004
    2854:	0009a503          	lw	a0,0(s3) # 0x10000
    2858:	02090363          	beqz	s2,0x287e
    285c:	0ff57513          	zext.b	a0,a0
    2860:	3489                	jal	0x22a2
    2862:	f0047413          	andi	s0,s0,-256
    2866:	340d                	jal	0x2288
    2868:	9522                	add	a0,a0,s0
    286a:	01051413          	slli	s0,a0,0x10
    286e:	8441                	srai	s0,s0,0x10
    2870:	01041793          	slli	a5,s0,0x10
    2874:	83c1                	srli	a5,a5,0x10
    2876:	00194913          	xori	s2,s2,1
    287a:	c09c                	sw	a5,0(s1)
    287c:	bfe1                	j	0x2854
    287e:	0542                	slli	a0,a0,0x10
    2880:	8141                	srli	a0,a0,0x10
    2882:	8121                	srli	a0,a0,0x8
    2884:	3c39                	jal	0x22a2
    2886:	3409                	jal	0x2288
    2888:	0ff47413          	zext.b	s0,s0
    288c:	0522                	slli	a0,a0,0x8
    288e:	942a                	add	s0,s0,a0
    2890:	0442                	slli	s0,s0,0x10
    2892:	bff1                	j	0x286e

Disassembly of section .text.uart_interrupt:

00002894 <.text.uart_interrupt>:
    2894:	8082                	ret

Disassembly of section .text.i2c_main:

00002896 <.text.i2c_main>:
    2896:	1101                	addi	sp,sp,-32
    2898:	cc22                	sw	s0,24(sp)
    289a:	ca26                	sw	s1,20(sp)
    289c:	c84a                	sw	s2,16(sp)
    289e:	c64e                	sw	s3,12(sp)
    28a0:	c452                	sw	s4,8(sp)
    28a2:	ce06                	sw	ra,28(sp)
    28a4:	67a1                	lui	a5,0x8
    28a6:	07b00713          	li	a4,123
    28aa:	c3d8                	sw	a4,4(a5)
    28ac:	69c1                	lui	s3,0x10
    28ae:	67a1                	lui	a5,0x8
    28b0:	03000713          	li	a4,48
    28b4:	6941                	lui	s2,0x10
    28b6:	0007a4b7          	lui	s1,0x7a
    28ba:	cb98                	sw	a4,16(a5)
    28bc:	fff98a13          	addi	s4,s3,-1 # 0xffff
    28c0:	0911                	addi	s2,s2,4 # 0x10004
    28c2:	12048493          	addi	s1,s1,288 # 0x7a120
    28c6:	03802783          	lw	a5,56(zero) # 0x38
    28ca:	c385                	beqz	a5,0x28ea
    28cc:	0009a503          	lw	a0,0(s3)
    28d0:	4589                	li	a1,2
    28d2:	01457533          	and	a0,a0,s4
    28d6:	3acd                	jal	0x22c8
    28d8:	8526                	mv	a0,s1
    28da:	3b4d                	jal	0x268c
    28dc:	03802783          	lw	a5,56(zero) # 0x38
    28e0:	0017b793          	seqz	a5,a5
    28e4:	02f02c23          	sw	a5,56(zero) # 0x38
    28e8:	bff9                	j	0x28c6
    28ea:	4509                	li	a0,2
    28ec:	3aed                	jal	0x22e6
    28ee:	01457533          	and	a0,a0,s4
    28f2:	00a92023          	sw	a0,0(s2)
    28f6:	b7cd                	j	0x28d8

Disassembly of section .text.i2c_interrupt:

000028f8 <.text.i2c_interrupt>:
    28f8:	8082                	ret

Disassembly of section .text.qspi_main:

000028fa <.text.qspi_main>:
    28fa:	7139                	addi	sp,sp,-64
    28fc:	da26                	sw	s1,52(sp)
    28fe:	d64e                	sw	s3,44(sp)
    2900:	4515                	li	a0,5
    2902:	69c1                	lui	s3,0x10
    2904:	64c1                	lui	s1,0x10
    2906:	d452                	sw	s4,40(sp)
    2908:	d256                	sw	s5,36(sp)
    290a:	de06                	sw	ra,60(sp)
    290c:	dc22                	sw	s0,56(sp)
    290e:	d84a                	sw	s2,48(sp)
    2910:	d05a                	sw	s6,32(sp)
    2912:	ce5e                	sw	s7,28(sp)
    2914:	fff98a13          	addi	s4,s3,-1 # 0xffff
    2918:	33c9                	jal	0x26da
    291a:	0491                	addi	s1,s1,4 # 0x10004
    291c:	4685                	li	a3,1
    291e:	0009a783          	lw	a5,0(s3)
    2922:	0147f733          	and	a4,a5,s4
    2926:	07c2                	slli	a5,a5,0x10
    2928:	c098                	sw	a4,0(s1)
    292a:	83c1                	srli	a5,a5,0x10
    292c:	dbed                	beqz	a5,0x291e
    292e:	0009a783          	lw	a5,0(s3)
    2932:	07c2                	slli	a5,a5,0x10
    2934:	83c1                	srli	a5,a5,0x10
    2936:	ffe5                	bnez	a5,0x292e
    2938:	fed713e3          	bne	a4,a3,0x291e
    293c:	c402                	sw	zero,8(sp)
    293e:	c602                	sw	zero,12(sp)
    2940:	34d5                	jal	0x2424
    2942:	0028                	addi	a0,sp,8
    2944:	3905                	jal	0x2574
    2946:	47b2                	lw	a5,12(sp)
    2948:	0807f793          	andi	a5,a5,128
    294c:	c7b1                	beqz	a5,0x2998
    294e:	4901                	li	s2,0
    2950:	6b11                	lui	s6,0x4
    2952:	0c800413          	li	s0,200
    2956:	02040b93          	addi	s7,s0,32
    295a:	355d                	jal	0x2800
    295c:	c008                	sw	a0,0(s0)
    295e:	0411                	addi	s0,s0,4
    2960:	ff741de3          	bne	s0,s7,0x295a
    2964:	33e1                	jal	0x272c
    2966:	3c7d                	jal	0x2424
    2968:	02000613          	li	a2,32
    296c:	85ca                	mv	a1,s2
    296e:	0c800513          	li	a0,200
    2972:	3ebd                	jal	0x24f0
    2974:	c602                	sw	zero,12(sp)
    2976:	47b2                	lw	a5,12(sp)
    2978:	0807f793          	andi	a5,a5,128
    297c:	c38d                	beqz	a5,0x299e
    297e:	47a2                	lw	a5,8(sp)
    2980:	02090913          	addi	s2,s2,32
    2984:	0785                	addi	a5,a5,1 # 0x8001
    2986:	c43e                	sw	a5,8(sp)
    2988:	0147f7b3          	and	a5,a5,s4
    298c:	c09c                	sw	a5,0(s1)
    298e:	fd6912e3          	bne	s2,s6,0x2952
    2992:	00000067          	jr	zero # 0x0
    2996:	b759                	j	0x291c
    2998:	0068                	addi	a0,sp,12
    299a:	3109                	jal	0x259c
    299c:	b76d                	j	0x2946
    299e:	0068                	addi	a0,sp,12
    29a0:	3ef5                	jal	0x259c
    29a2:	bfd1                	j	0x2976

Disassembly of section .text.qspi_interrupt:

000029a4 <.text.qspi_interrupt>:
    29a4:	8082                	ret

Disassembly of section .text.timer_main:

000029a6 <.text.timer_main>:
    29a6:	1101                	addi	sp,sp,-32
    29a8:	653d                	lui	a0,0xf
    29aa:	cc22                	sw	s0,24(sp)
    29ac:	c84a                	sw	s2,16(sp)
    29ae:	4605                	li	a2,1
    29b0:	4581                	li	a1,0
    29b2:	a5f50513          	addi	a0,a0,-1441 # 0xea5f
    29b6:	6441                	lui	s0,0x10
    29b8:	6931                	lui	s2,0xc
    29ba:	ca26                	sw	s1,20(sp)
    29bc:	c64e                	sw	s3,12(sp)
    29be:	ce06                	sw	ra,28(sp)
    29c0:	3969                	jal	0x265a
    29c2:	fff40493          	addi	s1,s0,-1 # 0xffff
    29c6:	0911                	addi	s2,s2,4 # 0xc004
    29c8:	03402703          	lw	a4,52(zero) # 0x34
    29cc:	401c                	lw	a5,0(s0)
    29ce:	8fe5                	and	a5,a5,s1
    29d0:	fee78ee3          	beq	a5,a4,0x29cc
    29d4:	401c                	lw	a5,0(s0)
    29d6:	8fe5                	and	a5,a5,s1
    29d8:	00f92023          	sw	a5,0(s2)
    29dc:	31b5                	jal	0x2648
    29de:	401c                	lw	a5,0(s0)
    29e0:	8fe5                	and	a5,a5,s1
    29e2:	02f02a23          	sw	a5,52(zero) # 0x34
    29e6:	b7cd                	j	0x29c8

Disassembly of section .text.timer_interrupt:

000029e8 <.text.timer_interrupt>:
    29e8:	0f405683          	lhu	a3,244(zero) # 0xf4
    29ec:	6741                	lui	a4,0x10
    29ee:	c354                	sw	a3,4(a4)
    29f0:	0f402703          	lw	a4,244(zero) # 0xf4
    29f4:	0705                	addi	a4,a4,1 # 0x10001
    29f6:	0ee02a23          	sw	a4,244(zero) # 0xf4
    29fa:	8082                	ret

Disassembly of section .text.gpio_main:

000029fc <.text.gpio_main>:
    29fc:	66c1                	lui	a3,0x10
    29fe:	67c1                	lui	a5,0x10
    2a00:	fff68613          	addi	a2,a3,-1 # 0xffff
    2a04:	0791                	addi	a5,a5,4 # 0x10004
    2a06:	4298                	lw	a4,0(a3)
    2a08:	8f71                	and	a4,a4,a2
    2a0a:	c398                	sw	a4,0(a5)
    2a0c:	bfed                	j	0x2a06

Disassembly of section .text.gpio_interrupt:

00002a0e <.text.gpio_interrupt>:
    2a0e:	8082                	ret

Disassembly of section .text.usb_main:

00002a10 <.text.usb_main>:
    2a10:	7179                	addi	sp,sp,-48
    2a12:	d422                	sw	s0,40(sp)
    2a14:	d226                	sw	s1,36(sp)
    2a16:	d04a                	sw	s2,32(sp)
    2a18:	d606                	sw	ra,44(sp)
    2a1a:	ce4e                	sw	s3,28(sp)
    2a1c:	cc52                	sw	s4,24(sp)
    2a1e:	ca56                	sw	s5,20(sp)
    2a20:	c85a                	sw	s6,16(sp)
    2a22:	c65e                	sw	s7,12(sp)
    2a24:	0e002623          	sw	zero,236(zero) # 0xec
    2a28:	6941                	lui	s2,0x10
    2a2a:	0ec02783          	lw	a5,236(zero) # 0xec
    2a2e:	cf89                	beqz	a5,0x2a48
    2a30:	0ec02783          	lw	a5,236(zero) # 0xec
    2a34:	4711                	li	a4,4
    2a36:	17fd                	addi	a5,a5,-1
    2a38:	0cf76063          	bltu	a4,a5,0x2af8
    2a3c:	078a                	slli	a5,a5,0x2
    2a3e:	00000713          	li	a4,0
    2a42:	97ba                	add	a5,a5,a4
    2a44:	439c                	lw	a5,0(a5)
    2a46:	8782                	jr	a5
    2a48:	00092783          	lw	a5,0(s2) # 0x10000
    2a4c:	0ff7f793          	zext.b	a5,a5
    2a50:	0ef02823          	sw	a5,240(zero) # 0xf0
    2a54:	0e002623          	sw	zero,236(zero) # 0xec
    2a58:	0f002783          	lw	a5,240(zero) # 0xf0
    2a5c:	eb91                	bnez	a5,0x2a70
    2a5e:	0ec02783          	lw	a5,236(zero) # 0xec
    2a62:	d7e1                	beqz	a5,0x2a2a
    2a64:	0ec02503          	lw	a0,236(zero) # 0xec
    2a68:	0ff57513          	zext.b	a0,a0
    2a6c:	31bd                	jal	0x26da
    2a6e:	bf75                	j	0x2a2a
    2a70:	0f002783          	lw	a5,240(zero) # 0xf0
    2a74:	8385                	srli	a5,a5,0x1
    2a76:	0ef02823          	sw	a5,240(zero) # 0xf0
    2a7a:	0ec02783          	lw	a5,236(zero) # 0xec
    2a7e:	0785                	addi	a5,a5,1
    2a80:	0ef02623          	sw	a5,236(zero) # 0xec
    2a84:	bfd1                	j	0x2a58
    2a86:	000f4437          	lui	s0,0xf4
    2a8a:	64c1                	lui	s1,0x10
    2a8c:	24040413          	addi	s0,s0,576 # 0xf4240
    2a90:	4088                	lw	a0,0(s1)
    2a92:	0542                	slli	a0,a0,0x10
    2a94:	8141                	srli	a0,a0,0x10
    2a96:	3151                	jal	0x271a
    2a98:	8522                	mv	a0,s0
    2a9a:	3ecd                	jal	0x268c
    2a9c:	bfd5                	j	0x2a90
    2a9e:	a001                	j	0x2a9e
    2aa0:	0f002503          	lw	a0,240(zero) # 0xf0
    2aa4:	31b9                	jal	0x26f2
    2aa6:	0ea02823          	sw	a0,240(zero) # 0xf0
    2aaa:	bfdd                	j	0x2aa0
    2aac:	6a41                	lui	s4,0x10
    2aae:	4901                	li	s2,0
    2ab0:	ea700b13          	li	s6,-345
    2ab4:	f1f00b93          	li	s7,-225
    2ab8:	fffa0a93          	addi	s5,s4,-1 # 0xffff
    2abc:	4501                	li	a0,0
    2abe:	31a9                	jal	0x2708
    2ac0:	0e100413          	li	s0,225
    2ac4:	028409b3          	mul	s3,s0,s0
    2ac8:	08700493          	li	s1,135
    2acc:	99ca                	add	s3,s3,s2
    2ace:	02948533          	mul	a0,s1,s1
    2ad2:	14f5                	addi	s1,s1,-3 # 0xfffd
    2ad4:	954e                	add	a0,a0,s3
    2ad6:	0ff57513          	zext.b	a0,a0
    2ada:	313d                	jal	0x2708
    2adc:	ff6499e3          	bne	s1,s6,0x2ace
    2ae0:	146d                	addi	s0,s0,-5
    2ae2:	ff7411e3          	bne	s0,s7,0x2ac4
    2ae6:	000a2783          	lw	a5,0(s4)
    2aea:	0157f7b3          	and	a5,a5,s5
    2aee:	993e                	add	s2,s2,a5
    2af0:	b7f1                	j	0x2abc
    2af2:	392d                	jal	0x272c
    2af4:	3911                	jal	0x2708
    2af6:	bff5                	j	0x2af2
    2af8:	50b2                	lw	ra,44(sp)
    2afa:	5422                	lw	s0,40(sp)
    2afc:	5492                	lw	s1,36(sp)
    2afe:	5902                	lw	s2,32(sp)
    2b00:	49f2                	lw	s3,28(sp)
    2b02:	4a62                	lw	s4,24(sp)
    2b04:	4ad2                	lw	s5,20(sp)
    2b06:	4b42                	lw	s6,16(sp)
    2b08:	4bb2                	lw	s7,12(sp)
    2b0a:	6145                	addi	sp,sp,48
    2b0c:	8082                	ret

Disassembly of section .text.usb_interrupt:

00002b0e <.text.usb_interrupt>:
    2b0e:	8082                	ret

Disassembly of section .text.debug_main:

00002b10 <.text.debug_main>:
    2b10:	711d                	addi	sp,sp,-96
    2b12:	caa6                	sw	s1,84(sp)
    2b14:	c4d2                	sw	s4,72(sp)
    2b16:	4515                	li	a0,5
    2b18:	6a41                	lui	s4,0x10
    2b1a:	6485                	lui	s1,0x1
    2b1c:	c8ca                	sw	s2,80(sp)
    2b1e:	c2d6                	sw	s5,68(sp)
    2b20:	c0da                	sw	s6,64(sp)
    2b22:	de5e                	sw	s7,60(sp)
    2b24:	dc62                	sw	s8,56(sp)
    2b26:	ce86                	sw	ra,92(sp)
    2b28:	cca2                	sw	s0,88(sp)
    2b2a:	c6ce                	sw	s3,76(sp)
    2b2c:	da66                	sw	s9,52(sp)
    2b2e:	d86a                	sw	s10,48(sp)
    2b30:	d66e                	sw	s11,44(sp)
    2b32:	6ac1                	lui	s5,0x10
    2b34:	365d                	jal	0x26da
    2b36:	0a11                	addi	s4,s4,4 # 0x10004
    2b38:	4b05                	li	s6,1
    2b3a:	38848493          	addi	s1,s1,904 # 0x1388
    2b3e:	4b89                	li	s7,2
    2b40:	6c05                	lui	s8,0x1
    2b42:	000aa783          	lw	a5,0(s5) # 0x10000
    2b46:	07c2                	slli	a5,a5,0x10
    2b48:	83c1                	srli	a5,a5,0x10
    2b4a:	0ef01523          	sh	a5,234(zero) # 0xea
    2b4e:	0ea05783          	lhu	a5,234(zero) # 0xea
    2b52:	07c2                	slli	a5,a5,0x10
    2b54:	83c1                	srli	a5,a5,0x10
    2b56:	00fa2023          	sw	a5,0(s4)
    2b5a:	0ea05783          	lhu	a5,234(zero) # 0xea
    2b5e:	d3f5                	beqz	a5,0x2b42
    2b60:	000aa783          	lw	a5,0(s5)
    2b64:	07c2                	slli	a5,a5,0x10
    2b66:	83c1                	srli	a5,a5,0x10
    2b68:	ffe5                	bnez	a5,0x2b60
    2b6a:	0ea05783          	lhu	a5,234(zero) # 0xea
    2b6e:	01079713          	slli	a4,a5,0x10
    2b72:	8341                	srli	a4,a4,0x10
    2b74:	05678e63          	beq	a5,s6,0x2bd0
    2b78:	fd7715e3          	bne	a4,s7,0x2b42
    2b7c:	4981                	li	s3,0
    2b7e:	4c81                	li	s9,0
    2b80:	01099413          	slli	s0,s3,0x10
    2b84:	8041                	srli	s0,s0,0x10
    2b86:	02040d13          	addi	s10,s0,32
    2b8a:	02000613          	li	a2,32
    2b8e:	85ce                	mv	a1,s3
    2b90:	850a                	mv	a0,sp
    2b92:	0d42                	slli	s10,s10,0x10
    2b94:	3c59                	jal	0x262a
    2b96:	8d8a                	mv	s11,sp
    2b98:	010d5d13          	srli	s10,s10,0x10
    2b9c:	8522                	mv	a0,s0
    2b9e:	365d                	jal	0x2744
    2ba0:	03a00513          	li	a0,58
    2ba4:	3695                	jal	0x2708
    2ba6:	02000513          	li	a0,32
    2baa:	3eb9                	jal	0x2708
    2bac:	000da503          	lw	a0,0(s11)
    2bb0:	0411                	addi	s0,s0,4
    2bb2:	0442                	slli	s0,s0,0x10
    2bb4:	36e9                	jal	0x277e
    2bb6:	36cd                	jal	0x2798
    2bb8:	8526                	mv	a0,s1
    2bba:	8041                	srli	s0,s0,0x10
    2bbc:	3cc1                	jal	0x268c
    2bbe:	0d91                	addi	s11,s11,4
    2bc0:	fda41ee3          	bne	s0,s10,0x2b9c
    2bc4:	0ca1                	addi	s9,s9,8
    2bc6:	02098993          	addi	s3,s3,32
    2bca:	fb8c9be3          	bne	s9,s8,0x2b80
    2bce:	bf95                	j	0x2b42
    2bd0:	4401                	li	s0,0
    2bd2:	00241513          	slli	a0,s0,0x2
    2bd6:	0542                	slli	a0,a0,0x10
    2bd8:	8141                	srli	a0,a0,0x10
    2bda:	36ad                	jal	0x2744
    2bdc:	03a00513          	li	a0,58
    2be0:	3625                	jal	0x2708
    2be2:	8526                	mv	a0,s1
    2be4:	3465                	jal	0x268c
    2be6:	00340993          	addi	s3,s0,3
    2bea:	fff40c93          	addi	s9,s0,-1
    2bee:	02000513          	li	a0,32
    2bf2:	3e19                	jal	0x2708
    2bf4:	00299793          	slli	a5,s3,0x2
    2bf8:	4388                	lw	a0,0(a5)
    2bfa:	19fd                	addi	s3,s3,-1
    2bfc:	3649                	jal	0x277e
    2bfe:	8526                	mv	a0,s1
    2c00:	3471                	jal	0x268c
    2c02:	ff9996e3          	bne	s3,s9,0x2bee
    2c06:	3e49                	jal	0x2798
    2c08:	0411                	addi	s0,s0,4
    2c0a:	80040793          	addi	a5,s0,-2048
    2c0e:	f3f1                	bnez	a5,0x2bd2
    2c10:	bf0d                	j	0x2b42

Disassembly of section .text.debug_interrupt:

00002c12 <.text.debug_interrupt>:
    2c12:	8082                	ret

Disassembly of section .text.main_interrupt:

00002c14 <.text.main_interrupt>:
    2c14:	03005683          	lhu	a3,48(zero) # 0x30
    2c18:	03005783          	lhu	a5,48(zero) # 0x30
    2c1c:	0686                	slli	a3,a3,0x1
    2c1e:	83bd                	srli	a5,a5,0xf
    2c20:	8fd5                	or	a5,a5,a3
    2c22:	07c2                	slli	a5,a5,0x10
    2c24:	83c1                	srli	a5,a5,0x10
    2c26:	02f01823          	sh	a5,48(zero) # 0x30
    2c2a:	03005703          	lhu	a4,48(zero) # 0x30
    2c2e:	67c1                	lui	a5,0x10
    2c30:	0742                	slli	a4,a4,0x10
    2c32:	8341                	srli	a4,a4,0x10
    2c34:	c3d8                	sw	a4,4(a5)
    2c36:	8082                	ret
