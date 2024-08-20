
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
    2018:	752000ef          	jal	0x276a
    201c:	4515                	li	a0,5
    201e:	77e000ef          	jal	0x279c
    2022:	66c1                	lui	a3,0x10
    2024:	4298                	lw	a4,0(a3)
    2026:	0742                	slli	a4,a4,0x10
    2028:	8341                	srli	a4,a4,0x10
    202a:	0ce01a23          	sh	a4,212(zero) # 0xd4
    202e:	0d405703          	lhu	a4,212(zero) # 0xd4
    2032:	db6d                	beqz	a4,0x2024
    2034:	6741                	lui	a4,0x10
    2036:	00072223          	sw	zero,4(a4) # 0x10004
    203a:	6731                	lui	a4,0xc
    203c:	00072623          	sw	zero,12(a4) # 0xc00c
    2040:	66c1                	lui	a3,0x10
    2042:	4298                	lw	a4,0(a3)
    2044:	0742                	slli	a4,a4,0x10
    2046:	8341                	srli	a4,a4,0x10
    2048:	ff6d                	bnez	a4,0x2042
    204a:	0d405683          	lhu	a3,212(zero) # 0xd4
    204e:	4721                	li	a4,8
    2050:	01069793          	slli	a5,a3,0x10
    2054:	83c1                	srli	a5,a5,0x10
    2056:	02e68e63          	beq	a3,a4,0x2092
    205a:	00f76d63          	bltu	a4,a5,0x2074
    205e:	4709                	li	a4,2
    2060:	02e78563          	beq	a5,a4,0x208a
    2064:	4711                	li	a4,4
    2066:	02e78463          	beq	a5,a4,0x208e
    206a:	4705                	li	a4,1
    206c:	00e78d63          	beq	a5,a4,0x2086
    2070:	30d000ef          	jal	0x2b7c
    2074:	4741                	li	a4,16
    2076:	02e78063          	beq	a5,a4,0x2096
    207a:	02000713          	li	a4,32
    207e:	fee799e3          	bne	a5,a4,0x2070
    2082:	1f1000ef          	jal	0x2a72
    2086:	067000ef          	jal	0x28ec
    208a:	0c7000ef          	jal	0x2950
    208e:	101000ef          	jal	0x298e
    2092:	177000ef          	jal	0x2a08
    2096:	1c9000ef          	jal	0x2a5e
	...
    21fe:	0000                	unimp
    2200:	7139                	addi	sp,sp,-64
    2202:	cc3e                	sw	a5,24(sp)
    2204:	d036                	sw	a3,32(sp)
    2206:	0d405683          	lhu	a3,212(zero) # 0xd4
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
    226c:	0fb000ef          	jal	0x2b66
    2270:	b7f9                	j	0x223e
    2272:	01c05783          	lhu	a5,28(zero) # 0x1c
    2276:	fff7c793          	not	a5,a5
    227a:	07c2                	slli	a5,a5,0x10
    227c:	83c1                	srli	a5,a5,0x10
    227e:	00f01e23          	sh	a5,28(zero) # 0x1c
    2282:	01c05703          	lhu	a4,28(zero) # 0x1c
    2286:	67c1                	lui	a5,0x10
    2288:	0742                	slli	a4,a4,0x10
    228a:	8341                	srli	a4,a4,0x10
    228c:	c3d8                	sw	a4,4(a5)
    228e:	bf45                	j	0x223e
    2290:	4705                	li	a4,1
    2292:	02e02223          	sw	a4,36(zero) # 0x24
    2296:	b765                	j	0x223e
    2298:	7b2000ef          	jal	0x2a4a
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

Disassembly of section .text.qspi_custom_x0:

00002386 <.text.qspi_custom_x0>:
    2386:	47f9                	li	a5,30
    2388:	02b7f733          	remu	a4,a5,a1
    238c:	02b7d7b3          	divu	a5,a5,a1
    2390:	00173713          	seqz	a4,a4
    2394:	8f99                	sub	a5,a5,a4
    2396:	80000737          	lui	a4,0x80000
    239a:	953a                	add	a0,a0,a4
    239c:	07e6                	slli	a5,a5,0x19
    239e:	97aa                	add	a5,a5,a0
    23a0:	6729                	lui	a4,0xa
    23a2:	c31c                	sw	a5,0(a4)
    23a4:	b751                	j	0x2328

Disassembly of section .text.qspi_custom_write:

000023a6 <.text.qspi_custom_write>:
    23a6:	1141                	addi	sp,sp,-16
    23a8:	c422                	sw	s0,8(sp)
    23aa:	88ae                	mv	a7,a1
    23ac:	fff78413          	addi	s0,a5,-1
    23b0:	85be                	mv	a1,a5
    23b2:	800007b7          	lui	a5,0x80000
    23b6:	40078793          	addi	a5,a5,1024 # 0x80000400
    23ba:	0442                	slli	s0,s0,0x10
    23bc:	943e                	add	s0,s0,a5
    23be:	9432                	add	s0,s0,a2
    23c0:	06a2                	slli	a3,a3,0x8
    23c2:	8305                	srli	a4,a4,0x1
    23c4:	9436                	add	s0,s0,a3
    23c6:	072e                	slli	a4,a4,0xb
    23c8:	943a                	add	s0,s0,a4
    23ca:	4779                	li	a4,30
    23cc:	030777b3          	remu	a5,a4,a6
    23d0:	c606                	sw	ra,12(sp)
    23d2:	03075733          	divu	a4,a4,a6
    23d6:	0017b793          	seqz	a5,a5
    23da:	8f1d                	sub	a4,a4,a5
    23dc:	67a9                	lui	a5,0xa
    23de:	0766                	slli	a4,a4,0x19
    23e0:	0117a223          	sw	a7,4(a5) # 0xa004
    23e4:	943a                	add	s0,s0,a4
    23e6:	3741                	jal	0x2366
    23e8:	67a9                	lui	a5,0xa
    23ea:	c380                	sw	s0,0(a5)
    23ec:	4422                	lw	s0,8(sp)
    23ee:	40b2                	lw	ra,12(sp)
    23f0:	0141                	addi	sp,sp,16
    23f2:	bf1d                	j	0x2328

Disassembly of section .text.qspi_custom_read:

000023f4 <.text.qspi_custom_read>:
    23f4:	1101                	addi	sp,sp,-32
    23f6:	cc22                	sw	s0,24(sp)
    23f8:	ce06                	sw	ra,28(sp)
    23fa:	843e                	mv	s0,a5
    23fc:	4791                	li	a5,4
    23fe:	04f69463          	bne	a3,a5,0x2446
    2402:	30060613          	addi	a2,a2,768
    2406:	46f9                	li	a3,30
    2408:	0306f7b3          	remu	a5,a3,a6
    240c:	8305                	srli	a4,a4,0x1
    240e:	072e                	slli	a4,a4,0xb
    2410:	c62a                	sw	a0,12(sp)
    2412:	0306d6b3          	divu	a3,a3,a6
    2416:	0017b793          	seqz	a5,a5
    241a:	fff40813          	addi	a6,s0,-1
    241e:	0842                	slli	a6,a6,0x10
    2420:	8e9d                	sub	a3,a3,a5
    2422:	800007b7          	lui	a5,0x80000
    2426:	983e                	add	a6,a6,a5
    2428:	06e6                	slli	a3,a3,0x19
    242a:	9742                	add	a4,a4,a6
    242c:	9736                	add	a4,a4,a3
    242e:	67a9                	lui	a5,0xa
    2430:	c3cc                	sw	a1,4(a5)
    2432:	9732                	add	a4,a4,a2
    2434:	67a9                	lui	a5,0xa
    2436:	c398                	sw	a4,0(a5)
    2438:	3dc5                	jal	0x2328
    243a:	85a2                	mv	a1,s0
    243c:	4462                	lw	s0,24(sp)
    243e:	4532                	lw	a0,12(sp)
    2440:	40f2                	lw	ra,28(sp)
    2442:	6105                	addi	sp,sp,32
    2444:	b709                	j	0x2346
    2446:	06a2                	slli	a3,a3,0x8
    2448:	9636                	add	a2,a2,a3
    244a:	bf75                	j	0x2406

Disassembly of section .text.s25fl128s_wren:

0000244c <.text.s25fl128s_wren>:
    244c:	800007b7          	lui	a5,0x80000
    2450:	0799                	addi	a5,a5,6 # 0x80000006
    2452:	6729                	lui	a4,0xa
    2454:	c31c                	sw	a5,0(a4)
    2456:	bdc9                	j	0x2328

Disassembly of section .text.s25fl128s_wrdi:

00002458 <.text.s25fl128s_wrdi>:
    2458:	800007b7          	lui	a5,0x80000
    245c:	0791                	addi	a5,a5,4 # 0x80000004
    245e:	6729                	lui	a4,0xa
    2460:	c31c                	sw	a5,0(a4)
    2462:	b5d9                	j	0x2328

Disassembly of section .text.s25fl128s_clsr:

00002464 <.text.s25fl128s_clsr>:
    2464:	800007b7          	lui	a5,0x80000
    2468:	03078793          	addi	a5,a5,48 # 0x80000030
    246c:	6729                	lui	a4,0xa
    246e:	c31c                	sw	a5,0(a4)
    2470:	bd65                	j	0x2328

Disassembly of section .text.s25fl128s_reset:

00002472 <.text.s25fl128s_reset>:
    2472:	800007b7          	lui	a5,0x80000
    2476:	0f078793          	addi	a5,a5,240 # 0x800000f0
    247a:	6729                	lui	a4,0xa
    247c:	c31c                	sw	a5,0(a4)
    247e:	b56d                	j	0x2328

Disassembly of section .text.s25fl128s_rdid:

00002480 <.text.s25fl128s_rdid>:
    2480:	1101                	addi	sp,sp,-32
    2482:	ce06                	sw	ra,28(sp)
    2484:	c62a                	sw	a0,12(sp)
    2486:	67a9                	lui	a5,0xa
    2488:	0007a223          	sw	zero,4(a5) # 0xa004
    248c:	801f07b7          	lui	a5,0x801f0
    2490:	19f78793          	addi	a5,a5,415 # 0x801f019f
    2494:	6729                	lui	a4,0xa
    2496:	c31c                	sw	a5,0(a4)
    2498:	3d41                	jal	0x2328
    249a:	4532                	lw	a0,12(sp)
    249c:	40f2                	lw	ra,28(sp)
    249e:	02000593          	li	a1,32
    24a2:	6105                	addi	sp,sp,32
    24a4:	b54d                	j	0x2346

Disassembly of section .text.s25fl128s_rdsr1:

000024a6 <.text.s25fl128s_rdsr1>:
    24a6:	1101                	addi	sp,sp,-32
    24a8:	ce06                	sw	ra,28(sp)
    24aa:	c62a                	sw	a0,12(sp)
    24ac:	67a9                	lui	a5,0xa
    24ae:	0007a223          	sw	zero,4(a5) # 0xa004
    24b2:	800007b7          	lui	a5,0x80000
    24b6:	10578793          	addi	a5,a5,261 # 0x80000105
    24ba:	6729                	lui	a4,0xa
    24bc:	c31c                	sw	a5,0(a4)
    24be:	35ad                	jal	0x2328
    24c0:	4532                	lw	a0,12(sp)
    24c2:	40f2                	lw	ra,28(sp)
    24c4:	4585                	li	a1,1
    24c6:	6105                	addi	sp,sp,32
    24c8:	bdbd                	j	0x2346

Disassembly of section .text.s25fl128s_rdsr2:

000024ca <.text.s25fl128s_rdsr2>:
    24ca:	1101                	addi	sp,sp,-32
    24cc:	ce06                	sw	ra,28(sp)
    24ce:	c62a                	sw	a0,12(sp)
    24d0:	67a9                	lui	a5,0xa
    24d2:	0007a223          	sw	zero,4(a5) # 0xa004
    24d6:	800007b7          	lui	a5,0x80000
    24da:	10778793          	addi	a5,a5,263 # 0x80000107
    24de:	6729                	lui	a4,0xa
    24e0:	c31c                	sw	a5,0(a4)
    24e2:	3599                	jal	0x2328
    24e4:	4532                	lw	a0,12(sp)
    24e6:	40f2                	lw	ra,28(sp)
    24e8:	4585                	li	a1,1
    24ea:	6105                	addi	sp,sp,32
    24ec:	bda9                	j	0x2346

Disassembly of section .text.s25fl128s_rdcr:

000024ee <.text.s25fl128s_rdcr>:
    24ee:	1101                	addi	sp,sp,-32
    24f0:	ce06                	sw	ra,28(sp)
    24f2:	c62a                	sw	a0,12(sp)
    24f4:	67a9                	lui	a5,0xa
    24f6:	0007a223          	sw	zero,4(a5) # 0xa004
    24fa:	800007b7          	lui	a5,0x80000
    24fe:	13578793          	addi	a5,a5,309 # 0x80000135
    2502:	6729                	lui	a4,0xa
    2504:	c31c                	sw	a5,0(a4)
    2506:	350d                	jal	0x2328
    2508:	4532                	lw	a0,12(sp)
    250a:	40f2                	lw	ra,28(sp)
    250c:	4585                	li	a1,1
    250e:	6105                	addi	sp,sp,32
    2510:	bd1d                	j	0x2346

Disassembly of section .text.s25fl128s_res:

00002512 <.text.s25fl128s_res>:
    2512:	1101                	addi	sp,sp,-32
    2514:	ce06                	sw	ra,28(sp)
    2516:	c62a                	sw	a0,12(sp)
    2518:	67a9                	lui	a5,0xa
    251a:	0007a223          	sw	zero,4(a5) # 0xa004
    251e:	800067b7          	lui	a5,0x80006
    2522:	1ab78793          	addi	a5,a5,427 # 0x800061ab
    2526:	6729                	lui	a4,0xa
    2528:	c31c                	sw	a5,0(a4)
    252a:	3bfd                	jal	0x2328
    252c:	4532                	lw	a0,12(sp)
    252e:	40f2                	lw	ra,28(sp)
    2530:	4585                	li	a1,1
    2532:	6105                	addi	sp,sp,32
    2534:	bd09                	j	0x2346

Disassembly of section .text.s25fl128s_read_id:

00002536 <.text.s25fl128s_read_id>:
    2536:	1101                	addi	sp,sp,-32
    2538:	ce06                	sw	ra,28(sp)
    253a:	c62a                	sw	a0,12(sp)
    253c:	67a9                	lui	a5,0xa
    253e:	c3cc                	sw	a1,4(a5)
    2540:	800167b7          	lui	a5,0x80016
    2544:	19078793          	addi	a5,a5,400 # 0x80016190
    2548:	6729                	lui	a4,0xa
    254a:	c31c                	sw	a5,0(a4)
    254c:	3bf1                	jal	0x2328
    254e:	4532                	lw	a0,12(sp)
    2550:	40f2                	lw	ra,28(sp)
    2552:	4589                	li	a1,2
    2554:	6105                	addi	sp,sp,32
    2556:	bbc5                	j	0x2346

Disassembly of section .text.s25fl128s_read:

00002558 <.text.s25fl128s_read>:
    2558:	87b2                	mv	a5,a2
    255a:	03200813          	li	a6,50
    255e:	4761                	li	a4,24
    2560:	4685                	li	a3,1
    2562:	460d                	li	a2,3
    2564:	bd41                	j	0x23f4

Disassembly of section .text.s25fl128s_wrr:

00002566 <.text.s25fl128s_wrr>:
    2566:	1141                	addi	sp,sp,-16
    2568:	c606                	sw	ra,12(sp)
    256a:	67a9                	lui	a5,0xa
    256c:	0007a223          	sw	zero,4(a5) # 0xa004
    2570:	4589                	li	a1,2
    2572:	3bd5                	jal	0x2366
    2574:	800167b7          	lui	a5,0x80016
    2578:	40b2                	lw	ra,12(sp)
    257a:	50178793          	addi	a5,a5,1281 # 0x80016501
    257e:	6729                	lui	a4,0xa
    2580:	c31c                	sw	a5,0(a4)
    2582:	0141                	addi	sp,sp,16
    2584:	b355                	j	0x2328

Disassembly of section .text.s25fl128s_se:

00002586 <.text.s25fl128s_se>:
    2586:	1141                	addi	sp,sp,-16
    2588:	c606                	sw	ra,12(sp)
    258a:	67a9                	lui	a5,0xa
    258c:	0007a223          	sw	zero,4(a5) # 0xa004
    2590:	458d                	li	a1,3
    2592:	3bd1                	jal	0x2366
    2594:	800207b7          	lui	a5,0x80020
    2598:	40b2                	lw	ra,12(sp)
    259a:	5d878793          	addi	a5,a5,1496 # 0x800205d8
    259e:	6729                	lui	a4,0xa
    25a0:	c31c                	sw	a5,0(a4)
    25a2:	0141                	addi	sp,sp,16
    25a4:	b351                	j	0x2328

Disassembly of section .text.s25fl128s_pp:

000025a6 <.text.s25fl128s_pp>:
    25a6:	87b2                	mv	a5,a2
    25a8:	08500813          	li	a6,133
    25ac:	4761                	li	a4,24
    25ae:	4685                	li	a3,1
    25b0:	4609                	li	a2,2
    25b2:	bbd5                	j	0x23a6

Disassembly of section .text.s25fl128s_dor:

000025b4 <.text.s25fl128s_dor>:
    25b4:	87b2                	mv	a5,a2
    25b6:	06800813          	li	a6,104
    25ba:	02000713          	li	a4,32
    25be:	4689                	li	a3,2
    25c0:	03b00613          	li	a2,59
    25c4:	bd05                	j	0x23f4

Disassembly of section .text.s25fl128s_qor:

000025c6 <.text.s25fl128s_qor>:
    25c6:	87b2                	mv	a5,a2
    25c8:	06800813          	li	a6,104
    25cc:	02000713          	li	a4,32
    25d0:	4691                	li	a3,4
    25d2:	06b00613          	li	a2,107
    25d6:	bd39                	j	0x23f4

Disassembly of section .text.s25fl128s_qpp:

000025d8 <.text.s25fl128s_qpp>:
    25d8:	87b2                	mv	a5,a2
    25da:	05000813          	li	a6,80
    25de:	4761                	li	a4,24
    25e0:	4691                	li	a3,4
    25e2:	03200613          	li	a2,50
    25e6:	b3c1                	j	0x23a6

Disassembly of section .text.mt25ql256aba_write_disable:

000025e8 <.text.mt25ql256aba_write_disable>:
    25e8:	bd85                	j	0x2458

Disassembly of section .text.mt25ql256aba_write_enable:

000025ea <.text.mt25ql256aba_write_enable>:
    25ea:	b58d                	j	0x244c

Disassembly of section .text.mt25ql256aba_reset_enable:

000025ec <.text.mt25ql256aba_reset_enable>:
    25ec:	800007b7          	lui	a5,0x80000
    25f0:	06678793          	addi	a5,a5,102 # 0x80000066
    25f4:	6729                	lui	a4,0xa
    25f6:	c31c                	sw	a5,0(a4)
    25f8:	bb05                	j	0x2328

Disassembly of section .text.mt25ql256aba_reset_memory:

000025fa <.text.mt25ql256aba_reset_memory>:
    25fa:	800007b7          	lui	a5,0x80000
    25fe:	09978793          	addi	a5,a5,153 # 0x80000099
    2602:	6729                	lui	a4,0xa
    2604:	c31c                	sw	a5,0(a4)
    2606:	b30d                	j	0x2328

Disassembly of section .text.mt25ql256aba_read:

00002608 <.text.mt25ql256aba_read>:
    2608:	bf81                	j	0x2558

Disassembly of section .text.mt25ql256aba_page_program:

0000260a <.text.mt25ql256aba_page_program>:
    260a:	87b2                	mv	a5,a2
    260c:	03200813          	li	a6,50
    2610:	4761                	li	a4,24
    2612:	4685                	li	a3,1
    2614:	4609                	li	a2,2
    2616:	bb41                	j	0x23a6

Disassembly of section .text.mt25ql256aba_sector_erase:

00002618 <.text.mt25ql256aba_sector_erase>:
    2618:	87b2                	mv	a5,a2
    261a:	03200813          	li	a6,50
    261e:	4761                	li	a4,24
    2620:	4685                	li	a3,1
    2622:	0d800613          	li	a2,216
    2626:	b341                	j	0x23a6

Disassembly of section .text.mt25ql256aba_read_id:

00002628 <.text.mt25ql256aba_read_id>:
    2628:	87ae                	mv	a5,a1
    262a:	03200813          	li	a6,50
    262e:	4701                	li	a4,0
    2630:	4685                	li	a3,1
    2632:	09f00613          	li	a2,159
    2636:	4581                	li	a1,0
    2638:	bb75                	j	0x23f4

Disassembly of section .text.mt25ql256aba_read_status_register:

0000263a <.text.mt25ql256aba_read_status_register>:
    263a:	b5b5                	j	0x24a6

Disassembly of section .text.mt25ql256aba_read_flag_status_register:

0000263c <.text.mt25ql256aba_read_flag_status_register>:
    263c:	1101                	addi	sp,sp,-32
    263e:	ce06                	sw	ra,28(sp)
    2640:	c62a                	sw	a0,12(sp)
    2642:	67a9                	lui	a5,0xa
    2644:	0007a223          	sw	zero,4(a5) # 0xa004
    2648:	800007b7          	lui	a5,0x80000
    264c:	17078793          	addi	a5,a5,368 # 0x80000170
    2650:	6729                	lui	a4,0xa
    2652:	c31c                	sw	a5,0(a4)
    2654:	39d1                	jal	0x2328
    2656:	4532                	lw	a0,12(sp)
    2658:	40f2                	lw	ra,28(sp)
    265a:	4585                	li	a1,1
    265c:	6105                	addi	sp,sp,32
    265e:	b1e5                	j	0x2346

Disassembly of section .text.mt25ql256aba_read_nonvolatile_configuration_register:

00002660 <.text.mt25ql256aba_read_nonvolatile_configuration_register>:
    2660:	1101                	addi	sp,sp,-32
    2662:	ce06                	sw	ra,28(sp)
    2664:	c62a                	sw	a0,12(sp)
    2666:	67a9                	lui	a5,0xa
    2668:	0007a223          	sw	zero,4(a5) # 0xa004
    266c:	800107b7          	lui	a5,0x80010
    2670:	1b578793          	addi	a5,a5,437 # 0x800101b5
    2674:	6729                	lui	a4,0xa
    2676:	c31c                	sw	a5,0(a4)
    2678:	3945                	jal	0x2328
    267a:	4532                	lw	a0,12(sp)
    267c:	40f2                	lw	ra,28(sp)
    267e:	4589                	li	a1,2
    2680:	6105                	addi	sp,sp,32
    2682:	b1d1                	j	0x2346

Disassembly of section .text.mt25ql256aba_read_volatile_configuration_register:

00002684 <.text.mt25ql256aba_read_volatile_configuration_register>:
    2684:	1101                	addi	sp,sp,-32
    2686:	ce06                	sw	ra,28(sp)
    2688:	c62a                	sw	a0,12(sp)
    268a:	67a9                	lui	a5,0xa
    268c:	0007a223          	sw	zero,4(a5) # 0xa004
    2690:	800007b7          	lui	a5,0x80000
    2694:	18578793          	addi	a5,a5,389 # 0x80000185
    2698:	6729                	lui	a4,0xa
    269a:	c31c                	sw	a5,0(a4)
    269c:	3171                	jal	0x2328
    269e:	4532                	lw	a0,12(sp)
    26a0:	40f2                	lw	ra,28(sp)
    26a2:	4585                	li	a1,1
    26a4:	6105                	addi	sp,sp,32
    26a6:	b145                	j	0x2346

Disassembly of section .text.mt25ql256aba_write_status_register:

000026a8 <.text.mt25ql256aba_write_status_register>:
    26a8:	1141                	addi	sp,sp,-16
    26aa:	c606                	sw	ra,12(sp)
    26ac:	67a9                	lui	a5,0xa
    26ae:	0007a223          	sw	zero,4(a5) # 0xa004
    26b2:	4585                	li	a1,1
    26b4:	394d                	jal	0x2366
    26b6:	800007b7          	lui	a5,0x80000
    26ba:	40b2                	lw	ra,12(sp)
    26bc:	50178793          	addi	a5,a5,1281 # 0x80000501
    26c0:	6729                	lui	a4,0xa
    26c2:	c31c                	sw	a5,0(a4)
    26c4:	0141                	addi	sp,sp,16
    26c6:	b18d                	j	0x2328

Disassembly of section .text.mt25ql256aba_write_nonvolatile_configuration_register:

000026c8 <.text.mt25ql256aba_write_nonvolatile_configuration_register>:
    26c8:	1141                	addi	sp,sp,-16
    26ca:	c606                	sw	ra,12(sp)
    26cc:	67a9                	lui	a5,0xa
    26ce:	0007a223          	sw	zero,4(a5) # 0xa004
    26d2:	4589                	li	a1,2
    26d4:	3949                	jal	0x2366
    26d6:	800107b7          	lui	a5,0x80010
    26da:	40b2                	lw	ra,12(sp)
    26dc:	5b178793          	addi	a5,a5,1457 # 0x800105b1
    26e0:	6729                	lui	a4,0xa
    26e2:	c31c                	sw	a5,0(a4)
    26e4:	0141                	addi	sp,sp,16
    26e6:	b189                	j	0x2328

Disassembly of section .text.mt25ql256aba_write_volatile_configuration_register:

000026e8 <.text.mt25ql256aba_write_volatile_configuration_register>:
    26e8:	1141                	addi	sp,sp,-16
    26ea:	c606                	sw	ra,12(sp)
    26ec:	67a9                	lui	a5,0xa
    26ee:	0007a223          	sw	zero,4(a5) # 0xa004
    26f2:	4585                	li	a1,1
    26f4:	398d                	jal	0x2366
    26f6:	800007b7          	lui	a5,0x80000
    26fa:	40b2                	lw	ra,12(sp)
    26fc:	58178793          	addi	a5,a5,1409 # 0x80000581
    2700:	6729                	lui	a4,0xa
    2702:	c31c                	sw	a5,0(a4)
    2704:	0141                	addi	sp,sp,16
    2706:	b10d                	j	0x2328

Disassembly of section .text.mt25ql256aba_write_enhanced_volatile_configuration_register:

00002708 <.text.mt25ql256aba_write_enhanced_volatile_configuration_register>:
    2708:	1141                	addi	sp,sp,-16
    270a:	c606                	sw	ra,12(sp)
    270c:	67a9                	lui	a5,0xa
    270e:	0007a223          	sw	zero,4(a5) # 0xa004
    2712:	4585                	li	a1,1
    2714:	3989                	jal	0x2366
    2716:	800007b7          	lui	a5,0x80000
    271a:	40b2                	lw	ra,12(sp)
    271c:	56178793          	addi	a5,a5,1377 # 0x80000561
    2720:	6729                	lui	a4,0xa
    2722:	c31c                	sw	a5,0(a4)
    2724:	0141                	addi	sp,sp,16
    2726:	b109                	j	0x2328

Disassembly of section .text.mt25ql256aba_dual_output_fast_read:

00002728 <.text.mt25ql256aba_dual_output_fast_read>:
    2728:	87b2                	mv	a5,a2
    272a:	03200813          	li	a6,50
    272e:	02000713          	li	a4,32
    2732:	4689                	li	a3,2
    2734:	03b00613          	li	a2,59
    2738:	b975                	j	0x23f4

Disassembly of section .text.mt25ql256aba_quad_output_fast_read:

0000273a <.text.mt25ql256aba_quad_output_fast_read>:
    273a:	87b2                	mv	a5,a2
    273c:	03200813          	li	a6,50
    2740:	02000713          	li	a4,32
    2744:	4691                	li	a3,4
    2746:	06b00613          	li	a2,107
    274a:	b16d                	j	0x23f4

Disassembly of section .text.timer_counter:

0000274c <.text.timer_counter>:
    274c:	67b1                	lui	a5,0xc
    274e:	4bc8                	lw	a0,20(a5)
    2750:	8082                	ret

Disassembly of section .text.timer_event:

00002752 <.text.timer_event>:
    2752:	67b1                	lui	a5,0xc
    2754:	4f88                	lw	a0,24(a5)
    2756:	8082                	ret

Disassembly of section .text.timer_clear:

00002758 <.text.timer_clear>:
    2758:	67b1                	lui	a5,0xc
    275a:	4705                	li	a4,1
    275c:	c798                	sw	a4,8(a5)
    275e:	67b1                	lui	a5,0xc
    2760:	cfd8                	sw	a4,28(a5)
    2762:	8082                	ret

Disassembly of section .text.timer_enabled:

00002764 <.text.timer_enabled>:
    2764:	67b1                	lui	a5,0xc
    2766:	c7c8                	sw	a0,12(a5)
    2768:	8082                	ret

Disassembly of section .text.timer_conf:

0000276a <.text.timer_conf>:
    276a:	1141                	addi	sp,sp,-16
    276c:	c606                	sw	ra,12(sp)
    276e:	67b1                	lui	a5,0xc
    2770:	c388                	sw	a0,0(a5)
    2772:	c3cc                	sw	a1,4(a5)
    2774:	67b1                	lui	a5,0xc
    2776:	cb90                	sw	a2,16(a5)
    2778:	08000613          	li	a2,128
    277c:	6589                	lui	a1,0x2
    277e:	20058593          	addi	a1,a1,512 # 0x2200
    2782:	30559073          	csrw	mtvec,a1
    2786:	30046073          	csrsi	mstatus,8
    278a:	30462073          	csrs	mie,a2
    278e:	37e9                	jal	0x2758
    2790:	40b2                	lw	ra,12(sp)
    2792:	67b1                	lui	a5,0xc
    2794:	4705                	li	a4,1
    2796:	c7d8                	sw	a4,12(a5)
    2798:	0141                	addi	sp,sp,16
    279a:	8082                	ret

Disassembly of section .text.usb_conf:

0000279c <.text.usb_conf>:
    279c:	67b9                	lui	a5,0xe
    279e:	4398                	lw	a4,0(a5)
    27a0:	00a70963          	beq	a4,a0,0x27b2
    27a4:	4715                	li	a4,5
    27a6:	00a77563          	bgeu	a4,a0,0x27b0
    27aa:	0007a023          	sw	zero,0(a5) # 0xe000
    27ae:	8082                	ret
    27b0:	c388                	sw	a0,0(a5)
    27b2:	8082                	ret

Disassembly of section .text.usb_audio:

000027b4 <.text.usb_audio>:
    27b4:	67b9                	lui	a5,0xe
    27b6:	c788                	sw	a0,8(a5)
    27b8:	67b9                	lui	a5,0xe
    27ba:	07b1                	addi	a5,a5,12 # 0xe00c
    27bc:	4705                	li	a4,1
    27be:	c398                	sw	a4,0(a5)
    27c0:	4398                	lw	a4,0(a5)
    27c2:	ff7d                	bnez	a4,0x27c0
    27c4:	0007a023          	sw	zero,0(a5)
    27c8:	67b9                	lui	a5,0xe
    27ca:	43c8                	lw	a0,4(a5)
    27cc:	0ff57513          	zext.b	a0,a0
    27d0:	8082                	ret

Disassembly of section .text.usb_serial_read:

000027d2 <.text.usb_serial_read>:
    27d2:	67b9                	lui	a5,0xe
    27d4:	07b1                	addi	a5,a5,12 # 0xe00c
    27d6:	4398                	lw	a4,0(a5)
    27d8:	df7d                	beqz	a4,0x27d6
    27da:	0007a023          	sw	zero,0(a5)
    27de:	67b9                	lui	a5,0xe
    27e0:	43c8                	lw	a0,4(a5)
    27e2:	0ff57513          	zext.b	a0,a0
    27e6:	8082                	ret

Disassembly of section .text.usb_write:

000027e8 <.text.usb_write>:
    27e8:	67b9                	lui	a5,0xe
    27ea:	c788                	sw	a0,8(a5)
    27ec:	67b9                	lui	a5,0xe
    27ee:	07b1                	addi	a5,a5,12 # 0xe00c
    27f0:	4705                	li	a4,1
    27f2:	c398                	sw	a4,0(a5)
    27f4:	4398                	lw	a4,0(a5)
    27f6:	ff7d                	bnez	a4,0x27f4
    27f8:	0007a023          	sw	zero,0(a5)
    27fc:	8082                	ret

Disassembly of section .text.usb_print_short:

000027fe <.text.usb_print_short>:
    27fe:	1141                	addi	sp,sp,-16
    2800:	c422                	sw	s0,8(sp)
    2802:	c226                	sw	s1,4(sp)
    2804:	c04a                	sw	s2,0(sp)
    2806:	c606                	sw	ra,12(sp)
    2808:	842a                	mv	s0,a0
    280a:	4491                	li	s1,4
    280c:	03900913          	li	s2,57
    2810:	00c45793          	srli	a5,s0,0xc
    2814:	03078513          	addi	a0,a5,48
    2818:	00a97463          	bgeu	s2,a0,0x2820
    281c:	03778513          	addi	a0,a5,55
    2820:	0412                	slli	s0,s0,0x4
    2822:	0442                	slli	s0,s0,0x10
    2824:	14fd                	addi	s1,s1,-1
    2826:	37c9                	jal	0x27e8
    2828:	8041                	srli	s0,s0,0x10
    282a:	f0fd                	bnez	s1,0x2810
    282c:	40b2                	lw	ra,12(sp)
    282e:	4422                	lw	s0,8(sp)
    2830:	4492                	lw	s1,4(sp)
    2832:	4902                	lw	s2,0(sp)
    2834:	0141                	addi	sp,sp,16
    2836:	8082                	ret

Disassembly of section .text.usb_print_int:

00002838 <.text.usb_print_int>:
    2838:	1141                	addi	sp,sp,-16
    283a:	c422                	sw	s0,8(sp)
    283c:	842a                	mv	s0,a0
    283e:	8141                	srli	a0,a0,0x10
    2840:	c606                	sw	ra,12(sp)
    2842:	3f75                	jal	0x27fe
    2844:	01041513          	slli	a0,s0,0x10
    2848:	4422                	lw	s0,8(sp)
    284a:	40b2                	lw	ra,12(sp)
    284c:	8141                	srli	a0,a0,0x10
    284e:	0141                	addi	sp,sp,16
    2850:	b77d                	j	0x27fe

Disassembly of section .text.usb_print_newline:

00002852 <.text.usb_print_newline>:
    2852:	1141                	addi	sp,sp,-16
    2854:	4535                	li	a0,13
    2856:	c606                	sw	ra,12(sp)
    2858:	3f41                	jal	0x27e8
    285a:	40b2                	lw	ra,12(sp)
    285c:	4529                	li	a0,10
    285e:	0141                	addi	sp,sp,16
    2860:	b761                	j	0x27e8

Disassembly of section .text.usb_read_short:

00002862 <.text.usb_read_short>:
    2862:	1101                	addi	sp,sp,-32
    2864:	cc22                	sw	s0,24(sp)
    2866:	c84a                	sw	s2,16(sp)
    2868:	c64e                	sw	s3,12(sp)
    286a:	ce06                	sw	ra,28(sp)
    286c:	ca26                	sw	s1,20(sp)
    286e:	4411                	li	s0,4
    2870:	4501                	li	a0,0
    2872:	4925                	li	s2,9
    2874:	49bd                	li	s3,15
    2876:	0512                	slli	a0,a0,0x4
    2878:	01051493          	slli	s1,a0,0x10
    287c:	3f99                	jal	0x27d2
    287e:	fd050793          	addi	a5,a0,-48
    2882:	0ff7f793          	zext.b	a5,a5
    2886:	80c1                	srli	s1,s1,0x10
    2888:	00f97c63          	bgeu	s2,a5,0x28a0
    288c:	fc950793          	addi	a5,a0,-55
    2890:	0ff7f793          	zext.b	a5,a5
    2894:	00f9f663          	bgeu	s3,a5,0x28a0
    2898:	fa950513          	addi	a0,a0,-87
    289c:	0ff57793          	zext.b	a5,a0
    28a0:	00978533          	add	a0,a5,s1
    28a4:	0542                	slli	a0,a0,0x10
    28a6:	147d                	addi	s0,s0,-1
    28a8:	8141                	srli	a0,a0,0x10
    28aa:	f471                	bnez	s0,0x2876
    28ac:	40f2                	lw	ra,28(sp)
    28ae:	4462                	lw	s0,24(sp)
    28b0:	44d2                	lw	s1,20(sp)
    28b2:	4942                	lw	s2,16(sp)
    28b4:	49b2                	lw	s3,12(sp)
    28b6:	6105                	addi	sp,sp,32
    28b8:	8082                	ret

Disassembly of section .text.usb_read_int:

000028ba <.text.usb_read_int>:
    28ba:	1141                	addi	sp,sp,-16
    28bc:	c606                	sw	ra,12(sp)
    28be:	c422                	sw	s0,8(sp)
    28c0:	374d                	jal	0x2862
    28c2:	01051413          	slli	s0,a0,0x10
    28c6:	3f71                	jal	0x2862
    28c8:	40b2                	lw	ra,12(sp)
    28ca:	9522                	add	a0,a0,s0
    28cc:	4422                	lw	s0,8(sp)
    28ce:	0141                	addi	sp,sp,16
    28d0:	8082                	ret

Disassembly of section .text.gpio_write:

000028d2 <.text.gpio_write>:
    28d2:	67c1                	lui	a5,0x10
    28d4:	c3c8                	sw	a0,4(a5)
    28d6:	8082                	ret

Disassembly of section .text.gpio_read:

000028d8 <.text.gpio_read>:
    28d8:	67c1                	lui	a5,0x10
    28da:	4388                	lw	a0,0(a5)
    28dc:	0542                	slli	a0,a0,0x10
    28de:	8141                	srli	a0,a0,0x10
    28e0:	8082                	ret

Disassembly of section .text.instr_mem_write:

000028e2 <.text.instr_mem_write>:
    28e2:	050a                	slli	a0,a0,0x2
    28e4:	6791                	lui	a5,0x4
    28e6:	97aa                	add	a5,a5,a0
    28e8:	c38c                	sw	a1,0(a5)
    28ea:	8082                	ret

Disassembly of section .text.uart_main:

000028ec <.text.uart_main>:
    28ec:	1101                	addi	sp,sp,-32
    28ee:	cc22                	sw	s0,24(sp)
    28f0:	ca26                	sw	s1,20(sp)
    28f2:	c84a                	sw	s2,16(sp)
    28f4:	c64e                	sw	s3,12(sp)
    28f6:	ce06                	sw	ra,28(sp)
    28f8:	6799                	lui	a5,0x6
    28fa:	0c700713          	li	a4,199
    28fe:	c398                	sw	a4,0(a5)
    2900:	64c1                	lui	s1,0x10
    2902:	0007a223          	sw	zero,4(a5) # 0x6004
    2906:	4401                	li	s0,0
    2908:	4901                	li	s2,0
    290a:	69c1                	lui	s3,0x10
    290c:	0491                	addi	s1,s1,4 # 0x10004
    290e:	0009a503          	lw	a0,0(s3) # 0x10000
    2912:	02090363          	beqz	s2,0x2938
    2916:	0ff57513          	zext.b	a0,a0
    291a:	3a5d                	jal	0x22d0
    291c:	f0047413          	andi	s0,s0,-256
    2920:	3a59                	jal	0x22b6
    2922:	9522                	add	a0,a0,s0
    2924:	01051413          	slli	s0,a0,0x10
    2928:	8441                	srai	s0,s0,0x10
    292a:	01041793          	slli	a5,s0,0x10
    292e:	83c1                	srli	a5,a5,0x10
    2930:	00194913          	xori	s2,s2,1
    2934:	c09c                	sw	a5,0(s1)
    2936:	bfe1                	j	0x290e
    2938:	0542                	slli	a0,a0,0x10
    293a:	8141                	srli	a0,a0,0x10
    293c:	8121                	srli	a0,a0,0x8
    293e:	3a49                	jal	0x22d0
    2940:	3a9d                	jal	0x22b6
    2942:	0ff47413          	zext.b	s0,s0
    2946:	0522                	slli	a0,a0,0x8
    2948:	942a                	add	s0,s0,a0
    294a:	0442                	slli	s0,s0,0x10
    294c:	bff1                	j	0x2928

Disassembly of section .text.uart_interrupt:

0000294e <.text.uart_interrupt>:
    294e:	8082                	ret

Disassembly of section .text.i2c_main:

00002950 <.text.i2c_main>:
    2950:	1141                	addi	sp,sp,-16
    2952:	c422                	sw	s0,8(sp)
    2954:	c226                	sw	s1,4(sp)
    2956:	c04a                	sw	s2,0(sp)
    2958:	c606                	sw	ra,12(sp)
    295a:	67a1                	lui	a5,0x8
    295c:	07b00713          	li	a4,123
    2960:	c3d8                	sw	a4,4(a5)
    2962:	4605                	li	a2,1
    2964:	4581                	li	a1,0
    2966:	557d                	li	a0,-1
    2968:	64c1                	lui	s1,0x10
    296a:	6441                	lui	s0,0x10
    296c:	3bfd                	jal	0x276a
    296e:	14fd                	addi	s1,s1,-1 # 0xffff
    2970:	0411                	addi	s0,s0,4 # 0x10004
    2972:	02402783          	lw	a5,36(zero) # 0x24
    2976:	dff5                	beqz	a5,0x2972
    2978:	4509                	li	a0,2
    297a:	3a49                	jal	0x230c
    297c:	8d65                	and	a0,a0,s1
    297e:	c008                	sw	a0,0(s0)
    2980:	02002223          	sw	zero,36(zero) # 0x24
    2984:	b7fd                	j	0x2972

Disassembly of section .text.i2c_interrupt:

00002986 <.text.i2c_interrupt>:
    2986:	4705                	li	a4,1
    2988:	02e02223          	sw	a4,36(zero) # 0x24
    298c:	8082                	ret

Disassembly of section .text.qspi_main:

0000298e <.text.qspi_main>:
    298e:	1101                	addi	sp,sp,-32
    2990:	4515                	li	a0,5
    2992:	ce06                	sw	ra,28(sp)
    2994:	cc22                	sw	s0,24(sp)
    2996:	ca26                	sw	s1,20(sp)
    2998:	c84a                	sw	s2,16(sp)
    299a:	c64e                	sw	s3,12(sp)
    299c:	3501                	jal	0x279c
    299e:	6741                	lui	a4,0x10
    29a0:	66c1                	lui	a3,0x10
    29a2:	fff70513          	addi	a0,a4,-1 # 0xffff
    29a6:	0691                	addi	a3,a3,4 # 0x10004
    29a8:	4585                	li	a1,1
    29aa:	431c                	lw	a5,0(a4)
    29ac:	00a7f633          	and	a2,a5,a0
    29b0:	07c2                	slli	a5,a5,0x10
    29b2:	c290                	sw	a2,0(a3)
    29b4:	83c1                	srli	a5,a5,0x10
    29b6:	dbf5                	beqz	a5,0x29aa
    29b8:	431c                	lw	a5,0(a4)
    29ba:	07c2                	slli	a5,a5,0x10
    29bc:	83c1                	srli	a5,a5,0x10
    29be:	ffed                	bnez	a5,0x29b8
    29c0:	feb615e3          	bne	a2,a1,0x29aa
    29c4:	3d79                	jal	0x2862
    29c6:	842a                	mv	s0,a0
    29c8:	02040493          	addi	s1,s0,32
    29cc:	85aa                	mv	a1,a0
    29ce:	02000613          	li	a2,32
    29d2:	0b400513          	li	a0,180
    29d6:	04c2                	slli	s1,s1,0x10
    29d8:	338d                	jal	0x273a
    29da:	0b400913          	li	s2,180
    29de:	80c1                	srli	s1,s1,0x10
    29e0:	8522                	mv	a0,s0
    29e2:	3d31                	jal	0x27fe
    29e4:	03a00513          	li	a0,58
    29e8:	3501                	jal	0x27e8
    29ea:	02000513          	li	a0,32
    29ee:	3bed                	jal	0x27e8
    29f0:	00092503          	lw	a0,0(s2)
    29f4:	0411                	addi	s0,s0,4
    29f6:	0442                	slli	s0,s0,0x10
    29f8:	8041                	srli	s0,s0,0x10
    29fa:	3d3d                	jal	0x2838
    29fc:	0911                	addi	s2,s2,4
    29fe:	3d91                	jal	0x2852
    2a00:	fe9410e3          	bne	s0,s1,0x29e0
    2a04:	b7c1                	j	0x29c4

Disassembly of section .text.qspi_interrupt:

00002a06 <.text.qspi_interrupt>:
    2a06:	8082                	ret

Disassembly of section .text.timer_main:

00002a08 <.text.timer_main>:
    2a08:	1101                	addi	sp,sp,-32
    2a0a:	653d                	lui	a0,0xf
    2a0c:	cc22                	sw	s0,24(sp)
    2a0e:	c84a                	sw	s2,16(sp)
    2a10:	4605                	li	a2,1
    2a12:	4581                	li	a1,0
    2a14:	a5f50513          	addi	a0,a0,-1441 # 0xea5f
    2a18:	6441                	lui	s0,0x10
    2a1a:	6931                	lui	s2,0xc
    2a1c:	ca26                	sw	s1,20(sp)
    2a1e:	c64e                	sw	s3,12(sp)
    2a20:	ce06                	sw	ra,28(sp)
    2a22:	33a1                	jal	0x276a
    2a24:	fff40493          	addi	s1,s0,-1 # 0xffff
    2a28:	0911                	addi	s2,s2,4 # 0xc004
    2a2a:	02002703          	lw	a4,32(zero) # 0x20
    2a2e:	401c                	lw	a5,0(s0)
    2a30:	8fe5                	and	a5,a5,s1
    2a32:	fee78ee3          	beq	a5,a4,0x2a2e
    2a36:	401c                	lw	a5,0(s0)
    2a38:	8fe5                	and	a5,a5,s1
    2a3a:	00f92023          	sw	a5,0(s2)
    2a3e:	3b29                	jal	0x2758
    2a40:	401c                	lw	a5,0(s0)
    2a42:	8fe5                	and	a5,a5,s1
    2a44:	02f02023          	sw	a5,32(zero) # 0x20
    2a48:	b7cd                	j	0x2a2a

Disassembly of section .text.timer_interrupt:

00002a4a <.text.timer_interrupt>:
    2a4a:	0e805683          	lhu	a3,232(zero) # 0xe8
    2a4e:	6741                	lui	a4,0x10
    2a50:	c354                	sw	a3,4(a4)
    2a52:	0e802703          	lw	a4,232(zero) # 0xe8
    2a56:	0705                	addi	a4,a4,1 # 0x10001
    2a58:	0ee02423          	sw	a4,232(zero) # 0xe8
    2a5c:	8082                	ret

Disassembly of section .text.gpio_main:

00002a5e <.text.gpio_main>:
    2a5e:	66c1                	lui	a3,0x10
    2a60:	67c1                	lui	a5,0x10
    2a62:	fff68613          	addi	a2,a3,-1 # 0xffff
    2a66:	0791                	addi	a5,a5,4 # 0x10004
    2a68:	4298                	lw	a4,0(a3)
    2a6a:	8f71                	and	a4,a4,a2
    2a6c:	c398                	sw	a4,0(a5)
    2a6e:	bfed                	j	0x2a68

Disassembly of section .text.gpio_interrupt:

00002a70 <.text.gpio_interrupt>:
    2a70:	8082                	ret

Disassembly of section .text.usb_main:

00002a72 <.text.usb_main>:
    2a72:	7139                	addi	sp,sp,-64
    2a74:	4605                	li	a2,1
    2a76:	4581                	li	a1,0
    2a78:	557d                	li	a0,-1
    2a7a:	dc22                	sw	s0,56(sp)
    2a7c:	da26                	sw	s1,52(sp)
    2a7e:	d84a                	sw	s2,48(sp)
    2a80:	d64e                	sw	s3,44(sp)
    2a82:	d452                	sw	s4,40(sp)
    2a84:	d256                	sw	s5,36(sp)
    2a86:	d05a                	sw	s6,32(sp)
    2a88:	ce5e                	sw	s7,28(sp)
    2a8a:	de06                	sw	ra,60(sp)
    2a8c:	cc62                	sw	s8,24(sp)
    2a8e:	ca66                	sw	s9,20(sp)
    2a90:	c86a                	sw	s10,16(sp)
    2a92:	c66e                	sw	s11,12(sp)
    2a94:	69c1                	lui	s3,0x10
    2a96:	39d1                	jal	0x276a
    2a98:	4a91                	li	s5,4
    2a9a:	4b15                	li	s6,5
    2a9c:	4b85                	li	s7,1
    2a9e:	0009a783          	lw	a5,0(s3) # 0x10000
    2aa2:	0ff7f793          	zext.b	a5,a5
    2aa6:	0ef02223          	sw	a5,228(zero) # 0xe4
    2aaa:	0c002e23          	sw	zero,220(zero) # 0xdc
    2aae:	0e402783          	lw	a5,228(zero) # 0xe4
    2ab2:	e7b5                	bnez	a5,0x2b1e
    2ab4:	0dc02703          	lw	a4,220(zero) # 0xdc
    2ab8:	0d802783          	lw	a5,216(zero) # 0xd8
    2abc:	00f70763          	beq	a4,a5,0x2aca
    2ac0:	0dc02503          	lw	a0,220(zero) # 0xdc
    2ac4:	0ff57513          	zext.b	a0,a0
    2ac8:	39d1                	jal	0x279c
    2aca:	0dc02783          	lw	a5,220(zero) # 0xdc
    2ace:	0cf02c23          	sw	a5,216(zero) # 0xd8
    2ad2:	0dc02783          	lw	a5,220(zero) # 0xdc
    2ad6:	09578263          	beq	a5,s5,0x2b5a
    2ada:	04faed63          	bltu	s5,a5,0x2b34
    2ade:	07778663          	beq	a5,s7,0x2b4a
    2ae2:	4709                	li	a4,2
    2ae4:	fae79de3          	bne	a5,a4,0x2a9e
    2ae8:	4501                	li	a0,0
    2aea:	39fd                	jal	0x27e8
    2aec:	4c81                	li	s9,0
    2aee:	14000d13          	li	s10,320
    2af2:	0b400d93          	li	s11,180
    2af6:	4c01                	li	s8,0
    2af8:	0e002503          	lw	a0,224(zero) # 0xe0
    2afc:	9566                	add	a0,a0,s9
    2afe:	9562                	add	a0,a0,s8
    2b00:	0ff57513          	zext.b	a0,a0
    2b04:	0c05                	addi	s8,s8,1
    2b06:	31cd                	jal	0x27e8
    2b08:	ffac18e3          	bne	s8,s10,0x2af8
    2b0c:	0c85                	addi	s9,s9,1
    2b0e:	ffbc94e3          	bne	s9,s11,0x2af6
    2b12:	0e002783          	lw	a5,224(zero) # 0xe0
    2b16:	0785                	addi	a5,a5,1
    2b18:	0ef02023          	sw	a5,224(zero) # 0xe0
    2b1c:	b749                	j	0x2a9e
    2b1e:	0e402783          	lw	a5,228(zero) # 0xe4
    2b22:	8385                	srli	a5,a5,0x1
    2b24:	0ef02223          	sw	a5,228(zero) # 0xe4
    2b28:	0dc02783          	lw	a5,220(zero) # 0xdc
    2b2c:	0785                	addi	a5,a5,1
    2b2e:	0cf02e23          	sw	a5,220(zero) # 0xdc
    2b32:	bfb5                	j	0x2aae
    2b34:	f76795e3          	bne	a5,s6,0x2a9e
    2b38:	3969                	jal	0x27d2
    2b3a:	0ea02023          	sw	a0,224(zero) # 0xe0
    2b3e:	0e002503          	lw	a0,224(zero) # 0xe0
    2b42:	0ff57513          	zext.b	a0,a0
    2b46:	314d                	jal	0x27e8
    2b48:	bf99                	j	0x2a9e
    2b4a:	0e002503          	lw	a0,224(zero) # 0xe0
    2b4e:	0ff57513          	zext.b	a0,a0
    2b52:	318d                	jal	0x27b4
    2b54:	0ea02023          	sw	a0,224(zero) # 0xe0
    2b58:	b799                	j	0x2a9e
    2b5a:	0009a783          	lw	a5,0(s3)
    2b5e:	07c2                	slli	a5,a5,0x10
    2b60:	83c1                	srli	a5,a5,0x10
    2b62:	83a1                	srli	a5,a5,0x8
    2b64:	bf55                	j	0x2b18

Disassembly of section .text.usb_interrupt:

00002b66 <.text.usb_interrupt>:
    2b66:	0dc02703          	lw	a4,220(zero) # 0xdc
    2b6a:	4791                	li	a5,4
    2b6c:	00f71763          	bne	a4,a5,0x2b7a
    2b70:	0e002503          	lw	a0,224(zero) # 0xe0
    2b74:	0ff57513          	zext.b	a0,a0
    2b78:	b985                	j	0x27e8
    2b7a:	8082                	ret

Disassembly of section .text.debug_main:

00002b7c <.text.debug_main>:
    2b7c:	711d                	addi	sp,sp,-96
    2b7e:	c8ca                	sw	s2,80(sp)
    2b80:	c6ce                	sw	s3,76(sp)
    2b82:	4515                	li	a0,5
    2b84:	6941                	lui	s2,0x10
    2b86:	69c1                	lui	s3,0x10
    2b88:	c4d2                	sw	s4,72(sp)
    2b8a:	c2d6                	sw	s5,68(sp)
    2b8c:	c0da                	sw	s6,64(sp)
    2b8e:	de5e                	sw	s7,60(sp)
    2b90:	ce86                	sw	ra,92(sp)
    2b92:	cca2                	sw	s0,88(sp)
    2b94:	caa6                	sw	s1,84(sp)
    2b96:	dc62                	sw	s8,56(sp)
    2b98:	da66                	sw	s9,52(sp)
    2b9a:	fff90a13          	addi	s4,s2,-1 # 0xffff
    2b9e:	3efd                	jal	0x279c
    2ba0:	0991                	addi	s3,s3,4 # 0x10004
    2ba2:	4a89                	li	s5,2
    2ba4:	4b11                	li	s6,4
    2ba6:	4b85                	li	s7,1
    2ba8:	00092703          	lw	a4,0(s2)
    2bac:	014777b3          	and	a5,a4,s4
    2bb0:	0742                	slli	a4,a4,0x10
    2bb2:	00f9a023          	sw	a5,0(s3)
    2bb6:	8341                	srli	a4,a4,0x10
    2bb8:	db65                	beqz	a4,0x2ba8
    2bba:	00092703          	lw	a4,0(s2)
    2bbe:	0742                	slli	a4,a4,0x10
    2bc0:	8341                	srli	a4,a4,0x10
    2bc2:	ff65                	bnez	a4,0x2bba
    2bc4:	05578663          	beq	a5,s5,0x2c10
    2bc8:	07678863          	beq	a5,s6,0x2c38
    2bcc:	fd779ee3          	bne	a5,s7,0x2ba8
    2bd0:	6941                	lui	s2,0x10
    2bd2:	38ad                	jal	0x244c
    2bd4:	4481                	li	s1,0
    2bd6:	4a05                	li	s4,1
    2bd8:	0911                	addi	s2,s2,4 # 0x10004
    2bda:	20000a93          	li	s5,512
    2bde:	0800                	addi	s0,sp,16
    2be0:	89a2                	mv	s3,s0
    2be2:	39e1                	jal	0x28ba
    2be4:	c008                	sw	a0,0(s0)
    2be6:	181c                	addi	a5,sp,48
    2be8:	0411                	addi	s0,s0,4
    2bea:	fef41ce3          	bne	s0,a5,0x2be2
    2bee:	02000613          	li	a2,32
    2bf2:	00549593          	slli	a1,s1,0x5
    2bf6:	854e                	mv	a0,s3
    2bf8:	3c09                	jal	0x260a
    2bfa:	c652                	sw	s4,12(sp)
    2bfc:	47b2                	lw	a5,12(sp)
    2bfe:	8b85                	andi	a5,a5,1
    2c00:	eb8d                	bnez	a5,0x2c32
    2c02:	0485                	addi	s1,s1,1
    2c04:	00992023          	sw	s1,0(s2)
    2c08:	fd549be3          	bne	s1,s5,0x2bde
    2c0c:	00000067          	jr	zero # 0x0
    2c10:	4501                	li	a0,0
    2c12:	36f5                	jal	0x27fe
    2c14:	03a00513          	li	a0,58
    2c18:	3ec1                	jal	0x27e8
    2c1a:	440d                	li	s0,3
    2c1c:	02000513          	li	a0,32
    2c20:	36e1                	jal	0x27e8
    2c22:	00241793          	slli	a5,s0,0x2
    2c26:	4388                	lw	a0,0(a5)
    2c28:	147d                	addi	s0,s0,-1
    2c2a:	0442                	slli	s0,s0,0x10
    2c2c:	3131                	jal	0x2838
    2c2e:	8041                	srli	s0,s0,0x10
    2c30:	b7f5                	j	0x2c1c
    2c32:	0068                	addi	a0,sp,12
    2c34:	388d                	jal	0x24a6
    2c36:	b7d9                	j	0x2bfc
    2c38:	4401                	li	s0,0
    2c3a:	6c11                	lui	s8,0x4
    2c3c:	02000613          	li	a2,32
    2c40:	85a2                	mv	a1,s0
    2c42:	0808                	addi	a0,sp,16
    2c44:	01041c93          	slli	s9,s0,0x10
    2c48:	3ccd                	jal	0x273a
    2c4a:	010cdc93          	srli	s9,s9,0x10
    2c4e:	0804                	addi	s1,sp,16
    2c50:	8566                	mv	a0,s9
    2c52:	3675                	jal	0x27fe
    2c54:	03a00513          	li	a0,58
    2c58:	3e41                	jal	0x27e8
    2c5a:	02000513          	li	a0,32
    2c5e:	3669                	jal	0x27e8
    2c60:	4088                	lw	a0,0(s1)
    2c62:	0491                	addi	s1,s1,4
    2c64:	3ed1                	jal	0x2838
    2c66:	36f5                	jal	0x2852
    2c68:	181c                	addi	a5,sp,48
    2c6a:	fef493e3          	bne	s1,a5,0x2c50
    2c6e:	02040413          	addi	s0,s0,32
    2c72:	fd8415e3          	bne	s0,s8,0x2c3c
    2c76:	bf0d                	j	0x2ba8
