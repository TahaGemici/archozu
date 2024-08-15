
a.out:     file format elf32-littleriscv


Disassembly of section .text:

00002000 <.text>:
    2000:	00002137          	lui	sp,0x2
    2004:	7111                	addi	sp,sp,-256
    2006:	6909                	lui	s2,0x2
    2008:	4401                	li	s0,0
    200a:	6989                	lui	s3,0x2
    200c:	6a11                	lui	s4,0x4
    200e:	e0090913          	addi	s2,s2,-512 # 0x1e00
    2012:	02000613          	li	a2,32
    2016:	100c                	addi	a1,sp,32
    2018:	8522                	mv	a0,s0
    201a:	2bd9                	jal	0x25f0
    201c:	02000613          	li	a2,32
    2020:	858a                	mv	a1,sp
    2022:	01340533          	add	a0,s0,s3
    2026:	23e9                	jal	0x25f0
    2028:	ffc47713          	andi	a4,s0,-4
    202c:	4781                	li	a5,0
    202e:	9752                	add	a4,a4,s4
    2030:	02000693          	li	a3,32
    2034:	100c                	addi	a1,sp,32
    2036:	95be                	add	a1,a1,a5
    2038:	418c                	lw	a1,0(a1)
    203a:	00878633          	add	a2,a5,s0
    203e:	c20c                	sw	a1,0(a2)
    2040:	00f10633          	add	a2,sp,a5
    2044:	420c                	lw	a1,0(a2)
    2046:	00f70633          	add	a2,a4,a5
    204a:	0791                	addi	a5,a5,4
    204c:	c20c                	sw	a1,0(a2)
    204e:	fed793e3          	bne	a5,a3,0x2034
    2052:	6489                	lui	s1,0x2
    2054:	e0048493          	addi	s1,s1,-512 # 0x1e00
    2058:	02000613          	li	a2,32
    205c:	858a                	mv	a1,sp
    205e:	01348533          	add	a0,s1,s3
    2062:	2379                	jal	0x25f0
    2064:	ffc4f713          	andi	a4,s1,-4
    2068:	4781                	li	a5,0
    206a:	9752                	add	a4,a4,s4
    206c:	02000693          	li	a3,32
    2070:	00f10633          	add	a2,sp,a5
    2074:	420c                	lw	a1,0(a2)
    2076:	00f70633          	add	a2,a4,a5
    207a:	0791                	addi	a5,a5,4
    207c:	c20c                	sw	a1,0(a2)
    207e:	fed799e3          	bne	a5,a3,0x2070
    2082:	02048493          	addi	s1,s1,32
    2086:	fd3499e3          	bne	s1,s3,0x2058
    208a:	00002137          	lui	sp,0x2
    208e:	00010067          	jr	sp # 0x2000
    2092:	02040413          	addi	s0,s0,32
    2096:	f7241ee3          	bne	s0,s2,0x2012
    209a:	4501                	li	a0,0
	...

Disassembly of section .text.uart_conf:

00002200 <.text.uart_conf>:
    2200:	039387b7          	lui	a5,0x3938
    2204:	70078793          	addi	a5,a5,1792 # 0x3938700
    2208:	02a7d7b3          	divu	a5,a5,a0
    220c:	6719                	lui	a4,0x6
    220e:	17fd                	addi	a5,a5,-1
    2210:	c31c                	sw	a5,0(a4)
    2212:	6799                	lui	a5,0x6
    2214:	c3cc                	sw	a1,4(a5)
    2216:	8082                	ret

Disassembly of section .text.uart_read:

00002218 <.text.uart_read>:
    2218:	6799                	lui	a5,0x6
    221a:	07c1                	addi	a5,a5,16 # 0x6010
    221c:	4709                	li	a4,2
    221e:	4394                	lw	a3,0(a5)
    2220:	fee69fe3          	bne	a3,a4,0x221e
    2224:	6719                	lui	a4,0x6
    2226:	4708                	lw	a0,8(a4)
    2228:	0007a023          	sw	zero,0(a5)
    222c:	0ff57513          	zext.b	a0,a0
    2230:	8082                	ret

Disassembly of section .text.uart_write:

00002232 <.text.uart_write>:
    2232:	6799                	lui	a5,0x6
    2234:	c7c8                	sw	a0,12(a5)
    2236:	6799                	lui	a5,0x6
    2238:	07c1                	addi	a5,a5,16 # 0x6010
    223a:	4705                	li	a4,1
    223c:	c398                	sw	a4,0(a5)
    223e:	4398                	lw	a4,0(a5)
    2240:	8b11                	andi	a4,a4,4
    2242:	df75                	beqz	a4,0x223e
    2244:	4398                	lw	a4,0(a5)
    2246:	8b09                	andi	a4,a4,2
    2248:	c398                	sw	a4,0(a5)
    224a:	8082                	ret

Disassembly of section .text.i2c_conf:

0000224c <.text.i2c_conf>:
    224c:	67a1                	lui	a5,0x8
    224e:	c3c8                	sw	a0,4(a5)
    2250:	8082                	ret

Disassembly of section .text.i2c_write:

00002252 <.text.i2c_write>:
    2252:	67a1                	lui	a5,0x8
    2254:	c38c                	sw	a1,0(a5)
    2256:	c7c8                	sw	a0,12(a5)
    2258:	67a1                	lui	a5,0x8
    225a:	07c1                	addi	a5,a5,16 # 0x8010
    225c:	4705                	li	a4,1
    225e:	c398                	sw	a4,0(a5)
    2260:	4398                	lw	a4,0(a5)
    2262:	8b09                	andi	a4,a4,2
    2264:	df75                	beqz	a4,0x2260
    2266:	4398                	lw	a4,0(a5)
    2268:	8b31                	andi	a4,a4,12
    226a:	c398                	sw	a4,0(a5)
    226c:	8082                	ret

Disassembly of section .text.i2c_read:

0000226e <.text.i2c_read>:
    226e:	67a1                	lui	a5,0x8
    2270:	c388                	sw	a0,0(a5)
    2272:	4711                	li	a4,4
    2274:	07c1                	addi	a5,a5,16 # 0x8010
    2276:	c398                	sw	a4,0(a5)
    2278:	4398                	lw	a4,0(a5)
    227a:	8b21                	andi	a4,a4,8
    227c:	df75                	beqz	a4,0x2278
    227e:	4398                	lw	a4,0(a5)
    2280:	8b0d                	andi	a4,a4,3
    2282:	c398                	sw	a4,0(a5)
    2284:	67a1                	lui	a5,0x8
    2286:	4788                	lw	a0,8(a5)
    2288:	8082                	ret

Disassembly of section .text.qspi_wait:

0000228a <.text.qspi_wait>:
    228a:	67a9                	lui	a5,0xa
    228c:	02878793          	addi	a5,a5,40 # 0xa028
    2290:	4705                	li	a4,1
    2292:	4394                	lw	a3,0(a5)
    2294:	fee69fe3          	bne	a3,a4,0x2292
    2298:	67a9                	lui	a5,0xa
    229a:	02878793          	addi	a5,a5,40 # 0xa028
    229e:	4705                	li	a4,1
    22a0:	4394                	lw	a3,0(a5)
    22a2:	fee69fe3          	bne	a3,a4,0x22a0
    22a6:	8082                	ret

Disassembly of section .text.qspi_read_array:

000022a8 <.text.qspi_read_array>:
    22a8:	058d                	addi	a1,a1,3
    22aa:	6729                	lui	a4,0xa
    22ac:	99f1                	andi	a1,a1,-4
    22ae:	4781                	li	a5,0
    22b0:	0721                	addi	a4,a4,8 # 0xa008
    22b2:	00b79363          	bne	a5,a1,0x22b8
    22b6:	8082                	ret
    22b8:	00e786b3          	add	a3,a5,a4
    22bc:	4290                	lw	a2,0(a3)
    22be:	00f506b3          	add	a3,a0,a5
    22c2:	0791                	addi	a5,a5,4
    22c4:	c290                	sw	a2,0(a3)
    22c6:	b7f5                	j	0x22b2

Disassembly of section .text.qspi_write_array:

000022c8 <.text.qspi_write_array>:
    22c8:	058d                	addi	a1,a1,3
    22ca:	6729                	lui	a4,0xa
    22cc:	99f1                	andi	a1,a1,-4
    22ce:	4781                	li	a5,0
    22d0:	0721                	addi	a4,a4,8 # 0xa008
    22d2:	00b79363          	bne	a5,a1,0x22d8
    22d6:	8082                	ret
    22d8:	00f50633          	add	a2,a0,a5
    22dc:	4210                	lw	a2,0(a2)
    22de:	00e786b3          	add	a3,a5,a4
    22e2:	0791                	addi	a5,a5,4
    22e4:	c290                	sw	a2,0(a3)
    22e6:	b7f5                	j	0x22d2

Disassembly of section .text.s25fl128s_wren:

000022e8 <.text.s25fl128s_wren>:
    22e8:	800007b7          	lui	a5,0x80000
    22ec:	0799                	addi	a5,a5,6 # 0x80000006
    22ee:	6729                	lui	a4,0xa
    22f0:	c31c                	sw	a5,0(a4)
    22f2:	bf61                	j	0x228a

Disassembly of section .text.s25fl128s_wrdi:

000022f4 <.text.s25fl128s_wrdi>:
    22f4:	800007b7          	lui	a5,0x80000
    22f8:	0791                	addi	a5,a5,4 # 0x80000004
    22fa:	6729                	lui	a4,0xa
    22fc:	c31c                	sw	a5,0(a4)
    22fe:	b771                	j	0x228a

Disassembly of section .text.s25fl128s_clsr:

00002300 <.text.s25fl128s_clsr>:
    2300:	800007b7          	lui	a5,0x80000
    2304:	03078793          	addi	a5,a5,48 # 0x80000030
    2308:	6729                	lui	a4,0xa
    230a:	c31c                	sw	a5,0(a4)
    230c:	bfbd                	j	0x228a

Disassembly of section .text.s25fl128s_reset:

0000230e <.text.s25fl128s_reset>:
    230e:	800007b7          	lui	a5,0x80000
    2312:	0f078793          	addi	a5,a5,240 # 0x800000f0
    2316:	6729                	lui	a4,0xa
    2318:	c31c                	sw	a5,0(a4)
    231a:	bf85                	j	0x228a

Disassembly of section .text.s25fl128s_rdid:

0000231c <.text.s25fl128s_rdid>:
    231c:	fff58793          	addi	a5,a1,-1
    2320:	80000737          	lui	a4,0x80000
    2324:	1101                	addi	sp,sp,-32
    2326:	19f70713          	addi	a4,a4,415 # 0x8000019f
    232a:	07c2                	slli	a5,a5,0x10
    232c:	ce06                	sw	ra,28(sp)
    232e:	c62a                	sw	a0,12(sp)
    2330:	c42e                	sw	a1,8(sp)
    2332:	97ba                	add	a5,a5,a4
    2334:	6729                	lui	a4,0xa
    2336:	c31c                	sw	a5,0(a4)
    2338:	3f89                	jal	0x228a
    233a:	45a2                	lw	a1,8(sp)
    233c:	4532                	lw	a0,12(sp)
    233e:	40f2                	lw	ra,28(sp)
    2340:	6105                	addi	sp,sp,32
    2342:	b79d                	j	0x22a8

Disassembly of section .text.s25fl128s_rdsr1:

00002344 <.text.s25fl128s_rdsr1>:
    2344:	1141                	addi	sp,sp,-16
    2346:	800007b7          	lui	a5,0x80000
    234a:	c606                	sw	ra,12(sp)
    234c:	10578793          	addi	a5,a5,261 # 0x80000105
    2350:	6729                	lui	a4,0xa
    2352:	c31c                	sw	a5,0(a4)
    2354:	3f1d                	jal	0x228a
    2356:	67a9                	lui	a5,0xa
    2358:	4788                	lw	a0,8(a5)
    235a:	40b2                	lw	ra,12(sp)
    235c:	0ff57513          	zext.b	a0,a0
    2360:	0141                	addi	sp,sp,16
    2362:	8082                	ret

Disassembly of section .text.s25fl128s_rdsr2:

00002364 <.text.s25fl128s_rdsr2>:
    2364:	1141                	addi	sp,sp,-16
    2366:	800007b7          	lui	a5,0x80000
    236a:	c606                	sw	ra,12(sp)
    236c:	10778793          	addi	a5,a5,263 # 0x80000107
    2370:	6729                	lui	a4,0xa
    2372:	c31c                	sw	a5,0(a4)
    2374:	3f19                	jal	0x228a
    2376:	67a9                	lui	a5,0xa
    2378:	4788                	lw	a0,8(a5)
    237a:	40b2                	lw	ra,12(sp)
    237c:	0ff57513          	zext.b	a0,a0
    2380:	0141                	addi	sp,sp,16
    2382:	8082                	ret

Disassembly of section .text.s25fl128s_rdcr:

00002384 <.text.s25fl128s_rdcr>:
    2384:	1141                	addi	sp,sp,-16
    2386:	800007b7          	lui	a5,0x80000
    238a:	c606                	sw	ra,12(sp)
    238c:	13578793          	addi	a5,a5,309 # 0x80000135
    2390:	6729                	lui	a4,0xa
    2392:	c31c                	sw	a5,0(a4)
    2394:	3ddd                	jal	0x228a
    2396:	67a9                	lui	a5,0xa
    2398:	4788                	lw	a0,8(a5)
    239a:	40b2                	lw	ra,12(sp)
    239c:	0ff57513          	zext.b	a0,a0
    23a0:	0141                	addi	sp,sp,16
    23a2:	8082                	ret

Disassembly of section .text.s25fl128s_read_id:

000023a4 <.text.s25fl128s_read_id>:
    23a4:	1141                	addi	sp,sp,-16
    23a6:	c606                	sw	ra,12(sp)
    23a8:	67a9                	lui	a5,0xa
    23aa:	c3c8                	sw	a0,4(a5)
    23ac:	800127b7          	lui	a5,0x80012
    23b0:	99078793          	addi	a5,a5,-1648 # 0x80011990
    23b4:	6729                	lui	a4,0xa
    23b6:	c31c                	sw	a5,0(a4)
    23b8:	3dc9                	jal	0x228a
    23ba:	67a9                	lui	a5,0xa
    23bc:	4788                	lw	a0,8(a5)
    23be:	40b2                	lw	ra,12(sp)
    23c0:	0542                	slli	a0,a0,0x10
    23c2:	8141                	srli	a0,a0,0x10
    23c4:	0141                	addi	sp,sp,16
    23c6:	8082                	ret

Disassembly of section .text.s25fl128s_res:

000023c8 <.text.s25fl128s_res>:
    23c8:	1141                	addi	sp,sp,-16
    23ca:	800027b7          	lui	a5,0x80002
    23ce:	c606                	sw	ra,12(sp)
    23d0:	9ab78793          	addi	a5,a5,-1621 # 0x800019ab
    23d4:	6729                	lui	a4,0xa
    23d6:	c31c                	sw	a5,0(a4)
    23d8:	3d4d                	jal	0x228a
    23da:	67a9                	lui	a5,0xa
    23dc:	4788                	lw	a0,8(a5)
    23de:	40b2                	lw	ra,12(sp)
    23e0:	0ff57513          	zext.b	a0,a0
    23e4:	0141                	addi	sp,sp,16
    23e6:	8082                	ret

Disassembly of section .text.s25fl128s_wrr:

000023e8 <.text.s25fl128s_wrr>:
    23e8:	67a9                	lui	a5,0xa
    23ea:	c788                	sw	a0,8(a5)
    23ec:	800107b7          	lui	a5,0x80010
    23f0:	50178793          	addi	a5,a5,1281 # 0x80010501
    23f4:	6729                	lui	a4,0xa
    23f6:	c31c                	sw	a5,0(a4)
    23f8:	bd49                	j	0x228a

Disassembly of section .text.s25fl128s_read:

000023fa <.text.s25fl128s_read>:
    23fa:	fff60793          	addi	a5,a2,-1
    23fe:	80002737          	lui	a4,0x80002
    2402:	1141                	addi	sp,sp,-16
    2404:	90370713          	addi	a4,a4,-1789 # 0x80001903
    2408:	07c2                	slli	a5,a5,0x10
    240a:	c422                	sw	s0,8(sp)
    240c:	c226                	sw	s1,4(sp)
    240e:	c606                	sw	ra,12(sp)
    2410:	97ba                	add	a5,a5,a4
    2412:	6729                	lui	a4,0xa
    2414:	c348                	sw	a0,4(a4)
    2416:	6729                	lui	a4,0xa
    2418:	c31c                	sw	a5,0(a4)
    241a:	84ae                	mv	s1,a1
    241c:	8432                	mv	s0,a2
    241e:	35b5                	jal	0x228a
    2420:	85a2                	mv	a1,s0
    2422:	4422                	lw	s0,8(sp)
    2424:	40b2                	lw	ra,12(sp)
    2426:	8526                	mv	a0,s1
    2428:	4492                	lw	s1,4(sp)
    242a:	0141                	addi	sp,sp,16
    242c:	bdb5                	j	0x22a8

Disassembly of section .text.s25fl128s_pp:

0000242e <.text.s25fl128s_pp>:
    242e:	1141                	addi	sp,sp,-16
    2430:	c422                	sw	s0,8(sp)
    2432:	800027b7          	lui	a5,0x80002
    2436:	fff60413          	addi	s0,a2,-1
    243a:	d0278793          	addi	a5,a5,-766 # 0x80001d02
    243e:	0442                	slli	s0,s0,0x10
    2440:	c606                	sw	ra,12(sp)
    2442:	872a                	mv	a4,a0
    2444:	943e                	add	s0,s0,a5
    2446:	67a9                	lui	a5,0xa
    2448:	852e                	mv	a0,a1
    244a:	c3d8                	sw	a4,4(a5)
    244c:	85b2                	mv	a1,a2
    244e:	3dad                	jal	0x22c8
    2450:	67a9                	lui	a5,0xa
    2452:	c380                	sw	s0,0(a5)
    2454:	4422                	lw	s0,8(sp)
    2456:	40b2                	lw	ra,12(sp)
    2458:	0141                	addi	sp,sp,16
    245a:	bd05                	j	0x228a

Disassembly of section .text.s25fl128s_se:

0000245c <.text.s25fl128s_se>:
    245c:	67a9                	lui	a5,0xa
    245e:	c788                	sw	a0,8(a5)
    2460:	800207b7          	lui	a5,0x80020
    2464:	5d878793          	addi	a5,a5,1496 # 0x800205d8
    2468:	6729                	lui	a4,0xa
    246a:	c31c                	sw	a5,0(a4)
    246c:	bd39                	j	0x228a

Disassembly of section .text.s25fl128s_dor:

0000246e <.text.s25fl128s_dor>:
    246e:	fff60793          	addi	a5,a2,-1
    2472:	80002737          	lui	a4,0x80002
    2476:	1141                	addi	sp,sp,-16
    2478:	23b70713          	addi	a4,a4,571 # 0x8000223b
    247c:	07c2                	slli	a5,a5,0x10
    247e:	c422                	sw	s0,8(sp)
    2480:	c226                	sw	s1,4(sp)
    2482:	c606                	sw	ra,12(sp)
    2484:	97ba                	add	a5,a5,a4
    2486:	6729                	lui	a4,0xa
    2488:	c348                	sw	a0,4(a4)
    248a:	6729                	lui	a4,0xa
    248c:	c31c                	sw	a5,0(a4)
    248e:	84ae                	mv	s1,a1
    2490:	8432                	mv	s0,a2
    2492:	3be5                	jal	0x228a
    2494:	85a2                	mv	a1,s0
    2496:	4422                	lw	s0,8(sp)
    2498:	40b2                	lw	ra,12(sp)
    249a:	8526                	mv	a0,s1
    249c:	4492                	lw	s1,4(sp)
    249e:	0141                	addi	sp,sp,16
    24a0:	b521                	j	0x22a8

Disassembly of section .text.s25fl128s_qor:

000024a2 <.text.s25fl128s_qor>:
    24a2:	fff60793          	addi	a5,a2,-1
    24a6:	80002737          	lui	a4,0x80002
    24aa:	1141                	addi	sp,sp,-16
    24ac:	36b70713          	addi	a4,a4,875 # 0x8000236b
    24b0:	07c2                	slli	a5,a5,0x10
    24b2:	c422                	sw	s0,8(sp)
    24b4:	c226                	sw	s1,4(sp)
    24b6:	c606                	sw	ra,12(sp)
    24b8:	97ba                	add	a5,a5,a4
    24ba:	6729                	lui	a4,0xa
    24bc:	c348                	sw	a0,4(a4)
    24be:	6729                	lui	a4,0xa
    24c0:	c31c                	sw	a5,0(a4)
    24c2:	84ae                	mv	s1,a1
    24c4:	8432                	mv	s0,a2
    24c6:	33d1                	jal	0x228a
    24c8:	85a2                	mv	a1,s0
    24ca:	4422                	lw	s0,8(sp)
    24cc:	40b2                	lw	ra,12(sp)
    24ce:	8526                	mv	a0,s1
    24d0:	4492                	lw	s1,4(sp)
    24d2:	0141                	addi	sp,sp,16
    24d4:	bbd1                	j	0x22a8

Disassembly of section .text.s25fl128s_qpp:

000024d6 <.text.s25fl128s_qpp>:
    24d6:	fff60793          	addi	a5,a2,-1
    24da:	80002737          	lui	a4,0x80002
    24de:	1141                	addi	sp,sp,-16
    24e0:	f3270713          	addi	a4,a4,-206 # 0x80001f32
    24e4:	07c2                	slli	a5,a5,0x10
    24e6:	c606                	sw	ra,12(sp)
    24e8:	86aa                	mv	a3,a0
    24ea:	97ba                	add	a5,a5,a4
    24ec:	6729                	lui	a4,0xa
    24ee:	c354                	sw	a3,4(a4)
    24f0:	6729                	lui	a4,0xa
    24f2:	852e                	mv	a0,a1
    24f4:	c31c                	sw	a5,0(a4)
    24f6:	85b2                	mv	a1,a2
    24f8:	3bc1                	jal	0x22c8
    24fa:	40b2                	lw	ra,12(sp)
    24fc:	0141                	addi	sp,sp,16
    24fe:	b371                	j	0x228a

Disassembly of section .text.qspi_custom_write:

00002500 <.text.qspi_custom_write>:
    2500:	88aa                	mv	a7,a0
    2502:	852e                	mv	a0,a1
    2504:	85be                	mv	a1,a5
    2506:	800007b7          	lui	a5,0x80000
    250a:	40078793          	addi	a5,a5,1024 # 0x80000400
    250e:	0866                	slli	a6,a6,0x19
    2510:	983e                	add	a6,a6,a5
    2512:	072e                	slli	a4,a4,0xb
    2514:	fff58793          	addi	a5,a1,-1
    2518:	1141                	addi	sp,sp,-16
    251a:	983a                	add	a6,a6,a4
    251c:	07c2                	slli	a5,a5,0x10
    251e:	c422                	sw	s0,8(sp)
    2520:	c606                	sw	ra,12(sp)
    2522:	983e                	add	a6,a6,a5
    2524:	06a2                	slli	a3,a3,0x8
    2526:	67a9                	lui	a5,0xa
    2528:	0ff67613          	zext.b	a2,a2
    252c:	9836                	add	a6,a6,a3
    252e:	0117a223          	sw	a7,4(a5) # 0xa004
    2532:	00c80433          	add	s0,a6,a2
    2536:	3b49                	jal	0x22c8
    2538:	67a9                	lui	a5,0xa
    253a:	c380                	sw	s0,0(a5)
    253c:	4422                	lw	s0,8(sp)
    253e:	40b2                	lw	ra,12(sp)
    2540:	0141                	addi	sp,sp,16
    2542:	b3a1                	j	0x228a

Disassembly of section .text.qspi_custom_read:

00002544 <.text.qspi_custom_read>:
    2544:	1141                	addi	sp,sp,-16
    2546:	c422                	sw	s0,8(sp)
    2548:	0866                	slli	a6,a6,0x19
    254a:	843e                	mv	s0,a5
    254c:	800007b7          	lui	a5,0x80000
    2550:	983e                	add	a6,a6,a5
    2552:	072e                	slli	a4,a4,0xb
    2554:	fff40793          	addi	a5,s0,-1
    2558:	983a                	add	a6,a6,a4
    255a:	07c2                	slli	a5,a5,0x10
    255c:	983e                	add	a6,a6,a5
    255e:	06a2                	slli	a3,a3,0x8
    2560:	c226                	sw	s1,4(sp)
    2562:	c606                	sw	ra,12(sp)
    2564:	0ff67613          	zext.b	a2,a2
    2568:	9836                	add	a6,a6,a3
    256a:	67a9                	lui	a5,0xa
    256c:	c3c8                	sw	a0,4(a5)
    256e:	9832                	add	a6,a6,a2
    2570:	67a9                	lui	a5,0xa
    2572:	0107a023          	sw	a6,0(a5) # 0xa000
    2576:	84ae                	mv	s1,a1
    2578:	3b09                	jal	0x228a
    257a:	85a2                	mv	a1,s0
    257c:	4422                	lw	s0,8(sp)
    257e:	40b2                	lw	ra,12(sp)
    2580:	8526                	mv	a0,s1
    2582:	4492                	lw	s1,4(sp)
    2584:	0141                	addi	sp,sp,16
    2586:	b30d                	j	0x22a8

Disassembly of section .text.mt25ql256aba_read:

00002588 <.text.mt25ql256aba_read>:
    2588:	fff60793          	addi	a5,a2,-1
    258c:	80000737          	lui	a4,0x80000
    2590:	1141                	addi	sp,sp,-16
    2592:	10370713          	addi	a4,a4,259 # 0x80000103
    2596:	07c2                	slli	a5,a5,0x10
    2598:	c422                	sw	s0,8(sp)
    259a:	c226                	sw	s1,4(sp)
    259c:	c606                	sw	ra,12(sp)
    259e:	97ba                	add	a5,a5,a4
    25a0:	6729                	lui	a4,0xa
    25a2:	c348                	sw	a0,4(a4)
    25a4:	6729                	lui	a4,0xa
    25a6:	c31c                	sw	a5,0(a4)
    25a8:	84ae                	mv	s1,a1
    25aa:	8432                	mv	s0,a2
    25ac:	39f9                	jal	0x228a
    25ae:	85a2                	mv	a1,s0
    25b0:	4422                	lw	s0,8(sp)
    25b2:	40b2                	lw	ra,12(sp)
    25b4:	8526                	mv	a0,s1
    25b6:	4492                	lw	s1,4(sp)
    25b8:	0141                	addi	sp,sp,16
    25ba:	b1fd                	j	0x22a8

Disassembly of section .text.mt25ql256aba_dual_output_fast_read:

000025bc <.text.mt25ql256aba_dual_output_fast_read>:
    25bc:	fff60793          	addi	a5,a2,-1
    25c0:	80001737          	lui	a4,0x80001
    25c4:	1141                	addi	sp,sp,-16
    25c6:	a3b70713          	addi	a4,a4,-1477 # 0x80000a3b
    25ca:	07c2                	slli	a5,a5,0x10
    25cc:	c422                	sw	s0,8(sp)
    25ce:	c226                	sw	s1,4(sp)
    25d0:	c606                	sw	ra,12(sp)
    25d2:	97ba                	add	a5,a5,a4
    25d4:	6729                	lui	a4,0xa
    25d6:	c348                	sw	a0,4(a4)
    25d8:	6729                	lui	a4,0xa
    25da:	c31c                	sw	a5,0(a4)
    25dc:	84ae                	mv	s1,a1
    25de:	8432                	mv	s0,a2
    25e0:	316d                	jal	0x228a
    25e2:	85a2                	mv	a1,s0
    25e4:	4422                	lw	s0,8(sp)
    25e6:	40b2                	lw	ra,12(sp)
    25e8:	8526                	mv	a0,s1
    25ea:	4492                	lw	s1,4(sp)
    25ec:	0141                	addi	sp,sp,16
    25ee:	b96d                	j	0x22a8

Disassembly of section .text.mt25ql256aba_quad_output_fast_read:

000025f0 <.text.mt25ql256aba_quad_output_fast_read>:
    25f0:	fff60793          	addi	a5,a2,-1
    25f4:	80001737          	lui	a4,0x80001
    25f8:	1141                	addi	sp,sp,-16
    25fa:	b6b70713          	addi	a4,a4,-1173 # 0x80000b6b
    25fe:	07c2                	slli	a5,a5,0x10
    2600:	c422                	sw	s0,8(sp)
    2602:	c226                	sw	s1,4(sp)
    2604:	c606                	sw	ra,12(sp)
    2606:	97ba                	add	a5,a5,a4
    2608:	6729                	lui	a4,0xa
    260a:	c348                	sw	a0,4(a4)
    260c:	6729                	lui	a4,0xa
    260e:	c31c                	sw	a5,0(a4)
    2610:	84ae                	mv	s1,a1
    2612:	8432                	mv	s0,a2
    2614:	399d                	jal	0x228a
    2616:	85a2                	mv	a1,s0
    2618:	4422                	lw	s0,8(sp)
    261a:	40b2                	lw	ra,12(sp)
    261c:	8526                	mv	a0,s1
    261e:	4492                	lw	s1,4(sp)
    2620:	0141                	addi	sp,sp,16
    2622:	b159                	j	0x22a8

Disassembly of section .text.mt25ql256aba_page_program:

00002624 <.text.mt25ql256aba_page_program>:
    2624:	1141                	addi	sp,sp,-16
    2626:	c422                	sw	s0,8(sp)
    2628:	800007b7          	lui	a5,0x80000
    262c:	fff60413          	addi	s0,a2,-1
    2630:	50278793          	addi	a5,a5,1282 # 0x80000502
    2634:	0442                	slli	s0,s0,0x10
    2636:	c606                	sw	ra,12(sp)
    2638:	872a                	mv	a4,a0
    263a:	943e                	add	s0,s0,a5
    263c:	67a9                	lui	a5,0xa
    263e:	852e                	mv	a0,a1
    2640:	c3d8                	sw	a4,4(a5)
    2642:	85b2                	mv	a1,a2
    2644:	3151                	jal	0x22c8
    2646:	67a9                	lui	a5,0xa
    2648:	c380                	sw	s0,0(a5)
    264a:	4422                	lw	s0,8(sp)
    264c:	40b2                	lw	ra,12(sp)
    264e:	0141                	addi	sp,sp,16
    2650:	b92d                	j	0x228a

Disassembly of section .text.mt25ql256aba_sector_erase:

00002652 <.text.mt25ql256aba_sector_erase>:
    2652:	15fd                	addi	a1,a1,-1
    2654:	800007b7          	lui	a5,0x80000
    2658:	5d878793          	addi	a5,a5,1496 # 0x800005d8
    265c:	05c2                	slli	a1,a1,0x10
    265e:	95be                	add	a1,a1,a5
    2660:	67a9                	lui	a5,0xa
    2662:	c788                	sw	a0,8(a5)
    2664:	67a9                	lui	a5,0xa
    2666:	c38c                	sw	a1,0(a5)
    2668:	b10d                	j	0x228a

Disassembly of section .text.mt25ql256aba_read_id:

0000266a <.text.mt25ql256aba_read_id>:
    266a:	b94d                	j	0x231c

Disassembly of section .text.mt25ql256aba_read_status_register:

0000266c <.text.mt25ql256aba_read_status_register>:
    266c:	b9e1                	j	0x2344

Disassembly of section .text.mt25ql256aba_read_flag_status_register:

0000266e <.text.mt25ql256aba_read_flag_status_register>:
    266e:	1141                	addi	sp,sp,-16
    2670:	800007b7          	lui	a5,0x80000
    2674:	c606                	sw	ra,12(sp)
    2676:	17078793          	addi	a5,a5,368 # 0x80000170
    267a:	6729                	lui	a4,0xa
    267c:	c31c                	sw	a5,0(a4)
    267e:	3131                	jal	0x228a
    2680:	67a9                	lui	a5,0xa
    2682:	4788                	lw	a0,8(a5)
    2684:	40b2                	lw	ra,12(sp)
    2686:	0ff57513          	zext.b	a0,a0
    268a:	0141                	addi	sp,sp,16
    268c:	8082                	ret

Disassembly of section .text.mt25ql256aba_read_nonvolatile_configuration_register:

0000268e <.text.mt25ql256aba_read_nonvolatile_configuration_register>:
    268e:	1141                	addi	sp,sp,-16
    2690:	800107b7          	lui	a5,0x80010
    2694:	c606                	sw	ra,12(sp)
    2696:	1b578793          	addi	a5,a5,437 # 0x800101b5
    269a:	6729                	lui	a4,0xa
    269c:	c31c                	sw	a5,0(a4)
    269e:	36f5                	jal	0x228a
    26a0:	67a9                	lui	a5,0xa
    26a2:	4788                	lw	a0,8(a5)
    26a4:	40b2                	lw	ra,12(sp)
    26a6:	0542                	slli	a0,a0,0x10
    26a8:	8141                	srli	a0,a0,0x10
    26aa:	0141                	addi	sp,sp,16
    26ac:	8082                	ret

Disassembly of section .text.mt25ql256aba_read_volatile_configuration_register:

000026ae <.text.mt25ql256aba_read_volatile_configuration_register>:
    26ae:	1141                	addi	sp,sp,-16
    26b0:	800007b7          	lui	a5,0x80000
    26b4:	c606                	sw	ra,12(sp)
    26b6:	18578793          	addi	a5,a5,389 # 0x80000185
    26ba:	6729                	lui	a4,0xa
    26bc:	c31c                	sw	a5,0(a4)
    26be:	36f1                	jal	0x228a
    26c0:	67a9                	lui	a5,0xa
    26c2:	4788                	lw	a0,8(a5)
    26c4:	40b2                	lw	ra,12(sp)
    26c6:	0ff57513          	zext.b	a0,a0
    26ca:	0141                	addi	sp,sp,16
    26cc:	8082                	ret

Disassembly of section .text.mt25ql256aba_write_status_register:

000026ce <.text.mt25ql256aba_write_status_register>:
    26ce:	67a9                	lui	a5,0xa
    26d0:	c788                	sw	a0,8(a5)
    26d2:	800007b7          	lui	a5,0x80000
    26d6:	50178793          	addi	a5,a5,1281 # 0x80000501
    26da:	6729                	lui	a4,0xa
    26dc:	c31c                	sw	a5,0(a4)
    26de:	b675                	j	0x228a

Disassembly of section .text.mt25ql256aba_write_nonvolatile_configuration_register:

000026e0 <.text.mt25ql256aba_write_nonvolatile_configuration_register>:
    26e0:	67a9                	lui	a5,0xa
    26e2:	c788                	sw	a0,8(a5)
    26e4:	800107b7          	lui	a5,0x80010
    26e8:	5b178793          	addi	a5,a5,1457 # 0x800105b1
    26ec:	6729                	lui	a4,0xa
    26ee:	c31c                	sw	a5,0(a4)
    26f0:	be69                	j	0x228a

Disassembly of section .text.mt25ql256aba_write_volatile_configuration_register:

000026f2 <.text.mt25ql256aba_write_volatile_configuration_register>:
    26f2:	67a9                	lui	a5,0xa
    26f4:	c788                	sw	a0,8(a5)
    26f6:	800007b7          	lui	a5,0x80000
    26fa:	58178793          	addi	a5,a5,1409 # 0x80000581
    26fe:	6729                	lui	a4,0xa
    2700:	c31c                	sw	a5,0(a4)
    2702:	b661                	j	0x228a

Disassembly of section .text.mt25ql256aba_write_enhanced_volatile_configuration_register:

00002704 <.text.mt25ql256aba_write_enhanced_volatile_configuration_register>:
    2704:	67a9                	lui	a5,0xa
    2706:	c788                	sw	a0,8(a5)
    2708:	800007b7          	lui	a5,0x80000
    270c:	56178793          	addi	a5,a5,1377 # 0x80000561
    2710:	6729                	lui	a4,0xa
    2712:	c31c                	sw	a5,0(a4)
    2714:	be9d                	j	0x228a

Disassembly of section .text.mt25ql256aba_write_disable:

00002716 <.text.mt25ql256aba_write_disable>:
    2716:	bef9                	j	0x22f4

Disassembly of section .text.mt25ql256aba_write_enable:

00002718 <.text.mt25ql256aba_write_enable>:
    2718:	bec1                	j	0x22e8

Disassembly of section .text.mt25ql256aba_reset_enable:

0000271a <.text.mt25ql256aba_reset_enable>:
    271a:	800007b7          	lui	a5,0x80000
    271e:	06678793          	addi	a5,a5,102 # 0x80000066
    2722:	6729                	lui	a4,0xa
    2724:	c31c                	sw	a5,0(a4)
    2726:	b695                	j	0x228a

Disassembly of section .text.mt25ql256aba_reset_memory:

00002728 <.text.mt25ql256aba_reset_memory>:
    2728:	800007b7          	lui	a5,0x80000
    272c:	09978793          	addi	a5,a5,153 # 0x80000099
    2730:	6729                	lui	a4,0xa
    2732:	c31c                	sw	a5,0(a4)
    2734:	be99                	j	0x228a

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

Disassembly of section .text.usb_connected:

00002786 <.text.usb_connected>:
    2786:	67b9                	lui	a5,0xe
    2788:	47c8                	lw	a0,12(a5)
    278a:	8905                	andi	a0,a0,1
    278c:	8082                	ret

Disassembly of section .text.usb_conf:

0000278e <.text.usb_conf>:
    278e:	67b9                	lui	a5,0xe
    2790:	c388                	sw	a0,0(a5)
    2792:	157d                	addi	a0,a0,-1
    2794:	4791                	li	a5,4
    2796:	00a7e763          	bltu	a5,a0,0x27a4
    279a:	6739                	lui	a4,0xe
    279c:	0731                	addi	a4,a4,12 # 0xe00c
    279e:	431c                	lw	a5,0(a4)
    27a0:	8b85                	andi	a5,a5,1
    27a2:	dff5                	beqz	a5,0x279e
    27a4:	8082                	ret

Disassembly of section .text.usb_rw:

000027a6 <.text.usb_rw>:
    27a6:	67b9                	lui	a5,0xe
    27a8:	c788                	sw	a0,8(a5)
    27aa:	67b9                	lui	a5,0xe
    27ac:	07b1                	addi	a5,a5,12 # 0xe00c
    27ae:	4398                	lw	a4,0(a5)
    27b0:	8b09                	andi	a4,a4,2
    27b2:	ff75                	bnez	a4,0x27ae
    27b4:	4705                	li	a4,1
    27b6:	c398                	sw	a4,0(a5)
    27b8:	67b9                	lui	a5,0xe
    27ba:	43c8                	lw	a0,4(a5)
    27bc:	8082                	ret

Disassembly of section .text.gpio_write:

000027be <.text.gpio_write>:
    27be:	67c1                	lui	a5,0x10
    27c0:	c3c8                	sw	a0,4(a5)
    27c2:	8082                	ret

Disassembly of section .text.gpio_read:

000027c4 <.text.gpio_read>:
    27c4:	67c1                	lui	a5,0x10
    27c6:	4388                	lw	a0,0(a5)
    27c8:	0542                	slli	a0,a0,0x10
    27ca:	8141                	srli	a0,a0,0x10
    27cc:	8082                	ret

Disassembly of section .text.instr_mem_write:

000027ce <.text.instr_mem_write>:
    27ce:	050a                	slli	a0,a0,0x2
    27d0:	6791                	lui	a5,0x4
    27d2:	97aa                	add	a5,a5,a0
    27d4:	c38c                	sw	a1,0(a5)
    27d6:	8082                	ret
