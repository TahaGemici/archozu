
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
    2018:	73c000ef          	jal	0x2754
    201c:	4515                	li	a0,5
    201e:	768000ef          	jal	0x2786
    2022:	66c1                	lui	a3,0x10
    2024:	4298                	lw	a4,0(a3)
    2026:	0742                	slli	a4,a4,0x10
    2028:	8341                	srli	a4,a4,0x10
    202a:	10e01e23          	sh	a4,284(zero) # 0x11c
    202e:	11c05703          	lhu	a4,284(zero) # 0x11c
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
    204a:	11c05683          	lhu	a3,284(zero) # 0x11c
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
    2070:	1df000ef          	jal	0x2a4e
    2074:	4741                	li	a4,16
    2076:	02e78063          	beq	a5,a4,0x2096
    207a:	02000713          	li	a4,32
    207e:	fee799e3          	bne	a5,a4,0x2070
    2082:	397000ef          	jal	0x2c18
    2086:	051000ef          	jal	0x28d6
    208a:	327000ef          	jal	0x2bb0
    208e:	0af000ef          	jal	0x293c
    2092:	151000ef          	jal	0x29e2
    2096:	1a3000ef          	jal	0x2a38
	...
    21fe:	0000                	unimp
    2200:	7139                	addi	sp,sp,-64
    2202:	cc3e                	sw	a5,24(sp)
    2204:	ce3a                	sw	a4,28(sp)
    2206:	11802703          	lw	a4,280(zero) # 0x118
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
    2228:	10002c23          	sw	zero,280(zero) # 0x118
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
    2252:	11c05783          	lhu	a5,284(zero) # 0x11c
    2256:	01079713          	slli	a4,a5,0x10
    225a:	8341                	srli	a4,a4,0x10
    225c:	c799                	beqz	a5,0x226a
    225e:	47a1                	li	a5,8
    2260:	fcf716e3          	bne	a4,a5,0x222c
    2264:	7c0000ef          	jal	0x2a24
    2268:	b7d1                	j	0x222c
    226a:	01c05783          	lhu	a5,28(zero) # 0x1c
    226e:	fff7c793          	not	a5,a5
    2272:	07c2                	slli	a5,a5,0x10
    2274:	83c1                	srli	a5,a5,0x10
    2276:	00f01e23          	sh	a5,28(zero) # 0x1c
    227a:	01c05703          	lhu	a4,28(zero) # 0x1c
    227e:	67c1                	lui	a5,0x10
    2280:	0742                	slli	a4,a4,0x10
    2282:	8341                	srli	a4,a4,0x10
    2284:	c3d8                	sw	a4,4(a5)
    2286:	b75d                	j	0x222c

Disassembly of section .text.uart_conf:

00002288 <.text.uart_conf>:
    2288:	039387b7          	lui	a5,0x3938
    228c:	70078793          	addi	a5,a5,1792 # 0x3938700
    2290:	02a7d7b3          	divu	a5,a5,a0
    2294:	6719                	lui	a4,0x6
    2296:	17fd                	addi	a5,a5,-1
    2298:	c31c                	sw	a5,0(a4)
    229a:	6799                	lui	a5,0x6
    229c:	c3cc                	sw	a1,4(a5)
    229e:	8082                	ret

Disassembly of section .text.uart_read:

000022a0 <.text.uart_read>:
    22a0:	6799                	lui	a5,0x6
    22a2:	07c1                	addi	a5,a5,16 # 0x6010
    22a4:	4709                	li	a4,2
    22a6:	4394                	lw	a3,0(a5)
    22a8:	fee69fe3          	bne	a3,a4,0x22a6
    22ac:	6719                	lui	a4,0x6
    22ae:	4708                	lw	a0,8(a4)
    22b0:	0007a023          	sw	zero,0(a5)
    22b4:	0ff57513          	zext.b	a0,a0
    22b8:	8082                	ret

Disassembly of section .text.uart_write:

000022ba <.text.uart_write>:
    22ba:	6799                	lui	a5,0x6
    22bc:	c7c8                	sw	a0,12(a5)
    22be:	6799                	lui	a5,0x6
    22c0:	07c1                	addi	a5,a5,16 # 0x6010
    22c2:	4705                	li	a4,1
    22c4:	c398                	sw	a4,0(a5)
    22c6:	4398                	lw	a4,0(a5)
    22c8:	8b11                	andi	a4,a4,4
    22ca:	df75                	beqz	a4,0x22c6
    22cc:	4398                	lw	a4,0(a5)
    22ce:	8b09                	andi	a4,a4,2
    22d0:	c398                	sw	a4,0(a5)
    22d2:	8082                	ret

Disassembly of section .text.i2c_conf:

000022d4 <.text.i2c_conf>:
    22d4:	67a1                	lui	a5,0x8
    22d6:	c3c8                	sw	a0,4(a5)
    22d8:	8082                	ret

Disassembly of section .text.i2c_write:

000022da <.text.i2c_write>:
    22da:	67a1                	lui	a5,0x8
    22dc:	c38c                	sw	a1,0(a5)
    22de:	c7c8                	sw	a0,12(a5)
    22e0:	67a1                	lui	a5,0x8
    22e2:	07c1                	addi	a5,a5,16 # 0x8010
    22e4:	4705                	li	a4,1
    22e6:	c398                	sw	a4,0(a5)
    22e8:	4398                	lw	a4,0(a5)
    22ea:	8b09                	andi	a4,a4,2
    22ec:	df75                	beqz	a4,0x22e8
    22ee:	4398                	lw	a4,0(a5)
    22f0:	8b31                	andi	a4,a4,12
    22f2:	c398                	sw	a4,0(a5)
    22f4:	8082                	ret

Disassembly of section .text.i2c_read:

000022f6 <.text.i2c_read>:
    22f6:	67a1                	lui	a5,0x8
    22f8:	c388                	sw	a0,0(a5)
    22fa:	4711                	li	a4,4
    22fc:	07c1                	addi	a5,a5,16 # 0x8010
    22fe:	c398                	sw	a4,0(a5)
    2300:	4398                	lw	a4,0(a5)
    2302:	8b21                	andi	a4,a4,8
    2304:	df75                	beqz	a4,0x2300
    2306:	4398                	lw	a4,0(a5)
    2308:	8b0d                	andi	a4,a4,3
    230a:	c398                	sw	a4,0(a5)
    230c:	67a1                	lui	a5,0x8
    230e:	4788                	lw	a0,8(a5)
    2310:	8082                	ret

Disassembly of section .text.qspi_wait:

00002312 <.text.qspi_wait>:
    2312:	67a9                	lui	a5,0xa
    2314:	02878793          	addi	a5,a5,40 # 0xa028
    2318:	4705                	li	a4,1
    231a:	4394                	lw	a3,0(a5)
    231c:	fee69fe3          	bne	a3,a4,0x231a
    2320:	67a9                	lui	a5,0xa
    2322:	02878793          	addi	a5,a5,40 # 0xa028
    2326:	4705                	li	a4,1
    2328:	4394                	lw	a3,0(a5)
    232a:	fee69fe3          	bne	a3,a4,0x2328
    232e:	8082                	ret

Disassembly of section .text.qspi_read_array:

00002330 <.text.qspi_read_array>:
    2330:	058d                	addi	a1,a1,3
    2332:	6729                	lui	a4,0xa
    2334:	99f1                	andi	a1,a1,-4
    2336:	4781                	li	a5,0
    2338:	0721                	addi	a4,a4,8 # 0xa008
    233a:	00b79363          	bne	a5,a1,0x2340
    233e:	8082                	ret
    2340:	00e786b3          	add	a3,a5,a4
    2344:	4290                	lw	a2,0(a3)
    2346:	00f506b3          	add	a3,a0,a5
    234a:	0791                	addi	a5,a5,4
    234c:	c290                	sw	a2,0(a3)
    234e:	b7f5                	j	0x233a

Disassembly of section .text.qspi_write_array:

00002350 <.text.qspi_write_array>:
    2350:	058d                	addi	a1,a1,3
    2352:	6729                	lui	a4,0xa
    2354:	99f1                	andi	a1,a1,-4
    2356:	4781                	li	a5,0
    2358:	0721                	addi	a4,a4,8 # 0xa008
    235a:	00b79363          	bne	a5,a1,0x2360
    235e:	8082                	ret
    2360:	00f50633          	add	a2,a0,a5
    2364:	4210                	lw	a2,0(a2)
    2366:	00e786b3          	add	a3,a5,a4
    236a:	0791                	addi	a5,a5,4
    236c:	c290                	sw	a2,0(a3)
    236e:	b7f5                	j	0x235a

Disassembly of section .text.qspi_custom_x0:

00002370 <.text.qspi_custom_x0>:
    2370:	47f9                	li	a5,30
    2372:	02b7f733          	remu	a4,a5,a1
    2376:	02b7d7b3          	divu	a5,a5,a1
    237a:	00173713          	seqz	a4,a4
    237e:	8f99                	sub	a5,a5,a4
    2380:	80000737          	lui	a4,0x80000
    2384:	953a                	add	a0,a0,a4
    2386:	07e6                	slli	a5,a5,0x19
    2388:	97aa                	add	a5,a5,a0
    238a:	6729                	lui	a4,0xa
    238c:	c31c                	sw	a5,0(a4)
    238e:	b751                	j	0x2312

Disassembly of section .text.qspi_custom_write:

00002390 <.text.qspi_custom_write>:
    2390:	1141                	addi	sp,sp,-16
    2392:	c422                	sw	s0,8(sp)
    2394:	88ae                	mv	a7,a1
    2396:	fff78413          	addi	s0,a5,-1
    239a:	85be                	mv	a1,a5
    239c:	800007b7          	lui	a5,0x80000
    23a0:	40078793          	addi	a5,a5,1024 # 0x80000400
    23a4:	0442                	slli	s0,s0,0x10
    23a6:	943e                	add	s0,s0,a5
    23a8:	9432                	add	s0,s0,a2
    23aa:	06a2                	slli	a3,a3,0x8
    23ac:	8305                	srli	a4,a4,0x1
    23ae:	9436                	add	s0,s0,a3
    23b0:	072e                	slli	a4,a4,0xb
    23b2:	943a                	add	s0,s0,a4
    23b4:	4779                	li	a4,30
    23b6:	030777b3          	remu	a5,a4,a6
    23ba:	c606                	sw	ra,12(sp)
    23bc:	03075733          	divu	a4,a4,a6
    23c0:	0017b793          	seqz	a5,a5
    23c4:	8f1d                	sub	a4,a4,a5
    23c6:	67a9                	lui	a5,0xa
    23c8:	0766                	slli	a4,a4,0x19
    23ca:	0117a223          	sw	a7,4(a5) # 0xa004
    23ce:	943a                	add	s0,s0,a4
    23d0:	3741                	jal	0x2350
    23d2:	67a9                	lui	a5,0xa
    23d4:	c380                	sw	s0,0(a5)
    23d6:	4422                	lw	s0,8(sp)
    23d8:	40b2                	lw	ra,12(sp)
    23da:	0141                	addi	sp,sp,16
    23dc:	bf1d                	j	0x2312

Disassembly of section .text.qspi_custom_read:

000023de <.text.qspi_custom_read>:
    23de:	1101                	addi	sp,sp,-32
    23e0:	cc22                	sw	s0,24(sp)
    23e2:	ce06                	sw	ra,28(sp)
    23e4:	843e                	mv	s0,a5
    23e6:	4791                	li	a5,4
    23e8:	04f69463          	bne	a3,a5,0x2430
    23ec:	30060613          	addi	a2,a2,768
    23f0:	46f9                	li	a3,30
    23f2:	0306f7b3          	remu	a5,a3,a6
    23f6:	8305                	srli	a4,a4,0x1
    23f8:	072e                	slli	a4,a4,0xb
    23fa:	c62a                	sw	a0,12(sp)
    23fc:	0306d6b3          	divu	a3,a3,a6
    2400:	0017b793          	seqz	a5,a5
    2404:	fff40813          	addi	a6,s0,-1
    2408:	0842                	slli	a6,a6,0x10
    240a:	8e9d                	sub	a3,a3,a5
    240c:	800007b7          	lui	a5,0x80000
    2410:	983e                	add	a6,a6,a5
    2412:	06e6                	slli	a3,a3,0x19
    2414:	9742                	add	a4,a4,a6
    2416:	9736                	add	a4,a4,a3
    2418:	67a9                	lui	a5,0xa
    241a:	c3cc                	sw	a1,4(a5)
    241c:	9732                	add	a4,a4,a2
    241e:	67a9                	lui	a5,0xa
    2420:	c398                	sw	a4,0(a5)
    2422:	3dc5                	jal	0x2312
    2424:	85a2                	mv	a1,s0
    2426:	4462                	lw	s0,24(sp)
    2428:	4532                	lw	a0,12(sp)
    242a:	40f2                	lw	ra,28(sp)
    242c:	6105                	addi	sp,sp,32
    242e:	b709                	j	0x2330
    2430:	06a2                	slli	a3,a3,0x8
    2432:	9636                	add	a2,a2,a3
    2434:	bf75                	j	0x23f0

Disassembly of section .text.s25fl128s_wren:

00002436 <.text.s25fl128s_wren>:
    2436:	800007b7          	lui	a5,0x80000
    243a:	0799                	addi	a5,a5,6 # 0x80000006
    243c:	6729                	lui	a4,0xa
    243e:	c31c                	sw	a5,0(a4)
    2440:	bdc9                	j	0x2312

Disassembly of section .text.s25fl128s_wrdi:

00002442 <.text.s25fl128s_wrdi>:
    2442:	800007b7          	lui	a5,0x80000
    2446:	0791                	addi	a5,a5,4 # 0x80000004
    2448:	6729                	lui	a4,0xa
    244a:	c31c                	sw	a5,0(a4)
    244c:	b5d9                	j	0x2312

Disassembly of section .text.s25fl128s_clsr:

0000244e <.text.s25fl128s_clsr>:
    244e:	800007b7          	lui	a5,0x80000
    2452:	03078793          	addi	a5,a5,48 # 0x80000030
    2456:	6729                	lui	a4,0xa
    2458:	c31c                	sw	a5,0(a4)
    245a:	bd65                	j	0x2312

Disassembly of section .text.s25fl128s_reset:

0000245c <.text.s25fl128s_reset>:
    245c:	800007b7          	lui	a5,0x80000
    2460:	0f078793          	addi	a5,a5,240 # 0x800000f0
    2464:	6729                	lui	a4,0xa
    2466:	c31c                	sw	a5,0(a4)
    2468:	b56d                	j	0x2312

Disassembly of section .text.s25fl128s_rdid:

0000246a <.text.s25fl128s_rdid>:
    246a:	1101                	addi	sp,sp,-32
    246c:	ce06                	sw	ra,28(sp)
    246e:	c62a                	sw	a0,12(sp)
    2470:	67a9                	lui	a5,0xa
    2472:	0007a223          	sw	zero,4(a5) # 0xa004
    2476:	801f07b7          	lui	a5,0x801f0
    247a:	19f78793          	addi	a5,a5,415 # 0x801f019f
    247e:	6729                	lui	a4,0xa
    2480:	c31c                	sw	a5,0(a4)
    2482:	3d41                	jal	0x2312
    2484:	4532                	lw	a0,12(sp)
    2486:	40f2                	lw	ra,28(sp)
    2488:	02000593          	li	a1,32
    248c:	6105                	addi	sp,sp,32
    248e:	b54d                	j	0x2330

Disassembly of section .text.s25fl128s_rdsr1:

00002490 <.text.s25fl128s_rdsr1>:
    2490:	1101                	addi	sp,sp,-32
    2492:	ce06                	sw	ra,28(sp)
    2494:	c62a                	sw	a0,12(sp)
    2496:	67a9                	lui	a5,0xa
    2498:	0007a223          	sw	zero,4(a5) # 0xa004
    249c:	800007b7          	lui	a5,0x80000
    24a0:	10578793          	addi	a5,a5,261 # 0x80000105
    24a4:	6729                	lui	a4,0xa
    24a6:	c31c                	sw	a5,0(a4)
    24a8:	35ad                	jal	0x2312
    24aa:	4532                	lw	a0,12(sp)
    24ac:	40f2                	lw	ra,28(sp)
    24ae:	4585                	li	a1,1
    24b0:	6105                	addi	sp,sp,32
    24b2:	bdbd                	j	0x2330

Disassembly of section .text.s25fl128s_rdsr2:

000024b4 <.text.s25fl128s_rdsr2>:
    24b4:	1101                	addi	sp,sp,-32
    24b6:	ce06                	sw	ra,28(sp)
    24b8:	c62a                	sw	a0,12(sp)
    24ba:	67a9                	lui	a5,0xa
    24bc:	0007a223          	sw	zero,4(a5) # 0xa004
    24c0:	800007b7          	lui	a5,0x80000
    24c4:	10778793          	addi	a5,a5,263 # 0x80000107
    24c8:	6729                	lui	a4,0xa
    24ca:	c31c                	sw	a5,0(a4)
    24cc:	3599                	jal	0x2312
    24ce:	4532                	lw	a0,12(sp)
    24d0:	40f2                	lw	ra,28(sp)
    24d2:	4585                	li	a1,1
    24d4:	6105                	addi	sp,sp,32
    24d6:	bda9                	j	0x2330

Disassembly of section .text.s25fl128s_rdcr:

000024d8 <.text.s25fl128s_rdcr>:
    24d8:	1101                	addi	sp,sp,-32
    24da:	ce06                	sw	ra,28(sp)
    24dc:	c62a                	sw	a0,12(sp)
    24de:	67a9                	lui	a5,0xa
    24e0:	0007a223          	sw	zero,4(a5) # 0xa004
    24e4:	800007b7          	lui	a5,0x80000
    24e8:	13578793          	addi	a5,a5,309 # 0x80000135
    24ec:	6729                	lui	a4,0xa
    24ee:	c31c                	sw	a5,0(a4)
    24f0:	350d                	jal	0x2312
    24f2:	4532                	lw	a0,12(sp)
    24f4:	40f2                	lw	ra,28(sp)
    24f6:	4585                	li	a1,1
    24f8:	6105                	addi	sp,sp,32
    24fa:	bd1d                	j	0x2330

Disassembly of section .text.s25fl128s_res:

000024fc <.text.s25fl128s_res>:
    24fc:	1101                	addi	sp,sp,-32
    24fe:	ce06                	sw	ra,28(sp)
    2500:	c62a                	sw	a0,12(sp)
    2502:	67a9                	lui	a5,0xa
    2504:	0007a223          	sw	zero,4(a5) # 0xa004
    2508:	800067b7          	lui	a5,0x80006
    250c:	1ab78793          	addi	a5,a5,427 # 0x800061ab
    2510:	6729                	lui	a4,0xa
    2512:	c31c                	sw	a5,0(a4)
    2514:	3bfd                	jal	0x2312
    2516:	4532                	lw	a0,12(sp)
    2518:	40f2                	lw	ra,28(sp)
    251a:	4585                	li	a1,1
    251c:	6105                	addi	sp,sp,32
    251e:	bd09                	j	0x2330

Disassembly of section .text.s25fl128s_read_id:

00002520 <.text.s25fl128s_read_id>:
    2520:	1101                	addi	sp,sp,-32
    2522:	ce06                	sw	ra,28(sp)
    2524:	c62a                	sw	a0,12(sp)
    2526:	67a9                	lui	a5,0xa
    2528:	c3cc                	sw	a1,4(a5)
    252a:	800167b7          	lui	a5,0x80016
    252e:	19078793          	addi	a5,a5,400 # 0x80016190
    2532:	6729                	lui	a4,0xa
    2534:	c31c                	sw	a5,0(a4)
    2536:	3bf1                	jal	0x2312
    2538:	4532                	lw	a0,12(sp)
    253a:	40f2                	lw	ra,28(sp)
    253c:	4589                	li	a1,2
    253e:	6105                	addi	sp,sp,32
    2540:	bbc5                	j	0x2330

Disassembly of section .text.s25fl128s_read:

00002542 <.text.s25fl128s_read>:
    2542:	87b2                	mv	a5,a2
    2544:	03200813          	li	a6,50
    2548:	4761                	li	a4,24
    254a:	4685                	li	a3,1
    254c:	460d                	li	a2,3
    254e:	bd41                	j	0x23de

Disassembly of section .text.s25fl128s_wrr:

00002550 <.text.s25fl128s_wrr>:
    2550:	1141                	addi	sp,sp,-16
    2552:	c606                	sw	ra,12(sp)
    2554:	67a9                	lui	a5,0xa
    2556:	0007a223          	sw	zero,4(a5) # 0xa004
    255a:	4589                	li	a1,2
    255c:	3bd5                	jal	0x2350
    255e:	800167b7          	lui	a5,0x80016
    2562:	40b2                	lw	ra,12(sp)
    2564:	50178793          	addi	a5,a5,1281 # 0x80016501
    2568:	6729                	lui	a4,0xa
    256a:	c31c                	sw	a5,0(a4)
    256c:	0141                	addi	sp,sp,16
    256e:	b355                	j	0x2312

Disassembly of section .text.s25fl128s_se:

00002570 <.text.s25fl128s_se>:
    2570:	1141                	addi	sp,sp,-16
    2572:	c606                	sw	ra,12(sp)
    2574:	67a9                	lui	a5,0xa
    2576:	0007a223          	sw	zero,4(a5) # 0xa004
    257a:	458d                	li	a1,3
    257c:	3bd1                	jal	0x2350
    257e:	800207b7          	lui	a5,0x80020
    2582:	40b2                	lw	ra,12(sp)
    2584:	5d878793          	addi	a5,a5,1496 # 0x800205d8
    2588:	6729                	lui	a4,0xa
    258a:	c31c                	sw	a5,0(a4)
    258c:	0141                	addi	sp,sp,16
    258e:	b351                	j	0x2312

Disassembly of section .text.s25fl128s_pp:

00002590 <.text.s25fl128s_pp>:
    2590:	87b2                	mv	a5,a2
    2592:	08500813          	li	a6,133
    2596:	4761                	li	a4,24
    2598:	4685                	li	a3,1
    259a:	4609                	li	a2,2
    259c:	bbd5                	j	0x2390

Disassembly of section .text.s25fl128s_dor:

0000259e <.text.s25fl128s_dor>:
    259e:	87b2                	mv	a5,a2
    25a0:	06800813          	li	a6,104
    25a4:	02000713          	li	a4,32
    25a8:	4689                	li	a3,2
    25aa:	03b00613          	li	a2,59
    25ae:	bd05                	j	0x23de

Disassembly of section .text.s25fl128s_qor:

000025b0 <.text.s25fl128s_qor>:
    25b0:	87b2                	mv	a5,a2
    25b2:	06800813          	li	a6,104
    25b6:	02000713          	li	a4,32
    25ba:	4691                	li	a3,4
    25bc:	06b00613          	li	a2,107
    25c0:	bd39                	j	0x23de

Disassembly of section .text.s25fl128s_qpp:

000025c2 <.text.s25fl128s_qpp>:
    25c2:	87b2                	mv	a5,a2
    25c4:	05000813          	li	a6,80
    25c8:	4761                	li	a4,24
    25ca:	4691                	li	a3,4
    25cc:	03200613          	li	a2,50
    25d0:	b3c1                	j	0x2390

Disassembly of section .text.mt25ql256aba_write_disable:

000025d2 <.text.mt25ql256aba_write_disable>:
    25d2:	bd85                	j	0x2442

Disassembly of section .text.mt25ql256aba_write_enable:

000025d4 <.text.mt25ql256aba_write_enable>:
    25d4:	b58d                	j	0x2436

Disassembly of section .text.mt25ql256aba_reset_enable:

000025d6 <.text.mt25ql256aba_reset_enable>:
    25d6:	800007b7          	lui	a5,0x80000
    25da:	06678793          	addi	a5,a5,102 # 0x80000066
    25de:	6729                	lui	a4,0xa
    25e0:	c31c                	sw	a5,0(a4)
    25e2:	bb05                	j	0x2312

Disassembly of section .text.mt25ql256aba_reset_memory:

000025e4 <.text.mt25ql256aba_reset_memory>:
    25e4:	800007b7          	lui	a5,0x80000
    25e8:	09978793          	addi	a5,a5,153 # 0x80000099
    25ec:	6729                	lui	a4,0xa
    25ee:	c31c                	sw	a5,0(a4)
    25f0:	b30d                	j	0x2312

Disassembly of section .text.mt25ql256aba_read:

000025f2 <.text.mt25ql256aba_read>:
    25f2:	bf81                	j	0x2542

Disassembly of section .text.mt25ql256aba_page_program:

000025f4 <.text.mt25ql256aba_page_program>:
    25f4:	87b2                	mv	a5,a2
    25f6:	03200813          	li	a6,50
    25fa:	4761                	li	a4,24
    25fc:	4685                	li	a3,1
    25fe:	4609                	li	a2,2
    2600:	bb41                	j	0x2390

Disassembly of section .text.mt25ql256aba_sector_erase:

00002602 <.text.mt25ql256aba_sector_erase>:
    2602:	87b2                	mv	a5,a2
    2604:	03200813          	li	a6,50
    2608:	4761                	li	a4,24
    260a:	4685                	li	a3,1
    260c:	0d800613          	li	a2,216
    2610:	b341                	j	0x2390

Disassembly of section .text.mt25ql256aba_read_id:

00002612 <.text.mt25ql256aba_read_id>:
    2612:	87ae                	mv	a5,a1
    2614:	03200813          	li	a6,50
    2618:	4701                	li	a4,0
    261a:	4685                	li	a3,1
    261c:	09f00613          	li	a2,159
    2620:	4581                	li	a1,0
    2622:	bb75                	j	0x23de

Disassembly of section .text.mt25ql256aba_read_status_register:

00002624 <.text.mt25ql256aba_read_status_register>:
    2624:	b5b5                	j	0x2490

Disassembly of section .text.mt25ql256aba_read_flag_status_register:

00002626 <.text.mt25ql256aba_read_flag_status_register>:
    2626:	1101                	addi	sp,sp,-32
    2628:	ce06                	sw	ra,28(sp)
    262a:	c62a                	sw	a0,12(sp)
    262c:	67a9                	lui	a5,0xa
    262e:	0007a223          	sw	zero,4(a5) # 0xa004
    2632:	800007b7          	lui	a5,0x80000
    2636:	17078793          	addi	a5,a5,368 # 0x80000170
    263a:	6729                	lui	a4,0xa
    263c:	c31c                	sw	a5,0(a4)
    263e:	39d1                	jal	0x2312
    2640:	4532                	lw	a0,12(sp)
    2642:	40f2                	lw	ra,28(sp)
    2644:	4585                	li	a1,1
    2646:	6105                	addi	sp,sp,32
    2648:	b1e5                	j	0x2330

Disassembly of section .text.mt25ql256aba_read_nonvolatile_configuration_register:

0000264a <.text.mt25ql256aba_read_nonvolatile_configuration_register>:
    264a:	1101                	addi	sp,sp,-32
    264c:	ce06                	sw	ra,28(sp)
    264e:	c62a                	sw	a0,12(sp)
    2650:	67a9                	lui	a5,0xa
    2652:	0007a223          	sw	zero,4(a5) # 0xa004
    2656:	800107b7          	lui	a5,0x80010
    265a:	1b578793          	addi	a5,a5,437 # 0x800101b5
    265e:	6729                	lui	a4,0xa
    2660:	c31c                	sw	a5,0(a4)
    2662:	3945                	jal	0x2312
    2664:	4532                	lw	a0,12(sp)
    2666:	40f2                	lw	ra,28(sp)
    2668:	4589                	li	a1,2
    266a:	6105                	addi	sp,sp,32
    266c:	b1d1                	j	0x2330

Disassembly of section .text.mt25ql256aba_read_volatile_configuration_register:

0000266e <.text.mt25ql256aba_read_volatile_configuration_register>:
    266e:	1101                	addi	sp,sp,-32
    2670:	ce06                	sw	ra,28(sp)
    2672:	c62a                	sw	a0,12(sp)
    2674:	67a9                	lui	a5,0xa
    2676:	0007a223          	sw	zero,4(a5) # 0xa004
    267a:	800007b7          	lui	a5,0x80000
    267e:	18578793          	addi	a5,a5,389 # 0x80000185
    2682:	6729                	lui	a4,0xa
    2684:	c31c                	sw	a5,0(a4)
    2686:	3171                	jal	0x2312
    2688:	4532                	lw	a0,12(sp)
    268a:	40f2                	lw	ra,28(sp)
    268c:	4585                	li	a1,1
    268e:	6105                	addi	sp,sp,32
    2690:	b145                	j	0x2330

Disassembly of section .text.mt25ql256aba_write_status_register:

00002692 <.text.mt25ql256aba_write_status_register>:
    2692:	1141                	addi	sp,sp,-16
    2694:	c606                	sw	ra,12(sp)
    2696:	67a9                	lui	a5,0xa
    2698:	0007a223          	sw	zero,4(a5) # 0xa004
    269c:	4585                	li	a1,1
    269e:	394d                	jal	0x2350
    26a0:	800007b7          	lui	a5,0x80000
    26a4:	40b2                	lw	ra,12(sp)
    26a6:	50178793          	addi	a5,a5,1281 # 0x80000501
    26aa:	6729                	lui	a4,0xa
    26ac:	c31c                	sw	a5,0(a4)
    26ae:	0141                	addi	sp,sp,16
    26b0:	b18d                	j	0x2312

Disassembly of section .text.mt25ql256aba_write_nonvolatile_configuration_register:

000026b2 <.text.mt25ql256aba_write_nonvolatile_configuration_register>:
    26b2:	1141                	addi	sp,sp,-16
    26b4:	c606                	sw	ra,12(sp)
    26b6:	67a9                	lui	a5,0xa
    26b8:	0007a223          	sw	zero,4(a5) # 0xa004
    26bc:	4589                	li	a1,2
    26be:	3949                	jal	0x2350
    26c0:	800107b7          	lui	a5,0x80010
    26c4:	40b2                	lw	ra,12(sp)
    26c6:	5b178793          	addi	a5,a5,1457 # 0x800105b1
    26ca:	6729                	lui	a4,0xa
    26cc:	c31c                	sw	a5,0(a4)
    26ce:	0141                	addi	sp,sp,16
    26d0:	b189                	j	0x2312

Disassembly of section .text.mt25ql256aba_write_volatile_configuration_register:

000026d2 <.text.mt25ql256aba_write_volatile_configuration_register>:
    26d2:	1141                	addi	sp,sp,-16
    26d4:	c606                	sw	ra,12(sp)
    26d6:	67a9                	lui	a5,0xa
    26d8:	0007a223          	sw	zero,4(a5) # 0xa004
    26dc:	4585                	li	a1,1
    26de:	398d                	jal	0x2350
    26e0:	800007b7          	lui	a5,0x80000
    26e4:	40b2                	lw	ra,12(sp)
    26e6:	58178793          	addi	a5,a5,1409 # 0x80000581
    26ea:	6729                	lui	a4,0xa
    26ec:	c31c                	sw	a5,0(a4)
    26ee:	0141                	addi	sp,sp,16
    26f0:	b10d                	j	0x2312

Disassembly of section .text.mt25ql256aba_write_enhanced_volatile_configuration_register:

000026f2 <.text.mt25ql256aba_write_enhanced_volatile_configuration_register>:
    26f2:	1141                	addi	sp,sp,-16
    26f4:	c606                	sw	ra,12(sp)
    26f6:	67a9                	lui	a5,0xa
    26f8:	0007a223          	sw	zero,4(a5) # 0xa004
    26fc:	4585                	li	a1,1
    26fe:	3989                	jal	0x2350
    2700:	800007b7          	lui	a5,0x80000
    2704:	40b2                	lw	ra,12(sp)
    2706:	56178793          	addi	a5,a5,1377 # 0x80000561
    270a:	6729                	lui	a4,0xa
    270c:	c31c                	sw	a5,0(a4)
    270e:	0141                	addi	sp,sp,16
    2710:	b109                	j	0x2312

Disassembly of section .text.mt25ql256aba_dual_output_fast_read:

00002712 <.text.mt25ql256aba_dual_output_fast_read>:
    2712:	87b2                	mv	a5,a2
    2714:	03200813          	li	a6,50
    2718:	02000713          	li	a4,32
    271c:	4689                	li	a3,2
    271e:	03b00613          	li	a2,59
    2722:	b975                	j	0x23de

Disassembly of section .text.mt25ql256aba_quad_output_fast_read:

00002724 <.text.mt25ql256aba_quad_output_fast_read>:
    2724:	87b2                	mv	a5,a2
    2726:	03200813          	li	a6,50
    272a:	02000713          	li	a4,32
    272e:	4691                	li	a3,4
    2730:	06b00613          	li	a2,107
    2734:	b16d                	j	0x23de

Disassembly of section .text.timer_counter:

00002736 <.text.timer_counter>:
    2736:	67b1                	lui	a5,0xc
    2738:	4bc8                	lw	a0,20(a5)
    273a:	8082                	ret

Disassembly of section .text.timer_event:

0000273c <.text.timer_event>:
    273c:	67b1                	lui	a5,0xc
    273e:	4f88                	lw	a0,24(a5)
    2740:	8082                	ret

Disassembly of section .text.timer_clear:

00002742 <.text.timer_clear>:
    2742:	67b1                	lui	a5,0xc
    2744:	4705                	li	a4,1
    2746:	c798                	sw	a4,8(a5)
    2748:	67b1                	lui	a5,0xc
    274a:	cfd8                	sw	a4,28(a5)
    274c:	8082                	ret

Disassembly of section .text.timer_enabled:

0000274e <.text.timer_enabled>:
    274e:	67b1                	lui	a5,0xc
    2750:	c7c8                	sw	a0,12(a5)
    2752:	8082                	ret

Disassembly of section .text.timer_conf:

00002754 <.text.timer_conf>:
    2754:	1141                	addi	sp,sp,-16
    2756:	c606                	sw	ra,12(sp)
    2758:	67b1                	lui	a5,0xc
    275a:	c388                	sw	a0,0(a5)
    275c:	c3cc                	sw	a1,4(a5)
    275e:	67b1                	lui	a5,0xc
    2760:	cb90                	sw	a2,16(a5)
    2762:	08000613          	li	a2,128
    2766:	6589                	lui	a1,0x2
    2768:	20058593          	addi	a1,a1,512 # 0x2200
    276c:	30559073          	csrw	mtvec,a1
    2770:	30046073          	csrsi	mstatus,8
    2774:	30462073          	csrs	mie,a2
    2778:	37e9                	jal	0x2742
    277a:	40b2                	lw	ra,12(sp)
    277c:	67b1                	lui	a5,0xc
    277e:	4705                	li	a4,1
    2780:	c7d8                	sw	a4,12(a5)
    2782:	0141                	addi	sp,sp,16
    2784:	8082                	ret

Disassembly of section .text.usb_conf:

00002786 <.text.usb_conf>:
    2786:	67b9                	lui	a5,0xe
    2788:	4398                	lw	a4,0(a5)
    278a:	00a70963          	beq	a4,a0,0x279c
    278e:	4715                	li	a4,5
    2790:	00a77563          	bgeu	a4,a0,0x279a
    2794:	0007a023          	sw	zero,0(a5) # 0xe000
    2798:	8082                	ret
    279a:	c388                	sw	a0,0(a5)
    279c:	8082                	ret

Disassembly of section .text.usb_audio:

0000279e <.text.usb_audio>:
    279e:	67b9                	lui	a5,0xe
    27a0:	c788                	sw	a0,8(a5)
    27a2:	67b9                	lui	a5,0xe
    27a4:	07b1                	addi	a5,a5,12 # 0xe00c
    27a6:	4705                	li	a4,1
    27a8:	c398                	sw	a4,0(a5)
    27aa:	4398                	lw	a4,0(a5)
    27ac:	ff7d                	bnez	a4,0x27aa
    27ae:	0007a023          	sw	zero,0(a5)
    27b2:	67b9                	lui	a5,0xe
    27b4:	43c8                	lw	a0,4(a5)
    27b6:	0ff57513          	zext.b	a0,a0
    27ba:	8082                	ret

Disassembly of section .text.usb_serial_read:

000027bc <.text.usb_serial_read>:
    27bc:	67b9                	lui	a5,0xe
    27be:	07b1                	addi	a5,a5,12 # 0xe00c
    27c0:	4398                	lw	a4,0(a5)
    27c2:	df7d                	beqz	a4,0x27c0
    27c4:	0007a023          	sw	zero,0(a5)
    27c8:	67b9                	lui	a5,0xe
    27ca:	43c8                	lw	a0,4(a5)
    27cc:	0ff57513          	zext.b	a0,a0
    27d0:	8082                	ret

Disassembly of section .text.usb_write:

000027d2 <.text.usb_write>:
    27d2:	67b9                	lui	a5,0xe
    27d4:	c788                	sw	a0,8(a5)
    27d6:	67b9                	lui	a5,0xe
    27d8:	07b1                	addi	a5,a5,12 # 0xe00c
    27da:	4705                	li	a4,1
    27dc:	c398                	sw	a4,0(a5)
    27de:	4398                	lw	a4,0(a5)
    27e0:	ff7d                	bnez	a4,0x27de
    27e2:	0007a023          	sw	zero,0(a5)
    27e6:	8082                	ret

Disassembly of section .text.usb_print_short:

000027e8 <.text.usb_print_short>:
    27e8:	1141                	addi	sp,sp,-16
    27ea:	c422                	sw	s0,8(sp)
    27ec:	c226                	sw	s1,4(sp)
    27ee:	c04a                	sw	s2,0(sp)
    27f0:	c606                	sw	ra,12(sp)
    27f2:	842a                	mv	s0,a0
    27f4:	4491                	li	s1,4
    27f6:	03900913          	li	s2,57
    27fa:	00c45793          	srli	a5,s0,0xc
    27fe:	03078513          	addi	a0,a5,48
    2802:	00a97463          	bgeu	s2,a0,0x280a
    2806:	03778513          	addi	a0,a5,55
    280a:	0412                	slli	s0,s0,0x4
    280c:	0442                	slli	s0,s0,0x10
    280e:	14fd                	addi	s1,s1,-1
    2810:	37c9                	jal	0x27d2
    2812:	8041                	srli	s0,s0,0x10
    2814:	f0fd                	bnez	s1,0x27fa
    2816:	40b2                	lw	ra,12(sp)
    2818:	4422                	lw	s0,8(sp)
    281a:	4492                	lw	s1,4(sp)
    281c:	4902                	lw	s2,0(sp)
    281e:	0141                	addi	sp,sp,16
    2820:	8082                	ret

Disassembly of section .text.usb_print_int:

00002822 <.text.usb_print_int>:
    2822:	1141                	addi	sp,sp,-16
    2824:	c422                	sw	s0,8(sp)
    2826:	842a                	mv	s0,a0
    2828:	8141                	srli	a0,a0,0x10
    282a:	c606                	sw	ra,12(sp)
    282c:	3f75                	jal	0x27e8
    282e:	01041513          	slli	a0,s0,0x10
    2832:	4422                	lw	s0,8(sp)
    2834:	40b2                	lw	ra,12(sp)
    2836:	8141                	srli	a0,a0,0x10
    2838:	0141                	addi	sp,sp,16
    283a:	b77d                	j	0x27e8

Disassembly of section .text.usb_print_newline:

0000283c <.text.usb_print_newline>:
    283c:	1141                	addi	sp,sp,-16
    283e:	4535                	li	a0,13
    2840:	c606                	sw	ra,12(sp)
    2842:	3f41                	jal	0x27d2
    2844:	40b2                	lw	ra,12(sp)
    2846:	4529                	li	a0,10
    2848:	0141                	addi	sp,sp,16
    284a:	b761                	j	0x27d2

Disassembly of section .text.usb_read_short:

0000284c <.text.usb_read_short>:
    284c:	1101                	addi	sp,sp,-32
    284e:	cc22                	sw	s0,24(sp)
    2850:	c84a                	sw	s2,16(sp)
    2852:	c64e                	sw	s3,12(sp)
    2854:	ce06                	sw	ra,28(sp)
    2856:	ca26                	sw	s1,20(sp)
    2858:	4411                	li	s0,4
    285a:	4501                	li	a0,0
    285c:	4925                	li	s2,9
    285e:	49bd                	li	s3,15
    2860:	0512                	slli	a0,a0,0x4
    2862:	01051493          	slli	s1,a0,0x10
    2866:	3f99                	jal	0x27bc
    2868:	fd050793          	addi	a5,a0,-48
    286c:	0ff7f793          	zext.b	a5,a5
    2870:	80c1                	srli	s1,s1,0x10
    2872:	00f97c63          	bgeu	s2,a5,0x288a
    2876:	fc950793          	addi	a5,a0,-55
    287a:	0ff7f793          	zext.b	a5,a5
    287e:	00f9f663          	bgeu	s3,a5,0x288a
    2882:	fa950513          	addi	a0,a0,-87
    2886:	0ff57793          	zext.b	a5,a0
    288a:	00978533          	add	a0,a5,s1
    288e:	0542                	slli	a0,a0,0x10
    2890:	147d                	addi	s0,s0,-1
    2892:	8141                	srli	a0,a0,0x10
    2894:	f471                	bnez	s0,0x2860
    2896:	40f2                	lw	ra,28(sp)
    2898:	4462                	lw	s0,24(sp)
    289a:	44d2                	lw	s1,20(sp)
    289c:	4942                	lw	s2,16(sp)
    289e:	49b2                	lw	s3,12(sp)
    28a0:	6105                	addi	sp,sp,32
    28a2:	8082                	ret

Disassembly of section .text.usb_read_int:

000028a4 <.text.usb_read_int>:
    28a4:	1141                	addi	sp,sp,-16
    28a6:	c606                	sw	ra,12(sp)
    28a8:	c422                	sw	s0,8(sp)
    28aa:	374d                	jal	0x284c
    28ac:	01051413          	slli	s0,a0,0x10
    28b0:	3f71                	jal	0x284c
    28b2:	40b2                	lw	ra,12(sp)
    28b4:	9522                	add	a0,a0,s0
    28b6:	4422                	lw	s0,8(sp)
    28b8:	0141                	addi	sp,sp,16
    28ba:	8082                	ret

Disassembly of section .text.gpio_write:

000028bc <.text.gpio_write>:
    28bc:	67c1                	lui	a5,0x10
    28be:	c3c8                	sw	a0,4(a5)
    28c0:	8082                	ret

Disassembly of section .text.gpio_read:

000028c2 <.text.gpio_read>:
    28c2:	67c1                	lui	a5,0x10
    28c4:	4388                	lw	a0,0(a5)
    28c6:	0542                	slli	a0,a0,0x10
    28c8:	8141                	srli	a0,a0,0x10
    28ca:	8082                	ret

Disassembly of section .text.instr_mem_write:

000028cc <.text.instr_mem_write>:
    28cc:	050a                	slli	a0,a0,0x2
    28ce:	6791                	lui	a5,0x4
    28d0:	97aa                	add	a5,a5,a0
    28d2:	c38c                	sw	a1,0(a5)
    28d4:	8082                	ret

Disassembly of section .text.uart_main:

000028d6 <.text.uart_main>:
    28d6:	1101                	addi	sp,sp,-32
    28d8:	cc22                	sw	s0,24(sp)
    28da:	ca26                	sw	s1,20(sp)
    28dc:	c84a                	sw	s2,16(sp)
    28de:	c64e                	sw	s3,12(sp)
    28e0:	ce06                	sw	ra,28(sp)
    28e2:	6799                	lui	a5,0x6
    28e4:	0c700713          	li	a4,199
    28e8:	c398                	sw	a4,0(a5)
    28ea:	64c1                	lui	s1,0x10
    28ec:	0007a223          	sw	zero,4(a5) # 0x6004
    28f0:	4401                	li	s0,0
    28f2:	4901                	li	s2,0
    28f4:	69c1                	lui	s3,0x10
    28f6:	0491                	addi	s1,s1,4 # 0x10004
    28f8:	0009a503          	lw	a0,0(s3) # 0x10000
    28fc:	02090363          	beqz	s2,0x2922
    2900:	0ff57513          	zext.b	a0,a0
    2904:	3a5d                	jal	0x22ba
    2906:	f0047413          	andi	s0,s0,-256
    290a:	3a59                	jal	0x22a0
    290c:	9522                	add	a0,a0,s0
    290e:	01051413          	slli	s0,a0,0x10
    2912:	8441                	srai	s0,s0,0x10
    2914:	01041793          	slli	a5,s0,0x10
    2918:	83c1                	srli	a5,a5,0x10
    291a:	00194913          	xori	s2,s2,1
    291e:	c09c                	sw	a5,0(s1)
    2920:	bfe1                	j	0x28f8
    2922:	0542                	slli	a0,a0,0x10
    2924:	8141                	srli	a0,a0,0x10
    2926:	8121                	srli	a0,a0,0x8
    2928:	3a49                	jal	0x22ba
    292a:	3a9d                	jal	0x22a0
    292c:	0ff47413          	zext.b	s0,s0
    2930:	0522                	slli	a0,a0,0x8
    2932:	942a                	add	s0,s0,a0
    2934:	0442                	slli	s0,s0,0x10
    2936:	bff1                	j	0x2912

Disassembly of section .text.uart_interrupt:

00002938 <.text.uart_interrupt>:
    2938:	8082                	ret

Disassembly of section .text.i2c_interrupt:

0000293a <.text.i2c_interrupt>:
    293a:	8082                	ret

Disassembly of section .text.qspi_main:

0000293c <.text.qspi_main>:
    293c:	7179                	addi	sp,sp,-48
    293e:	4515                	li	a0,5
    2940:	d606                	sw	ra,44(sp)
    2942:	d422                	sw	s0,40(sp)
    2944:	d226                	sw	s1,36(sp)
    2946:	d04a                	sw	s2,32(sp)
    2948:	ce4e                	sw	s3,28(sp)
    294a:	cc52                	sw	s4,24(sp)
    294c:	3d2d                	jal	0x2786
    294e:	6741                	lui	a4,0x10
    2950:	66c1                	lui	a3,0x10
    2952:	fff70513          	addi	a0,a4,-1 # 0xffff
    2956:	0691                	addi	a3,a3,4 # 0x10004
    2958:	4585                	li	a1,1
    295a:	431c                	lw	a5,0(a4)
    295c:	00a7f633          	and	a2,a5,a0
    2960:	07c2                	slli	a5,a5,0x10
    2962:	c290                	sw	a2,0(a3)
    2964:	83c1                	srli	a5,a5,0x10
    2966:	dbf5                	beqz	a5,0x295a
    2968:	431c                	lw	a5,0(a4)
    296a:	07c2                	slli	a5,a5,0x10
    296c:	83c1                	srli	a5,a5,0x10
    296e:	ffed                	bnez	a5,0x2968
    2970:	feb615e3          	bne	a2,a1,0x295a
    2974:	4a05                	li	s4,1
    2976:	3dd9                	jal	0x284c
    2978:	842a                	mv	s0,a0
    297a:	02000613          	li	a2,32
    297e:	4581                	li	a1,0
    2980:	0f800513          	li	a0,248
    2984:	2675                	jal	0x2d30
    2986:	3c45                	jal	0x2436
    2988:	02000613          	li	a2,32
    298c:	85a2                	mv	a1,s0
    298e:	0f800513          	li	a0,248
    2992:	318d                	jal	0x25f4
    2994:	0068                	addi	a0,sp,12
    2996:	c652                	sw	s4,12(sp)
    2998:	3ce5                	jal	0x2490
    299a:	00c15503          	lhu	a0,12(sp)
    299e:	02040913          	addi	s2,s0,32
    29a2:	0942                	slli	s2,s2,0x10
    29a4:	3591                	jal	0x27e8
    29a6:	02000613          	li	a2,32
    29aa:	85a2                	mv	a1,s0
    29ac:	0f800513          	li	a0,248
    29b0:	3b95                	jal	0x2724
    29b2:	0f800993          	li	s3,248
    29b6:	01095913          	srli	s2,s2,0x10
    29ba:	8522                	mv	a0,s0
    29bc:	3535                	jal	0x27e8
    29be:	03a00513          	li	a0,58
    29c2:	3d01                	jal	0x27d2
    29c4:	02000513          	li	a0,32
    29c8:	3529                	jal	0x27d2
    29ca:	0009a503          	lw	a0,0(s3)
    29ce:	0411                	addi	s0,s0,4
    29d0:	0442                	slli	s0,s0,0x10
    29d2:	8041                	srli	s0,s0,0x10
    29d4:	35b9                	jal	0x2822
    29d6:	0991                	addi	s3,s3,4
    29d8:	3595                	jal	0x283c
    29da:	ff2410e3          	bne	s0,s2,0x29ba
    29de:	bf61                	j	0x2976

Disassembly of section .text.qspi_interrupt:

000029e0 <.text.qspi_interrupt>:
    29e0:	8082                	ret

Disassembly of section .text.timer_main:

000029e2 <.text.timer_main>:
    29e2:	1101                	addi	sp,sp,-32
    29e4:	653d                	lui	a0,0xf
    29e6:	cc22                	sw	s0,24(sp)
    29e8:	c84a                	sw	s2,16(sp)
    29ea:	4605                	li	a2,1
    29ec:	4581                	li	a1,0
    29ee:	a5f50513          	addi	a0,a0,-1441 # 0xea5f
    29f2:	6441                	lui	s0,0x10
    29f4:	6931                	lui	s2,0xc
    29f6:	ca26                	sw	s1,20(sp)
    29f8:	c64e                	sw	s3,12(sp)
    29fa:	ce06                	sw	ra,28(sp)
    29fc:	3ba1                	jal	0x2754
    29fe:	fff40493          	addi	s1,s0,-1 # 0xffff
    2a02:	0911                	addi	s2,s2,4 # 0xc004
    2a04:	02002703          	lw	a4,32(zero) # 0x20
    2a08:	401c                	lw	a5,0(s0)
    2a0a:	8fe5                	and	a5,a5,s1
    2a0c:	fee78ee3          	beq	a5,a4,0x2a08
    2a10:	401c                	lw	a5,0(s0)
    2a12:	8fe5                	and	a5,a5,s1
    2a14:	00f92023          	sw	a5,0(s2)
    2a18:	332d                	jal	0x2742
    2a1a:	401c                	lw	a5,0(s0)
    2a1c:	8fe5                	and	a5,a5,s1
    2a1e:	02f02023          	sw	a5,32(zero) # 0x20
    2a22:	b7cd                	j	0x2a04

Disassembly of section .text.timer_interrupt:

00002a24 <.text.timer_interrupt>:
    2a24:	13005683          	lhu	a3,304(zero) # 0x130
    2a28:	6741                	lui	a4,0x10
    2a2a:	c354                	sw	a3,4(a4)
    2a2c:	13002703          	lw	a4,304(zero) # 0x130
    2a30:	0705                	addi	a4,a4,1 # 0x10001
    2a32:	12e02823          	sw	a4,304(zero) # 0x130
    2a36:	8082                	ret

Disassembly of section .text.gpio_main:

00002a38 <.text.gpio_main>:
    2a38:	66c1                	lui	a3,0x10
    2a3a:	67c1                	lui	a5,0x10
    2a3c:	fff68613          	addi	a2,a3,-1 # 0xffff
    2a40:	0791                	addi	a5,a5,4 # 0x10004
    2a42:	4298                	lw	a4,0(a3)
    2a44:	8f71                	and	a4,a4,a2
    2a46:	c398                	sw	a4,0(a5)
    2a48:	bfed                	j	0x2a42

Disassembly of section .text.gpio_interrupt:

00002a4a <.text.gpio_interrupt>:
    2a4a:	8082                	ret

Disassembly of section .text.usb_interrupt:

00002a4c <.text.usb_interrupt>:
    2a4c:	8082                	ret

Disassembly of section .text.debug_main:

00002a4e <.text.debug_main>:
    2a4e:	711d                	addi	sp,sp,-96
    2a50:	c6ce                	sw	s3,76(sp)
    2a52:	4515                	li	a0,5
    2a54:	69c1                	lui	s3,0x10
    2a56:	c8ca                	sw	s2,80(sp)
    2a58:	c2d6                	sw	s5,68(sp)
    2a5a:	c0da                	sw	s6,64(sp)
    2a5c:	ce86                	sw	ra,92(sp)
    2a5e:	cca2                	sw	s0,88(sp)
    2a60:	caa6                	sw	s1,84(sp)
    2a62:	c4d2                	sw	s4,72(sp)
    2a64:	de5e                	sw	s7,60(sp)
    2a66:	dc62                	sw	s8,56(sp)
    2a68:	da66                	sw	s9,52(sp)
    2a6a:	6ac1                	lui	s5,0x10
    2a6c:	3b29                	jal	0x2786
    2a6e:	0991                	addi	s3,s3,4 # 0x10004
    2a70:	4b09                	li	s6,2
    2a72:	000aa783          	lw	a5,0(s5) # 0x10000
    2a76:	07c2                	slli	a5,a5,0x10
    2a78:	83c1                	srli	a5,a5,0x10
    2a7a:	10f01f23          	sh	a5,286(zero) # 0x11e
    2a7e:	11e05783          	lhu	a5,286(zero) # 0x11e
    2a82:	07c2                	slli	a5,a5,0x10
    2a84:	83c1                	srli	a5,a5,0x10
    2a86:	00f9a023          	sw	a5,0(s3)
    2a8a:	11e05783          	lhu	a5,286(zero) # 0x11e
    2a8e:	d3f5                	beqz	a5,0x2a72
    2a90:	000aa783          	lw	a5,0(s5)
    2a94:	07c2                	slli	a5,a5,0x10
    2a96:	83c1                	srli	a5,a5,0x10
    2a98:	ffe5                	bnez	a5,0x2a90
    2a9a:	11e05703          	lhu	a4,286(zero) # 0x11e
    2a9e:	01071793          	slli	a5,a4,0x10
    2aa2:	83c1                	srli	a5,a5,0x10
    2aa4:	05670663          	beq	a4,s6,0x2af0
    2aa8:	4711                	li	a4,4
    2aaa:	08e78363          	beq	a5,a4,0x2b30
    2aae:	4705                	li	a4,1
    2ab0:	fce791e3          	bne	a5,a4,0x2a72
    2ab4:	4481                	li	s1,0
    2ab6:	4b85                	li	s7,1
    2ab8:	20000c13          	li	s8,512
    2abc:	0800                	addi	s0,sp,16
    2abe:	8a22                	mv	s4,s0
    2ac0:	33d5                	jal	0x28a4
    2ac2:	c008                	sw	a0,0(s0)
    2ac4:	181c                	addi	a5,sp,48
    2ac6:	0411                	addi	s0,s0,4
    2ac8:	fef41ce3          	bne	s0,a5,0x2ac0
    2acc:	32ad                	jal	0x2436
    2ace:	02000613          	li	a2,32
    2ad2:	00549593          	slli	a1,s1,0x5
    2ad6:	8552                	mv	a0,s4
    2ad8:	3e31                	jal	0x25f4
    2ada:	c65e                	sw	s7,12(sp)
    2adc:	47b2                	lw	a5,12(sp)
    2ade:	8b85                	andi	a5,a5,1
    2ae0:	e7a9                	bnez	a5,0x2b2a
    2ae2:	0485                	addi	s1,s1,1
    2ae4:	0099a023          	sw	s1,0(s3)
    2ae8:	fd849ae3          	bne	s1,s8,0x2abc
    2aec:	00000067          	jr	zero # 0x0
    2af0:	4401                	li	s0,0
    2af2:	00241513          	slli	a0,s0,0x2
    2af6:	0542                	slli	a0,a0,0x10
    2af8:	8141                	srli	a0,a0,0x10
    2afa:	31fd                	jal	0x27e8
    2afc:	03a00513          	li	a0,58
    2b00:	39c9                	jal	0x27d2
    2b02:	00340493          	addi	s1,s0,3
    2b06:	fff40a13          	addi	s4,s0,-1
    2b0a:	02000513          	li	a0,32
    2b0e:	31d1                	jal	0x27d2
    2b10:	00249793          	slli	a5,s1,0x2
    2b14:	4388                	lw	a0,0(a5)
    2b16:	14fd                	addi	s1,s1,-1
    2b18:	3329                	jal	0x2822
    2b1a:	ff4498e3          	bne	s1,s4,0x2b0a
    2b1e:	3b39                	jal	0x283c
    2b20:	0411                	addi	s0,s0,4
    2b22:	80040793          	addi	a5,s0,-2048
    2b26:	f7f1                	bnez	a5,0x2af2
    2b28:	b7a9                	j	0x2a72
    2b2a:	0068                	addi	a0,sp,12
    2b2c:	3295                	jal	0x2490
    2b2e:	b77d                	j	0x2adc
    2b30:	4481                	li	s1,0
    2b32:	4a01                	li	s4,0
    2b34:	6c85                	lui	s9,0x1
    2b36:	01049413          	slli	s0,s1,0x10
    2b3a:	8041                	srli	s0,s0,0x10
    2b3c:	02040b93          	addi	s7,s0,32
    2b40:	02000613          	li	a2,32
    2b44:	85a6                	mv	a1,s1
    2b46:	0808                	addi	a0,sp,16
    2b48:	0bc2                	slli	s7,s7,0x10
    2b4a:	3ee9                	jal	0x2724
    2b4c:	01010c13          	addi	s8,sp,16
    2b50:	010bdb93          	srli	s7,s7,0x10
    2b54:	8522                	mv	a0,s0
    2b56:	3949                	jal	0x27e8
    2b58:	03a00513          	li	a0,58
    2b5c:	399d                	jal	0x27d2
    2b5e:	02000513          	li	a0,32
    2b62:	3985                	jal	0x27d2
    2b64:	000c2503          	lw	a0,0(s8)
    2b68:	0411                	addi	s0,s0,4
    2b6a:	0442                	slli	s0,s0,0x10
    2b6c:	8041                	srli	s0,s0,0x10
    2b6e:	3955                	jal	0x2822
    2b70:	0c11                	addi	s8,s8,4
    2b72:	31e9                	jal	0x283c
    2b74:	ff7410e3          	bne	s0,s7,0x2b54
    2b78:	0a21                	addi	s4,s4,8
    2b7a:	02048493          	addi	s1,s1,32
    2b7e:	fb9a1ce3          	bne	s4,s9,0x2b36
    2b82:	bdc5                	j	0x2a72

Disassembly of section .text.debug_interrupt:

00002b84 <.text.debug_interrupt>:
    2b84:	8082                	ret

Disassembly of section .text.delay_ms:

00002b86 <.text.delay_ms>:
    2b86:	fff50593          	addi	a1,a0,-1
    2b8a:	653d                	lui	a0,0xf
    2b8c:	1141                	addi	sp,sp,-16
    2b8e:	4605                	li	a2,1
    2b90:	a5f50513          	addi	a0,a0,-1441 # 0xea5f
    2b94:	c606                	sw	ra,12(sp)
    2b96:	3e7d                	jal	0x2754
    2b98:	4705                	li	a4,1
    2b9a:	10e02c23          	sw	a4,280(zero) # 0x118
    2b9e:	11802703          	lw	a4,280(zero) # 0x118
    2ba2:	ff75                	bnez	a4,0x2b9e
    2ba4:	40b2                	lw	ra,12(sp)
    2ba6:	67b1                	lui	a5,0xc
    2ba8:	0007a623          	sw	zero,12(a5) # 0xc00c
    2bac:	0141                	addi	sp,sp,16
    2bae:	8082                	ret

Disassembly of section .text.i2c_main:

00002bb0 <.text.i2c_main>:
    2bb0:	1101                	addi	sp,sp,-32
    2bb2:	ca26                	sw	s1,20(sp)
    2bb4:	c84a                	sw	s2,16(sp)
    2bb6:	c64e                	sw	s3,12(sp)
    2bb8:	c452                	sw	s4,8(sp)
    2bba:	ce06                	sw	ra,28(sp)
    2bbc:	cc22                	sw	s0,24(sp)
    2bbe:	67a1                	lui	a5,0x8
    2bc0:	07b00713          	li	a4,123
    2bc4:	6941                	lui	s2,0x10
    2bc6:	69c1                	lui	s3,0x10
    2bc8:	c3d8                	sw	a4,4(a5)
    2bca:	0911                	addi	s2,s2,4 # 0x10004
    2bcc:	fff98a13          	addi	s4,s3,-1 # 0xffff
    2bd0:	02402783          	lw	a5,36(zero) # 0x24
    2bd4:	c395                	beqz	a5,0x2bf8
    2bd6:	0009a503          	lw	a0,0(s3)
    2bda:	4589                	li	a1,2
    2bdc:	00aa7533          	and	a0,s4,a0
    2be0:	efaff0ef          	jal	0x22da
    2be4:	1f400513          	li	a0,500
    2be8:	3f79                	jal	0x2b86
    2bea:	02402783          	lw	a5,36(zero) # 0x24
    2bee:	0017b793          	seqz	a5,a5
    2bf2:	02f02223          	sw	a5,36(zero) # 0x24
    2bf6:	bfe9                	j	0x2bd0
    2bf8:	4505                	li	a0,1
    2bfa:	efcff0ef          	jal	0x22f6
    2bfe:	01051413          	slli	s0,a0,0x10
    2c02:	4505                	li	a0,1
    2c04:	ef2ff0ef          	jal	0x22f6
    2c08:	8041                	srli	s0,s0,0x10
    2c0a:	0522                	slli	a0,a0,0x8
    2c0c:	942a                	add	s0,s0,a0
    2c0e:	0442                	slli	s0,s0,0x10
    2c10:	8041                	srli	s0,s0,0x10
    2c12:	00892023          	sw	s0,0(s2)
    2c16:	b7f9                	j	0x2be4

Disassembly of section .text.usb_main:

00002c18 <.text.usb_main>:
    2c18:	7139                	addi	sp,sp,-64
    2c1a:	dc22                	sw	s0,56(sp)
    2c1c:	da26                	sw	s1,52(sp)
    2c1e:	d84a                	sw	s2,48(sp)
    2c20:	d64e                	sw	s3,44(sp)
    2c22:	d452                	sw	s4,40(sp)
    2c24:	d256                	sw	s5,36(sp)
    2c26:	d05a                	sw	s6,32(sp)
    2c28:	ce5e                	sw	s7,28(sp)
    2c2a:	de06                	sw	ra,60(sp)
    2c2c:	cc62                	sw	s8,24(sp)
    2c2e:	ca66                	sw	s9,20(sp)
    2c30:	c86a                	sw	s10,16(sp)
    2c32:	c66e                	sw	s11,12(sp)
    2c34:	69c1                	lui	s3,0x10
    2c36:	4a91                	li	s5,4
    2c38:	4b15                	li	s6,5
    2c3a:	4b85                	li	s7,1
    2c3c:	0009a783          	lw	a5,0(s3) # 0x10000
    2c40:	0ff7f793          	zext.b	a5,a5
    2c44:	12f02623          	sw	a5,300(zero) # 0x12c
    2c48:	12002223          	sw	zero,292(zero) # 0x124
    2c4c:	12c02783          	lw	a5,300(zero) # 0x12c
    2c50:	e7b5                	bnez	a5,0x2cbc
    2c52:	12402703          	lw	a4,292(zero) # 0x124
    2c56:	12002783          	lw	a5,288(zero) # 0x120
    2c5a:	00f70763          	beq	a4,a5,0x2c68
    2c5e:	12402503          	lw	a0,292(zero) # 0x124
    2c62:	0ff57513          	zext.b	a0,a0
    2c66:	3605                	jal	0x2786
    2c68:	12402783          	lw	a5,292(zero) # 0x124
    2c6c:	12f02023          	sw	a5,288(zero) # 0x120
    2c70:	12402783          	lw	a5,292(zero) # 0x124
    2c74:	09578263          	beq	a5,s5,0x2cf8
    2c78:	04faed63          	bltu	s5,a5,0x2cd2
    2c7c:	07778663          	beq	a5,s7,0x2ce8
    2c80:	4709                	li	a4,2
    2c82:	fae79de3          	bne	a5,a4,0x2c3c
    2c86:	4501                	li	a0,0
    2c88:	36a9                	jal	0x27d2
    2c8a:	4c81                	li	s9,0
    2c8c:	14000d13          	li	s10,320
    2c90:	0b400d93          	li	s11,180
    2c94:	4c01                	li	s8,0
    2c96:	12802503          	lw	a0,296(zero) # 0x128
    2c9a:	9566                	add	a0,a0,s9
    2c9c:	9562                	add	a0,a0,s8
    2c9e:	0ff57513          	zext.b	a0,a0
    2ca2:	0c05                	addi	s8,s8,1
    2ca4:	363d                	jal	0x27d2
    2ca6:	ffac18e3          	bne	s8,s10,0x2c96
    2caa:	0c85                	addi	s9,s9,1 # 0x1001
    2cac:	ffbc94e3          	bne	s9,s11,0x2c94
    2cb0:	12802783          	lw	a5,296(zero) # 0x128
    2cb4:	0785                	addi	a5,a5,1 # 0x8001
    2cb6:	12f02423          	sw	a5,296(zero) # 0x128
    2cba:	b749                	j	0x2c3c
    2cbc:	12c02783          	lw	a5,300(zero) # 0x12c
    2cc0:	8385                	srli	a5,a5,0x1
    2cc2:	12f02623          	sw	a5,300(zero) # 0x12c
    2cc6:	12402783          	lw	a5,292(zero) # 0x124
    2cca:	0785                	addi	a5,a5,1
    2ccc:	12f02223          	sw	a5,292(zero) # 0x124
    2cd0:	bfb5                	j	0x2c4c
    2cd2:	f76795e3          	bne	a5,s6,0x2c3c
    2cd6:	34dd                	jal	0x27bc
    2cd8:	12a02423          	sw	a0,296(zero) # 0x128
    2cdc:	12802503          	lw	a0,296(zero) # 0x128
    2ce0:	0ff57513          	zext.b	a0,a0
    2ce4:	34fd                	jal	0x27d2
    2ce6:	bf99                	j	0x2c3c
    2ce8:	12802503          	lw	a0,296(zero) # 0x128
    2cec:	0ff57513          	zext.b	a0,a0
    2cf0:	347d                	jal	0x279e
    2cf2:	12a02423          	sw	a0,296(zero) # 0x128
    2cf6:	b799                	j	0x2c3c
    2cf8:	0009a783          	lw	a5,0(s3)
    2cfc:	3e800513          	li	a0,1000
    2d00:	07c2                	slli	a5,a5,0x10
    2d02:	83c1                	srli	a5,a5,0x10
    2d04:	83a1                	srli	a5,a5,0x8
    2d06:	12f02423          	sw	a5,296(zero) # 0x128
    2d0a:	3db5                	jal	0x2b86
    2d0c:	bf05                	j	0x2c3c

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
