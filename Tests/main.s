
a.out:     file format elf32-littleriscv


Disassembly of section .text:

00002000 <main>:
    2000:	1141                	addi	sp,sp,-16
    2002:	4605                	li	a2,1
    2004:	4581                	li	a1,0
    2006:	557d                	li	a0,-1
    2008:	c606                	sw	ra,12(sp)
    200a:	2ba5                	jal	2582 <timer_conf>
    200c:	67b1                	lui	a5,0xc
    200e:	4705                	li	a4,1
    2010:	c7d8                	sw	a4,12(a5)
    2012:	67c1                	lui	a5,0x10
    2014:	0791                	addi	a5,a5,4 # 10004 <__GNU_EH_FRAME_HDR+0xd610>
    2016:	08c01703          	lh	a4,140(zero) # 8c <abc>
    201a:	c398                	sw	a4,0(a5)
    201c:	bfed                	j	2016 <main+0x16>
	...

00002100 <interrupt>:
    2100:	1141                	addi	sp,sp,-16
    2102:	c63a                	sw	a4,12(sp)
    2104:	c43e                	sw	a5,8(sp)
    2106:	08c02783          	lw	a5,140(zero) # 8c <abc>
    210a:	0785                	addi	a5,a5,1
    210c:	08f02623          	sw	a5,140(zero) # 8c <abc>
    2110:	4732                	lw	a4,12(sp)
    2112:	47a2                	lw	a5,8(sp)
    2114:	0141                	addi	sp,sp,16
    2116:	30200073          	mret

Disassembly of section .text.uart_conf:

0000211a <uart_conf>:
    211a:	6799                	lui	a5,0x6
    211c:	c388                	sw	a0,0(a5)
    211e:	c3cc                	sw	a1,4(a5)
    2120:	8082                	ret

Disassembly of section .text.uart_read:

00002122 <uart_read>:
    2122:	6799                	lui	a5,0x6
    2124:	07c1                	addi	a5,a5,16 # 6010 <__GNU_EH_FRAME_HDR+0x361c>
    2126:	4709                	li	a4,2
    2128:	4394                	lw	a3,0(a5)
    212a:	fee69fe3          	bne	a3,a4,2128 <uart_read+0x6>
    212e:	6719                	lui	a4,0x6
    2130:	4708                	lw	a0,8(a4)
    2132:	0007a023          	sw	zero,0(a5)
    2136:	0ff57513          	zext.b	a0,a0
    213a:	8082                	ret

Disassembly of section .text.uart_write:

0000213c <uart_write>:
    213c:	6799                	lui	a5,0x6
    213e:	c7c8                	sw	a0,12(a5)
    2140:	6799                	lui	a5,0x6
    2142:	4705                	li	a4,1
    2144:	07c1                	addi	a5,a5,16 # 6010 <__GNU_EH_FRAME_HDR+0x361c>
    2146:	c398                	sw	a4,0(a5)
    2148:	4715                	li	a4,5
    214a:	4394                	lw	a3,0(a5)
    214c:	fee69fe3          	bne	a3,a4,214a <uart_write+0xe>
    2150:	0007a023          	sw	zero,0(a5)
    2154:	8082                	ret

Disassembly of section .text.i2c_conf:

00002156 <i2c_conf>:
    2156:	67a1                	lui	a5,0x8
    2158:	c3c8                	sw	a0,4(a5)
    215a:	8082                	ret

Disassembly of section .text.i2c_write:

0000215c <i2c_write>:
    215c:	67a1                	lui	a5,0x8
    215e:	c38c                	sw	a1,0(a5)
    2160:	c7c8                	sw	a0,12(a5)
    2162:	67a1                	lui	a5,0x8
    2164:	4705                	li	a4,1
    2166:	07c1                	addi	a5,a5,16 # 8010 <__GNU_EH_FRAME_HDR+0x561c>
    2168:	c398                	sw	a4,0(a5)
    216a:	470d                	li	a4,3
    216c:	4394                	lw	a3,0(a5)
    216e:	fee69fe3          	bne	a3,a4,216c <i2c_write+0x10>
    2172:	0007a023          	sw	zero,0(a5)
    2176:	8082                	ret

Disassembly of section .text.i2c_read:

00002178 <i2c_read>:
    2178:	67a1                	lui	a5,0x8
    217a:	c388                	sw	a0,0(a5)
    217c:	4711                	li	a4,4
    217e:	07c1                	addi	a5,a5,16 # 8010 <__GNU_EH_FRAME_HDR+0x561c>
    2180:	c398                	sw	a4,0(a5)
    2182:	4731                	li	a4,12
    2184:	4394                	lw	a3,0(a5)
    2186:	fee69fe3          	bne	a3,a4,2184 <i2c_read+0xc>
    218a:	0007a023          	sw	zero,0(a5)
    218e:	67a1                	lui	a5,0x8
    2190:	4788                	lw	a0,8(a5)
    2192:	8082                	ret

Disassembly of section .text.s25fl128s_wren:

00002194 <s25fl128s_wren>:
    2194:	800007b7          	lui	a5,0x80000
    2198:	0799                	addi	a5,a5,6 # 80000006 <__GNU_EH_FRAME_HDR+0x7fffd612>
    219a:	6729                	lui	a4,0xa
    219c:	c31c                	sw	a5,0(a4)
    219e:	67a9                	lui	a5,0xa
    21a0:	02878793          	addi	a5,a5,40 # a028 <__GNU_EH_FRAME_HDR+0x7634>
    21a4:	4705                	li	a4,1
    21a6:	4394                	lw	a3,0(a5)
    21a8:	fee69fe3          	bne	a3,a4,21a6 <s25fl128s_wren+0x12>
    21ac:	8082                	ret

Disassembly of section .text.s25fl128s_wrdi:

000021ae <s25fl128s_wrdi>:
    21ae:	800007b7          	lui	a5,0x80000
    21b2:	0791                	addi	a5,a5,4 # 80000004 <__GNU_EH_FRAME_HDR+0x7fffd610>
    21b4:	6729                	lui	a4,0xa
    21b6:	c31c                	sw	a5,0(a4)
    21b8:	67a9                	lui	a5,0xa
    21ba:	02878793          	addi	a5,a5,40 # a028 <__GNU_EH_FRAME_HDR+0x7634>
    21be:	4705                	li	a4,1
    21c0:	4394                	lw	a3,0(a5)
    21c2:	fee69fe3          	bne	a3,a4,21c0 <s25fl128s_wrdi+0x12>
    21c6:	8082                	ret

Disassembly of section .text.s25fl128s_clsr:

000021c8 <s25fl128s_clsr>:
    21c8:	800007b7          	lui	a5,0x80000
    21cc:	03078793          	addi	a5,a5,48 # 80000030 <__GNU_EH_FRAME_HDR+0x7fffd63c>
    21d0:	6729                	lui	a4,0xa
    21d2:	c31c                	sw	a5,0(a4)
    21d4:	67a9                	lui	a5,0xa
    21d6:	02878793          	addi	a5,a5,40 # a028 <__GNU_EH_FRAME_HDR+0x7634>
    21da:	4705                	li	a4,1
    21dc:	4394                	lw	a3,0(a5)
    21de:	fee69fe3          	bne	a3,a4,21dc <s25fl128s_clsr+0x14>
    21e2:	8082                	ret

Disassembly of section .text.s25fl128s_reset:

000021e4 <s25fl128s_reset>:
    21e4:	800007b7          	lui	a5,0x80000
    21e8:	0f078793          	addi	a5,a5,240 # 800000f0 <__GNU_EH_FRAME_HDR+0x7fffd6fc>
    21ec:	6729                	lui	a4,0xa
    21ee:	c31c                	sw	a5,0(a4)
    21f0:	67a9                	lui	a5,0xa
    21f2:	02878793          	addi	a5,a5,40 # a028 <__GNU_EH_FRAME_HDR+0x7634>
    21f6:	4705                	li	a4,1
    21f8:	4394                	lw	a3,0(a5)
    21fa:	fee69fe3          	bne	a3,a4,21f8 <s25fl128s_reset+0x14>
    21fe:	8082                	ret

Disassembly of section .text.s25fl128s_rdid:

00002200 <s25fl128s_rdid>:
    2200:	fff58793          	addi	a5,a1,-1
    2204:	80000737          	lui	a4,0x80000
    2208:	19f70713          	addi	a4,a4,415 # 8000019f <__GNU_EH_FRAME_HDR+0x7fffd7ab>
    220c:	07c2                	slli	a5,a5,0x10
    220e:	97ba                	add	a5,a5,a4
    2210:	6729                	lui	a4,0xa
    2212:	c31c                	sw	a5,0(a4)
    2214:	67a9                	lui	a5,0xa
    2216:	02878793          	addi	a5,a5,40 # a028 <__GNU_EH_FRAME_HDR+0x7634>
    221a:	4705                	li	a4,1
    221c:	4394                	lw	a3,0(a5)
    221e:	fee69fe3          	bne	a3,a4,221c <s25fl128s_rdid+0x1c>
    2222:	058d                	addi	a1,a1,3
    2224:	66a9                	lui	a3,0xa
    2226:	8589                	srai	a1,a1,0x2
    2228:	4781                	li	a5,0
    222a:	06a1                	addi	a3,a3,8 # a008 <__GNU_EH_FRAME_HDR+0x7614>
    222c:	00b7c363          	blt	a5,a1,2232 <s25fl128s_rdid+0x32>
    2230:	8082                	ret
    2232:	00279713          	slli	a4,a5,0x2
    2236:	00d70633          	add	a2,a4,a3
    223a:	4210                	lw	a2,0(a2)
    223c:	972a                	add	a4,a4,a0
    223e:	0785                	addi	a5,a5,1
    2240:	c310                	sw	a2,0(a4)
    2242:	b7ed                	j	222c <s25fl128s_rdid+0x2c>

Disassembly of section .text.s25fl128s_rdsr1:

00002244 <s25fl128s_rdsr1>:
    2244:	800007b7          	lui	a5,0x80000
    2248:	10578793          	addi	a5,a5,261 # 80000105 <__GNU_EH_FRAME_HDR+0x7fffd711>
    224c:	6729                	lui	a4,0xa
    224e:	c31c                	sw	a5,0(a4)
    2250:	67a9                	lui	a5,0xa
    2252:	02878793          	addi	a5,a5,40 # a028 <__GNU_EH_FRAME_HDR+0x7634>
    2256:	4705                	li	a4,1
    2258:	4394                	lw	a3,0(a5)
    225a:	fee69fe3          	bne	a3,a4,2258 <s25fl128s_rdsr1+0x14>
    225e:	67a9                	lui	a5,0xa
    2260:	4788                	lw	a0,8(a5)
    2262:	0ff57513          	zext.b	a0,a0
    2266:	8082                	ret

Disassembly of section .text.s25fl128s_rdsr2:

00002268 <s25fl128s_rdsr2>:
    2268:	800007b7          	lui	a5,0x80000
    226c:	10778793          	addi	a5,a5,263 # 80000107 <__GNU_EH_FRAME_HDR+0x7fffd713>
    2270:	6729                	lui	a4,0xa
    2272:	c31c                	sw	a5,0(a4)
    2274:	67a9                	lui	a5,0xa
    2276:	02878793          	addi	a5,a5,40 # a028 <__GNU_EH_FRAME_HDR+0x7634>
    227a:	4705                	li	a4,1
    227c:	4394                	lw	a3,0(a5)
    227e:	fee69fe3          	bne	a3,a4,227c <s25fl128s_rdsr2+0x14>
    2282:	67a9                	lui	a5,0xa
    2284:	4788                	lw	a0,8(a5)
    2286:	0ff57513          	zext.b	a0,a0
    228a:	8082                	ret

Disassembly of section .text.s25fl128s_rdcr:

0000228c <s25fl128s_rdcr>:
    228c:	800007b7          	lui	a5,0x80000
    2290:	13578793          	addi	a5,a5,309 # 80000135 <__GNU_EH_FRAME_HDR+0x7fffd741>
    2294:	6729                	lui	a4,0xa
    2296:	c31c                	sw	a5,0(a4)
    2298:	67a9                	lui	a5,0xa
    229a:	02878793          	addi	a5,a5,40 # a028 <__GNU_EH_FRAME_HDR+0x7634>
    229e:	4705                	li	a4,1
    22a0:	4394                	lw	a3,0(a5)
    22a2:	fee69fe3          	bne	a3,a4,22a0 <s25fl128s_rdcr+0x14>
    22a6:	67a9                	lui	a5,0xa
    22a8:	4788                	lw	a0,8(a5)
    22aa:	0ff57513          	zext.b	a0,a0
    22ae:	8082                	ret

Disassembly of section .text.s25fl128s_read_id:

000022b0 <s25fl128s_read_id>:
    22b0:	67a9                	lui	a5,0xa
    22b2:	c3c8                	sw	a0,4(a5)
    22b4:	800127b7          	lui	a5,0x80012
    22b8:	99078793          	addi	a5,a5,-1648 # 80011990 <__GNU_EH_FRAME_HDR+0x8000ef9c>
    22bc:	6729                	lui	a4,0xa
    22be:	c31c                	sw	a5,0(a4)
    22c0:	67a9                	lui	a5,0xa
    22c2:	02878793          	addi	a5,a5,40 # a028 <__GNU_EH_FRAME_HDR+0x7634>
    22c6:	4705                	li	a4,1
    22c8:	4394                	lw	a3,0(a5)
    22ca:	fee69fe3          	bne	a3,a4,22c8 <s25fl128s_read_id+0x18>
    22ce:	67a9                	lui	a5,0xa
    22d0:	4788                	lw	a0,8(a5)
    22d2:	0542                	slli	a0,a0,0x10
    22d4:	8541                	srai	a0,a0,0x10
    22d6:	8082                	ret

Disassembly of section .text.s25fl128s_res:

000022d8 <s25fl128s_res>:
    22d8:	800027b7          	lui	a5,0x80002
    22dc:	9ab78793          	addi	a5,a5,-1621 # 800019ab <__GNU_EH_FRAME_HDR+0x7fffefb7>
    22e0:	6729                	lui	a4,0xa
    22e2:	c31c                	sw	a5,0(a4)
    22e4:	67a9                	lui	a5,0xa
    22e6:	02878793          	addi	a5,a5,40 # a028 <__GNU_EH_FRAME_HDR+0x7634>
    22ea:	4705                	li	a4,1
    22ec:	4394                	lw	a3,0(a5)
    22ee:	fee69fe3          	bne	a3,a4,22ec <s25fl128s_res+0x14>
    22f2:	67a9                	lui	a5,0xa
    22f4:	4788                	lw	a0,8(a5)
    22f6:	0ff57513          	zext.b	a0,a0
    22fa:	8082                	ret

Disassembly of section .text.s25fl128s_wrr:

000022fc <s25fl128s_wrr>:
    22fc:	67a9                	lui	a5,0xa
    22fe:	c788                	sw	a0,8(a5)
    2300:	800107b7          	lui	a5,0x80010
    2304:	50178793          	addi	a5,a5,1281 # 80010501 <__GNU_EH_FRAME_HDR+0x8000db0d>
    2308:	6729                	lui	a4,0xa
    230a:	c31c                	sw	a5,0(a4)
    230c:	67a9                	lui	a5,0xa
    230e:	02878793          	addi	a5,a5,40 # a028 <__GNU_EH_FRAME_HDR+0x7634>
    2312:	4705                	li	a4,1
    2314:	4394                	lw	a3,0(a5)
    2316:	fee69fe3          	bne	a3,a4,2314 <s25fl128s_wrr+0x18>
    231a:	8082                	ret

Disassembly of section .text.s25fl128s_read:

0000231c <s25fl128s_read>:
    231c:	fff60793          	addi	a5,a2,-1
    2320:	80002737          	lui	a4,0x80002
    2324:	90370713          	addi	a4,a4,-1789 # 80001903 <__GNU_EH_FRAME_HDR+0x7fffef0f>
    2328:	07c2                	slli	a5,a5,0x10
    232a:	97ba                	add	a5,a5,a4
    232c:	6729                	lui	a4,0xa
    232e:	c348                	sw	a0,4(a4)
    2330:	6729                	lui	a4,0xa
    2332:	c31c                	sw	a5,0(a4)
    2334:	67a9                	lui	a5,0xa
    2336:	02878793          	addi	a5,a5,40 # a028 <__GNU_EH_FRAME_HDR+0x7634>
    233a:	4705                	li	a4,1
    233c:	4394                	lw	a3,0(a5)
    233e:	fee69fe3          	bne	a3,a4,233c <s25fl128s_read+0x20>
    2342:	060d                	addi	a2,a2,3
    2344:	66a9                	lui	a3,0xa
    2346:	8609                	srai	a2,a2,0x2
    2348:	4781                	li	a5,0
    234a:	06a1                	addi	a3,a3,8 # a008 <__GNU_EH_FRAME_HDR+0x7614>
    234c:	00c7c363          	blt	a5,a2,2352 <s25fl128s_read+0x36>
    2350:	8082                	ret
    2352:	00279713          	slli	a4,a5,0x2
    2356:	00d70533          	add	a0,a4,a3
    235a:	4108                	lw	a0,0(a0)
    235c:	972e                	add	a4,a4,a1
    235e:	0785                	addi	a5,a5,1
    2360:	c308                	sw	a0,0(a4)
    2362:	b7ed                	j	234c <s25fl128s_read+0x30>

Disassembly of section .text.s25fl128s_pp:

00002364 <s25fl128s_pp>:
    2364:	fff60793          	addi	a5,a2,-1
    2368:	80002737          	lui	a4,0x80002
    236c:	d0270713          	addi	a4,a4,-766 # 80001d02 <__GNU_EH_FRAME_HDR+0x7ffff30e>
    2370:	07c2                	slli	a5,a5,0x10
    2372:	97ba                	add	a5,a5,a4
    2374:	6729                	lui	a4,0xa
    2376:	c348                	sw	a0,4(a4)
    2378:	060d                	addi	a2,a2,3
    237a:	6529                	lui	a0,0xa
    237c:	8609                	srai	a2,a2,0x2
    237e:	4701                	li	a4,0
    2380:	0521                	addi	a0,a0,8 # a008 <__GNU_EH_FRAME_HDR+0x7614>
    2382:	00c74c63          	blt	a4,a2,239a <s25fl128s_pp+0x36>
    2386:	6729                	lui	a4,0xa
    2388:	c31c                	sw	a5,0(a4)
    238a:	67a9                	lui	a5,0xa
    238c:	02878793          	addi	a5,a5,40 # a028 <__GNU_EH_FRAME_HDR+0x7634>
    2390:	4705                	li	a4,1
    2392:	4394                	lw	a3,0(a5)
    2394:	fee69fe3          	bne	a3,a4,2392 <s25fl128s_pp+0x2e>
    2398:	8082                	ret
    239a:	00271693          	slli	a3,a4,0x2
    239e:	00a68833          	add	a6,a3,a0
    23a2:	96ae                	add	a3,a3,a1
    23a4:	4294                	lw	a3,0(a3)
    23a6:	0705                	addi	a4,a4,1 # a001 <__GNU_EH_FRAME_HDR+0x760d>
    23a8:	00d82023          	sw	a3,0(a6)
    23ac:	bfd9                	j	2382 <s25fl128s_pp+0x1e>

Disassembly of section .text.s25fl128s_se:

000023ae <s25fl128s_se>:
    23ae:	67a9                	lui	a5,0xa
    23b0:	c788                	sw	a0,8(a5)
    23b2:	800207b7          	lui	a5,0x80020
    23b6:	5d878793          	addi	a5,a5,1496 # 800205d8 <__GNU_EH_FRAME_HDR+0x8001dbe4>
    23ba:	6729                	lui	a4,0xa
    23bc:	c31c                	sw	a5,0(a4)
    23be:	67a9                	lui	a5,0xa
    23c0:	02878793          	addi	a5,a5,40 # a028 <__GNU_EH_FRAME_HDR+0x7634>
    23c4:	4705                	li	a4,1
    23c6:	4394                	lw	a3,0(a5)
    23c8:	fee69fe3          	bne	a3,a4,23c6 <s25fl128s_se+0x18>
    23cc:	8082                	ret

Disassembly of section .text.s25fl128s_dor:

000023ce <s25fl128s_dor>:
    23ce:	fff60793          	addi	a5,a2,-1
    23d2:	80002737          	lui	a4,0x80002
    23d6:	23b70713          	addi	a4,a4,571 # 8000223b <__GNU_EH_FRAME_HDR+0x7ffff847>
    23da:	07c2                	slli	a5,a5,0x10
    23dc:	97ba                	add	a5,a5,a4
    23de:	6729                	lui	a4,0xa
    23e0:	c348                	sw	a0,4(a4)
    23e2:	6729                	lui	a4,0xa
    23e4:	c31c                	sw	a5,0(a4)
    23e6:	67a9                	lui	a5,0xa
    23e8:	02878793          	addi	a5,a5,40 # a028 <__GNU_EH_FRAME_HDR+0x7634>
    23ec:	4705                	li	a4,1
    23ee:	4394                	lw	a3,0(a5)
    23f0:	fee69fe3          	bne	a3,a4,23ee <s25fl128s_dor+0x20>
    23f4:	060d                	addi	a2,a2,3
    23f6:	66a9                	lui	a3,0xa
    23f8:	8609                	srai	a2,a2,0x2
    23fa:	4781                	li	a5,0
    23fc:	06a1                	addi	a3,a3,8 # a008 <__GNU_EH_FRAME_HDR+0x7614>
    23fe:	00c7c363          	blt	a5,a2,2404 <s25fl128s_dor+0x36>
    2402:	8082                	ret
    2404:	00279713          	slli	a4,a5,0x2
    2408:	00d70533          	add	a0,a4,a3
    240c:	4108                	lw	a0,0(a0)
    240e:	972e                	add	a4,a4,a1
    2410:	0785                	addi	a5,a5,1
    2412:	c308                	sw	a0,0(a4)
    2414:	b7ed                	j	23fe <s25fl128s_dor+0x30>

Disassembly of section .text.s25fl128s_qor:

00002416 <s25fl128s_qor>:
    2416:	fff60793          	addi	a5,a2,-1
    241a:	80002737          	lui	a4,0x80002
    241e:	36b70713          	addi	a4,a4,875 # 8000236b <__GNU_EH_FRAME_HDR+0x7ffff977>
    2422:	07c2                	slli	a5,a5,0x10
    2424:	97ba                	add	a5,a5,a4
    2426:	6729                	lui	a4,0xa
    2428:	c348                	sw	a0,4(a4)
    242a:	6729                	lui	a4,0xa
    242c:	c31c                	sw	a5,0(a4)
    242e:	67a9                	lui	a5,0xa
    2430:	02878793          	addi	a5,a5,40 # a028 <__GNU_EH_FRAME_HDR+0x7634>
    2434:	4705                	li	a4,1
    2436:	4394                	lw	a3,0(a5)
    2438:	fee69fe3          	bne	a3,a4,2436 <s25fl128s_qor+0x20>
    243c:	060d                	addi	a2,a2,3
    243e:	66a9                	lui	a3,0xa
    2440:	8609                	srai	a2,a2,0x2
    2442:	4781                	li	a5,0
    2444:	06a1                	addi	a3,a3,8 # a008 <__GNU_EH_FRAME_HDR+0x7614>
    2446:	00c7c363          	blt	a5,a2,244c <s25fl128s_qor+0x36>
    244a:	8082                	ret
    244c:	00279713          	slli	a4,a5,0x2
    2450:	00d70533          	add	a0,a4,a3
    2454:	4108                	lw	a0,0(a0)
    2456:	972e                	add	a4,a4,a1
    2458:	0785                	addi	a5,a5,1
    245a:	c308                	sw	a0,0(a4)
    245c:	b7ed                	j	2446 <s25fl128s_qor+0x30>

Disassembly of section .text.s25fl128s_qpp:

0000245e <s25fl128s_qpp>:
    245e:	fff60793          	addi	a5,a2,-1
    2462:	80002737          	lui	a4,0x80002
    2466:	f3270713          	addi	a4,a4,-206 # 80001f32 <__GNU_EH_FRAME_HDR+0x7ffff53e>
    246a:	07c2                	slli	a5,a5,0x10
    246c:	97ba                	add	a5,a5,a4
    246e:	6729                	lui	a4,0xa
    2470:	c348                	sw	a0,4(a4)
    2472:	060d                	addi	a2,a2,3
    2474:	6729                	lui	a4,0xa
    2476:	66a9                	lui	a3,0xa
    2478:	c31c                	sw	a5,0(a4)
    247a:	8609                	srai	a2,a2,0x2
    247c:	4781                	li	a5,0
    247e:	06a1                	addi	a3,a3,8 # a008 <__GNU_EH_FRAME_HDR+0x7614>
    2480:	00c7ca63          	blt	a5,a2,2494 <s25fl128s_qpp+0x36>
    2484:	67a9                	lui	a5,0xa
    2486:	02878793          	addi	a5,a5,40 # a028 <__GNU_EH_FRAME_HDR+0x7634>
    248a:	4705                	li	a4,1
    248c:	4394                	lw	a3,0(a5)
    248e:	fee69fe3          	bne	a3,a4,248c <s25fl128s_qpp+0x2e>
    2492:	8082                	ret
    2494:	00279713          	slli	a4,a5,0x2
    2498:	00d70533          	add	a0,a4,a3
    249c:	972e                	add	a4,a4,a1
    249e:	4318                	lw	a4,0(a4)
    24a0:	0785                	addi	a5,a5,1
    24a2:	c118                	sw	a4,0(a0)
    24a4:	bff1                	j	2480 <s25fl128s_qpp+0x22>

Disassembly of section .text.qspi_custom_write:

000024a6 <qspi_custom_write>:
    24a6:	0ff67613          	zext.b	a2,a2
    24aa:	06a2                	slli	a3,a3,0x8
    24ac:	96b2                	add	a3,a3,a2
    24ae:	072e                	slli	a4,a4,0xb
    24b0:	40068693          	addi	a3,a3,1024
    24b4:	96ba                	add	a3,a3,a4
    24b6:	fff78713          	addi	a4,a5,-1
    24ba:	0742                	slli	a4,a4,0x10
    24bc:	9736                	add	a4,a4,a3
    24be:	0866                	slli	a6,a6,0x19
    24c0:	983a                	add	a6,a6,a4
    24c2:	80000737          	lui	a4,0x80000
    24c6:	983a                	add	a6,a6,a4
    24c8:	078d                	addi	a5,a5,3
    24ca:	6729                	lui	a4,0xa
    24cc:	6629                	lui	a2,0xa
    24ce:	c348                	sw	a0,4(a4)
    24d0:	8789                	srai	a5,a5,0x2
    24d2:	4701                	li	a4,0
    24d4:	0621                	addi	a2,a2,8 # a008 <__GNU_EH_FRAME_HDR+0x7614>
    24d6:	00f74c63          	blt	a4,a5,24ee <qspi_custom_write+0x48>
    24da:	67a9                	lui	a5,0xa
    24dc:	0107a023          	sw	a6,0(a5) # a000 <__GNU_EH_FRAME_HDR+0x760c>
    24e0:	4705                	li	a4,1
    24e2:	02878793          	addi	a5,a5,40
    24e6:	4394                	lw	a3,0(a5)
    24e8:	fee69fe3          	bne	a3,a4,24e6 <qspi_custom_write+0x40>
    24ec:	8082                	ret
    24ee:	00271693          	slli	a3,a4,0x2
    24f2:	00c68533          	add	a0,a3,a2
    24f6:	96ae                	add	a3,a3,a1
    24f8:	4294                	lw	a3,0(a3)
    24fa:	0705                	addi	a4,a4,1 # a001 <__GNU_EH_FRAME_HDR+0x760d>
    24fc:	c114                	sw	a3,0(a0)
    24fe:	bfe1                	j	24d6 <qspi_custom_write+0x30>

Disassembly of section .text.qspi_custom_read:

00002500 <qspi_custom_read>:
    2500:	0ff67613          	zext.b	a2,a2
    2504:	06a2                	slli	a3,a3,0x8
    2506:	072e                	slli	a4,a4,0xb
    2508:	96b2                	add	a3,a3,a2
    250a:	96ba                	add	a3,a3,a4
    250c:	fff78713          	addi	a4,a5,-1
    2510:	0742                	slli	a4,a4,0x10
    2512:	9736                	add	a4,a4,a3
    2514:	0866                	slli	a6,a6,0x19
    2516:	983a                	add	a6,a6,a4
    2518:	80000737          	lui	a4,0x80000
    251c:	983a                	add	a6,a6,a4
    251e:	6729                	lui	a4,0xa
    2520:	c348                	sw	a0,4(a4)
    2522:	6729                	lui	a4,0xa
    2524:	01072023          	sw	a6,0(a4) # a000 <__GNU_EH_FRAME_HDR+0x760c>
    2528:	4685                	li	a3,1
    252a:	02870713          	addi	a4,a4,40
    252e:	4310                	lw	a2,0(a4)
    2530:	fed61fe3          	bne	a2,a3,252e <qspi_custom_read+0x2e>
    2534:	078d                	addi	a5,a5,3
    2536:	6629                	lui	a2,0xa
    2538:	8789                	srai	a5,a5,0x2
    253a:	4701                	li	a4,0
    253c:	0621                	addi	a2,a2,8 # a008 <__GNU_EH_FRAME_HDR+0x7614>
    253e:	00f74363          	blt	a4,a5,2544 <qspi_custom_read+0x44>
    2542:	8082                	ret
    2544:	00271693          	slli	a3,a4,0x2
    2548:	00c68533          	add	a0,a3,a2
    254c:	4108                	lw	a0,0(a0)
    254e:	96ae                	add	a3,a3,a1
    2550:	0705                	addi	a4,a4,1
    2552:	c288                	sw	a0,0(a3)
    2554:	b7ed                	j	253e <qspi_custom_read+0x3e>

Disassembly of section .text.timer_read_counter:

00002556 <timer_read_counter>:
    2556:	67b1                	lui	a5,0xc
    2558:	4bc8                	lw	a0,20(a5)
    255a:	8082                	ret

Disassembly of section .text.timer_read_event:

0000255c <timer_read_event>:
    255c:	67b1                	lui	a5,0xc
    255e:	4f88                	lw	a0,24(a5)
    2560:	8082                	ret

Disassembly of section .text.timer_clear_counter:

00002562 <timer_clear_counter>:
    2562:	67b1                	lui	a5,0xc
    2564:	4705                	li	a4,1
    2566:	c798                	sw	a4,8(a5)
    2568:	8082                	ret

Disassembly of section .text.timer_clear_event:

0000256a <timer_clear_event>:
    256a:	67b1                	lui	a5,0xc
    256c:	4705                	li	a4,1
    256e:	cfd8                	sw	a4,28(a5)
    2570:	8082                	ret

Disassembly of section .text.timer_enable:

00002572 <timer_enable>:
    2572:	67b1                	lui	a5,0xc
    2574:	4705                	li	a4,1
    2576:	c7d8                	sw	a4,12(a5)
    2578:	8082                	ret

Disassembly of section .text.timer_disable:

0000257a <timer_disable>:
    257a:	67b1                	lui	a5,0xc
    257c:	0007a623          	sw	zero,12(a5) # c00c <__GNU_EH_FRAME_HDR+0x9618>
    2580:	8082                	ret

Disassembly of section .text.timer_conf:

00002582 <timer_conf>:
    2582:	67b1                	lui	a5,0xc
    2584:	c388                	sw	a0,0(a5)
    2586:	c3cc                	sw	a1,4(a5)
    2588:	67b1                	lui	a5,0xc
    258a:	cb90                	sw	a2,16(a5)
    258c:	08000513          	li	a0,128
    2590:	6589                	lui	a1,0x2
    2592:	10058593          	addi	a1,a1,256 # 2100 <interrupt>
    2596:	30559073          	csrw	mtvec,a1
    259a:	30046073          	csrsi	mstatus,8
    259e:	30452073          	csrs	mie,a0
    25a2:	8082                	ret

Disassembly of section .text.gpio_write:

000025a4 <gpio_write>:
    25a4:	67c1                	lui	a5,0x10
    25a6:	c3c8                	sw	a0,4(a5)
    25a8:	8082                	ret

Disassembly of section .text.gpio_read:

000025aa <gpio_read>:
    25aa:	67c1                	lui	a5,0x10
    25ac:	4388                	lw	a0,0(a5)
    25ae:	0542                	slli	a0,a0,0x10
    25b0:	8541                	srai	a0,a0,0x10
    25b2:	8082                	ret

Disassembly of section .text.instr_mem_write:

000025b4 <instr_mem_write>:
    25b4:	050a                	slli	a0,a0,0x2
    25b6:	6791                	lui	a5,0x4
    25b8:	97aa                	add	a5,a5,a0
    25ba:	c38c                	sw	a1,0(a5)
    25bc:	8082                	ret

Disassembly of section .text.knightrider_i2c:

000025be <knightrider_i2c>:
    25be:	1141                	addi	sp,sp,-16
    25c0:	c422                	sw	s0,8(sp)
    25c2:	c226                	sw	s1,4(sp)
    25c4:	c606                	sw	ra,12(sp)
    25c6:	441d                	li	s0,7
    25c8:	4485                	li	s1,1
    25ca:	0486                	slli	s1,s1,0x1
    25cc:	4585                	li	a1,1
    25ce:	8526                	mv	a0,s1
    25d0:	147d                	addi	s0,s0,-1
    25d2:	3669                	jal	215c <i2c_write>
    25d4:	f87d                	bnez	s0,25ca <knightrider_i2c+0xc>
    25d6:	441d                	li	s0,7
    25d8:	08000493          	li	s1,128
    25dc:	8085                	srli	s1,s1,0x1
    25de:	4585                	li	a1,1
    25e0:	8526                	mv	a0,s1
    25e2:	147d                	addi	s0,s0,-1
    25e4:	3ea5                	jal	215c <i2c_write>
    25e6:	f87d                	bnez	s0,25dc <knightrider_i2c+0x1e>
    25e8:	441d                	li	s0,7
    25ea:	4485                	li	s1,1
    25ec:	0486                	slli	s1,s1,0x1
    25ee:	4585                	li	a1,1
    25f0:	8526                	mv	a0,s1
    25f2:	147d                	addi	s0,s0,-1
    25f4:	36a5                	jal	215c <i2c_write>
    25f6:	f87d                	bnez	s0,25ec <knightrider_i2c+0x2e>
    25f8:	441d                	li	s0,7
    25fa:	08000493          	li	s1,128
    25fe:	8085                	srli	s1,s1,0x1
    2600:	4585                	li	a1,1
    2602:	8526                	mv	a0,s1
    2604:	147d                	addi	s0,s0,-1
    2606:	3e99                	jal	215c <i2c_write>
    2608:	f87d                	bnez	s0,25fe <knightrider_i2c+0x40>
    260a:	40b2                	lw	ra,12(sp)
    260c:	4422                	lw	s0,8(sp)
    260e:	4492                	lw	s1,4(sp)
    2610:	0141                	addi	sp,sp,16
    2612:	8082                	ret
