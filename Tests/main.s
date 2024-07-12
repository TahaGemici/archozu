
a.out:     file format elf32-littleriscv


Disassembly of section .text:

00002000 <main>:
    2000:	00402583          	lw	a1,4(zero) # 4 <abc>
    2004:	66c1                	lui	a3,0x10
    2006:	4701                	li	a4,0
    2008:	0691                	addi	a3,a3,4 # 10004 <__GNU_EH_FRAME_HDR+0xd580>
    200a:	00002783          	lw	a5,0(zero) # 0 <i>
    200e:	00f74463          	blt	a4,a5,2016 <main+0x16>
    2012:	4501                	li	a0,0
    2014:	8082                	ret
    2016:	97ae                	add	a5,a5,a1
    2018:	0007c783          	lbu	a5,0(a5)
    201c:	0705                	addi	a4,a4,1
    201e:	c29c                	sw	a5,0(a3)
    2020:	b7ed                	j	200a <main+0xa>
	...

00002200 <interrupt>:
    2200:	1141                	addi	sp,sp,-16
    2202:	c43e                	sw	a5,8(sp)
    2204:	6789                	lui	a5,0x2
    2206:	c63a                	sw	a4,12(sp)
    2208:	6b878793          	addi	a5,a5,1720 # 26b8 <instr_mem_write+0xa>
    220c:	00f02223          	sw	a5,4(zero) # 4 <abc>
    2210:	00002783          	lw	a5,0(zero) # 0 <i>
    2214:	0785                	addi	a5,a5,1
    2216:	00f02023          	sw	a5,0(zero) # 0 <i>
    221a:	4732                	lw	a4,12(sp)
    221c:	47a2                	lw	a5,8(sp)
    221e:	0141                	addi	sp,sp,16
    2220:	30200073          	mret

Disassembly of section .text.uart_conf:

00002224 <uart_conf>:
    2224:	6799                	lui	a5,0x6
    2226:	c388                	sw	a0,0(a5)
    2228:	c3cc                	sw	a1,4(a5)
    222a:	8082                	ret

Disassembly of section .text.uart_read:

0000222c <uart_read>:
    222c:	6799                	lui	a5,0x6
    222e:	07c1                	addi	a5,a5,16 # 6010 <__GNU_EH_FRAME_HDR+0x358c>
    2230:	4709                	li	a4,2
    2232:	4394                	lw	a3,0(a5)
    2234:	fee69fe3          	bne	a3,a4,2232 <uart_read+0x6>
    2238:	6719                	lui	a4,0x6
    223a:	4708                	lw	a0,8(a4)
    223c:	0007a023          	sw	zero,0(a5)
    2240:	0ff57513          	zext.b	a0,a0
    2244:	8082                	ret

Disassembly of section .text.uart_write:

00002246 <uart_write>:
    2246:	6799                	lui	a5,0x6
    2248:	c7c8                	sw	a0,12(a5)
    224a:	6799                	lui	a5,0x6
    224c:	4705                	li	a4,1
    224e:	07c1                	addi	a5,a5,16 # 6010 <__GNU_EH_FRAME_HDR+0x358c>
    2250:	c398                	sw	a4,0(a5)
    2252:	4715                	li	a4,5
    2254:	4394                	lw	a3,0(a5)
    2256:	fee69fe3          	bne	a3,a4,2254 <uart_write+0xe>
    225a:	0007a023          	sw	zero,0(a5)
    225e:	8082                	ret

Disassembly of section .text.i2c_conf:

00002260 <i2c_conf>:
    2260:	67a1                	lui	a5,0x8
    2262:	c3c8                	sw	a0,4(a5)
    2264:	8082                	ret

Disassembly of section .text.i2c_write:

00002266 <i2c_write>:
    2266:	67a1                	lui	a5,0x8
    2268:	c38c                	sw	a1,0(a5)
    226a:	c7c8                	sw	a0,12(a5)
    226c:	67a1                	lui	a5,0x8
    226e:	4705                	li	a4,1
    2270:	07c1                	addi	a5,a5,16 # 8010 <__GNU_EH_FRAME_HDR+0x558c>
    2272:	c398                	sw	a4,0(a5)
    2274:	470d                	li	a4,3
    2276:	4394                	lw	a3,0(a5)
    2278:	fee69fe3          	bne	a3,a4,2276 <i2c_write+0x10>
    227c:	0007a023          	sw	zero,0(a5)
    2280:	8082                	ret

Disassembly of section .text.i2c_read:

00002282 <i2c_read>:
    2282:	67a1                	lui	a5,0x8
    2284:	c388                	sw	a0,0(a5)
    2286:	4711                	li	a4,4
    2288:	07c1                	addi	a5,a5,16 # 8010 <__GNU_EH_FRAME_HDR+0x558c>
    228a:	c398                	sw	a4,0(a5)
    228c:	4731                	li	a4,12
    228e:	4394                	lw	a3,0(a5)
    2290:	fee69fe3          	bne	a3,a4,228e <i2c_read+0xc>
    2294:	0007a023          	sw	zero,0(a5)
    2298:	67a1                	lui	a5,0x8
    229a:	4788                	lw	a0,8(a5)
    229c:	8082                	ret

Disassembly of section .text.s25fl128s_wren:

0000229e <s25fl128s_wren>:
    229e:	800007b7          	lui	a5,0x80000
    22a2:	0799                	addi	a5,a5,6 # 80000006 <__GNU_EH_FRAME_HDR+0x7fffd582>
    22a4:	6729                	lui	a4,0xa
    22a6:	c31c                	sw	a5,0(a4)
    22a8:	67a9                	lui	a5,0xa
    22aa:	02878793          	addi	a5,a5,40 # a028 <__GNU_EH_FRAME_HDR+0x75a4>
    22ae:	4705                	li	a4,1
    22b0:	4394                	lw	a3,0(a5)
    22b2:	fee69fe3          	bne	a3,a4,22b0 <s25fl128s_wren+0x12>
    22b6:	8082                	ret

Disassembly of section .text.s25fl128s_wrdi:

000022b8 <s25fl128s_wrdi>:
    22b8:	800007b7          	lui	a5,0x80000
    22bc:	0791                	addi	a5,a5,4 # 80000004 <__GNU_EH_FRAME_HDR+0x7fffd580>
    22be:	6729                	lui	a4,0xa
    22c0:	c31c                	sw	a5,0(a4)
    22c2:	67a9                	lui	a5,0xa
    22c4:	02878793          	addi	a5,a5,40 # a028 <__GNU_EH_FRAME_HDR+0x75a4>
    22c8:	4705                	li	a4,1
    22ca:	4394                	lw	a3,0(a5)
    22cc:	fee69fe3          	bne	a3,a4,22ca <s25fl128s_wrdi+0x12>
    22d0:	8082                	ret

Disassembly of section .text.s25fl128s_clsr:

000022d2 <s25fl128s_clsr>:
    22d2:	800007b7          	lui	a5,0x80000
    22d6:	03078793          	addi	a5,a5,48 # 80000030 <__GNU_EH_FRAME_HDR+0x7fffd5ac>
    22da:	6729                	lui	a4,0xa
    22dc:	c31c                	sw	a5,0(a4)
    22de:	67a9                	lui	a5,0xa
    22e0:	02878793          	addi	a5,a5,40 # a028 <__GNU_EH_FRAME_HDR+0x75a4>
    22e4:	4705                	li	a4,1
    22e6:	4394                	lw	a3,0(a5)
    22e8:	fee69fe3          	bne	a3,a4,22e6 <s25fl128s_clsr+0x14>
    22ec:	8082                	ret

Disassembly of section .text.s25fl128s_reset:

000022ee <s25fl128s_reset>:
    22ee:	800007b7          	lui	a5,0x80000
    22f2:	0f078793          	addi	a5,a5,240 # 800000f0 <__GNU_EH_FRAME_HDR+0x7fffd66c>
    22f6:	6729                	lui	a4,0xa
    22f8:	c31c                	sw	a5,0(a4)
    22fa:	67a9                	lui	a5,0xa
    22fc:	02878793          	addi	a5,a5,40 # a028 <__GNU_EH_FRAME_HDR+0x75a4>
    2300:	4705                	li	a4,1
    2302:	4394                	lw	a3,0(a5)
    2304:	fee69fe3          	bne	a3,a4,2302 <s25fl128s_reset+0x14>
    2308:	8082                	ret

Disassembly of section .text.s25fl128s_rdid:

0000230a <s25fl128s_rdid>:
    230a:	fff58793          	addi	a5,a1,-1
    230e:	80000737          	lui	a4,0x80000
    2312:	19f70713          	addi	a4,a4,415 # 8000019f <__GNU_EH_FRAME_HDR+0x7fffd71b>
    2316:	07c2                	slli	a5,a5,0x10
    2318:	97ba                	add	a5,a5,a4
    231a:	6729                	lui	a4,0xa
    231c:	c31c                	sw	a5,0(a4)
    231e:	67a9                	lui	a5,0xa
    2320:	02878793          	addi	a5,a5,40 # a028 <__GNU_EH_FRAME_HDR+0x75a4>
    2324:	4705                	li	a4,1
    2326:	4394                	lw	a3,0(a5)
    2328:	fee69fe3          	bne	a3,a4,2326 <s25fl128s_rdid+0x1c>
    232c:	058d                	addi	a1,a1,3
    232e:	6729                	lui	a4,0xa
    2330:	99f1                	andi	a1,a1,-4
    2332:	4781                	li	a5,0
    2334:	0721                	addi	a4,a4,8 # a008 <__GNU_EH_FRAME_HDR+0x7584>
    2336:	00b79363          	bne	a5,a1,233c <s25fl128s_rdid+0x32>
    233a:	8082                	ret
    233c:	00e786b3          	add	a3,a5,a4
    2340:	4290                	lw	a2,0(a3)
    2342:	00f506b3          	add	a3,a0,a5
    2346:	0791                	addi	a5,a5,4
    2348:	c290                	sw	a2,0(a3)
    234a:	b7f5                	j	2336 <s25fl128s_rdid+0x2c>

Disassembly of section .text.s25fl128s_rdsr1:

0000234c <s25fl128s_rdsr1>:
    234c:	800007b7          	lui	a5,0x80000
    2350:	10578793          	addi	a5,a5,261 # 80000105 <__GNU_EH_FRAME_HDR+0x7fffd681>
    2354:	6729                	lui	a4,0xa
    2356:	c31c                	sw	a5,0(a4)
    2358:	67a9                	lui	a5,0xa
    235a:	02878793          	addi	a5,a5,40 # a028 <__GNU_EH_FRAME_HDR+0x75a4>
    235e:	4705                	li	a4,1
    2360:	4394                	lw	a3,0(a5)
    2362:	fee69fe3          	bne	a3,a4,2360 <s25fl128s_rdsr1+0x14>
    2366:	67a9                	lui	a5,0xa
    2368:	4788                	lw	a0,8(a5)
    236a:	0ff57513          	zext.b	a0,a0
    236e:	8082                	ret

Disassembly of section .text.s25fl128s_rdsr2:

00002370 <s25fl128s_rdsr2>:
    2370:	800007b7          	lui	a5,0x80000
    2374:	10778793          	addi	a5,a5,263 # 80000107 <__GNU_EH_FRAME_HDR+0x7fffd683>
    2378:	6729                	lui	a4,0xa
    237a:	c31c                	sw	a5,0(a4)
    237c:	67a9                	lui	a5,0xa
    237e:	02878793          	addi	a5,a5,40 # a028 <__GNU_EH_FRAME_HDR+0x75a4>
    2382:	4705                	li	a4,1
    2384:	4394                	lw	a3,0(a5)
    2386:	fee69fe3          	bne	a3,a4,2384 <s25fl128s_rdsr2+0x14>
    238a:	67a9                	lui	a5,0xa
    238c:	4788                	lw	a0,8(a5)
    238e:	0ff57513          	zext.b	a0,a0
    2392:	8082                	ret

Disassembly of section .text.s25fl128s_rdcr:

00002394 <s25fl128s_rdcr>:
    2394:	800007b7          	lui	a5,0x80000
    2398:	13578793          	addi	a5,a5,309 # 80000135 <__GNU_EH_FRAME_HDR+0x7fffd6b1>
    239c:	6729                	lui	a4,0xa
    239e:	c31c                	sw	a5,0(a4)
    23a0:	67a9                	lui	a5,0xa
    23a2:	02878793          	addi	a5,a5,40 # a028 <__GNU_EH_FRAME_HDR+0x75a4>
    23a6:	4705                	li	a4,1
    23a8:	4394                	lw	a3,0(a5)
    23aa:	fee69fe3          	bne	a3,a4,23a8 <s25fl128s_rdcr+0x14>
    23ae:	67a9                	lui	a5,0xa
    23b0:	4788                	lw	a0,8(a5)
    23b2:	0ff57513          	zext.b	a0,a0
    23b6:	8082                	ret

Disassembly of section .text.s25fl128s_read_id:

000023b8 <s25fl128s_read_id>:
    23b8:	67a9                	lui	a5,0xa
    23ba:	c3c8                	sw	a0,4(a5)
    23bc:	800127b7          	lui	a5,0x80012
    23c0:	99078793          	addi	a5,a5,-1648 # 80011990 <__GNU_EH_FRAME_HDR+0x8000ef0c>
    23c4:	6729                	lui	a4,0xa
    23c6:	c31c                	sw	a5,0(a4)
    23c8:	67a9                	lui	a5,0xa
    23ca:	02878793          	addi	a5,a5,40 # a028 <__GNU_EH_FRAME_HDR+0x75a4>
    23ce:	4705                	li	a4,1
    23d0:	4394                	lw	a3,0(a5)
    23d2:	fee69fe3          	bne	a3,a4,23d0 <s25fl128s_read_id+0x18>
    23d6:	67a9                	lui	a5,0xa
    23d8:	4788                	lw	a0,8(a5)
    23da:	0542                	slli	a0,a0,0x10
    23dc:	8141                	srli	a0,a0,0x10
    23de:	8082                	ret

Disassembly of section .text.s25fl128s_res:

000023e0 <s25fl128s_res>:
    23e0:	800027b7          	lui	a5,0x80002
    23e4:	9ab78793          	addi	a5,a5,-1621 # 800019ab <__GNU_EH_FRAME_HDR+0x7fffef27>
    23e8:	6729                	lui	a4,0xa
    23ea:	c31c                	sw	a5,0(a4)
    23ec:	67a9                	lui	a5,0xa
    23ee:	02878793          	addi	a5,a5,40 # a028 <__GNU_EH_FRAME_HDR+0x75a4>
    23f2:	4705                	li	a4,1
    23f4:	4394                	lw	a3,0(a5)
    23f6:	fee69fe3          	bne	a3,a4,23f4 <s25fl128s_res+0x14>
    23fa:	67a9                	lui	a5,0xa
    23fc:	4788                	lw	a0,8(a5)
    23fe:	0ff57513          	zext.b	a0,a0
    2402:	8082                	ret

Disassembly of section .text.s25fl128s_wrr:

00002404 <s25fl128s_wrr>:
    2404:	67a9                	lui	a5,0xa
    2406:	c788                	sw	a0,8(a5)
    2408:	800107b7          	lui	a5,0x80010
    240c:	50178793          	addi	a5,a5,1281 # 80010501 <__GNU_EH_FRAME_HDR+0x8000da7d>
    2410:	6729                	lui	a4,0xa
    2412:	c31c                	sw	a5,0(a4)
    2414:	67a9                	lui	a5,0xa
    2416:	02878793          	addi	a5,a5,40 # a028 <__GNU_EH_FRAME_HDR+0x75a4>
    241a:	4705                	li	a4,1
    241c:	4394                	lw	a3,0(a5)
    241e:	fee69fe3          	bne	a3,a4,241c <s25fl128s_wrr+0x18>
    2422:	8082                	ret

Disassembly of section .text.s25fl128s_read:

00002424 <s25fl128s_read>:
    2424:	fff60793          	addi	a5,a2,-1
    2428:	80002737          	lui	a4,0x80002
    242c:	90370713          	addi	a4,a4,-1789 # 80001903 <__GNU_EH_FRAME_HDR+0x7fffee7f>
    2430:	07c2                	slli	a5,a5,0x10
    2432:	97ba                	add	a5,a5,a4
    2434:	6729                	lui	a4,0xa
    2436:	c348                	sw	a0,4(a4)
    2438:	6729                	lui	a4,0xa
    243a:	c31c                	sw	a5,0(a4)
    243c:	67a9                	lui	a5,0xa
    243e:	02878793          	addi	a5,a5,40 # a028 <__GNU_EH_FRAME_HDR+0x75a4>
    2442:	4705                	li	a4,1
    2444:	4394                	lw	a3,0(a5)
    2446:	fee69fe3          	bne	a3,a4,2444 <s25fl128s_read+0x20>
    244a:	060d                	addi	a2,a2,3
    244c:	6729                	lui	a4,0xa
    244e:	9a71                	andi	a2,a2,-4
    2450:	4781                	li	a5,0
    2452:	0721                	addi	a4,a4,8 # a008 <__GNU_EH_FRAME_HDR+0x7584>
    2454:	00c79363          	bne	a5,a2,245a <s25fl128s_read+0x36>
    2458:	8082                	ret
    245a:	00e786b3          	add	a3,a5,a4
    245e:	4288                	lw	a0,0(a3)
    2460:	00f586b3          	add	a3,a1,a5
    2464:	0791                	addi	a5,a5,4
    2466:	c288                	sw	a0,0(a3)
    2468:	b7f5                	j	2454 <s25fl128s_read+0x30>

Disassembly of section .text.s25fl128s_pp:

0000246a <s25fl128s_pp>:
    246a:	fff60793          	addi	a5,a2,-1
    246e:	80002737          	lui	a4,0x80002
    2472:	d0270713          	addi	a4,a4,-766 # 80001d02 <__GNU_EH_FRAME_HDR+0x7ffff27e>
    2476:	07c2                	slli	a5,a5,0x10
    2478:	97ba                	add	a5,a5,a4
    247a:	060d                	addi	a2,a2,3
    247c:	6729                	lui	a4,0xa
    247e:	66a9                	lui	a3,0xa
    2480:	c348                	sw	a0,4(a4)
    2482:	9a71                	andi	a2,a2,-4
    2484:	4701                	li	a4,0
    2486:	06a1                	addi	a3,a3,8 # a008 <__GNU_EH_FRAME_HDR+0x7584>
    2488:	00c71c63          	bne	a4,a2,24a0 <s25fl128s_pp+0x36>
    248c:	6729                	lui	a4,0xa
    248e:	c31c                	sw	a5,0(a4)
    2490:	67a9                	lui	a5,0xa
    2492:	02878793          	addi	a5,a5,40 # a028 <__GNU_EH_FRAME_HDR+0x75a4>
    2496:	4705                	li	a4,1
    2498:	4394                	lw	a3,0(a5)
    249a:	fee69fe3          	bne	a3,a4,2498 <s25fl128s_pp+0x2e>
    249e:	8082                	ret
    24a0:	00e58833          	add	a6,a1,a4
    24a4:	00082803          	lw	a6,0(a6)
    24a8:	00d70533          	add	a0,a4,a3
    24ac:	0711                	addi	a4,a4,4 # a004 <__GNU_EH_FRAME_HDR+0x7580>
    24ae:	01052023          	sw	a6,0(a0)
    24b2:	bfd9                	j	2488 <s25fl128s_pp+0x1e>

Disassembly of section .text.s25fl128s_se:

000024b4 <s25fl128s_se>:
    24b4:	67a9                	lui	a5,0xa
    24b6:	c788                	sw	a0,8(a5)
    24b8:	800207b7          	lui	a5,0x80020
    24bc:	5d878793          	addi	a5,a5,1496 # 800205d8 <__GNU_EH_FRAME_HDR+0x8001db54>
    24c0:	6729                	lui	a4,0xa
    24c2:	c31c                	sw	a5,0(a4)
    24c4:	67a9                	lui	a5,0xa
    24c6:	02878793          	addi	a5,a5,40 # a028 <__GNU_EH_FRAME_HDR+0x75a4>
    24ca:	4705                	li	a4,1
    24cc:	4394                	lw	a3,0(a5)
    24ce:	fee69fe3          	bne	a3,a4,24cc <s25fl128s_se+0x18>
    24d2:	8082                	ret

Disassembly of section .text.s25fl128s_dor:

000024d4 <s25fl128s_dor>:
    24d4:	fff60793          	addi	a5,a2,-1
    24d8:	80002737          	lui	a4,0x80002
    24dc:	23b70713          	addi	a4,a4,571 # 8000223b <__GNU_EH_FRAME_HDR+0x7ffff7b7>
    24e0:	07c2                	slli	a5,a5,0x10
    24e2:	97ba                	add	a5,a5,a4
    24e4:	6729                	lui	a4,0xa
    24e6:	c348                	sw	a0,4(a4)
    24e8:	6729                	lui	a4,0xa
    24ea:	c31c                	sw	a5,0(a4)
    24ec:	67a9                	lui	a5,0xa
    24ee:	02878793          	addi	a5,a5,40 # a028 <__GNU_EH_FRAME_HDR+0x75a4>
    24f2:	4705                	li	a4,1
    24f4:	4394                	lw	a3,0(a5)
    24f6:	fee69fe3          	bne	a3,a4,24f4 <s25fl128s_dor+0x20>
    24fa:	060d                	addi	a2,a2,3
    24fc:	6729                	lui	a4,0xa
    24fe:	9a71                	andi	a2,a2,-4
    2500:	4781                	li	a5,0
    2502:	0721                	addi	a4,a4,8 # a008 <__GNU_EH_FRAME_HDR+0x7584>
    2504:	00c79363          	bne	a5,a2,250a <s25fl128s_dor+0x36>
    2508:	8082                	ret
    250a:	00e786b3          	add	a3,a5,a4
    250e:	4288                	lw	a0,0(a3)
    2510:	00f586b3          	add	a3,a1,a5
    2514:	0791                	addi	a5,a5,4
    2516:	c288                	sw	a0,0(a3)
    2518:	b7f5                	j	2504 <s25fl128s_dor+0x30>

Disassembly of section .text.s25fl128s_qor:

0000251a <s25fl128s_qor>:
    251a:	fff60793          	addi	a5,a2,-1
    251e:	80002737          	lui	a4,0x80002
    2522:	36b70713          	addi	a4,a4,875 # 8000236b <__GNU_EH_FRAME_HDR+0x7ffff8e7>
    2526:	07c2                	slli	a5,a5,0x10
    2528:	97ba                	add	a5,a5,a4
    252a:	6729                	lui	a4,0xa
    252c:	c348                	sw	a0,4(a4)
    252e:	6729                	lui	a4,0xa
    2530:	c31c                	sw	a5,0(a4)
    2532:	67a9                	lui	a5,0xa
    2534:	02878793          	addi	a5,a5,40 # a028 <__GNU_EH_FRAME_HDR+0x75a4>
    2538:	4705                	li	a4,1
    253a:	4394                	lw	a3,0(a5)
    253c:	fee69fe3          	bne	a3,a4,253a <s25fl128s_qor+0x20>
    2540:	060d                	addi	a2,a2,3
    2542:	6729                	lui	a4,0xa
    2544:	9a71                	andi	a2,a2,-4
    2546:	4781                	li	a5,0
    2548:	0721                	addi	a4,a4,8 # a008 <__GNU_EH_FRAME_HDR+0x7584>
    254a:	00c79363          	bne	a5,a2,2550 <s25fl128s_qor+0x36>
    254e:	8082                	ret
    2550:	00e786b3          	add	a3,a5,a4
    2554:	4288                	lw	a0,0(a3)
    2556:	00f586b3          	add	a3,a1,a5
    255a:	0791                	addi	a5,a5,4
    255c:	c288                	sw	a0,0(a3)
    255e:	b7f5                	j	254a <s25fl128s_qor+0x30>

Disassembly of section .text.s25fl128s_qpp:

00002560 <s25fl128s_qpp>:
    2560:	fff60793          	addi	a5,a2,-1
    2564:	80002737          	lui	a4,0x80002
    2568:	f3270713          	addi	a4,a4,-206 # 80001f32 <__GNU_EH_FRAME_HDR+0x7ffff4ae>
    256c:	07c2                	slli	a5,a5,0x10
    256e:	97ba                	add	a5,a5,a4
    2570:	6729                	lui	a4,0xa
    2572:	c348                	sw	a0,4(a4)
    2574:	060d                	addi	a2,a2,3
    2576:	6729                	lui	a4,0xa
    2578:	c31c                	sw	a5,0(a4)
    257a:	9a71                	andi	a2,a2,-4
    257c:	4781                	li	a5,0
    257e:	0721                	addi	a4,a4,8 # a008 <__GNU_EH_FRAME_HDR+0x7584>
    2580:	00c79a63          	bne	a5,a2,2594 <s25fl128s_qpp+0x34>
    2584:	67a9                	lui	a5,0xa
    2586:	02878793          	addi	a5,a5,40 # a028 <__GNU_EH_FRAME_HDR+0x75a4>
    258a:	4705                	li	a4,1
    258c:	4394                	lw	a3,0(a5)
    258e:	fee69fe3          	bne	a3,a4,258c <s25fl128s_qpp+0x2c>
    2592:	8082                	ret
    2594:	00f58533          	add	a0,a1,a5
    2598:	4108                	lw	a0,0(a0)
    259a:	00e786b3          	add	a3,a5,a4
    259e:	0791                	addi	a5,a5,4
    25a0:	c288                	sw	a0,0(a3)
    25a2:	bff9                	j	2580 <s25fl128s_qpp+0x20>

Disassembly of section .text.qspi_custom_write:

000025a4 <qspi_custom_write>:
    25a4:	800008b7          	lui	a7,0x80000
    25a8:	0866                	slli	a6,a6,0x19
    25aa:	40088893          	addi	a7,a7,1024 # 80000400 <__GNU_EH_FRAME_HDR+0x7fffd97c>
    25ae:	072e                	slli	a4,a4,0xb
    25b0:	9846                	add	a6,a6,a7
    25b2:	983a                	add	a6,a6,a4
    25b4:	fff78713          	addi	a4,a5,-1
    25b8:	0742                	slli	a4,a4,0x10
    25ba:	983a                	add	a6,a6,a4
    25bc:	06a2                	slli	a3,a3,0x8
    25be:	9836                	add	a6,a6,a3
    25c0:	6729                	lui	a4,0xa
    25c2:	0ff67613          	zext.b	a2,a2
    25c6:	078d                	addi	a5,a5,3
    25c8:	66a9                	lui	a3,0xa
    25ca:	c348                	sw	a0,4(a4)
    25cc:	9832                	add	a6,a6,a2
    25ce:	9bf1                	andi	a5,a5,-4
    25d0:	4701                	li	a4,0
    25d2:	06a1                	addi	a3,a3,8 # a008 <__GNU_EH_FRAME_HDR+0x7584>
    25d4:	00e79c63          	bne	a5,a4,25ec <qspi_custom_write+0x48>
    25d8:	67a9                	lui	a5,0xa
    25da:	0107a023          	sw	a6,0(a5) # a000 <__GNU_EH_FRAME_HDR+0x757c>
    25de:	4705                	li	a4,1
    25e0:	02878793          	addi	a5,a5,40
    25e4:	4394                	lw	a3,0(a5)
    25e6:	fee69fe3          	bne	a3,a4,25e4 <qspi_custom_write+0x40>
    25ea:	8082                	ret
    25ec:	00e58533          	add	a0,a1,a4
    25f0:	4108                	lw	a0,0(a0)
    25f2:	00d70633          	add	a2,a4,a3
    25f6:	0711                	addi	a4,a4,4 # a004 <__GNU_EH_FRAME_HDR+0x7580>
    25f8:	c208                	sw	a0,0(a2)
    25fa:	bfe9                	j	25d4 <qspi_custom_write+0x30>

Disassembly of section .text.qspi_custom_read:

000025fc <qspi_custom_read>:
    25fc:	0866                	slli	a6,a6,0x19
    25fe:	800008b7          	lui	a7,0x80000
    2602:	072e                	slli	a4,a4,0xb
    2604:	9846                	add	a6,a6,a7
    2606:	983a                	add	a6,a6,a4
    2608:	fff78713          	addi	a4,a5,-1
    260c:	0742                	slli	a4,a4,0x10
    260e:	983a                	add	a6,a6,a4
    2610:	06a2                	slli	a3,a3,0x8
    2612:	9836                	add	a6,a6,a3
    2614:	6729                	lui	a4,0xa
    2616:	0ff67613          	zext.b	a2,a2
    261a:	c348                	sw	a0,4(a4)
    261c:	9832                	add	a6,a6,a2
    261e:	6729                	lui	a4,0xa
    2620:	01072023          	sw	a6,0(a4) # a000 <__GNU_EH_FRAME_HDR+0x757c>
    2624:	4685                	li	a3,1
    2626:	02870713          	addi	a4,a4,40
    262a:	4310                	lw	a2,0(a4)
    262c:	fed61fe3          	bne	a2,a3,262a <qspi_custom_read+0x2e>
    2630:	078d                	addi	a5,a5,3
    2632:	66a9                	lui	a3,0xa
    2634:	9bf1                	andi	a5,a5,-4
    2636:	4701                	li	a4,0
    2638:	06a1                	addi	a3,a3,8 # a008 <__GNU_EH_FRAME_HDR+0x7584>
    263a:	00e79363          	bne	a5,a4,2640 <qspi_custom_read+0x44>
    263e:	8082                	ret
    2640:	00d70633          	add	a2,a4,a3
    2644:	4208                	lw	a0,0(a2)
    2646:	00e58633          	add	a2,a1,a4
    264a:	0711                	addi	a4,a4,4
    264c:	c208                	sw	a0,0(a2)
    264e:	b7f5                	j	263a <qspi_custom_read+0x3e>

Disassembly of section .text.timer_read_counter:

00002650 <timer_read_counter>:
    2650:	67b1                	lui	a5,0xc
    2652:	4bc8                	lw	a0,20(a5)
    2654:	8082                	ret

Disassembly of section .text.timer_read_event:

00002656 <timer_read_event>:
    2656:	67b1                	lui	a5,0xc
    2658:	4f88                	lw	a0,24(a5)
    265a:	8082                	ret

Disassembly of section .text.timer_clear_counter:

0000265c <timer_clear_counter>:
    265c:	67b1                	lui	a5,0xc
    265e:	4705                	li	a4,1
    2660:	c798                	sw	a4,8(a5)
    2662:	8082                	ret

Disassembly of section .text.timer_clear_event:

00002664 <timer_clear_event>:
    2664:	67b1                	lui	a5,0xc
    2666:	4705                	li	a4,1
    2668:	cfd8                	sw	a4,28(a5)
    266a:	8082                	ret

Disassembly of section .text.timer_enable:

0000266c <timer_enable>:
    266c:	67b1                	lui	a5,0xc
    266e:	4705                	li	a4,1
    2670:	c7d8                	sw	a4,12(a5)
    2672:	8082                	ret

Disassembly of section .text.timer_disable:

00002674 <timer_disable>:
    2674:	67b1                	lui	a5,0xc
    2676:	0007a623          	sw	zero,12(a5) # c00c <__GNU_EH_FRAME_HDR+0x9588>
    267a:	8082                	ret

Disassembly of section .text.timer_conf:

0000267c <timer_conf>:
    267c:	67b1                	lui	a5,0xc
    267e:	c388                	sw	a0,0(a5)
    2680:	c3cc                	sw	a1,4(a5)
    2682:	67b1                	lui	a5,0xc
    2684:	cb90                	sw	a2,16(a5)
    2686:	08000513          	li	a0,128
    268a:	6589                	lui	a1,0x2
    268c:	20058593          	addi	a1,a1,512 # 2200 <interrupt>
    2690:	30559073          	csrw	mtvec,a1
    2694:	30046073          	csrsi	mstatus,8
    2698:	30452073          	csrs	mie,a0
    269c:	8082                	ret

Disassembly of section .text.gpio_write:

0000269e <gpio_write>:
    269e:	67c1                	lui	a5,0x10
    26a0:	c3c8                	sw	a0,4(a5)
    26a2:	8082                	ret

Disassembly of section .text.gpio_read:

000026a4 <gpio_read>:
    26a4:	67c1                	lui	a5,0x10
    26a6:	4388                	lw	a0,0(a5)
    26a8:	0542                	slli	a0,a0,0x10
    26aa:	8141                	srli	a0,a0,0x10
    26ac:	8082                	ret

Disassembly of section .text.instr_mem_write:

000026ae <instr_mem_write>:
    26ae:	050a                	slli	a0,a0,0x2
    26b0:	6791                	lui	a5,0x4
    26b2:	97aa                	add	a5,a5,a0
    26b4:	c38c                	sw	a1,0(a5)
    26b6:	8082                	ret
