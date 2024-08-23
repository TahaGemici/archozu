
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
    2018:	724000ef          	jal	0x273c
    201c:	4515                	li	a0,5
    201e:	79e000ef          	jal	0x27bc
    2022:	66c1                	lui	a3,0x10
    2024:	4298                	lw	a4,0(a3)
    2026:	0742                	slli	a4,a4,0x10
    2028:	8341                	srli	a4,a4,0x10
    202a:	10e01c23          	sh	a4,280(zero) # 0x118
    202e:	11805703          	lhu	a4,280(zero) # 0x118
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
    204a:	11805683          	lhu	a3,280(zero) # 0x118
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
    2070:	391000ef          	jal	0x2c00
    2074:	4741                	li	a4,16
    2076:	02e78063          	beq	a5,a4,0x2096
    207a:	02000713          	li	a4,32
    207e:	fee799e3          	bne	a5,a4,0x2070
    2082:	29f000ef          	jal	0x2b20
    2086:	083000ef          	jal	0x2908
    208a:	0e3000ef          	jal	0x296c
    208e:	13b000ef          	jal	0x29c8
    2092:	225000ef          	jal	0x2ab6
    2096:	277000ef          	jal	0x2b0c
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
    2264:	095000ef          	jal	0x2af8
    2268:	b7d1                	j	0x222c
    226a:	287000ef          	jal	0x2cf0
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

Disassembly of section .text.qspi_read_array:

00002318 <.text.qspi_read_array>:
    2318:	058d                	addi	a1,a1,3
    231a:	6729                	lui	a4,0xa
    231c:	99f1                	andi	a1,a1,-4
    231e:	4781                	li	a5,0
    2320:	0721                	addi	a4,a4,8 # 0xa008
    2322:	00b79363          	bne	a5,a1,0x2328
    2326:	8082                	ret
    2328:	00e786b3          	add	a3,a5,a4
    232c:	4290                	lw	a2,0(a3)
    232e:	00f506b3          	add	a3,a0,a5
    2332:	0791                	addi	a5,a5,4
    2334:	c290                	sw	a2,0(a3)
    2336:	b7f5                	j	0x2322

Disassembly of section .text.qspi_write_array:

00002338 <.text.qspi_write_array>:
    2338:	058d                	addi	a1,a1,3
    233a:	6729                	lui	a4,0xa
    233c:	99f1                	andi	a1,a1,-4
    233e:	4781                	li	a5,0
    2340:	0721                	addi	a4,a4,8 # 0xa008
    2342:	00b79363          	bne	a5,a1,0x2348
    2346:	8082                	ret
    2348:	00f50633          	add	a2,a0,a5
    234c:	4210                	lw	a2,0(a2)
    234e:	00e786b3          	add	a3,a5,a4
    2352:	0791                	addi	a5,a5,4
    2354:	c290                	sw	a2,0(a3)
    2356:	b7f5                	j	0x2342

Disassembly of section .text.qspi_custom_x0:

00002358 <.text.qspi_custom_x0>:
    2358:	47f9                	li	a5,30
    235a:	02b7f733          	remu	a4,a5,a1
    235e:	02b7d7b3          	divu	a5,a5,a1
    2362:	00173713          	seqz	a4,a4
    2366:	8f99                	sub	a5,a5,a4
    2368:	80000737          	lui	a4,0x80000
    236c:	953a                	add	a0,a0,a4
    236e:	07e6                	slli	a5,a5,0x19
    2370:	97aa                	add	a5,a5,a0
    2372:	6729                	lui	a4,0xa
    2374:	c31c                	sw	a5,0(a4)
    2376:	b751                	j	0x22fa

Disassembly of section .text.qspi_custom_write:

00002378 <.text.qspi_custom_write>:
    2378:	1141                	addi	sp,sp,-16
    237a:	c422                	sw	s0,8(sp)
    237c:	88ae                	mv	a7,a1
    237e:	fff78413          	addi	s0,a5,-1
    2382:	85be                	mv	a1,a5
    2384:	800007b7          	lui	a5,0x80000
    2388:	40078793          	addi	a5,a5,1024 # 0x80000400
    238c:	0442                	slli	s0,s0,0x10
    238e:	943e                	add	s0,s0,a5
    2390:	9432                	add	s0,s0,a2
    2392:	06a2                	slli	a3,a3,0x8
    2394:	8305                	srli	a4,a4,0x1
    2396:	9436                	add	s0,s0,a3
    2398:	072e                	slli	a4,a4,0xb
    239a:	943a                	add	s0,s0,a4
    239c:	4779                	li	a4,30
    239e:	030777b3          	remu	a5,a4,a6
    23a2:	c606                	sw	ra,12(sp)
    23a4:	03075733          	divu	a4,a4,a6
    23a8:	0017b793          	seqz	a5,a5
    23ac:	8f1d                	sub	a4,a4,a5
    23ae:	67a9                	lui	a5,0xa
    23b0:	0766                	slli	a4,a4,0x19
    23b2:	0117a223          	sw	a7,4(a5) # 0xa004
    23b6:	943a                	add	s0,s0,a4
    23b8:	3741                	jal	0x2338
    23ba:	67a9                	lui	a5,0xa
    23bc:	c380                	sw	s0,0(a5)
    23be:	4422                	lw	s0,8(sp)
    23c0:	40b2                	lw	ra,12(sp)
    23c2:	0141                	addi	sp,sp,16
    23c4:	bf1d                	j	0x22fa

Disassembly of section .text.qspi_custom_read:

000023c6 <.text.qspi_custom_read>:
    23c6:	1101                	addi	sp,sp,-32
    23c8:	cc22                	sw	s0,24(sp)
    23ca:	ce06                	sw	ra,28(sp)
    23cc:	843e                	mv	s0,a5
    23ce:	4791                	li	a5,4
    23d0:	04f69463          	bne	a3,a5,0x2418
    23d4:	30060613          	addi	a2,a2,768
    23d8:	46f9                	li	a3,30
    23da:	0306f7b3          	remu	a5,a3,a6
    23de:	8305                	srli	a4,a4,0x1
    23e0:	072e                	slli	a4,a4,0xb
    23e2:	c62a                	sw	a0,12(sp)
    23e4:	0306d6b3          	divu	a3,a3,a6
    23e8:	0017b793          	seqz	a5,a5
    23ec:	fff40813          	addi	a6,s0,-1
    23f0:	0842                	slli	a6,a6,0x10
    23f2:	8e9d                	sub	a3,a3,a5
    23f4:	800007b7          	lui	a5,0x80000
    23f8:	983e                	add	a6,a6,a5
    23fa:	06e6                	slli	a3,a3,0x19
    23fc:	9742                	add	a4,a4,a6
    23fe:	9736                	add	a4,a4,a3
    2400:	67a9                	lui	a5,0xa
    2402:	c3cc                	sw	a1,4(a5)
    2404:	9732                	add	a4,a4,a2
    2406:	67a9                	lui	a5,0xa
    2408:	c398                	sw	a4,0(a5)
    240a:	3dc5                	jal	0x22fa
    240c:	85a2                	mv	a1,s0
    240e:	4462                	lw	s0,24(sp)
    2410:	4532                	lw	a0,12(sp)
    2412:	40f2                	lw	ra,28(sp)
    2414:	6105                	addi	sp,sp,32
    2416:	b709                	j	0x2318
    2418:	06a2                	slli	a3,a3,0x8
    241a:	9636                	add	a2,a2,a3
    241c:	bf75                	j	0x23d8

Disassembly of section .text.s25fl128s_wren:

0000241e <.text.s25fl128s_wren>:
    241e:	800007b7          	lui	a5,0x80000
    2422:	0799                	addi	a5,a5,6 # 0x80000006
    2424:	6729                	lui	a4,0xa
    2426:	c31c                	sw	a5,0(a4)
    2428:	bdc9                	j	0x22fa

Disassembly of section .text.s25fl128s_wrdi:

0000242a <.text.s25fl128s_wrdi>:
    242a:	800007b7          	lui	a5,0x80000
    242e:	0791                	addi	a5,a5,4 # 0x80000004
    2430:	6729                	lui	a4,0xa
    2432:	c31c                	sw	a5,0(a4)
    2434:	b5d9                	j	0x22fa

Disassembly of section .text.s25fl128s_clsr:

00002436 <.text.s25fl128s_clsr>:
    2436:	800007b7          	lui	a5,0x80000
    243a:	03078793          	addi	a5,a5,48 # 0x80000030
    243e:	6729                	lui	a4,0xa
    2440:	c31c                	sw	a5,0(a4)
    2442:	bd65                	j	0x22fa

Disassembly of section .text.s25fl128s_reset:

00002444 <.text.s25fl128s_reset>:
    2444:	800007b7          	lui	a5,0x80000
    2448:	0f078793          	addi	a5,a5,240 # 0x800000f0
    244c:	6729                	lui	a4,0xa
    244e:	c31c                	sw	a5,0(a4)
    2450:	b56d                	j	0x22fa

Disassembly of section .text.s25fl128s_rdid:

00002452 <.text.s25fl128s_rdid>:
    2452:	1101                	addi	sp,sp,-32
    2454:	ce06                	sw	ra,28(sp)
    2456:	c62a                	sw	a0,12(sp)
    2458:	67a9                	lui	a5,0xa
    245a:	0007a223          	sw	zero,4(a5) # 0xa004
    245e:	801f07b7          	lui	a5,0x801f0
    2462:	19f78793          	addi	a5,a5,415 # 0x801f019f
    2466:	6729                	lui	a4,0xa
    2468:	c31c                	sw	a5,0(a4)
    246a:	3d41                	jal	0x22fa
    246c:	4532                	lw	a0,12(sp)
    246e:	40f2                	lw	ra,28(sp)
    2470:	02000593          	li	a1,32
    2474:	6105                	addi	sp,sp,32
    2476:	b54d                	j	0x2318

Disassembly of section .text.s25fl128s_rdsr1:

00002478 <.text.s25fl128s_rdsr1>:
    2478:	1101                	addi	sp,sp,-32
    247a:	ce06                	sw	ra,28(sp)
    247c:	c62a                	sw	a0,12(sp)
    247e:	67a9                	lui	a5,0xa
    2480:	0007a223          	sw	zero,4(a5) # 0xa004
    2484:	800007b7          	lui	a5,0x80000
    2488:	10578793          	addi	a5,a5,261 # 0x80000105
    248c:	6729                	lui	a4,0xa
    248e:	c31c                	sw	a5,0(a4)
    2490:	35ad                	jal	0x22fa
    2492:	4532                	lw	a0,12(sp)
    2494:	40f2                	lw	ra,28(sp)
    2496:	4585                	li	a1,1
    2498:	6105                	addi	sp,sp,32
    249a:	bdbd                	j	0x2318

Disassembly of section .text.s25fl128s_rdsr2:

0000249c <.text.s25fl128s_rdsr2>:
    249c:	1101                	addi	sp,sp,-32
    249e:	ce06                	sw	ra,28(sp)
    24a0:	c62a                	sw	a0,12(sp)
    24a2:	67a9                	lui	a5,0xa
    24a4:	0007a223          	sw	zero,4(a5) # 0xa004
    24a8:	800007b7          	lui	a5,0x80000
    24ac:	10778793          	addi	a5,a5,263 # 0x80000107
    24b0:	6729                	lui	a4,0xa
    24b2:	c31c                	sw	a5,0(a4)
    24b4:	3599                	jal	0x22fa
    24b6:	4532                	lw	a0,12(sp)
    24b8:	40f2                	lw	ra,28(sp)
    24ba:	4585                	li	a1,1
    24bc:	6105                	addi	sp,sp,32
    24be:	bda9                	j	0x2318

Disassembly of section .text.s25fl128s_rdcr:

000024c0 <.text.s25fl128s_rdcr>:
    24c0:	1101                	addi	sp,sp,-32
    24c2:	ce06                	sw	ra,28(sp)
    24c4:	c62a                	sw	a0,12(sp)
    24c6:	67a9                	lui	a5,0xa
    24c8:	0007a223          	sw	zero,4(a5) # 0xa004
    24cc:	800007b7          	lui	a5,0x80000
    24d0:	13578793          	addi	a5,a5,309 # 0x80000135
    24d4:	6729                	lui	a4,0xa
    24d6:	c31c                	sw	a5,0(a4)
    24d8:	350d                	jal	0x22fa
    24da:	4532                	lw	a0,12(sp)
    24dc:	40f2                	lw	ra,28(sp)
    24de:	4585                	li	a1,1
    24e0:	6105                	addi	sp,sp,32
    24e2:	bd1d                	j	0x2318

Disassembly of section .text.s25fl128s_res:

000024e4 <.text.s25fl128s_res>:
    24e4:	1101                	addi	sp,sp,-32
    24e6:	ce06                	sw	ra,28(sp)
    24e8:	c62a                	sw	a0,12(sp)
    24ea:	67a9                	lui	a5,0xa
    24ec:	0007a223          	sw	zero,4(a5) # 0xa004
    24f0:	800067b7          	lui	a5,0x80006
    24f4:	1ab78793          	addi	a5,a5,427 # 0x800061ab
    24f8:	6729                	lui	a4,0xa
    24fa:	c31c                	sw	a5,0(a4)
    24fc:	3bfd                	jal	0x22fa
    24fe:	4532                	lw	a0,12(sp)
    2500:	40f2                	lw	ra,28(sp)
    2502:	4585                	li	a1,1
    2504:	6105                	addi	sp,sp,32
    2506:	bd09                	j	0x2318

Disassembly of section .text.s25fl128s_read_id:

00002508 <.text.s25fl128s_read_id>:
    2508:	1101                	addi	sp,sp,-32
    250a:	ce06                	sw	ra,28(sp)
    250c:	c62a                	sw	a0,12(sp)
    250e:	67a9                	lui	a5,0xa
    2510:	c3cc                	sw	a1,4(a5)
    2512:	800167b7          	lui	a5,0x80016
    2516:	19078793          	addi	a5,a5,400 # 0x80016190
    251a:	6729                	lui	a4,0xa
    251c:	c31c                	sw	a5,0(a4)
    251e:	3bf1                	jal	0x22fa
    2520:	4532                	lw	a0,12(sp)
    2522:	40f2                	lw	ra,28(sp)
    2524:	4589                	li	a1,2
    2526:	6105                	addi	sp,sp,32
    2528:	bbc5                	j	0x2318

Disassembly of section .text.s25fl128s_read:

0000252a <.text.s25fl128s_read>:
    252a:	87b2                	mv	a5,a2
    252c:	03200813          	li	a6,50
    2530:	4761                	li	a4,24
    2532:	4685                	li	a3,1
    2534:	460d                	li	a2,3
    2536:	bd41                	j	0x23c6

Disassembly of section .text.s25fl128s_wrr:

00002538 <.text.s25fl128s_wrr>:
    2538:	1141                	addi	sp,sp,-16
    253a:	c606                	sw	ra,12(sp)
    253c:	67a9                	lui	a5,0xa
    253e:	0007a223          	sw	zero,4(a5) # 0xa004
    2542:	4589                	li	a1,2
    2544:	3bd5                	jal	0x2338
    2546:	800167b7          	lui	a5,0x80016
    254a:	40b2                	lw	ra,12(sp)
    254c:	50178793          	addi	a5,a5,1281 # 0x80016501
    2550:	6729                	lui	a4,0xa
    2552:	c31c                	sw	a5,0(a4)
    2554:	0141                	addi	sp,sp,16
    2556:	b355                	j	0x22fa

Disassembly of section .text.s25fl128s_se:

00002558 <.text.s25fl128s_se>:
    2558:	1141                	addi	sp,sp,-16
    255a:	c606                	sw	ra,12(sp)
    255c:	67a9                	lui	a5,0xa
    255e:	0007a223          	sw	zero,4(a5) # 0xa004
    2562:	458d                	li	a1,3
    2564:	3bd1                	jal	0x2338
    2566:	800207b7          	lui	a5,0x80020
    256a:	40b2                	lw	ra,12(sp)
    256c:	5d878793          	addi	a5,a5,1496 # 0x800205d8
    2570:	6729                	lui	a4,0xa
    2572:	c31c                	sw	a5,0(a4)
    2574:	0141                	addi	sp,sp,16
    2576:	b351                	j	0x22fa

Disassembly of section .text.s25fl128s_pp:

00002578 <.text.s25fl128s_pp>:
    2578:	87b2                	mv	a5,a2
    257a:	08500813          	li	a6,133
    257e:	4761                	li	a4,24
    2580:	4685                	li	a3,1
    2582:	4609                	li	a2,2
    2584:	bbd5                	j	0x2378

Disassembly of section .text.s25fl128s_dor:

00002586 <.text.s25fl128s_dor>:
    2586:	87b2                	mv	a5,a2
    2588:	06800813          	li	a6,104
    258c:	02000713          	li	a4,32
    2590:	4689                	li	a3,2
    2592:	03b00613          	li	a2,59
    2596:	bd05                	j	0x23c6

Disassembly of section .text.s25fl128s_qor:

00002598 <.text.s25fl128s_qor>:
    2598:	87b2                	mv	a5,a2
    259a:	06800813          	li	a6,104
    259e:	02000713          	li	a4,32
    25a2:	4691                	li	a3,4
    25a4:	06b00613          	li	a2,107
    25a8:	bd39                	j	0x23c6

Disassembly of section .text.s25fl128s_qpp:

000025aa <.text.s25fl128s_qpp>:
    25aa:	87b2                	mv	a5,a2
    25ac:	05000813          	li	a6,80
    25b0:	4761                	li	a4,24
    25b2:	4691                	li	a3,4
    25b4:	03200613          	li	a2,50
    25b8:	b3c1                	j	0x2378

Disassembly of section .text.mt25ql256aba_write_disable:

000025ba <.text.mt25ql256aba_write_disable>:
    25ba:	bd85                	j	0x242a

Disassembly of section .text.mt25ql256aba_write_enable:

000025bc <.text.mt25ql256aba_write_enable>:
    25bc:	b58d                	j	0x241e

Disassembly of section .text.mt25ql256aba_reset_enable:

000025be <.text.mt25ql256aba_reset_enable>:
    25be:	800007b7          	lui	a5,0x80000
    25c2:	06678793          	addi	a5,a5,102 # 0x80000066
    25c6:	6729                	lui	a4,0xa
    25c8:	c31c                	sw	a5,0(a4)
    25ca:	bb05                	j	0x22fa

Disassembly of section .text.mt25ql256aba_reset_memory:

000025cc <.text.mt25ql256aba_reset_memory>:
    25cc:	800007b7          	lui	a5,0x80000
    25d0:	09978793          	addi	a5,a5,153 # 0x80000099
    25d4:	6729                	lui	a4,0xa
    25d6:	c31c                	sw	a5,0(a4)
    25d8:	b30d                	j	0x22fa

Disassembly of section .text.mt25ql256aba_read:

000025da <.text.mt25ql256aba_read>:
    25da:	87b2                	mv	a5,a2
    25dc:	08500813          	li	a6,133
    25e0:	4761                	li	a4,24
    25e2:	4685                	li	a3,1
    25e4:	460d                	li	a2,3
    25e6:	b3c5                	j	0x23c6

Disassembly of section .text.mt25ql256aba_page_program:

000025e8 <.text.mt25ql256aba_page_program>:
    25e8:	bf41                	j	0x2578

Disassembly of section .text.mt25ql256aba_sector_erase:

000025ea <.text.mt25ql256aba_sector_erase>:
    25ea:	87b2                	mv	a5,a2
    25ec:	08500813          	li	a6,133
    25f0:	4761                	li	a4,24
    25f2:	4685                	li	a3,1
    25f4:	0d800613          	li	a2,216
    25f8:	b341                	j	0x2378

Disassembly of section .text.mt25ql256aba_read_id:

000025fa <.text.mt25ql256aba_read_id>:
    25fa:	87ae                	mv	a5,a1
    25fc:	08500813          	li	a6,133
    2600:	4701                	li	a4,0
    2602:	4685                	li	a3,1
    2604:	09f00613          	li	a2,159
    2608:	4581                	li	a1,0
    260a:	bb75                	j	0x23c6

Disassembly of section .text.mt25ql256aba_read_status_register:

0000260c <.text.mt25ql256aba_read_status_register>:
    260c:	b5b5                	j	0x2478

Disassembly of section .text.mt25ql256aba_read_flag_status_register:

0000260e <.text.mt25ql256aba_read_flag_status_register>:
    260e:	1101                	addi	sp,sp,-32
    2610:	ce06                	sw	ra,28(sp)
    2612:	c62a                	sw	a0,12(sp)
    2614:	67a9                	lui	a5,0xa
    2616:	0007a223          	sw	zero,4(a5) # 0xa004
    261a:	800007b7          	lui	a5,0x80000
    261e:	17078793          	addi	a5,a5,368 # 0x80000170
    2622:	6729                	lui	a4,0xa
    2624:	c31c                	sw	a5,0(a4)
    2626:	39d1                	jal	0x22fa
    2628:	4532                	lw	a0,12(sp)
    262a:	40f2                	lw	ra,28(sp)
    262c:	4585                	li	a1,1
    262e:	6105                	addi	sp,sp,32
    2630:	b1e5                	j	0x2318

Disassembly of section .text.mt25ql256aba_read_nonvolatile_configuration_register:

00002632 <.text.mt25ql256aba_read_nonvolatile_configuration_register>:
    2632:	1101                	addi	sp,sp,-32
    2634:	ce06                	sw	ra,28(sp)
    2636:	c62a                	sw	a0,12(sp)
    2638:	67a9                	lui	a5,0xa
    263a:	0007a223          	sw	zero,4(a5) # 0xa004
    263e:	800107b7          	lui	a5,0x80010
    2642:	1b578793          	addi	a5,a5,437 # 0x800101b5
    2646:	6729                	lui	a4,0xa
    2648:	c31c                	sw	a5,0(a4)
    264a:	3945                	jal	0x22fa
    264c:	4532                	lw	a0,12(sp)
    264e:	40f2                	lw	ra,28(sp)
    2650:	4589                	li	a1,2
    2652:	6105                	addi	sp,sp,32
    2654:	b1d1                	j	0x2318

Disassembly of section .text.mt25ql256aba_read_volatile_configuration_register:

00002656 <.text.mt25ql256aba_read_volatile_configuration_register>:
    2656:	1101                	addi	sp,sp,-32
    2658:	ce06                	sw	ra,28(sp)
    265a:	c62a                	sw	a0,12(sp)
    265c:	67a9                	lui	a5,0xa
    265e:	0007a223          	sw	zero,4(a5) # 0xa004
    2662:	800007b7          	lui	a5,0x80000
    2666:	18578793          	addi	a5,a5,389 # 0x80000185
    266a:	6729                	lui	a4,0xa
    266c:	c31c                	sw	a5,0(a4)
    266e:	3171                	jal	0x22fa
    2670:	4532                	lw	a0,12(sp)
    2672:	40f2                	lw	ra,28(sp)
    2674:	4585                	li	a1,1
    2676:	6105                	addi	sp,sp,32
    2678:	b145                	j	0x2318

Disassembly of section .text.mt25ql256aba_write_status_register:

0000267a <.text.mt25ql256aba_write_status_register>:
    267a:	1141                	addi	sp,sp,-16
    267c:	c606                	sw	ra,12(sp)
    267e:	67a9                	lui	a5,0xa
    2680:	0007a223          	sw	zero,4(a5) # 0xa004
    2684:	4585                	li	a1,1
    2686:	394d                	jal	0x2338
    2688:	800007b7          	lui	a5,0x80000
    268c:	40b2                	lw	ra,12(sp)
    268e:	50178793          	addi	a5,a5,1281 # 0x80000501
    2692:	6729                	lui	a4,0xa
    2694:	c31c                	sw	a5,0(a4)
    2696:	0141                	addi	sp,sp,16
    2698:	b18d                	j	0x22fa

Disassembly of section .text.mt25ql256aba_write_nonvolatile_configuration_register:

0000269a <.text.mt25ql256aba_write_nonvolatile_configuration_register>:
    269a:	1141                	addi	sp,sp,-16
    269c:	c606                	sw	ra,12(sp)
    269e:	67a9                	lui	a5,0xa
    26a0:	0007a223          	sw	zero,4(a5) # 0xa004
    26a4:	4589                	li	a1,2
    26a6:	3949                	jal	0x2338
    26a8:	800107b7          	lui	a5,0x80010
    26ac:	40b2                	lw	ra,12(sp)
    26ae:	5b178793          	addi	a5,a5,1457 # 0x800105b1
    26b2:	6729                	lui	a4,0xa
    26b4:	c31c                	sw	a5,0(a4)
    26b6:	0141                	addi	sp,sp,16
    26b8:	b189                	j	0x22fa

Disassembly of section .text.mt25ql256aba_write_volatile_configuration_register:

000026ba <.text.mt25ql256aba_write_volatile_configuration_register>:
    26ba:	1141                	addi	sp,sp,-16
    26bc:	c606                	sw	ra,12(sp)
    26be:	67a9                	lui	a5,0xa
    26c0:	0007a223          	sw	zero,4(a5) # 0xa004
    26c4:	4585                	li	a1,1
    26c6:	398d                	jal	0x2338
    26c8:	800007b7          	lui	a5,0x80000
    26cc:	40b2                	lw	ra,12(sp)
    26ce:	58178793          	addi	a5,a5,1409 # 0x80000581
    26d2:	6729                	lui	a4,0xa
    26d4:	c31c                	sw	a5,0(a4)
    26d6:	0141                	addi	sp,sp,16
    26d8:	b10d                	j	0x22fa

Disassembly of section .text.mt25ql256aba_write_enhanced_volatile_configuration_register:

000026da <.text.mt25ql256aba_write_enhanced_volatile_configuration_register>:
    26da:	1141                	addi	sp,sp,-16
    26dc:	c606                	sw	ra,12(sp)
    26de:	67a9                	lui	a5,0xa
    26e0:	0007a223          	sw	zero,4(a5) # 0xa004
    26e4:	4585                	li	a1,1
    26e6:	3989                	jal	0x2338
    26e8:	800007b7          	lui	a5,0x80000
    26ec:	40b2                	lw	ra,12(sp)
    26ee:	56178793          	addi	a5,a5,1377 # 0x80000561
    26f2:	6729                	lui	a4,0xa
    26f4:	c31c                	sw	a5,0(a4)
    26f6:	0141                	addi	sp,sp,16
    26f8:	b109                	j	0x22fa

Disassembly of section .text.mt25ql256aba_dual_output_fast_read:

000026fa <.text.mt25ql256aba_dual_output_fast_read>:
    26fa:	87b2                	mv	a5,a2
    26fc:	08500813          	li	a6,133
    2700:	02000713          	li	a4,32
    2704:	4689                	li	a3,2
    2706:	03b00613          	li	a2,59
    270a:	b975                	j	0x23c6

Disassembly of section .text.mt25ql256aba_quad_output_fast_read:

0000270c <.text.mt25ql256aba_quad_output_fast_read>:
    270c:	87b2                	mv	a5,a2
    270e:	08500813          	li	a6,133
    2712:	02000713          	li	a4,32
    2716:	4691                	li	a3,4
    2718:	06b00613          	li	a2,107
    271c:	b16d                	j	0x23c6

Disassembly of section .text.timer_counter:

0000271e <.text.timer_counter>:
    271e:	67b1                	lui	a5,0xc
    2720:	4bc8                	lw	a0,20(a5)
    2722:	8082                	ret

Disassembly of section .text.timer_event:

00002724 <.text.timer_event>:
    2724:	67b1                	lui	a5,0xc
    2726:	4f88                	lw	a0,24(a5)
    2728:	8082                	ret

Disassembly of section .text.timer_clear:

0000272a <.text.timer_clear>:
    272a:	67b1                	lui	a5,0xc
    272c:	4705                	li	a4,1
    272e:	c798                	sw	a4,8(a5)
    2730:	67b1                	lui	a5,0xc
    2732:	cfd8                	sw	a4,28(a5)
    2734:	8082                	ret

Disassembly of section .text.timer_enabled:

00002736 <.text.timer_enabled>:
    2736:	67b1                	lui	a5,0xc
    2738:	c7c8                	sw	a0,12(a5)
    273a:	8082                	ret

Disassembly of section .text.timer_conf:

0000273c <.text.timer_conf>:
    273c:	1141                	addi	sp,sp,-16
    273e:	c606                	sw	ra,12(sp)
    2740:	67b1                	lui	a5,0xc
    2742:	c388                	sw	a0,0(a5)
    2744:	c3cc                	sw	a1,4(a5)
    2746:	67b1                	lui	a5,0xc
    2748:	cb90                	sw	a2,16(a5)
    274a:	08000613          	li	a2,128
    274e:	6589                	lui	a1,0x2
    2750:	20058593          	addi	a1,a1,512 # 0x2200
    2754:	30559073          	csrw	mtvec,a1
    2758:	30046073          	csrsi	mstatus,8
    275c:	30462073          	csrs	mie,a2
    2760:	37e9                	jal	0x272a
    2762:	40b2                	lw	ra,12(sp)
    2764:	67b1                	lui	a5,0xc
    2766:	4705                	li	a4,1
    2768:	c7d8                	sw	a4,12(a5)
    276a:	0141                	addi	sp,sp,16
    276c:	8082                	ret

Disassembly of section .text.delay_us:

0000276e <.text.delay_us>:
    276e:	7179                	addi	sp,sp,-48
    2770:	d422                	sw	s0,40(sp)
    2772:	6731                	lui	a4,0xc
    2774:	0040                	addi	s0,sp,4
    2776:	d606                	sw	ra,44(sp)
    2778:	86a2                	mv	a3,s0
    277a:	67b1                	lui	a5,0xc
    277c:	0771                	addi	a4,a4,28 # 0xc01c
    277e:	4390                	lw	a2,0(a5)
    2780:	0791                	addi	a5,a5,4 # 0xc004
    2782:	c290                	sw	a2,0(a3)
    2784:	0691                	addi	a3,a3,4 # 0x10004
    2786:	fee79ce3          	bne	a5,a4,0x277e
    278a:	fff50593          	addi	a1,a0,-1
    278e:	4605                	li	a2,1
    2790:	03b00513          	li	a0,59
    2794:	3765                	jal	0x273c
    2796:	4705                	li	a4,1
    2798:	12e02823          	sw	a4,304(zero) # 0x130
    279c:	13002703          	lw	a4,304(zero) # 0x130
    27a0:	ff75                	bnez	a4,0x279c
    27a2:	6731                	lui	a4,0xc
    27a4:	67b1                	lui	a5,0xc
    27a6:	0771                	addi	a4,a4,28 # 0xc01c
    27a8:	4014                	lw	a3,0(s0)
    27aa:	0411                	addi	s0,s0,4
    27ac:	c394                	sw	a3,0(a5)
    27ae:	0791                	addi	a5,a5,4 # 0xc004
    27b0:	fee79ce3          	bne	a5,a4,0x27a8
    27b4:	50b2                	lw	ra,44(sp)
    27b6:	5422                	lw	s0,40(sp)
    27b8:	6145                	addi	sp,sp,48
    27ba:	8082                	ret

Disassembly of section .text.usb_conf:

000027bc <.text.usb_conf>:
    27bc:	67b9                	lui	a5,0xe
    27be:	4398                	lw	a4,0(a5)
    27c0:	00a70963          	beq	a4,a0,0x27d2
    27c4:	4715                	li	a4,5
    27c6:	00a77563          	bgeu	a4,a0,0x27d0
    27ca:	0007a023          	sw	zero,0(a5) # 0xe000
    27ce:	8082                	ret
    27d0:	c388                	sw	a0,0(a5)
    27d2:	8082                	ret

Disassembly of section .text.usb_audio:

000027d4 <.text.usb_audio>:
    27d4:	67b9                	lui	a5,0xe
    27d6:	c788                	sw	a0,8(a5)
    27d8:	67b9                	lui	a5,0xe
    27da:	07b1                	addi	a5,a5,12 # 0xe00c
    27dc:	4705                	li	a4,1
    27de:	c398                	sw	a4,0(a5)
    27e0:	4398                	lw	a4,0(a5)
    27e2:	ff7d                	bnez	a4,0x27e0
    27e4:	67b9                	lui	a5,0xe
    27e6:	43c8                	lw	a0,4(a5)
    27e8:	0ff57513          	zext.b	a0,a0
    27ec:	8082                	ret

Disassembly of section .text.usb_serial_read:

000027ee <.text.usb_serial_read>:
    27ee:	67b9                	lui	a5,0xe
    27f0:	07b1                	addi	a5,a5,12 # 0xe00c
    27f2:	4398                	lw	a4,0(a5)
    27f4:	df7d                	beqz	a4,0x27f2
    27f6:	0007a023          	sw	zero,0(a5)
    27fa:	67b9                	lui	a5,0xe
    27fc:	43c8                	lw	a0,4(a5)
    27fe:	0ff57513          	zext.b	a0,a0
    2802:	8082                	ret

Disassembly of section .text.usb_write:

00002804 <.text.usb_write>:
    2804:	67b9                	lui	a5,0xe
    2806:	c788                	sw	a0,8(a5)
    2808:	67b9                	lui	a5,0xe
    280a:	07b1                	addi	a5,a5,12 # 0xe00c
    280c:	4705                	li	a4,1
    280e:	c398                	sw	a4,0(a5)
    2810:	4398                	lw	a4,0(a5)
    2812:	ff7d                	bnez	a4,0x2810
    2814:	1f400513          	li	a0,500
    2818:	bf99                	j	0x276e

Disassembly of section .text.usb_print_short:

0000281a <.text.usb_print_short>:
    281a:	1141                	addi	sp,sp,-16
    281c:	c422                	sw	s0,8(sp)
    281e:	c226                	sw	s1,4(sp)
    2820:	c04a                	sw	s2,0(sp)
    2822:	c606                	sw	ra,12(sp)
    2824:	842a                	mv	s0,a0
    2826:	4491                	li	s1,4
    2828:	03900913          	li	s2,57
    282c:	00c45793          	srli	a5,s0,0xc
    2830:	03078513          	addi	a0,a5,48
    2834:	00a97463          	bgeu	s2,a0,0x283c
    2838:	03778513          	addi	a0,a5,55
    283c:	0412                	slli	s0,s0,0x4
    283e:	0442                	slli	s0,s0,0x10
    2840:	14fd                	addi	s1,s1,-1
    2842:	37c9                	jal	0x2804
    2844:	8041                	srli	s0,s0,0x10
    2846:	f0fd                	bnez	s1,0x282c
    2848:	40b2                	lw	ra,12(sp)
    284a:	4422                	lw	s0,8(sp)
    284c:	4492                	lw	s1,4(sp)
    284e:	4902                	lw	s2,0(sp)
    2850:	0141                	addi	sp,sp,16
    2852:	8082                	ret

Disassembly of section .text.usb_print_int:

00002854 <.text.usb_print_int>:
    2854:	1141                	addi	sp,sp,-16
    2856:	c422                	sw	s0,8(sp)
    2858:	842a                	mv	s0,a0
    285a:	8141                	srli	a0,a0,0x10
    285c:	c606                	sw	ra,12(sp)
    285e:	3f75                	jal	0x281a
    2860:	01041513          	slli	a0,s0,0x10
    2864:	4422                	lw	s0,8(sp)
    2866:	40b2                	lw	ra,12(sp)
    2868:	8141                	srli	a0,a0,0x10
    286a:	0141                	addi	sp,sp,16
    286c:	b77d                	j	0x281a

Disassembly of section .text.usb_print_newline:

0000286e <.text.usb_print_newline>:
    286e:	1141                	addi	sp,sp,-16
    2870:	4535                	li	a0,13
    2872:	c606                	sw	ra,12(sp)
    2874:	3f41                	jal	0x2804
    2876:	40b2                	lw	ra,12(sp)
    2878:	4529                	li	a0,10
    287a:	0141                	addi	sp,sp,16
    287c:	b761                	j	0x2804

Disassembly of section .text.usb_read_short:

0000287e <.text.usb_read_short>:
    287e:	1101                	addi	sp,sp,-32
    2880:	cc22                	sw	s0,24(sp)
    2882:	c84a                	sw	s2,16(sp)
    2884:	c64e                	sw	s3,12(sp)
    2886:	ce06                	sw	ra,28(sp)
    2888:	ca26                	sw	s1,20(sp)
    288a:	4411                	li	s0,4
    288c:	4501                	li	a0,0
    288e:	4925                	li	s2,9
    2890:	49bd                	li	s3,15
    2892:	0512                	slli	a0,a0,0x4
    2894:	01051493          	slli	s1,a0,0x10
    2898:	3f99                	jal	0x27ee
    289a:	fd050793          	addi	a5,a0,-48
    289e:	0ff7f793          	zext.b	a5,a5
    28a2:	80c1                	srli	s1,s1,0x10
    28a4:	00f97c63          	bgeu	s2,a5,0x28bc
    28a8:	fc950793          	addi	a5,a0,-55
    28ac:	0ff7f793          	zext.b	a5,a5
    28b0:	00f9f663          	bgeu	s3,a5,0x28bc
    28b4:	fa950513          	addi	a0,a0,-87
    28b8:	0ff57793          	zext.b	a5,a0
    28bc:	00978533          	add	a0,a5,s1
    28c0:	0542                	slli	a0,a0,0x10
    28c2:	147d                	addi	s0,s0,-1
    28c4:	8141                	srli	a0,a0,0x10
    28c6:	f471                	bnez	s0,0x2892
    28c8:	40f2                	lw	ra,28(sp)
    28ca:	4462                	lw	s0,24(sp)
    28cc:	44d2                	lw	s1,20(sp)
    28ce:	4942                	lw	s2,16(sp)
    28d0:	49b2                	lw	s3,12(sp)
    28d2:	6105                	addi	sp,sp,32
    28d4:	8082                	ret

Disassembly of section .text.usb_read_int:

000028d6 <.text.usb_read_int>:
    28d6:	1141                	addi	sp,sp,-16
    28d8:	c606                	sw	ra,12(sp)
    28da:	c422                	sw	s0,8(sp)
    28dc:	374d                	jal	0x287e
    28de:	01051413          	slli	s0,a0,0x10
    28e2:	3f71                	jal	0x287e
    28e4:	40b2                	lw	ra,12(sp)
    28e6:	9522                	add	a0,a0,s0
    28e8:	4422                	lw	s0,8(sp)
    28ea:	0141                	addi	sp,sp,16
    28ec:	8082                	ret

Disassembly of section .text.gpio_write:

000028ee <.text.gpio_write>:
    28ee:	67c1                	lui	a5,0x10
    28f0:	c3c8                	sw	a0,4(a5)
    28f2:	8082                	ret

Disassembly of section .text.gpio_read:

000028f4 <.text.gpio_read>:
    28f4:	67c1                	lui	a5,0x10
    28f6:	4388                	lw	a0,0(a5)
    28f8:	0542                	slli	a0,a0,0x10
    28fa:	8141                	srli	a0,a0,0x10
    28fc:	8082                	ret

Disassembly of section .text.instr_mem_write:

000028fe <.text.instr_mem_write>:
    28fe:	050a                	slli	a0,a0,0x2
    2900:	6791                	lui	a5,0x4
    2902:	97aa                	add	a5,a5,a0
    2904:	c38c                	sw	a1,0(a5)
    2906:	8082                	ret

Disassembly of section .text.uart_main:

00002908 <.text.uart_main>:
    2908:	1101                	addi	sp,sp,-32
    290a:	cc22                	sw	s0,24(sp)
    290c:	ca26                	sw	s1,20(sp)
    290e:	c84a                	sw	s2,16(sp)
    2910:	c64e                	sw	s3,12(sp)
    2912:	ce06                	sw	ra,28(sp)
    2914:	6799                	lui	a5,0x6
    2916:	0c700713          	li	a4,199
    291a:	c398                	sw	a4,0(a5)
    291c:	64c1                	lui	s1,0x10
    291e:	0007a223          	sw	zero,4(a5) # 0x6004
    2922:	4401                	li	s0,0
    2924:	4901                	li	s2,0
    2926:	69c1                	lui	s3,0x10
    2928:	0491                	addi	s1,s1,4 # 0x10004
    292a:	0009a503          	lw	a0,0(s3) # 0x10000
    292e:	02090363          	beqz	s2,0x2954
    2932:	0ff57513          	zext.b	a0,a0
    2936:	32b5                	jal	0x22a2
    2938:	f0047413          	andi	s0,s0,-256
    293c:	32b1                	jal	0x2288
    293e:	9522                	add	a0,a0,s0
    2940:	01051413          	slli	s0,a0,0x10
    2944:	8441                	srai	s0,s0,0x10
    2946:	01041793          	slli	a5,s0,0x10
    294a:	83c1                	srli	a5,a5,0x10
    294c:	00194913          	xori	s2,s2,1
    2950:	c09c                	sw	a5,0(s1)
    2952:	bfe1                	j	0x292a
    2954:	0542                	slli	a0,a0,0x10
    2956:	8141                	srli	a0,a0,0x10
    2958:	8121                	srli	a0,a0,0x8
    295a:	32a1                	jal	0x22a2
    295c:	3235                	jal	0x2288
    295e:	0ff47413          	zext.b	s0,s0
    2962:	0522                	slli	a0,a0,0x8
    2964:	942a                	add	s0,s0,a0
    2966:	0442                	slli	s0,s0,0x10
    2968:	bff1                	j	0x2944

Disassembly of section .text.uart_interrupt:

0000296a <.text.uart_interrupt>:
    296a:	8082                	ret

Disassembly of section .text.i2c_main:

0000296c <.text.i2c_main>:
    296c:	1101                	addi	sp,sp,-32
    296e:	cc22                	sw	s0,24(sp)
    2970:	ca26                	sw	s1,20(sp)
    2972:	c84a                	sw	s2,16(sp)
    2974:	c64e                	sw	s3,12(sp)
    2976:	c452                	sw	s4,8(sp)
    2978:	ce06                	sw	ra,28(sp)
    297a:	67a1                	lui	a5,0x8
    297c:	07b00713          	li	a4,123
    2980:	69c1                	lui	s3,0x10
    2982:	6941                	lui	s2,0x10
    2984:	0007a4b7          	lui	s1,0x7a
    2988:	c3d8                	sw	a4,4(a5)
    298a:	fff98a13          	addi	s4,s3,-1 # 0xffff
    298e:	0911                	addi	s2,s2,4 # 0x10004
    2990:	12048493          	addi	s1,s1,288 # 0x7a120
    2994:	02402783          	lw	a5,36(zero) # 0x24
    2998:	c385                	beqz	a5,0x29b8
    299a:	0009a503          	lw	a0,0(s3)
    299e:	4585                	li	a1,1
    29a0:	01457533          	and	a0,a0,s4
    29a4:	3a39                	jal	0x22c2
    29a6:	8526                	mv	a0,s1
    29a8:	33d9                	jal	0x276e
    29aa:	02402783          	lw	a5,36(zero) # 0x24
    29ae:	0017b793          	seqz	a5,a5
    29b2:	02f02223          	sw	a5,36(zero) # 0x24
    29b6:	bff9                	j	0x2994
    29b8:	4505                	li	a0,1
    29ba:	3215                	jal	0x22de
    29bc:	01457533          	and	a0,a0,s4
    29c0:	00a92023          	sw	a0,0(s2)
    29c4:	b7cd                	j	0x29a6

Disassembly of section .text.i2c_interrupt:

000029c6 <.text.i2c_interrupt>:
    29c6:	8082                	ret

Disassembly of section .text.qspi_main:

000029c8 <.text.qspi_main>:
    29c8:	7179                	addi	sp,sp,-48
    29ca:	4515                	li	a0,5
    29cc:	d606                	sw	ra,44(sp)
    29ce:	d422                	sw	s0,40(sp)
    29d0:	d226                	sw	s1,36(sp)
    29d2:	d04a                	sw	s2,32(sp)
    29d4:	ce4e                	sw	s3,28(sp)
    29d6:	cc52                	sw	s4,24(sp)
    29d8:	ca56                	sw	s5,20(sp)
    29da:	33cd                	jal	0x27bc
    29dc:	6741                	lui	a4,0x10
    29de:	66c1                	lui	a3,0x10
    29e0:	fff70593          	addi	a1,a4,-1 # 0xffff
    29e4:	0691                	addi	a3,a3,4 # 0x10004
    29e6:	4505                	li	a0,1
    29e8:	4809                	li	a6,2
    29ea:	431c                	lw	a5,0(a4)
    29ec:	00b7f633          	and	a2,a5,a1
    29f0:	07c2                	slli	a5,a5,0x10
    29f2:	c290                	sw	a2,0(a3)
    29f4:	83c1                	srli	a5,a5,0x10
    29f6:	dbf5                	beqz	a5,0x29ea
    29f8:	431c                	lw	a5,0(a4)
    29fa:	07c2                	slli	a5,a5,0x10
    29fc:	83c1                	srli	a5,a5,0x10
    29fe:	ffed                	bnez	a5,0x29f8
    2a00:	06a60a63          	beq	a2,a0,0x2a74
    2a04:	ff0613e3          	bne	a2,a6,0x29ea
    2a08:	4a05                	li	s4,1
    2a0a:	3d95                	jal	0x287e
    2a0c:	842a                	mv	s0,a0
    2a0e:	02000613          	li	a2,32
    2a12:	4581                	li	a1,0
    2a14:	0f800513          	li	a0,248
    2a18:	2e21                	jal	0x2d30
    2a1a:	3411                	jal	0x241e
    2a1c:	02000613          	li	a2,32
    2a20:	85a2                	mv	a1,s0
    2a22:	0f800513          	li	a0,248
    2a26:	3e89                	jal	0x2578
    2a28:	0068                	addi	a0,sp,12
    2a2a:	c652                	sw	s4,12(sp)
    2a2c:	34b1                	jal	0x2478
    2a2e:	00c15503          	lhu	a0,12(sp)
    2a32:	02040913          	addi	s2,s0,32
    2a36:	0942                	slli	s2,s2,0x10
    2a38:	33cd                	jal	0x281a
    2a3a:	02000613          	li	a2,32
    2a3e:	85a2                	mv	a1,s0
    2a40:	0f800513          	li	a0,248
    2a44:	31e1                	jal	0x270c
    2a46:	0f800993          	li	s3,248
    2a4a:	01095913          	srli	s2,s2,0x10
    2a4e:	8522                	mv	a0,s0
    2a50:	33e9                	jal	0x281a
    2a52:	03a00513          	li	a0,58
    2a56:	337d                	jal	0x2804
    2a58:	02000513          	li	a0,32
    2a5c:	3365                	jal	0x2804
    2a5e:	0009a503          	lw	a0,0(s3)
    2a62:	0411                	addi	s0,s0,4
    2a64:	0442                	slli	s0,s0,0x10
    2a66:	8041                	srli	s0,s0,0x10
    2a68:	33f5                	jal	0x2854
    2a6a:	0991                	addi	s3,s3,4
    2a6c:	3509                	jal	0x286e
    2a6e:	fe8910e3          	bne	s2,s0,0x2a4e
    2a72:	bf61                	j	0x2a0a
    2a74:	6941                	lui	s2,0x10
    2a76:	4481                	li	s1,0
    2a78:	0911                	addi	s2,s2,4 # 0x10004
    2a7a:	20000a93          	li	s5,512
    2a7e:	0f800413          	li	s0,248
    2a82:	02040a13          	addi	s4,s0,32
    2a86:	3d81                	jal	0x28d6
    2a88:	fff54513          	not	a0,a0
    2a8c:	c008                	sw	a0,0(s0)
    2a8e:	0411                	addi	s0,s0,4
    2a90:	ff441be3          	bne	s0,s4,0x2a86
    2a94:	3269                	jal	0x241e
    2a96:	00549593          	slli	a1,s1,0x5
    2a9a:	02000613          	li	a2,32
    2a9e:	0f800513          	li	a0,248
    2aa2:	0485                	addi	s1,s1,1
    2aa4:	3cd1                	jal	0x2578
    2aa6:	00992023          	sw	s1,0(s2)
    2aaa:	fd549ae3          	bne	s1,s5,0x2a7e
    2aae:	00000067          	jr	zero # 0x0
    2ab2:	bf99                	j	0x2a08

Disassembly of section .text.qspi_interrupt:

00002ab4 <.text.qspi_interrupt>:
    2ab4:	8082                	ret

Disassembly of section .text.timer_main:

00002ab6 <.text.timer_main>:
    2ab6:	1101                	addi	sp,sp,-32
    2ab8:	653d                	lui	a0,0xf
    2aba:	cc22                	sw	s0,24(sp)
    2abc:	c84a                	sw	s2,16(sp)
    2abe:	4605                	li	a2,1
    2ac0:	4581                	li	a1,0
    2ac2:	a5f50513          	addi	a0,a0,-1441 # 0xea5f
    2ac6:	6441                	lui	s0,0x10
    2ac8:	6931                	lui	s2,0xc
    2aca:	ca26                	sw	s1,20(sp)
    2acc:	c64e                	sw	s3,12(sp)
    2ace:	ce06                	sw	ra,28(sp)
    2ad0:	31b5                	jal	0x273c
    2ad2:	fff40493          	addi	s1,s0,-1 # 0xffff
    2ad6:	0911                	addi	s2,s2,4 # 0xc004
    2ad8:	02002703          	lw	a4,32(zero) # 0x20
    2adc:	401c                	lw	a5,0(s0)
    2ade:	8fe5                	and	a5,a5,s1
    2ae0:	fee78ee3          	beq	a5,a4,0x2adc
    2ae4:	401c                	lw	a5,0(s0)
    2ae6:	8fe5                	and	a5,a5,s1
    2ae8:	00f92023          	sw	a5,0(s2)
    2aec:	393d                	jal	0x272a
    2aee:	401c                	lw	a5,0(s0)
    2af0:	8fe5                	and	a5,a5,s1
    2af2:	02f02023          	sw	a5,32(zero) # 0x20
    2af6:	b7cd                	j	0x2ad8

Disassembly of section .text.timer_interrupt:

00002af8 <.text.timer_interrupt>:
    2af8:	12c05683          	lhu	a3,300(zero) # 0x12c
    2afc:	6741                	lui	a4,0x10
    2afe:	c354                	sw	a3,4(a4)
    2b00:	12c02703          	lw	a4,300(zero) # 0x12c
    2b04:	0705                	addi	a4,a4,1 # 0x10001
    2b06:	12e02623          	sw	a4,300(zero) # 0x12c
    2b0a:	8082                	ret

Disassembly of section .text.gpio_main:

00002b0c <.text.gpio_main>:
    2b0c:	66c1                	lui	a3,0x10
    2b0e:	67c1                	lui	a5,0x10
    2b10:	fff68613          	addi	a2,a3,-1 # 0xffff
    2b14:	0791                	addi	a5,a5,4 # 0x10004
    2b16:	4298                	lw	a4,0(a3)
    2b18:	8f71                	and	a4,a4,a2
    2b1a:	c398                	sw	a4,0(a5)
    2b1c:	bfed                	j	0x2b16

Disassembly of section .text.gpio_interrupt:

00002b1e <.text.gpio_interrupt>:
    2b1e:	8082                	ret

Disassembly of section .text.usb_main:

00002b20 <.text.usb_main>:
    2b20:	1101                	addi	sp,sp,-32
    2b22:	cc22                	sw	s0,24(sp)
    2b24:	ca26                	sw	s1,20(sp)
    2b26:	c84a                	sw	s2,16(sp)
    2b28:	c64e                	sw	s3,12(sp)
    2b2a:	c452                	sw	s4,8(sp)
    2b2c:	ce06                	sw	ra,28(sp)
    2b2e:	6a41                	lui	s4,0x10
    2b30:	4991                	li	s3,4
    2b32:	000a2783          	lw	a5,0(s4) # 0x10000
    2b36:	0ff7f793          	zext.b	a5,a5
    2b3a:	12f02423          	sw	a5,296(zero) # 0x128
    2b3e:	12002023          	sw	zero,288(zero) # 0x120
    2b42:	12802783          	lw	a5,296(zero) # 0x128
    2b46:	e3a1                	bnez	a5,0x2b86
    2b48:	12002703          	lw	a4,288(zero) # 0x120
    2b4c:	11c02783          	lw	a5,284(zero) # 0x11c
    2b50:	00f70763          	beq	a4,a5,0x2b5e
    2b54:	12002503          	lw	a0,288(zero) # 0x120
    2b58:	0ff57513          	zext.b	a0,a0
    2b5c:	3185                	jal	0x27bc
    2b5e:	12002783          	lw	a5,288(zero) # 0x120
    2b62:	10f02e23          	sw	a5,284(zero) # 0x11c
    2b66:	12002783          	lw	a5,288(zero) # 0x120
    2b6a:	03379963          	bne	a5,s3,0x2b9c
    2b6e:	000f4437          	lui	s0,0xf4
    2b72:	64c1                	lui	s1,0x10
    2b74:	24040413          	addi	s0,s0,576 # 0xf4240
    2b78:	4088                	lw	a0,0(s1)
    2b7a:	0ff57513          	zext.b	a0,a0
    2b7e:	3159                	jal	0x2804
    2b80:	8522                	mv	a0,s0
    2b82:	36f5                	jal	0x276e
    2b84:	bfd5                	j	0x2b78
    2b86:	12802783          	lw	a5,296(zero) # 0x128
    2b8a:	8385                	srli	a5,a5,0x1
    2b8c:	12f02423          	sw	a5,296(zero) # 0x128
    2b90:	12002783          	lw	a5,288(zero) # 0x120
    2b94:	0785                	addi	a5,a5,1
    2b96:	12f02023          	sw	a5,288(zero) # 0x120
    2b9a:	b765                	j	0x2b42
    2b9c:	04f9eb63          	bltu	s3,a5,0x2bf2
    2ba0:	4705                	li	a4,1
    2ba2:	00e79a63          	bne	a5,a4,0x2bb6
    2ba6:	12402503          	lw	a0,292(zero) # 0x124
    2baa:	0ff57513          	zext.b	a0,a0
    2bae:	311d                	jal	0x27d4
    2bb0:	12a02223          	sw	a0,292(zero) # 0x124
    2bb4:	bfcd                	j	0x2ba6
    2bb6:	4709                	li	a4,2
    2bb8:	f6e79de3          	bne	a5,a4,0x2b32
    2bbc:	28000993          	li	s3,640
    2bc0:	16800a13          	li	s4,360
    2bc4:	4501                	li	a0,0
    2bc6:	393d                	jal	0x2804
    2bc8:	4481                	li	s1,0
    2bca:	4401                	li	s0,0
    2bcc:	12402503          	lw	a0,292(zero) # 0x124
    2bd0:	9526                	add	a0,a0,s1
    2bd2:	9522                	add	a0,a0,s0
    2bd4:	0ff57513          	zext.b	a0,a0
    2bd8:	0405                	addi	s0,s0,1
    2bda:	312d                	jal	0x2804
    2bdc:	ff3418e3          	bne	s0,s3,0x2bcc
    2be0:	0485                	addi	s1,s1,1 # 0x10001
    2be2:	ff4494e3          	bne	s1,s4,0x2bca
    2be6:	12402783          	lw	a5,292(zero) # 0x124
    2bea:	0785                	addi	a5,a5,1
    2bec:	12f02223          	sw	a5,292(zero) # 0x124
    2bf0:	bfd1                	j	0x2bc4
    2bf2:	4715                	li	a4,5
    2bf4:	f2e79fe3          	bne	a5,a4,0x2b32
    2bf8:	3edd                	jal	0x27ee
    2bfa:	3129                	jal	0x2804
    2bfc:	bff5                	j	0x2bf8

Disassembly of section .text.usb_interrupt:

00002bfe <.text.usb_interrupt>:
    2bfe:	8082                	ret

Disassembly of section .text.debug_main:

00002c00 <.text.debug_main>:
    2c00:	715d                	addi	sp,sp,-80
    2c02:	de4e                	sw	s3,60(sp)
    2c04:	4515                	li	a0,5
    2c06:	69c1                	lui	s3,0x10
    2c08:	c2a6                	sw	s1,68(sp)
    2c0a:	da56                	sw	s5,52(sp)
    2c0c:	d85a                	sw	s6,48(sp)
    2c0e:	d65e                	sw	s7,44(sp)
    2c10:	d462                	sw	s8,40(sp)
    2c12:	c686                	sw	ra,76(sp)
    2c14:	c4a2                	sw	s0,72(sp)
    2c16:	c0ca                	sw	s2,64(sp)
    2c18:	dc52                	sw	s4,56(sp)
    2c1a:	d266                	sw	s9,36(sp)
    2c1c:	d06a                	sw	s10,32(sp)
    2c1e:	6ac1                	lui	s5,0x10
    2c20:	3e71                	jal	0x27bc
    2c22:	0991                	addi	s3,s3,4 # 0x10004
    2c24:	4b05                	li	s6,1
    2c26:	4b89                	li	s7,2
    2c28:	6c05                	lui	s8,0x1
    2c2a:	000aa783          	lw	a5,0(s5) # 0x10000
    2c2e:	07c2                	slli	a5,a5,0x10
    2c30:	83c1                	srli	a5,a5,0x10
    2c32:	10f01d23          	sh	a5,282(zero) # 0x11a
    2c36:	11a05783          	lhu	a5,282(zero) # 0x11a
    2c3a:	07c2                	slli	a5,a5,0x10
    2c3c:	83c1                	srli	a5,a5,0x10
    2c3e:	00f9a023          	sw	a5,0(s3)
    2c42:	11a05783          	lhu	a5,282(zero) # 0x11a
    2c46:	d3f5                	beqz	a5,0x2c2a
    2c48:	000aa783          	lw	a5,0(s5)
    2c4c:	07c2                	slli	a5,a5,0x10
    2c4e:	83c1                	srli	a5,a5,0x10
    2c50:	ffe5                	bnez	a5,0x2c48
    2c52:	11a05783          	lhu	a5,282(zero) # 0x11a
    2c56:	01079713          	slli	a4,a5,0x10
    2c5a:	8341                	srli	a4,a4,0x10
    2c5c:	05678c63          	beq	a5,s6,0x2cb4
    2c60:	fd7715e3          	bne	a4,s7,0x2c2a
    2c64:	4901                	li	s2,0
    2c66:	4a01                	li	s4,0
    2c68:	01091413          	slli	s0,s2,0x10
    2c6c:	8041                	srli	s0,s0,0x10
    2c6e:	02040c93          	addi	s9,s0,32
    2c72:	02000613          	li	a2,32
    2c76:	85ca                	mv	a1,s2
    2c78:	850a                	mv	a0,sp
    2c7a:	0cc2                	slli	s9,s9,0x10
    2c7c:	3c41                	jal	0x270c
    2c7e:	8d0a                	mv	s10,sp
    2c80:	010cdc93          	srli	s9,s9,0x10
    2c84:	8522                	mv	a0,s0
    2c86:	3e51                	jal	0x281a
    2c88:	03a00513          	li	a0,58
    2c8c:	3ea5                	jal	0x2804
    2c8e:	02000513          	li	a0,32
    2c92:	3e8d                	jal	0x2804
    2c94:	000d2503          	lw	a0,0(s10)
    2c98:	0411                	addi	s0,s0,4
    2c9a:	0442                	slli	s0,s0,0x10
    2c9c:	8041                	srli	s0,s0,0x10
    2c9e:	3e5d                	jal	0x2854
    2ca0:	0d11                	addi	s10,s10,4
    2ca2:	36f1                	jal	0x286e
    2ca4:	ff9410e3          	bne	s0,s9,0x2c84
    2ca8:	0a21                	addi	s4,s4,8
    2caa:	02090913          	addi	s2,s2,32
    2cae:	fb8a1de3          	bne	s4,s8,0x2c68
    2cb2:	bfa5                	j	0x2c2a
    2cb4:	4401                	li	s0,0
    2cb6:	00241513          	slli	a0,s0,0x2
    2cba:	0542                	slli	a0,a0,0x10
    2cbc:	8141                	srli	a0,a0,0x10
    2cbe:	3eb1                	jal	0x281a
    2cc0:	03a00513          	li	a0,58
    2cc4:	3681                	jal	0x2804
    2cc6:	00340913          	addi	s2,s0,3
    2cca:	fff40a13          	addi	s4,s0,-1
    2cce:	02000513          	li	a0,32
    2cd2:	3e0d                	jal	0x2804
    2cd4:	00291793          	slli	a5,s2,0x2
    2cd8:	4388                	lw	a0,0(a5)
    2cda:	197d                	addi	s2,s2,-1
    2cdc:	3ea5                	jal	0x2854
    2cde:	ff4918e3          	bne	s2,s4,0x2cce
    2ce2:	3671                	jal	0x286e
    2ce4:	0411                	addi	s0,s0,4
    2ce6:	80040793          	addi	a5,s0,-2048
    2cea:	f7f1                	bnez	a5,0x2cb6
    2cec:	bf3d                	j	0x2c2a

Disassembly of section .text.debug_interrupt:

00002cee <.text.debug_interrupt>:
    2cee:	8082                	ret

Disassembly of section .text.main_interrupt:

00002cf0 <.text.main_interrupt>:
    2cf0:	01c05783          	lhu	a5,28(zero) # 0x1c
    2cf4:	fff7c793          	not	a5,a5
    2cf8:	07c2                	slli	a5,a5,0x10
    2cfa:	83c1                	srli	a5,a5,0x10
    2cfc:	00f01e23          	sh	a5,28(zero) # 0x1c
    2d00:	01c05703          	lhu	a4,28(zero) # 0x1c
    2d04:	67c1                	lui	a5,0x10
    2d06:	0742                	slli	a4,a4,0x10
    2d08:	8341                	srli	a4,a4,0x10
    2d0a:	c3d8                	sw	a4,4(a5)
    2d0c:	8082                	ret

Disassembly of section .plt:

00002d10 <.plt>:
    2d10:	ffffd397          	auipc	t2,0xffffd
    2d14:	41c30333          	sub	t1,t1,t3
    2d18:	3dc3ae03          	lw	t3,988(t2) # 0xec
    2d1c:	fd430313          	addi	t1,t1,-44
    2d20:	3dc38293          	addi	t0,t2,988
    2d24:	00235313          	srli	t1,t1,0x2
    2d28:	0042a283          	lw	t0,4(t0)
    2d2c:	000e0067          	jr	t3
    2d30:	ffffde17          	auipc	t3,0xffffd
    2d34:	3c4e2e03          	lw	t3,964(t3) # 0xf4
    2d38:	000e0367          	jalr	t1,t3
    2d3c:	00000013          	nop
