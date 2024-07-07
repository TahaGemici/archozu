
a.out:     file format elf32-littleriscv


Disassembly of section .text:

00002000 <main>:
    2000:	66c1                	lui	a3,0x10
    2002:	67c1                	lui	a5,0x10
    2004:	fff68613          	addi	a2,a3,-1 # ffff <__GNU_EH_FRAME_HDR+0xd6cb>
    2008:	07a1                	addi	a5,a5,8 # 10008 <__GNU_EH_FRAME_HDR+0xd6d4>
    200a:	4298                	lw	a4,0(a3)
    200c:	8f71                	and	a4,a4,a2
    200e:	c398                	sw	a4,0(a5)
    2010:	bfed                	j	200a <main+0xa>
	...

Disassembly of section .text.uart_conf:

00002100 <uart_conf>:
    2100:	6799                	lui	a5,0x6
    2102:	c388                	sw	a0,0(a5)
    2104:	c3cc                	sw	a1,4(a5)
    2106:	8082                	ret

Disassembly of section .text.uart_read:

00002108 <uart_read>:
    2108:	6799                	lui	a5,0x6
    210a:	07c1                	addi	a5,a5,16 # 6010 <__GNU_EH_FRAME_HDR+0x36dc>
    210c:	4709                	li	a4,2
    210e:	4394                	lw	a3,0(a5)
    2110:	fee69fe3          	bne	a3,a4,210e <uart_read+0x6>
    2114:	6719                	lui	a4,0x6
    2116:	4708                	lw	a0,8(a4)
    2118:	0007a023          	sw	zero,0(a5)
    211c:	0ff57513          	zext.b	a0,a0
    2120:	8082                	ret

Disassembly of section .text.uart_write:

00002122 <uart_write>:
    2122:	6799                	lui	a5,0x6
    2124:	c7c8                	sw	a0,12(a5)
    2126:	6799                	lui	a5,0x6
    2128:	4705                	li	a4,1
    212a:	07c1                	addi	a5,a5,16 # 6010 <__GNU_EH_FRAME_HDR+0x36dc>
    212c:	c398                	sw	a4,0(a5)
    212e:	4715                	li	a4,5
    2130:	4394                	lw	a3,0(a5)
    2132:	fee69fe3          	bne	a3,a4,2130 <uart_write+0xe>
    2136:	0007a023          	sw	zero,0(a5)
    213a:	8082                	ret

Disassembly of section .text.i2c_conf:

0000213c <i2c_conf>:
    213c:	67a1                	lui	a5,0x8
    213e:	c3c8                	sw	a0,4(a5)
    2140:	8082                	ret

Disassembly of section .text.i2c_write:

00002142 <i2c_write>:
    2142:	67a1                	lui	a5,0x8
    2144:	c38c                	sw	a1,0(a5)
    2146:	c7c8                	sw	a0,12(a5)
    2148:	67a1                	lui	a5,0x8
    214a:	4705                	li	a4,1
    214c:	07c1                	addi	a5,a5,16 # 8010 <__GNU_EH_FRAME_HDR+0x56dc>
    214e:	c398                	sw	a4,0(a5)
    2150:	470d                	li	a4,3
    2152:	4394                	lw	a3,0(a5)
    2154:	fee69fe3          	bne	a3,a4,2152 <i2c_write+0x10>
    2158:	0007a023          	sw	zero,0(a5)
    215c:	8082                	ret

Disassembly of section .text.i2c_read:

0000215e <i2c_read>:
    215e:	67a1                	lui	a5,0x8
    2160:	c388                	sw	a0,0(a5)
    2162:	4711                	li	a4,4
    2164:	07c1                	addi	a5,a5,16 # 8010 <__GNU_EH_FRAME_HDR+0x56dc>
    2166:	c398                	sw	a4,0(a5)
    2168:	4731                	li	a4,12
    216a:	4394                	lw	a3,0(a5)
    216c:	fee69fe3          	bne	a3,a4,216a <i2c_read+0xc>
    2170:	0007a023          	sw	zero,0(a5)
    2174:	67a1                	lui	a5,0x8
    2176:	4788                	lw	a0,8(a5)
    2178:	8082                	ret

Disassembly of section .text.s25fl128s_wren:

0000217a <s25fl128s_wren>:
    217a:	800007b7          	lui	a5,0x80000
    217e:	0799                	addi	a5,a5,6 # 80000006 <__GNU_EH_FRAME_HDR+0x7fffd6d2>
    2180:	6729                	lui	a4,0xa
    2182:	c31c                	sw	a5,0(a4)
    2184:	67a9                	lui	a5,0xa
    2186:	02878793          	addi	a5,a5,40 # a028 <__GNU_EH_FRAME_HDR+0x76f4>
    218a:	4705                	li	a4,1
    218c:	4394                	lw	a3,0(a5)
    218e:	fee69fe3          	bne	a3,a4,218c <s25fl128s_wren+0x12>
    2192:	8082                	ret

Disassembly of section .text.s25fl128s_wrdi:

00002194 <s25fl128s_wrdi>:
    2194:	800007b7          	lui	a5,0x80000
    2198:	0791                	addi	a5,a5,4 # 80000004 <__GNU_EH_FRAME_HDR+0x7fffd6d0>
    219a:	6729                	lui	a4,0xa
    219c:	c31c                	sw	a5,0(a4)
    219e:	67a9                	lui	a5,0xa
    21a0:	02878793          	addi	a5,a5,40 # a028 <__GNU_EH_FRAME_HDR+0x76f4>
    21a4:	4705                	li	a4,1
    21a6:	4394                	lw	a3,0(a5)
    21a8:	fee69fe3          	bne	a3,a4,21a6 <s25fl128s_wrdi+0x12>
    21ac:	8082                	ret

Disassembly of section .text.s25fl128s_clsr:

000021ae <s25fl128s_clsr>:
    21ae:	800007b7          	lui	a5,0x80000
    21b2:	03078793          	addi	a5,a5,48 # 80000030 <__GNU_EH_FRAME_HDR+0x7fffd6fc>
    21b6:	6729                	lui	a4,0xa
    21b8:	c31c                	sw	a5,0(a4)
    21ba:	67a9                	lui	a5,0xa
    21bc:	02878793          	addi	a5,a5,40 # a028 <__GNU_EH_FRAME_HDR+0x76f4>
    21c0:	4705                	li	a4,1
    21c2:	4394                	lw	a3,0(a5)
    21c4:	fee69fe3          	bne	a3,a4,21c2 <s25fl128s_clsr+0x14>
    21c8:	8082                	ret

Disassembly of section .text.s25fl128s_reset:

000021ca <s25fl128s_reset>:
    21ca:	800007b7          	lui	a5,0x80000
    21ce:	0f078793          	addi	a5,a5,240 # 800000f0 <__GNU_EH_FRAME_HDR+0x7fffd7bc>
    21d2:	6729                	lui	a4,0xa
    21d4:	c31c                	sw	a5,0(a4)
    21d6:	67a9                	lui	a5,0xa
    21d8:	02878793          	addi	a5,a5,40 # a028 <__GNU_EH_FRAME_HDR+0x76f4>
    21dc:	4705                	li	a4,1
    21de:	4394                	lw	a3,0(a5)
    21e0:	fee69fe3          	bne	a3,a4,21de <s25fl128s_reset+0x14>
    21e4:	8082                	ret

Disassembly of section .text.s25fl128s_rdid:

000021e6 <s25fl128s_rdid>:
    21e6:	fff58793          	addi	a5,a1,-1
    21ea:	80000737          	lui	a4,0x80000
    21ee:	19f70713          	addi	a4,a4,415 # 8000019f <__GNU_EH_FRAME_HDR+0x7fffd86b>
    21f2:	07c2                	slli	a5,a5,0x10
    21f4:	97ba                	add	a5,a5,a4
    21f6:	6729                	lui	a4,0xa
    21f8:	c31c                	sw	a5,0(a4)
    21fa:	67a9                	lui	a5,0xa
    21fc:	02878793          	addi	a5,a5,40 # a028 <__GNU_EH_FRAME_HDR+0x76f4>
    2200:	4705                	li	a4,1
    2202:	4394                	lw	a3,0(a5)
    2204:	fee69fe3          	bne	a3,a4,2202 <s25fl128s_rdid+0x1c>
    2208:	058d                	addi	a1,a1,3
    220a:	6729                	lui	a4,0xa
    220c:	99f1                	andi	a1,a1,-4
    220e:	4781                	li	a5,0
    2210:	0721                	addi	a4,a4,8 # a008 <__GNU_EH_FRAME_HDR+0x76d4>
    2212:	00b79363          	bne	a5,a1,2218 <s25fl128s_rdid+0x32>
    2216:	8082                	ret
    2218:	00e786b3          	add	a3,a5,a4
    221c:	4290                	lw	a2,0(a3)
    221e:	00f506b3          	add	a3,a0,a5
    2222:	0791                	addi	a5,a5,4
    2224:	c290                	sw	a2,0(a3)
    2226:	b7f5                	j	2212 <s25fl128s_rdid+0x2c>

Disassembly of section .text.s25fl128s_rdsr1:

00002228 <s25fl128s_rdsr1>:
    2228:	800007b7          	lui	a5,0x80000
    222c:	10578793          	addi	a5,a5,261 # 80000105 <__GNU_EH_FRAME_HDR+0x7fffd7d1>
    2230:	6729                	lui	a4,0xa
    2232:	c31c                	sw	a5,0(a4)
    2234:	67a9                	lui	a5,0xa
    2236:	02878793          	addi	a5,a5,40 # a028 <__GNU_EH_FRAME_HDR+0x76f4>
    223a:	4705                	li	a4,1
    223c:	4394                	lw	a3,0(a5)
    223e:	fee69fe3          	bne	a3,a4,223c <s25fl128s_rdsr1+0x14>
    2242:	67a9                	lui	a5,0xa
    2244:	4788                	lw	a0,8(a5)
    2246:	0ff57513          	zext.b	a0,a0
    224a:	8082                	ret

Disassembly of section .text.s25fl128s_rdsr2:

0000224c <s25fl128s_rdsr2>:
    224c:	800007b7          	lui	a5,0x80000
    2250:	10778793          	addi	a5,a5,263 # 80000107 <__GNU_EH_FRAME_HDR+0x7fffd7d3>
    2254:	6729                	lui	a4,0xa
    2256:	c31c                	sw	a5,0(a4)
    2258:	67a9                	lui	a5,0xa
    225a:	02878793          	addi	a5,a5,40 # a028 <__GNU_EH_FRAME_HDR+0x76f4>
    225e:	4705                	li	a4,1
    2260:	4394                	lw	a3,0(a5)
    2262:	fee69fe3          	bne	a3,a4,2260 <s25fl128s_rdsr2+0x14>
    2266:	67a9                	lui	a5,0xa
    2268:	4788                	lw	a0,8(a5)
    226a:	0ff57513          	zext.b	a0,a0
    226e:	8082                	ret

Disassembly of section .text.s25fl128s_rdcr:

00002270 <s25fl128s_rdcr>:
    2270:	800007b7          	lui	a5,0x80000
    2274:	13578793          	addi	a5,a5,309 # 80000135 <__GNU_EH_FRAME_HDR+0x7fffd801>
    2278:	6729                	lui	a4,0xa
    227a:	c31c                	sw	a5,0(a4)
    227c:	67a9                	lui	a5,0xa
    227e:	02878793          	addi	a5,a5,40 # a028 <__GNU_EH_FRAME_HDR+0x76f4>
    2282:	4705                	li	a4,1
    2284:	4394                	lw	a3,0(a5)
    2286:	fee69fe3          	bne	a3,a4,2284 <s25fl128s_rdcr+0x14>
    228a:	67a9                	lui	a5,0xa
    228c:	4788                	lw	a0,8(a5)
    228e:	0ff57513          	zext.b	a0,a0
    2292:	8082                	ret

Disassembly of section .text.s25fl128s_read_id:

00002294 <s25fl128s_read_id>:
    2294:	67a9                	lui	a5,0xa
    2296:	c3c8                	sw	a0,4(a5)
    2298:	800127b7          	lui	a5,0x80012
    229c:	99078793          	addi	a5,a5,-1648 # 80011990 <__GNU_EH_FRAME_HDR+0x8000f05c>
    22a0:	6729                	lui	a4,0xa
    22a2:	c31c                	sw	a5,0(a4)
    22a4:	67a9                	lui	a5,0xa
    22a6:	02878793          	addi	a5,a5,40 # a028 <__GNU_EH_FRAME_HDR+0x76f4>
    22aa:	4705                	li	a4,1
    22ac:	4394                	lw	a3,0(a5)
    22ae:	fee69fe3          	bne	a3,a4,22ac <s25fl128s_read_id+0x18>
    22b2:	67a9                	lui	a5,0xa
    22b4:	4788                	lw	a0,8(a5)
    22b6:	0542                	slli	a0,a0,0x10
    22b8:	8141                	srli	a0,a0,0x10
    22ba:	8082                	ret

Disassembly of section .text.s25fl128s_res:

000022bc <s25fl128s_res>:
    22bc:	800027b7          	lui	a5,0x80002
    22c0:	9ab78793          	addi	a5,a5,-1621 # 800019ab <__GNU_EH_FRAME_HDR+0x7ffff077>
    22c4:	6729                	lui	a4,0xa
    22c6:	c31c                	sw	a5,0(a4)
    22c8:	67a9                	lui	a5,0xa
    22ca:	02878793          	addi	a5,a5,40 # a028 <__GNU_EH_FRAME_HDR+0x76f4>
    22ce:	4705                	li	a4,1
    22d0:	4394                	lw	a3,0(a5)
    22d2:	fee69fe3          	bne	a3,a4,22d0 <s25fl128s_res+0x14>
    22d6:	67a9                	lui	a5,0xa
    22d8:	4788                	lw	a0,8(a5)
    22da:	0ff57513          	zext.b	a0,a0
    22de:	8082                	ret

Disassembly of section .text.s25fl128s_wrr:

000022e0 <s25fl128s_wrr>:
    22e0:	67a9                	lui	a5,0xa
    22e2:	c788                	sw	a0,8(a5)
    22e4:	800107b7          	lui	a5,0x80010
    22e8:	50178793          	addi	a5,a5,1281 # 80010501 <__GNU_EH_FRAME_HDR+0x8000dbcd>
    22ec:	6729                	lui	a4,0xa
    22ee:	c31c                	sw	a5,0(a4)
    22f0:	67a9                	lui	a5,0xa
    22f2:	02878793          	addi	a5,a5,40 # a028 <__GNU_EH_FRAME_HDR+0x76f4>
    22f6:	4705                	li	a4,1
    22f8:	4394                	lw	a3,0(a5)
    22fa:	fee69fe3          	bne	a3,a4,22f8 <s25fl128s_wrr+0x18>
    22fe:	8082                	ret

Disassembly of section .text.s25fl128s_read:

00002300 <s25fl128s_read>:
    2300:	fff60793          	addi	a5,a2,-1
    2304:	80002737          	lui	a4,0x80002
    2308:	90370713          	addi	a4,a4,-1789 # 80001903 <__GNU_EH_FRAME_HDR+0x7fffefcf>
    230c:	07c2                	slli	a5,a5,0x10
    230e:	97ba                	add	a5,a5,a4
    2310:	6729                	lui	a4,0xa
    2312:	c348                	sw	a0,4(a4)
    2314:	6729                	lui	a4,0xa
    2316:	c31c                	sw	a5,0(a4)
    2318:	67a9                	lui	a5,0xa
    231a:	02878793          	addi	a5,a5,40 # a028 <__GNU_EH_FRAME_HDR+0x76f4>
    231e:	4705                	li	a4,1
    2320:	4394                	lw	a3,0(a5)
    2322:	fee69fe3          	bne	a3,a4,2320 <s25fl128s_read+0x20>
    2326:	060d                	addi	a2,a2,3
    2328:	66a9                	lui	a3,0xa
    232a:	8609                	srai	a2,a2,0x2
    232c:	4781                	li	a5,0
    232e:	06a1                	addi	a3,a3,8 # a008 <__GNU_EH_FRAME_HDR+0x76d4>
    2330:	00c7c363          	blt	a5,a2,2336 <s25fl128s_read+0x36>
    2334:	8082                	ret
    2336:	00279713          	slli	a4,a5,0x2
    233a:	00d70533          	add	a0,a4,a3
    233e:	4108                	lw	a0,0(a0)
    2340:	972e                	add	a4,a4,a1
    2342:	0785                	addi	a5,a5,1
    2344:	c308                	sw	a0,0(a4)
    2346:	b7ed                	j	2330 <s25fl128s_read+0x30>

Disassembly of section .text.s25fl128s_pp:

00002348 <s25fl128s_pp>:
    2348:	fff60793          	addi	a5,a2,-1
    234c:	80002737          	lui	a4,0x80002
    2350:	d0270713          	addi	a4,a4,-766 # 80001d02 <__GNU_EH_FRAME_HDR+0x7ffff3ce>
    2354:	07c2                	slli	a5,a5,0x10
    2356:	97ba                	add	a5,a5,a4
    2358:	6729                	lui	a4,0xa
    235a:	c348                	sw	a0,4(a4)
    235c:	060d                	addi	a2,a2,3
    235e:	6529                	lui	a0,0xa
    2360:	8609                	srai	a2,a2,0x2
    2362:	4701                	li	a4,0
    2364:	0521                	addi	a0,a0,8 # a008 <__GNU_EH_FRAME_HDR+0x76d4>
    2366:	00c74c63          	blt	a4,a2,237e <s25fl128s_pp+0x36>
    236a:	6729                	lui	a4,0xa
    236c:	c31c                	sw	a5,0(a4)
    236e:	67a9                	lui	a5,0xa
    2370:	02878793          	addi	a5,a5,40 # a028 <__GNU_EH_FRAME_HDR+0x76f4>
    2374:	4705                	li	a4,1
    2376:	4394                	lw	a3,0(a5)
    2378:	fee69fe3          	bne	a3,a4,2376 <s25fl128s_pp+0x2e>
    237c:	8082                	ret
    237e:	00271693          	slli	a3,a4,0x2
    2382:	00a68833          	add	a6,a3,a0
    2386:	96ae                	add	a3,a3,a1
    2388:	4294                	lw	a3,0(a3)
    238a:	0705                	addi	a4,a4,1 # a001 <__GNU_EH_FRAME_HDR+0x76cd>
    238c:	00d82023          	sw	a3,0(a6)
    2390:	bfd9                	j	2366 <s25fl128s_pp+0x1e>

Disassembly of section .text.s25fl128s_se:

00002392 <s25fl128s_se>:
    2392:	67a9                	lui	a5,0xa
    2394:	c788                	sw	a0,8(a5)
    2396:	800207b7          	lui	a5,0x80020
    239a:	5d878793          	addi	a5,a5,1496 # 800205d8 <__GNU_EH_FRAME_HDR+0x8001dca4>
    239e:	6729                	lui	a4,0xa
    23a0:	c31c                	sw	a5,0(a4)
    23a2:	67a9                	lui	a5,0xa
    23a4:	02878793          	addi	a5,a5,40 # a028 <__GNU_EH_FRAME_HDR+0x76f4>
    23a8:	4705                	li	a4,1
    23aa:	4394                	lw	a3,0(a5)
    23ac:	fee69fe3          	bne	a3,a4,23aa <s25fl128s_se+0x18>
    23b0:	8082                	ret

Disassembly of section .text.s25fl128s_dor:

000023b2 <s25fl128s_dor>:
    23b2:	fff60793          	addi	a5,a2,-1
    23b6:	80002737          	lui	a4,0x80002
    23ba:	23b70713          	addi	a4,a4,571 # 8000223b <__GNU_EH_FRAME_HDR+0x7ffff907>
    23be:	07c2                	slli	a5,a5,0x10
    23c0:	97ba                	add	a5,a5,a4
    23c2:	6729                	lui	a4,0xa
    23c4:	c348                	sw	a0,4(a4)
    23c6:	6729                	lui	a4,0xa
    23c8:	c31c                	sw	a5,0(a4)
    23ca:	67a9                	lui	a5,0xa
    23cc:	02878793          	addi	a5,a5,40 # a028 <__GNU_EH_FRAME_HDR+0x76f4>
    23d0:	4705                	li	a4,1
    23d2:	4394                	lw	a3,0(a5)
    23d4:	fee69fe3          	bne	a3,a4,23d2 <s25fl128s_dor+0x20>
    23d8:	060d                	addi	a2,a2,3
    23da:	66a9                	lui	a3,0xa
    23dc:	8609                	srai	a2,a2,0x2
    23de:	4781                	li	a5,0
    23e0:	06a1                	addi	a3,a3,8 # a008 <__GNU_EH_FRAME_HDR+0x76d4>
    23e2:	00c7c363          	blt	a5,a2,23e8 <s25fl128s_dor+0x36>
    23e6:	8082                	ret
    23e8:	00279713          	slli	a4,a5,0x2
    23ec:	00d70533          	add	a0,a4,a3
    23f0:	4108                	lw	a0,0(a0)
    23f2:	972e                	add	a4,a4,a1
    23f4:	0785                	addi	a5,a5,1
    23f6:	c308                	sw	a0,0(a4)
    23f8:	b7ed                	j	23e2 <s25fl128s_dor+0x30>

Disassembly of section .text.s25fl128s_qor:

000023fa <s25fl128s_qor>:
    23fa:	fff60793          	addi	a5,a2,-1
    23fe:	80002737          	lui	a4,0x80002
    2402:	36b70713          	addi	a4,a4,875 # 8000236b <__GNU_EH_FRAME_HDR+0x7ffffa37>
    2406:	07c2                	slli	a5,a5,0x10
    2408:	97ba                	add	a5,a5,a4
    240a:	6729                	lui	a4,0xa
    240c:	c348                	sw	a0,4(a4)
    240e:	6729                	lui	a4,0xa
    2410:	c31c                	sw	a5,0(a4)
    2412:	67a9                	lui	a5,0xa
    2414:	02878793          	addi	a5,a5,40 # a028 <__GNU_EH_FRAME_HDR+0x76f4>
    2418:	4705                	li	a4,1
    241a:	4394                	lw	a3,0(a5)
    241c:	fee69fe3          	bne	a3,a4,241a <s25fl128s_qor+0x20>
    2420:	060d                	addi	a2,a2,3
    2422:	66a9                	lui	a3,0xa
    2424:	8609                	srai	a2,a2,0x2
    2426:	4781                	li	a5,0
    2428:	06a1                	addi	a3,a3,8 # a008 <__GNU_EH_FRAME_HDR+0x76d4>
    242a:	00c7c363          	blt	a5,a2,2430 <s25fl128s_qor+0x36>
    242e:	8082                	ret
    2430:	00279713          	slli	a4,a5,0x2
    2434:	00d70533          	add	a0,a4,a3
    2438:	4108                	lw	a0,0(a0)
    243a:	972e                	add	a4,a4,a1
    243c:	0785                	addi	a5,a5,1
    243e:	c308                	sw	a0,0(a4)
    2440:	b7ed                	j	242a <s25fl128s_qor+0x30>

Disassembly of section .text.s25fl128s_qpp:

00002442 <s25fl128s_qpp>:
    2442:	fff60793          	addi	a5,a2,-1
    2446:	80002737          	lui	a4,0x80002
    244a:	f3270713          	addi	a4,a4,-206 # 80001f32 <__GNU_EH_FRAME_HDR+0x7ffff5fe>
    244e:	07c2                	slli	a5,a5,0x10
    2450:	97ba                	add	a5,a5,a4
    2452:	6729                	lui	a4,0xa
    2454:	c348                	sw	a0,4(a4)
    2456:	060d                	addi	a2,a2,3
    2458:	6729                	lui	a4,0xa
    245a:	66a9                	lui	a3,0xa
    245c:	c31c                	sw	a5,0(a4)
    245e:	8609                	srai	a2,a2,0x2
    2460:	4781                	li	a5,0
    2462:	06a1                	addi	a3,a3,8 # a008 <__GNU_EH_FRAME_HDR+0x76d4>
    2464:	00c7ca63          	blt	a5,a2,2478 <s25fl128s_qpp+0x36>
    2468:	67a9                	lui	a5,0xa
    246a:	02878793          	addi	a5,a5,40 # a028 <__GNU_EH_FRAME_HDR+0x76f4>
    246e:	4705                	li	a4,1
    2470:	4394                	lw	a3,0(a5)
    2472:	fee69fe3          	bne	a3,a4,2470 <s25fl128s_qpp+0x2e>
    2476:	8082                	ret
    2478:	00279713          	slli	a4,a5,0x2
    247c:	00d70533          	add	a0,a4,a3
    2480:	972e                	add	a4,a4,a1
    2482:	4318                	lw	a4,0(a4)
    2484:	0785                	addi	a5,a5,1
    2486:	c118                	sw	a4,0(a0)
    2488:	bff1                	j	2464 <s25fl128s_qpp+0x22>

Disassembly of section .text.qspi_custom_write:

0000248a <qspi_custom_write>:
    248a:	0ff67613          	zext.b	a2,a2
    248e:	06a2                	slli	a3,a3,0x8
    2490:	96b2                	add	a3,a3,a2
    2492:	072e                	slli	a4,a4,0xb
    2494:	40068693          	addi	a3,a3,1024
    2498:	96ba                	add	a3,a3,a4
    249a:	fff78713          	addi	a4,a5,-1
    249e:	0742                	slli	a4,a4,0x10
    24a0:	9736                	add	a4,a4,a3
    24a2:	0866                	slli	a6,a6,0x19
    24a4:	983a                	add	a6,a6,a4
    24a6:	80000737          	lui	a4,0x80000
    24aa:	983a                	add	a6,a6,a4
    24ac:	078d                	addi	a5,a5,3
    24ae:	6729                	lui	a4,0xa
    24b0:	6629                	lui	a2,0xa
    24b2:	c348                	sw	a0,4(a4)
    24b4:	8789                	srai	a5,a5,0x2
    24b6:	4701                	li	a4,0
    24b8:	0621                	addi	a2,a2,8 # a008 <__GNU_EH_FRAME_HDR+0x76d4>
    24ba:	00f74c63          	blt	a4,a5,24d2 <qspi_custom_write+0x48>
    24be:	67a9                	lui	a5,0xa
    24c0:	0107a023          	sw	a6,0(a5) # a000 <__GNU_EH_FRAME_HDR+0x76cc>
    24c4:	4705                	li	a4,1
    24c6:	02878793          	addi	a5,a5,40
    24ca:	4394                	lw	a3,0(a5)
    24cc:	fee69fe3          	bne	a3,a4,24ca <qspi_custom_write+0x40>
    24d0:	8082                	ret
    24d2:	00271693          	slli	a3,a4,0x2
    24d6:	00c68533          	add	a0,a3,a2
    24da:	96ae                	add	a3,a3,a1
    24dc:	4294                	lw	a3,0(a3)
    24de:	0705                	addi	a4,a4,1 # a001 <__GNU_EH_FRAME_HDR+0x76cd>
    24e0:	c114                	sw	a3,0(a0)
    24e2:	bfe1                	j	24ba <qspi_custom_write+0x30>

Disassembly of section .text.qspi_custom_read:

000024e4 <qspi_custom_read>:
    24e4:	0ff67613          	zext.b	a2,a2
    24e8:	06a2                	slli	a3,a3,0x8
    24ea:	072e                	slli	a4,a4,0xb
    24ec:	96b2                	add	a3,a3,a2
    24ee:	96ba                	add	a3,a3,a4
    24f0:	fff78713          	addi	a4,a5,-1
    24f4:	0742                	slli	a4,a4,0x10
    24f6:	9736                	add	a4,a4,a3
    24f8:	0866                	slli	a6,a6,0x19
    24fa:	983a                	add	a6,a6,a4
    24fc:	6729                	lui	a4,0xa
    24fe:	c348                	sw	a0,4(a4)
    2500:	80000737          	lui	a4,0x80000
    2504:	983a                	add	a6,a6,a4
    2506:	6729                	lui	a4,0xa
    2508:	01072023          	sw	a6,0(a4) # a000 <__GNU_EH_FRAME_HDR+0x76cc>
    250c:	4685                	li	a3,1
    250e:	02870713          	addi	a4,a4,40
    2512:	4310                	lw	a2,0(a4)
    2514:	fed61fe3          	bne	a2,a3,2512 <qspi_custom_read+0x2e>
    2518:	078d                	addi	a5,a5,3
    251a:	6629                	lui	a2,0xa
    251c:	8789                	srai	a5,a5,0x2
    251e:	4701                	li	a4,0
    2520:	0621                	addi	a2,a2,8 # a008 <__GNU_EH_FRAME_HDR+0x76d4>
    2522:	00f74363          	blt	a4,a5,2528 <qspi_custom_read+0x44>
    2526:	8082                	ret
    2528:	00271693          	slli	a3,a4,0x2
    252c:	00c68533          	add	a0,a3,a2
    2530:	4108                	lw	a0,0(a0)
    2532:	96ae                	add	a3,a3,a1
    2534:	0705                	addi	a4,a4,1
    2536:	c288                	sw	a0,0(a3)
    2538:	b7ed                	j	2522 <qspi_custom_read+0x3e>

Disassembly of section .text.timer_read_counter:

0000253a <timer_read_counter>:
    253a:	67b1                	lui	a5,0xc
    253c:	4bc8                	lw	a0,20(a5)
    253e:	8082                	ret

Disassembly of section .text.timer_read_event:

00002540 <timer_read_event>:
    2540:	67b1                	lui	a5,0xc
    2542:	4f88                	lw	a0,24(a5)
    2544:	8082                	ret

Disassembly of section .text.timer_clear_counter:

00002546 <timer_clear_counter>:
    2546:	67b1                	lui	a5,0xc
    2548:	4705                	li	a4,1
    254a:	c798                	sw	a4,8(a5)
    254c:	8082                	ret

Disassembly of section .text.timer_clear_event:

0000254e <timer_clear_event>:
    254e:	67b1                	lui	a5,0xc
    2550:	4705                	li	a4,1
    2552:	cfd8                	sw	a4,28(a5)
    2554:	8082                	ret

Disassembly of section .text.timer_enable:

00002556 <timer_enable>:
    2556:	67b1                	lui	a5,0xc
    2558:	4705                	li	a4,1
    255a:	c7d8                	sw	a4,12(a5)
    255c:	8082                	ret

Disassembly of section .text.timer_disable:

0000255e <timer_disable>:
    255e:	67b1                	lui	a5,0xc
    2560:	0007a623          	sw	zero,12(a5) # c00c <__GNU_EH_FRAME_HDR+0x96d8>
    2564:	8082                	ret

Disassembly of section .text.timer_conf:

00002566 <timer_conf>:
    2566:	67b1                	lui	a5,0xc
    2568:	c388                	sw	a0,0(a5)
    256a:	c3cc                	sw	a1,4(a5)
    256c:	67b1                	lui	a5,0xc
    256e:	cb90                	sw	a2,16(a5)
    2570:	08000513          	li	a0,128
    2574:	6589                	lui	a1,0x2
    2576:	10058593          	addi	a1,a1,256 # 2100 <uart_conf>
    257a:	30559073          	csrw	mtvec,a1
    257e:	30046073          	csrsi	mstatus,8
    2582:	30452073          	csrs	mie,a0
    2586:	8082                	ret

Disassembly of section .text.gpio_write:

00002588 <gpio_write>:
    2588:	67c1                	lui	a5,0x10
    258a:	c788                	sw	a0,8(a5)
    258c:	8082                	ret

Disassembly of section .text.gpio_read:

0000258e <gpio_read>:
    258e:	67c1                	lui	a5,0x10
    2590:	4388                	lw	a0,0(a5)
    2592:	0542                	slli	a0,a0,0x10
    2594:	8141                	srli	a0,a0,0x10
    2596:	8082                	ret

Disassembly of section .text.instr_mem_write:

00002598 <instr_mem_write>:
    2598:	050a                	slli	a0,a0,0x2
    259a:	6791                	lui	a5,0x4
    259c:	97aa                	add	a5,a5,a0
    259e:	c38c                	sw	a1,0(a5)
    25a0:	8082                	ret
