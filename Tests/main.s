
a.out:     file format elf32-littleriscv


Disassembly of section .text:

00002000 <main>:
    2000:	6789                	lui	a5,0x2
    2002:	86978793          	addi	a5,a5,-1943 # 1869 <_GLOBAL_OFFSET_TABLE_+0x1785>
    2006:	6719                	lui	a4,0x6
    2008:	c31c                	sw	a5,0(a4)
    200a:	6799                	lui	a5,0x6
    200c:	0007a223          	sw	zero,4(a5) # 6004 <__GNU_EH_FRAME_HDR+0x3614>
    2010:	05802683          	lw	a3,88(zero) # 58 <text>
    2014:	6741                	lui	a4,0x10
    2016:	0711                	addi	a4,a4,4 # 10004 <__GNU_EH_FRAME_HDR+0xd614>
    2018:	463d                	li	a2,15
    201a:	4781                	li	a5,0
    201c:	00f685b3          	add	a1,a3,a5
    2020:	0005c583          	lbu	a1,0(a1)
    2024:	0785                	addi	a5,a5,1
    2026:	c30c                	sw	a1,0(a4)
    2028:	fec79ae3          	bne	a5,a2,201c <main+0x1c>
    202c:	b7fd                	j	201a <main+0x1a>
	...

00002200 <interrupt>:
    2200:	30200073          	mret

Disassembly of section .text.uart_conf:

00002204 <uart_conf>:
    2204:	039387b7          	lui	a5,0x3938
    2208:	70078793          	addi	a5,a5,1792 # 3938700 <__GNU_EH_FRAME_HDR+0x3935d10>
    220c:	02a7d7b3          	divu	a5,a5,a0
    2210:	6719                	lui	a4,0x6
    2212:	17fd                	addi	a5,a5,-1
    2214:	c31c                	sw	a5,0(a4)
    2216:	6799                	lui	a5,0x6
    2218:	c3cc                	sw	a1,4(a5)
    221a:	8082                	ret

Disassembly of section .text.uart_read:

0000221c <uart_read>:
    221c:	6799                	lui	a5,0x6
    221e:	07c1                	addi	a5,a5,16 # 6010 <__GNU_EH_FRAME_HDR+0x3620>
    2220:	4709                	li	a4,2
    2222:	4394                	lw	a3,0(a5)
    2224:	fee69fe3          	bne	a3,a4,2222 <uart_read+0x6>
    2228:	6719                	lui	a4,0x6
    222a:	4708                	lw	a0,8(a4)
    222c:	0007a023          	sw	zero,0(a5)
    2230:	0ff57513          	zext.b	a0,a0
    2234:	8082                	ret

Disassembly of section .text.uart_write:

00002236 <uart_write>:
    2236:	6799                	lui	a5,0x6
    2238:	c7c8                	sw	a0,12(a5)
    223a:	6799                	lui	a5,0x6
    223c:	4705                	li	a4,1
    223e:	07c1                	addi	a5,a5,16 # 6010 <__GNU_EH_FRAME_HDR+0x3620>
    2240:	c398                	sw	a4,0(a5)
    2242:	4715                	li	a4,5
    2244:	4394                	lw	a3,0(a5)
    2246:	fee69fe3          	bne	a3,a4,2244 <uart_write+0xe>
    224a:	0007a023          	sw	zero,0(a5)
    224e:	8082                	ret

Disassembly of section .text.i2c_conf:

00002250 <i2c_conf>:
    2250:	67a1                	lui	a5,0x8
    2252:	c3c8                	sw	a0,4(a5)
    2254:	8082                	ret

Disassembly of section .text.i2c_write:

00002256 <i2c_write>:
    2256:	67a1                	lui	a5,0x8
    2258:	c38c                	sw	a1,0(a5)
    225a:	c7c8                	sw	a0,12(a5)
    225c:	67a1                	lui	a5,0x8
    225e:	4705                	li	a4,1
    2260:	07c1                	addi	a5,a5,16 # 8010 <__GNU_EH_FRAME_HDR+0x5620>
    2262:	c398                	sw	a4,0(a5)
    2264:	470d                	li	a4,3
    2266:	4394                	lw	a3,0(a5)
    2268:	fee69fe3          	bne	a3,a4,2266 <i2c_write+0x10>
    226c:	0007a023          	sw	zero,0(a5)
    2270:	8082                	ret

Disassembly of section .text.i2c_read:

00002272 <i2c_read>:
    2272:	67a1                	lui	a5,0x8
    2274:	c388                	sw	a0,0(a5)
    2276:	4711                	li	a4,4
    2278:	07c1                	addi	a5,a5,16 # 8010 <__GNU_EH_FRAME_HDR+0x5620>
    227a:	c398                	sw	a4,0(a5)
    227c:	4731                	li	a4,12
    227e:	4394                	lw	a3,0(a5)
    2280:	fee69fe3          	bne	a3,a4,227e <i2c_read+0xc>
    2284:	0007a023          	sw	zero,0(a5)
    2288:	67a1                	lui	a5,0x8
    228a:	4788                	lw	a0,8(a5)
    228c:	8082                	ret

Disassembly of section .text.qspi_wait:

0000228e <qspi_wait>:
    228e:	67a9                	lui	a5,0xa
    2290:	02878793          	addi	a5,a5,40 # a028 <__GNU_EH_FRAME_HDR+0x7638>
    2294:	4705                	li	a4,1
    2296:	4394                	lw	a3,0(a5)
    2298:	fee69fe3          	bne	a3,a4,2296 <qspi_wait+0x8>
    229c:	67a9                	lui	a5,0xa
    229e:	02878793          	addi	a5,a5,40 # a028 <__GNU_EH_FRAME_HDR+0x7638>
    22a2:	4705                	li	a4,1
    22a4:	4394                	lw	a3,0(a5)
    22a6:	fee69fe3          	bne	a3,a4,22a4 <qspi_wait+0x16>
    22aa:	8082                	ret

Disassembly of section .text.qspi_read_array:

000022ac <qspi_read_array>:
    22ac:	058d                	addi	a1,a1,3
    22ae:	6729                	lui	a4,0xa
    22b0:	99f1                	andi	a1,a1,-4
    22b2:	4781                	li	a5,0
    22b4:	0721                	addi	a4,a4,8 # a008 <__GNU_EH_FRAME_HDR+0x7618>
    22b6:	00b79363          	bne	a5,a1,22bc <qspi_read_array+0x10>
    22ba:	8082                	ret
    22bc:	00e786b3          	add	a3,a5,a4
    22c0:	4290                	lw	a2,0(a3)
    22c2:	00f506b3          	add	a3,a0,a5
    22c6:	0791                	addi	a5,a5,4
    22c8:	c290                	sw	a2,0(a3)
    22ca:	b7f5                	j	22b6 <qspi_read_array+0xa>

Disassembly of section .text.qspi_write_array:

000022cc <qspi_write_array>:
    22cc:	058d                	addi	a1,a1,3
    22ce:	6729                	lui	a4,0xa
    22d0:	99f1                	andi	a1,a1,-4
    22d2:	4781                	li	a5,0
    22d4:	0721                	addi	a4,a4,8 # a008 <__GNU_EH_FRAME_HDR+0x7618>
    22d6:	00b79363          	bne	a5,a1,22dc <qspi_write_array+0x10>
    22da:	8082                	ret
    22dc:	00f50633          	add	a2,a0,a5
    22e0:	4210                	lw	a2,0(a2)
    22e2:	00e786b3          	add	a3,a5,a4
    22e6:	0791                	addi	a5,a5,4
    22e8:	c290                	sw	a2,0(a3)
    22ea:	b7f5                	j	22d6 <qspi_write_array+0xa>

Disassembly of section .text.s25fl128s_wren:

000022ec <s25fl128s_wren>:
    22ec:	800007b7          	lui	a5,0x80000
    22f0:	0799                	addi	a5,a5,6 # 80000006 <__GNU_EH_FRAME_HDR+0x7fffd616>
    22f2:	6729                	lui	a4,0xa
    22f4:	c31c                	sw	a5,0(a4)
    22f6:	bf61                	j	228e <qspi_wait>

Disassembly of section .text.s25fl128s_wrdi:

000022f8 <s25fl128s_wrdi>:
    22f8:	800007b7          	lui	a5,0x80000
    22fc:	0791                	addi	a5,a5,4 # 80000004 <__GNU_EH_FRAME_HDR+0x7fffd614>
    22fe:	6729                	lui	a4,0xa
    2300:	c31c                	sw	a5,0(a4)
    2302:	b771                	j	228e <qspi_wait>

Disassembly of section .text.s25fl128s_clsr:

00002304 <s25fl128s_clsr>:
    2304:	800007b7          	lui	a5,0x80000
    2308:	03078793          	addi	a5,a5,48 # 80000030 <__GNU_EH_FRAME_HDR+0x7fffd640>
    230c:	6729                	lui	a4,0xa
    230e:	c31c                	sw	a5,0(a4)
    2310:	bfbd                	j	228e <qspi_wait>

Disassembly of section .text.s25fl128s_reset:

00002312 <s25fl128s_reset>:
    2312:	800007b7          	lui	a5,0x80000
    2316:	0f078793          	addi	a5,a5,240 # 800000f0 <__GNU_EH_FRAME_HDR+0x7fffd700>
    231a:	6729                	lui	a4,0xa
    231c:	c31c                	sw	a5,0(a4)
    231e:	bf85                	j	228e <qspi_wait>

Disassembly of section .text.s25fl128s_rdid:

00002320 <s25fl128s_rdid>:
    2320:	fff58793          	addi	a5,a1,-1
    2324:	80000737          	lui	a4,0x80000
    2328:	1101                	addi	sp,sp,-32
    232a:	19f70713          	addi	a4,a4,415 # 8000019f <__GNU_EH_FRAME_HDR+0x7fffd7af>
    232e:	07c2                	slli	a5,a5,0x10
    2330:	ce06                	sw	ra,28(sp)
    2332:	c62a                	sw	a0,12(sp)
    2334:	c42e                	sw	a1,8(sp)
    2336:	97ba                	add	a5,a5,a4
    2338:	6729                	lui	a4,0xa
    233a:	c31c                	sw	a5,0(a4)
    233c:	3f89                	jal	228e <qspi_wait>
    233e:	45a2                	lw	a1,8(sp)
    2340:	4532                	lw	a0,12(sp)
    2342:	40f2                	lw	ra,28(sp)
    2344:	6105                	addi	sp,sp,32
    2346:	b79d                	j	22ac <qspi_read_array>

Disassembly of section .text.s25fl128s_rdsr1:

00002348 <s25fl128s_rdsr1>:
    2348:	1141                	addi	sp,sp,-16
    234a:	800007b7          	lui	a5,0x80000
    234e:	c606                	sw	ra,12(sp)
    2350:	10578793          	addi	a5,a5,261 # 80000105 <__GNU_EH_FRAME_HDR+0x7fffd715>
    2354:	6729                	lui	a4,0xa
    2356:	c31c                	sw	a5,0(a4)
    2358:	3f1d                	jal	228e <qspi_wait>
    235a:	67a9                	lui	a5,0xa
    235c:	4788                	lw	a0,8(a5)
    235e:	40b2                	lw	ra,12(sp)
    2360:	0ff57513          	zext.b	a0,a0
    2364:	0141                	addi	sp,sp,16
    2366:	8082                	ret

Disassembly of section .text.s25fl128s_rdsr2:

00002368 <s25fl128s_rdsr2>:
    2368:	1141                	addi	sp,sp,-16
    236a:	800007b7          	lui	a5,0x80000
    236e:	c606                	sw	ra,12(sp)
    2370:	10778793          	addi	a5,a5,263 # 80000107 <__GNU_EH_FRAME_HDR+0x7fffd717>
    2374:	6729                	lui	a4,0xa
    2376:	c31c                	sw	a5,0(a4)
    2378:	3f19                	jal	228e <qspi_wait>
    237a:	67a9                	lui	a5,0xa
    237c:	4788                	lw	a0,8(a5)
    237e:	40b2                	lw	ra,12(sp)
    2380:	0ff57513          	zext.b	a0,a0
    2384:	0141                	addi	sp,sp,16
    2386:	8082                	ret

Disassembly of section .text.s25fl128s_rdcr:

00002388 <s25fl128s_rdcr>:
    2388:	1141                	addi	sp,sp,-16
    238a:	800007b7          	lui	a5,0x80000
    238e:	c606                	sw	ra,12(sp)
    2390:	13578793          	addi	a5,a5,309 # 80000135 <__GNU_EH_FRAME_HDR+0x7fffd745>
    2394:	6729                	lui	a4,0xa
    2396:	c31c                	sw	a5,0(a4)
    2398:	3ddd                	jal	228e <qspi_wait>
    239a:	67a9                	lui	a5,0xa
    239c:	4788                	lw	a0,8(a5)
    239e:	40b2                	lw	ra,12(sp)
    23a0:	0ff57513          	zext.b	a0,a0
    23a4:	0141                	addi	sp,sp,16
    23a6:	8082                	ret

Disassembly of section .text.s25fl128s_read_id:

000023a8 <s25fl128s_read_id>:
    23a8:	1141                	addi	sp,sp,-16
    23aa:	c606                	sw	ra,12(sp)
    23ac:	67a9                	lui	a5,0xa
    23ae:	c3c8                	sw	a0,4(a5)
    23b0:	800127b7          	lui	a5,0x80012
    23b4:	99078793          	addi	a5,a5,-1648 # 80011990 <__GNU_EH_FRAME_HDR+0x8000efa0>
    23b8:	6729                	lui	a4,0xa
    23ba:	c31c                	sw	a5,0(a4)
    23bc:	3dc9                	jal	228e <qspi_wait>
    23be:	67a9                	lui	a5,0xa
    23c0:	4788                	lw	a0,8(a5)
    23c2:	40b2                	lw	ra,12(sp)
    23c4:	0542                	slli	a0,a0,0x10
    23c6:	8141                	srli	a0,a0,0x10
    23c8:	0141                	addi	sp,sp,16
    23ca:	8082                	ret

Disassembly of section .text.s25fl128s_res:

000023cc <s25fl128s_res>:
    23cc:	1141                	addi	sp,sp,-16
    23ce:	800027b7          	lui	a5,0x80002
    23d2:	c606                	sw	ra,12(sp)
    23d4:	9ab78793          	addi	a5,a5,-1621 # 800019ab <__GNU_EH_FRAME_HDR+0x7fffefbb>
    23d8:	6729                	lui	a4,0xa
    23da:	c31c                	sw	a5,0(a4)
    23dc:	3d4d                	jal	228e <qspi_wait>
    23de:	67a9                	lui	a5,0xa
    23e0:	4788                	lw	a0,8(a5)
    23e2:	40b2                	lw	ra,12(sp)
    23e4:	0ff57513          	zext.b	a0,a0
    23e8:	0141                	addi	sp,sp,16
    23ea:	8082                	ret

Disassembly of section .text.s25fl128s_wrr:

000023ec <s25fl128s_wrr>:
    23ec:	67a9                	lui	a5,0xa
    23ee:	c788                	sw	a0,8(a5)
    23f0:	800107b7          	lui	a5,0x80010
    23f4:	50178793          	addi	a5,a5,1281 # 80010501 <__GNU_EH_FRAME_HDR+0x8000db11>
    23f8:	6729                	lui	a4,0xa
    23fa:	c31c                	sw	a5,0(a4)
    23fc:	bd49                	j	228e <qspi_wait>

Disassembly of section .text.s25fl128s_read:

000023fe <s25fl128s_read>:
    23fe:	fff60793          	addi	a5,a2,-1
    2402:	80002737          	lui	a4,0x80002
    2406:	1141                	addi	sp,sp,-16
    2408:	90370713          	addi	a4,a4,-1789 # 80001903 <__GNU_EH_FRAME_HDR+0x7fffef13>
    240c:	07c2                	slli	a5,a5,0x10
    240e:	c422                	sw	s0,8(sp)
    2410:	c226                	sw	s1,4(sp)
    2412:	c606                	sw	ra,12(sp)
    2414:	97ba                	add	a5,a5,a4
    2416:	6729                	lui	a4,0xa
    2418:	c348                	sw	a0,4(a4)
    241a:	6729                	lui	a4,0xa
    241c:	c31c                	sw	a5,0(a4)
    241e:	84ae                	mv	s1,a1
    2420:	8432                	mv	s0,a2
    2422:	35b5                	jal	228e <qspi_wait>
    2424:	85a2                	mv	a1,s0
    2426:	4422                	lw	s0,8(sp)
    2428:	40b2                	lw	ra,12(sp)
    242a:	8526                	mv	a0,s1
    242c:	4492                	lw	s1,4(sp)
    242e:	0141                	addi	sp,sp,16
    2430:	bdb5                	j	22ac <qspi_read_array>

Disassembly of section .text.s25fl128s_pp:

00002432 <s25fl128s_pp>:
    2432:	1141                	addi	sp,sp,-16
    2434:	c422                	sw	s0,8(sp)
    2436:	800027b7          	lui	a5,0x80002
    243a:	fff60413          	addi	s0,a2,-1
    243e:	d0278793          	addi	a5,a5,-766 # 80001d02 <__GNU_EH_FRAME_HDR+0x7ffff312>
    2442:	0442                	slli	s0,s0,0x10
    2444:	c606                	sw	ra,12(sp)
    2446:	872a                	mv	a4,a0
    2448:	943e                	add	s0,s0,a5
    244a:	67a9                	lui	a5,0xa
    244c:	852e                	mv	a0,a1
    244e:	c3d8                	sw	a4,4(a5)
    2450:	85b2                	mv	a1,a2
    2452:	3dad                	jal	22cc <qspi_write_array>
    2454:	67a9                	lui	a5,0xa
    2456:	c380                	sw	s0,0(a5)
    2458:	4422                	lw	s0,8(sp)
    245a:	40b2                	lw	ra,12(sp)
    245c:	0141                	addi	sp,sp,16
    245e:	bd05                	j	228e <qspi_wait>

Disassembly of section .text.s25fl128s_se:

00002460 <s25fl128s_se>:
    2460:	67a9                	lui	a5,0xa
    2462:	c788                	sw	a0,8(a5)
    2464:	800207b7          	lui	a5,0x80020
    2468:	5d878793          	addi	a5,a5,1496 # 800205d8 <__GNU_EH_FRAME_HDR+0x8001dbe8>
    246c:	6729                	lui	a4,0xa
    246e:	c31c                	sw	a5,0(a4)
    2470:	bd39                	j	228e <qspi_wait>

Disassembly of section .text.s25fl128s_dor:

00002472 <s25fl128s_dor>:
    2472:	fff60793          	addi	a5,a2,-1
    2476:	80002737          	lui	a4,0x80002
    247a:	1141                	addi	sp,sp,-16
    247c:	23b70713          	addi	a4,a4,571 # 8000223b <__GNU_EH_FRAME_HDR+0x7ffff84b>
    2480:	07c2                	slli	a5,a5,0x10
    2482:	c422                	sw	s0,8(sp)
    2484:	c226                	sw	s1,4(sp)
    2486:	c606                	sw	ra,12(sp)
    2488:	97ba                	add	a5,a5,a4
    248a:	6729                	lui	a4,0xa
    248c:	c348                	sw	a0,4(a4)
    248e:	6729                	lui	a4,0xa
    2490:	c31c                	sw	a5,0(a4)
    2492:	84ae                	mv	s1,a1
    2494:	8432                	mv	s0,a2
    2496:	3be5                	jal	228e <qspi_wait>
    2498:	85a2                	mv	a1,s0
    249a:	4422                	lw	s0,8(sp)
    249c:	40b2                	lw	ra,12(sp)
    249e:	8526                	mv	a0,s1
    24a0:	4492                	lw	s1,4(sp)
    24a2:	0141                	addi	sp,sp,16
    24a4:	b521                	j	22ac <qspi_read_array>

Disassembly of section .text.s25fl128s_qor:

000024a6 <s25fl128s_qor>:
    24a6:	fff60793          	addi	a5,a2,-1
    24aa:	80002737          	lui	a4,0x80002
    24ae:	1141                	addi	sp,sp,-16
    24b0:	36b70713          	addi	a4,a4,875 # 8000236b <__GNU_EH_FRAME_HDR+0x7ffff97b>
    24b4:	07c2                	slli	a5,a5,0x10
    24b6:	c422                	sw	s0,8(sp)
    24b8:	c226                	sw	s1,4(sp)
    24ba:	c606                	sw	ra,12(sp)
    24bc:	97ba                	add	a5,a5,a4
    24be:	6729                	lui	a4,0xa
    24c0:	c348                	sw	a0,4(a4)
    24c2:	6729                	lui	a4,0xa
    24c4:	c31c                	sw	a5,0(a4)
    24c6:	84ae                	mv	s1,a1
    24c8:	8432                	mv	s0,a2
    24ca:	33d1                	jal	228e <qspi_wait>
    24cc:	85a2                	mv	a1,s0
    24ce:	4422                	lw	s0,8(sp)
    24d0:	40b2                	lw	ra,12(sp)
    24d2:	8526                	mv	a0,s1
    24d4:	4492                	lw	s1,4(sp)
    24d6:	0141                	addi	sp,sp,16
    24d8:	bbd1                	j	22ac <qspi_read_array>

Disassembly of section .text.s25fl128s_qpp:

000024da <s25fl128s_qpp>:
    24da:	fff60793          	addi	a5,a2,-1
    24de:	80002737          	lui	a4,0x80002
    24e2:	1141                	addi	sp,sp,-16
    24e4:	f3270713          	addi	a4,a4,-206 # 80001f32 <__GNU_EH_FRAME_HDR+0x7ffff542>
    24e8:	07c2                	slli	a5,a5,0x10
    24ea:	c606                	sw	ra,12(sp)
    24ec:	86aa                	mv	a3,a0
    24ee:	97ba                	add	a5,a5,a4
    24f0:	6729                	lui	a4,0xa
    24f2:	c354                	sw	a3,4(a4)
    24f4:	6729                	lui	a4,0xa
    24f6:	852e                	mv	a0,a1
    24f8:	c31c                	sw	a5,0(a4)
    24fa:	85b2                	mv	a1,a2
    24fc:	3bc1                	jal	22cc <qspi_write_array>
    24fe:	40b2                	lw	ra,12(sp)
    2500:	0141                	addi	sp,sp,16
    2502:	b371                	j	228e <qspi_wait>

Disassembly of section .text.qspi_custom_write:

00002504 <qspi_custom_write>:
    2504:	88aa                	mv	a7,a0
    2506:	852e                	mv	a0,a1
    2508:	85be                	mv	a1,a5
    250a:	800007b7          	lui	a5,0x80000
    250e:	40078793          	addi	a5,a5,1024 # 80000400 <__GNU_EH_FRAME_HDR+0x7fffda10>
    2512:	0866                	slli	a6,a6,0x19
    2514:	983e                	add	a6,a6,a5
    2516:	072e                	slli	a4,a4,0xb
    2518:	fff58793          	addi	a5,a1,-1
    251c:	1141                	addi	sp,sp,-16
    251e:	983a                	add	a6,a6,a4
    2520:	07c2                	slli	a5,a5,0x10
    2522:	c422                	sw	s0,8(sp)
    2524:	c606                	sw	ra,12(sp)
    2526:	983e                	add	a6,a6,a5
    2528:	06a2                	slli	a3,a3,0x8
    252a:	67a9                	lui	a5,0xa
    252c:	0ff67613          	zext.b	a2,a2
    2530:	9836                	add	a6,a6,a3
    2532:	0117a223          	sw	a7,4(a5) # a004 <__GNU_EH_FRAME_HDR+0x7614>
    2536:	00c80433          	add	s0,a6,a2
    253a:	3b49                	jal	22cc <qspi_write_array>
    253c:	67a9                	lui	a5,0xa
    253e:	c380                	sw	s0,0(a5)
    2540:	4422                	lw	s0,8(sp)
    2542:	40b2                	lw	ra,12(sp)
    2544:	0141                	addi	sp,sp,16
    2546:	b3a1                	j	228e <qspi_wait>

Disassembly of section .text.qspi_custom_read:

00002548 <qspi_custom_read>:
    2548:	1141                	addi	sp,sp,-16
    254a:	c422                	sw	s0,8(sp)
    254c:	0866                	slli	a6,a6,0x19
    254e:	843e                	mv	s0,a5
    2550:	800007b7          	lui	a5,0x80000
    2554:	983e                	add	a6,a6,a5
    2556:	072e                	slli	a4,a4,0xb
    2558:	fff40793          	addi	a5,s0,-1
    255c:	983a                	add	a6,a6,a4
    255e:	07c2                	slli	a5,a5,0x10
    2560:	983e                	add	a6,a6,a5
    2562:	06a2                	slli	a3,a3,0x8
    2564:	c226                	sw	s1,4(sp)
    2566:	c606                	sw	ra,12(sp)
    2568:	0ff67613          	zext.b	a2,a2
    256c:	9836                	add	a6,a6,a3
    256e:	67a9                	lui	a5,0xa
    2570:	c3c8                	sw	a0,4(a5)
    2572:	9832                	add	a6,a6,a2
    2574:	67a9                	lui	a5,0xa
    2576:	0107a023          	sw	a6,0(a5) # a000 <__GNU_EH_FRAME_HDR+0x7610>
    257a:	84ae                	mv	s1,a1
    257c:	3b09                	jal	228e <qspi_wait>
    257e:	85a2                	mv	a1,s0
    2580:	4422                	lw	s0,8(sp)
    2582:	40b2                	lw	ra,12(sp)
    2584:	8526                	mv	a0,s1
    2586:	4492                	lw	s1,4(sp)
    2588:	0141                	addi	sp,sp,16
    258a:	b30d                	j	22ac <qspi_read_array>

Disassembly of section .text.timer_counter:

0000258c <timer_counter>:
    258c:	67b1                	lui	a5,0xc
    258e:	4bc8                	lw	a0,20(a5)
    2590:	8082                	ret

Disassembly of section .text.timer_event:

00002592 <timer_event>:
    2592:	67b1                	lui	a5,0xc
    2594:	4f88                	lw	a0,24(a5)
    2596:	8082                	ret

Disassembly of section .text.timer_clear:

00002598 <timer_clear>:
    2598:	67b1                	lui	a5,0xc
    259a:	4705                	li	a4,1
    259c:	c798                	sw	a4,8(a5)
    259e:	67b1                	lui	a5,0xc
    25a0:	cfd8                	sw	a4,28(a5)
    25a2:	8082                	ret

Disassembly of section .text.timer_enabled:

000025a4 <timer_enabled>:
    25a4:	67b1                	lui	a5,0xc
    25a6:	c7c8                	sw	a0,12(a5)
    25a8:	8082                	ret

Disassembly of section .text.timer_conf:

000025aa <timer_conf>:
    25aa:	67b1                	lui	a5,0xc
    25ac:	c388                	sw	a0,0(a5)
    25ae:	c3cc                	sw	a1,4(a5)
    25b0:	67b1                	lui	a5,0xc
    25b2:	cb90                	sw	a2,16(a5)
    25b4:	08000613          	li	a2,128
    25b8:	30046073          	csrsi	mstatus,8
    25bc:	30462073          	csrs	mie,a2
    25c0:	67b1                	lui	a5,0xc
    25c2:	4705                	li	a4,1
    25c4:	c7d8                	sw	a4,12(a5)
    25c6:	8082                	ret

Disassembly of section .text.gpio_write:

000025c8 <gpio_write>:
    25c8:	67c1                	lui	a5,0x10
    25ca:	c3c8                	sw	a0,4(a5)
    25cc:	8082                	ret

Disassembly of section .text.gpio_read:

000025ce <gpio_read>:
    25ce:	67c1                	lui	a5,0x10
    25d0:	4388                	lw	a0,0(a5)
    25d2:	0542                	slli	a0,a0,0x10
    25d4:	8141                	srli	a0,a0,0x10
    25d6:	8082                	ret

Disassembly of section .text.instr_mem_write:

000025d8 <instr_mem_write>:
    25d8:	050a                	slli	a0,a0,0x2
    25da:	6791                	lui	a5,0x4
    25dc:	97aa                	add	a5,a5,a0
    25de:	c38c                	sw	a1,0(a5)
    25e0:	8082                	ret
