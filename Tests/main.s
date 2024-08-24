
a.out:     file format elf32-littleriscv


Disassembly of section .text:

00002000 <.text>:
    2000:	01c05703          	lhu	a4,28(zero) # 0x1c
    2004:	002dc537          	lui	a0,0x2dc
    2008:	67c1                	lui	a5,0x10
    200a:	0742                	slli	a4,a4,0x10
    200c:	8341                	srli	a4,a4,0x10
    200e:	c3d8                	sw	a4,4(a5)
    2010:	4605                	li	a2,1
    2012:	4581                	li	a1,0
    2014:	6bf50513          	addi	a0,a0,1727 # 0x2dc6bf
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
    206c:	2d3000ef          	jal	0x2b3e
    2070:	4741                	li	a4,16
    2072:	02e78063          	beq	a5,a4,0x2092
    2076:	02000713          	li	a4,32
    207a:	fee799e3          	bne	a5,a4,0x206c
    207e:	1e7000ef          	jal	0x2a64
    2082:	796000ef          	jal	0x2818
    2086:	7f6000ef          	jal	0x287c
    208a:	04f000ef          	jal	0x28d8
    208e:	16d000ef          	jal	0x29fa
    2092:	1bf000ef          	jal	0x2a50
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
    2264:	7d8000ef          	jal	0x2a3c
    2268:	b7d1                	j	0x222c
    226a:	1d9000ef          	jal	0x2c42
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
    26ec:	8082                	ret

Disassembly of section .text.usb_camera:

000026ee <.text.usb_camera>:
    26ee:	67b9                	lui	a5,0xe
    26f0:	c788                	sw	a0,8(a5)
    26f2:	67b9                	lui	a5,0xe
    26f4:	07b1                	addi	a5,a5,12 # 0xe00c
    26f6:	4705                	li	a4,1
    26f8:	c398                	sw	a4,0(a5)
    26fa:	4398                	lw	a4,0(a5)
    26fc:	ff7d                	bnez	a4,0x26fa
    26fe:	8082                	ret

Disassembly of section .text.usb_keyboard:

00002700 <.text.usb_keyboard>:
    2700:	67b9                	lui	a5,0xe
    2702:	c788                	sw	a0,8(a5)
    2704:	67b9                	lui	a5,0xe
    2706:	07b1                	addi	a5,a5,12 # 0xe00c
    2708:	4705                	li	a4,1
    270a:	c398                	sw	a4,0(a5)
    270c:	4398                	lw	a4,0(a5)
    270e:	ff7d                	bnez	a4,0x270c
    2710:	8082                	ret

Disassembly of section .text.usb_serial_read:

00002712 <.text.usb_serial_read>:
    2712:	67b9                	lui	a5,0xe
    2714:	07b1                	addi	a5,a5,12 # 0xe00c
    2716:	4398                	lw	a4,0(a5)
    2718:	df7d                	beqz	a4,0x2716
    271a:	0007a023          	sw	zero,0(a5)
    271e:	67b9                	lui	a5,0xe
    2720:	43c8                	lw	a0,4(a5)
    2722:	0ff57513          	zext.b	a0,a0
    2726:	8082                	ret

Disassembly of section .text.usb_serial_write:

00002728 <.text.usb_serial_write>:
    2728:	b7d9                	j	0x26ee

Disassembly of section .text.usb_print_short:

0000272a <.text.usb_print_short>:
    272a:	1141                	addi	sp,sp,-16
    272c:	c422                	sw	s0,8(sp)
    272e:	c226                	sw	s1,4(sp)
    2730:	c04a                	sw	s2,0(sp)
    2732:	c606                	sw	ra,12(sp)
    2734:	842a                	mv	s0,a0
    2736:	4491                	li	s1,4
    2738:	03900913          	li	s2,57
    273c:	00c45793          	srli	a5,s0,0xc
    2740:	03078513          	addi	a0,a5,48 # 0xe030
    2744:	00a97463          	bgeu	s2,a0,0x274c
    2748:	03778513          	addi	a0,a5,55
    274c:	0412                	slli	s0,s0,0x4
    274e:	0442                	slli	s0,s0,0x10
    2750:	14fd                	addi	s1,s1,-1
    2752:	3f71                	jal	0x26ee
    2754:	8041                	srli	s0,s0,0x10
    2756:	f0fd                	bnez	s1,0x273c
    2758:	40b2                	lw	ra,12(sp)
    275a:	4422                	lw	s0,8(sp)
    275c:	4492                	lw	s1,4(sp)
    275e:	4902                	lw	s2,0(sp)
    2760:	0141                	addi	sp,sp,16
    2762:	8082                	ret

Disassembly of section .text.usb_print_int:

00002764 <.text.usb_print_int>:
    2764:	1141                	addi	sp,sp,-16
    2766:	c422                	sw	s0,8(sp)
    2768:	842a                	mv	s0,a0
    276a:	8141                	srli	a0,a0,0x10
    276c:	c606                	sw	ra,12(sp)
    276e:	3f75                	jal	0x272a
    2770:	01041513          	slli	a0,s0,0x10
    2774:	4422                	lw	s0,8(sp)
    2776:	40b2                	lw	ra,12(sp)
    2778:	8141                	srli	a0,a0,0x10
    277a:	0141                	addi	sp,sp,16
    277c:	b77d                	j	0x272a

Disassembly of section .text.usb_print_newline:

0000277e <.text.usb_print_newline>:
    277e:	1141                	addi	sp,sp,-16
    2780:	4535                	li	a0,13
    2782:	c606                	sw	ra,12(sp)
    2784:	37ad                	jal	0x26ee
    2786:	40b2                	lw	ra,12(sp)
    2788:	4529                	li	a0,10
    278a:	0141                	addi	sp,sp,16
    278c:	b78d                	j	0x26ee

Disassembly of section .text.usb_read_short:

0000278e <.text.usb_read_short>:
    278e:	1101                	addi	sp,sp,-32
    2790:	cc22                	sw	s0,24(sp)
    2792:	c84a                	sw	s2,16(sp)
    2794:	c64e                	sw	s3,12(sp)
    2796:	ce06                	sw	ra,28(sp)
    2798:	ca26                	sw	s1,20(sp)
    279a:	4411                	li	s0,4
    279c:	4501                	li	a0,0
    279e:	4925                	li	s2,9
    27a0:	49bd                	li	s3,15
    27a2:	0512                	slli	a0,a0,0x4
    27a4:	01051493          	slli	s1,a0,0x10
    27a8:	37ad                	jal	0x2712
    27aa:	fd050793          	addi	a5,a0,-48
    27ae:	0ff7f793          	zext.b	a5,a5
    27b2:	80c1                	srli	s1,s1,0x10
    27b4:	00f97c63          	bgeu	s2,a5,0x27cc
    27b8:	fc950793          	addi	a5,a0,-55
    27bc:	0ff7f793          	zext.b	a5,a5
    27c0:	00f9f663          	bgeu	s3,a5,0x27cc
    27c4:	fa950513          	addi	a0,a0,-87
    27c8:	0ff57793          	zext.b	a5,a0
    27cc:	00978533          	add	a0,a5,s1
    27d0:	0542                	slli	a0,a0,0x10
    27d2:	147d                	addi	s0,s0,-1
    27d4:	8141                	srli	a0,a0,0x10
    27d6:	f471                	bnez	s0,0x27a2
    27d8:	40f2                	lw	ra,28(sp)
    27da:	4462                	lw	s0,24(sp)
    27dc:	44d2                	lw	s1,20(sp)
    27de:	4942                	lw	s2,16(sp)
    27e0:	49b2                	lw	s3,12(sp)
    27e2:	6105                	addi	sp,sp,32
    27e4:	8082                	ret

Disassembly of section .text.usb_read_int:

000027e6 <.text.usb_read_int>:
    27e6:	1141                	addi	sp,sp,-16
    27e8:	c606                	sw	ra,12(sp)
    27ea:	c422                	sw	s0,8(sp)
    27ec:	374d                	jal	0x278e
    27ee:	01051413          	slli	s0,a0,0x10
    27f2:	3f71                	jal	0x278e
    27f4:	40b2                	lw	ra,12(sp)
    27f6:	9522                	add	a0,a0,s0
    27f8:	4422                	lw	s0,8(sp)
    27fa:	0141                	addi	sp,sp,16
    27fc:	8082                	ret

Disassembly of section .text.gpio_write:

000027fe <.text.gpio_write>:
    27fe:	67c1                	lui	a5,0x10
    2800:	c3c8                	sw	a0,4(a5)
    2802:	8082                	ret

Disassembly of section .text.gpio_read:

00002804 <.text.gpio_read>:
    2804:	67c1                	lui	a5,0x10
    2806:	4388                	lw	a0,0(a5)
    2808:	0542                	slli	a0,a0,0x10
    280a:	8141                	srli	a0,a0,0x10
    280c:	8082                	ret

Disassembly of section .text.instr_mem_write:

0000280e <.text.instr_mem_write>:
    280e:	050a                	slli	a0,a0,0x2
    2810:	6791                	lui	a5,0x4
    2812:	97aa                	add	a5,a5,a0
    2814:	c38c                	sw	a1,0(a5)
    2816:	8082                	ret

Disassembly of section .text.uart_main:

00002818 <.text.uart_main>:
    2818:	1101                	addi	sp,sp,-32
    281a:	cc22                	sw	s0,24(sp)
    281c:	ca26                	sw	s1,20(sp)
    281e:	c84a                	sw	s2,16(sp)
    2820:	c64e                	sw	s3,12(sp)
    2822:	ce06                	sw	ra,28(sp)
    2824:	6799                	lui	a5,0x6
    2826:	0c700713          	li	a4,199
    282a:	c398                	sw	a4,0(a5)
    282c:	64c1                	lui	s1,0x10
    282e:	0007a223          	sw	zero,4(a5) # 0x6004
    2832:	4401                	li	s0,0
    2834:	4901                	li	s2,0
    2836:	69c1                	lui	s3,0x10
    2838:	0491                	addi	s1,s1,4 # 0x10004
    283a:	0009a503          	lw	a0,0(s3) # 0x10000
    283e:	02090363          	beqz	s2,0x2864
    2842:	0ff57513          	zext.b	a0,a0
    2846:	3cb1                	jal	0x22a2
    2848:	f0047413          	andi	s0,s0,-256
    284c:	3c35                	jal	0x2288
    284e:	9522                	add	a0,a0,s0
    2850:	01051413          	slli	s0,a0,0x10
    2854:	8441                	srai	s0,s0,0x10
    2856:	01041793          	slli	a5,s0,0x10
    285a:	83c1                	srli	a5,a5,0x10
    285c:	00194913          	xori	s2,s2,1
    2860:	c09c                	sw	a5,0(s1)
    2862:	bfe1                	j	0x283a
    2864:	0542                	slli	a0,a0,0x10
    2866:	8141                	srli	a0,a0,0x10
    2868:	8121                	srli	a0,a0,0x8
    286a:	3c25                	jal	0x22a2
    286c:	3c31                	jal	0x2288
    286e:	0ff47413          	zext.b	s0,s0
    2872:	0522                	slli	a0,a0,0x8
    2874:	942a                	add	s0,s0,a0
    2876:	0442                	slli	s0,s0,0x10
    2878:	bff1                	j	0x2854

Disassembly of section .text.uart_interrupt:

0000287a <.text.uart_interrupt>:
    287a:	8082                	ret

Disassembly of section .text.i2c_main:

0000287c <.text.i2c_main>:
    287c:	1101                	addi	sp,sp,-32
    287e:	cc22                	sw	s0,24(sp)
    2880:	ca26                	sw	s1,20(sp)
    2882:	c84a                	sw	s2,16(sp)
    2884:	c64e                	sw	s3,12(sp)
    2886:	c452                	sw	s4,8(sp)
    2888:	ce06                	sw	ra,28(sp)
    288a:	67a1                	lui	a5,0x8
    288c:	07b00713          	li	a4,123
    2890:	69c1                	lui	s3,0x10
    2892:	6941                	lui	s2,0x10
    2894:	0007a4b7          	lui	s1,0x7a
    2898:	c3d8                	sw	a4,4(a5)
    289a:	fff98a13          	addi	s4,s3,-1 # 0xffff
    289e:	0911                	addi	s2,s2,4 # 0x10004
    28a0:	12048493          	addi	s1,s1,288 # 0x7a120
    28a4:	02402783          	lw	a5,36(zero) # 0x24
    28a8:	c385                	beqz	a5,0x28c8
    28aa:	0009a503          	lw	a0,0(s3)
    28ae:	4585                	li	a1,1
    28b0:	01457533          	and	a0,a0,s4
    28b4:	3439                	jal	0x22c2
    28b6:	8526                	mv	a0,s1
    28b8:	3b6d                	jal	0x2672
    28ba:	02402783          	lw	a5,36(zero) # 0x24
    28be:	0017b793          	seqz	a5,a5
    28c2:	02f02223          	sw	a5,36(zero) # 0x24
    28c6:	bff9                	j	0x28a4
    28c8:	4505                	li	a0,1
    28ca:	3c11                	jal	0x22de
    28cc:	01457533          	and	a0,a0,s4
    28d0:	00a92023          	sw	a0,0(s2)
    28d4:	b7cd                	j	0x28b6

Disassembly of section .text.i2c_interrupt:

000028d6 <.text.i2c_interrupt>:
    28d6:	8082                	ret

Disassembly of section .text.qspi_main:

000028d8 <.text.qspi_main>:
    28d8:	7179                	addi	sp,sp,-48
    28da:	4515                	li	a0,5
    28dc:	d606                	sw	ra,44(sp)
    28de:	d422                	sw	s0,40(sp)
    28e0:	d226                	sw	s1,36(sp)
    28e2:	d04a                	sw	s2,32(sp)
    28e4:	ce4e                	sw	s3,28(sp)
    28e6:	cc52                	sw	s4,24(sp)
    28e8:	ca56                	sw	s5,20(sp)
    28ea:	c85a                	sw	s6,16(sp)
    28ec:	3bd1                	jal	0x26c0
    28ee:	6741                	lui	a4,0x10
    28f0:	66c1                	lui	a3,0x10
    28f2:	fff70593          	addi	a1,a4,-1 # 0xffff
    28f6:	0691                	addi	a3,a3,4 # 0x10004
    28f8:	4505                	li	a0,1
    28fa:	4809                	li	a6,2
    28fc:	431c                	lw	a5,0(a4)
    28fe:	00b7f633          	and	a2,a5,a1
    2902:	07c2                	slli	a5,a5,0x10
    2904:	c290                	sw	a2,0(a3)
    2906:	83c1                	srli	a5,a5,0x10
    2908:	dbf5                	beqz	a5,0x28fc
    290a:	431c                	lw	a5,0(a4)
    290c:	07c2                	slli	a5,a5,0x10
    290e:	83c1                	srli	a5,a5,0x10
    2910:	ffed                	bnez	a5,0x290a
    2912:	06a60a63          	beq	a2,a0,0x2986
    2916:	ff0613e3          	bne	a2,a6,0x28fc
    291a:	4a05                	li	s4,1
    291c:	3d8d                	jal	0x278e
    291e:	842a                	mv	s0,a0
    2920:	02000613          	li	a2,32
    2924:	4581                	li	a1,0
    2926:	0f800513          	li	a0,248
    292a:	269d                	jal	0x2c90
    292c:	3cf9                	jal	0x240a
    292e:	02000613          	li	a2,32
    2932:	85a2                	mv	a1,s0
    2934:	0f800513          	li	a0,248
    2938:	3e79                	jal	0x24d6
    293a:	0068                	addi	a0,sp,12
    293c:	c652                	sw	s4,12(sp)
    293e:	3e11                	jal	0x2452
    2940:	00c15503          	lhu	a0,12(sp)
    2944:	02040913          	addi	s2,s0,32
    2948:	0942                	slli	s2,s2,0x10
    294a:	33c5                	jal	0x272a
    294c:	02000613          	li	a2,32
    2950:	85a2                	mv	a1,s0
    2952:	0f800513          	li	a0,248
    2956:	396d                	jal	0x2610
    2958:	0f800993          	li	s3,248
    295c:	01095913          	srli	s2,s2,0x10
    2960:	8522                	mv	a0,s0
    2962:	33e1                	jal	0x272a
    2964:	03a00513          	li	a0,58
    2968:	3359                	jal	0x26ee
    296a:	02000513          	li	a0,32
    296e:	3341                	jal	0x26ee
    2970:	0009a503          	lw	a0,0(s3)
    2974:	0411                	addi	s0,s0,4
    2976:	0442                	slli	s0,s0,0x10
    2978:	8041                	srli	s0,s0,0x10
    297a:	33ed                	jal	0x2764
    297c:	0991                	addi	s3,s3,4
    297e:	3501                	jal	0x277e
    2980:	ff2410e3          	bne	s0,s2,0x2960
    2984:	bf61                	j	0x291c
    2986:	c202                	sw	zero,4(sp)
    2988:	c402                	sw	zero,8(sp)
    298a:	3441                	jal	0x240a
    298c:	0048                	addi	a0,sp,4
    298e:	36f1                	jal	0x255a
    2990:	47a2                	lw	a5,8(sp)
    2992:	0807f793          	andi	a5,a5,128
    2996:	cbb9                	beqz	a5,0x29ec
    2998:	6941                	lui	s2,0x10
    299a:	69c1                	lui	s3,0x10
    299c:	4481                	li	s1,0
    299e:	197d                	addi	s2,s2,-1 # 0xffff
    29a0:	0991                	addi	s3,s3,4 # 0x10004
    29a2:	6b11                	lui	s6,0x4
    29a4:	0f800413          	li	s0,248
    29a8:	02040a93          	addi	s5,s0,32
    29ac:	3d2d                	jal	0x27e6
    29ae:	c008                	sw	a0,0(s0)
    29b0:	0411                	addi	s0,s0,4
    29b2:	ff541de3          	bne	s0,s5,0x29ac
    29b6:	3bb1                	jal	0x2712
    29b8:	3c89                	jal	0x240a
    29ba:	02000613          	li	a2,32
    29be:	85a6                	mv	a1,s1
    29c0:	0f800513          	li	a0,248
    29c4:	3e09                	jal	0x24d6
    29c6:	c402                	sw	zero,8(sp)
    29c8:	47a2                	lw	a5,8(sp)
    29ca:	0807f793          	andi	a5,a5,128
    29ce:	c395                	beqz	a5,0x29f2
    29d0:	4792                	lw	a5,4(sp)
    29d2:	02048493          	addi	s1,s1,32
    29d6:	0785                	addi	a5,a5,1 # 0x8001
    29d8:	c23e                	sw	a5,4(sp)
    29da:	0127f7b3          	and	a5,a5,s2
    29de:	00f9a023          	sw	a5,0(s3)
    29e2:	fd6491e3          	bne	s1,s6,0x29a4
    29e6:	00000067          	jr	zero # 0x0
    29ea:	bf05                	j	0x291a
    29ec:	0028                	addi	a0,sp,8
    29ee:	3e51                	jal	0x2582
    29f0:	b745                	j	0x2990
    29f2:	0028                	addi	a0,sp,8
    29f4:	3679                	jal	0x2582
    29f6:	bfc9                	j	0x29c8

Disassembly of section .text.qspi_interrupt:

000029f8 <.text.qspi_interrupt>:
    29f8:	8082                	ret

Disassembly of section .text.timer_main:

000029fa <.text.timer_main>:
    29fa:	1101                	addi	sp,sp,-32
    29fc:	653d                	lui	a0,0xf
    29fe:	cc22                	sw	s0,24(sp)
    2a00:	c84a                	sw	s2,16(sp)
    2a02:	4605                	li	a2,1
    2a04:	4581                	li	a1,0
    2a06:	a5f50513          	addi	a0,a0,-1441 # 0xea5f
    2a0a:	6441                	lui	s0,0x10
    2a0c:	6931                	lui	s2,0xc
    2a0e:	ca26                	sw	s1,20(sp)
    2a10:	c64e                	sw	s3,12(sp)
    2a12:	ce06                	sw	ra,28(sp)
    2a14:	3135                	jal	0x2640
    2a16:	fff40493          	addi	s1,s0,-1 # 0xffff
    2a1a:	0911                	addi	s2,s2,4 # 0xc004
    2a1c:	02002703          	lw	a4,32(zero) # 0x20
    2a20:	401c                	lw	a5,0(s0)
    2a22:	8fe5                	and	a5,a5,s1
    2a24:	fee78ee3          	beq	a5,a4,0x2a20
    2a28:	401c                	lw	a5,0(s0)
    2a2a:	8fe5                	and	a5,a5,s1
    2a2c:	00f92023          	sw	a5,0(s2)
    2a30:	3efd                	jal	0x262e
    2a32:	401c                	lw	a5,0(s0)
    2a34:	8fe5                	and	a5,a5,s1
    2a36:	02f02023          	sw	a5,32(zero) # 0x20
    2a3a:	b7cd                	j	0x2a1c

Disassembly of section .text.timer_interrupt:

00002a3c <.text.timer_interrupt>:
    2a3c:	12c05683          	lhu	a3,300(zero) # 0x12c
    2a40:	6741                	lui	a4,0x10
    2a42:	c354                	sw	a3,4(a4)
    2a44:	12c02703          	lw	a4,300(zero) # 0x12c
    2a48:	0705                	addi	a4,a4,1 # 0x10001
    2a4a:	12e02623          	sw	a4,300(zero) # 0x12c
    2a4e:	8082                	ret

Disassembly of section .text.gpio_main:

00002a50 <.text.gpio_main>:
    2a50:	66c1                	lui	a3,0x10
    2a52:	67c1                	lui	a5,0x10
    2a54:	fff68613          	addi	a2,a3,-1 # 0xffff
    2a58:	0791                	addi	a5,a5,4 # 0x10004
    2a5a:	4298                	lw	a4,0(a3)
    2a5c:	8f71                	and	a4,a4,a2
    2a5e:	c398                	sw	a4,0(a5)
    2a60:	bfed                	j	0x2a5a

Disassembly of section .text.gpio_interrupt:

00002a62 <.text.gpio_interrupt>:
    2a62:	8082                	ret

Disassembly of section .text.usb_main:

00002a64 <.text.usb_main>:
    2a64:	1101                	addi	sp,sp,-32
    2a66:	cc22                	sw	s0,24(sp)
    2a68:	ca26                	sw	s1,20(sp)
    2a6a:	c84a                	sw	s2,16(sp)
    2a6c:	c64e                	sw	s3,12(sp)
    2a6e:	c452                	sw	s4,8(sp)
    2a70:	ce06                	sw	ra,28(sp)
    2a72:	6a41                	lui	s4,0x10
    2a74:	4991                	li	s3,4
    2a76:	000a2783          	lw	a5,0(s4) # 0x10000
    2a7a:	0ff7f793          	zext.b	a5,a5
    2a7e:	12f02423          	sw	a5,296(zero) # 0x128
    2a82:	12002023          	sw	zero,288(zero) # 0x120
    2a86:	12802783          	lw	a5,296(zero) # 0x128
    2a8a:	e3d1                	bnez	a5,0x2b0e
    2a8c:	12002703          	lw	a4,288(zero) # 0x120
    2a90:	11c02783          	lw	a5,284(zero) # 0x11c
    2a94:	00f70763          	beq	a4,a5,0x2aa2
    2a98:	12002503          	lw	a0,288(zero) # 0x120
    2a9c:	0ff57513          	zext.b	a0,a0
    2aa0:	3105                	jal	0x26c0
    2aa2:	12002783          	lw	a5,288(zero) # 0x120
    2aa6:	10f02e23          	sw	a5,284(zero) # 0x11c
    2aaa:	12002783          	lw	a5,288(zero) # 0x120
    2aae:	05378463          	beq	a5,s3,0x2af6
    2ab2:	06f9e963          	bltu	s3,a5,0x2b24
    2ab6:	4705                	li	a4,1
    2ab8:	06e78c63          	beq	a5,a4,0x2b30
    2abc:	4709                	li	a4,2
    2abe:	fae79ce3          	bne	a5,a4,0x2a76
    2ac2:	4501                	li	a0,0
    2ac4:	312d                	jal	0x26ee
    2ac6:	4481                	li	s1,0
    2ac8:	28000993          	li	s3,640
    2acc:	16800a13          	li	s4,360
    2ad0:	4401                	li	s0,0
    2ad2:	12402503          	lw	a0,292(zero) # 0x124
    2ad6:	9526                	add	a0,a0,s1
    2ad8:	9522                	add	a0,a0,s0
    2ada:	0ff57513          	zext.b	a0,a0
    2ade:	0405                	addi	s0,s0,1
    2ae0:	3139                	jal	0x26ee
    2ae2:	ff3418e3          	bne	s0,s3,0x2ad2
    2ae6:	0485                	addi	s1,s1,1
    2ae8:	ff4494e3          	bne	s1,s4,0x2ad0
    2aec:	12402783          	lw	a5,292(zero) # 0x124
    2af0:	0785                	addi	a5,a5,1
    2af2:	12f02223          	sw	a5,292(zero) # 0x124
    2af6:	000f4437          	lui	s0,0xf4
    2afa:	64c1                	lui	s1,0x10
    2afc:	24040413          	addi	s0,s0,576 # 0xf4240
    2b00:	4088                	lw	a0,0(s1)
    2b02:	0542                	slli	a0,a0,0x10
    2b04:	8141                	srli	a0,a0,0x10
    2b06:	3eed                	jal	0x2700
    2b08:	8522                	mv	a0,s0
    2b0a:	36a5                	jal	0x2672
    2b0c:	bfd5                	j	0x2b00
    2b0e:	12802783          	lw	a5,296(zero) # 0x128
    2b12:	8385                	srli	a5,a5,0x1
    2b14:	12f02423          	sw	a5,296(zero) # 0x128
    2b18:	12002783          	lw	a5,288(zero) # 0x120
    2b1c:	0785                	addi	a5,a5,1
    2b1e:	12f02023          	sw	a5,288(zero) # 0x120
    2b22:	b795                	j	0x2a86
    2b24:	4715                	li	a4,5
    2b26:	f4e798e3          	bne	a5,a4,0x2a76
    2b2a:	36e5                	jal	0x2712
    2b2c:	36c9                	jal	0x26ee
    2b2e:	b7a1                	j	0x2a76
    2b30:	12402503          	lw	a0,292(zero) # 0x124
    2b34:	3655                	jal	0x26d8
    2b36:	12a02223          	sw	a0,292(zero) # 0x124
    2b3a:	b761                	j	0x2ac2

Disassembly of section .text.usb_interrupt:

00002b3c <.text.usb_interrupt>:
    2b3c:	8082                	ret

Disassembly of section .text.debug_main:

00002b3e <.text.debug_main>:
    2b3e:	711d                	addi	sp,sp,-96
    2b40:	caa6                	sw	s1,84(sp)
    2b42:	c4d2                	sw	s4,72(sp)
    2b44:	4515                	li	a0,5
    2b46:	6a41                	lui	s4,0x10
    2b48:	6485                	lui	s1,0x1
    2b4a:	c8ca                	sw	s2,80(sp)
    2b4c:	c2d6                	sw	s5,68(sp)
    2b4e:	c0da                	sw	s6,64(sp)
    2b50:	de5e                	sw	s7,60(sp)
    2b52:	dc62                	sw	s8,56(sp)
    2b54:	ce86                	sw	ra,92(sp)
    2b56:	cca2                	sw	s0,88(sp)
    2b58:	c6ce                	sw	s3,76(sp)
    2b5a:	da66                	sw	s9,52(sp)
    2b5c:	d86a                	sw	s10,48(sp)
    2b5e:	d66e                	sw	s11,44(sp)
    2b60:	6ac1                	lui	s5,0x10
    2b62:	3eb9                	jal	0x26c0
    2b64:	0a11                	addi	s4,s4,4 # 0x10004
    2b66:	4b05                	li	s6,1
    2b68:	38848493          	addi	s1,s1,904 # 0x1388
    2b6c:	4b89                	li	s7,2
    2b6e:	6c05                	lui	s8,0x1
    2b70:	000aa783          	lw	a5,0(s5) # 0x10000
    2b74:	07c2                	slli	a5,a5,0x10
    2b76:	83c1                	srli	a5,a5,0x10
    2b78:	10f01d23          	sh	a5,282(zero) # 0x11a
    2b7c:	11a05783          	lhu	a5,282(zero) # 0x11a
    2b80:	07c2                	slli	a5,a5,0x10
    2b82:	83c1                	srli	a5,a5,0x10
    2b84:	00fa2023          	sw	a5,0(s4)
    2b88:	11a05783          	lhu	a5,282(zero) # 0x11a
    2b8c:	d3f5                	beqz	a5,0x2b70
    2b8e:	000aa783          	lw	a5,0(s5)
    2b92:	07c2                	slli	a5,a5,0x10
    2b94:	83c1                	srli	a5,a5,0x10
    2b96:	ffe5                	bnez	a5,0x2b8e
    2b98:	11a05783          	lhu	a5,282(zero) # 0x11a
    2b9c:	01079713          	slli	a4,a5,0x10
    2ba0:	8341                	srli	a4,a4,0x10
    2ba2:	05678e63          	beq	a5,s6,0x2bfe
    2ba6:	fd7715e3          	bne	a4,s7,0x2b70
    2baa:	4981                	li	s3,0
    2bac:	4c81                	li	s9,0
    2bae:	01099413          	slli	s0,s3,0x10
    2bb2:	8041                	srli	s0,s0,0x10
    2bb4:	02040d13          	addi	s10,s0,32
    2bb8:	02000613          	li	a2,32
    2bbc:	85ce                	mv	a1,s3
    2bbe:	850a                	mv	a0,sp
    2bc0:	0d42                	slli	s10,s10,0x10
    2bc2:	34b9                	jal	0x2610
    2bc4:	8d8a                	mv	s11,sp
    2bc6:	010d5d13          	srli	s10,s10,0x10
    2bca:	8522                	mv	a0,s0
    2bcc:	3eb9                	jal	0x272a
    2bce:	03a00513          	li	a0,58
    2bd2:	3e31                	jal	0x26ee
    2bd4:	02000513          	li	a0,32
    2bd8:	3e19                	jal	0x26ee
    2bda:	000da503          	lw	a0,0(s11)
    2bde:	0411                	addi	s0,s0,4
    2be0:	0442                	slli	s0,s0,0x10
    2be2:	3649                	jal	0x2764
    2be4:	3e69                	jal	0x277e
    2be6:	8526                	mv	a0,s1
    2be8:	8041                	srli	s0,s0,0x10
    2bea:	3461                	jal	0x2672
    2bec:	0d91                	addi	s11,s11,4
    2bee:	fda41ee3          	bne	s0,s10,0x2bca
    2bf2:	0ca1                	addi	s9,s9,8
    2bf4:	02098993          	addi	s3,s3,32
    2bf8:	fb8c9be3          	bne	s9,s8,0x2bae
    2bfc:	bf95                	j	0x2b70
    2bfe:	4401                	li	s0,0
    2c00:	00241513          	slli	a0,s0,0x2
    2c04:	0542                	slli	a0,a0,0x10
    2c06:	8141                	srli	a0,a0,0x10
    2c08:	360d                	jal	0x272a
    2c0a:	03a00513          	li	a0,58
    2c0e:	34c5                	jal	0x26ee
    2c10:	8526                	mv	a0,s1
    2c12:	3485                	jal	0x2672
    2c14:	00340993          	addi	s3,s0,3
    2c18:	fff40c93          	addi	s9,s0,-1
    2c1c:	02000513          	li	a0,32
    2c20:	34f9                	jal	0x26ee
    2c22:	00299793          	slli	a5,s3,0x2
    2c26:	4388                	lw	a0,0(a5)
    2c28:	19fd                	addi	s3,s3,-1
    2c2a:	3e2d                	jal	0x2764
    2c2c:	8526                	mv	a0,s1
    2c2e:	3491                	jal	0x2672
    2c30:	ff9996e3          	bne	s3,s9,0x2c1c
    2c34:	36a9                	jal	0x277e
    2c36:	0411                	addi	s0,s0,4
    2c38:	80040793          	addi	a5,s0,-2048
    2c3c:	f3f1                	bnez	a5,0x2c00
    2c3e:	bf0d                	j	0x2b70

Disassembly of section .text.debug_interrupt:

00002c40 <.text.debug_interrupt>:
    2c40:	8082                	ret

Disassembly of section .text.main_interrupt:

00002c42 <.text.main_interrupt>:
    2c42:	01c05683          	lhu	a3,28(zero) # 0x1c
    2c46:	01c05783          	lhu	a5,28(zero) # 0x1c
    2c4a:	0686                	slli	a3,a3,0x1
    2c4c:	83bd                	srli	a5,a5,0xf
    2c4e:	8fd5                	or	a5,a5,a3
    2c50:	07c2                	slli	a5,a5,0x10
    2c52:	83c1                	srli	a5,a5,0x10
    2c54:	00f01e23          	sh	a5,28(zero) # 0x1c
    2c58:	01c05703          	lhu	a4,28(zero) # 0x1c
    2c5c:	67c1                	lui	a5,0x10
    2c5e:	0742                	slli	a4,a4,0x10
    2c60:	8341                	srli	a4,a4,0x10
    2c62:	c3d8                	sw	a4,4(a5)
    2c64:	8082                	ret

Disassembly of section .plt:

00002c70 <.plt>:
    2c70:	ffffd397          	auipc	t2,0xffffd
    2c74:	41c30333          	sub	t1,t1,t3
    2c78:	47c3ae03          	lw	t3,1148(t2) # 0xec
    2c7c:	fd430313          	addi	t1,t1,-44
    2c80:	47c38293          	addi	t0,t2,1148
    2c84:	00235313          	srli	t1,t1,0x2
    2c88:	0042a283          	lw	t0,4(t0)
    2c8c:	000e0067          	jr	t3
    2c90:	ffffde17          	auipc	t3,0xffffd
    2c94:	464e2e03          	lw	t3,1124(t3) # 0xf4
    2c98:	000e0367          	jalr	t1,t3
    2c9c:	00000013          	nop
