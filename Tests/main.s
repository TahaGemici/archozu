
a.out:     file format elf32-littleriscv


Disassembly of section .text:

00002000 <main>:
    2000:	67a1                	lui	a5,0x8
    2002:	07b00713          	li	a4,123
    2006:	00989537          	lui	a0,0x989
    200a:	c3d8                	sw	a4,4(a5)
    200c:	4605                	li	a2,1
    200e:	4581                	li	a1,0
    2010:	68050513          	addi	a0,a0,1664 # 989680 <__GNU_EH_FRAME_HDR+0x986bdc>
    2014:	6441                	lui	s0,0x10
    2016:	2b75                	jal	25d2 <timer_conf>
    2018:	fff40913          	addi	s2,s0,-1 # ffff <__GNU_EH_FRAME_HDR+0xd55b>
    201c:	4008                	lw	a0,0(s0)
    201e:	4585                	li	a1,1
    2020:	00a97533          	and	a0,s2,a0
    2024:	2ca9                	jal	227e <i2c_write>
    2026:	4505                	li	a0,1
    2028:	2c8d                	jal	229a <i2c_read>
    202a:	0ca02a23          	sw	a0,212(zero) # d4 <tmp>
    202e:	b7fd                	j	201c <main+0x1c>
	...

00002200 <interrupt>:
    2200:	1141                	addi	sp,sp,-16
    2202:	c63a                	sw	a4,12(sp)
    2204:	c43e                	sw	a5,8(sp)
    2206:	04402783          	lw	a5,68(zero) # 44 <abc>
    220a:	0785                	addi	a5,a5,1 # 8001 <__GNU_EH_FRAME_HDR+0x555d>
    220c:	04f02223          	sw	a5,68(zero) # 44 <abc>
    2210:	0d402703          	lw	a4,212(zero) # d4 <tmp>
    2214:	0721                	addi	a4,a4,8
    2216:	00e797b3          	sll	a5,a5,a4
    221a:	07c2                	slli	a5,a5,0x10
    221c:	83c1                	srli	a5,a5,0x10
    221e:	6741                	lui	a4,0x10
    2220:	c35c                	sw	a5,4(a4)
    2222:	4732                	lw	a4,12(sp)
    2224:	47a2                	lw	a5,8(sp)
    2226:	0141                	addi	sp,sp,16
    2228:	30200073          	mret

Disassembly of section .text.uart_conf:

0000222c <uart_conf>:
    222c:	039387b7          	lui	a5,0x3938
    2230:	70078793          	addi	a5,a5,1792 # 3938700 <__GNU_EH_FRAME_HDR+0x3935c5c>
    2234:	02a7d7b3          	divu	a5,a5,a0
    2238:	6719                	lui	a4,0x6
    223a:	17fd                	addi	a5,a5,-1
    223c:	c31c                	sw	a5,0(a4)
    223e:	6799                	lui	a5,0x6
    2240:	c3cc                	sw	a1,4(a5)
    2242:	8082                	ret

Disassembly of section .text.uart_read:

00002244 <uart_read>:
    2244:	6799                	lui	a5,0x6
    2246:	07c1                	addi	a5,a5,16 # 6010 <__GNU_EH_FRAME_HDR+0x356c>
    2248:	4709                	li	a4,2
    224a:	4394                	lw	a3,0(a5)
    224c:	fee69fe3          	bne	a3,a4,224a <uart_read+0x6>
    2250:	6719                	lui	a4,0x6
    2252:	4708                	lw	a0,8(a4)
    2254:	0007a023          	sw	zero,0(a5)
    2258:	0ff57513          	zext.b	a0,a0
    225c:	8082                	ret

Disassembly of section .text.uart_write:

0000225e <uart_write>:
    225e:	6799                	lui	a5,0x6
    2260:	c7c8                	sw	a0,12(a5)
    2262:	6799                	lui	a5,0x6
    2264:	4705                	li	a4,1
    2266:	07c1                	addi	a5,a5,16 # 6010 <__GNU_EH_FRAME_HDR+0x356c>
    2268:	c398                	sw	a4,0(a5)
    226a:	4715                	li	a4,5
    226c:	4394                	lw	a3,0(a5)
    226e:	fee69fe3          	bne	a3,a4,226c <uart_write+0xe>
    2272:	0007a023          	sw	zero,0(a5)
    2276:	8082                	ret

Disassembly of section .text.i2c_conf:

00002278 <i2c_conf>:
    2278:	67a1                	lui	a5,0x8
    227a:	c3c8                	sw	a0,4(a5)
    227c:	8082                	ret

Disassembly of section .text.i2c_write:

0000227e <i2c_write>:
    227e:	67a1                	lui	a5,0x8
    2280:	c38c                	sw	a1,0(a5)
    2282:	c7c8                	sw	a0,12(a5)
    2284:	67a1                	lui	a5,0x8
    2286:	4705                	li	a4,1
    2288:	07c1                	addi	a5,a5,16 # 8010 <__GNU_EH_FRAME_HDR+0x556c>
    228a:	c398                	sw	a4,0(a5)
    228c:	470d                	li	a4,3
    228e:	4394                	lw	a3,0(a5)
    2290:	fee69fe3          	bne	a3,a4,228e <i2c_write+0x10>
    2294:	0007a023          	sw	zero,0(a5)
    2298:	8082                	ret

Disassembly of section .text.i2c_read:

0000229a <i2c_read>:
    229a:	67a1                	lui	a5,0x8
    229c:	c388                	sw	a0,0(a5)
    229e:	4711                	li	a4,4
    22a0:	07c1                	addi	a5,a5,16 # 8010 <__GNU_EH_FRAME_HDR+0x556c>
    22a2:	c398                	sw	a4,0(a5)
    22a4:	4731                	li	a4,12
    22a6:	4394                	lw	a3,0(a5)
    22a8:	fee69fe3          	bne	a3,a4,22a6 <i2c_read+0xc>
    22ac:	0007a023          	sw	zero,0(a5)
    22b0:	67a1                	lui	a5,0x8
    22b2:	4788                	lw	a0,8(a5)
    22b4:	8082                	ret

Disassembly of section .text.qspi_wait:

000022b6 <qspi_wait>:
    22b6:	67a9                	lui	a5,0xa
    22b8:	02878793          	addi	a5,a5,40 # a028 <__GNU_EH_FRAME_HDR+0x7584>
    22bc:	4705                	li	a4,1
    22be:	4394                	lw	a3,0(a5)
    22c0:	fee69fe3          	bne	a3,a4,22be <qspi_wait+0x8>
    22c4:	67a9                	lui	a5,0xa
    22c6:	02878793          	addi	a5,a5,40 # a028 <__GNU_EH_FRAME_HDR+0x7584>
    22ca:	4705                	li	a4,1
    22cc:	4394                	lw	a3,0(a5)
    22ce:	fee69fe3          	bne	a3,a4,22cc <qspi_wait+0x16>
    22d2:	8082                	ret

Disassembly of section .text.qspi_read_array:

000022d4 <qspi_read_array>:
    22d4:	058d                	addi	a1,a1,3
    22d6:	6729                	lui	a4,0xa
    22d8:	99f1                	andi	a1,a1,-4
    22da:	4781                	li	a5,0
    22dc:	0721                	addi	a4,a4,8 # a008 <__GNU_EH_FRAME_HDR+0x7564>
    22de:	00b79363          	bne	a5,a1,22e4 <qspi_read_array+0x10>
    22e2:	8082                	ret
    22e4:	00e786b3          	add	a3,a5,a4
    22e8:	4290                	lw	a2,0(a3)
    22ea:	00f506b3          	add	a3,a0,a5
    22ee:	0791                	addi	a5,a5,4
    22f0:	c290                	sw	a2,0(a3)
    22f2:	b7f5                	j	22de <qspi_read_array+0xa>

Disassembly of section .text.qspi_write_array:

000022f4 <qspi_write_array>:
    22f4:	058d                	addi	a1,a1,3
    22f6:	6729                	lui	a4,0xa
    22f8:	99f1                	andi	a1,a1,-4
    22fa:	4781                	li	a5,0
    22fc:	0721                	addi	a4,a4,8 # a008 <__GNU_EH_FRAME_HDR+0x7564>
    22fe:	00b79363          	bne	a5,a1,2304 <qspi_write_array+0x10>
    2302:	8082                	ret
    2304:	00f50633          	add	a2,a0,a5
    2308:	4210                	lw	a2,0(a2)
    230a:	00e786b3          	add	a3,a5,a4
    230e:	0791                	addi	a5,a5,4
    2310:	c290                	sw	a2,0(a3)
    2312:	b7f5                	j	22fe <qspi_write_array+0xa>

Disassembly of section .text.s25fl128s_wren:

00002314 <s25fl128s_wren>:
    2314:	800007b7          	lui	a5,0x80000
    2318:	0799                	addi	a5,a5,6 # 80000006 <__GNU_EH_FRAME_HDR+0x7fffd562>
    231a:	6729                	lui	a4,0xa
    231c:	c31c                	sw	a5,0(a4)
    231e:	bf61                	j	22b6 <qspi_wait>

Disassembly of section .text.s25fl128s_wrdi:

00002320 <s25fl128s_wrdi>:
    2320:	800007b7          	lui	a5,0x80000
    2324:	0791                	addi	a5,a5,4 # 80000004 <__GNU_EH_FRAME_HDR+0x7fffd560>
    2326:	6729                	lui	a4,0xa
    2328:	c31c                	sw	a5,0(a4)
    232a:	b771                	j	22b6 <qspi_wait>

Disassembly of section .text.s25fl128s_clsr:

0000232c <s25fl128s_clsr>:
    232c:	800007b7          	lui	a5,0x80000
    2330:	03078793          	addi	a5,a5,48 # 80000030 <__GNU_EH_FRAME_HDR+0x7fffd58c>
    2334:	6729                	lui	a4,0xa
    2336:	c31c                	sw	a5,0(a4)
    2338:	bfbd                	j	22b6 <qspi_wait>

Disassembly of section .text.s25fl128s_reset:

0000233a <s25fl128s_reset>:
    233a:	800007b7          	lui	a5,0x80000
    233e:	0f078793          	addi	a5,a5,240 # 800000f0 <__GNU_EH_FRAME_HDR+0x7fffd64c>
    2342:	6729                	lui	a4,0xa
    2344:	c31c                	sw	a5,0(a4)
    2346:	bf85                	j	22b6 <qspi_wait>

Disassembly of section .text.s25fl128s_rdid:

00002348 <s25fl128s_rdid>:
    2348:	fff58793          	addi	a5,a1,-1
    234c:	80000737          	lui	a4,0x80000
    2350:	1101                	addi	sp,sp,-32
    2352:	19f70713          	addi	a4,a4,415 # 8000019f <__GNU_EH_FRAME_HDR+0x7fffd6fb>
    2356:	07c2                	slli	a5,a5,0x10
    2358:	ce06                	sw	ra,28(sp)
    235a:	c62a                	sw	a0,12(sp)
    235c:	c42e                	sw	a1,8(sp)
    235e:	97ba                	add	a5,a5,a4
    2360:	6729                	lui	a4,0xa
    2362:	c31c                	sw	a5,0(a4)
    2364:	3f89                	jal	22b6 <qspi_wait>
    2366:	45a2                	lw	a1,8(sp)
    2368:	4532                	lw	a0,12(sp)
    236a:	40f2                	lw	ra,28(sp)
    236c:	6105                	addi	sp,sp,32
    236e:	b79d                	j	22d4 <qspi_read_array>

Disassembly of section .text.s25fl128s_rdsr1:

00002370 <s25fl128s_rdsr1>:
    2370:	1141                	addi	sp,sp,-16
    2372:	800007b7          	lui	a5,0x80000
    2376:	c606                	sw	ra,12(sp)
    2378:	10578793          	addi	a5,a5,261 # 80000105 <__GNU_EH_FRAME_HDR+0x7fffd661>
    237c:	6729                	lui	a4,0xa
    237e:	c31c                	sw	a5,0(a4)
    2380:	3f1d                	jal	22b6 <qspi_wait>
    2382:	67a9                	lui	a5,0xa
    2384:	4788                	lw	a0,8(a5)
    2386:	40b2                	lw	ra,12(sp)
    2388:	0ff57513          	zext.b	a0,a0
    238c:	0141                	addi	sp,sp,16
    238e:	8082                	ret

Disassembly of section .text.s25fl128s_rdsr2:

00002390 <s25fl128s_rdsr2>:
    2390:	1141                	addi	sp,sp,-16
    2392:	800007b7          	lui	a5,0x80000
    2396:	c606                	sw	ra,12(sp)
    2398:	10778793          	addi	a5,a5,263 # 80000107 <__GNU_EH_FRAME_HDR+0x7fffd663>
    239c:	6729                	lui	a4,0xa
    239e:	c31c                	sw	a5,0(a4)
    23a0:	3f19                	jal	22b6 <qspi_wait>
    23a2:	67a9                	lui	a5,0xa
    23a4:	4788                	lw	a0,8(a5)
    23a6:	40b2                	lw	ra,12(sp)
    23a8:	0ff57513          	zext.b	a0,a0
    23ac:	0141                	addi	sp,sp,16
    23ae:	8082                	ret

Disassembly of section .text.s25fl128s_rdcr:

000023b0 <s25fl128s_rdcr>:
    23b0:	1141                	addi	sp,sp,-16
    23b2:	800007b7          	lui	a5,0x80000
    23b6:	c606                	sw	ra,12(sp)
    23b8:	13578793          	addi	a5,a5,309 # 80000135 <__GNU_EH_FRAME_HDR+0x7fffd691>
    23bc:	6729                	lui	a4,0xa
    23be:	c31c                	sw	a5,0(a4)
    23c0:	3ddd                	jal	22b6 <qspi_wait>
    23c2:	67a9                	lui	a5,0xa
    23c4:	4788                	lw	a0,8(a5)
    23c6:	40b2                	lw	ra,12(sp)
    23c8:	0ff57513          	zext.b	a0,a0
    23cc:	0141                	addi	sp,sp,16
    23ce:	8082                	ret

Disassembly of section .text.s25fl128s_read_id:

000023d0 <s25fl128s_read_id>:
    23d0:	1141                	addi	sp,sp,-16
    23d2:	c606                	sw	ra,12(sp)
    23d4:	67a9                	lui	a5,0xa
    23d6:	c3c8                	sw	a0,4(a5)
    23d8:	800127b7          	lui	a5,0x80012
    23dc:	99078793          	addi	a5,a5,-1648 # 80011990 <__GNU_EH_FRAME_HDR+0x8000eeec>
    23e0:	6729                	lui	a4,0xa
    23e2:	c31c                	sw	a5,0(a4)
    23e4:	3dc9                	jal	22b6 <qspi_wait>
    23e6:	67a9                	lui	a5,0xa
    23e8:	4788                	lw	a0,8(a5)
    23ea:	40b2                	lw	ra,12(sp)
    23ec:	0542                	slli	a0,a0,0x10
    23ee:	8141                	srli	a0,a0,0x10
    23f0:	0141                	addi	sp,sp,16
    23f2:	8082                	ret

Disassembly of section .text.s25fl128s_res:

000023f4 <s25fl128s_res>:
    23f4:	1141                	addi	sp,sp,-16
    23f6:	800027b7          	lui	a5,0x80002
    23fa:	c606                	sw	ra,12(sp)
    23fc:	9ab78793          	addi	a5,a5,-1621 # 800019ab <__GNU_EH_FRAME_HDR+0x7fffef07>
    2400:	6729                	lui	a4,0xa
    2402:	c31c                	sw	a5,0(a4)
    2404:	3d4d                	jal	22b6 <qspi_wait>
    2406:	67a9                	lui	a5,0xa
    2408:	4788                	lw	a0,8(a5)
    240a:	40b2                	lw	ra,12(sp)
    240c:	0ff57513          	zext.b	a0,a0
    2410:	0141                	addi	sp,sp,16
    2412:	8082                	ret

Disassembly of section .text.s25fl128s_wrr:

00002414 <s25fl128s_wrr>:
    2414:	67a9                	lui	a5,0xa
    2416:	c788                	sw	a0,8(a5)
    2418:	800107b7          	lui	a5,0x80010
    241c:	50178793          	addi	a5,a5,1281 # 80010501 <__GNU_EH_FRAME_HDR+0x8000da5d>
    2420:	6729                	lui	a4,0xa
    2422:	c31c                	sw	a5,0(a4)
    2424:	bd49                	j	22b6 <qspi_wait>

Disassembly of section .text.s25fl128s_read:

00002426 <s25fl128s_read>:
    2426:	fff60793          	addi	a5,a2,-1
    242a:	80002737          	lui	a4,0x80002
    242e:	1141                	addi	sp,sp,-16
    2430:	90370713          	addi	a4,a4,-1789 # 80001903 <__GNU_EH_FRAME_HDR+0x7fffee5f>
    2434:	07c2                	slli	a5,a5,0x10
    2436:	c422                	sw	s0,8(sp)
    2438:	c226                	sw	s1,4(sp)
    243a:	c606                	sw	ra,12(sp)
    243c:	97ba                	add	a5,a5,a4
    243e:	6729                	lui	a4,0xa
    2440:	c348                	sw	a0,4(a4)
    2442:	6729                	lui	a4,0xa
    2444:	c31c                	sw	a5,0(a4)
    2446:	84ae                	mv	s1,a1
    2448:	8432                	mv	s0,a2
    244a:	35b5                	jal	22b6 <qspi_wait>
    244c:	85a2                	mv	a1,s0
    244e:	4422                	lw	s0,8(sp)
    2450:	40b2                	lw	ra,12(sp)
    2452:	8526                	mv	a0,s1
    2454:	4492                	lw	s1,4(sp)
    2456:	0141                	addi	sp,sp,16
    2458:	bdb5                	j	22d4 <qspi_read_array>

Disassembly of section .text.s25fl128s_pp:

0000245a <s25fl128s_pp>:
    245a:	1141                	addi	sp,sp,-16
    245c:	c422                	sw	s0,8(sp)
    245e:	800027b7          	lui	a5,0x80002
    2462:	fff60413          	addi	s0,a2,-1
    2466:	d0278793          	addi	a5,a5,-766 # 80001d02 <__GNU_EH_FRAME_HDR+0x7ffff25e>
    246a:	0442                	slli	s0,s0,0x10
    246c:	c606                	sw	ra,12(sp)
    246e:	872a                	mv	a4,a0
    2470:	943e                	add	s0,s0,a5
    2472:	67a9                	lui	a5,0xa
    2474:	852e                	mv	a0,a1
    2476:	c3d8                	sw	a4,4(a5)
    2478:	85b2                	mv	a1,a2
    247a:	3dad                	jal	22f4 <qspi_write_array>
    247c:	67a9                	lui	a5,0xa
    247e:	c380                	sw	s0,0(a5)
    2480:	4422                	lw	s0,8(sp)
    2482:	40b2                	lw	ra,12(sp)
    2484:	0141                	addi	sp,sp,16
    2486:	bd05                	j	22b6 <qspi_wait>

Disassembly of section .text.s25fl128s_se:

00002488 <s25fl128s_se>:
    2488:	67a9                	lui	a5,0xa
    248a:	c788                	sw	a0,8(a5)
    248c:	800207b7          	lui	a5,0x80020
    2490:	5d878793          	addi	a5,a5,1496 # 800205d8 <__GNU_EH_FRAME_HDR+0x8001db34>
    2494:	6729                	lui	a4,0xa
    2496:	c31c                	sw	a5,0(a4)
    2498:	bd39                	j	22b6 <qspi_wait>

Disassembly of section .text.s25fl128s_dor:

0000249a <s25fl128s_dor>:
    249a:	fff60793          	addi	a5,a2,-1
    249e:	80002737          	lui	a4,0x80002
    24a2:	1141                	addi	sp,sp,-16
    24a4:	23b70713          	addi	a4,a4,571 # 8000223b <__GNU_EH_FRAME_HDR+0x7ffff797>
    24a8:	07c2                	slli	a5,a5,0x10
    24aa:	c422                	sw	s0,8(sp)
    24ac:	c226                	sw	s1,4(sp)
    24ae:	c606                	sw	ra,12(sp)
    24b0:	97ba                	add	a5,a5,a4
    24b2:	6729                	lui	a4,0xa
    24b4:	c348                	sw	a0,4(a4)
    24b6:	6729                	lui	a4,0xa
    24b8:	c31c                	sw	a5,0(a4)
    24ba:	84ae                	mv	s1,a1
    24bc:	8432                	mv	s0,a2
    24be:	3be5                	jal	22b6 <qspi_wait>
    24c0:	85a2                	mv	a1,s0
    24c2:	4422                	lw	s0,8(sp)
    24c4:	40b2                	lw	ra,12(sp)
    24c6:	8526                	mv	a0,s1
    24c8:	4492                	lw	s1,4(sp)
    24ca:	0141                	addi	sp,sp,16
    24cc:	b521                	j	22d4 <qspi_read_array>

Disassembly of section .text.s25fl128s_qor:

000024ce <s25fl128s_qor>:
    24ce:	fff60793          	addi	a5,a2,-1
    24d2:	80002737          	lui	a4,0x80002
    24d6:	1141                	addi	sp,sp,-16
    24d8:	36b70713          	addi	a4,a4,875 # 8000236b <__GNU_EH_FRAME_HDR+0x7ffff8c7>
    24dc:	07c2                	slli	a5,a5,0x10
    24de:	c422                	sw	s0,8(sp)
    24e0:	c226                	sw	s1,4(sp)
    24e2:	c606                	sw	ra,12(sp)
    24e4:	97ba                	add	a5,a5,a4
    24e6:	6729                	lui	a4,0xa
    24e8:	c348                	sw	a0,4(a4)
    24ea:	6729                	lui	a4,0xa
    24ec:	c31c                	sw	a5,0(a4)
    24ee:	84ae                	mv	s1,a1
    24f0:	8432                	mv	s0,a2
    24f2:	33d1                	jal	22b6 <qspi_wait>
    24f4:	85a2                	mv	a1,s0
    24f6:	4422                	lw	s0,8(sp)
    24f8:	40b2                	lw	ra,12(sp)
    24fa:	8526                	mv	a0,s1
    24fc:	4492                	lw	s1,4(sp)
    24fe:	0141                	addi	sp,sp,16
    2500:	bbd1                	j	22d4 <qspi_read_array>

Disassembly of section .text.s25fl128s_qpp:

00002502 <s25fl128s_qpp>:
    2502:	fff60793          	addi	a5,a2,-1
    2506:	80002737          	lui	a4,0x80002
    250a:	1141                	addi	sp,sp,-16
    250c:	f3270713          	addi	a4,a4,-206 # 80001f32 <__GNU_EH_FRAME_HDR+0x7ffff48e>
    2510:	07c2                	slli	a5,a5,0x10
    2512:	c606                	sw	ra,12(sp)
    2514:	86aa                	mv	a3,a0
    2516:	97ba                	add	a5,a5,a4
    2518:	6729                	lui	a4,0xa
    251a:	c354                	sw	a3,4(a4)
    251c:	6729                	lui	a4,0xa
    251e:	852e                	mv	a0,a1
    2520:	c31c                	sw	a5,0(a4)
    2522:	85b2                	mv	a1,a2
    2524:	3bc1                	jal	22f4 <qspi_write_array>
    2526:	40b2                	lw	ra,12(sp)
    2528:	0141                	addi	sp,sp,16
    252a:	b371                	j	22b6 <qspi_wait>

Disassembly of section .text.qspi_custom_write:

0000252c <qspi_custom_write>:
    252c:	88aa                	mv	a7,a0
    252e:	852e                	mv	a0,a1
    2530:	85be                	mv	a1,a5
    2532:	800007b7          	lui	a5,0x80000
    2536:	40078793          	addi	a5,a5,1024 # 80000400 <__GNU_EH_FRAME_HDR+0x7fffd95c>
    253a:	0866                	slli	a6,a6,0x19
    253c:	983e                	add	a6,a6,a5
    253e:	072e                	slli	a4,a4,0xb
    2540:	fff58793          	addi	a5,a1,-1
    2544:	1141                	addi	sp,sp,-16
    2546:	983a                	add	a6,a6,a4
    2548:	07c2                	slli	a5,a5,0x10
    254a:	c422                	sw	s0,8(sp)
    254c:	c606                	sw	ra,12(sp)
    254e:	983e                	add	a6,a6,a5
    2550:	06a2                	slli	a3,a3,0x8
    2552:	67a9                	lui	a5,0xa
    2554:	0ff67613          	zext.b	a2,a2
    2558:	9836                	add	a6,a6,a3
    255a:	0117a223          	sw	a7,4(a5) # a004 <__GNU_EH_FRAME_HDR+0x7560>
    255e:	00c80433          	add	s0,a6,a2
    2562:	3b49                	jal	22f4 <qspi_write_array>
    2564:	67a9                	lui	a5,0xa
    2566:	c380                	sw	s0,0(a5)
    2568:	4422                	lw	s0,8(sp)
    256a:	40b2                	lw	ra,12(sp)
    256c:	0141                	addi	sp,sp,16
    256e:	b3a1                	j	22b6 <qspi_wait>

Disassembly of section .text.qspi_custom_read:

00002570 <qspi_custom_read>:
    2570:	1141                	addi	sp,sp,-16
    2572:	c422                	sw	s0,8(sp)
    2574:	0866                	slli	a6,a6,0x19
    2576:	843e                	mv	s0,a5
    2578:	800007b7          	lui	a5,0x80000
    257c:	983e                	add	a6,a6,a5
    257e:	072e                	slli	a4,a4,0xb
    2580:	fff40793          	addi	a5,s0,-1
    2584:	983a                	add	a6,a6,a4
    2586:	07c2                	slli	a5,a5,0x10
    2588:	983e                	add	a6,a6,a5
    258a:	06a2                	slli	a3,a3,0x8
    258c:	c226                	sw	s1,4(sp)
    258e:	c606                	sw	ra,12(sp)
    2590:	0ff67613          	zext.b	a2,a2
    2594:	9836                	add	a6,a6,a3
    2596:	67a9                	lui	a5,0xa
    2598:	c3c8                	sw	a0,4(a5)
    259a:	9832                	add	a6,a6,a2
    259c:	67a9                	lui	a5,0xa
    259e:	0107a023          	sw	a6,0(a5) # a000 <__GNU_EH_FRAME_HDR+0x755c>
    25a2:	84ae                	mv	s1,a1
    25a4:	3b09                	jal	22b6 <qspi_wait>
    25a6:	85a2                	mv	a1,s0
    25a8:	4422                	lw	s0,8(sp)
    25aa:	40b2                	lw	ra,12(sp)
    25ac:	8526                	mv	a0,s1
    25ae:	4492                	lw	s1,4(sp)
    25b0:	0141                	addi	sp,sp,16
    25b2:	b30d                	j	22d4 <qspi_read_array>

Disassembly of section .text.timer_counter:

000025b4 <timer_counter>:
    25b4:	67b1                	lui	a5,0xc
    25b6:	4bc8                	lw	a0,20(a5)
    25b8:	8082                	ret

Disassembly of section .text.timer_event:

000025ba <timer_event>:
    25ba:	67b1                	lui	a5,0xc
    25bc:	4f88                	lw	a0,24(a5)
    25be:	8082                	ret

Disassembly of section .text.timer_clear:

000025c0 <timer_clear>:
    25c0:	67b1                	lui	a5,0xc
    25c2:	4705                	li	a4,1
    25c4:	c798                	sw	a4,8(a5)
    25c6:	67b1                	lui	a5,0xc
    25c8:	cfd8                	sw	a4,28(a5)
    25ca:	8082                	ret

Disassembly of section .text.timer_enabled:

000025cc <timer_enabled>:
    25cc:	67b1                	lui	a5,0xc
    25ce:	c7c8                	sw	a0,12(a5)
    25d0:	8082                	ret

Disassembly of section .text.timer_conf:

000025d2 <timer_conf>:
    25d2:	1141                	addi	sp,sp,-16
    25d4:	c606                	sw	ra,12(sp)
    25d6:	67b1                	lui	a5,0xc
    25d8:	c388                	sw	a0,0(a5)
    25da:	c3cc                	sw	a1,4(a5)
    25dc:	67b1                	lui	a5,0xc
    25de:	cb90                	sw	a2,16(a5)
    25e0:	08000613          	li	a2,128
    25e4:	30046073          	csrsi	mstatus,8
    25e8:	30462073          	csrs	mie,a2
    25ec:	3fd1                	jal	25c0 <timer_clear>
    25ee:	40b2                	lw	ra,12(sp)
    25f0:	67b1                	lui	a5,0xc
    25f2:	4705                	li	a4,1
    25f4:	c7d8                	sw	a4,12(a5)
    25f6:	0141                	addi	sp,sp,16
    25f8:	8082                	ret

Disassembly of section .text.usb_connected:

000025fa <usb_connected>:
    25fa:	67b9                	lui	a5,0xe
    25fc:	47c8                	lw	a0,12(a5)
    25fe:	8905                	andi	a0,a0,1
    2600:	8082                	ret

Disassembly of section .text.usb_conf:

00002602 <usb_conf>:
    2602:	67b9                	lui	a5,0xe
    2604:	6739                	lui	a4,0xe
    2606:	c388                	sw	a0,0(a5)
    2608:	0731                	addi	a4,a4,12 # e00c <__GNU_EH_FRAME_HDR+0xb568>
    260a:	431c                	lw	a5,0(a4)
    260c:	8b85                	andi	a5,a5,1
    260e:	dff5                	beqz	a5,260a <usb_conf+0x8>
    2610:	8082                	ret

Disassembly of section .text.usb_rw:

00002612 <usb_rw>:
    2612:	67b9                	lui	a5,0xe
    2614:	c788                	sw	a0,8(a5)
    2616:	67b9                	lui	a5,0xe
    2618:	07b1                	addi	a5,a5,12 # e00c <__GNU_EH_FRAME_HDR+0xb568>
    261a:	4709                	li	a4,2
    261c:	4394                	lw	a3,0(a5)
    261e:	fee68fe3          	beq	a3,a4,261c <usb_rw+0xa>
    2622:	c398                	sw	a4,0(a5)
    2624:	67b9                	lui	a5,0xe
    2626:	43c8                	lw	a0,4(a5)
    2628:	8082                	ret

Disassembly of section .text.gpio_write:

0000262a <gpio_write>:
    262a:	67c1                	lui	a5,0x10
    262c:	c3c8                	sw	a0,4(a5)
    262e:	8082                	ret

Disassembly of section .text.gpio_read:

00002630 <gpio_read>:
    2630:	67c1                	lui	a5,0x10
    2632:	4388                	lw	a0,0(a5)
    2634:	0542                	slli	a0,a0,0x10
    2636:	8141                	srli	a0,a0,0x10
    2638:	8082                	ret

Disassembly of section .text.instr_mem_write:

0000263a <instr_mem_write>:
    263a:	050a                	slli	a0,a0,0x2
    263c:	6791                	lui	a5,0x4
    263e:	97aa                	add	a5,a5,a0
    2640:	c38c                	sw	a1,0(a5)
    2642:	8082                	ret
