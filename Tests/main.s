
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
    2012:	25a1                	jal	0x265a
    2014:	65c1                	lui	a1,0x10
    2016:	46a1                	li	a3,8
    2018:	419c                	lw	a5,0(a1)
    201a:	07c2                	slli	a5,a5,0x10
    201c:	83c1                	srli	a5,a5,0x10
    201e:	0cf01e23          	sh	a5,220(zero) # 0xdc
    2022:	0dc05783          	lhu	a5,220(zero) # 0xdc
    2026:	c799                	beqz	a5,0x2034
    2028:	67c1                	lui	a5,0x10
    202a:	0007a223          	sw	zero,4(a5) # 0x10004
    202e:	67b1                	lui	a5,0xc
    2030:	0007a623          	sw	zero,12(a5) # 0xc00c
    2034:	0dc05603          	lhu	a2,220(zero) # 0xdc
    2038:	01061793          	slli	a5,a2,0x10
    203c:	83c1                	srli	a5,a5,0x10
    203e:	02d60d63          	beq	a2,a3,0x2078
    2042:	00f6ec63          	bltu	a3,a5,0x205a
    2046:	4609                	li	a2,2
    2048:	02c78663          	beq	a5,a2,0x2074
    204c:	4611                	li	a2,4
    204e:	02c78463          	beq	a5,a2,0x2076
    2052:	4605                	li	a2,1
    2054:	fcc792e3          	bne	a5,a2,0x2018
    2058:	2dbd                	jal	0x26d6
    205a:	02000613          	li	a2,32
    205e:	00c78e63          	beq	a5,a2,0x207a
    2062:	04000613          	li	a2,64
    2066:	00c78c63          	beq	a5,a2,0x207e
    206a:	4641                	li	a2,16
    206c:	fac796e3          	bne	a5,a2,0x2018
    2070:	734000ef          	jal	0x27a4
    2074:	2d41                	jal	0x2704
    2076:	25f1                	jal	0x2742
    2078:	2dd9                	jal	0x274e
    207a:	73e000ef          	jal	0x27b8
    207e:	01f000ef          	jal	0x289c
	...
    21fe:	0000                	unimp
    2200:	7139                	addi	sp,sp,-64
    2202:	cc3e                	sw	a5,24(sp)
    2204:	d036                	sw	a3,32(sp)
    2206:	0dc05683          	lhu	a3,220(zero) # 0xdc
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
    2228:	06e68563          	beq	a3,a4,0x2292
    222c:	01069793          	slli	a5,a3,0x10
    2230:	83c1                	srli	a5,a5,0x10
    2232:	02f76963          	bltu	a4,a5,0x2264
    2236:	cf8d                	beqz	a5,0x2270
    2238:	4709                	li	a4,2
    223a:	04e78863          	beq	a5,a4,0x228a
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
    226c:	2d39                	jal	0x288a
    226e:	bfc1                	j	0x223e
    2270:	04402703          	lw	a4,68(zero) # 0x44
    2274:	fff74713          	not	a4,a4
    2278:	04e02223          	sw	a4,68(zero) # 0x44
    227c:	04402703          	lw	a4,68(zero) # 0x44
    2280:	67c1                	lui	a5,0x10
    2282:	0742                	slli	a4,a4,0x10
    2284:	8341                	srli	a4,a4,0x10
    2286:	c3d8                	sw	a4,4(a5)
    2288:	bf5d                	j	0x223e
    228a:	4705                	li	a4,1
    228c:	04e02623          	sw	a4,76(zero) # 0x4c
    2290:	b77d                	j	0x223e
    2292:	29fd                	jal	0x2790
    2294:	b76d                	j	0x223e

Disassembly of section .text.uart_conf:

00002296 <.text.uart_conf>:
    2296:	039387b7          	lui	a5,0x3938
    229a:	70078793          	addi	a5,a5,1792 # 0x3938700
    229e:	02a7d7b3          	divu	a5,a5,a0
    22a2:	6719                	lui	a4,0x6
    22a4:	17fd                	addi	a5,a5,-1
    22a6:	c31c                	sw	a5,0(a4)
    22a8:	6799                	lui	a5,0x6
    22aa:	c3cc                	sw	a1,4(a5)
    22ac:	8082                	ret

Disassembly of section .text.uart_read:

000022ae <.text.uart_read>:
    22ae:	6799                	lui	a5,0x6
    22b0:	07c1                	addi	a5,a5,16 # 0x6010
    22b2:	4709                	li	a4,2
    22b4:	4394                	lw	a3,0(a5)
    22b6:	fee69fe3          	bne	a3,a4,0x22b4
    22ba:	6719                	lui	a4,0x6
    22bc:	4708                	lw	a0,8(a4)
    22be:	0007a023          	sw	zero,0(a5)
    22c2:	0ff57513          	zext.b	a0,a0
    22c6:	8082                	ret

Disassembly of section .text.uart_write:

000022c8 <.text.uart_write>:
    22c8:	6799                	lui	a5,0x6
    22ca:	c7c8                	sw	a0,12(a5)
    22cc:	6799                	lui	a5,0x6
    22ce:	07c1                	addi	a5,a5,16 # 0x6010
    22d0:	4705                	li	a4,1
    22d2:	c398                	sw	a4,0(a5)
    22d4:	4398                	lw	a4,0(a5)
    22d6:	8b11                	andi	a4,a4,4
    22d8:	df75                	beqz	a4,0x22d4
    22da:	4398                	lw	a4,0(a5)
    22dc:	8b09                	andi	a4,a4,2
    22de:	c398                	sw	a4,0(a5)
    22e0:	8082                	ret

Disassembly of section .text.i2c_conf:

000022e2 <.text.i2c_conf>:
    22e2:	67a1                	lui	a5,0x8
    22e4:	c3c8                	sw	a0,4(a5)
    22e6:	8082                	ret

Disassembly of section .text.i2c_write:

000022e8 <.text.i2c_write>:
    22e8:	67a1                	lui	a5,0x8
    22ea:	c38c                	sw	a1,0(a5)
    22ec:	c7c8                	sw	a0,12(a5)
    22ee:	67a1                	lui	a5,0x8
    22f0:	07c1                	addi	a5,a5,16 # 0x8010
    22f2:	4705                	li	a4,1
    22f4:	c398                	sw	a4,0(a5)
    22f6:	4398                	lw	a4,0(a5)
    22f8:	8b09                	andi	a4,a4,2
    22fa:	df75                	beqz	a4,0x22f6
    22fc:	4398                	lw	a4,0(a5)
    22fe:	8b31                	andi	a4,a4,12
    2300:	c398                	sw	a4,0(a5)
    2302:	8082                	ret

Disassembly of section .text.i2c_read:

00002304 <.text.i2c_read>:
    2304:	67a1                	lui	a5,0x8
    2306:	c388                	sw	a0,0(a5)
    2308:	4711                	li	a4,4
    230a:	07c1                	addi	a5,a5,16 # 0x8010
    230c:	c398                	sw	a4,0(a5)
    230e:	4398                	lw	a4,0(a5)
    2310:	8b21                	andi	a4,a4,8
    2312:	df75                	beqz	a4,0x230e
    2314:	4398                	lw	a4,0(a5)
    2316:	8b0d                	andi	a4,a4,3
    2318:	c398                	sw	a4,0(a5)
    231a:	67a1                	lui	a5,0x8
    231c:	4788                	lw	a0,8(a5)
    231e:	8082                	ret

Disassembly of section .text.qspi_wait:

00002320 <.text.qspi_wait>:
    2320:	67a9                	lui	a5,0xa
    2322:	02878793          	addi	a5,a5,40 # 0xa028
    2326:	4705                	li	a4,1
    2328:	4394                	lw	a3,0(a5)
    232a:	fee69fe3          	bne	a3,a4,0x2328
    232e:	67a9                	lui	a5,0xa
    2330:	02878793          	addi	a5,a5,40 # 0xa028
    2334:	4705                	li	a4,1
    2336:	4394                	lw	a3,0(a5)
    2338:	fee69fe3          	bne	a3,a4,0x2336
    233c:	8082                	ret

Disassembly of section .text.qspi_read_array:

0000233e <.text.qspi_read_array>:
    233e:	058d                	addi	a1,a1,3 # 0x10003
    2340:	6729                	lui	a4,0xa
    2342:	99f1                	andi	a1,a1,-4
    2344:	4781                	li	a5,0
    2346:	0721                	addi	a4,a4,8 # 0xa008
    2348:	00b79363          	bne	a5,a1,0x234e
    234c:	8082                	ret
    234e:	00e786b3          	add	a3,a5,a4
    2352:	4290                	lw	a2,0(a3)
    2354:	00f506b3          	add	a3,a0,a5
    2358:	0791                	addi	a5,a5,4
    235a:	c290                	sw	a2,0(a3)
    235c:	b7f5                	j	0x2348

Disassembly of section .text.qspi_write_array:

0000235e <.text.qspi_write_array>:
    235e:	058d                	addi	a1,a1,3
    2360:	6729                	lui	a4,0xa
    2362:	99f1                	andi	a1,a1,-4
    2364:	4781                	li	a5,0
    2366:	0721                	addi	a4,a4,8 # 0xa008
    2368:	00b79363          	bne	a5,a1,0x236e
    236c:	8082                	ret
    236e:	00f50633          	add	a2,a0,a5
    2372:	4210                	lw	a2,0(a2)
    2374:	00e786b3          	add	a3,a5,a4
    2378:	0791                	addi	a5,a5,4
    237a:	c290                	sw	a2,0(a3)
    237c:	b7f5                	j	0x2368

Disassembly of section .text.s25fl128s_wren:

0000237e <.text.s25fl128s_wren>:
    237e:	800007b7          	lui	a5,0x80000
    2382:	0799                	addi	a5,a5,6 # 0x80000006
    2384:	6729                	lui	a4,0xa
    2386:	c31c                	sw	a5,0(a4)
    2388:	bf61                	j	0x2320

Disassembly of section .text.s25fl128s_wrdi:

0000238a <.text.s25fl128s_wrdi>:
    238a:	800007b7          	lui	a5,0x80000
    238e:	0791                	addi	a5,a5,4 # 0x80000004
    2390:	6729                	lui	a4,0xa
    2392:	c31c                	sw	a5,0(a4)
    2394:	b771                	j	0x2320

Disassembly of section .text.s25fl128s_clsr:

00002396 <.text.s25fl128s_clsr>:
    2396:	800007b7          	lui	a5,0x80000
    239a:	03078793          	addi	a5,a5,48 # 0x80000030
    239e:	6729                	lui	a4,0xa
    23a0:	c31c                	sw	a5,0(a4)
    23a2:	bfbd                	j	0x2320

Disassembly of section .text.s25fl128s_reset:

000023a4 <.text.s25fl128s_reset>:
    23a4:	800007b7          	lui	a5,0x80000
    23a8:	0f078793          	addi	a5,a5,240 # 0x800000f0
    23ac:	6729                	lui	a4,0xa
    23ae:	c31c                	sw	a5,0(a4)
    23b0:	bf85                	j	0x2320

Disassembly of section .text.qspi_deneme:

000023b2 <.text.qspi_deneme>:
    23b2:	1101                	addi	sp,sp,-32
    23b4:	801307b7          	lui	a5,0x80130
    23b8:	ce06                	sw	ra,28(sp)
    23ba:	c62a                	sw	a0,12(sp)
    23bc:	19f78793          	addi	a5,a5,415 # 0x8013019f
    23c0:	6729                	lui	a4,0xa
    23c2:	c31c                	sw	a5,0(a4)
    23c4:	3fb1                	jal	0x2320
    23c6:	4532                	lw	a0,12(sp)
    23c8:	40f2                	lw	ra,28(sp)
    23ca:	45d1                	li	a1,20
    23cc:	6105                	addi	sp,sp,32
    23ce:	bf85                	j	0x233e

Disassembly of section .text.s25fl128s_rdid:

000023d0 <.text.s25fl128s_rdid>:
    23d0:	fff58793          	addi	a5,a1,-1
    23d4:	80000737          	lui	a4,0x80000
    23d8:	1101                	addi	sp,sp,-32
    23da:	19f70713          	addi	a4,a4,415 # 0x8000019f
    23de:	07c2                	slli	a5,a5,0x10
    23e0:	ce06                	sw	ra,28(sp)
    23e2:	c62a                	sw	a0,12(sp)
    23e4:	c42e                	sw	a1,8(sp)
    23e6:	97ba                	add	a5,a5,a4
    23e8:	6729                	lui	a4,0xa
    23ea:	c31c                	sw	a5,0(a4)
    23ec:	3f15                	jal	0x2320
    23ee:	45a2                	lw	a1,8(sp)
    23f0:	4532                	lw	a0,12(sp)
    23f2:	40f2                	lw	ra,28(sp)
    23f4:	6105                	addi	sp,sp,32
    23f6:	b7a1                	j	0x233e

Disassembly of section .text.s25fl128s_rdsr1:

000023f8 <.text.s25fl128s_rdsr1>:
    23f8:	1141                	addi	sp,sp,-16
    23fa:	800007b7          	lui	a5,0x80000
    23fe:	c606                	sw	ra,12(sp)
    2400:	10578793          	addi	a5,a5,261 # 0x80000105
    2404:	6729                	lui	a4,0xa
    2406:	c31c                	sw	a5,0(a4)
    2408:	3f21                	jal	0x2320
    240a:	67a9                	lui	a5,0xa
    240c:	4788                	lw	a0,8(a5)
    240e:	40b2                	lw	ra,12(sp)
    2410:	0ff57513          	zext.b	a0,a0
    2414:	0141                	addi	sp,sp,16
    2416:	8082                	ret

Disassembly of section .text.s25fl128s_rdsr2:

00002418 <.text.s25fl128s_rdsr2>:
    2418:	1141                	addi	sp,sp,-16
    241a:	800007b7          	lui	a5,0x80000
    241e:	c606                	sw	ra,12(sp)
    2420:	10778793          	addi	a5,a5,263 # 0x80000107
    2424:	6729                	lui	a4,0xa
    2426:	c31c                	sw	a5,0(a4)
    2428:	3de5                	jal	0x2320
    242a:	67a9                	lui	a5,0xa
    242c:	4788                	lw	a0,8(a5)
    242e:	40b2                	lw	ra,12(sp)
    2430:	0ff57513          	zext.b	a0,a0
    2434:	0141                	addi	sp,sp,16
    2436:	8082                	ret

Disassembly of section .text.s25fl128s_rdcr:

00002438 <.text.s25fl128s_rdcr>:
    2438:	1141                	addi	sp,sp,-16
    243a:	800007b7          	lui	a5,0x80000
    243e:	c606                	sw	ra,12(sp)
    2440:	13578793          	addi	a5,a5,309 # 0x80000135
    2444:	6729                	lui	a4,0xa
    2446:	c31c                	sw	a5,0(a4)
    2448:	3de1                	jal	0x2320
    244a:	67a9                	lui	a5,0xa
    244c:	4788                	lw	a0,8(a5)
    244e:	40b2                	lw	ra,12(sp)
    2450:	0ff57513          	zext.b	a0,a0
    2454:	0141                	addi	sp,sp,16
    2456:	8082                	ret

Disassembly of section .text.s25fl128s_read_id:

00002458 <.text.s25fl128s_read_id>:
    2458:	1141                	addi	sp,sp,-16
    245a:	c606                	sw	ra,12(sp)
    245c:	67a9                	lui	a5,0xa
    245e:	c3c8                	sw	a0,4(a5)
    2460:	800127b7          	lui	a5,0x80012
    2464:	99078793          	addi	a5,a5,-1648 # 0x80011990
    2468:	6729                	lui	a4,0xa
    246a:	c31c                	sw	a5,0(a4)
    246c:	3d55                	jal	0x2320
    246e:	67a9                	lui	a5,0xa
    2470:	4788                	lw	a0,8(a5)
    2472:	40b2                	lw	ra,12(sp)
    2474:	0542                	slli	a0,a0,0x10
    2476:	8141                	srli	a0,a0,0x10
    2478:	0141                	addi	sp,sp,16
    247a:	8082                	ret

Disassembly of section .text.s25fl128s_res:

0000247c <.text.s25fl128s_res>:
    247c:	1141                	addi	sp,sp,-16
    247e:	800027b7          	lui	a5,0x80002
    2482:	c606                	sw	ra,12(sp)
    2484:	9ab78793          	addi	a5,a5,-1621 # 0x800019ab
    2488:	6729                	lui	a4,0xa
    248a:	c31c                	sw	a5,0(a4)
    248c:	3d51                	jal	0x2320
    248e:	67a9                	lui	a5,0xa
    2490:	4788                	lw	a0,8(a5)
    2492:	40b2                	lw	ra,12(sp)
    2494:	0ff57513          	zext.b	a0,a0
    2498:	0141                	addi	sp,sp,16
    249a:	8082                	ret

Disassembly of section .text.s25fl128s_wrr:

0000249c <.text.s25fl128s_wrr>:
    249c:	67a9                	lui	a5,0xa
    249e:	c788                	sw	a0,8(a5)
    24a0:	800107b7          	lui	a5,0x80010
    24a4:	50178793          	addi	a5,a5,1281 # 0x80010501
    24a8:	6729                	lui	a4,0xa
    24aa:	c31c                	sw	a5,0(a4)
    24ac:	bd95                	j	0x2320

Disassembly of section .text.s25fl128s_read:

000024ae <.text.s25fl128s_read>:
    24ae:	fff60793          	addi	a5,a2,-1
    24b2:	80002737          	lui	a4,0x80002
    24b6:	1141                	addi	sp,sp,-16
    24b8:	90370713          	addi	a4,a4,-1789 # 0x80001903
    24bc:	07c2                	slli	a5,a5,0x10
    24be:	c422                	sw	s0,8(sp)
    24c0:	c226                	sw	s1,4(sp)
    24c2:	c606                	sw	ra,12(sp)
    24c4:	97ba                	add	a5,a5,a4
    24c6:	6729                	lui	a4,0xa
    24c8:	c348                	sw	a0,4(a4)
    24ca:	6729                	lui	a4,0xa
    24cc:	c31c                	sw	a5,0(a4)
    24ce:	84ae                	mv	s1,a1
    24d0:	8432                	mv	s0,a2
    24d2:	35b9                	jal	0x2320
    24d4:	85a2                	mv	a1,s0
    24d6:	4422                	lw	s0,8(sp)
    24d8:	40b2                	lw	ra,12(sp)
    24da:	8526                	mv	a0,s1
    24dc:	4492                	lw	s1,4(sp)
    24de:	0141                	addi	sp,sp,16
    24e0:	bdb9                	j	0x233e

Disassembly of section .text.s25fl128s_pp:

000024e2 <.text.s25fl128s_pp>:
    24e2:	1141                	addi	sp,sp,-16
    24e4:	c422                	sw	s0,8(sp)
    24e6:	800027b7          	lui	a5,0x80002
    24ea:	fff60413          	addi	s0,a2,-1
    24ee:	d0278793          	addi	a5,a5,-766 # 0x80001d02
    24f2:	0442                	slli	s0,s0,0x10
    24f4:	c606                	sw	ra,12(sp)
    24f6:	872a                	mv	a4,a0
    24f8:	943e                	add	s0,s0,a5
    24fa:	67a9                	lui	a5,0xa
    24fc:	852e                	mv	a0,a1
    24fe:	c3d8                	sw	a4,4(a5)
    2500:	85b2                	mv	a1,a2
    2502:	3db1                	jal	0x235e
    2504:	67a9                	lui	a5,0xa
    2506:	c380                	sw	s0,0(a5)
    2508:	4422                	lw	s0,8(sp)
    250a:	40b2                	lw	ra,12(sp)
    250c:	0141                	addi	sp,sp,16
    250e:	bd09                	j	0x2320

Disassembly of section .text.s25fl128s_se:

00002510 <.text.s25fl128s_se>:
    2510:	67a9                	lui	a5,0xa
    2512:	c788                	sw	a0,8(a5)
    2514:	800207b7          	lui	a5,0x80020
    2518:	5d878793          	addi	a5,a5,1496 # 0x800205d8
    251c:	6729                	lui	a4,0xa
    251e:	c31c                	sw	a5,0(a4)
    2520:	b501                	j	0x2320

Disassembly of section .text.s25fl128s_dor:

00002522 <.text.s25fl128s_dor>:
    2522:	fff60793          	addi	a5,a2,-1
    2526:	80002737          	lui	a4,0x80002
    252a:	1141                	addi	sp,sp,-16
    252c:	23b70713          	addi	a4,a4,571 # 0x8000223b
    2530:	07c2                	slli	a5,a5,0x10
    2532:	c422                	sw	s0,8(sp)
    2534:	c226                	sw	s1,4(sp)
    2536:	c606                	sw	ra,12(sp)
    2538:	97ba                	add	a5,a5,a4
    253a:	6729                	lui	a4,0xa
    253c:	c348                	sw	a0,4(a4)
    253e:	6729                	lui	a4,0xa
    2540:	c31c                	sw	a5,0(a4)
    2542:	84ae                	mv	s1,a1
    2544:	8432                	mv	s0,a2
    2546:	3be9                	jal	0x2320
    2548:	85a2                	mv	a1,s0
    254a:	4422                	lw	s0,8(sp)
    254c:	40b2                	lw	ra,12(sp)
    254e:	8526                	mv	a0,s1
    2550:	4492                	lw	s1,4(sp)
    2552:	0141                	addi	sp,sp,16
    2554:	b3ed                	j	0x233e

Disassembly of section .text.s25fl128s_qor:

00002556 <.text.s25fl128s_qor>:
    2556:	fff60793          	addi	a5,a2,-1
    255a:	80002737          	lui	a4,0x80002
    255e:	1141                	addi	sp,sp,-16
    2560:	36b70713          	addi	a4,a4,875 # 0x8000236b
    2564:	07c2                	slli	a5,a5,0x10
    2566:	c422                	sw	s0,8(sp)
    2568:	c226                	sw	s1,4(sp)
    256a:	c606                	sw	ra,12(sp)
    256c:	97ba                	add	a5,a5,a4
    256e:	6729                	lui	a4,0xa
    2570:	c348                	sw	a0,4(a4)
    2572:	6729                	lui	a4,0xa
    2574:	c31c                	sw	a5,0(a4)
    2576:	84ae                	mv	s1,a1
    2578:	8432                	mv	s0,a2
    257a:	335d                	jal	0x2320
    257c:	85a2                	mv	a1,s0
    257e:	4422                	lw	s0,8(sp)
    2580:	40b2                	lw	ra,12(sp)
    2582:	8526                	mv	a0,s1
    2584:	4492                	lw	s1,4(sp)
    2586:	0141                	addi	sp,sp,16
    2588:	bb5d                	j	0x233e

Disassembly of section .text.s25fl128s_qpp:

0000258a <.text.s25fl128s_qpp>:
    258a:	fff60793          	addi	a5,a2,-1
    258e:	80002737          	lui	a4,0x80002
    2592:	1141                	addi	sp,sp,-16
    2594:	f3270713          	addi	a4,a4,-206 # 0x80001f32
    2598:	07c2                	slli	a5,a5,0x10
    259a:	c606                	sw	ra,12(sp)
    259c:	86aa                	mv	a3,a0
    259e:	97ba                	add	a5,a5,a4
    25a0:	6729                	lui	a4,0xa
    25a2:	c354                	sw	a3,4(a4)
    25a4:	6729                	lui	a4,0xa
    25a6:	852e                	mv	a0,a1
    25a8:	c31c                	sw	a5,0(a4)
    25aa:	85b2                	mv	a1,a2
    25ac:	3b4d                	jal	0x235e
    25ae:	40b2                	lw	ra,12(sp)
    25b0:	0141                	addi	sp,sp,16
    25b2:	b3bd                	j	0x2320

Disassembly of section .text.qspi_custom_write:

000025b4 <.text.qspi_custom_write>:
    25b4:	88aa                	mv	a7,a0
    25b6:	852e                	mv	a0,a1
    25b8:	85be                	mv	a1,a5
    25ba:	800007b7          	lui	a5,0x80000
    25be:	40078793          	addi	a5,a5,1024 # 0x80000400
    25c2:	0866                	slli	a6,a6,0x19
    25c4:	983e                	add	a6,a6,a5
    25c6:	072e                	slli	a4,a4,0xb
    25c8:	fff58793          	addi	a5,a1,-1
    25cc:	1141                	addi	sp,sp,-16
    25ce:	983a                	add	a6,a6,a4
    25d0:	07c2                	slli	a5,a5,0x10
    25d2:	c422                	sw	s0,8(sp)
    25d4:	c606                	sw	ra,12(sp)
    25d6:	983e                	add	a6,a6,a5
    25d8:	06a2                	slli	a3,a3,0x8
    25da:	67a9                	lui	a5,0xa
    25dc:	0ff67613          	zext.b	a2,a2
    25e0:	9836                	add	a6,a6,a3
    25e2:	0117a223          	sw	a7,4(a5) # 0xa004
    25e6:	00c80433          	add	s0,a6,a2
    25ea:	3b95                	jal	0x235e
    25ec:	67a9                	lui	a5,0xa
    25ee:	c380                	sw	s0,0(a5)
    25f0:	4422                	lw	s0,8(sp)
    25f2:	40b2                	lw	ra,12(sp)
    25f4:	0141                	addi	sp,sp,16
    25f6:	b32d                	j	0x2320

Disassembly of section .text.qspi_custom_read:

000025f8 <.text.qspi_custom_read>:
    25f8:	1141                	addi	sp,sp,-16
    25fa:	c422                	sw	s0,8(sp)
    25fc:	0866                	slli	a6,a6,0x19
    25fe:	843e                	mv	s0,a5
    2600:	800007b7          	lui	a5,0x80000
    2604:	983e                	add	a6,a6,a5
    2606:	072e                	slli	a4,a4,0xb
    2608:	fff40793          	addi	a5,s0,-1
    260c:	983a                	add	a6,a6,a4
    260e:	07c2                	slli	a5,a5,0x10
    2610:	983e                	add	a6,a6,a5
    2612:	06a2                	slli	a3,a3,0x8
    2614:	c226                	sw	s1,4(sp)
    2616:	c606                	sw	ra,12(sp)
    2618:	0ff67613          	zext.b	a2,a2
    261c:	9836                	add	a6,a6,a3
    261e:	67a9                	lui	a5,0xa
    2620:	c3c8                	sw	a0,4(a5)
    2622:	9832                	add	a6,a6,a2
    2624:	67a9                	lui	a5,0xa
    2626:	0107a023          	sw	a6,0(a5) # 0xa000
    262a:	84ae                	mv	s1,a1
    262c:	39d5                	jal	0x2320
    262e:	85a2                	mv	a1,s0
    2630:	4422                	lw	s0,8(sp)
    2632:	40b2                	lw	ra,12(sp)
    2634:	8526                	mv	a0,s1
    2636:	4492                	lw	s1,4(sp)
    2638:	0141                	addi	sp,sp,16
    263a:	b311                	j	0x233e

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

Disassembly of section .text.usb_connected:

0000268c <.text.usb_connected>:
    268c:	67b9                	lui	a5,0xe
    268e:	47c8                	lw	a0,12(a5)
    2690:	8905                	andi	a0,a0,1
    2692:	8082                	ret

Disassembly of section .text.usb_conf:

00002694 <.text.usb_conf>:
    2694:	67b9                	lui	a5,0xe
    2696:	6739                	lui	a4,0xe
    2698:	c388                	sw	a0,0(a5)
    269a:	0731                	addi	a4,a4,12 # 0xe00c
    269c:	431c                	lw	a5,0(a4)
    269e:	8b85                	andi	a5,a5,1
    26a0:	dff5                	beqz	a5,0x269c
    26a2:	8082                	ret

Disassembly of section .text.usb_rw:

000026a4 <.text.usb_rw>:
    26a4:	67b9                	lui	a5,0xe
    26a6:	c788                	sw	a0,8(a5)
    26a8:	67b9                	lui	a5,0xe
    26aa:	07b1                	addi	a5,a5,12 # 0xe00c
    26ac:	4709                	li	a4,2
    26ae:	4394                	lw	a3,0(a5)
    26b0:	fee68fe3          	beq	a3,a4,0x26ae
    26b4:	c398                	sw	a4,0(a5)
    26b6:	67b9                	lui	a5,0xe
    26b8:	43c8                	lw	a0,4(a5)
    26ba:	8082                	ret

Disassembly of section .text.gpio_write:

000026bc <.text.gpio_write>:
    26bc:	67c1                	lui	a5,0x10
    26be:	c3c8                	sw	a0,4(a5)
    26c0:	8082                	ret

Disassembly of section .text.gpio_read:

000026c2 <.text.gpio_read>:
    26c2:	67c1                	lui	a5,0x10
    26c4:	4388                	lw	a0,0(a5)
    26c6:	0542                	slli	a0,a0,0x10
    26c8:	8141                	srli	a0,a0,0x10
    26ca:	8082                	ret

Disassembly of section .text.instr_mem_write:

000026cc <.text.instr_mem_write>:
    26cc:	050a                	slli	a0,a0,0x2
    26ce:	6791                	lui	a5,0x4
    26d0:	97aa                	add	a5,a5,a0
    26d2:	c38c                	sw	a1,0(a5)
    26d4:	8082                	ret

Disassembly of section .text.uart_main:

000026d6 <.text.uart_main>:
    26d6:	1141                	addi	sp,sp,-16
    26d8:	6785                	lui	a5,0x1
    26da:	c422                	sw	s0,8(sp)
    26dc:	c226                	sw	s1,4(sp)
    26de:	c606                	sw	ra,12(sp)
    26e0:	45778793          	addi	a5,a5,1111 # 0x1457
    26e4:	6719                	lui	a4,0x6
    26e6:	c31c                	sw	a5,0(a4)
    26e8:	6441                	lui	s0,0x10
    26ea:	6799                	lui	a5,0x6
    26ec:	0007a223          	sw	zero,4(a5) # 0x6004
    26f0:	64c1                	lui	s1,0x10
    26f2:	0411                	addi	s0,s0,4 # 0x10004
    26f4:	3e6d                	jal	0x22ae
    26f6:	c008                	sw	a0,0(s0)
    26f8:	4088                	lw	a0,0(s1)
    26fa:	0ff57513          	zext.b	a0,a0
    26fe:	36e9                	jal	0x22c8
    2700:	bfd5                	j	0x26f4

Disassembly of section .text.uart_interrupt:

00002702 <.text.uart_interrupt>:
    2702:	8082                	ret

Disassembly of section .text.i2c_main:

00002704 <.text.i2c_main>:
    2704:	1141                	addi	sp,sp,-16
    2706:	c422                	sw	s0,8(sp)
    2708:	c226                	sw	s1,4(sp)
    270a:	c04a                	sw	s2,0(sp)
    270c:	c606                	sw	ra,12(sp)
    270e:	67a1                	lui	a5,0x8
    2710:	07b00713          	li	a4,123
    2714:	c3d8                	sw	a4,4(a5)
    2716:	4605                	li	a2,1
    2718:	4581                	li	a1,0
    271a:	557d                	li	a0,-1
    271c:	64c1                	lui	s1,0x10
    271e:	6441                	lui	s0,0x10
    2720:	3f2d                	jal	0x265a
    2722:	14fd                	addi	s1,s1,-1 # 0xffff
    2724:	0411                	addi	s0,s0,4 # 0x10004
    2726:	04c02783          	lw	a5,76(zero) # 0x4c
    272a:	dff5                	beqz	a5,0x2726
    272c:	4509                	li	a0,2
    272e:	3ed9                	jal	0x2304
    2730:	8d65                	and	a0,a0,s1
    2732:	c008                	sw	a0,0(s0)
    2734:	04002623          	sw	zero,76(zero) # 0x4c
    2738:	b7fd                	j	0x2726

Disassembly of section .text.i2c_interrupt:

0000273a <.text.i2c_interrupt>:
    273a:	4705                	li	a4,1
    273c:	04e02623          	sw	a4,76(zero) # 0x4c
    2740:	8082                	ret

Disassembly of section .text.qspi_main:

00002742 <.text.qspi_main>:
    2742:	711d                	addi	sp,sp,-96
    2744:	ce86                	sw	ra,92(sp)
    2746:	850a                	mv	a0,sp
    2748:	31ad                	jal	0x23b2
    274a:	bff5                	j	0x2746

Disassembly of section .text.qspi_interrupt:

0000274c <.text.qspi_interrupt>:
    274c:	8082                	ret

Disassembly of section .text.timer_main:

0000274e <.text.timer_main>:
    274e:	1101                	addi	sp,sp,-32
    2750:	653d                	lui	a0,0xf
    2752:	cc22                	sw	s0,24(sp)
    2754:	c84a                	sw	s2,16(sp)
    2756:	4605                	li	a2,1
    2758:	4581                	li	a1,0
    275a:	a5f50513          	addi	a0,a0,-1441 # 0xea5f
    275e:	6441                	lui	s0,0x10
    2760:	6931                	lui	s2,0xc
    2762:	ca26                	sw	s1,20(sp)
    2764:	c64e                	sw	s3,12(sp)
    2766:	ce06                	sw	ra,28(sp)
    2768:	3dcd                	jal	0x265a
    276a:	fff40493          	addi	s1,s0,-1 # 0xffff
    276e:	0911                	addi	s2,s2,4 # 0xc004
    2770:	04802703          	lw	a4,72(zero) # 0x48
    2774:	401c                	lw	a5,0(s0)
    2776:	8fe5                	and	a5,a5,s1
    2778:	fee78ee3          	beq	a5,a4,0x2774
    277c:	401c                	lw	a5,0(s0)
    277e:	8fe5                	and	a5,a5,s1
    2780:	00f92023          	sw	a5,0(s2)
    2784:	35d1                	jal	0x2648
    2786:	401c                	lw	a5,0(s0)
    2788:	8fe5                	and	a5,a5,s1
    278a:	04f02423          	sw	a5,72(zero) # 0x48
    278e:	b7cd                	j	0x2770

Disassembly of section .text.timer_interrupt:

00002790 <.text.timer_interrupt>:
    2790:	0f005683          	lhu	a3,240(zero) # 0xf0
    2794:	6741                	lui	a4,0x10
    2796:	c354                	sw	a3,4(a4)
    2798:	0f002703          	lw	a4,240(zero) # 0xf0
    279c:	0705                	addi	a4,a4,1 # 0x10001
    279e:	0ee02823          	sw	a4,240(zero) # 0xf0
    27a2:	8082                	ret

Disassembly of section .text.gpio_main:

000027a4 <.text.gpio_main>:
    27a4:	66c1                	lui	a3,0x10
    27a6:	67c1                	lui	a5,0x10
    27a8:	fff68613          	addi	a2,a3,-1 # 0xffff
    27ac:	0791                	addi	a5,a5,4 # 0x10004
    27ae:	4298                	lw	a4,0(a3)
    27b0:	8f71                	and	a4,a4,a2
    27b2:	c398                	sw	a4,0(a5)
    27b4:	bfed                	j	0x27ae

Disassembly of section .text.gpio_interrupt:

000027b6 <.text.gpio_interrupt>:
    27b6:	8082                	ret

Disassembly of section .text.usb_main:

000027b8 <.text.usb_main>:
    27b8:	7139                	addi	sp,sp,-64
    27ba:	d84a                	sw	s2,48(sp)
    27bc:	d64e                	sw	s3,44(sp)
    27be:	4605                	li	a2,1
    27c0:	4581                	li	a1,0
    27c2:	557d                	li	a0,-1
    27c4:	6939                	lui	s2,0xe
    27c6:	69c1                	lui	s3,0x10
    27c8:	dc22                	sw	s0,56(sp)
    27ca:	da26                	sw	s1,52(sp)
    27cc:	d452                	sw	s4,40(sp)
    27ce:	d256                	sw	s5,36(sp)
    27d0:	d05a                	sw	s6,32(sp)
    27d2:	ce5e                	sw	s7,28(sp)
    27d4:	de06                	sw	ra,60(sp)
    27d6:	cc62                	sw	s8,24(sp)
    27d8:	ca66                	sw	s9,20(sp)
    27da:	c86a                	sw	s10,16(sp)
    27dc:	c66e                	sw	s11,12(sp)
    27de:	6ac1                	lui	s5,0x10
    27e0:	3dad                	jal	0x265a
    27e2:	0931                	addi	s2,s2,12 # 0xe00c
    27e4:	0991                	addi	s3,s3,4 # 0x10004
    27e6:	4b91                	li	s7,4
    27e8:	000aa783          	lw	a5,0(s5) # 0x10000
    27ec:	0e002223          	sw	zero,228(zero) # 0xe4
    27f0:	0ff7f793          	zext.b	a5,a5
    27f4:	0ef02623          	sw	a5,236(zero) # 0xec
    27f8:	e381                	bnez	a5,0x27f8
    27fa:	0e002783          	lw	a5,224(zero) # 0xe0
    27fe:	c399                	beqz	a5,0x2804
    2800:	4501                	li	a0,0
    2802:	3d49                	jal	0x2694
    2804:	0e402783          	lw	a5,228(zero) # 0xe4
    2808:	0ef02023          	sw	a5,224(zero) # 0xe0
    280c:	00092703          	lw	a4,0(s2)
    2810:	07a2                	slli	a5,a5,0x8
    2812:	8b05                	andi	a4,a4,1
    2814:	97ba                	add	a5,a5,a4
    2816:	07c2                	slli	a5,a5,0x10
    2818:	83c1                	srli	a5,a5,0x10
    281a:	00f9a023          	sw	a5,0(s3)
    281e:	0e402783          	lw	a5,228(zero) # 0xe4
    2822:	05778c63          	beq	a5,s7,0x287a
    2826:	04fbe163          	bltu	s7,a5,0x2868
    282a:	4705                	li	a4,1
    282c:	04e78163          	beq	a5,a4,0x286e
    2830:	4709                	li	a4,2
    2832:	fae79be3          	bne	a5,a4,0x27e8
    2836:	4501                	li	a0,0
    2838:	35b5                	jal	0x26a4
    283a:	4c81                	li	s9,0
    283c:	14000d13          	li	s10,320
    2840:	0b400d93          	li	s11,180
    2844:	4c01                	li	s8,0
    2846:	0e802503          	lw	a0,232(zero) # 0xe8
    284a:	9566                	add	a0,a0,s9
    284c:	9562                	add	a0,a0,s8
    284e:	0c05                	addi	s8,s8,1
    2850:	3d91                	jal	0x26a4
    2852:	ffac1ae3          	bne	s8,s10,0x2846
    2856:	0c85                	addi	s9,s9,1
    2858:	ffbc96e3          	bne	s9,s11,0x2844
    285c:	0e802783          	lw	a5,232(zero) # 0xe8
    2860:	0785                	addi	a5,a5,1
    2862:	0ef02423          	sw	a5,232(zero) # 0xe8
    2866:	b749                	j	0x27e8
    2868:	4715                	li	a4,5
    286a:	f6e79fe3          	bne	a5,a4,0x27e8
    286e:	0ec02503          	lw	a0,236(zero) # 0xec
    2872:	3d0d                	jal	0x26a4
    2874:	0ea02623          	sw	a0,236(zero) # 0xec
    2878:	bf85                	j	0x27e8
    287a:	000aa783          	lw	a5,0(s5)
    287e:	07c2                	slli	a5,a5,0x10
    2880:	83c1                	srli	a5,a5,0x10
    2882:	83a1                	srli	a5,a5,0x8
    2884:	0ef02623          	sw	a5,236(zero) # 0xec
    2888:	b785                	j	0x27e8

Disassembly of section .text.usb_interrupt:

0000288a <.text.usb_interrupt>:
    288a:	0e402703          	lw	a4,228(zero) # 0xe4
    288e:	4791                	li	a5,4
    2890:	00f71563          	bne	a4,a5,0x289a
    2894:	0ec02503          	lw	a0,236(zero) # 0xec
    2898:	b531                	j	0x26a4
    289a:	8082                	ret

Disassembly of section .text.data_mem_main:

0000289c <.text.data_mem_main>:
    289c:	66c1                	lui	a3,0x10
    289e:	6741                	lui	a4,0x10
    28a0:	fff68613          	addi	a2,a3,-1 # 0xffff
    28a4:	0711                	addi	a4,a4,4 # 0x10004
    28a6:	429c                	lw	a5,0(a3)
    28a8:	8ff1                	and	a5,a5,a2
    28aa:	0786                	slli	a5,a5,0x1
    28ac:	0007d783          	lhu	a5,0(a5)
    28b0:	c31c                	sw	a5,0(a4)
    28b2:	bfd5                	j	0x28a6
