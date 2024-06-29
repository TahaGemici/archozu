
a.out:     file format elf32-littleriscv


Disassembly of section .text:

00002000 <main>:
    2000:	1141                	addi	sp,sp,-16
    2002:	4605                	li	a2,1
    2004:	06400593          	li	a1,100
    2008:	4509                	li	a0,2
    200a:	c606                	sw	ra,12(sp)
    200c:	2bb9                	jal	256a <timer_conf>
    200e:	a001                	j	200e <main+0xe>
	...

00002100 <interrupt>:
    2100:	a94d                	j	25b2 <knightrider_i2c>

Disassembly of section .text.uart_conf:

00002102 <uart_conf>:
    2102:	6799                	lui	a5,0x6
    2104:	c388                	sw	a0,0(a5)
    2106:	c3cc                	sw	a1,4(a5)
    2108:	8082                	ret

Disassembly of section .text.uart_read:

0000210a <uart_read>:
    210a:	6799                	lui	a5,0x6
    210c:	07c1                	addi	a5,a5,16 # 6010 <__GNU_EH_FRAME_HDR+0x3640>
    210e:	4709                	li	a4,2
    2110:	4394                	lw	a3,0(a5)
    2112:	fee69fe3          	bne	a3,a4,2110 <uart_read+0x6>
    2116:	6719                	lui	a4,0x6
    2118:	4708                	lw	a0,8(a4)
    211a:	0007a023          	sw	zero,0(a5)
    211e:	0ff57513          	zext.b	a0,a0
    2122:	8082                	ret

Disassembly of section .text.uart_write:

00002124 <uart_write>:
    2124:	6799                	lui	a5,0x6
    2126:	c7c8                	sw	a0,12(a5)
    2128:	6799                	lui	a5,0x6
    212a:	4705                	li	a4,1
    212c:	07c1                	addi	a5,a5,16 # 6010 <__GNU_EH_FRAME_HDR+0x3640>
    212e:	c398                	sw	a4,0(a5)
    2130:	4715                	li	a4,5
    2132:	4394                	lw	a3,0(a5)
    2134:	fee69fe3          	bne	a3,a4,2132 <uart_write+0xe>
    2138:	0007a023          	sw	zero,0(a5)
    213c:	8082                	ret

Disassembly of section .text.i2c_conf:

0000213e <i2c_conf>:
    213e:	67a1                	lui	a5,0x8
    2140:	c3c8                	sw	a0,4(a5)
    2142:	8082                	ret

Disassembly of section .text.i2c_write:

00002144 <i2c_write>:
    2144:	67a1                	lui	a5,0x8
    2146:	c38c                	sw	a1,0(a5)
    2148:	c7c8                	sw	a0,12(a5)
    214a:	67a1                	lui	a5,0x8
    214c:	4705                	li	a4,1
    214e:	07c1                	addi	a5,a5,16 # 8010 <__GNU_EH_FRAME_HDR+0x5640>
    2150:	c398                	sw	a4,0(a5)
    2152:	470d                	li	a4,3
    2154:	4394                	lw	a3,0(a5)
    2156:	fee69fe3          	bne	a3,a4,2154 <i2c_write+0x10>
    215a:	0007a023          	sw	zero,0(a5)
    215e:	8082                	ret

Disassembly of section .text.i2c_read:

00002160 <i2c_read>:
    2160:	67a1                	lui	a5,0x8
    2162:	c388                	sw	a0,0(a5)
    2164:	4711                	li	a4,4
    2166:	07c1                	addi	a5,a5,16 # 8010 <__GNU_EH_FRAME_HDR+0x5640>
    2168:	c398                	sw	a4,0(a5)
    216a:	4731                	li	a4,12
    216c:	4394                	lw	a3,0(a5)
    216e:	fee69fe3          	bne	a3,a4,216c <i2c_read+0xc>
    2172:	0007a023          	sw	zero,0(a5)
    2176:	67a1                	lui	a5,0x8
    2178:	4788                	lw	a0,8(a5)
    217a:	8082                	ret

Disassembly of section .text.s25fl128s_wren:

0000217c <s25fl128s_wren>:
    217c:	800007b7          	lui	a5,0x80000
    2180:	0799                	addi	a5,a5,6 # 80000006 <__GNU_EH_FRAME_HDR+0x7fffd636>
    2182:	6729                	lui	a4,0xa
    2184:	c31c                	sw	a5,0(a4)
    2186:	67a9                	lui	a5,0xa
    2188:	02878793          	addi	a5,a5,40 # a028 <__GNU_EH_FRAME_HDR+0x7658>
    218c:	4705                	li	a4,1
    218e:	4394                	lw	a3,0(a5)
    2190:	fee69fe3          	bne	a3,a4,218e <s25fl128s_wren+0x12>
    2194:	8082                	ret

Disassembly of section .text.s25fl128s_wrdi:

00002196 <s25fl128s_wrdi>:
    2196:	800007b7          	lui	a5,0x80000
    219a:	0791                	addi	a5,a5,4 # 80000004 <__GNU_EH_FRAME_HDR+0x7fffd634>
    219c:	6729                	lui	a4,0xa
    219e:	c31c                	sw	a5,0(a4)
    21a0:	67a9                	lui	a5,0xa
    21a2:	02878793          	addi	a5,a5,40 # a028 <__GNU_EH_FRAME_HDR+0x7658>
    21a6:	4705                	li	a4,1
    21a8:	4394                	lw	a3,0(a5)
    21aa:	fee69fe3          	bne	a3,a4,21a8 <s25fl128s_wrdi+0x12>
    21ae:	8082                	ret

Disassembly of section .text.s25fl128s_clsr:

000021b0 <s25fl128s_clsr>:
    21b0:	800007b7          	lui	a5,0x80000
    21b4:	03078793          	addi	a5,a5,48 # 80000030 <__GNU_EH_FRAME_HDR+0x7fffd660>
    21b8:	6729                	lui	a4,0xa
    21ba:	c31c                	sw	a5,0(a4)
    21bc:	67a9                	lui	a5,0xa
    21be:	02878793          	addi	a5,a5,40 # a028 <__GNU_EH_FRAME_HDR+0x7658>
    21c2:	4705                	li	a4,1
    21c4:	4394                	lw	a3,0(a5)
    21c6:	fee69fe3          	bne	a3,a4,21c4 <s25fl128s_clsr+0x14>
    21ca:	8082                	ret

Disassembly of section .text.s25fl128s_reset:

000021cc <s25fl128s_reset>:
    21cc:	800007b7          	lui	a5,0x80000
    21d0:	0f078793          	addi	a5,a5,240 # 800000f0 <__GNU_EH_FRAME_HDR+0x7fffd720>
    21d4:	6729                	lui	a4,0xa
    21d6:	c31c                	sw	a5,0(a4)
    21d8:	67a9                	lui	a5,0xa
    21da:	02878793          	addi	a5,a5,40 # a028 <__GNU_EH_FRAME_HDR+0x7658>
    21de:	4705                	li	a4,1
    21e0:	4394                	lw	a3,0(a5)
    21e2:	fee69fe3          	bne	a3,a4,21e0 <s25fl128s_reset+0x14>
    21e6:	8082                	ret

Disassembly of section .text.s25fl128s_rdid:

000021e8 <s25fl128s_rdid>:
    21e8:	fff58793          	addi	a5,a1,-1
    21ec:	80000737          	lui	a4,0x80000
    21f0:	19f70713          	addi	a4,a4,415 # 8000019f <__GNU_EH_FRAME_HDR+0x7fffd7cf>
    21f4:	07c2                	slli	a5,a5,0x10
    21f6:	97ba                	add	a5,a5,a4
    21f8:	6729                	lui	a4,0xa
    21fa:	c31c                	sw	a5,0(a4)
    21fc:	67a9                	lui	a5,0xa
    21fe:	02878793          	addi	a5,a5,40 # a028 <__GNU_EH_FRAME_HDR+0x7658>
    2202:	4705                	li	a4,1
    2204:	4394                	lw	a3,0(a5)
    2206:	fee69fe3          	bne	a3,a4,2204 <s25fl128s_rdid+0x1c>
    220a:	058d                	addi	a1,a1,3
    220c:	66a9                	lui	a3,0xa
    220e:	8589                	srai	a1,a1,0x2
    2210:	4781                	li	a5,0
    2212:	06a1                	addi	a3,a3,8 # a008 <__GNU_EH_FRAME_HDR+0x7638>
    2214:	00b7c363          	blt	a5,a1,221a <s25fl128s_rdid+0x32>
    2218:	8082                	ret
    221a:	00279713          	slli	a4,a5,0x2
    221e:	00d70633          	add	a2,a4,a3
    2222:	4210                	lw	a2,0(a2)
    2224:	972a                	add	a4,a4,a0
    2226:	0785                	addi	a5,a5,1
    2228:	c310                	sw	a2,0(a4)
    222a:	b7ed                	j	2214 <s25fl128s_rdid+0x2c>

Disassembly of section .text.s25fl128s_rdsr1:

0000222c <s25fl128s_rdsr1>:
    222c:	800007b7          	lui	a5,0x80000
    2230:	10578793          	addi	a5,a5,261 # 80000105 <__GNU_EH_FRAME_HDR+0x7fffd735>
    2234:	6729                	lui	a4,0xa
    2236:	c31c                	sw	a5,0(a4)
    2238:	67a9                	lui	a5,0xa
    223a:	02878793          	addi	a5,a5,40 # a028 <__GNU_EH_FRAME_HDR+0x7658>
    223e:	4705                	li	a4,1
    2240:	4394                	lw	a3,0(a5)
    2242:	fee69fe3          	bne	a3,a4,2240 <s25fl128s_rdsr1+0x14>
    2246:	67a9                	lui	a5,0xa
    2248:	4788                	lw	a0,8(a5)
    224a:	0ff57513          	zext.b	a0,a0
    224e:	8082                	ret

Disassembly of section .text.s25fl128s_rdsr2:

00002250 <s25fl128s_rdsr2>:
    2250:	800007b7          	lui	a5,0x80000
    2254:	10778793          	addi	a5,a5,263 # 80000107 <__GNU_EH_FRAME_HDR+0x7fffd737>
    2258:	6729                	lui	a4,0xa
    225a:	c31c                	sw	a5,0(a4)
    225c:	67a9                	lui	a5,0xa
    225e:	02878793          	addi	a5,a5,40 # a028 <__GNU_EH_FRAME_HDR+0x7658>
    2262:	4705                	li	a4,1
    2264:	4394                	lw	a3,0(a5)
    2266:	fee69fe3          	bne	a3,a4,2264 <s25fl128s_rdsr2+0x14>
    226a:	67a9                	lui	a5,0xa
    226c:	4788                	lw	a0,8(a5)
    226e:	0ff57513          	zext.b	a0,a0
    2272:	8082                	ret

Disassembly of section .text.s25fl128s_rdcr:

00002274 <s25fl128s_rdcr>:
    2274:	800007b7          	lui	a5,0x80000
    2278:	13578793          	addi	a5,a5,309 # 80000135 <__GNU_EH_FRAME_HDR+0x7fffd765>
    227c:	6729                	lui	a4,0xa
    227e:	c31c                	sw	a5,0(a4)
    2280:	67a9                	lui	a5,0xa
    2282:	02878793          	addi	a5,a5,40 # a028 <__GNU_EH_FRAME_HDR+0x7658>
    2286:	4705                	li	a4,1
    2288:	4394                	lw	a3,0(a5)
    228a:	fee69fe3          	bne	a3,a4,2288 <s25fl128s_rdcr+0x14>
    228e:	67a9                	lui	a5,0xa
    2290:	4788                	lw	a0,8(a5)
    2292:	0ff57513          	zext.b	a0,a0
    2296:	8082                	ret

Disassembly of section .text.s25fl128s_read_id:

00002298 <s25fl128s_read_id>:
    2298:	67a9                	lui	a5,0xa
    229a:	c3c8                	sw	a0,4(a5)
    229c:	800127b7          	lui	a5,0x80012
    22a0:	99078793          	addi	a5,a5,-1648 # 80011990 <__GNU_EH_FRAME_HDR+0x8000efc0>
    22a4:	6729                	lui	a4,0xa
    22a6:	c31c                	sw	a5,0(a4)
    22a8:	67a9                	lui	a5,0xa
    22aa:	02878793          	addi	a5,a5,40 # a028 <__GNU_EH_FRAME_HDR+0x7658>
    22ae:	4705                	li	a4,1
    22b0:	4394                	lw	a3,0(a5)
    22b2:	fee69fe3          	bne	a3,a4,22b0 <s25fl128s_read_id+0x18>
    22b6:	67a9                	lui	a5,0xa
    22b8:	4788                	lw	a0,8(a5)
    22ba:	0542                	slli	a0,a0,0x10
    22bc:	8541                	srai	a0,a0,0x10
    22be:	8082                	ret

Disassembly of section .text.s25fl128s_res:

000022c0 <s25fl128s_res>:
    22c0:	800027b7          	lui	a5,0x80002
    22c4:	9ab78793          	addi	a5,a5,-1621 # 800019ab <__GNU_EH_FRAME_HDR+0x7fffefdb>
    22c8:	6729                	lui	a4,0xa
    22ca:	c31c                	sw	a5,0(a4)
    22cc:	67a9                	lui	a5,0xa
    22ce:	02878793          	addi	a5,a5,40 # a028 <__GNU_EH_FRAME_HDR+0x7658>
    22d2:	4705                	li	a4,1
    22d4:	4394                	lw	a3,0(a5)
    22d6:	fee69fe3          	bne	a3,a4,22d4 <s25fl128s_res+0x14>
    22da:	67a9                	lui	a5,0xa
    22dc:	4788                	lw	a0,8(a5)
    22de:	0ff57513          	zext.b	a0,a0
    22e2:	8082                	ret

Disassembly of section .text.s25fl128s_wrr:

000022e4 <s25fl128s_wrr>:
    22e4:	67a9                	lui	a5,0xa
    22e6:	c788                	sw	a0,8(a5)
    22e8:	800107b7          	lui	a5,0x80010
    22ec:	50178793          	addi	a5,a5,1281 # 80010501 <__GNU_EH_FRAME_HDR+0x8000db31>
    22f0:	6729                	lui	a4,0xa
    22f2:	c31c                	sw	a5,0(a4)
    22f4:	67a9                	lui	a5,0xa
    22f6:	02878793          	addi	a5,a5,40 # a028 <__GNU_EH_FRAME_HDR+0x7658>
    22fa:	4705                	li	a4,1
    22fc:	4394                	lw	a3,0(a5)
    22fe:	fee69fe3          	bne	a3,a4,22fc <s25fl128s_wrr+0x18>
    2302:	8082                	ret

Disassembly of section .text.s25fl128s_read:

00002304 <s25fl128s_read>:
    2304:	fff60793          	addi	a5,a2,-1
    2308:	80002737          	lui	a4,0x80002
    230c:	90370713          	addi	a4,a4,-1789 # 80001903 <__GNU_EH_FRAME_HDR+0x7fffef33>
    2310:	07c2                	slli	a5,a5,0x10
    2312:	97ba                	add	a5,a5,a4
    2314:	6729                	lui	a4,0xa
    2316:	c348                	sw	a0,4(a4)
    2318:	6729                	lui	a4,0xa
    231a:	c31c                	sw	a5,0(a4)
    231c:	67a9                	lui	a5,0xa
    231e:	02878793          	addi	a5,a5,40 # a028 <__GNU_EH_FRAME_HDR+0x7658>
    2322:	4705                	li	a4,1
    2324:	4394                	lw	a3,0(a5)
    2326:	fee69fe3          	bne	a3,a4,2324 <s25fl128s_read+0x20>
    232a:	060d                	addi	a2,a2,3
    232c:	66a9                	lui	a3,0xa
    232e:	8609                	srai	a2,a2,0x2
    2330:	4781                	li	a5,0
    2332:	06a1                	addi	a3,a3,8 # a008 <__GNU_EH_FRAME_HDR+0x7638>
    2334:	00c7c363          	blt	a5,a2,233a <s25fl128s_read+0x36>
    2338:	8082                	ret
    233a:	00279713          	slli	a4,a5,0x2
    233e:	00d70533          	add	a0,a4,a3
    2342:	4108                	lw	a0,0(a0)
    2344:	972e                	add	a4,a4,a1
    2346:	0785                	addi	a5,a5,1
    2348:	c308                	sw	a0,0(a4)
    234a:	b7ed                	j	2334 <s25fl128s_read+0x30>

Disassembly of section .text.s25fl128s_pp:

0000234c <s25fl128s_pp>:
    234c:	fff60793          	addi	a5,a2,-1
    2350:	80002737          	lui	a4,0x80002
    2354:	d0270713          	addi	a4,a4,-766 # 80001d02 <__GNU_EH_FRAME_HDR+0x7ffff332>
    2358:	07c2                	slli	a5,a5,0x10
    235a:	97ba                	add	a5,a5,a4
    235c:	6729                	lui	a4,0xa
    235e:	c348                	sw	a0,4(a4)
    2360:	060d                	addi	a2,a2,3
    2362:	6529                	lui	a0,0xa
    2364:	8609                	srai	a2,a2,0x2
    2366:	4701                	li	a4,0
    2368:	0521                	addi	a0,a0,8 # a008 <__GNU_EH_FRAME_HDR+0x7638>
    236a:	00c74c63          	blt	a4,a2,2382 <s25fl128s_pp+0x36>
    236e:	6729                	lui	a4,0xa
    2370:	c31c                	sw	a5,0(a4)
    2372:	67a9                	lui	a5,0xa
    2374:	02878793          	addi	a5,a5,40 # a028 <__GNU_EH_FRAME_HDR+0x7658>
    2378:	4705                	li	a4,1
    237a:	4394                	lw	a3,0(a5)
    237c:	fee69fe3          	bne	a3,a4,237a <s25fl128s_pp+0x2e>
    2380:	8082                	ret
    2382:	00271693          	slli	a3,a4,0x2
    2386:	00a68833          	add	a6,a3,a0
    238a:	96ae                	add	a3,a3,a1
    238c:	4294                	lw	a3,0(a3)
    238e:	0705                	addi	a4,a4,1 # a001 <__GNU_EH_FRAME_HDR+0x7631>
    2390:	00d82023          	sw	a3,0(a6)
    2394:	bfd9                	j	236a <s25fl128s_pp+0x1e>

Disassembly of section .text.s25fl128s_se:

00002396 <s25fl128s_se>:
    2396:	67a9                	lui	a5,0xa
    2398:	c788                	sw	a0,8(a5)
    239a:	800207b7          	lui	a5,0x80020
    239e:	5d878793          	addi	a5,a5,1496 # 800205d8 <__GNU_EH_FRAME_HDR+0x8001dc08>
    23a2:	6729                	lui	a4,0xa
    23a4:	c31c                	sw	a5,0(a4)
    23a6:	67a9                	lui	a5,0xa
    23a8:	02878793          	addi	a5,a5,40 # a028 <__GNU_EH_FRAME_HDR+0x7658>
    23ac:	4705                	li	a4,1
    23ae:	4394                	lw	a3,0(a5)
    23b0:	fee69fe3          	bne	a3,a4,23ae <s25fl128s_se+0x18>
    23b4:	8082                	ret

Disassembly of section .text.s25fl128s_dor:

000023b6 <s25fl128s_dor>:
    23b6:	fff60793          	addi	a5,a2,-1
    23ba:	80002737          	lui	a4,0x80002
    23be:	23b70713          	addi	a4,a4,571 # 8000223b <__GNU_EH_FRAME_HDR+0x7ffff86b>
    23c2:	07c2                	slli	a5,a5,0x10
    23c4:	97ba                	add	a5,a5,a4
    23c6:	6729                	lui	a4,0xa
    23c8:	c348                	sw	a0,4(a4)
    23ca:	6729                	lui	a4,0xa
    23cc:	c31c                	sw	a5,0(a4)
    23ce:	67a9                	lui	a5,0xa
    23d0:	02878793          	addi	a5,a5,40 # a028 <__GNU_EH_FRAME_HDR+0x7658>
    23d4:	4705                	li	a4,1
    23d6:	4394                	lw	a3,0(a5)
    23d8:	fee69fe3          	bne	a3,a4,23d6 <s25fl128s_dor+0x20>
    23dc:	060d                	addi	a2,a2,3
    23de:	66a9                	lui	a3,0xa
    23e0:	8609                	srai	a2,a2,0x2
    23e2:	4781                	li	a5,0
    23e4:	06a1                	addi	a3,a3,8 # a008 <__GNU_EH_FRAME_HDR+0x7638>
    23e6:	00c7c363          	blt	a5,a2,23ec <s25fl128s_dor+0x36>
    23ea:	8082                	ret
    23ec:	00279713          	slli	a4,a5,0x2
    23f0:	00d70533          	add	a0,a4,a3
    23f4:	4108                	lw	a0,0(a0)
    23f6:	972e                	add	a4,a4,a1
    23f8:	0785                	addi	a5,a5,1
    23fa:	c308                	sw	a0,0(a4)
    23fc:	b7ed                	j	23e6 <s25fl128s_dor+0x30>

Disassembly of section .text.s25fl128s_qor:

000023fe <s25fl128s_qor>:
    23fe:	fff60793          	addi	a5,a2,-1
    2402:	80002737          	lui	a4,0x80002
    2406:	36b70713          	addi	a4,a4,875 # 8000236b <__GNU_EH_FRAME_HDR+0x7ffff99b>
    240a:	07c2                	slli	a5,a5,0x10
    240c:	97ba                	add	a5,a5,a4
    240e:	6729                	lui	a4,0xa
    2410:	c348                	sw	a0,4(a4)
    2412:	6729                	lui	a4,0xa
    2414:	c31c                	sw	a5,0(a4)
    2416:	67a9                	lui	a5,0xa
    2418:	02878793          	addi	a5,a5,40 # a028 <__GNU_EH_FRAME_HDR+0x7658>
    241c:	4705                	li	a4,1
    241e:	4394                	lw	a3,0(a5)
    2420:	fee69fe3          	bne	a3,a4,241e <s25fl128s_qor+0x20>
    2424:	060d                	addi	a2,a2,3
    2426:	66a9                	lui	a3,0xa
    2428:	8609                	srai	a2,a2,0x2
    242a:	4781                	li	a5,0
    242c:	06a1                	addi	a3,a3,8 # a008 <__GNU_EH_FRAME_HDR+0x7638>
    242e:	00c7c363          	blt	a5,a2,2434 <s25fl128s_qor+0x36>
    2432:	8082                	ret
    2434:	00279713          	slli	a4,a5,0x2
    2438:	00d70533          	add	a0,a4,a3
    243c:	4108                	lw	a0,0(a0)
    243e:	972e                	add	a4,a4,a1
    2440:	0785                	addi	a5,a5,1
    2442:	c308                	sw	a0,0(a4)
    2444:	b7ed                	j	242e <s25fl128s_qor+0x30>

Disassembly of section .text.s25fl128s_qpp:

00002446 <s25fl128s_qpp>:
    2446:	fff60793          	addi	a5,a2,-1
    244a:	80002737          	lui	a4,0x80002
    244e:	f3270713          	addi	a4,a4,-206 # 80001f32 <__GNU_EH_FRAME_HDR+0x7ffff562>
    2452:	07c2                	slli	a5,a5,0x10
    2454:	97ba                	add	a5,a5,a4
    2456:	6729                	lui	a4,0xa
    2458:	c348                	sw	a0,4(a4)
    245a:	060d                	addi	a2,a2,3
    245c:	6729                	lui	a4,0xa
    245e:	66a9                	lui	a3,0xa
    2460:	c31c                	sw	a5,0(a4)
    2462:	8609                	srai	a2,a2,0x2
    2464:	4781                	li	a5,0
    2466:	06a1                	addi	a3,a3,8 # a008 <__GNU_EH_FRAME_HDR+0x7638>
    2468:	00c7ca63          	blt	a5,a2,247c <s25fl128s_qpp+0x36>
    246c:	67a9                	lui	a5,0xa
    246e:	02878793          	addi	a5,a5,40 # a028 <__GNU_EH_FRAME_HDR+0x7658>
    2472:	4705                	li	a4,1
    2474:	4394                	lw	a3,0(a5)
    2476:	fee69fe3          	bne	a3,a4,2474 <s25fl128s_qpp+0x2e>
    247a:	8082                	ret
    247c:	00279713          	slli	a4,a5,0x2
    2480:	00d70533          	add	a0,a4,a3
    2484:	972e                	add	a4,a4,a1
    2486:	4318                	lw	a4,0(a4)
    2488:	0785                	addi	a5,a5,1
    248a:	c118                	sw	a4,0(a0)
    248c:	bff1                	j	2468 <s25fl128s_qpp+0x22>

Disassembly of section .text.qspi_custom_write:

0000248e <qspi_custom_write>:
    248e:	0ff67613          	zext.b	a2,a2
    2492:	06a2                	slli	a3,a3,0x8
    2494:	96b2                	add	a3,a3,a2
    2496:	072e                	slli	a4,a4,0xb
    2498:	40068693          	addi	a3,a3,1024
    249c:	96ba                	add	a3,a3,a4
    249e:	fff78713          	addi	a4,a5,-1
    24a2:	0742                	slli	a4,a4,0x10
    24a4:	9736                	add	a4,a4,a3
    24a6:	0866                	slli	a6,a6,0x19
    24a8:	983a                	add	a6,a6,a4
    24aa:	80000737          	lui	a4,0x80000
    24ae:	983a                	add	a6,a6,a4
    24b0:	078d                	addi	a5,a5,3
    24b2:	6729                	lui	a4,0xa
    24b4:	6629                	lui	a2,0xa
    24b6:	c348                	sw	a0,4(a4)
    24b8:	8789                	srai	a5,a5,0x2
    24ba:	4701                	li	a4,0
    24bc:	0621                	addi	a2,a2,8 # a008 <__GNU_EH_FRAME_HDR+0x7638>
    24be:	00f74c63          	blt	a4,a5,24d6 <qspi_custom_write+0x48>
    24c2:	67a9                	lui	a5,0xa
    24c4:	0107a023          	sw	a6,0(a5) # a000 <__GNU_EH_FRAME_HDR+0x7630>
    24c8:	4705                	li	a4,1
    24ca:	02878793          	addi	a5,a5,40
    24ce:	4394                	lw	a3,0(a5)
    24d0:	fee69fe3          	bne	a3,a4,24ce <qspi_custom_write+0x40>
    24d4:	8082                	ret
    24d6:	00271693          	slli	a3,a4,0x2
    24da:	00c68533          	add	a0,a3,a2
    24de:	96ae                	add	a3,a3,a1
    24e0:	4294                	lw	a3,0(a3)
    24e2:	0705                	addi	a4,a4,1 # a001 <__GNU_EH_FRAME_HDR+0x7631>
    24e4:	c114                	sw	a3,0(a0)
    24e6:	bfe1                	j	24be <qspi_custom_write+0x30>

Disassembly of section .text.qspi_custom_read:

000024e8 <qspi_custom_read>:
    24e8:	0ff67613          	zext.b	a2,a2
    24ec:	06a2                	slli	a3,a3,0x8
    24ee:	072e                	slli	a4,a4,0xb
    24f0:	96b2                	add	a3,a3,a2
    24f2:	96ba                	add	a3,a3,a4
    24f4:	fff78713          	addi	a4,a5,-1
    24f8:	0742                	slli	a4,a4,0x10
    24fa:	9736                	add	a4,a4,a3
    24fc:	0866                	slli	a6,a6,0x19
    24fe:	983a                	add	a6,a6,a4
    2500:	80000737          	lui	a4,0x80000
    2504:	983a                	add	a6,a6,a4
    2506:	6729                	lui	a4,0xa
    2508:	c348                	sw	a0,4(a4)
    250a:	6729                	lui	a4,0xa
    250c:	01072023          	sw	a6,0(a4) # a000 <__GNU_EH_FRAME_HDR+0x7630>
    2510:	4685                	li	a3,1
    2512:	02870713          	addi	a4,a4,40
    2516:	4310                	lw	a2,0(a4)
    2518:	fed61fe3          	bne	a2,a3,2516 <qspi_custom_read+0x2e>
    251c:	078d                	addi	a5,a5,3
    251e:	6629                	lui	a2,0xa
    2520:	8789                	srai	a5,a5,0x2
    2522:	4701                	li	a4,0
    2524:	0621                	addi	a2,a2,8 # a008 <__GNU_EH_FRAME_HDR+0x7638>
    2526:	00f74363          	blt	a4,a5,252c <qspi_custom_read+0x44>
    252a:	8082                	ret
    252c:	00271693          	slli	a3,a4,0x2
    2530:	00c68533          	add	a0,a3,a2
    2534:	4108                	lw	a0,0(a0)
    2536:	96ae                	add	a3,a3,a1
    2538:	0705                	addi	a4,a4,1
    253a:	c288                	sw	a0,0(a3)
    253c:	b7ed                	j	2526 <qspi_custom_read+0x3e>

Disassembly of section .text.timer_read_counter:

0000253e <timer_read_counter>:
    253e:	67b1                	lui	a5,0xc
    2540:	4bc8                	lw	a0,20(a5)
    2542:	8082                	ret

Disassembly of section .text.timer_read_event:

00002544 <timer_read_event>:
    2544:	67b1                	lui	a5,0xc
    2546:	4f88                	lw	a0,24(a5)
    2548:	8082                	ret

Disassembly of section .text.timer_clear_counter:

0000254a <timer_clear_counter>:
    254a:	67b1                	lui	a5,0xc
    254c:	4705                	li	a4,1
    254e:	c798                	sw	a4,8(a5)
    2550:	8082                	ret

Disassembly of section .text.timer_clear_event:

00002552 <timer_clear_event>:
    2552:	67b1                	lui	a5,0xc
    2554:	4705                	li	a4,1
    2556:	cfd8                	sw	a4,28(a5)
    2558:	8082                	ret

Disassembly of section .text.timer_enable:

0000255a <timer_enable>:
    255a:	67b1                	lui	a5,0xc
    255c:	4705                	li	a4,1
    255e:	c7d8                	sw	a4,12(a5)
    2560:	8082                	ret

Disassembly of section .text.timer_disable:

00002562 <timer_disable>:
    2562:	67b1                	lui	a5,0xc
    2564:	0007a623          	sw	zero,12(a5) # c00c <__GNU_EH_FRAME_HDR+0x963c>
    2568:	8082                	ret

Disassembly of section .text.timer_conf:

0000256a <timer_conf>:
    256a:	67b1                	lui	a5,0xc
    256c:	c388                	sw	a0,0(a5)
    256e:	c3cc                	sw	a1,4(a5)
    2570:	67b1                	lui	a5,0xc
    2572:	cb90                	sw	a2,16(a5)
    2574:	08000513          	li	a0,128
    2578:	30046073          	csrsi	mstatus,8
    257c:	30452073          	csrs	mie,a0
    2580:	000215b7          	lui	a1,0x21
    2584:	8191                	srli	a1,a1,0x4
    2586:	30559073          	csrw	mtvec,a1

0000258a <_mie_check>:
    258a:	34402673          	csrr	a2,mip
    258e:	de75                	beqz	a2,258a <_mie_check>
    2590:	67b1                	lui	a5,0xc
    2592:	4705                	li	a4,1
    2594:	c7d8                	sw	a4,12(a5)
    2596:	8082                	ret

Disassembly of section .text.gpio_write:

00002598 <gpio_write>:
    2598:	67c1                	lui	a5,0x10
    259a:	c3c8                	sw	a0,4(a5)
    259c:	8082                	ret

Disassembly of section .text.gpio_read:

0000259e <gpio_read>:
    259e:	67c1                	lui	a5,0x10
    25a0:	4388                	lw	a0,0(a5)
    25a2:	0542                	slli	a0,a0,0x10
    25a4:	8541                	srai	a0,a0,0x10
    25a6:	8082                	ret

Disassembly of section .text.instr_mem_write:

000025a8 <instr_mem_write>:
    25a8:	050a                	slli	a0,a0,0x2
    25aa:	6791                	lui	a5,0x4
    25ac:	97aa                	add	a5,a5,a0
    25ae:	c38c                	sw	a1,0(a5)
    25b0:	8082                	ret

Disassembly of section .text.knightrider_i2c:

000025b2 <knightrider_i2c>:
    25b2:	1141                	addi	sp,sp,-16
    25b4:	c04a                	sw	s2,0(sp)
    25b6:	c606                	sw	ra,12(sp)
    25b8:	c422                	sw	s0,8(sp)
    25ba:	c226                	sw	s1,4(sp)
    25bc:	67a1                	lui	a5,0x8
    25be:	07b00713          	li	a4,123
    25c2:	c3d8                	sw	a4,4(a5)
    25c4:	4929                	li	s2,10
    25c6:	44fd                	li	s1,31
    25c8:	4405                	li	s0,1
    25ca:	0406                	slli	s0,s0,0x1
    25cc:	4591                	li	a1,4
    25ce:	8522                	mv	a0,s0
    25d0:	14fd                	addi	s1,s1,-1
    25d2:	3e8d                	jal	2144 <i2c_write>
    25d4:	f8fd                	bnez	s1,25ca <knightrider_i2c+0x18>
    25d6:	447d                	li	s0,31
    25d8:	800004b7          	lui	s1,0x80000
    25dc:	8085                	srli	s1,s1,0x1
    25de:	4591                	li	a1,4
    25e0:	8526                	mv	a0,s1
    25e2:	147d                	addi	s0,s0,-1
    25e4:	3685                	jal	2144 <i2c_write>
    25e6:	f87d                	bnez	s0,25dc <knightrider_i2c+0x2a>
    25e8:	197d                	addi	s2,s2,-1
    25ea:	fc091ee3          	bnez	s2,25c6 <knightrider_i2c+0x14>
    25ee:	40b2                	lw	ra,12(sp)
    25f0:	4422                	lw	s0,8(sp)
    25f2:	4492                	lw	s1,4(sp)
    25f4:	4902                	lw	s2,0(sp)
    25f6:	0141                	addi	sp,sp,16
    25f8:	8082                	ret
