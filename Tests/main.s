
a.out:     file format elf32-littleriscv


Disassembly of section .text:

00002000 <main>:
    2000:	1141                	addi	sp,sp,-16
    2002:	4605                	li	a2,1
    2004:	3e800593          	li	a1,1000
    2008:	4509                	li	a0,2
    200a:	c606                	sw	ra,12(sp)
    200c:	2b9d                	jal	2582 <timer_conf>
    200e:	67b1                	lui	a5,0xc
    2010:	4705                	li	a4,1
    2012:	c7d8                	sw	a4,12(a5)
    2014:	67c1                	lui	a5,0x10
    2016:	0791                	addi	a5,a5,4 # 10004 <__GNU_EH_FRAME_HDR+0xd5f8>
    2018:	4771                	li	a4,28
    201a:	c398                	sw	a4,0(a5)
    201c:	bffd                	j	201a <main+0x1a>
	...

00002100 <interrupt>:
    2100:	1141                	addi	sp,sp,-16
    2102:	c63a                	sw	a4,12(sp)
    2104:	c43e                	sw	a5,8(sp)
    2106:	07b00713          	li	a4,123
    210a:	67c1                	lui	a5,0x10
    210c:	c3d8                	sw	a4,4(a5)
    210e:	4732                	lw	a4,12(sp)
    2110:	47a2                	lw	a5,8(sp)
    2112:	0141                	addi	sp,sp,16
    2114:	30200073          	mret

Disassembly of section .text.uart_conf:

00002118 <uart_conf>:
    2118:	6799                	lui	a5,0x6
    211a:	c388                	sw	a0,0(a5)
    211c:	c3cc                	sw	a1,4(a5)
    211e:	8082                	ret

Disassembly of section .text.uart_read:

00002120 <uart_read>:
    2120:	6799                	lui	a5,0x6
    2122:	07c1                	addi	a5,a5,16 # 6010 <__GNU_EH_FRAME_HDR+0x3604>
    2124:	4709                	li	a4,2
    2126:	4394                	lw	a3,0(a5)
    2128:	fee69fe3          	bne	a3,a4,2126 <uart_read+0x6>
    212c:	6719                	lui	a4,0x6
    212e:	4708                	lw	a0,8(a4)
    2130:	0007a023          	sw	zero,0(a5)
    2134:	0ff57513          	zext.b	a0,a0
    2138:	8082                	ret

Disassembly of section .text.uart_write:

0000213a <uart_write>:
    213a:	6799                	lui	a5,0x6
    213c:	c7c8                	sw	a0,12(a5)
    213e:	6799                	lui	a5,0x6
    2140:	4705                	li	a4,1
    2142:	07c1                	addi	a5,a5,16 # 6010 <__GNU_EH_FRAME_HDR+0x3604>
    2144:	c398                	sw	a4,0(a5)
    2146:	4715                	li	a4,5
    2148:	4394                	lw	a3,0(a5)
    214a:	fee69fe3          	bne	a3,a4,2148 <uart_write+0xe>
    214e:	0007a023          	sw	zero,0(a5)
    2152:	8082                	ret

Disassembly of section .text.i2c_conf:

00002154 <i2c_conf>:
    2154:	67a1                	lui	a5,0x8
    2156:	c3c8                	sw	a0,4(a5)
    2158:	8082                	ret

Disassembly of section .text.i2c_write:

0000215a <i2c_write>:
    215a:	67a1                	lui	a5,0x8
    215c:	c38c                	sw	a1,0(a5)
    215e:	c7c8                	sw	a0,12(a5)
    2160:	67a1                	lui	a5,0x8
    2162:	4705                	li	a4,1
    2164:	07c1                	addi	a5,a5,16 # 8010 <__GNU_EH_FRAME_HDR+0x5604>
    2166:	c398                	sw	a4,0(a5)
    2168:	470d                	li	a4,3
    216a:	4394                	lw	a3,0(a5)
    216c:	fee69fe3          	bne	a3,a4,216a <i2c_write+0x10>
    2170:	0007a023          	sw	zero,0(a5)
    2174:	8082                	ret

Disassembly of section .text.i2c_read:

00002176 <i2c_read>:
    2176:	67a1                	lui	a5,0x8
    2178:	c388                	sw	a0,0(a5)
    217a:	4711                	li	a4,4
    217c:	07c1                	addi	a5,a5,16 # 8010 <__GNU_EH_FRAME_HDR+0x5604>
    217e:	c398                	sw	a4,0(a5)
    2180:	4731                	li	a4,12
    2182:	4394                	lw	a3,0(a5)
    2184:	fee69fe3          	bne	a3,a4,2182 <i2c_read+0xc>
    2188:	0007a023          	sw	zero,0(a5)
    218c:	67a1                	lui	a5,0x8
    218e:	4788                	lw	a0,8(a5)
    2190:	8082                	ret

Disassembly of section .text.s25fl128s_wren:

00002192 <s25fl128s_wren>:
    2192:	800007b7          	lui	a5,0x80000
    2196:	0799                	addi	a5,a5,6 # 80000006 <__GNU_EH_FRAME_HDR+0x7fffd5fa>
    2198:	6729                	lui	a4,0xa
    219a:	c31c                	sw	a5,0(a4)
    219c:	67a9                	lui	a5,0xa
    219e:	02878793          	addi	a5,a5,40 # a028 <__GNU_EH_FRAME_HDR+0x761c>
    21a2:	4705                	li	a4,1
    21a4:	4394                	lw	a3,0(a5)
    21a6:	fee69fe3          	bne	a3,a4,21a4 <s25fl128s_wren+0x12>
    21aa:	8082                	ret

Disassembly of section .text.s25fl128s_wrdi:

000021ac <s25fl128s_wrdi>:
    21ac:	800007b7          	lui	a5,0x80000
    21b0:	0791                	addi	a5,a5,4 # 80000004 <__GNU_EH_FRAME_HDR+0x7fffd5f8>
    21b2:	6729                	lui	a4,0xa
    21b4:	c31c                	sw	a5,0(a4)
    21b6:	67a9                	lui	a5,0xa
    21b8:	02878793          	addi	a5,a5,40 # a028 <__GNU_EH_FRAME_HDR+0x761c>
    21bc:	4705                	li	a4,1
    21be:	4394                	lw	a3,0(a5)
    21c0:	fee69fe3          	bne	a3,a4,21be <s25fl128s_wrdi+0x12>
    21c4:	8082                	ret

Disassembly of section .text.s25fl128s_clsr:

000021c6 <s25fl128s_clsr>:
    21c6:	800007b7          	lui	a5,0x80000
    21ca:	03078793          	addi	a5,a5,48 # 80000030 <__GNU_EH_FRAME_HDR+0x7fffd624>
    21ce:	6729                	lui	a4,0xa
    21d0:	c31c                	sw	a5,0(a4)
    21d2:	67a9                	lui	a5,0xa
    21d4:	02878793          	addi	a5,a5,40 # a028 <__GNU_EH_FRAME_HDR+0x761c>
    21d8:	4705                	li	a4,1
    21da:	4394                	lw	a3,0(a5)
    21dc:	fee69fe3          	bne	a3,a4,21da <s25fl128s_clsr+0x14>
    21e0:	8082                	ret

Disassembly of section .text.s25fl128s_reset:

000021e2 <s25fl128s_reset>:
    21e2:	800007b7          	lui	a5,0x80000
    21e6:	0f078793          	addi	a5,a5,240 # 800000f0 <__GNU_EH_FRAME_HDR+0x7fffd6e4>
    21ea:	6729                	lui	a4,0xa
    21ec:	c31c                	sw	a5,0(a4)
    21ee:	67a9                	lui	a5,0xa
    21f0:	02878793          	addi	a5,a5,40 # a028 <__GNU_EH_FRAME_HDR+0x761c>
    21f4:	4705                	li	a4,1
    21f6:	4394                	lw	a3,0(a5)
    21f8:	fee69fe3          	bne	a3,a4,21f6 <s25fl128s_reset+0x14>
    21fc:	8082                	ret

Disassembly of section .text.s25fl128s_rdid:

000021fe <s25fl128s_rdid>:
    21fe:	fff58793          	addi	a5,a1,-1
    2202:	80000737          	lui	a4,0x80000
    2206:	19f70713          	addi	a4,a4,415 # 8000019f <__GNU_EH_FRAME_HDR+0x7fffd793>
    220a:	07c2                	slli	a5,a5,0x10
    220c:	97ba                	add	a5,a5,a4
    220e:	6729                	lui	a4,0xa
    2210:	c31c                	sw	a5,0(a4)
    2212:	67a9                	lui	a5,0xa
    2214:	02878793          	addi	a5,a5,40 # a028 <__GNU_EH_FRAME_HDR+0x761c>
    2218:	4705                	li	a4,1
    221a:	4394                	lw	a3,0(a5)
    221c:	fee69fe3          	bne	a3,a4,221a <s25fl128s_rdid+0x1c>
    2220:	058d                	addi	a1,a1,3
    2222:	66a9                	lui	a3,0xa
    2224:	8589                	srai	a1,a1,0x2
    2226:	4781                	li	a5,0
    2228:	06a1                	addi	a3,a3,8 # a008 <__GNU_EH_FRAME_HDR+0x75fc>
    222a:	00b7c363          	blt	a5,a1,2230 <s25fl128s_rdid+0x32>
    222e:	8082                	ret
    2230:	00279713          	slli	a4,a5,0x2
    2234:	00d70633          	add	a2,a4,a3
    2238:	4210                	lw	a2,0(a2)
    223a:	972a                	add	a4,a4,a0
    223c:	0785                	addi	a5,a5,1
    223e:	c310                	sw	a2,0(a4)
    2240:	b7ed                	j	222a <s25fl128s_rdid+0x2c>

Disassembly of section .text.s25fl128s_rdsr1:

00002242 <s25fl128s_rdsr1>:
    2242:	800007b7          	lui	a5,0x80000
    2246:	10578793          	addi	a5,a5,261 # 80000105 <__GNU_EH_FRAME_HDR+0x7fffd6f9>
    224a:	6729                	lui	a4,0xa
    224c:	c31c                	sw	a5,0(a4)
    224e:	67a9                	lui	a5,0xa
    2250:	02878793          	addi	a5,a5,40 # a028 <__GNU_EH_FRAME_HDR+0x761c>
    2254:	4705                	li	a4,1
    2256:	4394                	lw	a3,0(a5)
    2258:	fee69fe3          	bne	a3,a4,2256 <s25fl128s_rdsr1+0x14>
    225c:	67a9                	lui	a5,0xa
    225e:	4788                	lw	a0,8(a5)
    2260:	0ff57513          	zext.b	a0,a0
    2264:	8082                	ret

Disassembly of section .text.s25fl128s_rdsr2:

00002266 <s25fl128s_rdsr2>:
    2266:	800007b7          	lui	a5,0x80000
    226a:	10778793          	addi	a5,a5,263 # 80000107 <__GNU_EH_FRAME_HDR+0x7fffd6fb>
    226e:	6729                	lui	a4,0xa
    2270:	c31c                	sw	a5,0(a4)
    2272:	67a9                	lui	a5,0xa
    2274:	02878793          	addi	a5,a5,40 # a028 <__GNU_EH_FRAME_HDR+0x761c>
    2278:	4705                	li	a4,1
    227a:	4394                	lw	a3,0(a5)
    227c:	fee69fe3          	bne	a3,a4,227a <s25fl128s_rdsr2+0x14>
    2280:	67a9                	lui	a5,0xa
    2282:	4788                	lw	a0,8(a5)
    2284:	0ff57513          	zext.b	a0,a0
    2288:	8082                	ret

Disassembly of section .text.s25fl128s_rdcr:

0000228a <s25fl128s_rdcr>:
    228a:	800007b7          	lui	a5,0x80000
    228e:	13578793          	addi	a5,a5,309 # 80000135 <__GNU_EH_FRAME_HDR+0x7fffd729>
    2292:	6729                	lui	a4,0xa
    2294:	c31c                	sw	a5,0(a4)
    2296:	67a9                	lui	a5,0xa
    2298:	02878793          	addi	a5,a5,40 # a028 <__GNU_EH_FRAME_HDR+0x761c>
    229c:	4705                	li	a4,1
    229e:	4394                	lw	a3,0(a5)
    22a0:	fee69fe3          	bne	a3,a4,229e <s25fl128s_rdcr+0x14>
    22a4:	67a9                	lui	a5,0xa
    22a6:	4788                	lw	a0,8(a5)
    22a8:	0ff57513          	zext.b	a0,a0
    22ac:	8082                	ret

Disassembly of section .text.s25fl128s_read_id:

000022ae <s25fl128s_read_id>:
    22ae:	67a9                	lui	a5,0xa
    22b0:	c3c8                	sw	a0,4(a5)
    22b2:	800127b7          	lui	a5,0x80012
    22b6:	99078793          	addi	a5,a5,-1648 # 80011990 <__GNU_EH_FRAME_HDR+0x8000ef84>
    22ba:	6729                	lui	a4,0xa
    22bc:	c31c                	sw	a5,0(a4)
    22be:	67a9                	lui	a5,0xa
    22c0:	02878793          	addi	a5,a5,40 # a028 <__GNU_EH_FRAME_HDR+0x761c>
    22c4:	4705                	li	a4,1
    22c6:	4394                	lw	a3,0(a5)
    22c8:	fee69fe3          	bne	a3,a4,22c6 <s25fl128s_read_id+0x18>
    22cc:	67a9                	lui	a5,0xa
    22ce:	4788                	lw	a0,8(a5)
    22d0:	0542                	slli	a0,a0,0x10
    22d2:	8541                	srai	a0,a0,0x10
    22d4:	8082                	ret

Disassembly of section .text.s25fl128s_res:

000022d6 <s25fl128s_res>:
    22d6:	800027b7          	lui	a5,0x80002
    22da:	9ab78793          	addi	a5,a5,-1621 # 800019ab <__GNU_EH_FRAME_HDR+0x7fffef9f>
    22de:	6729                	lui	a4,0xa
    22e0:	c31c                	sw	a5,0(a4)
    22e2:	67a9                	lui	a5,0xa
    22e4:	02878793          	addi	a5,a5,40 # a028 <__GNU_EH_FRAME_HDR+0x761c>
    22e8:	4705                	li	a4,1
    22ea:	4394                	lw	a3,0(a5)
    22ec:	fee69fe3          	bne	a3,a4,22ea <s25fl128s_res+0x14>
    22f0:	67a9                	lui	a5,0xa
    22f2:	4788                	lw	a0,8(a5)
    22f4:	0ff57513          	zext.b	a0,a0
    22f8:	8082                	ret

Disassembly of section .text.s25fl128s_wrr:

000022fa <s25fl128s_wrr>:
    22fa:	67a9                	lui	a5,0xa
    22fc:	c788                	sw	a0,8(a5)
    22fe:	800107b7          	lui	a5,0x80010
    2302:	50178793          	addi	a5,a5,1281 # 80010501 <__GNU_EH_FRAME_HDR+0x8000daf5>
    2306:	6729                	lui	a4,0xa
    2308:	c31c                	sw	a5,0(a4)
    230a:	67a9                	lui	a5,0xa
    230c:	02878793          	addi	a5,a5,40 # a028 <__GNU_EH_FRAME_HDR+0x761c>
    2310:	4705                	li	a4,1
    2312:	4394                	lw	a3,0(a5)
    2314:	fee69fe3          	bne	a3,a4,2312 <s25fl128s_wrr+0x18>
    2318:	8082                	ret

Disassembly of section .text.s25fl128s_read:

0000231a <s25fl128s_read>:
    231a:	fff60793          	addi	a5,a2,-1
    231e:	80002737          	lui	a4,0x80002
    2322:	90370713          	addi	a4,a4,-1789 # 80001903 <__GNU_EH_FRAME_HDR+0x7fffeef7>
    2326:	07c2                	slli	a5,a5,0x10
    2328:	97ba                	add	a5,a5,a4
    232a:	6729                	lui	a4,0xa
    232c:	c348                	sw	a0,4(a4)
    232e:	6729                	lui	a4,0xa
    2330:	c31c                	sw	a5,0(a4)
    2332:	67a9                	lui	a5,0xa
    2334:	02878793          	addi	a5,a5,40 # a028 <__GNU_EH_FRAME_HDR+0x761c>
    2338:	4705                	li	a4,1
    233a:	4394                	lw	a3,0(a5)
    233c:	fee69fe3          	bne	a3,a4,233a <s25fl128s_read+0x20>
    2340:	060d                	addi	a2,a2,3
    2342:	66a9                	lui	a3,0xa
    2344:	8609                	srai	a2,a2,0x2
    2346:	4781                	li	a5,0
    2348:	06a1                	addi	a3,a3,8 # a008 <__GNU_EH_FRAME_HDR+0x75fc>
    234a:	00c7c363          	blt	a5,a2,2350 <s25fl128s_read+0x36>
    234e:	8082                	ret
    2350:	00279713          	slli	a4,a5,0x2
    2354:	00d70533          	add	a0,a4,a3
    2358:	4108                	lw	a0,0(a0)
    235a:	972e                	add	a4,a4,a1
    235c:	0785                	addi	a5,a5,1
    235e:	c308                	sw	a0,0(a4)
    2360:	b7ed                	j	234a <s25fl128s_read+0x30>

Disassembly of section .text.s25fl128s_pp:

00002362 <s25fl128s_pp>:
    2362:	fff60793          	addi	a5,a2,-1
    2366:	80002737          	lui	a4,0x80002
    236a:	d0270713          	addi	a4,a4,-766 # 80001d02 <__GNU_EH_FRAME_HDR+0x7ffff2f6>
    236e:	07c2                	slli	a5,a5,0x10
    2370:	97ba                	add	a5,a5,a4
    2372:	6729                	lui	a4,0xa
    2374:	c348                	sw	a0,4(a4)
    2376:	060d                	addi	a2,a2,3
    2378:	6529                	lui	a0,0xa
    237a:	8609                	srai	a2,a2,0x2
    237c:	4701                	li	a4,0
    237e:	0521                	addi	a0,a0,8 # a008 <__GNU_EH_FRAME_HDR+0x75fc>
    2380:	00c74c63          	blt	a4,a2,2398 <s25fl128s_pp+0x36>
    2384:	6729                	lui	a4,0xa
    2386:	c31c                	sw	a5,0(a4)
    2388:	67a9                	lui	a5,0xa
    238a:	02878793          	addi	a5,a5,40 # a028 <__GNU_EH_FRAME_HDR+0x761c>
    238e:	4705                	li	a4,1
    2390:	4394                	lw	a3,0(a5)
    2392:	fee69fe3          	bne	a3,a4,2390 <s25fl128s_pp+0x2e>
    2396:	8082                	ret
    2398:	00271693          	slli	a3,a4,0x2
    239c:	00a68833          	add	a6,a3,a0
    23a0:	96ae                	add	a3,a3,a1
    23a2:	4294                	lw	a3,0(a3)
    23a4:	0705                	addi	a4,a4,1 # a001 <__GNU_EH_FRAME_HDR+0x75f5>
    23a6:	00d82023          	sw	a3,0(a6)
    23aa:	bfd9                	j	2380 <s25fl128s_pp+0x1e>

Disassembly of section .text.s25fl128s_se:

000023ac <s25fl128s_se>:
    23ac:	67a9                	lui	a5,0xa
    23ae:	c788                	sw	a0,8(a5)
    23b0:	800207b7          	lui	a5,0x80020
    23b4:	5d878793          	addi	a5,a5,1496 # 800205d8 <__GNU_EH_FRAME_HDR+0x8001dbcc>
    23b8:	6729                	lui	a4,0xa
    23ba:	c31c                	sw	a5,0(a4)
    23bc:	67a9                	lui	a5,0xa
    23be:	02878793          	addi	a5,a5,40 # a028 <__GNU_EH_FRAME_HDR+0x761c>
    23c2:	4705                	li	a4,1
    23c4:	4394                	lw	a3,0(a5)
    23c6:	fee69fe3          	bne	a3,a4,23c4 <s25fl128s_se+0x18>
    23ca:	8082                	ret

Disassembly of section .text.s25fl128s_dor:

000023cc <s25fl128s_dor>:
    23cc:	fff60793          	addi	a5,a2,-1
    23d0:	80002737          	lui	a4,0x80002
    23d4:	23b70713          	addi	a4,a4,571 # 8000223b <__GNU_EH_FRAME_HDR+0x7ffff82f>
    23d8:	07c2                	slli	a5,a5,0x10
    23da:	97ba                	add	a5,a5,a4
    23dc:	6729                	lui	a4,0xa
    23de:	c348                	sw	a0,4(a4)
    23e0:	6729                	lui	a4,0xa
    23e2:	c31c                	sw	a5,0(a4)
    23e4:	67a9                	lui	a5,0xa
    23e6:	02878793          	addi	a5,a5,40 # a028 <__GNU_EH_FRAME_HDR+0x761c>
    23ea:	4705                	li	a4,1
    23ec:	4394                	lw	a3,0(a5)
    23ee:	fee69fe3          	bne	a3,a4,23ec <s25fl128s_dor+0x20>
    23f2:	060d                	addi	a2,a2,3
    23f4:	66a9                	lui	a3,0xa
    23f6:	8609                	srai	a2,a2,0x2
    23f8:	4781                	li	a5,0
    23fa:	06a1                	addi	a3,a3,8 # a008 <__GNU_EH_FRAME_HDR+0x75fc>
    23fc:	00c7c363          	blt	a5,a2,2402 <s25fl128s_dor+0x36>
    2400:	8082                	ret
    2402:	00279713          	slli	a4,a5,0x2
    2406:	00d70533          	add	a0,a4,a3
    240a:	4108                	lw	a0,0(a0)
    240c:	972e                	add	a4,a4,a1
    240e:	0785                	addi	a5,a5,1
    2410:	c308                	sw	a0,0(a4)
    2412:	b7ed                	j	23fc <s25fl128s_dor+0x30>

Disassembly of section .text.s25fl128s_qor:

00002414 <s25fl128s_qor>:
    2414:	fff60793          	addi	a5,a2,-1
    2418:	80002737          	lui	a4,0x80002
    241c:	36b70713          	addi	a4,a4,875 # 8000236b <__GNU_EH_FRAME_HDR+0x7ffff95f>
    2420:	07c2                	slli	a5,a5,0x10
    2422:	97ba                	add	a5,a5,a4
    2424:	6729                	lui	a4,0xa
    2426:	c348                	sw	a0,4(a4)
    2428:	6729                	lui	a4,0xa
    242a:	c31c                	sw	a5,0(a4)
    242c:	67a9                	lui	a5,0xa
    242e:	02878793          	addi	a5,a5,40 # a028 <__GNU_EH_FRAME_HDR+0x761c>
    2432:	4705                	li	a4,1
    2434:	4394                	lw	a3,0(a5)
    2436:	fee69fe3          	bne	a3,a4,2434 <s25fl128s_qor+0x20>
    243a:	060d                	addi	a2,a2,3
    243c:	66a9                	lui	a3,0xa
    243e:	8609                	srai	a2,a2,0x2
    2440:	4781                	li	a5,0
    2442:	06a1                	addi	a3,a3,8 # a008 <__GNU_EH_FRAME_HDR+0x75fc>
    2444:	00c7c363          	blt	a5,a2,244a <s25fl128s_qor+0x36>
    2448:	8082                	ret
    244a:	00279713          	slli	a4,a5,0x2
    244e:	00d70533          	add	a0,a4,a3
    2452:	4108                	lw	a0,0(a0)
    2454:	972e                	add	a4,a4,a1
    2456:	0785                	addi	a5,a5,1
    2458:	c308                	sw	a0,0(a4)
    245a:	b7ed                	j	2444 <s25fl128s_qor+0x30>

Disassembly of section .text.s25fl128s_qpp:

0000245c <s25fl128s_qpp>:
    245c:	fff60793          	addi	a5,a2,-1
    2460:	80002737          	lui	a4,0x80002
    2464:	f3270713          	addi	a4,a4,-206 # 80001f32 <__GNU_EH_FRAME_HDR+0x7ffff526>
    2468:	07c2                	slli	a5,a5,0x10
    246a:	97ba                	add	a5,a5,a4
    246c:	6729                	lui	a4,0xa
    246e:	c348                	sw	a0,4(a4)
    2470:	060d                	addi	a2,a2,3
    2472:	6729                	lui	a4,0xa
    2474:	66a9                	lui	a3,0xa
    2476:	c31c                	sw	a5,0(a4)
    2478:	8609                	srai	a2,a2,0x2
    247a:	4781                	li	a5,0
    247c:	06a1                	addi	a3,a3,8 # a008 <__GNU_EH_FRAME_HDR+0x75fc>
    247e:	00c7ca63          	blt	a5,a2,2492 <s25fl128s_qpp+0x36>
    2482:	67a9                	lui	a5,0xa
    2484:	02878793          	addi	a5,a5,40 # a028 <__GNU_EH_FRAME_HDR+0x761c>
    2488:	4705                	li	a4,1
    248a:	4394                	lw	a3,0(a5)
    248c:	fee69fe3          	bne	a3,a4,248a <s25fl128s_qpp+0x2e>
    2490:	8082                	ret
    2492:	00279713          	slli	a4,a5,0x2
    2496:	00d70533          	add	a0,a4,a3
    249a:	972e                	add	a4,a4,a1
    249c:	4318                	lw	a4,0(a4)
    249e:	0785                	addi	a5,a5,1
    24a0:	c118                	sw	a4,0(a0)
    24a2:	bff1                	j	247e <s25fl128s_qpp+0x22>

Disassembly of section .text.qspi_custom_write:

000024a4 <qspi_custom_write>:
    24a4:	0ff67613          	zext.b	a2,a2
    24a8:	06a2                	slli	a3,a3,0x8
    24aa:	96b2                	add	a3,a3,a2
    24ac:	072e                	slli	a4,a4,0xb
    24ae:	40068693          	addi	a3,a3,1024
    24b2:	96ba                	add	a3,a3,a4
    24b4:	fff78713          	addi	a4,a5,-1
    24b8:	0742                	slli	a4,a4,0x10
    24ba:	9736                	add	a4,a4,a3
    24bc:	0866                	slli	a6,a6,0x19
    24be:	983a                	add	a6,a6,a4
    24c0:	80000737          	lui	a4,0x80000
    24c4:	983a                	add	a6,a6,a4
    24c6:	078d                	addi	a5,a5,3
    24c8:	6729                	lui	a4,0xa
    24ca:	6629                	lui	a2,0xa
    24cc:	c348                	sw	a0,4(a4)
    24ce:	8789                	srai	a5,a5,0x2
    24d0:	4701                	li	a4,0
    24d2:	0621                	addi	a2,a2,8 # a008 <__GNU_EH_FRAME_HDR+0x75fc>
    24d4:	00f74c63          	blt	a4,a5,24ec <qspi_custom_write+0x48>
    24d8:	67a9                	lui	a5,0xa
    24da:	0107a023          	sw	a6,0(a5) # a000 <__GNU_EH_FRAME_HDR+0x75f4>
    24de:	4705                	li	a4,1
    24e0:	02878793          	addi	a5,a5,40
    24e4:	4394                	lw	a3,0(a5)
    24e6:	fee69fe3          	bne	a3,a4,24e4 <qspi_custom_write+0x40>
    24ea:	8082                	ret
    24ec:	00271693          	slli	a3,a4,0x2
    24f0:	00c68533          	add	a0,a3,a2
    24f4:	96ae                	add	a3,a3,a1
    24f6:	4294                	lw	a3,0(a3)
    24f8:	0705                	addi	a4,a4,1 # a001 <__GNU_EH_FRAME_HDR+0x75f5>
    24fa:	c114                	sw	a3,0(a0)
    24fc:	bfe1                	j	24d4 <qspi_custom_write+0x30>

Disassembly of section .text.qspi_custom_read:

000024fe <qspi_custom_read>:
    24fe:	0ff67613          	zext.b	a2,a2
    2502:	06a2                	slli	a3,a3,0x8
    2504:	072e                	slli	a4,a4,0xb
    2506:	96b2                	add	a3,a3,a2
    2508:	96ba                	add	a3,a3,a4
    250a:	fff78713          	addi	a4,a5,-1
    250e:	0742                	slli	a4,a4,0x10
    2510:	9736                	add	a4,a4,a3
    2512:	0866                	slli	a6,a6,0x19
    2514:	983a                	add	a6,a6,a4
    2516:	80000737          	lui	a4,0x80000
    251a:	983a                	add	a6,a6,a4
    251c:	6729                	lui	a4,0xa
    251e:	c348                	sw	a0,4(a4)
    2520:	6729                	lui	a4,0xa
    2522:	01072023          	sw	a6,0(a4) # a000 <__GNU_EH_FRAME_HDR+0x75f4>
    2526:	4685                	li	a3,1
    2528:	02870713          	addi	a4,a4,40
    252c:	4310                	lw	a2,0(a4)
    252e:	fed61fe3          	bne	a2,a3,252c <qspi_custom_read+0x2e>
    2532:	078d                	addi	a5,a5,3
    2534:	6629                	lui	a2,0xa
    2536:	8789                	srai	a5,a5,0x2
    2538:	4701                	li	a4,0
    253a:	0621                	addi	a2,a2,8 # a008 <__GNU_EH_FRAME_HDR+0x75fc>
    253c:	00f74363          	blt	a4,a5,2542 <qspi_custom_read+0x44>
    2540:	8082                	ret
    2542:	00271693          	slli	a3,a4,0x2
    2546:	00c68533          	add	a0,a3,a2
    254a:	4108                	lw	a0,0(a0)
    254c:	96ae                	add	a3,a3,a1
    254e:	0705                	addi	a4,a4,1
    2550:	c288                	sw	a0,0(a3)
    2552:	b7ed                	j	253c <qspi_custom_read+0x3e>

Disassembly of section .text.timer_read_counter:

00002554 <timer_read_counter>:
    2554:	67b1                	lui	a5,0xc
    2556:	4bc8                	lw	a0,20(a5)
    2558:	8082                	ret

Disassembly of section .text.timer_read_event:

0000255a <timer_read_event>:
    255a:	67b1                	lui	a5,0xc
    255c:	4f88                	lw	a0,24(a5)
    255e:	8082                	ret

Disassembly of section .text.timer_clear_counter:

00002560 <timer_clear_counter>:
    2560:	67b1                	lui	a5,0xc
    2562:	4705                	li	a4,1
    2564:	c798                	sw	a4,8(a5)
    2566:	8082                	ret

Disassembly of section .text.timer_clear_event:

00002568 <timer_clear_event>:
    2568:	67b1                	lui	a5,0xc
    256a:	4705                	li	a4,1
    256c:	cfd8                	sw	a4,28(a5)
    256e:	8082                	ret

Disassembly of section .text.timer_enable:

00002570 <timer_enable>:
    2570:	67b1                	lui	a5,0xc
    2572:	4705                	li	a4,1
    2574:	c7d8                	sw	a4,12(a5)
    2576:	8082                	ret

Disassembly of section .text.timer_disable:

00002578 <timer_disable>:
    2578:	67b1                	lui	a5,0xc
    257a:	0007a623          	sw	zero,12(a5) # c00c <__GNU_EH_FRAME_HDR+0x9600>
    257e:	8082                	ret

Disassembly of section .text.timer_reset:

00002580 <timer_reset>:
    2580:	8082                	ret

Disassembly of section .text.timer_conf:

00002582 <timer_conf>:
    2582:	67b1                	lui	a5,0xc
    2584:	c388                	sw	a0,0(a5)
    2586:	c3cc                	sw	a1,4(a5)
    2588:	67b1                	lui	a5,0xc
    258a:	cb90                	sw	a2,16(a5)
    258c:	08000513          	li	a0,128
    2590:	000215b7          	lui	a1,0x21
    2594:	8191                	srli	a1,a1,0x4
    2596:	30559073          	csrw	mtvec,a1
    259a:	30046073          	csrsi	mstatus,8
    259e:	30452073          	csrs	mie,a0

000025a2 <_mie_check>:
    25a2:	34402673          	csrr	a2,mip
    25a6:	de75                	beqz	a2,25a2 <_mie_check>
    25a8:	8082                	ret

Disassembly of section .text.gpio_write:

000025aa <gpio_write>:
    25aa:	67c1                	lui	a5,0x10
    25ac:	c3c8                	sw	a0,4(a5)
    25ae:	8082                	ret

Disassembly of section .text.gpio_read:

000025b0 <gpio_read>:
    25b0:	67c1                	lui	a5,0x10
    25b2:	4388                	lw	a0,0(a5)
    25b4:	0542                	slli	a0,a0,0x10
    25b6:	8541                	srai	a0,a0,0x10
    25b8:	8082                	ret

Disassembly of section .text.instr_mem_write:

000025ba <instr_mem_write>:
    25ba:	050a                	slli	a0,a0,0x2
    25bc:	6791                	lui	a5,0x4
    25be:	97aa                	add	a5,a5,a0
    25c0:	c38c                	sw	a1,0(a5)
    25c2:	8082                	ret

Disassembly of section .text.knightrider_i2c:

000025c4 <knightrider_i2c>:
    25c4:	1141                	addi	sp,sp,-16
    25c6:	c422                	sw	s0,8(sp)
    25c8:	c226                	sw	s1,4(sp)
    25ca:	c606                	sw	ra,12(sp)
    25cc:	441d                	li	s0,7
    25ce:	4485                	li	s1,1
    25d0:	0486                	slli	s1,s1,0x1
    25d2:	4585                	li	a1,1
    25d4:	8526                	mv	a0,s1
    25d6:	147d                	addi	s0,s0,-1
    25d8:	3649                	jal	215a <i2c_write>
    25da:	f87d                	bnez	s0,25d0 <knightrider_i2c+0xc>
    25dc:	441d                	li	s0,7
    25de:	08000493          	li	s1,128
    25e2:	8085                	srli	s1,s1,0x1
    25e4:	4585                	li	a1,1
    25e6:	8526                	mv	a0,s1
    25e8:	147d                	addi	s0,s0,-1
    25ea:	3e85                	jal	215a <i2c_write>
    25ec:	f87d                	bnez	s0,25e2 <knightrider_i2c+0x1e>
    25ee:	441d                	li	s0,7
    25f0:	4485                	li	s1,1
    25f2:	0486                	slli	s1,s1,0x1
    25f4:	4585                	li	a1,1
    25f6:	8526                	mv	a0,s1
    25f8:	147d                	addi	s0,s0,-1
    25fa:	3685                	jal	215a <i2c_write>
    25fc:	f87d                	bnez	s0,25f2 <knightrider_i2c+0x2e>
    25fe:	441d                	li	s0,7
    2600:	08000493          	li	s1,128
    2604:	8085                	srli	s1,s1,0x1
    2606:	4585                	li	a1,1
    2608:	8526                	mv	a0,s1
    260a:	147d                	addi	s0,s0,-1
    260c:	36b9                	jal	215a <i2c_write>
    260e:	f87d                	bnez	s0,2604 <knightrider_i2c+0x40>
    2610:	40b2                	lw	ra,12(sp)
    2612:	4422                	lw	s0,8(sp)
    2614:	4492                	lw	s1,4(sp)
    2616:	0141                	addi	sp,sp,16
    2618:	8082                	ret
