
a.out:     file format elf32-littleriscv


Disassembly of section .text:

00002000 <main>:
    2000:	4501                	li	a0,0
	...

00002200 <interrupt>:
    2200:	30200073          	mret

Disassembly of section .text.uart_conf:

00002204 <uart_conf>:
    2204:	03200793          	li	a5,50
    2208:	02a7d7b3          	divu	a5,a5,a0
    220c:	6719                	lui	a4,0x6
    220e:	c31c                	sw	a5,0(a4)
    2210:	6799                	lui	a5,0x6
    2212:	c3cc                	sw	a1,4(a5)
    2214:	8082                	ret

Disassembly of section .text.uart_read:

00002216 <uart_read>:
    2216:	6799                	lui	a5,0x6
    2218:	07c1                	addi	a5,a5,16 # 6010 <__GNU_EH_FRAME_HDR+0x35b4>
    221a:	4709                	li	a4,2
    221c:	4394                	lw	a3,0(a5)
    221e:	fee69fe3          	bne	a3,a4,221c <uart_read+0x6>
    2222:	6719                	lui	a4,0x6
    2224:	4708                	lw	a0,8(a4)
    2226:	0007a023          	sw	zero,0(a5)
    222a:	0ff57513          	zext.b	a0,a0
    222e:	8082                	ret

Disassembly of section .text.uart_write:

00002230 <uart_write>:
    2230:	6799                	lui	a5,0x6
    2232:	c7c8                	sw	a0,12(a5)
    2234:	6799                	lui	a5,0x6
    2236:	4705                	li	a4,1
    2238:	07c1                	addi	a5,a5,16 # 6010 <__GNU_EH_FRAME_HDR+0x35b4>
    223a:	c398                	sw	a4,0(a5)
    223c:	4715                	li	a4,5
    223e:	4394                	lw	a3,0(a5)
    2240:	fee69fe3          	bne	a3,a4,223e <uart_write+0xe>
    2244:	0007a023          	sw	zero,0(a5)
    2248:	8082                	ret

Disassembly of section .text.i2c_conf:

0000224a <i2c_conf>:
    224a:	67a1                	lui	a5,0x8
    224c:	c3c8                	sw	a0,4(a5)
    224e:	8082                	ret

Disassembly of section .text.i2c_write:

00002250 <i2c_write>:
    2250:	67a1                	lui	a5,0x8
    2252:	c38c                	sw	a1,0(a5)
    2254:	c7c8                	sw	a0,12(a5)
    2256:	67a1                	lui	a5,0x8
    2258:	4705                	li	a4,1
    225a:	07c1                	addi	a5,a5,16 # 8010 <__GNU_EH_FRAME_HDR+0x55b4>
    225c:	c398                	sw	a4,0(a5)
    225e:	470d                	li	a4,3
    2260:	4394                	lw	a3,0(a5)
    2262:	fee69fe3          	bne	a3,a4,2260 <i2c_write+0x10>
    2266:	0007a023          	sw	zero,0(a5)
    226a:	8082                	ret

Disassembly of section .text.i2c_read:

0000226c <i2c_read>:
    226c:	67a1                	lui	a5,0x8
    226e:	c388                	sw	a0,0(a5)
    2270:	4711                	li	a4,4
    2272:	07c1                	addi	a5,a5,16 # 8010 <__GNU_EH_FRAME_HDR+0x55b4>
    2274:	c398                	sw	a4,0(a5)
    2276:	4731                	li	a4,12
    2278:	4394                	lw	a3,0(a5)
    227a:	fee69fe3          	bne	a3,a4,2278 <i2c_read+0xc>
    227e:	0007a023          	sw	zero,0(a5)
    2282:	67a1                	lui	a5,0x8
    2284:	4788                	lw	a0,8(a5)
    2286:	8082                	ret

Disassembly of section .text.qspi_wait:

00002288 <qspi_wait>:
    2288:	67a9                	lui	a5,0xa
    228a:	02878793          	addi	a5,a5,40 # a028 <__GNU_EH_FRAME_HDR+0x75cc>
    228e:	4705                	li	a4,1
    2290:	4394                	lw	a3,0(a5)
    2292:	fee69fe3          	bne	a3,a4,2290 <qspi_wait+0x8>
    2296:	67a9                	lui	a5,0xa
    2298:	02878793          	addi	a5,a5,40 # a028 <__GNU_EH_FRAME_HDR+0x75cc>
    229c:	4705                	li	a4,1
    229e:	4394                	lw	a3,0(a5)
    22a0:	fee69fe3          	bne	a3,a4,229e <qspi_wait+0x16>
    22a4:	8082                	ret

Disassembly of section .text.qspi_read_array:

000022a6 <qspi_read_array>:
    22a6:	058d                	addi	a1,a1,3
    22a8:	6729                	lui	a4,0xa
    22aa:	99f1                	andi	a1,a1,-4
    22ac:	4781                	li	a5,0
    22ae:	0721                	addi	a4,a4,8 # a008 <__GNU_EH_FRAME_HDR+0x75ac>
    22b0:	00b79363          	bne	a5,a1,22b6 <qspi_read_array+0x10>
    22b4:	8082                	ret
    22b6:	00e786b3          	add	a3,a5,a4
    22ba:	4290                	lw	a2,0(a3)
    22bc:	00f506b3          	add	a3,a0,a5
    22c0:	0791                	addi	a5,a5,4
    22c2:	c290                	sw	a2,0(a3)
    22c4:	b7f5                	j	22b0 <qspi_read_array+0xa>

Disassembly of section .text.qspi_write_array:

000022c6 <qspi_write_array>:
    22c6:	058d                	addi	a1,a1,3
    22c8:	6729                	lui	a4,0xa
    22ca:	99f1                	andi	a1,a1,-4
    22cc:	4781                	li	a5,0
    22ce:	0721                	addi	a4,a4,8 # a008 <__GNU_EH_FRAME_HDR+0x75ac>
    22d0:	00b79363          	bne	a5,a1,22d6 <qspi_write_array+0x10>
    22d4:	8082                	ret
    22d6:	00f50633          	add	a2,a0,a5
    22da:	4210                	lw	a2,0(a2)
    22dc:	00e786b3          	add	a3,a5,a4
    22e0:	0791                	addi	a5,a5,4
    22e2:	c290                	sw	a2,0(a3)
    22e4:	b7f5                	j	22d0 <qspi_write_array+0xa>

Disassembly of section .text.s25fl128s_wren:

000022e6 <s25fl128s_wren>:
    22e6:	800007b7          	lui	a5,0x80000
    22ea:	0799                	addi	a5,a5,6 # 80000006 <__GNU_EH_FRAME_HDR+0x7fffd5aa>
    22ec:	6729                	lui	a4,0xa
    22ee:	c31c                	sw	a5,0(a4)
    22f0:	bf61                	j	2288 <qspi_wait>

Disassembly of section .text.s25fl128s_wrdi:

000022f2 <s25fl128s_wrdi>:
    22f2:	800007b7          	lui	a5,0x80000
    22f6:	0791                	addi	a5,a5,4 # 80000004 <__GNU_EH_FRAME_HDR+0x7fffd5a8>
    22f8:	6729                	lui	a4,0xa
    22fa:	c31c                	sw	a5,0(a4)
    22fc:	b771                	j	2288 <qspi_wait>

Disassembly of section .text.s25fl128s_clsr:

000022fe <s25fl128s_clsr>:
    22fe:	800007b7          	lui	a5,0x80000
    2302:	03078793          	addi	a5,a5,48 # 80000030 <__GNU_EH_FRAME_HDR+0x7fffd5d4>
    2306:	6729                	lui	a4,0xa
    2308:	c31c                	sw	a5,0(a4)
    230a:	bfbd                	j	2288 <qspi_wait>

Disassembly of section .text.s25fl128s_reset:

0000230c <s25fl128s_reset>:
    230c:	800007b7          	lui	a5,0x80000
    2310:	0f078793          	addi	a5,a5,240 # 800000f0 <__GNU_EH_FRAME_HDR+0x7fffd694>
    2314:	6729                	lui	a4,0xa
    2316:	c31c                	sw	a5,0(a4)
    2318:	bf85                	j	2288 <qspi_wait>

Disassembly of section .text.s25fl128s_rdid:

0000231a <s25fl128s_rdid>:
    231a:	fff58793          	addi	a5,a1,-1
    231e:	80000737          	lui	a4,0x80000
    2322:	1101                	addi	sp,sp,-32
    2324:	19f70713          	addi	a4,a4,415 # 8000019f <__GNU_EH_FRAME_HDR+0x7fffd743>
    2328:	07c2                	slli	a5,a5,0x10
    232a:	ce06                	sw	ra,28(sp)
    232c:	c62a                	sw	a0,12(sp)
    232e:	c42e                	sw	a1,8(sp)
    2330:	97ba                	add	a5,a5,a4
    2332:	6729                	lui	a4,0xa
    2334:	c31c                	sw	a5,0(a4)
    2336:	3f89                	jal	2288 <qspi_wait>
    2338:	45a2                	lw	a1,8(sp)
    233a:	4532                	lw	a0,12(sp)
    233c:	40f2                	lw	ra,28(sp)
    233e:	6105                	addi	sp,sp,32
    2340:	b79d                	j	22a6 <qspi_read_array>

Disassembly of section .text.s25fl128s_rdsr1:

00002342 <s25fl128s_rdsr1>:
    2342:	1141                	addi	sp,sp,-16
    2344:	800007b7          	lui	a5,0x80000
    2348:	c606                	sw	ra,12(sp)
    234a:	10578793          	addi	a5,a5,261 # 80000105 <__GNU_EH_FRAME_HDR+0x7fffd6a9>
    234e:	6729                	lui	a4,0xa
    2350:	c31c                	sw	a5,0(a4)
    2352:	3f1d                	jal	2288 <qspi_wait>
    2354:	67a9                	lui	a5,0xa
    2356:	4788                	lw	a0,8(a5)
    2358:	40b2                	lw	ra,12(sp)
    235a:	0ff57513          	zext.b	a0,a0
    235e:	0141                	addi	sp,sp,16
    2360:	8082                	ret

Disassembly of section .text.s25fl128s_rdsr2:

00002362 <s25fl128s_rdsr2>:
    2362:	1141                	addi	sp,sp,-16
    2364:	800007b7          	lui	a5,0x80000
    2368:	c606                	sw	ra,12(sp)
    236a:	10778793          	addi	a5,a5,263 # 80000107 <__GNU_EH_FRAME_HDR+0x7fffd6ab>
    236e:	6729                	lui	a4,0xa
    2370:	c31c                	sw	a5,0(a4)
    2372:	3f19                	jal	2288 <qspi_wait>
    2374:	67a9                	lui	a5,0xa
    2376:	4788                	lw	a0,8(a5)
    2378:	40b2                	lw	ra,12(sp)
    237a:	0ff57513          	zext.b	a0,a0
    237e:	0141                	addi	sp,sp,16
    2380:	8082                	ret

Disassembly of section .text.s25fl128s_rdcr:

00002382 <s25fl128s_rdcr>:
    2382:	1141                	addi	sp,sp,-16
    2384:	800007b7          	lui	a5,0x80000
    2388:	c606                	sw	ra,12(sp)
    238a:	13578793          	addi	a5,a5,309 # 80000135 <__GNU_EH_FRAME_HDR+0x7fffd6d9>
    238e:	6729                	lui	a4,0xa
    2390:	c31c                	sw	a5,0(a4)
    2392:	3ddd                	jal	2288 <qspi_wait>
    2394:	67a9                	lui	a5,0xa
    2396:	4788                	lw	a0,8(a5)
    2398:	40b2                	lw	ra,12(sp)
    239a:	0ff57513          	zext.b	a0,a0
    239e:	0141                	addi	sp,sp,16
    23a0:	8082                	ret

Disassembly of section .text.s25fl128s_read_id:

000023a2 <s25fl128s_read_id>:
    23a2:	1141                	addi	sp,sp,-16
    23a4:	c606                	sw	ra,12(sp)
    23a6:	67a9                	lui	a5,0xa
    23a8:	c3c8                	sw	a0,4(a5)
    23aa:	800127b7          	lui	a5,0x80012
    23ae:	99078793          	addi	a5,a5,-1648 # 80011990 <__GNU_EH_FRAME_HDR+0x8000ef34>
    23b2:	6729                	lui	a4,0xa
    23b4:	c31c                	sw	a5,0(a4)
    23b6:	3dc9                	jal	2288 <qspi_wait>
    23b8:	67a9                	lui	a5,0xa
    23ba:	4788                	lw	a0,8(a5)
    23bc:	40b2                	lw	ra,12(sp)
    23be:	0542                	slli	a0,a0,0x10
    23c0:	8141                	srli	a0,a0,0x10
    23c2:	0141                	addi	sp,sp,16
    23c4:	8082                	ret

Disassembly of section .text.s25fl128s_res:

000023c6 <s25fl128s_res>:
    23c6:	1141                	addi	sp,sp,-16
    23c8:	800027b7          	lui	a5,0x80002
    23cc:	c606                	sw	ra,12(sp)
    23ce:	9ab78793          	addi	a5,a5,-1621 # 800019ab <__GNU_EH_FRAME_HDR+0x7fffef4f>
    23d2:	6729                	lui	a4,0xa
    23d4:	c31c                	sw	a5,0(a4)
    23d6:	3d4d                	jal	2288 <qspi_wait>
    23d8:	67a9                	lui	a5,0xa
    23da:	4788                	lw	a0,8(a5)
    23dc:	40b2                	lw	ra,12(sp)
    23de:	0ff57513          	zext.b	a0,a0
    23e2:	0141                	addi	sp,sp,16
    23e4:	8082                	ret

Disassembly of section .text.s25fl128s_wrr:

000023e6 <s25fl128s_wrr>:
    23e6:	67a9                	lui	a5,0xa
    23e8:	c788                	sw	a0,8(a5)
    23ea:	800107b7          	lui	a5,0x80010
    23ee:	50178793          	addi	a5,a5,1281 # 80010501 <__GNU_EH_FRAME_HDR+0x8000daa5>
    23f2:	6729                	lui	a4,0xa
    23f4:	c31c                	sw	a5,0(a4)
    23f6:	bd49                	j	2288 <qspi_wait>

Disassembly of section .text.s25fl128s_read:

000023f8 <s25fl128s_read>:
    23f8:	fff60793          	addi	a5,a2,-1
    23fc:	80002737          	lui	a4,0x80002
    2400:	1141                	addi	sp,sp,-16
    2402:	90370713          	addi	a4,a4,-1789 # 80001903 <__GNU_EH_FRAME_HDR+0x7fffeea7>
    2406:	07c2                	slli	a5,a5,0x10
    2408:	c422                	sw	s0,8(sp)
    240a:	c226                	sw	s1,4(sp)
    240c:	c606                	sw	ra,12(sp)
    240e:	97ba                	add	a5,a5,a4
    2410:	6729                	lui	a4,0xa
    2412:	c348                	sw	a0,4(a4)
    2414:	6729                	lui	a4,0xa
    2416:	c31c                	sw	a5,0(a4)
    2418:	84ae                	mv	s1,a1
    241a:	8432                	mv	s0,a2
    241c:	35b5                	jal	2288 <qspi_wait>
    241e:	85a2                	mv	a1,s0
    2420:	4422                	lw	s0,8(sp)
    2422:	40b2                	lw	ra,12(sp)
    2424:	8526                	mv	a0,s1
    2426:	4492                	lw	s1,4(sp)
    2428:	0141                	addi	sp,sp,16
    242a:	bdb5                	j	22a6 <qspi_read_array>

Disassembly of section .text.s25fl128s_pp:

0000242c <s25fl128s_pp>:
    242c:	1141                	addi	sp,sp,-16
    242e:	c422                	sw	s0,8(sp)
    2430:	800027b7          	lui	a5,0x80002
    2434:	fff60413          	addi	s0,a2,-1
    2438:	d0278793          	addi	a5,a5,-766 # 80001d02 <__GNU_EH_FRAME_HDR+0x7ffff2a6>
    243c:	0442                	slli	s0,s0,0x10
    243e:	c606                	sw	ra,12(sp)
    2440:	872a                	mv	a4,a0
    2442:	943e                	add	s0,s0,a5
    2444:	67a9                	lui	a5,0xa
    2446:	852e                	mv	a0,a1
    2448:	c3d8                	sw	a4,4(a5)
    244a:	85b2                	mv	a1,a2
    244c:	3dad                	jal	22c6 <qspi_write_array>
    244e:	67a9                	lui	a5,0xa
    2450:	c380                	sw	s0,0(a5)
    2452:	4422                	lw	s0,8(sp)
    2454:	40b2                	lw	ra,12(sp)
    2456:	0141                	addi	sp,sp,16
    2458:	bd05                	j	2288 <qspi_wait>

Disassembly of section .text.s25fl128s_se:

0000245a <s25fl128s_se>:
    245a:	67a9                	lui	a5,0xa
    245c:	c788                	sw	a0,8(a5)
    245e:	800207b7          	lui	a5,0x80020
    2462:	5d878793          	addi	a5,a5,1496 # 800205d8 <__GNU_EH_FRAME_HDR+0x8001db7c>
    2466:	6729                	lui	a4,0xa
    2468:	c31c                	sw	a5,0(a4)
    246a:	bd39                	j	2288 <qspi_wait>

Disassembly of section .text.s25fl128s_dor:

0000246c <s25fl128s_dor>:
    246c:	fff60793          	addi	a5,a2,-1
    2470:	80002737          	lui	a4,0x80002
    2474:	1141                	addi	sp,sp,-16
    2476:	23b70713          	addi	a4,a4,571 # 8000223b <__GNU_EH_FRAME_HDR+0x7ffff7df>
    247a:	07c2                	slli	a5,a5,0x10
    247c:	c422                	sw	s0,8(sp)
    247e:	c226                	sw	s1,4(sp)
    2480:	c606                	sw	ra,12(sp)
    2482:	97ba                	add	a5,a5,a4
    2484:	6729                	lui	a4,0xa
    2486:	c348                	sw	a0,4(a4)
    2488:	6729                	lui	a4,0xa
    248a:	c31c                	sw	a5,0(a4)
    248c:	84ae                	mv	s1,a1
    248e:	8432                	mv	s0,a2
    2490:	3be5                	jal	2288 <qspi_wait>
    2492:	85a2                	mv	a1,s0
    2494:	4422                	lw	s0,8(sp)
    2496:	40b2                	lw	ra,12(sp)
    2498:	8526                	mv	a0,s1
    249a:	4492                	lw	s1,4(sp)
    249c:	0141                	addi	sp,sp,16
    249e:	b521                	j	22a6 <qspi_read_array>

Disassembly of section .text.s25fl128s_qor:

000024a0 <s25fl128s_qor>:
    24a0:	fff60793          	addi	a5,a2,-1
    24a4:	80002737          	lui	a4,0x80002
    24a8:	1141                	addi	sp,sp,-16
    24aa:	36b70713          	addi	a4,a4,875 # 8000236b <__GNU_EH_FRAME_HDR+0x7ffff90f>
    24ae:	07c2                	slli	a5,a5,0x10
    24b0:	c422                	sw	s0,8(sp)
    24b2:	c226                	sw	s1,4(sp)
    24b4:	c606                	sw	ra,12(sp)
    24b6:	97ba                	add	a5,a5,a4
    24b8:	6729                	lui	a4,0xa
    24ba:	c348                	sw	a0,4(a4)
    24bc:	6729                	lui	a4,0xa
    24be:	c31c                	sw	a5,0(a4)
    24c0:	84ae                	mv	s1,a1
    24c2:	8432                	mv	s0,a2
    24c4:	33d1                	jal	2288 <qspi_wait>
    24c6:	85a2                	mv	a1,s0
    24c8:	4422                	lw	s0,8(sp)
    24ca:	40b2                	lw	ra,12(sp)
    24cc:	8526                	mv	a0,s1
    24ce:	4492                	lw	s1,4(sp)
    24d0:	0141                	addi	sp,sp,16
    24d2:	bbd1                	j	22a6 <qspi_read_array>

Disassembly of section .text.s25fl128s_qpp:

000024d4 <s25fl128s_qpp>:
    24d4:	fff60793          	addi	a5,a2,-1
    24d8:	80002737          	lui	a4,0x80002
    24dc:	1141                	addi	sp,sp,-16
    24de:	f3270713          	addi	a4,a4,-206 # 80001f32 <__GNU_EH_FRAME_HDR+0x7ffff4d6>
    24e2:	07c2                	slli	a5,a5,0x10
    24e4:	c606                	sw	ra,12(sp)
    24e6:	86aa                	mv	a3,a0
    24e8:	97ba                	add	a5,a5,a4
    24ea:	6729                	lui	a4,0xa
    24ec:	c354                	sw	a3,4(a4)
    24ee:	6729                	lui	a4,0xa
    24f0:	852e                	mv	a0,a1
    24f2:	c31c                	sw	a5,0(a4)
    24f4:	85b2                	mv	a1,a2
    24f6:	3bc1                	jal	22c6 <qspi_write_array>
    24f8:	40b2                	lw	ra,12(sp)
    24fa:	0141                	addi	sp,sp,16
    24fc:	b371                	j	2288 <qspi_wait>

Disassembly of section .text.qspi_custom_write:

000024fe <qspi_custom_write>:
    24fe:	88aa                	mv	a7,a0
    2500:	852e                	mv	a0,a1
    2502:	85be                	mv	a1,a5
    2504:	800007b7          	lui	a5,0x80000
    2508:	40078793          	addi	a5,a5,1024 # 80000400 <__GNU_EH_FRAME_HDR+0x7fffd9a4>
    250c:	0866                	slli	a6,a6,0x19
    250e:	983e                	add	a6,a6,a5
    2510:	072e                	slli	a4,a4,0xb
    2512:	fff58793          	addi	a5,a1,-1
    2516:	1141                	addi	sp,sp,-16
    2518:	983a                	add	a6,a6,a4
    251a:	07c2                	slli	a5,a5,0x10
    251c:	c422                	sw	s0,8(sp)
    251e:	c606                	sw	ra,12(sp)
    2520:	983e                	add	a6,a6,a5
    2522:	06a2                	slli	a3,a3,0x8
    2524:	67a9                	lui	a5,0xa
    2526:	0ff67613          	zext.b	a2,a2
    252a:	9836                	add	a6,a6,a3
    252c:	0117a223          	sw	a7,4(a5) # a004 <__GNU_EH_FRAME_HDR+0x75a8>
    2530:	00c80433          	add	s0,a6,a2
    2534:	3b49                	jal	22c6 <qspi_write_array>
    2536:	67a9                	lui	a5,0xa
    2538:	c380                	sw	s0,0(a5)
    253a:	4422                	lw	s0,8(sp)
    253c:	40b2                	lw	ra,12(sp)
    253e:	0141                	addi	sp,sp,16
    2540:	b3a1                	j	2288 <qspi_wait>

Disassembly of section .text.qspi_custom_read:

00002542 <qspi_custom_read>:
    2542:	1141                	addi	sp,sp,-16
    2544:	c422                	sw	s0,8(sp)
    2546:	0866                	slli	a6,a6,0x19
    2548:	843e                	mv	s0,a5
    254a:	800007b7          	lui	a5,0x80000
    254e:	983e                	add	a6,a6,a5
    2550:	072e                	slli	a4,a4,0xb
    2552:	fff40793          	addi	a5,s0,-1
    2556:	983a                	add	a6,a6,a4
    2558:	07c2                	slli	a5,a5,0x10
    255a:	983e                	add	a6,a6,a5
    255c:	06a2                	slli	a3,a3,0x8
    255e:	c226                	sw	s1,4(sp)
    2560:	c606                	sw	ra,12(sp)
    2562:	0ff67613          	zext.b	a2,a2
    2566:	9836                	add	a6,a6,a3
    2568:	67a9                	lui	a5,0xa
    256a:	c3c8                	sw	a0,4(a5)
    256c:	9832                	add	a6,a6,a2
    256e:	67a9                	lui	a5,0xa
    2570:	0107a023          	sw	a6,0(a5) # a000 <__GNU_EH_FRAME_HDR+0x75a4>
    2574:	84ae                	mv	s1,a1
    2576:	3b09                	jal	2288 <qspi_wait>
    2578:	85a2                	mv	a1,s0
    257a:	4422                	lw	s0,8(sp)
    257c:	40b2                	lw	ra,12(sp)
    257e:	8526                	mv	a0,s1
    2580:	4492                	lw	s1,4(sp)
    2582:	0141                	addi	sp,sp,16
    2584:	b30d                	j	22a6 <qspi_read_array>

Disassembly of section .text.timer_read_counter:

00002586 <timer_read_counter>:
    2586:	67b1                	lui	a5,0xc
    2588:	4bc8                	lw	a0,20(a5)
    258a:	8082                	ret

Disassembly of section .text.timer_read_event:

0000258c <timer_read_event>:
    258c:	67b1                	lui	a5,0xc
    258e:	4f88                	lw	a0,24(a5)
    2590:	8082                	ret

Disassembly of section .text.timer_clear_counter:

00002592 <timer_clear_counter>:
    2592:	67b1                	lui	a5,0xc
    2594:	4705                	li	a4,1
    2596:	c798                	sw	a4,8(a5)
    2598:	8082                	ret

Disassembly of section .text.timer_clear_event:

0000259a <timer_clear_event>:
    259a:	67b1                	lui	a5,0xc
    259c:	4705                	li	a4,1
    259e:	cfd8                	sw	a4,28(a5)
    25a0:	8082                	ret

Disassembly of section .text.timer_enable:

000025a2 <timer_enable>:
    25a2:	67b1                	lui	a5,0xc
    25a4:	4705                	li	a4,1
    25a6:	c7d8                	sw	a4,12(a5)
    25a8:	8082                	ret

Disassembly of section .text.timer_disable:

000025aa <timer_disable>:
    25aa:	67b1                	lui	a5,0xc
    25ac:	0007a623          	sw	zero,12(a5) # c00c <__GNU_EH_FRAME_HDR+0x95b0>
    25b0:	8082                	ret

Disassembly of section .text.timer_conf:

000025b2 <timer_conf>:
    25b2:	67b1                	lui	a5,0xc
    25b4:	c388                	sw	a0,0(a5)
    25b6:	c3cc                	sw	a1,4(a5)
    25b8:	67b1                	lui	a5,0xc
    25ba:	cb90                	sw	a2,16(a5)
    25bc:	08000513          	li	a0,128
    25c0:	30046073          	csrsi	mstatus,8
    25c4:	30452073          	csrs	mie,a0
    25c8:	8082                	ret

Disassembly of section .text.gpio_write:

000025ca <gpio_write>:
    25ca:	67c1                	lui	a5,0x10
    25cc:	c3c8                	sw	a0,4(a5)
    25ce:	8082                	ret

Disassembly of section .text.gpio_read:

000025d0 <gpio_read>:
    25d0:	67c1                	lui	a5,0x10
    25d2:	4388                	lw	a0,0(a5)
    25d4:	0542                	slli	a0,a0,0x10
    25d6:	8141                	srli	a0,a0,0x10
    25d8:	8082                	ret

Disassembly of section .text.instr_mem_write:

000025da <instr_mem_write>:
    25da:	050a                	slli	a0,a0,0x2
    25dc:	6791                	lui	a5,0x4
    25de:	97aa                	add	a5,a5,a0
    25e0:	c38c                	sw	a1,0(a5)
    25e2:	8082                	ret
