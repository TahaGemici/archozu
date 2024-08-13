
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
    2012:	7a4000ef          	jal	0x27b6
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
    2040:	02d60f63          	beq	a2,a3,0x207e
    2044:	00f6ed63          	bltu	a3,a5,0x205e
    2048:	4609                	li	a2,2
    204a:	02c78763          	beq	a5,a2,0x2078
    204e:	4611                	li	a2,4
    2050:	02c78663          	beq	a5,a2,0x207c
    2054:	4605                	li	a2,1
    2056:	fcc792e3          	bne	a5,a2,0x201a
    205a:	7ce000ef          	jal	0x2828
    205e:	02000613          	li	a2,32
    2062:	02c78063          	beq	a5,a2,0x2082
    2066:	04000613          	li	a2,64
    206a:	00c78e63          	beq	a5,a2,0x2086
    206e:	4641                	li	a2,16
    2070:	fac795e3          	bne	a5,a2,0x201a
    2074:	07b000ef          	jal	0x28ee
    2078:	7de000ef          	jal	0x2856
    207c:	a001                	j	0x207c
    207e:	01b000ef          	jal	0x2898
    2082:	081000ef          	jal	0x2902
    2086:	179000ef          	jal	0x29fe
	...
    21fe:	0000                	unimp
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
    226c:	780000ef          	jal	0x29ec
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
    2294:	2599                	jal	0x28da
    2296:	b765                	j	0x223e

Disassembly of section .text.uart_conf:

00002298 <.text.uart_conf>:
    2298:	039387b7          	lui	a5,0x3938
    229c:	70078793          	addi	a5,a5,1792 # 0x3938700
    22a0:	02a7d7b3          	divu	a5,a5,a0
    22a4:	6719                	lui	a4,0x6
    22a6:	17fd                	addi	a5,a5,-1
    22a8:	c31c                	sw	a5,0(a4)
    22aa:	6799                	lui	a5,0x6
    22ac:	c3cc                	sw	a1,4(a5)
    22ae:	8082                	ret

Disassembly of section .text.uart_read:

000022b0 <.text.uart_read>:
    22b0:	6799                	lui	a5,0x6
    22b2:	07c1                	addi	a5,a5,16 # 0x6010
    22b4:	4709                	li	a4,2
    22b6:	4394                	lw	a3,0(a5)
    22b8:	fee69fe3          	bne	a3,a4,0x22b6
    22bc:	6719                	lui	a4,0x6
    22be:	4708                	lw	a0,8(a4)
    22c0:	0007a023          	sw	zero,0(a5)
    22c4:	0ff57513          	zext.b	a0,a0
    22c8:	8082                	ret

Disassembly of section .text.uart_write:

000022ca <.text.uart_write>:
    22ca:	6799                	lui	a5,0x6
    22cc:	c7c8                	sw	a0,12(a5)
    22ce:	6799                	lui	a5,0x6
    22d0:	07c1                	addi	a5,a5,16 # 0x6010
    22d2:	4705                	li	a4,1
    22d4:	c398                	sw	a4,0(a5)
    22d6:	4398                	lw	a4,0(a5)
    22d8:	8b11                	andi	a4,a4,4
    22da:	df75                	beqz	a4,0x22d6
    22dc:	4398                	lw	a4,0(a5)
    22de:	8b09                	andi	a4,a4,2
    22e0:	c398                	sw	a4,0(a5)
    22e2:	8082                	ret

Disassembly of section .text.i2c_conf:

000022e4 <.text.i2c_conf>:
    22e4:	67a1                	lui	a5,0x8
    22e6:	c3c8                	sw	a0,4(a5)
    22e8:	8082                	ret

Disassembly of section .text.i2c_write:

000022ea <.text.i2c_write>:
    22ea:	67a1                	lui	a5,0x8
    22ec:	c38c                	sw	a1,0(a5)
    22ee:	c7c8                	sw	a0,12(a5)
    22f0:	67a1                	lui	a5,0x8
    22f2:	07c1                	addi	a5,a5,16 # 0x8010
    22f4:	4705                	li	a4,1
    22f6:	c398                	sw	a4,0(a5)
    22f8:	4398                	lw	a4,0(a5)
    22fa:	8b09                	andi	a4,a4,2
    22fc:	df75                	beqz	a4,0x22f8
    22fe:	4398                	lw	a4,0(a5)
    2300:	8b31                	andi	a4,a4,12
    2302:	c398                	sw	a4,0(a5)
    2304:	8082                	ret

Disassembly of section .text.i2c_read:

00002306 <.text.i2c_read>:
    2306:	67a1                	lui	a5,0x8
    2308:	c388                	sw	a0,0(a5)
    230a:	4711                	li	a4,4
    230c:	07c1                	addi	a5,a5,16 # 0x8010
    230e:	c398                	sw	a4,0(a5)
    2310:	4398                	lw	a4,0(a5)
    2312:	8b21                	andi	a4,a4,8
    2314:	df75                	beqz	a4,0x2310
    2316:	4398                	lw	a4,0(a5)
    2318:	8b0d                	andi	a4,a4,3
    231a:	c398                	sw	a4,0(a5)
    231c:	67a1                	lui	a5,0x8
    231e:	4788                	lw	a0,8(a5)
    2320:	8082                	ret

Disassembly of section .text.qspi_wait:

00002322 <.text.qspi_wait>:
    2322:	67a9                	lui	a5,0xa
    2324:	02878793          	addi	a5,a5,40 # 0xa028
    2328:	4705                	li	a4,1
    232a:	4394                	lw	a3,0(a5)
    232c:	fee69fe3          	bne	a3,a4,0x232a
    2330:	67a9                	lui	a5,0xa
    2332:	02878793          	addi	a5,a5,40 # 0xa028
    2336:	4705                	li	a4,1
    2338:	4394                	lw	a3,0(a5)
    233a:	fee69fe3          	bne	a3,a4,0x2338
    233e:	8082                	ret

Disassembly of section .text.qspi_read_array:

00002340 <.text.qspi_read_array>:
    2340:	058d                	addi	a1,a1,3 # 0x10003
    2342:	6729                	lui	a4,0xa
    2344:	99f1                	andi	a1,a1,-4
    2346:	4781                	li	a5,0
    2348:	0721                	addi	a4,a4,8 # 0xa008
    234a:	00b79363          	bne	a5,a1,0x2350
    234e:	8082                	ret
    2350:	00e786b3          	add	a3,a5,a4
    2354:	4290                	lw	a2,0(a3)
    2356:	00f506b3          	add	a3,a0,a5
    235a:	0791                	addi	a5,a5,4
    235c:	c290                	sw	a2,0(a3)
    235e:	b7f5                	j	0x234a

Disassembly of section .text.qspi_write_array:

00002360 <.text.qspi_write_array>:
    2360:	058d                	addi	a1,a1,3
    2362:	6729                	lui	a4,0xa
    2364:	99f1                	andi	a1,a1,-4
    2366:	4781                	li	a5,0
    2368:	0721                	addi	a4,a4,8 # 0xa008
    236a:	00b79363          	bne	a5,a1,0x2370
    236e:	8082                	ret
    2370:	00f50633          	add	a2,a0,a5
    2374:	4210                	lw	a2,0(a2)
    2376:	00e786b3          	add	a3,a5,a4
    237a:	0791                	addi	a5,a5,4
    237c:	c290                	sw	a2,0(a3)
    237e:	b7f5                	j	0x236a

Disassembly of section .text.s25fl128s_wren:

00002380 <.text.s25fl128s_wren>:
    2380:	800007b7          	lui	a5,0x80000
    2384:	0799                	addi	a5,a5,6 # 0x80000006
    2386:	6729                	lui	a4,0xa
    2388:	c31c                	sw	a5,0(a4)
    238a:	bf61                	j	0x2322

Disassembly of section .text.s25fl128s_wrdi:

0000238c <.text.s25fl128s_wrdi>:
    238c:	800007b7          	lui	a5,0x80000
    2390:	0791                	addi	a5,a5,4 # 0x80000004
    2392:	6729                	lui	a4,0xa
    2394:	c31c                	sw	a5,0(a4)
    2396:	b771                	j	0x2322

Disassembly of section .text.s25fl128s_clsr:

00002398 <.text.s25fl128s_clsr>:
    2398:	800007b7          	lui	a5,0x80000
    239c:	03078793          	addi	a5,a5,48 # 0x80000030
    23a0:	6729                	lui	a4,0xa
    23a2:	c31c                	sw	a5,0(a4)
    23a4:	bfbd                	j	0x2322

Disassembly of section .text.s25fl128s_reset:

000023a6 <.text.s25fl128s_reset>:
    23a6:	800007b7          	lui	a5,0x80000
    23aa:	0f078793          	addi	a5,a5,240 # 0x800000f0
    23ae:	6729                	lui	a4,0xa
    23b0:	c31c                	sw	a5,0(a4)
    23b2:	bf85                	j	0x2322

Disassembly of section .text.s25fl128s_rdid:

000023b4 <.text.s25fl128s_rdid>:
    23b4:	fff58793          	addi	a5,a1,-1
    23b8:	80000737          	lui	a4,0x80000
    23bc:	1101                	addi	sp,sp,-32
    23be:	19f70713          	addi	a4,a4,415 # 0x8000019f
    23c2:	07c2                	slli	a5,a5,0x10
    23c4:	ce06                	sw	ra,28(sp)
    23c6:	c62a                	sw	a0,12(sp)
    23c8:	c42e                	sw	a1,8(sp)
    23ca:	97ba                	add	a5,a5,a4
    23cc:	6729                	lui	a4,0xa
    23ce:	c31c                	sw	a5,0(a4)
    23d0:	3f89                	jal	0x2322
    23d2:	45a2                	lw	a1,8(sp)
    23d4:	4532                	lw	a0,12(sp)
    23d6:	40f2                	lw	ra,28(sp)
    23d8:	6105                	addi	sp,sp,32
    23da:	b79d                	j	0x2340

Disassembly of section .text.s25fl128s_rdsr1:

000023dc <.text.s25fl128s_rdsr1>:
    23dc:	1141                	addi	sp,sp,-16
    23de:	800007b7          	lui	a5,0x80000
    23e2:	c606                	sw	ra,12(sp)
    23e4:	10578793          	addi	a5,a5,261 # 0x80000105
    23e8:	6729                	lui	a4,0xa
    23ea:	c31c                	sw	a5,0(a4)
    23ec:	3f1d                	jal	0x2322
    23ee:	67a9                	lui	a5,0xa
    23f0:	4788                	lw	a0,8(a5)
    23f2:	40b2                	lw	ra,12(sp)
    23f4:	0ff57513          	zext.b	a0,a0
    23f8:	0141                	addi	sp,sp,16
    23fa:	8082                	ret

Disassembly of section .text.s25fl128s_rdsr2:

000023fc <.text.s25fl128s_rdsr2>:
    23fc:	1141                	addi	sp,sp,-16
    23fe:	800007b7          	lui	a5,0x80000
    2402:	c606                	sw	ra,12(sp)
    2404:	10778793          	addi	a5,a5,263 # 0x80000107
    2408:	6729                	lui	a4,0xa
    240a:	c31c                	sw	a5,0(a4)
    240c:	3f19                	jal	0x2322
    240e:	67a9                	lui	a5,0xa
    2410:	4788                	lw	a0,8(a5)
    2412:	40b2                	lw	ra,12(sp)
    2414:	0ff57513          	zext.b	a0,a0
    2418:	0141                	addi	sp,sp,16
    241a:	8082                	ret

Disassembly of section .text.s25fl128s_rdcr:

0000241c <.text.s25fl128s_rdcr>:
    241c:	1141                	addi	sp,sp,-16
    241e:	800007b7          	lui	a5,0x80000
    2422:	c606                	sw	ra,12(sp)
    2424:	13578793          	addi	a5,a5,309 # 0x80000135
    2428:	6729                	lui	a4,0xa
    242a:	c31c                	sw	a5,0(a4)
    242c:	3ddd                	jal	0x2322
    242e:	67a9                	lui	a5,0xa
    2430:	4788                	lw	a0,8(a5)
    2432:	40b2                	lw	ra,12(sp)
    2434:	0ff57513          	zext.b	a0,a0
    2438:	0141                	addi	sp,sp,16
    243a:	8082                	ret

Disassembly of section .text.s25fl128s_read_id:

0000243c <.text.s25fl128s_read_id>:
    243c:	1141                	addi	sp,sp,-16
    243e:	c606                	sw	ra,12(sp)
    2440:	67a9                	lui	a5,0xa
    2442:	c3c8                	sw	a0,4(a5)
    2444:	800127b7          	lui	a5,0x80012
    2448:	99078793          	addi	a5,a5,-1648 # 0x80011990
    244c:	6729                	lui	a4,0xa
    244e:	c31c                	sw	a5,0(a4)
    2450:	3dc9                	jal	0x2322
    2452:	67a9                	lui	a5,0xa
    2454:	4788                	lw	a0,8(a5)
    2456:	40b2                	lw	ra,12(sp)
    2458:	0542                	slli	a0,a0,0x10
    245a:	8141                	srli	a0,a0,0x10
    245c:	0141                	addi	sp,sp,16
    245e:	8082                	ret

Disassembly of section .text.s25fl128s_res:

00002460 <.text.s25fl128s_res>:
    2460:	1141                	addi	sp,sp,-16
    2462:	800027b7          	lui	a5,0x80002
    2466:	c606                	sw	ra,12(sp)
    2468:	9ab78793          	addi	a5,a5,-1621 # 0x800019ab
    246c:	6729                	lui	a4,0xa
    246e:	c31c                	sw	a5,0(a4)
    2470:	3d4d                	jal	0x2322
    2472:	67a9                	lui	a5,0xa
    2474:	4788                	lw	a0,8(a5)
    2476:	40b2                	lw	ra,12(sp)
    2478:	0ff57513          	zext.b	a0,a0
    247c:	0141                	addi	sp,sp,16
    247e:	8082                	ret

Disassembly of section .text.s25fl128s_wrr:

00002480 <.text.s25fl128s_wrr>:
    2480:	67a9                	lui	a5,0xa
    2482:	c788                	sw	a0,8(a5)
    2484:	800107b7          	lui	a5,0x80010
    2488:	50178793          	addi	a5,a5,1281 # 0x80010501
    248c:	6729                	lui	a4,0xa
    248e:	c31c                	sw	a5,0(a4)
    2490:	bd49                	j	0x2322

Disassembly of section .text.s25fl128s_read:

00002492 <.text.s25fl128s_read>:
    2492:	fff60793          	addi	a5,a2,-1
    2496:	80002737          	lui	a4,0x80002
    249a:	1141                	addi	sp,sp,-16
    249c:	90370713          	addi	a4,a4,-1789 # 0x80001903
    24a0:	07c2                	slli	a5,a5,0x10
    24a2:	c422                	sw	s0,8(sp)
    24a4:	c226                	sw	s1,4(sp)
    24a6:	c606                	sw	ra,12(sp)
    24a8:	97ba                	add	a5,a5,a4
    24aa:	6729                	lui	a4,0xa
    24ac:	c348                	sw	a0,4(a4)
    24ae:	6729                	lui	a4,0xa
    24b0:	c31c                	sw	a5,0(a4)
    24b2:	84ae                	mv	s1,a1
    24b4:	8432                	mv	s0,a2
    24b6:	35b5                	jal	0x2322
    24b8:	85a2                	mv	a1,s0
    24ba:	4422                	lw	s0,8(sp)
    24bc:	40b2                	lw	ra,12(sp)
    24be:	8526                	mv	a0,s1
    24c0:	4492                	lw	s1,4(sp)
    24c2:	0141                	addi	sp,sp,16
    24c4:	bdb5                	j	0x2340

Disassembly of section .text.s25fl128s_pp:

000024c6 <.text.s25fl128s_pp>:
    24c6:	1141                	addi	sp,sp,-16
    24c8:	c422                	sw	s0,8(sp)
    24ca:	800027b7          	lui	a5,0x80002
    24ce:	fff60413          	addi	s0,a2,-1
    24d2:	d0278793          	addi	a5,a5,-766 # 0x80001d02
    24d6:	0442                	slli	s0,s0,0x10
    24d8:	c606                	sw	ra,12(sp)
    24da:	872a                	mv	a4,a0
    24dc:	943e                	add	s0,s0,a5
    24de:	67a9                	lui	a5,0xa
    24e0:	852e                	mv	a0,a1
    24e2:	c3d8                	sw	a4,4(a5)
    24e4:	85b2                	mv	a1,a2
    24e6:	3dad                	jal	0x2360
    24e8:	67a9                	lui	a5,0xa
    24ea:	c380                	sw	s0,0(a5)
    24ec:	4422                	lw	s0,8(sp)
    24ee:	40b2                	lw	ra,12(sp)
    24f0:	0141                	addi	sp,sp,16
    24f2:	bd05                	j	0x2322

Disassembly of section .text.s25fl128s_se:

000024f4 <.text.s25fl128s_se>:
    24f4:	67a9                	lui	a5,0xa
    24f6:	c788                	sw	a0,8(a5)
    24f8:	800207b7          	lui	a5,0x80020
    24fc:	5d878793          	addi	a5,a5,1496 # 0x800205d8
    2500:	6729                	lui	a4,0xa
    2502:	c31c                	sw	a5,0(a4)
    2504:	bd39                	j	0x2322

Disassembly of section .text.s25fl128s_dor:

00002506 <.text.s25fl128s_dor>:
    2506:	fff60793          	addi	a5,a2,-1
    250a:	80002737          	lui	a4,0x80002
    250e:	1141                	addi	sp,sp,-16
    2510:	23b70713          	addi	a4,a4,571 # 0x8000223b
    2514:	07c2                	slli	a5,a5,0x10
    2516:	c422                	sw	s0,8(sp)
    2518:	c226                	sw	s1,4(sp)
    251a:	c606                	sw	ra,12(sp)
    251c:	97ba                	add	a5,a5,a4
    251e:	6729                	lui	a4,0xa
    2520:	c348                	sw	a0,4(a4)
    2522:	6729                	lui	a4,0xa
    2524:	c31c                	sw	a5,0(a4)
    2526:	84ae                	mv	s1,a1
    2528:	8432                	mv	s0,a2
    252a:	3be5                	jal	0x2322
    252c:	85a2                	mv	a1,s0
    252e:	4422                	lw	s0,8(sp)
    2530:	40b2                	lw	ra,12(sp)
    2532:	8526                	mv	a0,s1
    2534:	4492                	lw	s1,4(sp)
    2536:	0141                	addi	sp,sp,16
    2538:	b521                	j	0x2340

Disassembly of section .text.s25fl128s_qor:

0000253a <.text.s25fl128s_qor>:
    253a:	fff60793          	addi	a5,a2,-1
    253e:	80002737          	lui	a4,0x80002
    2542:	1141                	addi	sp,sp,-16
    2544:	36b70713          	addi	a4,a4,875 # 0x8000236b
    2548:	07c2                	slli	a5,a5,0x10
    254a:	c422                	sw	s0,8(sp)
    254c:	c226                	sw	s1,4(sp)
    254e:	c606                	sw	ra,12(sp)
    2550:	97ba                	add	a5,a5,a4
    2552:	6729                	lui	a4,0xa
    2554:	c348                	sw	a0,4(a4)
    2556:	6729                	lui	a4,0xa
    2558:	c31c                	sw	a5,0(a4)
    255a:	84ae                	mv	s1,a1
    255c:	8432                	mv	s0,a2
    255e:	33d1                	jal	0x2322
    2560:	85a2                	mv	a1,s0
    2562:	4422                	lw	s0,8(sp)
    2564:	40b2                	lw	ra,12(sp)
    2566:	8526                	mv	a0,s1
    2568:	4492                	lw	s1,4(sp)
    256a:	0141                	addi	sp,sp,16
    256c:	bbd1                	j	0x2340

Disassembly of section .text.s25fl128s_qpp:

0000256e <.text.s25fl128s_qpp>:
    256e:	fff60793          	addi	a5,a2,-1
    2572:	80002737          	lui	a4,0x80002
    2576:	1141                	addi	sp,sp,-16
    2578:	f3270713          	addi	a4,a4,-206 # 0x80001f32
    257c:	07c2                	slli	a5,a5,0x10
    257e:	c606                	sw	ra,12(sp)
    2580:	86aa                	mv	a3,a0
    2582:	97ba                	add	a5,a5,a4
    2584:	6729                	lui	a4,0xa
    2586:	c354                	sw	a3,4(a4)
    2588:	6729                	lui	a4,0xa
    258a:	852e                	mv	a0,a1
    258c:	c31c                	sw	a5,0(a4)
    258e:	85b2                	mv	a1,a2
    2590:	3bc1                	jal	0x2360
    2592:	40b2                	lw	ra,12(sp)
    2594:	0141                	addi	sp,sp,16
    2596:	b371                	j	0x2322

Disassembly of section .text.qspi_custom_write:

00002598 <.text.qspi_custom_write>:
    2598:	88aa                	mv	a7,a0
    259a:	852e                	mv	a0,a1
    259c:	85be                	mv	a1,a5
    259e:	800007b7          	lui	a5,0x80000
    25a2:	40078793          	addi	a5,a5,1024 # 0x80000400
    25a6:	0866                	slli	a6,a6,0x19
    25a8:	983e                	add	a6,a6,a5
    25aa:	072e                	slli	a4,a4,0xb
    25ac:	fff58793          	addi	a5,a1,-1
    25b0:	1141                	addi	sp,sp,-16
    25b2:	983a                	add	a6,a6,a4
    25b4:	07c2                	slli	a5,a5,0x10
    25b6:	c422                	sw	s0,8(sp)
    25b8:	c606                	sw	ra,12(sp)
    25ba:	983e                	add	a6,a6,a5
    25bc:	06a2                	slli	a3,a3,0x8
    25be:	67a9                	lui	a5,0xa
    25c0:	0ff67613          	zext.b	a2,a2
    25c4:	9836                	add	a6,a6,a3
    25c6:	0117a223          	sw	a7,4(a5) # 0xa004
    25ca:	00c80433          	add	s0,a6,a2
    25ce:	3b49                	jal	0x2360
    25d0:	67a9                	lui	a5,0xa
    25d2:	c380                	sw	s0,0(a5)
    25d4:	4422                	lw	s0,8(sp)
    25d6:	40b2                	lw	ra,12(sp)
    25d8:	0141                	addi	sp,sp,16
    25da:	b3a1                	j	0x2322

Disassembly of section .text.qspi_custom_read:

000025dc <.text.qspi_custom_read>:
    25dc:	1141                	addi	sp,sp,-16
    25de:	c422                	sw	s0,8(sp)
    25e0:	0866                	slli	a6,a6,0x19
    25e2:	843e                	mv	s0,a5
    25e4:	800007b7          	lui	a5,0x80000
    25e8:	983e                	add	a6,a6,a5
    25ea:	072e                	slli	a4,a4,0xb
    25ec:	fff40793          	addi	a5,s0,-1
    25f0:	983a                	add	a6,a6,a4
    25f2:	07c2                	slli	a5,a5,0x10
    25f4:	983e                	add	a6,a6,a5
    25f6:	06a2                	slli	a3,a3,0x8
    25f8:	c226                	sw	s1,4(sp)
    25fa:	c606                	sw	ra,12(sp)
    25fc:	0ff67613          	zext.b	a2,a2
    2600:	9836                	add	a6,a6,a3
    2602:	67a9                	lui	a5,0xa
    2604:	c3c8                	sw	a0,4(a5)
    2606:	9832                	add	a6,a6,a2
    2608:	67a9                	lui	a5,0xa
    260a:	0107a023          	sw	a6,0(a5) # 0xa000
    260e:	84ae                	mv	s1,a1
    2610:	3b09                	jal	0x2322
    2612:	85a2                	mv	a1,s0
    2614:	4422                	lw	s0,8(sp)
    2616:	40b2                	lw	ra,12(sp)
    2618:	8526                	mv	a0,s1
    261a:	4492                	lw	s1,4(sp)
    261c:	0141                	addi	sp,sp,16
    261e:	b30d                	j	0x2340

Disassembly of section .text.mt25ql256aba_read:

00002620 <.text.mt25ql256aba_read>:
    2620:	fff60793          	addi	a5,a2,-1
    2624:	80000737          	lui	a4,0x80000
    2628:	1141                	addi	sp,sp,-16
    262a:	10370713          	addi	a4,a4,259 # 0x80000103
    262e:	07c2                	slli	a5,a5,0x10
    2630:	c422                	sw	s0,8(sp)
    2632:	c226                	sw	s1,4(sp)
    2634:	c606                	sw	ra,12(sp)
    2636:	97ba                	add	a5,a5,a4
    2638:	6729                	lui	a4,0xa
    263a:	c348                	sw	a0,4(a4)
    263c:	6729                	lui	a4,0xa
    263e:	c31c                	sw	a5,0(a4)
    2640:	84ae                	mv	s1,a1
    2642:	8432                	mv	s0,a2
    2644:	39f9                	jal	0x2322
    2646:	85a2                	mv	a1,s0
    2648:	4422                	lw	s0,8(sp)
    264a:	40b2                	lw	ra,12(sp)
    264c:	8526                	mv	a0,s1
    264e:	4492                	lw	s1,4(sp)
    2650:	0141                	addi	sp,sp,16
    2652:	b1fd                	j	0x2340

Disassembly of section .text.mt25ql256aba_dual_output_fast_read:

00002654 <.text.mt25ql256aba_dual_output_fast_read>:
    2654:	fff60793          	addi	a5,a2,-1
    2658:	80001737          	lui	a4,0x80001
    265c:	1141                	addi	sp,sp,-16
    265e:	a3b70713          	addi	a4,a4,-1477 # 0x80000a3b
    2662:	07c2                	slli	a5,a5,0x10
    2664:	c422                	sw	s0,8(sp)
    2666:	c226                	sw	s1,4(sp)
    2668:	c606                	sw	ra,12(sp)
    266a:	97ba                	add	a5,a5,a4
    266c:	6729                	lui	a4,0xa
    266e:	c348                	sw	a0,4(a4)
    2670:	6729                	lui	a4,0xa
    2672:	c31c                	sw	a5,0(a4)
    2674:	84ae                	mv	s1,a1
    2676:	8432                	mv	s0,a2
    2678:	316d                	jal	0x2322
    267a:	85a2                	mv	a1,s0
    267c:	4422                	lw	s0,8(sp)
    267e:	40b2                	lw	ra,12(sp)
    2680:	8526                	mv	a0,s1
    2682:	4492                	lw	s1,4(sp)
    2684:	0141                	addi	sp,sp,16
    2686:	b96d                	j	0x2340

Disassembly of section .text.mt25ql256aba_quad_output_fast_read:

00002688 <.text.mt25ql256aba_quad_output_fast_read>:
    2688:	fff60793          	addi	a5,a2,-1
    268c:	80001737          	lui	a4,0x80001
    2690:	1141                	addi	sp,sp,-16
    2692:	b6b70713          	addi	a4,a4,-1173 # 0x80000b6b
    2696:	07c2                	slli	a5,a5,0x10
    2698:	c422                	sw	s0,8(sp)
    269a:	c226                	sw	s1,4(sp)
    269c:	c606                	sw	ra,12(sp)
    269e:	97ba                	add	a5,a5,a4
    26a0:	6729                	lui	a4,0xa
    26a2:	c348                	sw	a0,4(a4)
    26a4:	6729                	lui	a4,0xa
    26a6:	c31c                	sw	a5,0(a4)
    26a8:	84ae                	mv	s1,a1
    26aa:	8432                	mv	s0,a2
    26ac:	399d                	jal	0x2322
    26ae:	85a2                	mv	a1,s0
    26b0:	4422                	lw	s0,8(sp)
    26b2:	40b2                	lw	ra,12(sp)
    26b4:	8526                	mv	a0,s1
    26b6:	4492                	lw	s1,4(sp)
    26b8:	0141                	addi	sp,sp,16
    26ba:	b159                	j	0x2340

Disassembly of section .text.mt25ql256aba_page_program:

000026bc <.text.mt25ql256aba_page_program>:
    26bc:	1141                	addi	sp,sp,-16
    26be:	c422                	sw	s0,8(sp)
    26c0:	800007b7          	lui	a5,0x80000
    26c4:	fff60413          	addi	s0,a2,-1
    26c8:	50278793          	addi	a5,a5,1282 # 0x80000502
    26cc:	0442                	slli	s0,s0,0x10
    26ce:	c606                	sw	ra,12(sp)
    26d0:	872a                	mv	a4,a0
    26d2:	943e                	add	s0,s0,a5
    26d4:	67a9                	lui	a5,0xa
    26d6:	852e                	mv	a0,a1
    26d8:	c3d8                	sw	a4,4(a5)
    26da:	85b2                	mv	a1,a2
    26dc:	3151                	jal	0x2360
    26de:	67a9                	lui	a5,0xa
    26e0:	c380                	sw	s0,0(a5)
    26e2:	4422                	lw	s0,8(sp)
    26e4:	40b2                	lw	ra,12(sp)
    26e6:	0141                	addi	sp,sp,16
    26e8:	b92d                	j	0x2322

Disassembly of section .text.mt25ql256aba_sector_erase:

000026ea <.text.mt25ql256aba_sector_erase>:
    26ea:	15fd                	addi	a1,a1,-1
    26ec:	800007b7          	lui	a5,0x80000
    26f0:	5d878793          	addi	a5,a5,1496 # 0x800005d8
    26f4:	05c2                	slli	a1,a1,0x10
    26f6:	95be                	add	a1,a1,a5
    26f8:	67a9                	lui	a5,0xa
    26fa:	c788                	sw	a0,8(a5)
    26fc:	67a9                	lui	a5,0xa
    26fe:	c38c                	sw	a1,0(a5)
    2700:	b10d                	j	0x2322

Disassembly of section .text.mt25ql256aba_read_id:

00002702 <.text.mt25ql256aba_read_id>:
    2702:	b94d                	j	0x23b4

Disassembly of section .text.mt25ql256aba_read_status_register:

00002704 <.text.mt25ql256aba_read_status_register>:
    2704:	b9e1                	j	0x23dc

Disassembly of section .text.mt25ql256aba_read_flag_status_register:

00002706 <.text.mt25ql256aba_read_flag_status_register>:
    2706:	1141                	addi	sp,sp,-16
    2708:	800007b7          	lui	a5,0x80000
    270c:	c606                	sw	ra,12(sp)
    270e:	17078793          	addi	a5,a5,368 # 0x80000170
    2712:	6729                	lui	a4,0xa
    2714:	c31c                	sw	a5,0(a4)
    2716:	3131                	jal	0x2322
    2718:	67a9                	lui	a5,0xa
    271a:	4788                	lw	a0,8(a5)
    271c:	40b2                	lw	ra,12(sp)
    271e:	0ff57513          	zext.b	a0,a0
    2722:	0141                	addi	sp,sp,16
    2724:	8082                	ret

Disassembly of section .text.mt25ql256aba_read_nonvolatile_configuration_register:

00002726 <.text.mt25ql256aba_read_nonvolatile_configuration_register>:
    2726:	1141                	addi	sp,sp,-16
    2728:	800007b7          	lui	a5,0x80000
    272c:	c606                	sw	ra,12(sp)
    272e:	1b578793          	addi	a5,a5,437 # 0x800001b5
    2732:	6729                	lui	a4,0xa
    2734:	c31c                	sw	a5,0(a4)
    2736:	36f5                	jal	0x2322
    2738:	67a9                	lui	a5,0xa
    273a:	4788                	lw	a0,8(a5)
    273c:	40b2                	lw	ra,12(sp)
    273e:	0ff57513          	zext.b	a0,a0
    2742:	0141                	addi	sp,sp,16
    2744:	8082                	ret

Disassembly of section .text.mt25ql256aba_read_volatile_configuration_register:

00002746 <.text.mt25ql256aba_read_volatile_configuration_register>:
    2746:	1141                	addi	sp,sp,-16
    2748:	800007b7          	lui	a5,0x80000
    274c:	c606                	sw	ra,12(sp)
    274e:	18578793          	addi	a5,a5,389 # 0x80000185
    2752:	6729                	lui	a4,0xa
    2754:	c31c                	sw	a5,0(a4)
    2756:	36f1                	jal	0x2322
    2758:	67a9                	lui	a5,0xa
    275a:	4788                	lw	a0,8(a5)
    275c:	40b2                	lw	ra,12(sp)
    275e:	0ff57513          	zext.b	a0,a0
    2762:	0141                	addi	sp,sp,16
    2764:	8082                	ret

Disassembly of section .text.mt25ql256aba_write_status_register:

00002766 <.text.mt25ql256aba_write_status_register>:
    2766:	67a9                	lui	a5,0xa
    2768:	c788                	sw	a0,8(a5)
    276a:	800007b7          	lui	a5,0x80000
    276e:	50178793          	addi	a5,a5,1281 # 0x80000501
    2772:	6729                	lui	a4,0xa
    2774:	c31c                	sw	a5,0(a4)
    2776:	b675                	j	0x2322

Disassembly of section .text.mt25ql256aba_wrdi:

00002778 <.text.mt25ql256aba_wrdi>:
    2778:	b911                	j	0x238c

Disassembly of section .text.mt25ql256aba_wren:

0000277a <.text.mt25ql256aba_wren>:
    277a:	b119                	j	0x2380

Disassembly of section .text.mt25ql256aba_reset_enable:

0000277c <.text.mt25ql256aba_reset_enable>:
    277c:	800007b7          	lui	a5,0x80000
    2780:	06678793          	addi	a5,a5,102 # 0x80000066
    2784:	6729                	lui	a4,0xa
    2786:	c31c                	sw	a5,0(a4)
    2788:	be69                	j	0x2322

Disassembly of section .text.mt25ql256aba_reset_memory:

0000278a <.text.mt25ql256aba_reset_memory>:
    278a:	800007b7          	lui	a5,0x80000
    278e:	09978793          	addi	a5,a5,153 # 0x80000099
    2792:	6729                	lui	a4,0xa
    2794:	c31c                	sw	a5,0(a4)
    2796:	b671                	j	0x2322

Disassembly of section .text.timer_counter:

00002798 <.text.timer_counter>:
    2798:	67b1                	lui	a5,0xc
    279a:	4bc8                	lw	a0,20(a5)
    279c:	8082                	ret

Disassembly of section .text.timer_event:

0000279e <.text.timer_event>:
    279e:	67b1                	lui	a5,0xc
    27a0:	4f88                	lw	a0,24(a5)
    27a2:	8082                	ret

Disassembly of section .text.timer_clear:

000027a4 <.text.timer_clear>:
    27a4:	67b1                	lui	a5,0xc
    27a6:	4705                	li	a4,1
    27a8:	c798                	sw	a4,8(a5)
    27aa:	67b1                	lui	a5,0xc
    27ac:	cfd8                	sw	a4,28(a5)
    27ae:	8082                	ret

Disassembly of section .text.timer_enabled:

000027b0 <.text.timer_enabled>:
    27b0:	67b1                	lui	a5,0xc
    27b2:	c7c8                	sw	a0,12(a5)
    27b4:	8082                	ret

Disassembly of section .text.timer_conf:

000027b6 <.text.timer_conf>:
    27b6:	1141                	addi	sp,sp,-16
    27b8:	c606                	sw	ra,12(sp)
    27ba:	67b1                	lui	a5,0xc
    27bc:	c388                	sw	a0,0(a5)
    27be:	c3cc                	sw	a1,4(a5)
    27c0:	67b1                	lui	a5,0xc
    27c2:	cb90                	sw	a2,16(a5)
    27c4:	08000613          	li	a2,128
    27c8:	6589                	lui	a1,0x2
    27ca:	20058593          	addi	a1,a1,512 # 0x2200
    27ce:	30559073          	csrw	mtvec,a1
    27d2:	30046073          	csrsi	mstatus,8
    27d6:	30462073          	csrs	mie,a2
    27da:	37e9                	jal	0x27a4
    27dc:	40b2                	lw	ra,12(sp)
    27de:	67b1                	lui	a5,0xc
    27e0:	4705                	li	a4,1
    27e2:	c7d8                	sw	a4,12(a5)
    27e4:	0141                	addi	sp,sp,16
    27e6:	8082                	ret

Disassembly of section .text.usb_connected:

000027e8 <.text.usb_connected>:
    27e8:	67b9                	lui	a5,0xe
    27ea:	47c8                	lw	a0,12(a5)
    27ec:	8905                	andi	a0,a0,1
    27ee:	8082                	ret

Disassembly of section .text.usb_conf:

000027f0 <.text.usb_conf>:
    27f0:	67b9                	lui	a5,0xe
    27f2:	c388                	sw	a0,0(a5)
    27f4:	8082                	ret

Disassembly of section .text.usb_rw:

000027f6 <.text.usb_rw>:
    27f6:	67b9                	lui	a5,0xe
    27f8:	c788                	sw	a0,8(a5)
    27fa:	67b9                	lui	a5,0xe
    27fc:	07b1                	addi	a5,a5,12 # 0xe00c
    27fe:	4398                	lw	a4,0(a5)
    2800:	8b09                	andi	a4,a4,2
    2802:	ff75                	bnez	a4,0x27fe
    2804:	4705                	li	a4,1
    2806:	c398                	sw	a4,0(a5)
    2808:	67b9                	lui	a5,0xe
    280a:	43c8                	lw	a0,4(a5)
    280c:	8082                	ret

Disassembly of section .text.gpio_write:

0000280e <.text.gpio_write>:
    280e:	67c1                	lui	a5,0x10
    2810:	c3c8                	sw	a0,4(a5)
    2812:	8082                	ret

Disassembly of section .text.gpio_read:

00002814 <.text.gpio_read>:
    2814:	67c1                	lui	a5,0x10
    2816:	4388                	lw	a0,0(a5)
    2818:	0542                	slli	a0,a0,0x10
    281a:	8141                	srli	a0,a0,0x10
    281c:	8082                	ret

Disassembly of section .text.instr_mem_write:

0000281e <.text.instr_mem_write>:
    281e:	050a                	slli	a0,a0,0x2
    2820:	6791                	lui	a5,0x4
    2822:	97aa                	add	a5,a5,a0
    2824:	c38c                	sw	a1,0(a5)
    2826:	8082                	ret

Disassembly of section .text.uart_main:

00002828 <.text.uart_main>:
    2828:	1141                	addi	sp,sp,-16
    282a:	6785                	lui	a5,0x1
    282c:	c422                	sw	s0,8(sp)
    282e:	c226                	sw	s1,4(sp)
    2830:	c606                	sw	ra,12(sp)
    2832:	45778793          	addi	a5,a5,1111 # 0x1457
    2836:	6719                	lui	a4,0x6
    2838:	c31c                	sw	a5,0(a4)
    283a:	6441                	lui	s0,0x10
    283c:	6799                	lui	a5,0x6
    283e:	0007a223          	sw	zero,4(a5) # 0x6004
    2842:	64c1                	lui	s1,0x10
    2844:	0411                	addi	s0,s0,4 # 0x10004
    2846:	34ad                	jal	0x22b0
    2848:	c008                	sw	a0,0(s0)
    284a:	4088                	lw	a0,0(s1)
    284c:	0ff57513          	zext.b	a0,a0
    2850:	3cad                	jal	0x22ca
    2852:	bfd5                	j	0x2846

Disassembly of section .text.uart_interrupt:

00002854 <.text.uart_interrupt>:
    2854:	8082                	ret

Disassembly of section .text.i2c_main:

00002856 <.text.i2c_main>:
    2856:	1141                	addi	sp,sp,-16
    2858:	c422                	sw	s0,8(sp)
    285a:	c226                	sw	s1,4(sp)
    285c:	c04a                	sw	s2,0(sp)
    285e:	c606                	sw	ra,12(sp)
    2860:	67a1                	lui	a5,0x8
    2862:	07b00713          	li	a4,123
    2866:	c3d8                	sw	a4,4(a5)
    2868:	4605                	li	a2,1
    286a:	4581                	li	a1,0
    286c:	557d                	li	a0,-1
    286e:	64c1                	lui	s1,0x10
    2870:	6441                	lui	s0,0x10
    2872:	3791                	jal	0x27b6
    2874:	14fd                	addi	s1,s1,-1 # 0xffff
    2876:	0411                	addi	s0,s0,4 # 0x10004
    2878:	05002783          	lw	a5,80(zero) # 0x50
    287c:	dff5                	beqz	a5,0x2878
    287e:	4509                	li	a0,2
    2880:	3459                	jal	0x2306
    2882:	8d65                	and	a0,a0,s1
    2884:	c008                	sw	a0,0(s0)
    2886:	04002823          	sw	zero,80(zero) # 0x50
    288a:	b7fd                	j	0x2878

Disassembly of section .text.i2c_interrupt:

0000288c <.text.i2c_interrupt>:
    288c:	4705                	li	a4,1
    288e:	04e02823          	sw	a4,80(zero) # 0x50
    2892:	8082                	ret

Disassembly of section .text.qspi_main:

00002894 <.text.qspi_main>:
    2894:	a001                	j	0x2894

Disassembly of section .text.qspi_interrupt:

00002896 <.text.qspi_interrupt>:
    2896:	8082                	ret

Disassembly of section .text.timer_main:

00002898 <.text.timer_main>:
    2898:	1101                	addi	sp,sp,-32
    289a:	653d                	lui	a0,0xf
    289c:	cc22                	sw	s0,24(sp)
    289e:	c84a                	sw	s2,16(sp)
    28a0:	4605                	li	a2,1
    28a2:	4581                	li	a1,0
    28a4:	a5f50513          	addi	a0,a0,-1441 # 0xea5f
    28a8:	6441                	lui	s0,0x10
    28aa:	6931                	lui	s2,0xc
    28ac:	ca26                	sw	s1,20(sp)
    28ae:	c64e                	sw	s3,12(sp)
    28b0:	ce06                	sw	ra,28(sp)
    28b2:	3711                	jal	0x27b6
    28b4:	fff40493          	addi	s1,s0,-1 # 0xffff
    28b8:	0911                	addi	s2,s2,4 # 0xc004
    28ba:	04c02703          	lw	a4,76(zero) # 0x4c
    28be:	401c                	lw	a5,0(s0)
    28c0:	8fe5                	and	a5,a5,s1
    28c2:	fee78ee3          	beq	a5,a4,0x28be
    28c6:	401c                	lw	a5,0(s0)
    28c8:	8fe5                	and	a5,a5,s1
    28ca:	00f92023          	sw	a5,0(s2)
    28ce:	3dd9                	jal	0x27a4
    28d0:	401c                	lw	a5,0(s0)
    28d2:	8fe5                	and	a5,a5,s1
    28d4:	04f02623          	sw	a5,76(zero) # 0x4c
    28d8:	b7cd                	j	0x28ba

Disassembly of section .text.timer_interrupt:

000028da <.text.timer_interrupt>:
    28da:	0f405683          	lhu	a3,244(zero) # 0xf4
    28de:	6741                	lui	a4,0x10
    28e0:	c354                	sw	a3,4(a4)
    28e2:	0f402703          	lw	a4,244(zero) # 0xf4
    28e6:	0705                	addi	a4,a4,1 # 0x10001
    28e8:	0ee02a23          	sw	a4,244(zero) # 0xf4
    28ec:	8082                	ret

Disassembly of section .text.gpio_main:

000028ee <.text.gpio_main>:
    28ee:	66c1                	lui	a3,0x10
    28f0:	67c1                	lui	a5,0x10
    28f2:	fff68613          	addi	a2,a3,-1 # 0xffff
    28f6:	0791                	addi	a5,a5,4 # 0x10004
    28f8:	4298                	lw	a4,0(a3)
    28fa:	8f71                	and	a4,a4,a2
    28fc:	c398                	sw	a4,0(a5)
    28fe:	bfed                	j	0x28f8

Disassembly of section .text.gpio_interrupt:

00002900 <.text.gpio_interrupt>:
    2900:	8082                	ret

Disassembly of section .text.usb_main:

00002902 <.text.usb_main>:
    2902:	7179                	addi	sp,sp,-48
    2904:	d04a                	sw	s2,32(sp)
    2906:	4605                	li	a2,1
    2908:	4581                	li	a1,0
    290a:	557d                	li	a0,-1
    290c:	6939                	lui	s2,0xe
    290e:	d422                	sw	s0,40(sp)
    2910:	d226                	sw	s1,36(sp)
    2912:	ce4e                	sw	s3,28(sp)
    2914:	cc52                	sw	s4,24(sp)
    2916:	ca56                	sw	s5,20(sp)
    2918:	d606                	sw	ra,44(sp)
    291a:	c85a                	sw	s6,16(sp)
    291c:	c65e                	sw	s7,12(sp)
    291e:	c462                	sw	s8,8(sp)
    2920:	c266                	sw	s9,4(sp)
    2922:	3d51                	jal	0x27b6
    2924:	4a85                	li	s5,1
    2926:	0931                	addi	s2,s2,12 # 0xe00c
    2928:	6741                	lui	a4,0x10
    292a:	6641                	lui	a2,0x10
    292c:	0711                	addi	a4,a4,4 # 0x10004
    292e:	4591                	li	a1,4
    2930:	421c                	lw	a5,0(a2)
    2932:	4681                	li	a3,0
    2934:	4501                	li	a0,0
    2936:	0ff7f793          	zext.b	a5,a5
    293a:	0ef02823          	sw	a5,240(zero) # 0xf0
    293e:	00168813          	addi	a6,a3,1
    2942:	efa5                	bnez	a5,0x29ba
    2944:	ed3d                	bnez	a0,0x29c2
    2946:	0e002423          	sw	zero,232(zero) # 0xe8
    294a:	0e802783          	lw	a5,232(zero) # 0xe8
    294e:	0e402683          	lw	a3,228(zero) # 0xe4
    2952:	00d78463          	beq	a5,a3,0x295a
    2956:	66b9                	lui	a3,0xe
    2958:	c29c                	sw	a5,0(a3)
    295a:	0e802783          	lw	a5,232(zero) # 0xe8
    295e:	0ef02223          	sw	a5,228(zero) # 0xe4
    2962:	00092683          	lw	a3,0(s2)
    2966:	07a2                	slli	a5,a5,0x8
    2968:	8a85                	andi	a3,a3,1
    296a:	97b6                	add	a5,a5,a3
    296c:	07c2                	slli	a5,a5,0x10
    296e:	83c1                	srli	a5,a5,0x10
    2970:	c31c                	sw	a5,0(a4)
    2972:	0e802783          	lw	a5,232(zero) # 0xe8
    2976:	06b78463          	beq	a5,a1,0x29de
    297a:	04f5e963          	bltu	a1,a5,0x29cc
    297e:	05578a63          	beq	a5,s5,0x29d2
    2982:	4689                	li	a3,2
    2984:	fad796e3          	bne	a5,a3,0x2930
    2988:	4501                	li	a0,0
    298a:	35b5                	jal	0x27f6
    298c:	4b81                	li	s7,0
    298e:	14000c13          	li	s8,320
    2992:	0b400c93          	li	s9,180
    2996:	4b01                	li	s6,0
    2998:	0ec02503          	lw	a0,236(zero) # 0xec
    299c:	955e                	add	a0,a0,s7
    299e:	955a                	add	a0,a0,s6
    29a0:	0b05                	addi	s6,s6,1
    29a2:	3d91                	jal	0x27f6
    29a4:	ff8b1ae3          	bne	s6,s8,0x2998
    29a8:	0b85                	addi	s7,s7,1
    29aa:	ff9b96e3          	bne	s7,s9,0x2996
    29ae:	0ec02783          	lw	a5,236(zero) # 0xec
    29b2:	0785                	addi	a5,a5,1
    29b4:	0ef02623          	sw	a5,236(zero) # 0xec
    29b8:	bf85                	j	0x2928
    29ba:	8385                	srli	a5,a5,0x1
    29bc:	86c2                	mv	a3,a6
    29be:	4505                	li	a0,1
    29c0:	bfbd                	j	0x293e
    29c2:	0ed02423          	sw	a3,232(zero) # 0xe8
    29c6:	0e002823          	sw	zero,240(zero) # 0xf0
    29ca:	b741                	j	0x294a
    29cc:	4695                	li	a3,5
    29ce:	f6d791e3          	bne	a5,a3,0x2930
    29d2:	0f002503          	lw	a0,240(zero) # 0xf0
    29d6:	3505                	jal	0x27f6
    29d8:	0ea02823          	sw	a0,240(zero) # 0xf0
    29dc:	b7b1                	j	0x2928
    29de:	421c                	lw	a5,0(a2)
    29e0:	07c2                	slli	a5,a5,0x10
    29e2:	83c1                	srli	a5,a5,0x10
    29e4:	83a1                	srli	a5,a5,0x8
    29e6:	0ef02823          	sw	a5,240(zero) # 0xf0
    29ea:	bf3d                	j	0x2928

Disassembly of section .text.usb_interrupt:

000029ec <.text.usb_interrupt>:
    29ec:	0e802703          	lw	a4,232(zero) # 0xe8
    29f0:	4791                	li	a5,4
    29f2:	00f71563          	bne	a4,a5,0x29fc
    29f6:	0f002503          	lw	a0,240(zero) # 0xf0
    29fa:	bbf5                	j	0x27f6
    29fc:	8082                	ret

Disassembly of section .text.data_mem_main:

000029fe <.text.data_mem_main>:
    29fe:	66c1                	lui	a3,0x10
    2a00:	6741                	lui	a4,0x10
    2a02:	fff68613          	addi	a2,a3,-1 # 0xffff
    2a06:	0711                	addi	a4,a4,4 # 0x10004
    2a08:	429c                	lw	a5,0(a3)
    2a0a:	8ff1                	and	a5,a5,a2
    2a0c:	0786                	slli	a5,a5,0x1
    2a0e:	0007d783          	lhu	a5,0(a5)
    2a12:	c31c                	sw	a5,0(a4)
    2a14:	bfd5                	j	0x2a08
