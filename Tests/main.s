
a.out:     file format elf32-littleriscv


Disassembly of section .text:

00002000 <.text>:
    2000:	01c05703          	lhu	a4,28(zero) # 0x1c
    2004:	01c9c537          	lui	a0,0x1c9c
    2008:	67c1                	lui	a5,0x10
    200a:	0742                	slli	a4,a4,0x10
    200c:	8341                	srli	a4,a4,0x10
    200e:	c3d8                	sw	a4,4(a5)
    2010:	4605                	li	a2,1
    2012:	4581                	li	a1,0
    2014:	38050513          	addi	a0,a0,896 # 0x1c9c380
    2018:	2525                	jal	0x2640
    201a:	4515                	li	a0,5
    201c:	2555                	jal	0x26c0
    201e:	66c1                	lui	a3,0x10
    2020:	4298                	lw	a4,0(a3)
    2022:	0742                	slli	a4,a4,0x10
    2024:	8341                	srli	a4,a4,0x10
    2026:	10e01c23          	sh	a4,280(zero) # 0x118
    202a:	11805703          	lhu	a4,280(zero) # 0x118
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
    2046:	11805683          	lhu	a3,280(zero) # 0x118
    204a:	4721                	li	a4,8
    204c:	01069793          	slli	a5,a3,0x10
    2050:	83c1                	srli	a5,a5,0x10
    2052:	02e68e63          	beq	a3,a4,0x208e
    2056:	00f76d63          	bltu	a4,a5,0x2070
    205a:	4709                	li	a4,2
    205c:	02e78563          	beq	a5,a4,0x2086
    2060:	4711                	li	a4,4
    2062:	02e78463          	beq	a5,a4,0x208a
    2066:	4705                	li	a4,1
    2068:	00e78d63          	beq	a5,a4,0x2082
    206c:	2cb000ef          	jal	0x2b36
    2070:	4741                	li	a4,16
    2072:	02e78063          	beq	a5,a4,0x2092
    2076:	02000713          	li	a4,32
    207a:	fee799e3          	bne	a5,a4,0x206c
    207e:	1d9000ef          	jal	0x2a56
    2082:	78a000ef          	jal	0x280c
    2086:	7ea000ef          	jal	0x2870
    208a:	043000ef          	jal	0x28cc
    208e:	15f000ef          	jal	0x29ec
    2092:	1b1000ef          	jal	0x2a42
	...
    21fe:	0000                	unimp
    2200:	7139                	addi	sp,sp,-64
    2202:	cc3e                	sw	a5,24(sp)
    2204:	ce3a                	sw	a4,28(sp)
    2206:	13002703          	lw	a4,304(zero) # 0x130
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
    2228:	12002823          	sw	zero,304(zero) # 0x130
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
    2252:	11805783          	lhu	a5,280(zero) # 0x118
    2256:	01079713          	slli	a4,a5,0x10
    225a:	8341                	srli	a4,a4,0x10
    225c:	c799                	beqz	a5,0x226a
    225e:	47a1                	li	a5,8
    2260:	fcf716e3          	bne	a4,a5,0x222c
    2264:	7ca000ef          	jal	0x2a2e
    2268:	b7d1                	j	0x222c
    226a:	1bd000ef          	jal	0x2c26
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
    22be:	c3c8                	sw	a0,4(a5)
    22c0:	8082                	ret

Disassembly of section .text.i2c_write:

000022c2 <.text.i2c_write>:
    22c2:	67a1                	lui	a5,0x8
    22c4:	c38c                	sw	a1,0(a5)
    22c6:	c7c8                	sw	a0,12(a5)
    22c8:	67a1                	lui	a5,0x8
    22ca:	07c1                	addi	a5,a5,16 # 0x8010
    22cc:	4705                	li	a4,1
    22ce:	c398                	sw	a4,0(a5)
    22d0:	4398                	lw	a4,0(a5)
    22d2:	8b09                	andi	a4,a4,2
    22d4:	df75                	beqz	a4,0x22d0
    22d6:	4398                	lw	a4,0(a5)
    22d8:	8b31                	andi	a4,a4,12
    22da:	c398                	sw	a4,0(a5)
    22dc:	8082                	ret

Disassembly of section .text.i2c_read:

000022de <.text.i2c_read>:
    22de:	67a1                	lui	a5,0x8
    22e0:	c388                	sw	a0,0(a5)
    22e2:	4711                	li	a4,4
    22e4:	07c1                	addi	a5,a5,16 # 0x8010
    22e6:	c398                	sw	a4,0(a5)
    22e8:	4398                	lw	a4,0(a5)
    22ea:	8b21                	andi	a4,a4,8
    22ec:	df75                	beqz	a4,0x22e8
    22ee:	4398                	lw	a4,0(a5)
    22f0:	8b0d                	andi	a4,a4,3
    22f2:	c398                	sw	a4,0(a5)
    22f4:	67a1                	lui	a5,0x8
    22f6:	4788                	lw	a0,8(a5)
    22f8:	8082                	ret

Disassembly of section .text.qspi_wait:

000022fa <.text.qspi_wait>:
    22fa:	67a9                	lui	a5,0xa
    22fc:	02878793          	addi	a5,a5,40 # 0xa028
    2300:	4705                	li	a4,1
    2302:	4394                	lw	a3,0(a5)
    2304:	fee69fe3          	bne	a3,a4,0x2302
    2308:	67a9                	lui	a5,0xa
    230a:	02878793          	addi	a5,a5,40 # 0xa028
    230e:	4705                	li	a4,1
    2310:	4394                	lw	a3,0(a5)
    2312:	fee69fe3          	bne	a3,a4,0x2310
    2316:	8082                	ret

Disassembly of section .text.qspi_custom_x0:

00002318 <.text.qspi_custom_x0>:
    2318:	47f9                	li	a5,30
    231a:	02b7f733          	remu	a4,a5,a1
    231e:	02b7d7b3          	divu	a5,a5,a1
    2322:	00173713          	seqz	a4,a4
    2326:	8f99                	sub	a5,a5,a4
    2328:	80000737          	lui	a4,0x80000
    232c:	953a                	add	a0,a0,a4
    232e:	07e6                	slli	a5,a5,0x19
    2330:	97aa                	add	a5,a5,a0
    2332:	6729                	lui	a4,0xa
    2334:	c31c                	sw	a5,0(a4)
    2336:	b7d1                	j	0x22fa

Disassembly of section .text.qspi_custom_write:

00002338 <.text.qspi_custom_write>:
    2338:	fff78893          	addi	a7,a5,-1
    233c:	80000337          	lui	t1,0x80000
    2340:	08c2                	slli	a7,a7,0x10
    2342:	40030313          	addi	t1,t1,1024 # 0x80000400
    2346:	989a                	add	a7,a7,t1
    2348:	06a2                	slli	a3,a3,0x8
    234a:	98b2                	add	a7,a7,a2
    234c:	8305                	srli	a4,a4,0x1
    234e:	98b6                	add	a7,a7,a3
    2350:	072e                	slli	a4,a4,0xb
    2352:	98ba                	add	a7,a7,a4
    2354:	4779                	li	a4,30
    2356:	030776b3          	remu	a3,a4,a6
    235a:	078d                	addi	a5,a5,3
    235c:	9bf1                	andi	a5,a5,-4
    235e:	03075733          	divu	a4,a4,a6
    2362:	0016b693          	seqz	a3,a3
    2366:	8f15                	sub	a4,a4,a3
    2368:	0766                	slli	a4,a4,0x19
    236a:	98ba                	add	a7,a7,a4
    236c:	66a9                	lui	a3,0xa
    236e:	6729                	lui	a4,0xa
    2370:	c34c                	sw	a1,4(a4)
    2372:	06a1                	addi	a3,a3,8 # 0xa008
    2374:	4701                	li	a4,0
    2376:	00e79663          	bne	a5,a4,0x2382
    237a:	67a9                	lui	a5,0xa
    237c:	0117a023          	sw	a7,0(a5) # 0xa000
    2380:	bfad                	j	0x22fa
    2382:	00e505b3          	add	a1,a0,a4
    2386:	418c                	lw	a1,0(a1)
    2388:	00d70633          	add	a2,a4,a3
    238c:	0711                	addi	a4,a4,4 # 0xa004
    238e:	c20c                	sw	a1,0(a2)
    2390:	b7dd                	j	0x2376

Disassembly of section .text.qspi_custom_read:

00002392 <.text.qspi_custom_read>:
    2392:	1141                	addi	sp,sp,-16
    2394:	c422                	sw	s0,8(sp)
    2396:	c226                	sw	s1,4(sp)
    2398:	843e                	mv	s0,a5
    239a:	c606                	sw	ra,12(sp)
    239c:	4791                	li	a5,4
    239e:	84aa                	mv	s1,a0
    23a0:	04f69a63          	bne	a3,a5,0x23f4
    23a4:	30060613          	addi	a2,a2,768
    23a8:	46f9                	li	a3,30
    23aa:	0306f7b3          	remu	a5,a3,a6
    23ae:	80000537          	lui	a0,0x80000
    23b2:	8305                	srli	a4,a4,0x1
    23b4:	072e                	slli	a4,a4,0xb
    23b6:	0306d6b3          	divu	a3,a3,a6
    23ba:	0017b793          	seqz	a5,a5
    23be:	8e9d                	sub	a3,a3,a5
    23c0:	fff40793          	addi	a5,s0,-1
    23c4:	07c2                	slli	a5,a5,0x10
    23c6:	97aa                	add	a5,a5,a0
    23c8:	06e6                	slli	a3,a3,0x19
    23ca:	97ba                	add	a5,a5,a4
    23cc:	00f68733          	add	a4,a3,a5
    23d0:	67a9                	lui	a5,0xa
    23d2:	9732                	add	a4,a4,a2
    23d4:	c3cc                	sw	a1,4(a5)
    23d6:	67a9                	lui	a5,0xa
    23d8:	c398                	sw	a4,0(a5)
    23da:	3705                	jal	0x22fa
    23dc:	040d                	addi	s0,s0,3
    23de:	6729                	lui	a4,0xa
    23e0:	9871                	andi	s0,s0,-4
    23e2:	4781                	li	a5,0
    23e4:	0721                	addi	a4,a4,8 # 0xa008
    23e6:	00f41a63          	bne	s0,a5,0x23fa
    23ea:	40b2                	lw	ra,12(sp)
    23ec:	4422                	lw	s0,8(sp)
    23ee:	4492                	lw	s1,4(sp)
    23f0:	0141                	addi	sp,sp,16
    23f2:	8082                	ret
    23f4:	06a2                	slli	a3,a3,0x8
    23f6:	9636                	add	a2,a2,a3
    23f8:	bf45                	j	0x23a8
    23fa:	00e786b3          	add	a3,a5,a4
    23fe:	4290                	lw	a2,0(a3)
    2400:	00f486b3          	add	a3,s1,a5
    2404:	0791                	addi	a5,a5,4 # 0xa004
    2406:	c290                	sw	a2,0(a3)
    2408:	bff9                	j	0x23e6

Disassembly of section .text.s25fl128s_wren:

0000240a <.text.s25fl128s_wren>:
    240a:	800007b7          	lui	a5,0x80000
    240e:	0799                	addi	a5,a5,6 # 0x80000006
    2410:	6729                	lui	a4,0xa
    2412:	c31c                	sw	a5,0(a4)
    2414:	b5dd                	j	0x22fa

Disassembly of section .text.s25fl128s_wrdi:

00002416 <.text.s25fl128s_wrdi>:
    2416:	800007b7          	lui	a5,0x80000
    241a:	0791                	addi	a5,a5,4 # 0x80000004
    241c:	6729                	lui	a4,0xa
    241e:	c31c                	sw	a5,0(a4)
    2420:	bde9                	j	0x22fa

Disassembly of section .text.s25fl128s_clsr:

00002422 <.text.s25fl128s_clsr>:
    2422:	800007b7          	lui	a5,0x80000
    2426:	03078793          	addi	a5,a5,48 # 0x80000030
    242a:	6729                	lui	a4,0xa
    242c:	c31c                	sw	a5,0(a4)
    242e:	b5f1                	j	0x22fa

Disassembly of section .text.s25fl128s_reset:

00002430 <.text.s25fl128s_reset>:
    2430:	800007b7          	lui	a5,0x80000
    2434:	0f078793          	addi	a5,a5,240 # 0x800000f0
    2438:	6729                	lui	a4,0xa
    243a:	c31c                	sw	a5,0(a4)
    243c:	bd7d                	j	0x22fa

Disassembly of section .text.s25fl128s_rdid:

0000243e <.text.s25fl128s_rdid>:
    243e:	08500813          	li	a6,133
    2442:	02000793          	li	a5,32
    2446:	4701                	li	a4,0
    2448:	4685                	li	a3,1
    244a:	09f00613          	li	a2,159
    244e:	4581                	li	a1,0
    2450:	b789                	j	0x2392

Disassembly of section .text.s25fl128s_rdsr1:

00002452 <.text.s25fl128s_rdsr1>:
    2452:	08500813          	li	a6,133
    2456:	4785                	li	a5,1
    2458:	4701                	li	a4,0
    245a:	4685                	li	a3,1
    245c:	4615                	li	a2,5
    245e:	4581                	li	a1,0
    2460:	bf0d                	j	0x2392

Disassembly of section .text.s25fl128s_rdsr2:

00002462 <.text.s25fl128s_rdsr2>:
    2462:	08500813          	li	a6,133
    2466:	4785                	li	a5,1
    2468:	4701                	li	a4,0
    246a:	4685                	li	a3,1
    246c:	461d                	li	a2,7
    246e:	4581                	li	a1,0
    2470:	b70d                	j	0x2392

Disassembly of section .text.s25fl128s_rdcr:

00002472 <.text.s25fl128s_rdcr>:
    2472:	08500813          	li	a6,133
    2476:	4785                	li	a5,1
    2478:	4701                	li	a4,0
    247a:	4685                	li	a3,1
    247c:	03500613          	li	a2,53
    2480:	4581                	li	a1,0
    2482:	bf01                	j	0x2392

Disassembly of section .text.s25fl128s_res:

00002484 <.text.s25fl128s_res>:
    2484:	03200813          	li	a6,50
    2488:	4785                	li	a5,1
    248a:	4761                	li	a4,24
    248c:	4685                	li	a3,1
    248e:	0ab00613          	li	a2,171
    2492:	4581                	li	a1,0
    2494:	bdfd                	j	0x2392

Disassembly of section .text.s25fl128s_read_id:

00002496 <.text.s25fl128s_read_id>:
    2496:	08500813          	li	a6,133
    249a:	4789                	li	a5,2
    249c:	4761                	li	a4,24
    249e:	4685                	li	a3,1
    24a0:	09000613          	li	a2,144
    24a4:	b5fd                	j	0x2392

Disassembly of section .text.s25fl128s_read:

000024a6 <.text.s25fl128s_read>:
    24a6:	87b2                	mv	a5,a2
    24a8:	03200813          	li	a6,50
    24ac:	4761                	li	a4,24
    24ae:	4685                	li	a3,1
    24b0:	460d                	li	a2,3
    24b2:	b5c5                	j	0x2392

Disassembly of section .text.s25fl128s_wrr:

000024b4 <.text.s25fl128s_wrr>:
    24b4:	08500813          	li	a6,133
    24b8:	4789                	li	a5,2
    24ba:	4761                	li	a4,24
    24bc:	4685                	li	a3,1
    24be:	4605                	li	a2,1
    24c0:	4581                	li	a1,0
    24c2:	bd9d                	j	0x2338

Disassembly of section .text.s25fl128s_se:

000024c4 <.text.s25fl128s_se>:
    24c4:	08500813          	li	a6,133
    24c8:	478d                	li	a5,3
    24ca:	4701                	li	a4,0
    24cc:	4685                	li	a3,1
    24ce:	0d800613          	li	a2,216
    24d2:	4581                	li	a1,0
    24d4:	b595                	j	0x2338

Disassembly of section .text.s25fl128s_pp:

000024d6 <.text.s25fl128s_pp>:
    24d6:	87b2                	mv	a5,a2
    24d8:	08500813          	li	a6,133
    24dc:	4761                	li	a4,24
    24de:	4685                	li	a3,1
    24e0:	4609                	li	a2,2
    24e2:	bd99                	j	0x2338

Disassembly of section .text.s25fl128s_dor:

000024e4 <.text.s25fl128s_dor>:
    24e4:	87b2                	mv	a5,a2
    24e6:	06800813          	li	a6,104
    24ea:	02000713          	li	a4,32
    24ee:	4689                	li	a3,2
    24f0:	03b00613          	li	a2,59
    24f4:	bd79                	j	0x2392

Disassembly of section .text.s25fl128s_qor:

000024f6 <.text.s25fl128s_qor>:
    24f6:	87b2                	mv	a5,a2
    24f8:	06800813          	li	a6,104
    24fc:	02000713          	li	a4,32
    2500:	4691                	li	a3,4
    2502:	06b00613          	li	a2,107
    2506:	b571                	j	0x2392

Disassembly of section .text.s25fl128s_qpp:

00002508 <.text.s25fl128s_qpp>:
    2508:	87b2                	mv	a5,a2
    250a:	05000813          	li	a6,80
    250e:	4761                	li	a4,24
    2510:	4691                	li	a3,4
    2512:	03200613          	li	a2,50
    2516:	b50d                	j	0x2338

Disassembly of section .text.mt25ql256aba_write_disable:

00002518 <.text.mt25ql256aba_write_disable>:
    2518:	bdfd                	j	0x2416

Disassembly of section .text.mt25ql256aba_write_enable:

0000251a <.text.mt25ql256aba_write_enable>:
    251a:	bdc5                	j	0x240a

Disassembly of section .text.mt25ql256aba_reset_enable:

0000251c <.text.mt25ql256aba_reset_enable>:
    251c:	800007b7          	lui	a5,0x80000
    2520:	06678793          	addi	a5,a5,102 # 0x80000066
    2524:	6729                	lui	a4,0xa
    2526:	c31c                	sw	a5,0(a4)
    2528:	bbc9                	j	0x22fa

Disassembly of section .text.mt25ql256aba_reset_memory:

0000252a <.text.mt25ql256aba_reset_memory>:
    252a:	800007b7          	lui	a5,0x80000
    252e:	09978793          	addi	a5,a5,153 # 0x80000099
    2532:	6729                	lui	a4,0xa
    2534:	c31c                	sw	a5,0(a4)
    2536:	b3d1                	j	0x22fa

Disassembly of section .text.mt25ql256aba_read:

00002538 <.text.mt25ql256aba_read>:
    2538:	87b2                	mv	a5,a2
    253a:	08500813          	li	a6,133
    253e:	4761                	li	a4,24
    2540:	4685                	li	a3,1
    2542:	460d                	li	a2,3
    2544:	b5b9                	j	0x2392

Disassembly of section .text.mt25ql256aba_page_program:

00002546 <.text.mt25ql256aba_page_program>:
    2546:	bf41                	j	0x24d6

Disassembly of section .text.mt25ql256aba_4KiB_sector_erase:

00002548 <.text.mt25ql256aba_4KiB_sector_erase>:
    2548:	08500813          	li	a6,133
    254c:	478d                	li	a5,3
    254e:	4701                	li	a4,0
    2550:	4685                	li	a3,1
    2552:	02000613          	li	a2,32
    2556:	4581                	li	a1,0
    2558:	b3c5                	j	0x2338

Disassembly of section .text.mt25ql256aba_32KiB_sector_erase:

0000255a <.text.mt25ql256aba_32KiB_sector_erase>:
    255a:	08500813          	li	a6,133
    255e:	478d                	li	a5,3
    2560:	4701                	li	a4,0
    2562:	4685                	li	a3,1
    2564:	05200613          	li	a2,82
    2568:	4581                	li	a1,0
    256a:	b3f9                	j	0x2338

Disassembly of section .text.mt25ql256aba_sector_erase:

0000256c <.text.mt25ql256aba_sector_erase>:
    256c:	bfa1                	j	0x24c4

Disassembly of section .text.mt25ql256aba_read_id:

0000256e <.text.mt25ql256aba_read_id>:
    256e:	87ae                	mv	a5,a1
    2570:	08500813          	li	a6,133
    2574:	4701                	li	a4,0
    2576:	4685                	li	a3,1
    2578:	09f00613          	li	a2,159
    257c:	4581                	li	a1,0
    257e:	bd11                	j	0x2392

Disassembly of section .text.mt25ql256aba_read_status_register:

00002580 <.text.mt25ql256aba_read_status_register>:
    2580:	bdc9                	j	0x2452

Disassembly of section .text.mt25ql256aba_read_flag_status_register:

00002582 <.text.mt25ql256aba_read_flag_status_register>:
    2582:	08500813          	li	a6,133
    2586:	4785                	li	a5,1
    2588:	4701                	li	a4,0
    258a:	4685                	li	a3,1
    258c:	07000613          	li	a2,112
    2590:	4581                	li	a1,0
    2592:	b501                	j	0x2392

Disassembly of section .text.mt25ql256aba_read_nonvolatile_configuration_register:

00002594 <.text.mt25ql256aba_read_nonvolatile_configuration_register>:
    2594:	08500813          	li	a6,133
    2598:	4789                	li	a5,2
    259a:	4701                	li	a4,0
    259c:	4685                	li	a3,1
    259e:	0b500613          	li	a2,181
    25a2:	4581                	li	a1,0
    25a4:	b3fd                	j	0x2392

Disassembly of section .text.mt25ql256aba_read_volatile_configuration_register:

000025a6 <.text.mt25ql256aba_read_volatile_configuration_register>:
    25a6:	08500813          	li	a6,133
    25aa:	4785                	li	a5,1
    25ac:	4701                	li	a4,0
    25ae:	4685                	li	a3,1
    25b0:	08500613          	li	a2,133
    25b4:	4581                	li	a1,0
    25b6:	bbf1                	j	0x2392

Disassembly of section .text.mt25ql256aba_write_status_register:

000025b8 <.text.mt25ql256aba_write_status_register>:
    25b8:	08500813          	li	a6,133
    25bc:	4785                	li	a5,1
    25be:	4701                	li	a4,0
    25c0:	4685                	li	a3,1
    25c2:	4605                	li	a2,1
    25c4:	4581                	li	a1,0
    25c6:	bb8d                	j	0x2338

Disassembly of section .text.mt25ql256aba_write_nonvolatile_configuration_register:

000025c8 <.text.mt25ql256aba_write_nonvolatile_configuration_register>:
    25c8:	08500813          	li	a6,133
    25cc:	4789                	li	a5,2
    25ce:	4701                	li	a4,0
    25d0:	4685                	li	a3,1
    25d2:	0b100613          	li	a2,177
    25d6:	4581                	li	a1,0
    25d8:	b385                	j	0x2338

Disassembly of section .text.mt25ql256aba_write_volatile_configuration_register:

000025da <.text.mt25ql256aba_write_volatile_configuration_register>:
    25da:	08500813          	li	a6,133
    25de:	4785                	li	a5,1
    25e0:	4701                	li	a4,0
    25e2:	4685                	li	a3,1
    25e4:	08100613          	li	a2,129
    25e8:	4581                	li	a1,0
    25ea:	b3b9                	j	0x2338

Disassembly of section .text.mt25ql256aba_write_enhanced_volatile_configuration_register:

000025ec <.text.mt25ql256aba_write_enhanced_volatile_configuration_register>:
    25ec:	08500813          	li	a6,133
    25f0:	4785                	li	a5,1
    25f2:	4701                	li	a4,0
    25f4:	4685                	li	a3,1
    25f6:	06100613          	li	a2,97
    25fa:	4581                	li	a1,0
    25fc:	bb35                	j	0x2338

Disassembly of section .text.mt25ql256aba_dual_output_fast_read:

000025fe <.text.mt25ql256aba_dual_output_fast_read>:
    25fe:	87b2                	mv	a5,a2
    2600:	08500813          	li	a6,133
    2604:	02000713          	li	a4,32
    2608:	4689                	li	a3,2
    260a:	03b00613          	li	a2,59
    260e:	b351                	j	0x2392

Disassembly of section .text.mt25ql256aba_quad_output_fast_read:

00002610 <.text.mt25ql256aba_quad_output_fast_read>:
    2610:	87b2                	mv	a5,a2
    2612:	08500813          	li	a6,133
    2616:	02000713          	li	a4,32
    261a:	4691                	li	a3,4
    261c:	06b00613          	li	a2,107
    2620:	bb8d                	j	0x2392

Disassembly of section .text.timer_counter:

00002622 <.text.timer_counter>:
    2622:	67b1                	lui	a5,0xc
    2624:	4bc8                	lw	a0,20(a5)
    2626:	8082                	ret

Disassembly of section .text.timer_event:

00002628 <.text.timer_event>:
    2628:	67b1                	lui	a5,0xc
    262a:	4f88                	lw	a0,24(a5)
    262c:	8082                	ret

Disassembly of section .text.timer_clear:

0000262e <.text.timer_clear>:
    262e:	67b1                	lui	a5,0xc
    2630:	4705                	li	a4,1
    2632:	c798                	sw	a4,8(a5)
    2634:	67b1                	lui	a5,0xc
    2636:	cfd8                	sw	a4,28(a5)
    2638:	8082                	ret

Disassembly of section .text.timer_enabled:

0000263a <.text.timer_enabled>:
    263a:	67b1                	lui	a5,0xc
    263c:	c7c8                	sw	a0,12(a5)
    263e:	8082                	ret

Disassembly of section .text.timer_conf:

00002640 <.text.timer_conf>:
    2640:	1141                	addi	sp,sp,-16
    2642:	c606                	sw	ra,12(sp)
    2644:	67b1                	lui	a5,0xc
    2646:	c388                	sw	a0,0(a5)
    2648:	c3cc                	sw	a1,4(a5)
    264a:	67b1                	lui	a5,0xc
    264c:	cb90                	sw	a2,16(a5)
    264e:	08000613          	li	a2,128
    2652:	6589                	lui	a1,0x2
    2654:	20058593          	addi	a1,a1,512 # 0x2200
    2658:	30559073          	csrw	mtvec,a1
    265c:	30046073          	csrsi	mstatus,8
    2660:	30462073          	csrs	mie,a2
    2664:	37e9                	jal	0x262e
    2666:	40b2                	lw	ra,12(sp)
    2668:	67b1                	lui	a5,0xc
    266a:	4705                	li	a4,1
    266c:	c7d8                	sw	a4,12(a5)
    266e:	0141                	addi	sp,sp,16
    2670:	8082                	ret

Disassembly of section .text.delay_us:

00002672 <.text.delay_us>:
    2672:	7179                	addi	sp,sp,-48
    2674:	d422                	sw	s0,40(sp)
    2676:	6731                	lui	a4,0xc
    2678:	0040                	addi	s0,sp,4
    267a:	d606                	sw	ra,44(sp)
    267c:	86a2                	mv	a3,s0
    267e:	67b1                	lui	a5,0xc
    2680:	0771                	addi	a4,a4,28 # 0xc01c
    2682:	4390                	lw	a2,0(a5)
    2684:	0791                	addi	a5,a5,4 # 0xc004
    2686:	c290                	sw	a2,0(a3)
    2688:	0691                	addi	a3,a3,4
    268a:	fee79ce3          	bne	a5,a4,0x2682
    268e:	fff50593          	addi	a1,a0,-1 # 0x7fffffff
    2692:	4605                	li	a2,1
    2694:	03b00513          	li	a0,59
    2698:	3765                	jal	0x2640
    269a:	4705                	li	a4,1
    269c:	12e02823          	sw	a4,304(zero) # 0x130
    26a0:	13002703          	lw	a4,304(zero) # 0x130
    26a4:	ff75                	bnez	a4,0x26a0
    26a6:	6731                	lui	a4,0xc
    26a8:	67b1                	lui	a5,0xc
    26aa:	0771                	addi	a4,a4,28 # 0xc01c
    26ac:	4014                	lw	a3,0(s0)
    26ae:	0411                	addi	s0,s0,4
    26b0:	c394                	sw	a3,0(a5)
    26b2:	0791                	addi	a5,a5,4 # 0xc004
    26b4:	fee79ce3          	bne	a5,a4,0x26ac
    26b8:	50b2                	lw	ra,44(sp)
    26ba:	5422                	lw	s0,40(sp)
    26bc:	6145                	addi	sp,sp,48
    26be:	8082                	ret

Disassembly of section .text.usb_conf:

000026c0 <.text.usb_conf>:
    26c0:	67b9                	lui	a5,0xe
    26c2:	4398                	lw	a4,0(a5)
    26c4:	00a70963          	beq	a4,a0,0x26d6
    26c8:	4715                	li	a4,5
    26ca:	00a77563          	bgeu	a4,a0,0x26d4
    26ce:	0007a023          	sw	zero,0(a5) # 0xe000
    26d2:	8082                	ret
    26d4:	c388                	sw	a0,0(a5)
    26d6:	8082                	ret

Disassembly of section .text.usb_audio:

000026d8 <.text.usb_audio>:
    26d8:	67b9                	lui	a5,0xe
    26da:	c788                	sw	a0,8(a5)
    26dc:	67b9                	lui	a5,0xe
    26de:	07b1                	addi	a5,a5,12 # 0xe00c
    26e0:	4705                	li	a4,1
    26e2:	c398                	sw	a4,0(a5)
    26e4:	4398                	lw	a4,0(a5)
    26e6:	ff7d                	bnez	a4,0x26e4
    26e8:	67b9                	lui	a5,0xe
    26ea:	43c8                	lw	a0,4(a5)
    26ec:	0ff57513          	zext.b	a0,a0
    26f0:	8082                	ret

Disassembly of section .text.usb_serial_read:

000026f2 <.text.usb_serial_read>:
    26f2:	67b9                	lui	a5,0xe
    26f4:	07b1                	addi	a5,a5,12 # 0xe00c
    26f6:	4398                	lw	a4,0(a5)
    26f8:	df7d                	beqz	a4,0x26f6
    26fa:	0007a023          	sw	zero,0(a5)
    26fe:	67b9                	lui	a5,0xe
    2700:	43c8                	lw	a0,4(a5)
    2702:	0ff57513          	zext.b	a0,a0
    2706:	8082                	ret

Disassembly of section .text.usb_write:

00002708 <.text.usb_write>:
    2708:	67b9                	lui	a5,0xe
    270a:	c788                	sw	a0,8(a5)
    270c:	67b9                	lui	a5,0xe
    270e:	07b1                	addi	a5,a5,12 # 0xe00c
    2710:	4705                	li	a4,1
    2712:	c398                	sw	a4,0(a5)
    2714:	4398                	lw	a4,0(a5)
    2716:	ff7d                	bnez	a4,0x2714
    2718:	1f400513          	li	a0,500
    271c:	bf99                	j	0x2672

Disassembly of section .text.usb_print_short:

0000271e <.text.usb_print_short>:
    271e:	1141                	addi	sp,sp,-16
    2720:	c422                	sw	s0,8(sp)
    2722:	c226                	sw	s1,4(sp)
    2724:	c04a                	sw	s2,0(sp)
    2726:	c606                	sw	ra,12(sp)
    2728:	842a                	mv	s0,a0
    272a:	4491                	li	s1,4
    272c:	03900913          	li	s2,57
    2730:	00c45793          	srli	a5,s0,0xc
    2734:	03078513          	addi	a0,a5,48
    2738:	00a97463          	bgeu	s2,a0,0x2740
    273c:	03778513          	addi	a0,a5,55
    2740:	0412                	slli	s0,s0,0x4
    2742:	0442                	slli	s0,s0,0x10
    2744:	14fd                	addi	s1,s1,-1
    2746:	37c9                	jal	0x2708
    2748:	8041                	srli	s0,s0,0x10
    274a:	f0fd                	bnez	s1,0x2730
    274c:	40b2                	lw	ra,12(sp)
    274e:	4422                	lw	s0,8(sp)
    2750:	4492                	lw	s1,4(sp)
    2752:	4902                	lw	s2,0(sp)
    2754:	0141                	addi	sp,sp,16
    2756:	8082                	ret

Disassembly of section .text.usb_print_int:

00002758 <.text.usb_print_int>:
    2758:	1141                	addi	sp,sp,-16
    275a:	c422                	sw	s0,8(sp)
    275c:	842a                	mv	s0,a0
    275e:	8141                	srli	a0,a0,0x10
    2760:	c606                	sw	ra,12(sp)
    2762:	3f75                	jal	0x271e
    2764:	01041513          	slli	a0,s0,0x10
    2768:	4422                	lw	s0,8(sp)
    276a:	40b2                	lw	ra,12(sp)
    276c:	8141                	srli	a0,a0,0x10
    276e:	0141                	addi	sp,sp,16
    2770:	b77d                	j	0x271e

Disassembly of section .text.usb_print_newline:

00002772 <.text.usb_print_newline>:
    2772:	1141                	addi	sp,sp,-16
    2774:	4535                	li	a0,13
    2776:	c606                	sw	ra,12(sp)
    2778:	3f41                	jal	0x2708
    277a:	40b2                	lw	ra,12(sp)
    277c:	4529                	li	a0,10
    277e:	0141                	addi	sp,sp,16
    2780:	b761                	j	0x2708

Disassembly of section .text.usb_read_short:

00002782 <.text.usb_read_short>:
    2782:	1101                	addi	sp,sp,-32
    2784:	cc22                	sw	s0,24(sp)
    2786:	c84a                	sw	s2,16(sp)
    2788:	c64e                	sw	s3,12(sp)
    278a:	ce06                	sw	ra,28(sp)
    278c:	ca26                	sw	s1,20(sp)
    278e:	4411                	li	s0,4
    2790:	4501                	li	a0,0
    2792:	4925                	li	s2,9
    2794:	49bd                	li	s3,15
    2796:	0512                	slli	a0,a0,0x4
    2798:	01051493          	slli	s1,a0,0x10
    279c:	3f99                	jal	0x26f2
    279e:	fd050793          	addi	a5,a0,-48
    27a2:	0ff7f793          	zext.b	a5,a5
    27a6:	80c1                	srli	s1,s1,0x10
    27a8:	00f97c63          	bgeu	s2,a5,0x27c0
    27ac:	fc950793          	addi	a5,a0,-55
    27b0:	0ff7f793          	zext.b	a5,a5
    27b4:	00f9f663          	bgeu	s3,a5,0x27c0
    27b8:	fa950513          	addi	a0,a0,-87
    27bc:	0ff57793          	zext.b	a5,a0
    27c0:	00978533          	add	a0,a5,s1
    27c4:	0542                	slli	a0,a0,0x10
    27c6:	147d                	addi	s0,s0,-1
    27c8:	8141                	srli	a0,a0,0x10
    27ca:	f471                	bnez	s0,0x2796
    27cc:	40f2                	lw	ra,28(sp)
    27ce:	4462                	lw	s0,24(sp)
    27d0:	44d2                	lw	s1,20(sp)
    27d2:	4942                	lw	s2,16(sp)
    27d4:	49b2                	lw	s3,12(sp)
    27d6:	6105                	addi	sp,sp,32
    27d8:	8082                	ret

Disassembly of section .text.usb_read_int:

000027da <.text.usb_read_int>:
    27da:	1141                	addi	sp,sp,-16
    27dc:	c606                	sw	ra,12(sp)
    27de:	c422                	sw	s0,8(sp)
    27e0:	374d                	jal	0x2782
    27e2:	01051413          	slli	s0,a0,0x10
    27e6:	3f71                	jal	0x2782
    27e8:	40b2                	lw	ra,12(sp)
    27ea:	9522                	add	a0,a0,s0
    27ec:	4422                	lw	s0,8(sp)
    27ee:	0141                	addi	sp,sp,16
    27f0:	8082                	ret

Disassembly of section .text.gpio_write:

000027f2 <.text.gpio_write>:
    27f2:	67c1                	lui	a5,0x10
    27f4:	c3c8                	sw	a0,4(a5)
    27f6:	8082                	ret

Disassembly of section .text.gpio_read:

000027f8 <.text.gpio_read>:
    27f8:	67c1                	lui	a5,0x10
    27fa:	4388                	lw	a0,0(a5)
    27fc:	0542                	slli	a0,a0,0x10
    27fe:	8141                	srli	a0,a0,0x10
    2800:	8082                	ret

Disassembly of section .text.instr_mem_write:

00002802 <.text.instr_mem_write>:
    2802:	050a                	slli	a0,a0,0x2
    2804:	6791                	lui	a5,0x4
    2806:	97aa                	add	a5,a5,a0
    2808:	c38c                	sw	a1,0(a5)
    280a:	8082                	ret

Disassembly of section .text.uart_main:

0000280c <.text.uart_main>:
    280c:	1101                	addi	sp,sp,-32
    280e:	cc22                	sw	s0,24(sp)
    2810:	ca26                	sw	s1,20(sp)
    2812:	c84a                	sw	s2,16(sp)
    2814:	c64e                	sw	s3,12(sp)
    2816:	ce06                	sw	ra,28(sp)
    2818:	6799                	lui	a5,0x6
    281a:	0c700713          	li	a4,199
    281e:	c398                	sw	a4,0(a5)
    2820:	64c1                	lui	s1,0x10
    2822:	0007a223          	sw	zero,4(a5) # 0x6004
    2826:	4401                	li	s0,0
    2828:	4901                	li	s2,0
    282a:	69c1                	lui	s3,0x10
    282c:	0491                	addi	s1,s1,4 # 0x10004
    282e:	0009a503          	lw	a0,0(s3) # 0x10000
    2832:	02090363          	beqz	s2,0x2858
    2836:	0ff57513          	zext.b	a0,a0
    283a:	34a5                	jal	0x22a2
    283c:	f0047413          	andi	s0,s0,-256
    2840:	34a1                	jal	0x2288
    2842:	9522                	add	a0,a0,s0
    2844:	01051413          	slli	s0,a0,0x10
    2848:	8441                	srai	s0,s0,0x10
    284a:	01041793          	slli	a5,s0,0x10
    284e:	83c1                	srli	a5,a5,0x10
    2850:	00194913          	xori	s2,s2,1
    2854:	c09c                	sw	a5,0(s1)
    2856:	bfe1                	j	0x282e
    2858:	0542                	slli	a0,a0,0x10
    285a:	8141                	srli	a0,a0,0x10
    285c:	8121                	srli	a0,a0,0x8
    285e:	3491                	jal	0x22a2
    2860:	3425                	jal	0x2288
    2862:	0ff47413          	zext.b	s0,s0
    2866:	0522                	slli	a0,a0,0x8
    2868:	942a                	add	s0,s0,a0
    286a:	0442                	slli	s0,s0,0x10
    286c:	bff1                	j	0x2848

Disassembly of section .text.uart_interrupt:

0000286e <.text.uart_interrupt>:
    286e:	8082                	ret

Disassembly of section .text.i2c_main:

00002870 <.text.i2c_main>:
    2870:	1101                	addi	sp,sp,-32
    2872:	cc22                	sw	s0,24(sp)
    2874:	ca26                	sw	s1,20(sp)
    2876:	c84a                	sw	s2,16(sp)
    2878:	c64e                	sw	s3,12(sp)
    287a:	c452                	sw	s4,8(sp)
    287c:	ce06                	sw	ra,28(sp)
    287e:	67a1                	lui	a5,0x8
    2880:	07b00713          	li	a4,123
    2884:	69c1                	lui	s3,0x10
    2886:	6941                	lui	s2,0x10
    2888:	0007a4b7          	lui	s1,0x7a
    288c:	c3d8                	sw	a4,4(a5)
    288e:	fff98a13          	addi	s4,s3,-1 # 0xffff
    2892:	0911                	addi	s2,s2,4 # 0x10004
    2894:	12048493          	addi	s1,s1,288 # 0x7a120
    2898:	02402783          	lw	a5,36(zero) # 0x24
    289c:	c385                	beqz	a5,0x28bc
    289e:	0009a503          	lw	a0,0(s3)
    28a2:	4585                	li	a1,1
    28a4:	01457533          	and	a0,a0,s4
    28a8:	3c29                	jal	0x22c2
    28aa:	8526                	mv	a0,s1
    28ac:	33d9                	jal	0x2672
    28ae:	02402783          	lw	a5,36(zero) # 0x24
    28b2:	0017b793          	seqz	a5,a5
    28b6:	02f02223          	sw	a5,36(zero) # 0x24
    28ba:	bff9                	j	0x2898
    28bc:	4505                	li	a0,1
    28be:	3405                	jal	0x22de
    28c0:	01457533          	and	a0,a0,s4
    28c4:	00a92023          	sw	a0,0(s2)
    28c8:	b7cd                	j	0x28aa

Disassembly of section .text.i2c_interrupt:

000028ca <.text.i2c_interrupt>:
    28ca:	8082                	ret

Disassembly of section .text.qspi_main:

000028cc <.text.qspi_main>:
    28cc:	7179                	addi	sp,sp,-48
    28ce:	4515                	li	a0,5
    28d0:	d606                	sw	ra,44(sp)
    28d2:	d422                	sw	s0,40(sp)
    28d4:	d226                	sw	s1,36(sp)
    28d6:	d04a                	sw	s2,32(sp)
    28d8:	ce4e                	sw	s3,28(sp)
    28da:	cc52                	sw	s4,24(sp)
    28dc:	ca56                	sw	s5,20(sp)
    28de:	c85a                	sw	s6,16(sp)
    28e0:	33c5                	jal	0x26c0
    28e2:	6741                	lui	a4,0x10
    28e4:	66c1                	lui	a3,0x10
    28e6:	fff70593          	addi	a1,a4,-1 # 0xffff
    28ea:	0691                	addi	a3,a3,4 # 0x10004
    28ec:	4505                	li	a0,1
    28ee:	4809                	li	a6,2
    28f0:	431c                	lw	a5,0(a4)
    28f2:	00b7f633          	and	a2,a5,a1
    28f6:	07c2                	slli	a5,a5,0x10
    28f8:	c290                	sw	a2,0(a3)
    28fa:	83c1                	srli	a5,a5,0x10
    28fc:	dbf5                	beqz	a5,0x28f0
    28fe:	431c                	lw	a5,0(a4)
    2900:	07c2                	slli	a5,a5,0x10
    2902:	83c1                	srli	a5,a5,0x10
    2904:	ffed                	bnez	a5,0x28fe
    2906:	06a60a63          	beq	a2,a0,0x297a
    290a:	ff0613e3          	bne	a2,a6,0x28f0
    290e:	4a05                	li	s4,1
    2910:	3d8d                	jal	0x2782
    2912:	842a                	mv	s0,a0
    2914:	02000613          	li	a2,32
    2918:	4581                	li	a1,0
    291a:	0f800513          	li	a0,248
    291e:	2e89                	jal	0x2c70
    2920:	34ed                	jal	0x240a
    2922:	02000613          	li	a2,32
    2926:	85a2                	mv	a1,s0
    2928:	0f800513          	li	a0,248
    292c:	366d                	jal	0x24d6
    292e:	0068                	addi	a0,sp,12
    2930:	c652                	sw	s4,12(sp)
    2932:	3605                	jal	0x2452
    2934:	00c15503          	lhu	a0,12(sp)
    2938:	02040913          	addi	s2,s0,32
    293c:	0942                	slli	s2,s2,0x10
    293e:	33c5                	jal	0x271e
    2940:	02000613          	li	a2,32
    2944:	85a2                	mv	a1,s0
    2946:	0f800513          	li	a0,248
    294a:	31d9                	jal	0x2610
    294c:	0f800993          	li	s3,248
    2950:	01095913          	srli	s2,s2,0x10
    2954:	8522                	mv	a0,s0
    2956:	33e1                	jal	0x271e
    2958:	03a00513          	li	a0,58
    295c:	3375                	jal	0x2708
    295e:	02000513          	li	a0,32
    2962:	335d                	jal	0x2708
    2964:	0009a503          	lw	a0,0(s3)
    2968:	0411                	addi	s0,s0,4
    296a:	0442                	slli	s0,s0,0x10
    296c:	8041                	srli	s0,s0,0x10
    296e:	33ed                	jal	0x2758
    2970:	0991                	addi	s3,s3,4
    2972:	3501                	jal	0x2772
    2974:	ff2410e3          	bne	s0,s2,0x2954
    2978:	bf61                	j	0x2910
    297a:	c202                	sw	zero,4(sp)
    297c:	c402                	sw	zero,8(sp)
    297e:	3471                	jal	0x240a
    2980:	0048                	addi	a0,sp,4
    2982:	3ee1                	jal	0x255a
    2984:	47a2                	lw	a5,8(sp)
    2986:	0807f793          	andi	a5,a5,128
    298a:	cbb1                	beqz	a5,0x29de
    298c:	6941                	lui	s2,0x10
    298e:	69c1                	lui	s3,0x10
    2990:	4481                	li	s1,0
    2992:	197d                	addi	s2,s2,-1 # 0xffff
    2994:	0991                	addi	s3,s3,4 # 0x10004
    2996:	6b11                	lui	s6,0x4
    2998:	0f800413          	li	s0,248
    299c:	02040a93          	addi	s5,s0,32
    29a0:	3d2d                	jal	0x27da
    29a2:	c008                	sw	a0,0(s0)
    29a4:	0411                	addi	s0,s0,4
    29a6:	ff541de3          	bne	s0,s5,0x29a0
    29aa:	3485                	jal	0x240a
    29ac:	02000613          	li	a2,32
    29b0:	85a6                	mv	a1,s1
    29b2:	0f800513          	li	a0,248
    29b6:	3605                	jal	0x24d6
    29b8:	c402                	sw	zero,8(sp)
    29ba:	47a2                	lw	a5,8(sp)
    29bc:	0807f793          	andi	a5,a5,128
    29c0:	c395                	beqz	a5,0x29e4
    29c2:	4792                	lw	a5,4(sp)
    29c4:	02048493          	addi	s1,s1,32
    29c8:	0785                	addi	a5,a5,1 # 0x8001
    29ca:	c23e                	sw	a5,4(sp)
    29cc:	0127f7b3          	and	a5,a5,s2
    29d0:	00f9a023          	sw	a5,0(s3)
    29d4:	fd6492e3          	bne	s1,s6,0x2998
    29d8:	00000067          	jr	zero # 0x0
    29dc:	bf0d                	j	0x290e
    29de:	0028                	addi	a0,sp,8
    29e0:	364d                	jal	0x2582
    29e2:	b74d                	j	0x2984
    29e4:	0028                	addi	a0,sp,8
    29e6:	3e71                	jal	0x2582
    29e8:	bfc9                	j	0x29ba

Disassembly of section .text.qspi_interrupt:

000029ea <.text.qspi_interrupt>:
    29ea:	8082                	ret

Disassembly of section .text.timer_main:

000029ec <.text.timer_main>:
    29ec:	1101                	addi	sp,sp,-32
    29ee:	653d                	lui	a0,0xf
    29f0:	cc22                	sw	s0,24(sp)
    29f2:	c84a                	sw	s2,16(sp)
    29f4:	4605                	li	a2,1
    29f6:	4581                	li	a1,0
    29f8:	a5f50513          	addi	a0,a0,-1441 # 0xea5f
    29fc:	6441                	lui	s0,0x10
    29fe:	6931                	lui	s2,0xc
    2a00:	ca26                	sw	s1,20(sp)
    2a02:	c64e                	sw	s3,12(sp)
    2a04:	ce06                	sw	ra,28(sp)
    2a06:	392d                	jal	0x2640
    2a08:	fff40493          	addi	s1,s0,-1 # 0xffff
    2a0c:	0911                	addi	s2,s2,4 # 0xc004
    2a0e:	02002703          	lw	a4,32(zero) # 0x20
    2a12:	401c                	lw	a5,0(s0)
    2a14:	8fe5                	and	a5,a5,s1
    2a16:	fee78ee3          	beq	a5,a4,0x2a12
    2a1a:	401c                	lw	a5,0(s0)
    2a1c:	8fe5                	and	a5,a5,s1
    2a1e:	00f92023          	sw	a5,0(s2)
    2a22:	3131                	jal	0x262e
    2a24:	401c                	lw	a5,0(s0)
    2a26:	8fe5                	and	a5,a5,s1
    2a28:	02f02023          	sw	a5,32(zero) # 0x20
    2a2c:	b7cd                	j	0x2a0e

Disassembly of section .text.timer_interrupt:

00002a2e <.text.timer_interrupt>:
    2a2e:	12c05683          	lhu	a3,300(zero) # 0x12c
    2a32:	6741                	lui	a4,0x10
    2a34:	c354                	sw	a3,4(a4)
    2a36:	12c02703          	lw	a4,300(zero) # 0x12c
    2a3a:	0705                	addi	a4,a4,1 # 0x10001
    2a3c:	12e02623          	sw	a4,300(zero) # 0x12c
    2a40:	8082                	ret

Disassembly of section .text.gpio_main:

00002a42 <.text.gpio_main>:
    2a42:	66c1                	lui	a3,0x10
    2a44:	67c1                	lui	a5,0x10
    2a46:	fff68613          	addi	a2,a3,-1 # 0xffff
    2a4a:	0791                	addi	a5,a5,4 # 0x10004
    2a4c:	4298                	lw	a4,0(a3)
    2a4e:	8f71                	and	a4,a4,a2
    2a50:	c398                	sw	a4,0(a5)
    2a52:	bfed                	j	0x2a4c

Disassembly of section .text.gpio_interrupt:

00002a54 <.text.gpio_interrupt>:
    2a54:	8082                	ret

Disassembly of section .text.usb_main:

00002a56 <.text.usb_main>:
    2a56:	1101                	addi	sp,sp,-32
    2a58:	cc22                	sw	s0,24(sp)
    2a5a:	ca26                	sw	s1,20(sp)
    2a5c:	c84a                	sw	s2,16(sp)
    2a5e:	c64e                	sw	s3,12(sp)
    2a60:	c452                	sw	s4,8(sp)
    2a62:	ce06                	sw	ra,28(sp)
    2a64:	6a41                	lui	s4,0x10
    2a66:	4991                	li	s3,4
    2a68:	000a2783          	lw	a5,0(s4) # 0x10000
    2a6c:	0ff7f793          	zext.b	a5,a5
    2a70:	12f02423          	sw	a5,296(zero) # 0x128
    2a74:	12002023          	sw	zero,288(zero) # 0x120
    2a78:	12802783          	lw	a5,296(zero) # 0x128
    2a7c:	e3a1                	bnez	a5,0x2abc
    2a7e:	12002703          	lw	a4,288(zero) # 0x120
    2a82:	11c02783          	lw	a5,284(zero) # 0x11c
    2a86:	00f70763          	beq	a4,a5,0x2a94
    2a8a:	12002503          	lw	a0,288(zero) # 0x120
    2a8e:	0ff57513          	zext.b	a0,a0
    2a92:	313d                	jal	0x26c0
    2a94:	12002783          	lw	a5,288(zero) # 0x120
    2a98:	10f02e23          	sw	a5,284(zero) # 0x11c
    2a9c:	12002783          	lw	a5,288(zero) # 0x120
    2aa0:	03379963          	bne	a5,s3,0x2ad2
    2aa4:	000f4437          	lui	s0,0xf4
    2aa8:	64c1                	lui	s1,0x10
    2aaa:	24040413          	addi	s0,s0,576 # 0xf4240
    2aae:	4088                	lw	a0,0(s1)
    2ab0:	0ff57513          	zext.b	a0,a0
    2ab4:	3991                	jal	0x2708
    2ab6:	8522                	mv	a0,s0
    2ab8:	3e6d                	jal	0x2672
    2aba:	bfd5                	j	0x2aae
    2abc:	12802783          	lw	a5,296(zero) # 0x128
    2ac0:	8385                	srli	a5,a5,0x1
    2ac2:	12f02423          	sw	a5,296(zero) # 0x128
    2ac6:	12002783          	lw	a5,288(zero) # 0x120
    2aca:	0785                	addi	a5,a5,1
    2acc:	12f02023          	sw	a5,288(zero) # 0x120
    2ad0:	b765                	j	0x2a78
    2ad2:	04f9eb63          	bltu	s3,a5,0x2b28
    2ad6:	4705                	li	a4,1
    2ad8:	00e79a63          	bne	a5,a4,0x2aec
    2adc:	12402503          	lw	a0,292(zero) # 0x124
    2ae0:	0ff57513          	zext.b	a0,a0
    2ae4:	3ed5                	jal	0x26d8
    2ae6:	12a02223          	sw	a0,292(zero) # 0x124
    2aea:	bfcd                	j	0x2adc
    2aec:	4709                	li	a4,2
    2aee:	f6e79de3          	bne	a5,a4,0x2a68
    2af2:	28000993          	li	s3,640
    2af6:	16800a13          	li	s4,360
    2afa:	4501                	li	a0,0
    2afc:	3131                	jal	0x2708
    2afe:	4481                	li	s1,0
    2b00:	4401                	li	s0,0
    2b02:	12402503          	lw	a0,292(zero) # 0x124
    2b06:	9526                	add	a0,a0,s1
    2b08:	9522                	add	a0,a0,s0
    2b0a:	0ff57513          	zext.b	a0,a0
    2b0e:	0405                	addi	s0,s0,1
    2b10:	3ee5                	jal	0x2708
    2b12:	ff3418e3          	bne	s0,s3,0x2b02
    2b16:	0485                	addi	s1,s1,1 # 0x10001
    2b18:	ff4494e3          	bne	s1,s4,0x2b00
    2b1c:	12402783          	lw	a5,292(zero) # 0x124
    2b20:	0785                	addi	a5,a5,1
    2b22:	12f02223          	sw	a5,292(zero) # 0x124
    2b26:	bfd1                	j	0x2afa
    2b28:	4715                	li	a4,5
    2b2a:	f2e79fe3          	bne	a5,a4,0x2a68
    2b2e:	36d1                	jal	0x26f2
    2b30:	3ee1                	jal	0x2708
    2b32:	bff5                	j	0x2b2e

Disassembly of section .text.usb_interrupt:

00002b34 <.text.usb_interrupt>:
    2b34:	8082                	ret

Disassembly of section .text.debug_main:

00002b36 <.text.debug_main>:
    2b36:	715d                	addi	sp,sp,-80
    2b38:	de4e                	sw	s3,60(sp)
    2b3a:	4515                	li	a0,5
    2b3c:	69c1                	lui	s3,0x10
    2b3e:	c2a6                	sw	s1,68(sp)
    2b40:	da56                	sw	s5,52(sp)
    2b42:	d85a                	sw	s6,48(sp)
    2b44:	d65e                	sw	s7,44(sp)
    2b46:	d462                	sw	s8,40(sp)
    2b48:	c686                	sw	ra,76(sp)
    2b4a:	c4a2                	sw	s0,72(sp)
    2b4c:	c0ca                	sw	s2,64(sp)
    2b4e:	dc52                	sw	s4,56(sp)
    2b50:	d266                	sw	s9,36(sp)
    2b52:	d06a                	sw	s10,32(sp)
    2b54:	6ac1                	lui	s5,0x10
    2b56:	36ad                	jal	0x26c0
    2b58:	0991                	addi	s3,s3,4 # 0x10004
    2b5a:	4b05                	li	s6,1
    2b5c:	4b89                	li	s7,2
    2b5e:	6c05                	lui	s8,0x1
    2b60:	000aa783          	lw	a5,0(s5) # 0x10000
    2b64:	07c2                	slli	a5,a5,0x10
    2b66:	83c1                	srli	a5,a5,0x10
    2b68:	10f01d23          	sh	a5,282(zero) # 0x11a
    2b6c:	11a05783          	lhu	a5,282(zero) # 0x11a
    2b70:	07c2                	slli	a5,a5,0x10
    2b72:	83c1                	srli	a5,a5,0x10
    2b74:	00f9a023          	sw	a5,0(s3)
    2b78:	11a05783          	lhu	a5,282(zero) # 0x11a
    2b7c:	d3f5                	beqz	a5,0x2b60
    2b7e:	000aa783          	lw	a5,0(s5)
    2b82:	07c2                	slli	a5,a5,0x10
    2b84:	83c1                	srli	a5,a5,0x10
    2b86:	ffe5                	bnez	a5,0x2b7e
    2b88:	11a05783          	lhu	a5,282(zero) # 0x11a
    2b8c:	01079713          	slli	a4,a5,0x10
    2b90:	8341                	srli	a4,a4,0x10
    2b92:	05678c63          	beq	a5,s6,0x2bea
    2b96:	fd7715e3          	bne	a4,s7,0x2b60
    2b9a:	4901                	li	s2,0
    2b9c:	4a01                	li	s4,0
    2b9e:	01091413          	slli	s0,s2,0x10
    2ba2:	8041                	srli	s0,s0,0x10
    2ba4:	02040c93          	addi	s9,s0,32
    2ba8:	02000613          	li	a2,32
    2bac:	85ca                	mv	a1,s2
    2bae:	850a                	mv	a0,sp
    2bb0:	0cc2                	slli	s9,s9,0x10
    2bb2:	3cb9                	jal	0x2610
    2bb4:	8d0a                	mv	s10,sp
    2bb6:	010cdc93          	srli	s9,s9,0x10
    2bba:	8522                	mv	a0,s0
    2bbc:	368d                	jal	0x271e
    2bbe:	03a00513          	li	a0,58
    2bc2:	3699                	jal	0x2708
    2bc4:	02000513          	li	a0,32
    2bc8:	3681                	jal	0x2708
    2bca:	000d2503          	lw	a0,0(s10)
    2bce:	0411                	addi	s0,s0,4
    2bd0:	0442                	slli	s0,s0,0x10
    2bd2:	8041                	srli	s0,s0,0x10
    2bd4:	3651                	jal	0x2758
    2bd6:	0d11                	addi	s10,s10,4
    2bd8:	3e69                	jal	0x2772
    2bda:	ff9410e3          	bne	s0,s9,0x2bba
    2bde:	0a21                	addi	s4,s4,8
    2be0:	02090913          	addi	s2,s2,32
    2be4:	fb8a1de3          	bne	s4,s8,0x2b9e
    2be8:	bfa5                	j	0x2b60
    2bea:	4401                	li	s0,0
    2bec:	00241513          	slli	a0,s0,0x2
    2bf0:	0542                	slli	a0,a0,0x10
    2bf2:	8141                	srli	a0,a0,0x10
    2bf4:	362d                	jal	0x271e
    2bf6:	03a00513          	li	a0,58
    2bfa:	3639                	jal	0x2708
    2bfc:	00340913          	addi	s2,s0,3
    2c00:	fff40a13          	addi	s4,s0,-1
    2c04:	02000513          	li	a0,32
    2c08:	3601                	jal	0x2708
    2c0a:	00291793          	slli	a5,s2,0x2
    2c0e:	4388                	lw	a0,0(a5)
    2c10:	197d                	addi	s2,s2,-1
    2c12:	3699                	jal	0x2758
    2c14:	ff4918e3          	bne	s2,s4,0x2c04
    2c18:	3ea9                	jal	0x2772
    2c1a:	0411                	addi	s0,s0,4
    2c1c:	80040793          	addi	a5,s0,-2048
    2c20:	f7f1                	bnez	a5,0x2bec
    2c22:	bf3d                	j	0x2b60

Disassembly of section .text.debug_interrupt:

00002c24 <.text.debug_interrupt>:
    2c24:	8082                	ret

Disassembly of section .text.main_interrupt:

00002c26 <.text.main_interrupt>:
    2c26:	01c05683          	lhu	a3,28(zero) # 0x1c
    2c2a:	01c05783          	lhu	a5,28(zero) # 0x1c
    2c2e:	0686                	slli	a3,a3,0x1
    2c30:	83bd                	srli	a5,a5,0xf
    2c32:	8fd5                	or	a5,a5,a3
    2c34:	07c2                	slli	a5,a5,0x10
    2c36:	83c1                	srli	a5,a5,0x10
    2c38:	00f01e23          	sh	a5,28(zero) # 0x1c
    2c3c:	01c05703          	lhu	a4,28(zero) # 0x1c
    2c40:	67c1                	lui	a5,0x10
    2c42:	0742                	slli	a4,a4,0x10
    2c44:	8341                	srli	a4,a4,0x10
    2c46:	c3d8                	sw	a4,4(a5)
    2c48:	8082                	ret

Disassembly of section .plt:

00002c50 <.plt>:
    2c50:	ffffd397          	auipc	t2,0xffffd
    2c54:	41c30333          	sub	t1,t1,t3
    2c58:	49c3ae03          	lw	t3,1180(t2) # 0xec
    2c5c:	fd430313          	addi	t1,t1,-44
    2c60:	49c38293          	addi	t0,t2,1180
    2c64:	00235313          	srli	t1,t1,0x2
    2c68:	0042a283          	lw	t0,4(t0)
    2c6c:	000e0067          	jr	t3
    2c70:	ffffde17          	auipc	t3,0xffffd
    2c74:	484e2e03          	lw	t3,1156(t3) # 0xf4
    2c78:	000e0367          	jalr	t1,t3
    2c7c:	00000013          	nop
