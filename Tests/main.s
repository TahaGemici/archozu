
a.out:     file format elf32-littleriscv


Disassembly of section .text:

00002000 <.text>:
    2000:	04802703          	lw	a4,72(zero) # 0x48
    2004:	67c1                	lui	a5,0x10
    2006:	4581                	li	a1,0
    2008:	0742                	slli	a4,a4,0x10
    200a:	8341                	srli	a4,a4,0x10
    200c:	c3d8                	sw	a4,4(a5)
    200e:	4605                	li	a2,1
    2010:	557d                	li	a0,-1
    2012:	7dc000ef          	jal	0x27ee
    2016:	65c1                	lui	a1,0x10
    2018:	46a1                	li	a3,8
    201a:	419c                	lw	a5,0(a1)
    201c:	07c2                	slli	a5,a5,0x10
    201e:	83c1                	srli	a5,a5,0x10
    2020:	0ef01023          	sh	a5,224(zero) # 0xe0
    2024:	0e005783          	lhu	a5,224(zero) # 0xe0
    2028:	c799                	beqz	a5,0x2036
    202a:	67c1                	lui	a5,0x10
    202c:	0007a223          	sw	zero,4(a5) # 0x10004
    2030:	67b1                	lui	a5,0xc
    2032:	0007a623          	sw	zero,12(a5) # 0xc00c
    2036:	0e005603          	lhu	a2,224(zero) # 0xe0
    203a:	01061793          	slli	a5,a2,0x10
    203e:	83c1                	srli	a5,a5,0x10
    2040:	04d60063          	beq	a2,a3,0x2080
    2044:	00f6ed63          	bltu	a3,a5,0x205e
    2048:	4609                	li	a2,2
    204a:	02c78763          	beq	a5,a2,0x2078
    204e:	4611                	li	a2,4
    2050:	02c78663          	beq	a5,a2,0x207c
    2054:	4605                	li	a2,1
    2056:	fcc792e3          	bne	a5,a2,0x201a
    205a:	019000ef          	jal	0x2872
    205e:	04000613          	li	a2,64
    2062:	02c78163          	beq	a5,a2,0x2084
    2066:	08000613          	li	a2,128
    206a:	00c78f63          	beq	a5,a2,0x2088
    206e:	4641                	li	a2,16
    2070:	fac795e3          	bne	a5,a2,0x201a
    2074:	0e7000ef          	jal	0x295a
    2078:	029000ef          	jal	0x28a0
    207c:	063000ef          	jal	0x28de
    2080:	085000ef          	jal	0x2904
    2084:	1e7000ef          	jal	0x2a6a
    2088:	0e7000ef          	jal	0x296e
	...
    2200:	7139                	addi	sp,sp,-64
    2202:	cc3e                	sw	a5,24(sp)
    2204:	d036                	sw	a3,32(sp)
    2206:	0e005683          	lhu	a3,224(zero) # 0xe0
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
    2228:	06e68663          	beq	a3,a4,0x2294
    222c:	01069793          	slli	a5,a3,0x10
    2230:	83c1                	srli	a5,a5,0x10
    2232:	02f76963          	bltu	a4,a5,0x2264
    2236:	cf95                	beqz	a5,0x2272
    2238:	4709                	li	a4,2
    223a:	04e78963          	beq	a5,a4,0x228c
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
    2268:	fce79be3          	bne	a5,a4,0x223e
    226c:	7ec000ef          	jal	0x2a58
    2270:	b7f9                	j	0x223e
    2272:	04802703          	lw	a4,72(zero) # 0x48
    2276:	fff74713          	not	a4,a4
    227a:	04e02423          	sw	a4,72(zero) # 0x48
    227e:	04802703          	lw	a4,72(zero) # 0x48
    2282:	67c1                	lui	a5,0x10
    2284:	0742                	slli	a4,a4,0x10
    2286:	8341                	srli	a4,a4,0x10
    2288:	c3d8                	sw	a4,4(a5)
    228a:	bf55                	j	0x223e
    228c:	4705                	li	a4,1
    228e:	04e02823          	sw	a4,80(zero) # 0x50
    2292:	b775                	j	0x223e
    2294:	6b2000ef          	jal	0x2946
    2298:	b75d                	j	0x223e

Disassembly of section .text.uart_conf:

0000229a <.text.uart_conf>:
    229a:	039387b7          	lui	a5,0x3938
    229e:	70078793          	addi	a5,a5,1792 # 0x3938700
    22a2:	02a7d7b3          	divu	a5,a5,a0
    22a6:	6719                	lui	a4,0x6
    22a8:	17fd                	addi	a5,a5,-1
    22aa:	c31c                	sw	a5,0(a4)
    22ac:	6799                	lui	a5,0x6
    22ae:	c3cc                	sw	a1,4(a5)
    22b0:	8082                	ret

Disassembly of section .text.uart_read:

000022b2 <.text.uart_read>:
    22b2:	6799                	lui	a5,0x6
    22b4:	07c1                	addi	a5,a5,16 # 0x6010
    22b6:	4709                	li	a4,2
    22b8:	4394                	lw	a3,0(a5)
    22ba:	fee69fe3          	bne	a3,a4,0x22b8
    22be:	6719                	lui	a4,0x6
    22c0:	4708                	lw	a0,8(a4)
    22c2:	0007a023          	sw	zero,0(a5)
    22c6:	0ff57513          	zext.b	a0,a0
    22ca:	8082                	ret

Disassembly of section .text.uart_write:

000022cc <.text.uart_write>:
    22cc:	6799                	lui	a5,0x6
    22ce:	c7c8                	sw	a0,12(a5)
    22d0:	6799                	lui	a5,0x6
    22d2:	07c1                	addi	a5,a5,16 # 0x6010
    22d4:	4705                	li	a4,1
    22d6:	c398                	sw	a4,0(a5)
    22d8:	4398                	lw	a4,0(a5)
    22da:	8b11                	andi	a4,a4,4
    22dc:	df75                	beqz	a4,0x22d8
    22de:	4398                	lw	a4,0(a5)
    22e0:	8b09                	andi	a4,a4,2
    22e2:	c398                	sw	a4,0(a5)
    22e4:	8082                	ret

Disassembly of section .text.i2c_conf:

000022e6 <.text.i2c_conf>:
    22e6:	67a1                	lui	a5,0x8
    22e8:	c3c8                	sw	a0,4(a5)
    22ea:	8082                	ret

Disassembly of section .text.i2c_write:

000022ec <.text.i2c_write>:
    22ec:	67a1                	lui	a5,0x8
    22ee:	c38c                	sw	a1,0(a5)
    22f0:	c7c8                	sw	a0,12(a5)
    22f2:	67a1                	lui	a5,0x8
    22f4:	07c1                	addi	a5,a5,16 # 0x8010
    22f6:	4705                	li	a4,1
    22f8:	c398                	sw	a4,0(a5)
    22fa:	4398                	lw	a4,0(a5)
    22fc:	8b09                	andi	a4,a4,2
    22fe:	df75                	beqz	a4,0x22fa
    2300:	4398                	lw	a4,0(a5)
    2302:	8b31                	andi	a4,a4,12
    2304:	c398                	sw	a4,0(a5)
    2306:	8082                	ret

Disassembly of section .text.i2c_read:

00002308 <.text.i2c_read>:
    2308:	67a1                	lui	a5,0x8
    230a:	c388                	sw	a0,0(a5)
    230c:	4711                	li	a4,4
    230e:	07c1                	addi	a5,a5,16 # 0x8010
    2310:	c398                	sw	a4,0(a5)
    2312:	4398                	lw	a4,0(a5)
    2314:	8b21                	andi	a4,a4,8
    2316:	df75                	beqz	a4,0x2312
    2318:	4398                	lw	a4,0(a5)
    231a:	8b0d                	andi	a4,a4,3
    231c:	c398                	sw	a4,0(a5)
    231e:	67a1                	lui	a5,0x8
    2320:	4788                	lw	a0,8(a5)
    2322:	8082                	ret

Disassembly of section .text.qspi_wait:

00002324 <.text.qspi_wait>:
    2324:	67a9                	lui	a5,0xa
    2326:	02878793          	addi	a5,a5,40 # 0xa028
    232a:	4705                	li	a4,1
    232c:	4394                	lw	a3,0(a5)
    232e:	fee69fe3          	bne	a3,a4,0x232c
    2332:	67a9                	lui	a5,0xa
    2334:	02878793          	addi	a5,a5,40 # 0xa028
    2338:	4705                	li	a4,1
    233a:	4394                	lw	a3,0(a5)
    233c:	fee69fe3          	bne	a3,a4,0x233a
    2340:	8082                	ret

Disassembly of section .text.qspi_read_array:

00002342 <.text.qspi_read_array>:
    2342:	058d                	addi	a1,a1,3 # 0x10003
    2344:	6729                	lui	a4,0xa
    2346:	99f1                	andi	a1,a1,-4
    2348:	4781                	li	a5,0
    234a:	0721                	addi	a4,a4,8 # 0xa008
    234c:	00b79363          	bne	a5,a1,0x2352
    2350:	8082                	ret
    2352:	00e786b3          	add	a3,a5,a4
    2356:	4290                	lw	a2,0(a3)
    2358:	00f506b3          	add	a3,a0,a5
    235c:	0791                	addi	a5,a5,4
    235e:	c290                	sw	a2,0(a3)
    2360:	b7f5                	j	0x234c

Disassembly of section .text.qspi_write_array:

00002362 <.text.qspi_write_array>:
    2362:	058d                	addi	a1,a1,3
    2364:	6729                	lui	a4,0xa
    2366:	99f1                	andi	a1,a1,-4
    2368:	4781                	li	a5,0
    236a:	0721                	addi	a4,a4,8 # 0xa008
    236c:	00b79363          	bne	a5,a1,0x2372
    2370:	8082                	ret
    2372:	00f50633          	add	a2,a0,a5
    2376:	4210                	lw	a2,0(a2)
    2378:	00e786b3          	add	a3,a5,a4
    237c:	0791                	addi	a5,a5,4
    237e:	c290                	sw	a2,0(a3)
    2380:	b7f5                	j	0x236c

Disassembly of section .text.s25fl128s_wren:

00002382 <.text.s25fl128s_wren>:
    2382:	800007b7          	lui	a5,0x80000
    2386:	0799                	addi	a5,a5,6 # 0x80000006
    2388:	6729                	lui	a4,0xa
    238a:	c31c                	sw	a5,0(a4)
    238c:	bf61                	j	0x2324

Disassembly of section .text.s25fl128s_wrdi:

0000238e <.text.s25fl128s_wrdi>:
    238e:	800007b7          	lui	a5,0x80000
    2392:	0791                	addi	a5,a5,4 # 0x80000004
    2394:	6729                	lui	a4,0xa
    2396:	c31c                	sw	a5,0(a4)
    2398:	b771                	j	0x2324

Disassembly of section .text.s25fl128s_clsr:

0000239a <.text.s25fl128s_clsr>:
    239a:	800007b7          	lui	a5,0x80000
    239e:	03078793          	addi	a5,a5,48 # 0x80000030
    23a2:	6729                	lui	a4,0xa
    23a4:	c31c                	sw	a5,0(a4)
    23a6:	bfbd                	j	0x2324

Disassembly of section .text.s25fl128s_reset:

000023a8 <.text.s25fl128s_reset>:
    23a8:	800007b7          	lui	a5,0x80000
    23ac:	0f078793          	addi	a5,a5,240 # 0x800000f0
    23b0:	6729                	lui	a4,0xa
    23b2:	c31c                	sw	a5,0(a4)
    23b4:	bf85                	j	0x2324

Disassembly of section .text.s25fl128s_rdid:

000023b6 <.text.s25fl128s_rdid>:
    23b6:	fff58793          	addi	a5,a1,-1
    23ba:	80000737          	lui	a4,0x80000
    23be:	1101                	addi	sp,sp,-32
    23c0:	19f70713          	addi	a4,a4,415 # 0x8000019f
    23c4:	07c2                	slli	a5,a5,0x10
    23c6:	ce06                	sw	ra,28(sp)
    23c8:	c62a                	sw	a0,12(sp)
    23ca:	c42e                	sw	a1,8(sp)
    23cc:	97ba                	add	a5,a5,a4
    23ce:	6729                	lui	a4,0xa
    23d0:	c31c                	sw	a5,0(a4)
    23d2:	3f89                	jal	0x2324
    23d4:	45a2                	lw	a1,8(sp)
    23d6:	4532                	lw	a0,12(sp)
    23d8:	40f2                	lw	ra,28(sp)
    23da:	6105                	addi	sp,sp,32
    23dc:	b79d                	j	0x2342

Disassembly of section .text.s25fl128s_rdsr1:

000023de <.text.s25fl128s_rdsr1>:
    23de:	1141                	addi	sp,sp,-16
    23e0:	800007b7          	lui	a5,0x80000
    23e4:	c606                	sw	ra,12(sp)
    23e6:	10578793          	addi	a5,a5,261 # 0x80000105
    23ea:	6729                	lui	a4,0xa
    23ec:	c31c                	sw	a5,0(a4)
    23ee:	3f1d                	jal	0x2324
    23f0:	67a9                	lui	a5,0xa
    23f2:	4788                	lw	a0,8(a5)
    23f4:	40b2                	lw	ra,12(sp)
    23f6:	0ff57513          	zext.b	a0,a0
    23fa:	0141                	addi	sp,sp,16
    23fc:	8082                	ret

Disassembly of section .text.s25fl128s_rdsr2:

000023fe <.text.s25fl128s_rdsr2>:
    23fe:	1141                	addi	sp,sp,-16
    2400:	800007b7          	lui	a5,0x80000
    2404:	c606                	sw	ra,12(sp)
    2406:	10778793          	addi	a5,a5,263 # 0x80000107
    240a:	6729                	lui	a4,0xa
    240c:	c31c                	sw	a5,0(a4)
    240e:	3f19                	jal	0x2324
    2410:	67a9                	lui	a5,0xa
    2412:	4788                	lw	a0,8(a5)
    2414:	40b2                	lw	ra,12(sp)
    2416:	0ff57513          	zext.b	a0,a0
    241a:	0141                	addi	sp,sp,16
    241c:	8082                	ret

Disassembly of section .text.s25fl128s_rdcr:

0000241e <.text.s25fl128s_rdcr>:
    241e:	1141                	addi	sp,sp,-16
    2420:	800007b7          	lui	a5,0x80000
    2424:	c606                	sw	ra,12(sp)
    2426:	13578793          	addi	a5,a5,309 # 0x80000135
    242a:	6729                	lui	a4,0xa
    242c:	c31c                	sw	a5,0(a4)
    242e:	3ddd                	jal	0x2324
    2430:	67a9                	lui	a5,0xa
    2432:	4788                	lw	a0,8(a5)
    2434:	40b2                	lw	ra,12(sp)
    2436:	0ff57513          	zext.b	a0,a0
    243a:	0141                	addi	sp,sp,16
    243c:	8082                	ret

Disassembly of section .text.s25fl128s_read_id:

0000243e <.text.s25fl128s_read_id>:
    243e:	1141                	addi	sp,sp,-16
    2440:	c606                	sw	ra,12(sp)
    2442:	67a9                	lui	a5,0xa
    2444:	c3c8                	sw	a0,4(a5)
    2446:	800127b7          	lui	a5,0x80012
    244a:	99078793          	addi	a5,a5,-1648 # 0x80011990
    244e:	6729                	lui	a4,0xa
    2450:	c31c                	sw	a5,0(a4)
    2452:	3dc9                	jal	0x2324
    2454:	67a9                	lui	a5,0xa
    2456:	4788                	lw	a0,8(a5)
    2458:	40b2                	lw	ra,12(sp)
    245a:	0542                	slli	a0,a0,0x10
    245c:	8141                	srli	a0,a0,0x10
    245e:	0141                	addi	sp,sp,16
    2460:	8082                	ret

Disassembly of section .text.s25fl128s_res:

00002462 <.text.s25fl128s_res>:
    2462:	1141                	addi	sp,sp,-16
    2464:	800027b7          	lui	a5,0x80002
    2468:	c606                	sw	ra,12(sp)
    246a:	9ab78793          	addi	a5,a5,-1621 # 0x800019ab
    246e:	6729                	lui	a4,0xa
    2470:	c31c                	sw	a5,0(a4)
    2472:	3d4d                	jal	0x2324
    2474:	67a9                	lui	a5,0xa
    2476:	4788                	lw	a0,8(a5)
    2478:	40b2                	lw	ra,12(sp)
    247a:	0ff57513          	zext.b	a0,a0
    247e:	0141                	addi	sp,sp,16
    2480:	8082                	ret

Disassembly of section .text.s25fl128s_wrr:

00002482 <.text.s25fl128s_wrr>:
    2482:	67a9                	lui	a5,0xa
    2484:	c788                	sw	a0,8(a5)
    2486:	800107b7          	lui	a5,0x80010
    248a:	50178793          	addi	a5,a5,1281 # 0x80010501
    248e:	6729                	lui	a4,0xa
    2490:	c31c                	sw	a5,0(a4)
    2492:	bd49                	j	0x2324

Disassembly of section .text.s25fl128s_read:

00002494 <.text.s25fl128s_read>:
    2494:	fff60793          	addi	a5,a2,-1
    2498:	80002737          	lui	a4,0x80002
    249c:	1141                	addi	sp,sp,-16
    249e:	90370713          	addi	a4,a4,-1789 # 0x80001903
    24a2:	07c2                	slli	a5,a5,0x10
    24a4:	c422                	sw	s0,8(sp)
    24a6:	c226                	sw	s1,4(sp)
    24a8:	c606                	sw	ra,12(sp)
    24aa:	97ba                	add	a5,a5,a4
    24ac:	6729                	lui	a4,0xa
    24ae:	c348                	sw	a0,4(a4)
    24b0:	6729                	lui	a4,0xa
    24b2:	c31c                	sw	a5,0(a4)
    24b4:	84ae                	mv	s1,a1
    24b6:	8432                	mv	s0,a2
    24b8:	35b5                	jal	0x2324
    24ba:	85a2                	mv	a1,s0
    24bc:	4422                	lw	s0,8(sp)
    24be:	40b2                	lw	ra,12(sp)
    24c0:	8526                	mv	a0,s1
    24c2:	4492                	lw	s1,4(sp)
    24c4:	0141                	addi	sp,sp,16
    24c6:	bdb5                	j	0x2342

Disassembly of section .text.s25fl128s_pp:

000024c8 <.text.s25fl128s_pp>:
    24c8:	1141                	addi	sp,sp,-16
    24ca:	c422                	sw	s0,8(sp)
    24cc:	800027b7          	lui	a5,0x80002
    24d0:	fff60413          	addi	s0,a2,-1
    24d4:	d0278793          	addi	a5,a5,-766 # 0x80001d02
    24d8:	0442                	slli	s0,s0,0x10
    24da:	c606                	sw	ra,12(sp)
    24dc:	872a                	mv	a4,a0
    24de:	943e                	add	s0,s0,a5
    24e0:	67a9                	lui	a5,0xa
    24e2:	852e                	mv	a0,a1
    24e4:	c3d8                	sw	a4,4(a5)
    24e6:	85b2                	mv	a1,a2
    24e8:	3dad                	jal	0x2362
    24ea:	67a9                	lui	a5,0xa
    24ec:	c380                	sw	s0,0(a5)
    24ee:	4422                	lw	s0,8(sp)
    24f0:	40b2                	lw	ra,12(sp)
    24f2:	0141                	addi	sp,sp,16
    24f4:	bd05                	j	0x2324

Disassembly of section .text.s25fl128s_se:

000024f6 <.text.s25fl128s_se>:
    24f6:	67a9                	lui	a5,0xa
    24f8:	c788                	sw	a0,8(a5)
    24fa:	800207b7          	lui	a5,0x80020
    24fe:	5d878793          	addi	a5,a5,1496 # 0x800205d8
    2502:	6729                	lui	a4,0xa
    2504:	c31c                	sw	a5,0(a4)
    2506:	bd39                	j	0x2324

Disassembly of section .text.s25fl128s_dor:

00002508 <.text.s25fl128s_dor>:
    2508:	fff60793          	addi	a5,a2,-1
    250c:	80002737          	lui	a4,0x80002
    2510:	1141                	addi	sp,sp,-16
    2512:	23b70713          	addi	a4,a4,571 # 0x8000223b
    2516:	07c2                	slli	a5,a5,0x10
    2518:	c422                	sw	s0,8(sp)
    251a:	c226                	sw	s1,4(sp)
    251c:	c606                	sw	ra,12(sp)
    251e:	97ba                	add	a5,a5,a4
    2520:	6729                	lui	a4,0xa
    2522:	c348                	sw	a0,4(a4)
    2524:	6729                	lui	a4,0xa
    2526:	c31c                	sw	a5,0(a4)
    2528:	84ae                	mv	s1,a1
    252a:	8432                	mv	s0,a2
    252c:	3be5                	jal	0x2324
    252e:	85a2                	mv	a1,s0
    2530:	4422                	lw	s0,8(sp)
    2532:	40b2                	lw	ra,12(sp)
    2534:	8526                	mv	a0,s1
    2536:	4492                	lw	s1,4(sp)
    2538:	0141                	addi	sp,sp,16
    253a:	b521                	j	0x2342

Disassembly of section .text.s25fl128s_qor:

0000253c <.text.s25fl128s_qor>:
    253c:	fff60793          	addi	a5,a2,-1
    2540:	80002737          	lui	a4,0x80002
    2544:	1141                	addi	sp,sp,-16
    2546:	36b70713          	addi	a4,a4,875 # 0x8000236b
    254a:	07c2                	slli	a5,a5,0x10
    254c:	c422                	sw	s0,8(sp)
    254e:	c226                	sw	s1,4(sp)
    2550:	c606                	sw	ra,12(sp)
    2552:	97ba                	add	a5,a5,a4
    2554:	6729                	lui	a4,0xa
    2556:	c348                	sw	a0,4(a4)
    2558:	6729                	lui	a4,0xa
    255a:	c31c                	sw	a5,0(a4)
    255c:	84ae                	mv	s1,a1
    255e:	8432                	mv	s0,a2
    2560:	33d1                	jal	0x2324
    2562:	85a2                	mv	a1,s0
    2564:	4422                	lw	s0,8(sp)
    2566:	40b2                	lw	ra,12(sp)
    2568:	8526                	mv	a0,s1
    256a:	4492                	lw	s1,4(sp)
    256c:	0141                	addi	sp,sp,16
    256e:	bbd1                	j	0x2342

Disassembly of section .text.s25fl128s_qpp:

00002570 <.text.s25fl128s_qpp>:
    2570:	fff60793          	addi	a5,a2,-1
    2574:	80002737          	lui	a4,0x80002
    2578:	1141                	addi	sp,sp,-16
    257a:	f3270713          	addi	a4,a4,-206 # 0x80001f32
    257e:	07c2                	slli	a5,a5,0x10
    2580:	c606                	sw	ra,12(sp)
    2582:	86aa                	mv	a3,a0
    2584:	97ba                	add	a5,a5,a4
    2586:	6729                	lui	a4,0xa
    2588:	c354                	sw	a3,4(a4)
    258a:	6729                	lui	a4,0xa
    258c:	852e                	mv	a0,a1
    258e:	c31c                	sw	a5,0(a4)
    2590:	85b2                	mv	a1,a2
    2592:	3bc1                	jal	0x2362
    2594:	40b2                	lw	ra,12(sp)
    2596:	0141                	addi	sp,sp,16
    2598:	b371                	j	0x2324

Disassembly of section .text.qspi_custom_write:

0000259a <.text.qspi_custom_write>:
    259a:	88aa                	mv	a7,a0
    259c:	852e                	mv	a0,a1
    259e:	85be                	mv	a1,a5
    25a0:	800007b7          	lui	a5,0x80000
    25a4:	40078793          	addi	a5,a5,1024 # 0x80000400
    25a8:	0866                	slli	a6,a6,0x19
    25aa:	983e                	add	a6,a6,a5
    25ac:	072e                	slli	a4,a4,0xb
    25ae:	fff58793          	addi	a5,a1,-1
    25b2:	1141                	addi	sp,sp,-16
    25b4:	983a                	add	a6,a6,a4
    25b6:	07c2                	slli	a5,a5,0x10
    25b8:	c422                	sw	s0,8(sp)
    25ba:	c606                	sw	ra,12(sp)
    25bc:	983e                	add	a6,a6,a5
    25be:	06a2                	slli	a3,a3,0x8
    25c0:	67a9                	lui	a5,0xa
    25c2:	0ff67613          	zext.b	a2,a2
    25c6:	9836                	add	a6,a6,a3
    25c8:	0117a223          	sw	a7,4(a5) # 0xa004
    25cc:	00c80433          	add	s0,a6,a2
    25d0:	3b49                	jal	0x2362
    25d2:	67a9                	lui	a5,0xa
    25d4:	c380                	sw	s0,0(a5)
    25d6:	4422                	lw	s0,8(sp)
    25d8:	40b2                	lw	ra,12(sp)
    25da:	0141                	addi	sp,sp,16
    25dc:	b3a1                	j	0x2324

Disassembly of section .text.qspi_custom_read:

000025de <.text.qspi_custom_read>:
    25de:	1141                	addi	sp,sp,-16
    25e0:	c422                	sw	s0,8(sp)
    25e2:	0866                	slli	a6,a6,0x19
    25e4:	843e                	mv	s0,a5
    25e6:	800007b7          	lui	a5,0x80000
    25ea:	983e                	add	a6,a6,a5
    25ec:	072e                	slli	a4,a4,0xb
    25ee:	fff40793          	addi	a5,s0,-1
    25f2:	983a                	add	a6,a6,a4
    25f4:	07c2                	slli	a5,a5,0x10
    25f6:	983e                	add	a6,a6,a5
    25f8:	06a2                	slli	a3,a3,0x8
    25fa:	c226                	sw	s1,4(sp)
    25fc:	c606                	sw	ra,12(sp)
    25fe:	0ff67613          	zext.b	a2,a2
    2602:	9836                	add	a6,a6,a3
    2604:	67a9                	lui	a5,0xa
    2606:	c3c8                	sw	a0,4(a5)
    2608:	9832                	add	a6,a6,a2
    260a:	67a9                	lui	a5,0xa
    260c:	0107a023          	sw	a6,0(a5) # 0xa000
    2610:	84ae                	mv	s1,a1
    2612:	3b09                	jal	0x2324
    2614:	85a2                	mv	a1,s0
    2616:	4422                	lw	s0,8(sp)
    2618:	40b2                	lw	ra,12(sp)
    261a:	8526                	mv	a0,s1
    261c:	4492                	lw	s1,4(sp)
    261e:	0141                	addi	sp,sp,16
    2620:	b30d                	j	0x2342

Disassembly of section .text.mt25ql256aba_read:

00002622 <.text.mt25ql256aba_read>:
    2622:	fff60793          	addi	a5,a2,-1
    2626:	80000737          	lui	a4,0x80000
    262a:	1141                	addi	sp,sp,-16
    262c:	10370713          	addi	a4,a4,259 # 0x80000103
    2630:	07c2                	slli	a5,a5,0x10
    2632:	c422                	sw	s0,8(sp)
    2634:	c226                	sw	s1,4(sp)
    2636:	c606                	sw	ra,12(sp)
    2638:	97ba                	add	a5,a5,a4
    263a:	6729                	lui	a4,0xa
    263c:	c348                	sw	a0,4(a4)
    263e:	6729                	lui	a4,0xa
    2640:	c31c                	sw	a5,0(a4)
    2642:	84ae                	mv	s1,a1
    2644:	8432                	mv	s0,a2
    2646:	39f9                	jal	0x2324
    2648:	85a2                	mv	a1,s0
    264a:	4422                	lw	s0,8(sp)
    264c:	40b2                	lw	ra,12(sp)
    264e:	8526                	mv	a0,s1
    2650:	4492                	lw	s1,4(sp)
    2652:	0141                	addi	sp,sp,16
    2654:	b1fd                	j	0x2342

Disassembly of section .text.mt25ql256aba_dual_output_fast_read:

00002656 <.text.mt25ql256aba_dual_output_fast_read>:
    2656:	fff60793          	addi	a5,a2,-1
    265a:	80001737          	lui	a4,0x80001
    265e:	1141                	addi	sp,sp,-16
    2660:	a3b70713          	addi	a4,a4,-1477 # 0x80000a3b
    2664:	07c2                	slli	a5,a5,0x10
    2666:	c422                	sw	s0,8(sp)
    2668:	c226                	sw	s1,4(sp)
    266a:	c606                	sw	ra,12(sp)
    266c:	97ba                	add	a5,a5,a4
    266e:	6729                	lui	a4,0xa
    2670:	c348                	sw	a0,4(a4)
    2672:	6729                	lui	a4,0xa
    2674:	c31c                	sw	a5,0(a4)
    2676:	84ae                	mv	s1,a1
    2678:	8432                	mv	s0,a2
    267a:	316d                	jal	0x2324
    267c:	85a2                	mv	a1,s0
    267e:	4422                	lw	s0,8(sp)
    2680:	40b2                	lw	ra,12(sp)
    2682:	8526                	mv	a0,s1
    2684:	4492                	lw	s1,4(sp)
    2686:	0141                	addi	sp,sp,16
    2688:	b96d                	j	0x2342

Disassembly of section .text.mt25ql256aba_quad_output_fast_read:

0000268a <.text.mt25ql256aba_quad_output_fast_read>:
    268a:	fff60793          	addi	a5,a2,-1
    268e:	80001737          	lui	a4,0x80001
    2692:	1141                	addi	sp,sp,-16
    2694:	b6b70713          	addi	a4,a4,-1173 # 0x80000b6b
    2698:	07c2                	slli	a5,a5,0x10
    269a:	c422                	sw	s0,8(sp)
    269c:	c226                	sw	s1,4(sp)
    269e:	c606                	sw	ra,12(sp)
    26a0:	97ba                	add	a5,a5,a4
    26a2:	6729                	lui	a4,0xa
    26a4:	c348                	sw	a0,4(a4)
    26a6:	6729                	lui	a4,0xa
    26a8:	c31c                	sw	a5,0(a4)
    26aa:	84ae                	mv	s1,a1
    26ac:	8432                	mv	s0,a2
    26ae:	399d                	jal	0x2324
    26b0:	85a2                	mv	a1,s0
    26b2:	4422                	lw	s0,8(sp)
    26b4:	40b2                	lw	ra,12(sp)
    26b6:	8526                	mv	a0,s1
    26b8:	4492                	lw	s1,4(sp)
    26ba:	0141                	addi	sp,sp,16
    26bc:	b159                	j	0x2342

Disassembly of section .text.mt25ql256aba_page_program:

000026be <.text.mt25ql256aba_page_program>:
    26be:	1141                	addi	sp,sp,-16
    26c0:	c422                	sw	s0,8(sp)
    26c2:	800007b7          	lui	a5,0x80000
    26c6:	fff60413          	addi	s0,a2,-1
    26ca:	50278793          	addi	a5,a5,1282 # 0x80000502
    26ce:	0442                	slli	s0,s0,0x10
    26d0:	c606                	sw	ra,12(sp)
    26d2:	872a                	mv	a4,a0
    26d4:	943e                	add	s0,s0,a5
    26d6:	67a9                	lui	a5,0xa
    26d8:	852e                	mv	a0,a1
    26da:	c3d8                	sw	a4,4(a5)
    26dc:	85b2                	mv	a1,a2
    26de:	3151                	jal	0x2362
    26e0:	67a9                	lui	a5,0xa
    26e2:	c380                	sw	s0,0(a5)
    26e4:	4422                	lw	s0,8(sp)
    26e6:	40b2                	lw	ra,12(sp)
    26e8:	0141                	addi	sp,sp,16
    26ea:	b92d                	j	0x2324

Disassembly of section .text.mt25ql256aba_sector_erase:

000026ec <.text.mt25ql256aba_sector_erase>:
    26ec:	15fd                	addi	a1,a1,-1
    26ee:	800007b7          	lui	a5,0x80000
    26f2:	5d878793          	addi	a5,a5,1496 # 0x800005d8
    26f6:	05c2                	slli	a1,a1,0x10
    26f8:	95be                	add	a1,a1,a5
    26fa:	67a9                	lui	a5,0xa
    26fc:	c788                	sw	a0,8(a5)
    26fe:	67a9                	lui	a5,0xa
    2700:	c38c                	sw	a1,0(a5)
    2702:	b10d                	j	0x2324

Disassembly of section .text.mt25ql256aba_read_id:

00002704 <.text.mt25ql256aba_read_id>:
    2704:	b94d                	j	0x23b6

Disassembly of section .text.mt25ql256aba_read_status_register:

00002706 <.text.mt25ql256aba_read_status_register>:
    2706:	b9e1                	j	0x23de

Disassembly of section .text.mt25ql256aba_read_flag_status_register:

00002708 <.text.mt25ql256aba_read_flag_status_register>:
    2708:	1141                	addi	sp,sp,-16
    270a:	800007b7          	lui	a5,0x80000
    270e:	c606                	sw	ra,12(sp)
    2710:	17078793          	addi	a5,a5,368 # 0x80000170
    2714:	6729                	lui	a4,0xa
    2716:	c31c                	sw	a5,0(a4)
    2718:	3131                	jal	0x2324
    271a:	67a9                	lui	a5,0xa
    271c:	4788                	lw	a0,8(a5)
    271e:	40b2                	lw	ra,12(sp)
    2720:	0ff57513          	zext.b	a0,a0
    2724:	0141                	addi	sp,sp,16
    2726:	8082                	ret

Disassembly of section .text.mt25ql256aba_read_nonvolatile_configuration_register:

00002728 <.text.mt25ql256aba_read_nonvolatile_configuration_register>:
    2728:	1141                	addi	sp,sp,-16
    272a:	800107b7          	lui	a5,0x80010
    272e:	c606                	sw	ra,12(sp)
    2730:	1b578793          	addi	a5,a5,437 # 0x800101b5
    2734:	6729                	lui	a4,0xa
    2736:	c31c                	sw	a5,0(a4)
    2738:	36f5                	jal	0x2324
    273a:	67a9                	lui	a5,0xa
    273c:	4788                	lw	a0,8(a5)
    273e:	40b2                	lw	ra,12(sp)
    2740:	0542                	slli	a0,a0,0x10
    2742:	8141                	srli	a0,a0,0x10
    2744:	0141                	addi	sp,sp,16
    2746:	8082                	ret

Disassembly of section .text.mt25ql256aba_read_volatile_configuration_register:

00002748 <.text.mt25ql256aba_read_volatile_configuration_register>:
    2748:	1141                	addi	sp,sp,-16
    274a:	800007b7          	lui	a5,0x80000
    274e:	c606                	sw	ra,12(sp)
    2750:	18578793          	addi	a5,a5,389 # 0x80000185
    2754:	6729                	lui	a4,0xa
    2756:	c31c                	sw	a5,0(a4)
    2758:	36f1                	jal	0x2324
    275a:	67a9                	lui	a5,0xa
    275c:	4788                	lw	a0,8(a5)
    275e:	40b2                	lw	ra,12(sp)
    2760:	0ff57513          	zext.b	a0,a0
    2764:	0141                	addi	sp,sp,16
    2766:	8082                	ret

Disassembly of section .text.mt25ql256aba_write_status_register:

00002768 <.text.mt25ql256aba_write_status_register>:
    2768:	67a9                	lui	a5,0xa
    276a:	c788                	sw	a0,8(a5)
    276c:	800007b7          	lui	a5,0x80000
    2770:	50178793          	addi	a5,a5,1281 # 0x80000501
    2774:	6729                	lui	a4,0xa
    2776:	c31c                	sw	a5,0(a4)
    2778:	b675                	j	0x2324

Disassembly of section .text.mt25ql256aba_write_nonvolatile_configuration_register:

0000277a <.text.mt25ql256aba_write_nonvolatile_configuration_register>:
    277a:	67a9                	lui	a5,0xa
    277c:	c788                	sw	a0,8(a5)
    277e:	800107b7          	lui	a5,0x80010
    2782:	5b178793          	addi	a5,a5,1457 # 0x800105b1
    2786:	6729                	lui	a4,0xa
    2788:	c31c                	sw	a5,0(a4)
    278a:	be69                	j	0x2324

Disassembly of section .text.mt25ql256aba_write_volatile_configuration_register:

0000278c <.text.mt25ql256aba_write_volatile_configuration_register>:
    278c:	67a9                	lui	a5,0xa
    278e:	c788                	sw	a0,8(a5)
    2790:	800007b7          	lui	a5,0x80000
    2794:	58178793          	addi	a5,a5,1409 # 0x80000581
    2798:	6729                	lui	a4,0xa
    279a:	c31c                	sw	a5,0(a4)
    279c:	b661                	j	0x2324

Disassembly of section .text.mt25ql256aba_write_enhanced_volatile_configuration_register:

0000279e <.text.mt25ql256aba_write_enhanced_volatile_configuration_register>:
    279e:	67a9                	lui	a5,0xa
    27a0:	c788                	sw	a0,8(a5)
    27a2:	800007b7          	lui	a5,0x80000
    27a6:	56178793          	addi	a5,a5,1377 # 0x80000561
    27aa:	6729                	lui	a4,0xa
    27ac:	c31c                	sw	a5,0(a4)
    27ae:	be9d                	j	0x2324

Disassembly of section .text.mt25ql256aba_write_disable:

000027b0 <.text.mt25ql256aba_write_disable>:
    27b0:	bef9                	j	0x238e

Disassembly of section .text.mt25ql256aba_write_enable:

000027b2 <.text.mt25ql256aba_write_enable>:
    27b2:	bec1                	j	0x2382

Disassembly of section .text.mt25ql256aba_reset_enable:

000027b4 <.text.mt25ql256aba_reset_enable>:
    27b4:	800007b7          	lui	a5,0x80000
    27b8:	06678793          	addi	a5,a5,102 # 0x80000066
    27bc:	6729                	lui	a4,0xa
    27be:	c31c                	sw	a5,0(a4)
    27c0:	b695                	j	0x2324

Disassembly of section .text.mt25ql256aba_reset_memory:

000027c2 <.text.mt25ql256aba_reset_memory>:
    27c2:	800007b7          	lui	a5,0x80000
    27c6:	09978793          	addi	a5,a5,153 # 0x80000099
    27ca:	6729                	lui	a4,0xa
    27cc:	c31c                	sw	a5,0(a4)
    27ce:	be99                	j	0x2324

Disassembly of section .text.timer_counter:

000027d0 <.text.timer_counter>:
    27d0:	67b1                	lui	a5,0xc
    27d2:	4bc8                	lw	a0,20(a5)
    27d4:	8082                	ret

Disassembly of section .text.timer_event:

000027d6 <.text.timer_event>:
    27d6:	67b1                	lui	a5,0xc
    27d8:	4f88                	lw	a0,24(a5)
    27da:	8082                	ret

Disassembly of section .text.timer_clear:

000027dc <.text.timer_clear>:
    27dc:	67b1                	lui	a5,0xc
    27de:	4705                	li	a4,1
    27e0:	c798                	sw	a4,8(a5)
    27e2:	67b1                	lui	a5,0xc
    27e4:	cfd8                	sw	a4,28(a5)
    27e6:	8082                	ret

Disassembly of section .text.timer_enabled:

000027e8 <.text.timer_enabled>:
    27e8:	67b1                	lui	a5,0xc
    27ea:	c7c8                	sw	a0,12(a5)
    27ec:	8082                	ret

Disassembly of section .text.timer_conf:

000027ee <.text.timer_conf>:
    27ee:	1141                	addi	sp,sp,-16
    27f0:	c606                	sw	ra,12(sp)
    27f2:	67b1                	lui	a5,0xc
    27f4:	c388                	sw	a0,0(a5)
    27f6:	c3cc                	sw	a1,4(a5)
    27f8:	67b1                	lui	a5,0xc
    27fa:	cb90                	sw	a2,16(a5)
    27fc:	08000613          	li	a2,128
    2800:	6589                	lui	a1,0x2
    2802:	20058593          	addi	a1,a1,512 # 0x2200
    2806:	30559073          	csrw	mtvec,a1
    280a:	30046073          	csrsi	mstatus,8
    280e:	30462073          	csrs	mie,a2
    2812:	37e9                	jal	0x27dc
    2814:	40b2                	lw	ra,12(sp)
    2816:	67b1                	lui	a5,0xc
    2818:	4705                	li	a4,1
    281a:	c7d8                	sw	a4,12(a5)
    281c:	0141                	addi	sp,sp,16
    281e:	8082                	ret

Disassembly of section .text.usb_connected:

00002820 <.text.usb_connected>:
    2820:	67b9                	lui	a5,0xe
    2822:	47c8                	lw	a0,12(a5)
    2824:	8905                	andi	a0,a0,1
    2826:	8082                	ret

Disassembly of section .text.usb_conf:

00002828 <.text.usb_conf>:
    2828:	67b9                	lui	a5,0xe
    282a:	c388                	sw	a0,0(a5)
    282c:	157d                	addi	a0,a0,-1
    282e:	4791                	li	a5,4
    2830:	00a7e763          	bltu	a5,a0,0x283e
    2834:	6739                	lui	a4,0xe
    2836:	0731                	addi	a4,a4,12 # 0xe00c
    2838:	431c                	lw	a5,0(a4)
    283a:	8b85                	andi	a5,a5,1
    283c:	dff5                	beqz	a5,0x2838
    283e:	8082                	ret

Disassembly of section .text.usb_rw:

00002840 <.text.usb_rw>:
    2840:	67b9                	lui	a5,0xe
    2842:	c788                	sw	a0,8(a5)
    2844:	67b9                	lui	a5,0xe
    2846:	07b1                	addi	a5,a5,12 # 0xe00c
    2848:	4398                	lw	a4,0(a5)
    284a:	8b09                	andi	a4,a4,2
    284c:	ff75                	bnez	a4,0x2848
    284e:	4705                	li	a4,1
    2850:	c398                	sw	a4,0(a5)
    2852:	67b9                	lui	a5,0xe
    2854:	43c8                	lw	a0,4(a5)
    2856:	8082                	ret

Disassembly of section .text.gpio_write:

00002858 <.text.gpio_write>:
    2858:	67c1                	lui	a5,0x10
    285a:	c3c8                	sw	a0,4(a5)
    285c:	8082                	ret

Disassembly of section .text.gpio_read:

0000285e <.text.gpio_read>:
    285e:	67c1                	lui	a5,0x10
    2860:	4388                	lw	a0,0(a5)
    2862:	0542                	slli	a0,a0,0x10
    2864:	8141                	srli	a0,a0,0x10
    2866:	8082                	ret

Disassembly of section .text.instr_mem_write:

00002868 <.text.instr_mem_write>:
    2868:	050a                	slli	a0,a0,0x2
    286a:	6791                	lui	a5,0x4
    286c:	97aa                	add	a5,a5,a0
    286e:	c38c                	sw	a1,0(a5)
    2870:	8082                	ret

Disassembly of section .text.uart_main:

00002872 <.text.uart_main>:
    2872:	1141                	addi	sp,sp,-16
    2874:	6785                	lui	a5,0x1
    2876:	c422                	sw	s0,8(sp)
    2878:	c226                	sw	s1,4(sp)
    287a:	c606                	sw	ra,12(sp)
    287c:	c3478793          	addi	a5,a5,-972 # 0xc34
    2880:	6719                	lui	a4,0x6
    2882:	c31c                	sw	a5,0(a4)
    2884:	6441                	lui	s0,0x10
    2886:	6799                	lui	a5,0x6
    2888:	0007a223          	sw	zero,4(a5) # 0x6004
    288c:	64c1                	lui	s1,0x10
    288e:	0411                	addi	s0,s0,4 # 0x10004
    2890:	340d                	jal	0x22b2
    2892:	c008                	sw	a0,0(s0)
    2894:	4088                	lw	a0,0(s1)
    2896:	0ff57513          	zext.b	a0,a0
    289a:	3c0d                	jal	0x22cc
    289c:	bfd5                	j	0x2890

Disassembly of section .text.uart_interrupt:

0000289e <.text.uart_interrupt>:
    289e:	8082                	ret

Disassembly of section .text.i2c_main:

000028a0 <.text.i2c_main>:
    28a0:	1141                	addi	sp,sp,-16
    28a2:	c422                	sw	s0,8(sp)
    28a4:	c226                	sw	s1,4(sp)
    28a6:	c04a                	sw	s2,0(sp)
    28a8:	c606                	sw	ra,12(sp)
    28aa:	67a1                	lui	a5,0x8
    28ac:	07b00713          	li	a4,123
    28b0:	c3d8                	sw	a4,4(a5)
    28b2:	4605                	li	a2,1
    28b4:	4581                	li	a1,0
    28b6:	557d                	li	a0,-1
    28b8:	64c1                	lui	s1,0x10
    28ba:	6441                	lui	s0,0x10
    28bc:	3f0d                	jal	0x27ee
    28be:	14fd                	addi	s1,s1,-1 # 0xffff
    28c0:	0411                	addi	s0,s0,4 # 0x10004
    28c2:	05002783          	lw	a5,80(zero) # 0x50
    28c6:	dff5                	beqz	a5,0x28c2
    28c8:	4509                	li	a0,2
    28ca:	3c3d                	jal	0x2308
    28cc:	8d65                	and	a0,a0,s1
    28ce:	c008                	sw	a0,0(s0)
    28d0:	04002823          	sw	zero,80(zero) # 0x50
    28d4:	b7fd                	j	0x28c2

Disassembly of section .text.i2c_interrupt:

000028d6 <.text.i2c_interrupt>:
    28d6:	4705                	li	a4,1
    28d8:	04e02823          	sw	a4,80(zero) # 0x50
    28dc:	8082                	ret

Disassembly of section .text.qspi_main:

000028de <.text.qspi_main>:
    28de:	6741                	lui	a4,0x10
    28e0:	431c                	lw	a5,0(a4)
    28e2:	8b89                	andi	a5,a5,2
    28e4:	e789                	bnez	a5,0x28ee
    28e6:	431c                	lw	a5,0(a4)
    28e8:	8b85                	andi	a5,a5,1
    28ea:	dbfd                	beqz	a5,0x28e0
    28ec:	a001                	j	0x28ec
    28ee:	1141                	addi	sp,sp,-16
    28f0:	c606                	sw	ra,12(sp)
    28f2:	3c41                	jal	0x2382
    28f4:	07f00513          	li	a0,127
    28f8:	355d                	jal	0x279e
    28fa:	40b2                	lw	ra,12(sp)
    28fc:	4501                	li	a0,0
    28fe:	0141                	addi	sp,sp,16
    2900:	8082                	ret

Disassembly of section .text.qspi_interrupt:

00002902 <.text.qspi_interrupt>:
    2902:	8082                	ret

Disassembly of section .text.timer_main:

00002904 <.text.timer_main>:
    2904:	1101                	addi	sp,sp,-32
    2906:	653d                	lui	a0,0xf
    2908:	cc22                	sw	s0,24(sp)
    290a:	c84a                	sw	s2,16(sp)
    290c:	4605                	li	a2,1
    290e:	4581                	li	a1,0
    2910:	a5f50513          	addi	a0,a0,-1441 # 0xea5f
    2914:	6441                	lui	s0,0x10
    2916:	6931                	lui	s2,0xc
    2918:	ca26                	sw	s1,20(sp)
    291a:	c64e                	sw	s3,12(sp)
    291c:	ce06                	sw	ra,28(sp)
    291e:	3dc1                	jal	0x27ee
    2920:	fff40493          	addi	s1,s0,-1 # 0xffff
    2924:	0911                	addi	s2,s2,4 # 0xc004
    2926:	04c02703          	lw	a4,76(zero) # 0x4c
    292a:	401c                	lw	a5,0(s0)
    292c:	8fe5                	and	a5,a5,s1
    292e:	fee78ee3          	beq	a5,a4,0x292a
    2932:	401c                	lw	a5,0(s0)
    2934:	8fe5                	and	a5,a5,s1
    2936:	00f92023          	sw	a5,0(s2)
    293a:	354d                	jal	0x27dc
    293c:	401c                	lw	a5,0(s0)
    293e:	8fe5                	and	a5,a5,s1
    2940:	04f02623          	sw	a5,76(zero) # 0x4c
    2944:	b7cd                	j	0x2926

Disassembly of section .text.timer_interrupt:

00002946 <.text.timer_interrupt>:
    2946:	0f405683          	lhu	a3,244(zero) # 0xf4
    294a:	6741                	lui	a4,0x10
    294c:	c354                	sw	a3,4(a4)
    294e:	0f402703          	lw	a4,244(zero) # 0xf4
    2952:	0705                	addi	a4,a4,1 # 0x10001
    2954:	0ee02a23          	sw	a4,244(zero) # 0xf4
    2958:	8082                	ret

Disassembly of section .text.gpio_main:

0000295a <.text.gpio_main>:
    295a:	66c1                	lui	a3,0x10
    295c:	67c1                	lui	a5,0x10
    295e:	fff68613          	addi	a2,a3,-1 # 0xffff
    2962:	0791                	addi	a5,a5,4 # 0x10004
    2964:	4298                	lw	a4,0(a3)
    2966:	8f71                	and	a4,a4,a2
    2968:	c398                	sw	a4,0(a5)
    296a:	bfed                	j	0x2964

Disassembly of section .text.gpio_interrupt:

0000296c <.text.gpio_interrupt>:
    296c:	8082                	ret

Disassembly of section .text.usb_main:

0000296e <.text.usb_main>:
    296e:	7179                	addi	sp,sp,-48
    2970:	d04a                	sw	s2,32(sp)
    2972:	4605                	li	a2,1
    2974:	4581                	li	a1,0
    2976:	557d                	li	a0,-1
    2978:	6939                	lui	s2,0xe
    297a:	d422                	sw	s0,40(sp)
    297c:	d226                	sw	s1,36(sp)
    297e:	ce4e                	sw	s3,28(sp)
    2980:	cc52                	sw	s4,24(sp)
    2982:	ca56                	sw	s5,20(sp)
    2984:	d606                	sw	ra,44(sp)
    2986:	c85a                	sw	s6,16(sp)
    2988:	c65e                	sw	s7,12(sp)
    298a:	c462                	sw	s8,8(sp)
    298c:	c266                	sw	s9,4(sp)
    298e:	3585                	jal	0x27ee
    2990:	4a85                	li	s5,1
    2992:	0931                	addi	s2,s2,12 # 0xe00c
    2994:	6b41                	lui	s6,0x10
    2996:	000b2783          	lw	a5,0(s6) # 0x10000
    299a:	4701                	li	a4,0
    299c:	4681                	li	a3,0
    299e:	0ff7f793          	zext.b	a5,a5
    29a2:	0ef02823          	sw	a5,240(zero) # 0xf0
    29a6:	00170613          	addi	a2,a4,1
    29aa:	efad                	bnez	a5,0x2a24
    29ac:	e2c1                	bnez	a3,0x2a2c
    29ae:	0e002423          	sw	zero,232(zero) # 0xe8
    29b2:	0e802503          	lw	a0,232(zero) # 0xe8
    29b6:	0e402783          	lw	a5,228(zero) # 0xe4
    29ba:	00f50363          	beq	a0,a5,0x29c0
    29be:	35ad                	jal	0x2828
    29c0:	0e802783          	lw	a5,232(zero) # 0xe8
    29c4:	0ef02223          	sw	a5,228(zero) # 0xe4
    29c8:	00092703          	lw	a4,0(s2)
    29cc:	07a2                	slli	a5,a5,0x8
    29ce:	8b05                	andi	a4,a4,1
    29d0:	97ba                	add	a5,a5,a4
    29d2:	07c2                	slli	a5,a5,0x10
    29d4:	83c1                	srli	a5,a5,0x10
    29d6:	6741                	lui	a4,0x10
    29d8:	c35c                	sw	a5,4(a4)
    29da:	0e802783          	lw	a5,232(zero) # 0xe8
    29de:	4711                	li	a4,4
    29e0:	06e78463          	beq	a5,a4,0x2a48
    29e4:	04f76963          	bltu	a4,a5,0x2a36
    29e8:	05578a63          	beq	a5,s5,0x2a3c
    29ec:	4709                	li	a4,2
    29ee:	fae794e3          	bne	a5,a4,0x2996
    29f2:	4501                	li	a0,0
    29f4:	35b1                	jal	0x2840
    29f6:	4b81                	li	s7,0
    29f8:	14000c13          	li	s8,320
    29fc:	0b400c93          	li	s9,180
    2a00:	4b01                	li	s6,0
    2a02:	0ec02503          	lw	a0,236(zero) # 0xec
    2a06:	955e                	add	a0,a0,s7
    2a08:	955a                	add	a0,a0,s6
    2a0a:	0b05                	addi	s6,s6,1
    2a0c:	3d15                	jal	0x2840
    2a0e:	ff8b1ae3          	bne	s6,s8,0x2a02
    2a12:	0b85                	addi	s7,s7,1
    2a14:	ff9b96e3          	bne	s7,s9,0x2a00
    2a18:	0ec02783          	lw	a5,236(zero) # 0xec
    2a1c:	0785                	addi	a5,a5,1
    2a1e:	0ef02623          	sw	a5,236(zero) # 0xec
    2a22:	bf8d                	j	0x2994
    2a24:	8385                	srli	a5,a5,0x1
    2a26:	8732                	mv	a4,a2
    2a28:	4685                	li	a3,1
    2a2a:	bfb5                	j	0x29a6
    2a2c:	0ee02423          	sw	a4,232(zero) # 0xe8
    2a30:	0e002823          	sw	zero,240(zero) # 0xf0
    2a34:	bfbd                	j	0x29b2
    2a36:	4715                	li	a4,5
    2a38:	f4e79fe3          	bne	a5,a4,0x2996
    2a3c:	0f002503          	lw	a0,240(zero) # 0xf0
    2a40:	3501                	jal	0x2840
    2a42:	0ea02823          	sw	a0,240(zero) # 0xf0
    2a46:	b7b9                	j	0x2994
    2a48:	000b2783          	lw	a5,0(s6)
    2a4c:	07c2                	slli	a5,a5,0x10
    2a4e:	83c1                	srli	a5,a5,0x10
    2a50:	83a1                	srli	a5,a5,0x8
    2a52:	0ef02823          	sw	a5,240(zero) # 0xf0
    2a56:	bf3d                	j	0x2994

Disassembly of section .text.usb_interrupt:

00002a58 <.text.usb_interrupt>:
    2a58:	0e802703          	lw	a4,232(zero) # 0xe8
    2a5c:	4791                	li	a5,4
    2a5e:	00f71563          	bne	a4,a5,0x2a68
    2a62:	0f002503          	lw	a0,240(zero) # 0xf0
    2a66:	bbe9                	j	0x2840
    2a68:	8082                	ret

Disassembly of section .text.data_mem_main:

00002a6a <.text.data_mem_main>:
    2a6a:	66c1                	lui	a3,0x10
    2a6c:	6741                	lui	a4,0x10
    2a6e:	fff68613          	addi	a2,a3,-1 # 0xffff
    2a72:	0711                	addi	a4,a4,4 # 0x10004
    2a74:	429c                	lw	a5,0(a3)
    2a76:	8ff1                	and	a5,a5,a2
    2a78:	0786                	slli	a5,a5,0x1
    2a7a:	0007d783          	lhu	a5,0(a5)
    2a7e:	c31c                	sw	a5,0(a4)
    2a80:	bfd5                	j	0x2a74
