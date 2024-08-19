
a.out:     file format elf32-littleriscv


Disassembly of section .text:

00002000 <.text>:
    2000:	04805703          	lhu	a4,72(zero) # 0x48
    2004:	67c1                	lui	a5,0x10
    2006:	4605                	li	a2,1
    2008:	0742                	slli	a4,a4,0x10
    200a:	8341                	srli	a4,a4,0x10
    200c:	c3d8                	sw	a4,4(a5)
    200e:	4581                	li	a1,0
    2010:	557d                	li	a0,-1
    2012:	7e0000ef          	jal	0x27f2
    2016:	66c1                	lui	a3,0x10
    2018:	4298                	lw	a4,0(a3)
    201a:	0742                	slli	a4,a4,0x10
    201c:	8341                	srli	a4,a4,0x10
    201e:	10e01023          	sh	a4,256(zero) # 0x100
    2022:	10005703          	lhu	a4,256(zero) # 0x100
    2026:	db6d                	beqz	a4,0x2018
    2028:	6741                	lui	a4,0x10
    202a:	00072223          	sw	zero,4(a4) # 0x10004
    202e:	6731                	lui	a4,0xc
    2030:	00072623          	sw	zero,12(a4) # 0xc00c
    2034:	66c1                	lui	a3,0x10
    2036:	4298                	lw	a4,0(a3)
    2038:	0742                	slli	a4,a4,0x10
    203a:	8341                	srli	a4,a4,0x10
    203c:	ff6d                	bnez	a4,0x2036
    203e:	10005683          	lhu	a3,256(zero) # 0x100
    2042:	4721                	li	a4,8
    2044:	01069793          	slli	a5,a3,0x10
    2048:	83c1                	srli	a5,a5,0x10
    204a:	02e68e63          	beq	a3,a4,0x2086
    204e:	00f76d63          	bltu	a4,a5,0x2068
    2052:	4709                	li	a4,2
    2054:	02e78563          	beq	a5,a4,0x207e
    2058:	4711                	li	a4,4
    205a:	02e78463          	beq	a5,a4,0x2082
    205e:	4705                	li	a4,1
    2060:	00e78d63          	beq	a5,a4,0x207a
    2064:	325000ef          	jal	0x2b88
    2068:	4741                	li	a4,16
    206a:	02e78063          	beq	a5,a4,0x208a
    206e:	02000713          	li	a4,32
    2072:	fee799e3          	bne	a5,a4,0x2064
    2076:	1b5000ef          	jal	0x2a2a
    207a:	021000ef          	jal	0x289a
    207e:	081000ef          	jal	0x28fe
    2082:	0bb000ef          	jal	0x293c
    2086:	13b000ef          	jal	0x29c0
    208a:	18d000ef          	jal	0x2a16
	...
    21fe:	0000                	unimp
    2200:	7139                	addi	sp,sp,-64
    2202:	cc3e                	sw	a5,24(sp)
    2204:	d036                	sw	a3,32(sp)
    2206:	10005683          	lhu	a3,256(zero) # 0x100
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
    2228:	06e68863          	beq	a3,a4,0x2298
    222c:	01069793          	slli	a5,a3,0x10
    2230:	83c1                	srli	a5,a5,0x10
    2232:	02f76963          	bltu	a4,a5,0x2264
    2236:	cf95                	beqz	a5,0x2272
    2238:	4709                	li	a4,2
    223a:	04e78b63          	beq	a5,a4,0x2290
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
    226c:	0b3000ef          	jal	0x2b1e
    2270:	b7f9                	j	0x223e
    2272:	04805783          	lhu	a5,72(zero) # 0x48
    2276:	fff7c793          	not	a5,a5
    227a:	07c2                	slli	a5,a5,0x10
    227c:	83c1                	srli	a5,a5,0x10
    227e:	04f01423          	sh	a5,72(zero) # 0x48
    2282:	04805703          	lhu	a4,72(zero) # 0x48
    2286:	67c1                	lui	a5,0x10
    2288:	0742                	slli	a4,a4,0x10
    228a:	8341                	srli	a4,a4,0x10
    228c:	c3d8                	sw	a4,4(a5)
    228e:	bf45                	j	0x223e
    2290:	4705                	li	a4,1
    2292:	04e02823          	sw	a4,80(zero) # 0x50
    2296:	b765                	j	0x223e
    2298:	76a000ef          	jal	0x2a02
    229c:	b74d                	j	0x223e

Disassembly of section .text.uart_conf:

0000229e <.text.uart_conf>:
    229e:	039387b7          	lui	a5,0x3938
    22a2:	70078793          	addi	a5,a5,1792 # 0x3938700
    22a6:	02a7d7b3          	divu	a5,a5,a0
    22aa:	6719                	lui	a4,0x6
    22ac:	17fd                	addi	a5,a5,-1
    22ae:	c31c                	sw	a5,0(a4)
    22b0:	6799                	lui	a5,0x6
    22b2:	c3cc                	sw	a1,4(a5)
    22b4:	8082                	ret

Disassembly of section .text.uart_read:

000022b6 <.text.uart_read>:
    22b6:	6799                	lui	a5,0x6
    22b8:	07c1                	addi	a5,a5,16 # 0x6010
    22ba:	4709                	li	a4,2
    22bc:	4394                	lw	a3,0(a5)
    22be:	fee69fe3          	bne	a3,a4,0x22bc
    22c2:	6719                	lui	a4,0x6
    22c4:	4708                	lw	a0,8(a4)
    22c6:	0007a023          	sw	zero,0(a5)
    22ca:	0ff57513          	zext.b	a0,a0
    22ce:	8082                	ret

Disassembly of section .text.uart_write:

000022d0 <.text.uart_write>:
    22d0:	6799                	lui	a5,0x6
    22d2:	c7c8                	sw	a0,12(a5)
    22d4:	6799                	lui	a5,0x6
    22d6:	07c1                	addi	a5,a5,16 # 0x6010
    22d8:	4705                	li	a4,1
    22da:	c398                	sw	a4,0(a5)
    22dc:	4398                	lw	a4,0(a5)
    22de:	8b11                	andi	a4,a4,4
    22e0:	df75                	beqz	a4,0x22dc
    22e2:	4398                	lw	a4,0(a5)
    22e4:	8b09                	andi	a4,a4,2
    22e6:	c398                	sw	a4,0(a5)
    22e8:	8082                	ret

Disassembly of section .text.i2c_conf:

000022ea <.text.i2c_conf>:
    22ea:	67a1                	lui	a5,0x8
    22ec:	c3c8                	sw	a0,4(a5)
    22ee:	8082                	ret

Disassembly of section .text.i2c_write:

000022f0 <.text.i2c_write>:
    22f0:	67a1                	lui	a5,0x8
    22f2:	c38c                	sw	a1,0(a5)
    22f4:	c7c8                	sw	a0,12(a5)
    22f6:	67a1                	lui	a5,0x8
    22f8:	07c1                	addi	a5,a5,16 # 0x8010
    22fa:	4705                	li	a4,1
    22fc:	c398                	sw	a4,0(a5)
    22fe:	4398                	lw	a4,0(a5)
    2300:	8b09                	andi	a4,a4,2
    2302:	df75                	beqz	a4,0x22fe
    2304:	4398                	lw	a4,0(a5)
    2306:	8b31                	andi	a4,a4,12
    2308:	c398                	sw	a4,0(a5)
    230a:	8082                	ret

Disassembly of section .text.i2c_read:

0000230c <.text.i2c_read>:
    230c:	67a1                	lui	a5,0x8
    230e:	c388                	sw	a0,0(a5)
    2310:	4711                	li	a4,4
    2312:	07c1                	addi	a5,a5,16 # 0x8010
    2314:	c398                	sw	a4,0(a5)
    2316:	4398                	lw	a4,0(a5)
    2318:	8b21                	andi	a4,a4,8
    231a:	df75                	beqz	a4,0x2316
    231c:	4398                	lw	a4,0(a5)
    231e:	8b0d                	andi	a4,a4,3
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

Disassembly of section .text.qspi_read_array:

00002346 <.text.qspi_read_array>:
    2346:	058d                	addi	a1,a1,3
    2348:	6729                	lui	a4,0xa
    234a:	99f1                	andi	a1,a1,-4
    234c:	4781                	li	a5,0
    234e:	0721                	addi	a4,a4,8 # 0xa008
    2350:	00b79363          	bne	a5,a1,0x2356
    2354:	8082                	ret
    2356:	00e786b3          	add	a3,a5,a4
    235a:	4290                	lw	a2,0(a3)
    235c:	00f506b3          	add	a3,a0,a5
    2360:	0791                	addi	a5,a5,4
    2362:	c290                	sw	a2,0(a3)
    2364:	b7f5                	j	0x2350

Disassembly of section .text.qspi_write_array:

00002366 <.text.qspi_write_array>:
    2366:	058d                	addi	a1,a1,3
    2368:	6729                	lui	a4,0xa
    236a:	99f1                	andi	a1,a1,-4
    236c:	4781                	li	a5,0
    236e:	0721                	addi	a4,a4,8 # 0xa008
    2370:	00b79363          	bne	a5,a1,0x2376
    2374:	8082                	ret
    2376:	00f50633          	add	a2,a0,a5
    237a:	4210                	lw	a2,0(a2)
    237c:	00e786b3          	add	a3,a5,a4
    2380:	0791                	addi	a5,a5,4
    2382:	c290                	sw	a2,0(a3)
    2384:	b7f5                	j	0x2370

Disassembly of section .text.s25fl128s_wren:

00002386 <.text.s25fl128s_wren>:
    2386:	800007b7          	lui	a5,0x80000
    238a:	0799                	addi	a5,a5,6 # 0x80000006
    238c:	6729                	lui	a4,0xa
    238e:	c31c                	sw	a5,0(a4)
    2390:	bf61                	j	0x2328

Disassembly of section .text.s25fl128s_wrdi:

00002392 <.text.s25fl128s_wrdi>:
    2392:	800007b7          	lui	a5,0x80000
    2396:	0791                	addi	a5,a5,4 # 0x80000004
    2398:	6729                	lui	a4,0xa
    239a:	c31c                	sw	a5,0(a4)
    239c:	b771                	j	0x2328

Disassembly of section .text.s25fl128s_clsr:

0000239e <.text.s25fl128s_clsr>:
    239e:	800007b7          	lui	a5,0x80000
    23a2:	03078793          	addi	a5,a5,48 # 0x80000030
    23a6:	6729                	lui	a4,0xa
    23a8:	c31c                	sw	a5,0(a4)
    23aa:	bfbd                	j	0x2328

Disassembly of section .text.s25fl128s_reset:

000023ac <.text.s25fl128s_reset>:
    23ac:	800007b7          	lui	a5,0x80000
    23b0:	0f078793          	addi	a5,a5,240 # 0x800000f0
    23b4:	6729                	lui	a4,0xa
    23b6:	c31c                	sw	a5,0(a4)
    23b8:	bf85                	j	0x2328

Disassembly of section .text.s25fl128s_rdid:

000023ba <.text.s25fl128s_rdid>:
    23ba:	fff58793          	addi	a5,a1,-1
    23be:	80000737          	lui	a4,0x80000
    23c2:	1101                	addi	sp,sp,-32
    23c4:	19f70713          	addi	a4,a4,415 # 0x8000019f
    23c8:	07c2                	slli	a5,a5,0x10
    23ca:	ce06                	sw	ra,28(sp)
    23cc:	c62a                	sw	a0,12(sp)
    23ce:	c42e                	sw	a1,8(sp)
    23d0:	97ba                	add	a5,a5,a4
    23d2:	6729                	lui	a4,0xa
    23d4:	c31c                	sw	a5,0(a4)
    23d6:	3f89                	jal	0x2328
    23d8:	45a2                	lw	a1,8(sp)
    23da:	4532                	lw	a0,12(sp)
    23dc:	40f2                	lw	ra,28(sp)
    23de:	6105                	addi	sp,sp,32
    23e0:	b79d                	j	0x2346

Disassembly of section .text.s25fl128s_rdsr1:

000023e2 <.text.s25fl128s_rdsr1>:
    23e2:	1141                	addi	sp,sp,-16
    23e4:	800007b7          	lui	a5,0x80000
    23e8:	c606                	sw	ra,12(sp)
    23ea:	10578793          	addi	a5,a5,261 # 0x80000105
    23ee:	6729                	lui	a4,0xa
    23f0:	c31c                	sw	a5,0(a4)
    23f2:	3f1d                	jal	0x2328
    23f4:	67a9                	lui	a5,0xa
    23f6:	4788                	lw	a0,8(a5)
    23f8:	40b2                	lw	ra,12(sp)
    23fa:	0ff57513          	zext.b	a0,a0
    23fe:	0141                	addi	sp,sp,16
    2400:	8082                	ret

Disassembly of section .text.s25fl128s_rdsr2:

00002402 <.text.s25fl128s_rdsr2>:
    2402:	1141                	addi	sp,sp,-16
    2404:	800007b7          	lui	a5,0x80000
    2408:	c606                	sw	ra,12(sp)
    240a:	10778793          	addi	a5,a5,263 # 0x80000107
    240e:	6729                	lui	a4,0xa
    2410:	c31c                	sw	a5,0(a4)
    2412:	3f19                	jal	0x2328
    2414:	67a9                	lui	a5,0xa
    2416:	4788                	lw	a0,8(a5)
    2418:	40b2                	lw	ra,12(sp)
    241a:	0ff57513          	zext.b	a0,a0
    241e:	0141                	addi	sp,sp,16
    2420:	8082                	ret

Disassembly of section .text.s25fl128s_rdcr:

00002422 <.text.s25fl128s_rdcr>:
    2422:	1141                	addi	sp,sp,-16
    2424:	800007b7          	lui	a5,0x80000
    2428:	c606                	sw	ra,12(sp)
    242a:	13578793          	addi	a5,a5,309 # 0x80000135
    242e:	6729                	lui	a4,0xa
    2430:	c31c                	sw	a5,0(a4)
    2432:	3ddd                	jal	0x2328
    2434:	67a9                	lui	a5,0xa
    2436:	4788                	lw	a0,8(a5)
    2438:	40b2                	lw	ra,12(sp)
    243a:	0ff57513          	zext.b	a0,a0
    243e:	0141                	addi	sp,sp,16
    2440:	8082                	ret

Disassembly of section .text.s25fl128s_read_id:

00002442 <.text.s25fl128s_read_id>:
    2442:	1141                	addi	sp,sp,-16
    2444:	c606                	sw	ra,12(sp)
    2446:	67a9                	lui	a5,0xa
    2448:	c3c8                	sw	a0,4(a5)
    244a:	800127b7          	lui	a5,0x80012
    244e:	99078793          	addi	a5,a5,-1648 # 0x80011990
    2452:	6729                	lui	a4,0xa
    2454:	c31c                	sw	a5,0(a4)
    2456:	3dc9                	jal	0x2328
    2458:	67a9                	lui	a5,0xa
    245a:	4788                	lw	a0,8(a5)
    245c:	40b2                	lw	ra,12(sp)
    245e:	0542                	slli	a0,a0,0x10
    2460:	8141                	srli	a0,a0,0x10
    2462:	0141                	addi	sp,sp,16
    2464:	8082                	ret

Disassembly of section .text.s25fl128s_res:

00002466 <.text.s25fl128s_res>:
    2466:	1141                	addi	sp,sp,-16
    2468:	800027b7          	lui	a5,0x80002
    246c:	c606                	sw	ra,12(sp)
    246e:	9ab78793          	addi	a5,a5,-1621 # 0x800019ab
    2472:	6729                	lui	a4,0xa
    2474:	c31c                	sw	a5,0(a4)
    2476:	3d4d                	jal	0x2328
    2478:	67a9                	lui	a5,0xa
    247a:	4788                	lw	a0,8(a5)
    247c:	40b2                	lw	ra,12(sp)
    247e:	0ff57513          	zext.b	a0,a0
    2482:	0141                	addi	sp,sp,16
    2484:	8082                	ret

Disassembly of section .text.s25fl128s_wrr:

00002486 <.text.s25fl128s_wrr>:
    2486:	67a9                	lui	a5,0xa
    2488:	c788                	sw	a0,8(a5)
    248a:	800107b7          	lui	a5,0x80010
    248e:	50178793          	addi	a5,a5,1281 # 0x80010501
    2492:	6729                	lui	a4,0xa
    2494:	c31c                	sw	a5,0(a4)
    2496:	bd49                	j	0x2328

Disassembly of section .text.s25fl128s_read:

00002498 <.text.s25fl128s_read>:
    2498:	fff60793          	addi	a5,a2,-1
    249c:	80002737          	lui	a4,0x80002
    24a0:	1141                	addi	sp,sp,-16
    24a2:	90370713          	addi	a4,a4,-1789 # 0x80001903
    24a6:	07c2                	slli	a5,a5,0x10
    24a8:	c422                	sw	s0,8(sp)
    24aa:	c226                	sw	s1,4(sp)
    24ac:	c606                	sw	ra,12(sp)
    24ae:	97ba                	add	a5,a5,a4
    24b0:	6729                	lui	a4,0xa
    24b2:	c348                	sw	a0,4(a4)
    24b4:	6729                	lui	a4,0xa
    24b6:	c31c                	sw	a5,0(a4)
    24b8:	84ae                	mv	s1,a1
    24ba:	8432                	mv	s0,a2
    24bc:	35b5                	jal	0x2328
    24be:	85a2                	mv	a1,s0
    24c0:	4422                	lw	s0,8(sp)
    24c2:	40b2                	lw	ra,12(sp)
    24c4:	8526                	mv	a0,s1
    24c6:	4492                	lw	s1,4(sp)
    24c8:	0141                	addi	sp,sp,16
    24ca:	bdb5                	j	0x2346

Disassembly of section .text.s25fl128s_pp:

000024cc <.text.s25fl128s_pp>:
    24cc:	1141                	addi	sp,sp,-16
    24ce:	c422                	sw	s0,8(sp)
    24d0:	800027b7          	lui	a5,0x80002
    24d4:	fff60413          	addi	s0,a2,-1
    24d8:	d0278793          	addi	a5,a5,-766 # 0x80001d02
    24dc:	0442                	slli	s0,s0,0x10
    24de:	c606                	sw	ra,12(sp)
    24e0:	872a                	mv	a4,a0
    24e2:	943e                	add	s0,s0,a5
    24e4:	67a9                	lui	a5,0xa
    24e6:	852e                	mv	a0,a1
    24e8:	c3d8                	sw	a4,4(a5)
    24ea:	85b2                	mv	a1,a2
    24ec:	3dad                	jal	0x2366
    24ee:	67a9                	lui	a5,0xa
    24f0:	c380                	sw	s0,0(a5)
    24f2:	4422                	lw	s0,8(sp)
    24f4:	40b2                	lw	ra,12(sp)
    24f6:	0141                	addi	sp,sp,16
    24f8:	bd05                	j	0x2328

Disassembly of section .text.s25fl128s_se:

000024fa <.text.s25fl128s_se>:
    24fa:	67a9                	lui	a5,0xa
    24fc:	c788                	sw	a0,8(a5)
    24fe:	800207b7          	lui	a5,0x80020
    2502:	5d878793          	addi	a5,a5,1496 # 0x800205d8
    2506:	6729                	lui	a4,0xa
    2508:	c31c                	sw	a5,0(a4)
    250a:	bd39                	j	0x2328

Disassembly of section .text.s25fl128s_dor:

0000250c <.text.s25fl128s_dor>:
    250c:	fff60793          	addi	a5,a2,-1
    2510:	80002737          	lui	a4,0x80002
    2514:	1141                	addi	sp,sp,-16
    2516:	23b70713          	addi	a4,a4,571 # 0x8000223b
    251a:	07c2                	slli	a5,a5,0x10
    251c:	c422                	sw	s0,8(sp)
    251e:	c226                	sw	s1,4(sp)
    2520:	c606                	sw	ra,12(sp)
    2522:	97ba                	add	a5,a5,a4
    2524:	6729                	lui	a4,0xa
    2526:	c348                	sw	a0,4(a4)
    2528:	6729                	lui	a4,0xa
    252a:	c31c                	sw	a5,0(a4)
    252c:	84ae                	mv	s1,a1
    252e:	8432                	mv	s0,a2
    2530:	3be5                	jal	0x2328
    2532:	85a2                	mv	a1,s0
    2534:	4422                	lw	s0,8(sp)
    2536:	40b2                	lw	ra,12(sp)
    2538:	8526                	mv	a0,s1
    253a:	4492                	lw	s1,4(sp)
    253c:	0141                	addi	sp,sp,16
    253e:	b521                	j	0x2346

Disassembly of section .text.s25fl128s_qor:

00002540 <.text.s25fl128s_qor>:
    2540:	fff60793          	addi	a5,a2,-1
    2544:	80002737          	lui	a4,0x80002
    2548:	1141                	addi	sp,sp,-16
    254a:	36b70713          	addi	a4,a4,875 # 0x8000236b
    254e:	07c2                	slli	a5,a5,0x10
    2550:	c422                	sw	s0,8(sp)
    2552:	c226                	sw	s1,4(sp)
    2554:	c606                	sw	ra,12(sp)
    2556:	97ba                	add	a5,a5,a4
    2558:	6729                	lui	a4,0xa
    255a:	c348                	sw	a0,4(a4)
    255c:	6729                	lui	a4,0xa
    255e:	c31c                	sw	a5,0(a4)
    2560:	84ae                	mv	s1,a1
    2562:	8432                	mv	s0,a2
    2564:	33d1                	jal	0x2328
    2566:	85a2                	mv	a1,s0
    2568:	4422                	lw	s0,8(sp)
    256a:	40b2                	lw	ra,12(sp)
    256c:	8526                	mv	a0,s1
    256e:	4492                	lw	s1,4(sp)
    2570:	0141                	addi	sp,sp,16
    2572:	bbd1                	j	0x2346

Disassembly of section .text.s25fl128s_qpp:

00002574 <.text.s25fl128s_qpp>:
    2574:	fff60793          	addi	a5,a2,-1
    2578:	80002737          	lui	a4,0x80002
    257c:	1141                	addi	sp,sp,-16
    257e:	f3270713          	addi	a4,a4,-206 # 0x80001f32
    2582:	07c2                	slli	a5,a5,0x10
    2584:	c606                	sw	ra,12(sp)
    2586:	86aa                	mv	a3,a0
    2588:	97ba                	add	a5,a5,a4
    258a:	6729                	lui	a4,0xa
    258c:	c354                	sw	a3,4(a4)
    258e:	6729                	lui	a4,0xa
    2590:	852e                	mv	a0,a1
    2592:	c31c                	sw	a5,0(a4)
    2594:	85b2                	mv	a1,a2
    2596:	3bc1                	jal	0x2366
    2598:	40b2                	lw	ra,12(sp)
    259a:	0141                	addi	sp,sp,16
    259c:	b371                	j	0x2328

Disassembly of section .text.qspi_custom_write:

0000259e <.text.qspi_custom_write>:
    259e:	88aa                	mv	a7,a0
    25a0:	852e                	mv	a0,a1
    25a2:	85be                	mv	a1,a5
    25a4:	800007b7          	lui	a5,0x80000
    25a8:	40078793          	addi	a5,a5,1024 # 0x80000400
    25ac:	0866                	slli	a6,a6,0x19
    25ae:	983e                	add	a6,a6,a5
    25b0:	072e                	slli	a4,a4,0xb
    25b2:	fff58793          	addi	a5,a1,-1
    25b6:	1141                	addi	sp,sp,-16
    25b8:	983a                	add	a6,a6,a4
    25ba:	07c2                	slli	a5,a5,0x10
    25bc:	c422                	sw	s0,8(sp)
    25be:	c606                	sw	ra,12(sp)
    25c0:	983e                	add	a6,a6,a5
    25c2:	06a2                	slli	a3,a3,0x8
    25c4:	67a9                	lui	a5,0xa
    25c6:	0ff67613          	zext.b	a2,a2
    25ca:	9836                	add	a6,a6,a3
    25cc:	0117a223          	sw	a7,4(a5) # 0xa004
    25d0:	00c80433          	add	s0,a6,a2
    25d4:	3b49                	jal	0x2366
    25d6:	67a9                	lui	a5,0xa
    25d8:	c380                	sw	s0,0(a5)
    25da:	4422                	lw	s0,8(sp)
    25dc:	40b2                	lw	ra,12(sp)
    25de:	0141                	addi	sp,sp,16
    25e0:	b3a1                	j	0x2328

Disassembly of section .text.qspi_custom_read:

000025e2 <.text.qspi_custom_read>:
    25e2:	1141                	addi	sp,sp,-16
    25e4:	c422                	sw	s0,8(sp)
    25e6:	0866                	slli	a6,a6,0x19
    25e8:	843e                	mv	s0,a5
    25ea:	800007b7          	lui	a5,0x80000
    25ee:	983e                	add	a6,a6,a5
    25f0:	072e                	slli	a4,a4,0xb
    25f2:	fff40793          	addi	a5,s0,-1
    25f6:	983a                	add	a6,a6,a4
    25f8:	07c2                	slli	a5,a5,0x10
    25fa:	983e                	add	a6,a6,a5
    25fc:	06a2                	slli	a3,a3,0x8
    25fe:	c226                	sw	s1,4(sp)
    2600:	c606                	sw	ra,12(sp)
    2602:	0ff67613          	zext.b	a2,a2
    2606:	9836                	add	a6,a6,a3
    2608:	67a9                	lui	a5,0xa
    260a:	c3c8                	sw	a0,4(a5)
    260c:	9832                	add	a6,a6,a2
    260e:	67a9                	lui	a5,0xa
    2610:	0107a023          	sw	a6,0(a5) # 0xa000
    2614:	84ae                	mv	s1,a1
    2616:	3b09                	jal	0x2328
    2618:	85a2                	mv	a1,s0
    261a:	4422                	lw	s0,8(sp)
    261c:	40b2                	lw	ra,12(sp)
    261e:	8526                	mv	a0,s1
    2620:	4492                	lw	s1,4(sp)
    2622:	0141                	addi	sp,sp,16
    2624:	b30d                	j	0x2346

Disassembly of section .text.mt25ql256aba_read:

00002626 <.text.mt25ql256aba_read>:
    2626:	fff60793          	addi	a5,a2,-1
    262a:	80000737          	lui	a4,0x80000
    262e:	1141                	addi	sp,sp,-16
    2630:	10370713          	addi	a4,a4,259 # 0x80000103
    2634:	07c2                	slli	a5,a5,0x10
    2636:	c422                	sw	s0,8(sp)
    2638:	c226                	sw	s1,4(sp)
    263a:	c606                	sw	ra,12(sp)
    263c:	97ba                	add	a5,a5,a4
    263e:	6729                	lui	a4,0xa
    2640:	c348                	sw	a0,4(a4)
    2642:	6729                	lui	a4,0xa
    2644:	c31c                	sw	a5,0(a4)
    2646:	84ae                	mv	s1,a1
    2648:	8432                	mv	s0,a2
    264a:	39f9                	jal	0x2328
    264c:	85a2                	mv	a1,s0
    264e:	4422                	lw	s0,8(sp)
    2650:	40b2                	lw	ra,12(sp)
    2652:	8526                	mv	a0,s1
    2654:	4492                	lw	s1,4(sp)
    2656:	0141                	addi	sp,sp,16
    2658:	b1fd                	j	0x2346

Disassembly of section .text.mt25ql256aba_dual_output_fast_read:

0000265a <.text.mt25ql256aba_dual_output_fast_read>:
    265a:	fff60793          	addi	a5,a2,-1
    265e:	80001737          	lui	a4,0x80001
    2662:	1141                	addi	sp,sp,-16
    2664:	a3b70713          	addi	a4,a4,-1477 # 0x80000a3b
    2668:	07c2                	slli	a5,a5,0x10
    266a:	c422                	sw	s0,8(sp)
    266c:	c226                	sw	s1,4(sp)
    266e:	c606                	sw	ra,12(sp)
    2670:	97ba                	add	a5,a5,a4
    2672:	6729                	lui	a4,0xa
    2674:	c348                	sw	a0,4(a4)
    2676:	6729                	lui	a4,0xa
    2678:	c31c                	sw	a5,0(a4)
    267a:	84ae                	mv	s1,a1
    267c:	8432                	mv	s0,a2
    267e:	316d                	jal	0x2328
    2680:	85a2                	mv	a1,s0
    2682:	4422                	lw	s0,8(sp)
    2684:	40b2                	lw	ra,12(sp)
    2686:	8526                	mv	a0,s1
    2688:	4492                	lw	s1,4(sp)
    268a:	0141                	addi	sp,sp,16
    268c:	b96d                	j	0x2346

Disassembly of section .text.mt25ql256aba_quad_output_fast_read:

0000268e <.text.mt25ql256aba_quad_output_fast_read>:
    268e:	fff60793          	addi	a5,a2,-1
    2692:	80001737          	lui	a4,0x80001
    2696:	1141                	addi	sp,sp,-16
    2698:	b6b70713          	addi	a4,a4,-1173 # 0x80000b6b
    269c:	07c2                	slli	a5,a5,0x10
    269e:	c422                	sw	s0,8(sp)
    26a0:	c226                	sw	s1,4(sp)
    26a2:	c606                	sw	ra,12(sp)
    26a4:	97ba                	add	a5,a5,a4
    26a6:	6729                	lui	a4,0xa
    26a8:	c348                	sw	a0,4(a4)
    26aa:	6729                	lui	a4,0xa
    26ac:	c31c                	sw	a5,0(a4)
    26ae:	84ae                	mv	s1,a1
    26b0:	8432                	mv	s0,a2
    26b2:	399d                	jal	0x2328
    26b4:	85a2                	mv	a1,s0
    26b6:	4422                	lw	s0,8(sp)
    26b8:	40b2                	lw	ra,12(sp)
    26ba:	8526                	mv	a0,s1
    26bc:	4492                	lw	s1,4(sp)
    26be:	0141                	addi	sp,sp,16
    26c0:	b159                	j	0x2346

Disassembly of section .text.mt25ql256aba_page_program:

000026c2 <.text.mt25ql256aba_page_program>:
    26c2:	1141                	addi	sp,sp,-16
    26c4:	c422                	sw	s0,8(sp)
    26c6:	800007b7          	lui	a5,0x80000
    26ca:	fff60413          	addi	s0,a2,-1
    26ce:	50278793          	addi	a5,a5,1282 # 0x80000502
    26d2:	0442                	slli	s0,s0,0x10
    26d4:	c606                	sw	ra,12(sp)
    26d6:	872a                	mv	a4,a0
    26d8:	943e                	add	s0,s0,a5
    26da:	67a9                	lui	a5,0xa
    26dc:	852e                	mv	a0,a1
    26de:	c3d8                	sw	a4,4(a5)
    26e0:	85b2                	mv	a1,a2
    26e2:	3151                	jal	0x2366
    26e4:	67a9                	lui	a5,0xa
    26e6:	c380                	sw	s0,0(a5)
    26e8:	4422                	lw	s0,8(sp)
    26ea:	40b2                	lw	ra,12(sp)
    26ec:	0141                	addi	sp,sp,16
    26ee:	b92d                	j	0x2328

Disassembly of section .text.mt25ql256aba_sector_erase:

000026f0 <.text.mt25ql256aba_sector_erase>:
    26f0:	15fd                	addi	a1,a1,-1
    26f2:	800007b7          	lui	a5,0x80000
    26f6:	5d878793          	addi	a5,a5,1496 # 0x800005d8
    26fa:	05c2                	slli	a1,a1,0x10
    26fc:	95be                	add	a1,a1,a5
    26fe:	67a9                	lui	a5,0xa
    2700:	c788                	sw	a0,8(a5)
    2702:	67a9                	lui	a5,0xa
    2704:	c38c                	sw	a1,0(a5)
    2706:	b10d                	j	0x2328

Disassembly of section .text.mt25ql256aba_read_id:

00002708 <.text.mt25ql256aba_read_id>:
    2708:	b94d                	j	0x23ba

Disassembly of section .text.mt25ql256aba_read_status_register:

0000270a <.text.mt25ql256aba_read_status_register>:
    270a:	b9e1                	j	0x23e2

Disassembly of section .text.mt25ql256aba_read_flag_status_register:

0000270c <.text.mt25ql256aba_read_flag_status_register>:
    270c:	1141                	addi	sp,sp,-16
    270e:	800007b7          	lui	a5,0x80000
    2712:	c606                	sw	ra,12(sp)
    2714:	17078793          	addi	a5,a5,368 # 0x80000170
    2718:	6729                	lui	a4,0xa
    271a:	c31c                	sw	a5,0(a4)
    271c:	3131                	jal	0x2328
    271e:	67a9                	lui	a5,0xa
    2720:	4788                	lw	a0,8(a5)
    2722:	40b2                	lw	ra,12(sp)
    2724:	0ff57513          	zext.b	a0,a0
    2728:	0141                	addi	sp,sp,16
    272a:	8082                	ret

Disassembly of section .text.mt25ql256aba_read_nonvolatile_configuration_register:

0000272c <.text.mt25ql256aba_read_nonvolatile_configuration_register>:
    272c:	1141                	addi	sp,sp,-16
    272e:	800107b7          	lui	a5,0x80010
    2732:	c606                	sw	ra,12(sp)
    2734:	1b578793          	addi	a5,a5,437 # 0x800101b5
    2738:	6729                	lui	a4,0xa
    273a:	c31c                	sw	a5,0(a4)
    273c:	36f5                	jal	0x2328
    273e:	67a9                	lui	a5,0xa
    2740:	4788                	lw	a0,8(a5)
    2742:	40b2                	lw	ra,12(sp)
    2744:	0542                	slli	a0,a0,0x10
    2746:	8141                	srli	a0,a0,0x10
    2748:	0141                	addi	sp,sp,16
    274a:	8082                	ret

Disassembly of section .text.mt25ql256aba_read_volatile_configuration_register:

0000274c <.text.mt25ql256aba_read_volatile_configuration_register>:
    274c:	1141                	addi	sp,sp,-16
    274e:	800007b7          	lui	a5,0x80000
    2752:	c606                	sw	ra,12(sp)
    2754:	18578793          	addi	a5,a5,389 # 0x80000185
    2758:	6729                	lui	a4,0xa
    275a:	c31c                	sw	a5,0(a4)
    275c:	36f1                	jal	0x2328
    275e:	67a9                	lui	a5,0xa
    2760:	4788                	lw	a0,8(a5)
    2762:	40b2                	lw	ra,12(sp)
    2764:	0ff57513          	zext.b	a0,a0
    2768:	0141                	addi	sp,sp,16
    276a:	8082                	ret

Disassembly of section .text.mt25ql256aba_write_status_register:

0000276c <.text.mt25ql256aba_write_status_register>:
    276c:	67a9                	lui	a5,0xa
    276e:	c788                	sw	a0,8(a5)
    2770:	800007b7          	lui	a5,0x80000
    2774:	50178793          	addi	a5,a5,1281 # 0x80000501
    2778:	6729                	lui	a4,0xa
    277a:	c31c                	sw	a5,0(a4)
    277c:	b675                	j	0x2328

Disassembly of section .text.mt25ql256aba_write_nonvolatile_configuration_register:

0000277e <.text.mt25ql256aba_write_nonvolatile_configuration_register>:
    277e:	67a9                	lui	a5,0xa
    2780:	c788                	sw	a0,8(a5)
    2782:	800107b7          	lui	a5,0x80010
    2786:	5b178793          	addi	a5,a5,1457 # 0x800105b1
    278a:	6729                	lui	a4,0xa
    278c:	c31c                	sw	a5,0(a4)
    278e:	be69                	j	0x2328

Disassembly of section .text.mt25ql256aba_write_volatile_configuration_register:

00002790 <.text.mt25ql256aba_write_volatile_configuration_register>:
    2790:	67a9                	lui	a5,0xa
    2792:	c788                	sw	a0,8(a5)
    2794:	800007b7          	lui	a5,0x80000
    2798:	58178793          	addi	a5,a5,1409 # 0x80000581
    279c:	6729                	lui	a4,0xa
    279e:	c31c                	sw	a5,0(a4)
    27a0:	b661                	j	0x2328

Disassembly of section .text.mt25ql256aba_write_enhanced_volatile_configuration_register:

000027a2 <.text.mt25ql256aba_write_enhanced_volatile_configuration_register>:
    27a2:	67a9                	lui	a5,0xa
    27a4:	c788                	sw	a0,8(a5)
    27a6:	800007b7          	lui	a5,0x80000
    27aa:	56178793          	addi	a5,a5,1377 # 0x80000561
    27ae:	6729                	lui	a4,0xa
    27b0:	c31c                	sw	a5,0(a4)
    27b2:	be9d                	j	0x2328

Disassembly of section .text.mt25ql256aba_write_disable:

000027b4 <.text.mt25ql256aba_write_disable>:
    27b4:	bef9                	j	0x2392

Disassembly of section .text.mt25ql256aba_write_enable:

000027b6 <.text.mt25ql256aba_write_enable>:
    27b6:	bec1                	j	0x2386

Disassembly of section .text.mt25ql256aba_reset_enable:

000027b8 <.text.mt25ql256aba_reset_enable>:
    27b8:	800007b7          	lui	a5,0x80000
    27bc:	06678793          	addi	a5,a5,102 # 0x80000066
    27c0:	6729                	lui	a4,0xa
    27c2:	c31c                	sw	a5,0(a4)
    27c4:	b695                	j	0x2328

Disassembly of section .text.mt25ql256aba_reset_memory:

000027c6 <.text.mt25ql256aba_reset_memory>:
    27c6:	800007b7          	lui	a5,0x80000
    27ca:	09978793          	addi	a5,a5,153 # 0x80000099
    27ce:	6729                	lui	a4,0xa
    27d0:	c31c                	sw	a5,0(a4)
    27d2:	be99                	j	0x2328

Disassembly of section .text.timer_counter:

000027d4 <.text.timer_counter>:
    27d4:	67b1                	lui	a5,0xc
    27d6:	4bc8                	lw	a0,20(a5)
    27d8:	8082                	ret

Disassembly of section .text.timer_event:

000027da <.text.timer_event>:
    27da:	67b1                	lui	a5,0xc
    27dc:	4f88                	lw	a0,24(a5)
    27de:	8082                	ret

Disassembly of section .text.timer_clear:

000027e0 <.text.timer_clear>:
    27e0:	67b1                	lui	a5,0xc
    27e2:	4705                	li	a4,1
    27e4:	c798                	sw	a4,8(a5)
    27e6:	67b1                	lui	a5,0xc
    27e8:	cfd8                	sw	a4,28(a5)
    27ea:	8082                	ret

Disassembly of section .text.timer_enabled:

000027ec <.text.timer_enabled>:
    27ec:	67b1                	lui	a5,0xc
    27ee:	c7c8                	sw	a0,12(a5)
    27f0:	8082                	ret

Disassembly of section .text.timer_conf:

000027f2 <.text.timer_conf>:
    27f2:	1141                	addi	sp,sp,-16
    27f4:	c606                	sw	ra,12(sp)
    27f6:	67b1                	lui	a5,0xc
    27f8:	c388                	sw	a0,0(a5)
    27fa:	c3cc                	sw	a1,4(a5)
    27fc:	67b1                	lui	a5,0xc
    27fe:	cb90                	sw	a2,16(a5)
    2800:	08000613          	li	a2,128
    2804:	6589                	lui	a1,0x2
    2806:	20058593          	addi	a1,a1,512 # 0x2200
    280a:	30559073          	csrw	mtvec,a1
    280e:	30046073          	csrsi	mstatus,8
    2812:	30462073          	csrs	mie,a2
    2816:	37e9                	jal	0x27e0
    2818:	40b2                	lw	ra,12(sp)
    281a:	67b1                	lui	a5,0xc
    281c:	4705                	li	a4,1
    281e:	c7d8                	sw	a4,12(a5)
    2820:	0141                	addi	sp,sp,16
    2822:	8082                	ret

Disassembly of section .text.usb_conf:

00002824 <.text.usb_conf>:
    2824:	4795                	li	a5,5
    2826:	00a7f563          	bgeu	a5,a0,0x2830
    282a:	6739                	lui	a4,0xe
    282c:	c31c                	sw	a5,0(a4)
    282e:	8082                	ret
    2830:	67b9                	lui	a5,0xe
    2832:	c388                	sw	a0,0(a5)
    2834:	8082                	ret

Disassembly of section .text.usb_audio:

00002836 <.text.usb_audio>:
    2836:	67b9                	lui	a5,0xe
    2838:	c788                	sw	a0,8(a5)
    283a:	67b9                	lui	a5,0xe
    283c:	07b1                	addi	a5,a5,12 # 0xe00c
    283e:	4705                	li	a4,1
    2840:	c398                	sw	a4,0(a5)
    2842:	4398                	lw	a4,0(a5)
    2844:	ff7d                	bnez	a4,0x2842
    2846:	0007a023          	sw	zero,0(a5)
    284a:	67b9                	lui	a5,0xe
    284c:	43c8                	lw	a0,4(a5)
    284e:	0ff57513          	zext.b	a0,a0
    2852:	8082                	ret

Disassembly of section .text.usb_serial_read:

00002854 <.text.usb_serial_read>:
    2854:	67b9                	lui	a5,0xe
    2856:	07b1                	addi	a5,a5,12 # 0xe00c
    2858:	4398                	lw	a4,0(a5)
    285a:	df7d                	beqz	a4,0x2858
    285c:	0007a023          	sw	zero,0(a5)
    2860:	67b9                	lui	a5,0xe
    2862:	43c8                	lw	a0,4(a5)
    2864:	0ff57513          	zext.b	a0,a0
    2868:	8082                	ret

Disassembly of section .text.usb_write:

0000286a <.text.usb_write>:
    286a:	67b9                	lui	a5,0xe
    286c:	c788                	sw	a0,8(a5)
    286e:	67b9                	lui	a5,0xe
    2870:	07b1                	addi	a5,a5,12 # 0xe00c
    2872:	4705                	li	a4,1
    2874:	c398                	sw	a4,0(a5)
    2876:	4398                	lw	a4,0(a5)
    2878:	ff7d                	bnez	a4,0x2876
    287a:	0007a023          	sw	zero,0(a5)
    287e:	8082                	ret

Disassembly of section .text.gpio_write:

00002880 <.text.gpio_write>:
    2880:	67c1                	lui	a5,0x10
    2882:	c3c8                	sw	a0,4(a5)
    2884:	8082                	ret

Disassembly of section .text.gpio_read:

00002886 <.text.gpio_read>:
    2886:	67c1                	lui	a5,0x10
    2888:	4388                	lw	a0,0(a5)
    288a:	0542                	slli	a0,a0,0x10
    288c:	8141                	srli	a0,a0,0x10
    288e:	8082                	ret

Disassembly of section .text.instr_mem_write:

00002890 <.text.instr_mem_write>:
    2890:	050a                	slli	a0,a0,0x2
    2892:	6791                	lui	a5,0x4
    2894:	97aa                	add	a5,a5,a0
    2896:	c38c                	sw	a1,0(a5)
    2898:	8082                	ret

Disassembly of section .text.uart_main:

0000289a <.text.uart_main>:
    289a:	1101                	addi	sp,sp,-32
    289c:	cc22                	sw	s0,24(sp)
    289e:	ca26                	sw	s1,20(sp)
    28a0:	c84a                	sw	s2,16(sp)
    28a2:	c64e                	sw	s3,12(sp)
    28a4:	ce06                	sw	ra,28(sp)
    28a6:	6799                	lui	a5,0x6
    28a8:	0c700713          	li	a4,199
    28ac:	c398                	sw	a4,0(a5)
    28ae:	64c1                	lui	s1,0x10
    28b0:	0007a223          	sw	zero,4(a5) # 0x6004
    28b4:	4401                	li	s0,0
    28b6:	4901                	li	s2,0
    28b8:	69c1                	lui	s3,0x10
    28ba:	0491                	addi	s1,s1,4 # 0x10004
    28bc:	0009a503          	lw	a0,0(s3) # 0x10000
    28c0:	02090363          	beqz	s2,0x28e6
    28c4:	0ff57513          	zext.b	a0,a0
    28c8:	3421                	jal	0x22d0
    28ca:	f0047413          	andi	s0,s0,-256
    28ce:	32e5                	jal	0x22b6
    28d0:	9522                	add	a0,a0,s0
    28d2:	01051413          	slli	s0,a0,0x10
    28d6:	8441                	srai	s0,s0,0x10
    28d8:	01041793          	slli	a5,s0,0x10
    28dc:	83c1                	srli	a5,a5,0x10
    28de:	00194913          	xori	s2,s2,1
    28e2:	c09c                	sw	a5,0(s1)
    28e4:	bfe1                	j	0x28bc
    28e6:	0542                	slli	a0,a0,0x10
    28e8:	8141                	srli	a0,a0,0x10
    28ea:	8121                	srli	a0,a0,0x8
    28ec:	32d5                	jal	0x22d0
    28ee:	32e1                	jal	0x22b6
    28f0:	0ff47413          	zext.b	s0,s0
    28f4:	0522                	slli	a0,a0,0x8
    28f6:	942a                	add	s0,s0,a0
    28f8:	0442                	slli	s0,s0,0x10
    28fa:	bff1                	j	0x28d6

Disassembly of section .text.uart_interrupt:

000028fc <.text.uart_interrupt>:
    28fc:	8082                	ret

Disassembly of section .text.i2c_main:

000028fe <.text.i2c_main>:
    28fe:	1141                	addi	sp,sp,-16
    2900:	c422                	sw	s0,8(sp)
    2902:	c226                	sw	s1,4(sp)
    2904:	c04a                	sw	s2,0(sp)
    2906:	c606                	sw	ra,12(sp)
    2908:	67a1                	lui	a5,0x8
    290a:	07b00713          	li	a4,123
    290e:	c3d8                	sw	a4,4(a5)
    2910:	4605                	li	a2,1
    2912:	4581                	li	a1,0
    2914:	557d                	li	a0,-1
    2916:	64c1                	lui	s1,0x10
    2918:	6441                	lui	s0,0x10
    291a:	3de1                	jal	0x27f2
    291c:	14fd                	addi	s1,s1,-1 # 0xffff
    291e:	0411                	addi	s0,s0,4 # 0x10004
    2920:	05002783          	lw	a5,80(zero) # 0x50
    2924:	dff5                	beqz	a5,0x2920
    2926:	4509                	li	a0,2
    2928:	32d5                	jal	0x230c
    292a:	8d65                	and	a0,a0,s1
    292c:	c008                	sw	a0,0(s0)
    292e:	04002823          	sw	zero,80(zero) # 0x50
    2932:	b7fd                	j	0x2920

Disassembly of section .text.i2c_interrupt:

00002934 <.text.i2c_interrupt>:
    2934:	4705                	li	a4,1
    2936:	04e02823          	sw	a4,80(zero) # 0x50
    293a:	8082                	ret

Disassembly of section .text.qspi_main:

0000293c <.text.qspi_main>:
    293c:	4715                	li	a4,5
    293e:	67b9                	lui	a5,0xe
    2940:	c398                	sw	a4,0(a5)
    2942:	6741                	lui	a4,0x10
    2944:	431c                	lw	a5,0(a4)
    2946:	8b89                	andi	a5,a5,2
    2948:	c7bd                	beqz	a5,0x29b6
    294a:	1101                	addi	sp,sp,-32
    294c:	ce06                	sw	ra,28(sp)
    294e:	ca26                	sw	s1,20(sp)
    2950:	c64e                	sw	s3,12(sp)
    2952:	c256                	sw	s5,4(sp)
    2954:	cc22                	sw	s0,24(sp)
    2956:	c84a                	sw	s2,16(sp)
    2958:	c452                	sw	s4,8(sp)
    295a:	3435                	jal	0x2386
    295c:	07f00513          	li	a0,127
    2960:	3589                	jal	0x27a2
    2962:	4481                	li	s1,0
    2964:	6a91                	lui	s5,0x4
    2966:	0e000413          	li	s0,224
    296a:	02040a13          	addi	s4,s0,32
    296e:	a831                	j	0x298a
    2970:	401c                	lw	a5,0(s0)
    2972:	197d                	addi	s2,s2,-1
    2974:	07a2                	slli	a5,a5,0x8
    2976:	c01c                	sw	a5,0(s0)
    2978:	3a3d                	jal	0x22b6
    297a:	401c                	lw	a5,0(s0)
    297c:	97aa                	add	a5,a5,a0
    297e:	c01c                	sw	a5,0(s0)
    2980:	fe0918e3          	bnez	s2,0x2970
    2984:	0411                	addi	s0,s0,4
    2986:	01440463          	beq	s0,s4,0x298e
    298a:	4911                	li	s2,4
    298c:	b7d5                	j	0x2970
    298e:	8526                	mv	a0,s1
    2990:	02000613          	li	a2,32
    2994:	0e000593          	li	a1,224
    2998:	02048493          	addi	s1,s1,32
    299c:	331d                	jal	0x26c2
    299e:	fd5494e3          	bne	s1,s5,0x2966
    29a2:	40f2                	lw	ra,28(sp)
    29a4:	4462                	lw	s0,24(sp)
    29a6:	44d2                	lw	s1,20(sp)
    29a8:	4942                	lw	s2,16(sp)
    29aa:	49b2                	lw	s3,12(sp)
    29ac:	4a22                	lw	s4,8(sp)
    29ae:	4a92                	lw	s5,4(sp)
    29b0:	4501                	li	a0,0
    29b2:	6105                	addi	sp,sp,32
    29b4:	8082                	ret
    29b6:	431c                	lw	a5,0(a4)
    29b8:	8b85                	andi	a5,a5,1
    29ba:	d7c9                	beqz	a5,0x2944
    29bc:	a001                	j	0x29bc

Disassembly of section .text.qspi_interrupt:

000029be <.text.qspi_interrupt>:
    29be:	8082                	ret

Disassembly of section .text.timer_main:

000029c0 <.text.timer_main>:
    29c0:	1101                	addi	sp,sp,-32
    29c2:	653d                	lui	a0,0xf
    29c4:	cc22                	sw	s0,24(sp)
    29c6:	c84a                	sw	s2,16(sp)
    29c8:	4605                	li	a2,1
    29ca:	4581                	li	a1,0
    29cc:	a5f50513          	addi	a0,a0,-1441 # 0xea5f
    29d0:	6441                	lui	s0,0x10
    29d2:	6931                	lui	s2,0xc
    29d4:	ca26                	sw	s1,20(sp)
    29d6:	c64e                	sw	s3,12(sp)
    29d8:	ce06                	sw	ra,28(sp)
    29da:	3d21                	jal	0x27f2
    29dc:	fff40493          	addi	s1,s0,-1 # 0xffff
    29e0:	0911                	addi	s2,s2,4 # 0xc004
    29e2:	04c02703          	lw	a4,76(zero) # 0x4c
    29e6:	401c                	lw	a5,0(s0)
    29e8:	8fe5                	and	a5,a5,s1
    29ea:	fee78ee3          	beq	a5,a4,0x29e6
    29ee:	401c                	lw	a5,0(s0)
    29f0:	8fe5                	and	a5,a5,s1
    29f2:	00f92023          	sw	a5,0(s2)
    29f6:	33ed                	jal	0x27e0
    29f8:	401c                	lw	a5,0(s0)
    29fa:	8fe5                	and	a5,a5,s1
    29fc:	04f02623          	sw	a5,76(zero) # 0x4c
    2a00:	b7cd                	j	0x29e2

Disassembly of section .text.timer_interrupt:

00002a02 <.text.timer_interrupt>:
    2a02:	11405683          	lhu	a3,276(zero) # 0x114
    2a06:	6741                	lui	a4,0x10
    2a08:	c354                	sw	a3,4(a4)
    2a0a:	11402703          	lw	a4,276(zero) # 0x114
    2a0e:	0705                	addi	a4,a4,1 # 0x10001
    2a10:	10e02a23          	sw	a4,276(zero) # 0x114
    2a14:	8082                	ret

Disassembly of section .text.gpio_main:

00002a16 <.text.gpio_main>:
    2a16:	66c1                	lui	a3,0x10
    2a18:	67c1                	lui	a5,0x10
    2a1a:	fff68613          	addi	a2,a3,-1 # 0xffff
    2a1e:	0791                	addi	a5,a5,4 # 0x10004
    2a20:	4298                	lw	a4,0(a3)
    2a22:	8f71                	and	a4,a4,a2
    2a24:	c398                	sw	a4,0(a5)
    2a26:	bfed                	j	0x2a20

Disassembly of section .text.gpio_interrupt:

00002a28 <.text.gpio_interrupt>:
    2a28:	8082                	ret

Disassembly of section .text.usb_main:

00002a2a <.text.usb_main>:
    2a2a:	7139                	addi	sp,sp,-64
    2a2c:	4605                	li	a2,1
    2a2e:	4581                	li	a1,0
    2a30:	557d                	li	a0,-1
    2a32:	dc22                	sw	s0,56(sp)
    2a34:	da26                	sw	s1,52(sp)
    2a36:	d84a                	sw	s2,48(sp)
    2a38:	d64e                	sw	s3,44(sp)
    2a3a:	d452                	sw	s4,40(sp)
    2a3c:	d256                	sw	s5,36(sp)
    2a3e:	d05a                	sw	s6,32(sp)
    2a40:	ce5e                	sw	s7,28(sp)
    2a42:	de06                	sw	ra,60(sp)
    2a44:	cc62                	sw	s8,24(sp)
    2a46:	ca66                	sw	s9,20(sp)
    2a48:	c86a                	sw	s10,16(sp)
    2a4a:	c66e                	sw	s11,12(sp)
    2a4c:	69c1                	lui	s3,0x10
    2a4e:	3355                	jal	0x27f2
    2a50:	4a91                	li	s5,4
    2a52:	4b15                	li	s6,5
    2a54:	4b85                	li	s7,1
    2a56:	0009a783          	lw	a5,0(s3) # 0x10000
    2a5a:	0ff7f793          	zext.b	a5,a5
    2a5e:	10f02823          	sw	a5,272(zero) # 0x110
    2a62:	10002423          	sw	zero,264(zero) # 0x108
    2a66:	11002783          	lw	a5,272(zero) # 0x110
    2a6a:	e7b5                	bnez	a5,0x2ad6
    2a6c:	10802703          	lw	a4,264(zero) # 0x108
    2a70:	10402783          	lw	a5,260(zero) # 0x104
    2a74:	00f70763          	beq	a4,a5,0x2a82
    2a78:	10802503          	lw	a0,264(zero) # 0x108
    2a7c:	0ff57513          	zext.b	a0,a0
    2a80:	3355                	jal	0x2824
    2a82:	10802783          	lw	a5,264(zero) # 0x108
    2a86:	10f02223          	sw	a5,260(zero) # 0x104
    2a8a:	10802783          	lw	a5,264(zero) # 0x108
    2a8e:	09578263          	beq	a5,s5,0x2b12
    2a92:	04faed63          	bltu	s5,a5,0x2aec
    2a96:	07778663          	beq	a5,s7,0x2b02
    2a9a:	4709                	li	a4,2
    2a9c:	fae79de3          	bne	a5,a4,0x2a56
    2aa0:	4501                	li	a0,0
    2aa2:	33e1                	jal	0x286a
    2aa4:	4c81                	li	s9,0
    2aa6:	14000d13          	li	s10,320
    2aaa:	0b400d93          	li	s11,180
    2aae:	4c01                	li	s8,0
    2ab0:	10c02503          	lw	a0,268(zero) # 0x10c
    2ab4:	9566                	add	a0,a0,s9
    2ab6:	9562                	add	a0,a0,s8
    2ab8:	0ff57513          	zext.b	a0,a0
    2abc:	0c05                	addi	s8,s8,1
    2abe:	3375                	jal	0x286a
    2ac0:	ffac18e3          	bne	s8,s10,0x2ab0
    2ac4:	0c85                	addi	s9,s9,1
    2ac6:	ffbc94e3          	bne	s9,s11,0x2aae
    2aca:	10c02783          	lw	a5,268(zero) # 0x10c
    2ace:	0785                	addi	a5,a5,1
    2ad0:	10f02623          	sw	a5,268(zero) # 0x10c
    2ad4:	b749                	j	0x2a56
    2ad6:	11002783          	lw	a5,272(zero) # 0x110
    2ada:	8385                	srli	a5,a5,0x1
    2adc:	10f02823          	sw	a5,272(zero) # 0x110
    2ae0:	10802783          	lw	a5,264(zero) # 0x108
    2ae4:	0785                	addi	a5,a5,1
    2ae6:	10f02423          	sw	a5,264(zero) # 0x108
    2aea:	bfb5                	j	0x2a66
    2aec:	f76795e3          	bne	a5,s6,0x2a56
    2af0:	3395                	jal	0x2854
    2af2:	10a02623          	sw	a0,268(zero) # 0x10c
    2af6:	10c02503          	lw	a0,268(zero) # 0x10c
    2afa:	0ff57513          	zext.b	a0,a0
    2afe:	33b5                	jal	0x286a
    2b00:	bf99                	j	0x2a56
    2b02:	10c02503          	lw	a0,268(zero) # 0x10c
    2b06:	0ff57513          	zext.b	a0,a0
    2b0a:	3335                	jal	0x2836
    2b0c:	10a02623          	sw	a0,268(zero) # 0x10c
    2b10:	b799                	j	0x2a56
    2b12:	0009a783          	lw	a5,0(s3)
    2b16:	07c2                	slli	a5,a5,0x10
    2b18:	83c1                	srli	a5,a5,0x10
    2b1a:	83a1                	srli	a5,a5,0x8
    2b1c:	bf55                	j	0x2ad0

Disassembly of section .text.usb_interrupt:

00002b1e <.text.usb_interrupt>:
    2b1e:	10802703          	lw	a4,264(zero) # 0x108
    2b22:	4791                	li	a5,4
    2b24:	00f71763          	bne	a4,a5,0x2b32
    2b28:	10c02503          	lw	a0,268(zero) # 0x10c
    2b2c:	0ff57513          	zext.b	a0,a0
    2b30:	bb2d                	j	0x286a
    2b32:	8082                	ret

Disassembly of section .text.debug_print_short:

00002b34 <.text.debug_print_short>:
    2b34:	1141                	addi	sp,sp,-16
    2b36:	c422                	sw	s0,8(sp)
    2b38:	c226                	sw	s1,4(sp)
    2b3a:	c04a                	sw	s2,0(sp)
    2b3c:	c606                	sw	ra,12(sp)
    2b3e:	842a                	mv	s0,a0
    2b40:	4491                	li	s1,4
    2b42:	03900913          	li	s2,57
    2b46:	00c45793          	srli	a5,s0,0xc
    2b4a:	03078513          	addi	a0,a5,48
    2b4e:	00a97463          	bgeu	s2,a0,0x2b56
    2b52:	03778513          	addi	a0,a5,55
    2b56:	0412                	slli	s0,s0,0x4
    2b58:	0442                	slli	s0,s0,0x10
    2b5a:	14fd                	addi	s1,s1,-1
    2b5c:	3339                	jal	0x286a
    2b5e:	8041                	srli	s0,s0,0x10
    2b60:	f0fd                	bnez	s1,0x2b46
    2b62:	40b2                	lw	ra,12(sp)
    2b64:	4422                	lw	s0,8(sp)
    2b66:	4492                	lw	s1,4(sp)
    2b68:	4902                	lw	s2,0(sp)
    2b6a:	0141                	addi	sp,sp,16
    2b6c:	8082                	ret

Disassembly of section .text.debug_print_int:

00002b6e <.text.debug_print_int>:
    2b6e:	1141                	addi	sp,sp,-16
    2b70:	c422                	sw	s0,8(sp)
    2b72:	842a                	mv	s0,a0
    2b74:	8141                	srli	a0,a0,0x10
    2b76:	c606                	sw	ra,12(sp)
    2b78:	3f75                	jal	0x2b34
    2b7a:	01041513          	slli	a0,s0,0x10
    2b7e:	4422                	lw	s0,8(sp)
    2b80:	40b2                	lw	ra,12(sp)
    2b82:	8141                	srli	a0,a0,0x10
    2b84:	0141                	addi	sp,sp,16
    2b86:	b77d                	j	0x2b34

Disassembly of section .text.debug_main:

00002b88 <.text.debug_main>:
    2b88:	7171                	addi	sp,sp,-176
    2b8a:	cf4e                	sw	s3,156(sp)
    2b8c:	cd52                	sw	s4,152(sp)
    2b8e:	cb56                	sw	s5,148(sp)
    2b90:	c95a                	sw	s6,144(sp)
    2b92:	c75e                	sw	s7,140(sp)
    2b94:	c562                	sw	s8,136(sp)
    2b96:	d706                	sw	ra,172(sp)
    2b98:	d522                	sw	s0,168(sp)
    2b9a:	d326                	sw	s1,164(sp)
    2b9c:	d14a                	sw	s2,160(sp)
    2b9e:	c366                	sw	s9,132(sp)
    2ba0:	c16a                	sw	s10,128(sp)
    2ba2:	67b9                	lui	a5,0xe
    2ba4:	4715                	li	a4,5
    2ba6:	69c1                	lui	s3,0x10
    2ba8:	6a41                	lui	s4,0x10
    2baa:	c398                	sw	a4,0(a5)
    2bac:	fff98a93          	addi	s5,s3,-1 # 0xffff
    2bb0:	0a11                	addi	s4,s4,4 # 0x10004
    2bb2:	4b05                	li	s6,1
    2bb4:	4b89                	li	s7,2
    2bb6:	6c05                	lui	s8,0x1
    2bb8:	0009a783          	lw	a5,0(s3)
    2bbc:	0157f733          	and	a4,a5,s5
    2bc0:	07c2                	slli	a5,a5,0x10
    2bc2:	00ea2023          	sw	a4,0(s4)
    2bc6:	83c1                	srli	a5,a5,0x10
    2bc8:	dbe5                	beqz	a5,0x2bb8
    2bca:	0009a783          	lw	a5,0(s3)
    2bce:	07c2                	slli	a5,a5,0x10
    2bd0:	83c1                	srli	a5,a5,0x10
    2bd2:	ffe5                	bnez	a5,0x2bca
    2bd4:	07670c63          	beq	a4,s6,0x2c4c
    2bd8:	ff7710e3          	bne	a4,s7,0x2bb8
    2bdc:	4401                	li	s0,0
    2bde:	6489                	lui	s1,0x2
    2be0:	01041513          	slli	a0,s0,0x10
    2be4:	8141                	srli	a0,a0,0x10
    2be6:	37b9                	jal	0x2b34
    2be8:	03a00513          	li	a0,58
    2bec:	39bd                	jal	0x286a
    2bee:	02000513          	li	a0,32
    2bf2:	39a5                	jal	0x286a
    2bf4:	4008                	lw	a0,0(s0)
    2bf6:	0411                	addi	s0,s0,4
    2bf8:	00aaf533          	and	a0,s5,a0
    2bfc:	3f8d                	jal	0x2b6e
    2bfe:	4535                	li	a0,13
    2c00:	31ad                	jal	0x286a
    2c02:	4529                	li	a0,10
    2c04:	319d                	jal	0x286a
    2c06:	fc941de3          	bne	s0,s1,0x2be0
    2c0a:	4569                	li	a0,26
    2c0c:	39b9                	jal	0x286a
    2c0e:	b76d                	j	0x2bb8
    2c10:	3191                	jal	0x2854
    2c12:	fd050513          	addi	a0,a0,-48
    2c16:	4d1d                	li	s10,7
    2c18:	00451413          	slli	s0,a0,0x4
    2c1c:	1d7d                	addi	s10,s10,-1
    2c1e:	391d                	jal	0x2854
    2c20:	9522                	add	a0,a0,s0
    2c22:	fe0d1be3          	bnez	s10,0x2c18
    2c26:	c088                	sw	a0,0(s1)
    2c28:	011c                	addi	a5,sp,128
    2c2a:	0491                	addi	s1,s1,4 # 0x2004
    2c2c:	fef492e3          	bne	s1,a5,0x2c10
    2c30:	02000613          	li	a2,32
    2c34:	85e6                	mv	a1,s9
    2c36:	854a                	mv	a0,s2
    2c38:	3469                	jal	0x26c2
    2c3a:	00000067          	jr	zero # 0x0
    2c3e:	02090913          	addi	s2,s2,32
    2c42:	f9890de3          	beq	s2,s8,0x2bdc
    2c46:	848a                	mv	s1,sp
    2c48:	8ca6                	mv	s9,s1
    2c4a:	b7d9                	j	0x2c10
    2c4c:	4901                	li	s2,0
    2c4e:	bfe5                	j	0x2c46
