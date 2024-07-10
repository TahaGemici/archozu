
a.out:     file format elf32-littleriscv


Disassembly of section .text:

00002000 <main>:
    2000:	1141                	addi	sp,sp,-16
    2002:	c606                	sw	ra,12(sp)
    2004:	6799                	lui	a5,0x6
    2006:	7d000713          	li	a4,2000
    200a:	c398                	sw	a4,0(a5)
    200c:	4709                	li	a4,2
    200e:	c3d8                	sw	a4,4(a5)
    2010:	07b00513          	li	a0,123
    2014:	2a09                	jal	2126 <uart_write>
    2016:	bfed                	j	2010 <main+0x10>
	...

00002100 <interrupt>:
    2100:	30200073          	mret

Disassembly of section .text.uart_conf:

00002104 <uart_conf>:
    2104:	6799                	lui	a5,0x6
    2106:	c388                	sw	a0,0(a5)
    2108:	c3cc                	sw	a1,4(a5)
    210a:	8082                	ret

Disassembly of section .text.uart_read:

0000210c <uart_read>:
    210c:	6799                	lui	a5,0x6
    210e:	07c1                	addi	a5,a5,16 # 6010 <__GNU_EH_FRAME_HDR+0x36d0>
    2110:	4709                	li	a4,2
    2112:	4394                	lw	a3,0(a5)
    2114:	fee69fe3          	bne	a3,a4,2112 <uart_read+0x6>
    2118:	6719                	lui	a4,0x6
    211a:	4708                	lw	a0,8(a4)
    211c:	0007a023          	sw	zero,0(a5)
    2120:	0ff57513          	zext.b	a0,a0
    2124:	8082                	ret

Disassembly of section .text.uart_write:

00002126 <uart_write>:
    2126:	6799                	lui	a5,0x6
    2128:	c7c8                	sw	a0,12(a5)
    212a:	6799                	lui	a5,0x6
    212c:	4705                	li	a4,1
    212e:	07c1                	addi	a5,a5,16 # 6010 <__GNU_EH_FRAME_HDR+0x36d0>
    2130:	c398                	sw	a4,0(a5)
    2132:	4715                	li	a4,5
    2134:	4394                	lw	a3,0(a5)
    2136:	fee69fe3          	bne	a3,a4,2134 <uart_write+0xe>
    213a:	0007a023          	sw	zero,0(a5)
    213e:	8082                	ret

Disassembly of section .text.i2c_conf:

00002140 <i2c_conf>:
    2140:	67a1                	lui	a5,0x8
    2142:	c3c8                	sw	a0,4(a5)
    2144:	8082                	ret

Disassembly of section .text.i2c_write:

00002146 <i2c_write>:
    2146:	67a1                	lui	a5,0x8
    2148:	c38c                	sw	a1,0(a5)
    214a:	c7c8                	sw	a0,12(a5)
    214c:	67a1                	lui	a5,0x8
    214e:	4705                	li	a4,1
    2150:	07c1                	addi	a5,a5,16 # 8010 <__GNU_EH_FRAME_HDR+0x56d0>
    2152:	c398                	sw	a4,0(a5)
    2154:	470d                	li	a4,3
    2156:	4394                	lw	a3,0(a5)
    2158:	fee69fe3          	bne	a3,a4,2156 <i2c_write+0x10>
    215c:	0007a023          	sw	zero,0(a5)
    2160:	8082                	ret

Disassembly of section .text.i2c_read:

00002162 <i2c_read>:
    2162:	67a1                	lui	a5,0x8
    2164:	c388                	sw	a0,0(a5)
    2166:	4711                	li	a4,4
    2168:	07c1                	addi	a5,a5,16 # 8010 <__GNU_EH_FRAME_HDR+0x56d0>
    216a:	c398                	sw	a4,0(a5)
    216c:	4731                	li	a4,12
    216e:	4394                	lw	a3,0(a5)
    2170:	fee69fe3          	bne	a3,a4,216e <i2c_read+0xc>
    2174:	0007a023          	sw	zero,0(a5)
    2178:	67a1                	lui	a5,0x8
    217a:	4788                	lw	a0,8(a5)
    217c:	8082                	ret

Disassembly of section .text.s25fl128s_wren:

0000217e <s25fl128s_wren>:
    217e:	800007b7          	lui	a5,0x80000
    2182:	0799                	addi	a5,a5,6 # 80000006 <__GNU_EH_FRAME_HDR+0x7fffd6c6>
    2184:	6729                	lui	a4,0xa
    2186:	c31c                	sw	a5,0(a4)
    2188:	67a9                	lui	a5,0xa
    218a:	02878793          	addi	a5,a5,40 # a028 <__GNU_EH_FRAME_HDR+0x76e8>
    218e:	4705                	li	a4,1
    2190:	4394                	lw	a3,0(a5)
    2192:	fee69fe3          	bne	a3,a4,2190 <s25fl128s_wren+0x12>
    2196:	8082                	ret

Disassembly of section .text.s25fl128s_wrdi:

00002198 <s25fl128s_wrdi>:
    2198:	800007b7          	lui	a5,0x80000
    219c:	0791                	addi	a5,a5,4 # 80000004 <__GNU_EH_FRAME_HDR+0x7fffd6c4>
    219e:	6729                	lui	a4,0xa
    21a0:	c31c                	sw	a5,0(a4)
    21a2:	67a9                	lui	a5,0xa
    21a4:	02878793          	addi	a5,a5,40 # a028 <__GNU_EH_FRAME_HDR+0x76e8>
    21a8:	4705                	li	a4,1
    21aa:	4394                	lw	a3,0(a5)
    21ac:	fee69fe3          	bne	a3,a4,21aa <s25fl128s_wrdi+0x12>
    21b0:	8082                	ret

Disassembly of section .text.s25fl128s_clsr:

000021b2 <s25fl128s_clsr>:
    21b2:	800007b7          	lui	a5,0x80000
    21b6:	03078793          	addi	a5,a5,48 # 80000030 <__GNU_EH_FRAME_HDR+0x7fffd6f0>
    21ba:	6729                	lui	a4,0xa
    21bc:	c31c                	sw	a5,0(a4)
    21be:	67a9                	lui	a5,0xa
    21c0:	02878793          	addi	a5,a5,40 # a028 <__GNU_EH_FRAME_HDR+0x76e8>
    21c4:	4705                	li	a4,1
    21c6:	4394                	lw	a3,0(a5)
    21c8:	fee69fe3          	bne	a3,a4,21c6 <s25fl128s_clsr+0x14>
    21cc:	8082                	ret

Disassembly of section .text.s25fl128s_reset:

000021ce <s25fl128s_reset>:
    21ce:	800007b7          	lui	a5,0x80000
    21d2:	0f078793          	addi	a5,a5,240 # 800000f0 <__GNU_EH_FRAME_HDR+0x7fffd7b0>
    21d6:	6729                	lui	a4,0xa
    21d8:	c31c                	sw	a5,0(a4)
    21da:	67a9                	lui	a5,0xa
    21dc:	02878793          	addi	a5,a5,40 # a028 <__GNU_EH_FRAME_HDR+0x76e8>
    21e0:	4705                	li	a4,1
    21e2:	4394                	lw	a3,0(a5)
    21e4:	fee69fe3          	bne	a3,a4,21e2 <s25fl128s_reset+0x14>
    21e8:	8082                	ret

Disassembly of section .text.s25fl128s_rdid:

000021ea <s25fl128s_rdid>:
    21ea:	fff58793          	addi	a5,a1,-1
    21ee:	80000737          	lui	a4,0x80000
    21f2:	19f70713          	addi	a4,a4,415 # 8000019f <__GNU_EH_FRAME_HDR+0x7fffd85f>
    21f6:	07c2                	slli	a5,a5,0x10
    21f8:	97ba                	add	a5,a5,a4
    21fa:	6729                	lui	a4,0xa
    21fc:	c31c                	sw	a5,0(a4)
    21fe:	67a9                	lui	a5,0xa
    2200:	02878793          	addi	a5,a5,40 # a028 <__GNU_EH_FRAME_HDR+0x76e8>
    2204:	4705                	li	a4,1
    2206:	4394                	lw	a3,0(a5)
    2208:	fee69fe3          	bne	a3,a4,2206 <s25fl128s_rdid+0x1c>
    220c:	058d                	addi	a1,a1,3
    220e:	6729                	lui	a4,0xa
    2210:	99f1                	andi	a1,a1,-4
    2212:	4781                	li	a5,0
    2214:	0721                	addi	a4,a4,8 # a008 <__GNU_EH_FRAME_HDR+0x76c8>
    2216:	00b79363          	bne	a5,a1,221c <s25fl128s_rdid+0x32>
    221a:	8082                	ret
    221c:	00e786b3          	add	a3,a5,a4
    2220:	4290                	lw	a2,0(a3)
    2222:	00f506b3          	add	a3,a0,a5
    2226:	0791                	addi	a5,a5,4
    2228:	c290                	sw	a2,0(a3)
    222a:	b7f5                	j	2216 <s25fl128s_rdid+0x2c>

Disassembly of section .text.s25fl128s_rdsr1:

0000222c <s25fl128s_rdsr1>:
    222c:	800007b7          	lui	a5,0x80000
    2230:	10578793          	addi	a5,a5,261 # 80000105 <__GNU_EH_FRAME_HDR+0x7fffd7c5>
    2234:	6729                	lui	a4,0xa
    2236:	c31c                	sw	a5,0(a4)
    2238:	67a9                	lui	a5,0xa
    223a:	02878793          	addi	a5,a5,40 # a028 <__GNU_EH_FRAME_HDR+0x76e8>
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
    2254:	10778793          	addi	a5,a5,263 # 80000107 <__GNU_EH_FRAME_HDR+0x7fffd7c7>
    2258:	6729                	lui	a4,0xa
    225a:	c31c                	sw	a5,0(a4)
    225c:	67a9                	lui	a5,0xa
    225e:	02878793          	addi	a5,a5,40 # a028 <__GNU_EH_FRAME_HDR+0x76e8>
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
    2278:	13578793          	addi	a5,a5,309 # 80000135 <__GNU_EH_FRAME_HDR+0x7fffd7f5>
    227c:	6729                	lui	a4,0xa
    227e:	c31c                	sw	a5,0(a4)
    2280:	67a9                	lui	a5,0xa
    2282:	02878793          	addi	a5,a5,40 # a028 <__GNU_EH_FRAME_HDR+0x76e8>
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
    22a0:	99078793          	addi	a5,a5,-1648 # 80011990 <__GNU_EH_FRAME_HDR+0x8000f050>
    22a4:	6729                	lui	a4,0xa
    22a6:	c31c                	sw	a5,0(a4)
    22a8:	67a9                	lui	a5,0xa
    22aa:	02878793          	addi	a5,a5,40 # a028 <__GNU_EH_FRAME_HDR+0x76e8>
    22ae:	4705                	li	a4,1
    22b0:	4394                	lw	a3,0(a5)
    22b2:	fee69fe3          	bne	a3,a4,22b0 <s25fl128s_read_id+0x18>
    22b6:	67a9                	lui	a5,0xa
    22b8:	4788                	lw	a0,8(a5)
    22ba:	0542                	slli	a0,a0,0x10
    22bc:	8141                	srli	a0,a0,0x10
    22be:	8082                	ret

Disassembly of section .text.s25fl128s_res:

000022c0 <s25fl128s_res>:
    22c0:	800027b7          	lui	a5,0x80002
    22c4:	9ab78793          	addi	a5,a5,-1621 # 800019ab <__GNU_EH_FRAME_HDR+0x7ffff06b>
    22c8:	6729                	lui	a4,0xa
    22ca:	c31c                	sw	a5,0(a4)
    22cc:	67a9                	lui	a5,0xa
    22ce:	02878793          	addi	a5,a5,40 # a028 <__GNU_EH_FRAME_HDR+0x76e8>
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
    22ec:	50178793          	addi	a5,a5,1281 # 80010501 <__GNU_EH_FRAME_HDR+0x8000dbc1>
    22f0:	6729                	lui	a4,0xa
    22f2:	c31c                	sw	a5,0(a4)
    22f4:	67a9                	lui	a5,0xa
    22f6:	02878793          	addi	a5,a5,40 # a028 <__GNU_EH_FRAME_HDR+0x76e8>
    22fa:	4705                	li	a4,1
    22fc:	4394                	lw	a3,0(a5)
    22fe:	fee69fe3          	bne	a3,a4,22fc <s25fl128s_wrr+0x18>
    2302:	8082                	ret

Disassembly of section .text.s25fl128s_read:

00002304 <s25fl128s_read>:
    2304:	fff60793          	addi	a5,a2,-1
    2308:	80002737          	lui	a4,0x80002
    230c:	90370713          	addi	a4,a4,-1789 # 80001903 <__GNU_EH_FRAME_HDR+0x7fffefc3>
    2310:	07c2                	slli	a5,a5,0x10
    2312:	97ba                	add	a5,a5,a4
    2314:	6729                	lui	a4,0xa
    2316:	c348                	sw	a0,4(a4)
    2318:	6729                	lui	a4,0xa
    231a:	c31c                	sw	a5,0(a4)
    231c:	67a9                	lui	a5,0xa
    231e:	02878793          	addi	a5,a5,40 # a028 <__GNU_EH_FRAME_HDR+0x76e8>
    2322:	4705                	li	a4,1
    2324:	4394                	lw	a3,0(a5)
    2326:	fee69fe3          	bne	a3,a4,2324 <s25fl128s_read+0x20>
    232a:	060d                	addi	a2,a2,3
    232c:	6729                	lui	a4,0xa
    232e:	9a71                	andi	a2,a2,-4
    2330:	4781                	li	a5,0
    2332:	0721                	addi	a4,a4,8 # a008 <__GNU_EH_FRAME_HDR+0x76c8>
    2334:	00c79363          	bne	a5,a2,233a <s25fl128s_read+0x36>
    2338:	8082                	ret
    233a:	00e786b3          	add	a3,a5,a4
    233e:	4288                	lw	a0,0(a3)
    2340:	00f586b3          	add	a3,a1,a5
    2344:	0791                	addi	a5,a5,4
    2346:	c288                	sw	a0,0(a3)
    2348:	b7f5                	j	2334 <s25fl128s_read+0x30>

Disassembly of section .text.s25fl128s_pp:

0000234a <s25fl128s_pp>:
    234a:	fff60793          	addi	a5,a2,-1
    234e:	80002737          	lui	a4,0x80002
    2352:	d0270713          	addi	a4,a4,-766 # 80001d02 <__GNU_EH_FRAME_HDR+0x7ffff3c2>
    2356:	07c2                	slli	a5,a5,0x10
    2358:	97ba                	add	a5,a5,a4
    235a:	060d                	addi	a2,a2,3
    235c:	6729                	lui	a4,0xa
    235e:	66a9                	lui	a3,0xa
    2360:	c348                	sw	a0,4(a4)
    2362:	9a71                	andi	a2,a2,-4
    2364:	4701                	li	a4,0
    2366:	06a1                	addi	a3,a3,8 # a008 <__GNU_EH_FRAME_HDR+0x76c8>
    2368:	00c71c63          	bne	a4,a2,2380 <s25fl128s_pp+0x36>
    236c:	6729                	lui	a4,0xa
    236e:	c31c                	sw	a5,0(a4)
    2370:	67a9                	lui	a5,0xa
    2372:	02878793          	addi	a5,a5,40 # a028 <__GNU_EH_FRAME_HDR+0x76e8>
    2376:	4705                	li	a4,1
    2378:	4394                	lw	a3,0(a5)
    237a:	fee69fe3          	bne	a3,a4,2378 <s25fl128s_pp+0x2e>
    237e:	8082                	ret
    2380:	00e58833          	add	a6,a1,a4
    2384:	00082803          	lw	a6,0(a6)
    2388:	00d70533          	add	a0,a4,a3
    238c:	0711                	addi	a4,a4,4 # a004 <__GNU_EH_FRAME_HDR+0x76c4>
    238e:	01052023          	sw	a6,0(a0)
    2392:	bfd9                	j	2368 <s25fl128s_pp+0x1e>

Disassembly of section .text.s25fl128s_se:

00002394 <s25fl128s_se>:
    2394:	67a9                	lui	a5,0xa
    2396:	c788                	sw	a0,8(a5)
    2398:	800207b7          	lui	a5,0x80020
    239c:	5d878793          	addi	a5,a5,1496 # 800205d8 <__GNU_EH_FRAME_HDR+0x8001dc98>
    23a0:	6729                	lui	a4,0xa
    23a2:	c31c                	sw	a5,0(a4)
    23a4:	67a9                	lui	a5,0xa
    23a6:	02878793          	addi	a5,a5,40 # a028 <__GNU_EH_FRAME_HDR+0x76e8>
    23aa:	4705                	li	a4,1
    23ac:	4394                	lw	a3,0(a5)
    23ae:	fee69fe3          	bne	a3,a4,23ac <s25fl128s_se+0x18>
    23b2:	8082                	ret

Disassembly of section .text.s25fl128s_dor:

000023b4 <s25fl128s_dor>:
    23b4:	fff60793          	addi	a5,a2,-1
    23b8:	80002737          	lui	a4,0x80002
    23bc:	23b70713          	addi	a4,a4,571 # 8000223b <__GNU_EH_FRAME_HDR+0x7ffff8fb>
    23c0:	07c2                	slli	a5,a5,0x10
    23c2:	97ba                	add	a5,a5,a4
    23c4:	6729                	lui	a4,0xa
    23c6:	c348                	sw	a0,4(a4)
    23c8:	6729                	lui	a4,0xa
    23ca:	c31c                	sw	a5,0(a4)
    23cc:	67a9                	lui	a5,0xa
    23ce:	02878793          	addi	a5,a5,40 # a028 <__GNU_EH_FRAME_HDR+0x76e8>
    23d2:	4705                	li	a4,1
    23d4:	4394                	lw	a3,0(a5)
    23d6:	fee69fe3          	bne	a3,a4,23d4 <s25fl128s_dor+0x20>
    23da:	060d                	addi	a2,a2,3
    23dc:	6729                	lui	a4,0xa
    23de:	9a71                	andi	a2,a2,-4
    23e0:	4781                	li	a5,0
    23e2:	0721                	addi	a4,a4,8 # a008 <__GNU_EH_FRAME_HDR+0x76c8>
    23e4:	00c79363          	bne	a5,a2,23ea <s25fl128s_dor+0x36>
    23e8:	8082                	ret
    23ea:	00e786b3          	add	a3,a5,a4
    23ee:	4288                	lw	a0,0(a3)
    23f0:	00f586b3          	add	a3,a1,a5
    23f4:	0791                	addi	a5,a5,4
    23f6:	c288                	sw	a0,0(a3)
    23f8:	b7f5                	j	23e4 <s25fl128s_dor+0x30>

Disassembly of section .text.s25fl128s_qor:

000023fa <s25fl128s_qor>:
    23fa:	fff60793          	addi	a5,a2,-1
    23fe:	80002737          	lui	a4,0x80002
    2402:	36b70713          	addi	a4,a4,875 # 8000236b <__GNU_EH_FRAME_HDR+0x7ffffa2b>
    2406:	07c2                	slli	a5,a5,0x10
    2408:	97ba                	add	a5,a5,a4
    240a:	6729                	lui	a4,0xa
    240c:	c348                	sw	a0,4(a4)
    240e:	6729                	lui	a4,0xa
    2410:	c31c                	sw	a5,0(a4)
    2412:	67a9                	lui	a5,0xa
    2414:	02878793          	addi	a5,a5,40 # a028 <__GNU_EH_FRAME_HDR+0x76e8>
    2418:	4705                	li	a4,1
    241a:	4394                	lw	a3,0(a5)
    241c:	fee69fe3          	bne	a3,a4,241a <s25fl128s_qor+0x20>
    2420:	060d                	addi	a2,a2,3
    2422:	6729                	lui	a4,0xa
    2424:	9a71                	andi	a2,a2,-4
    2426:	4781                	li	a5,0
    2428:	0721                	addi	a4,a4,8 # a008 <__GNU_EH_FRAME_HDR+0x76c8>
    242a:	00c79363          	bne	a5,a2,2430 <s25fl128s_qor+0x36>
    242e:	8082                	ret
    2430:	00e786b3          	add	a3,a5,a4
    2434:	4288                	lw	a0,0(a3)
    2436:	00f586b3          	add	a3,a1,a5
    243a:	0791                	addi	a5,a5,4
    243c:	c288                	sw	a0,0(a3)
    243e:	b7f5                	j	242a <s25fl128s_qor+0x30>

Disassembly of section .text.s25fl128s_qpp:

00002440 <s25fl128s_qpp>:
    2440:	fff60793          	addi	a5,a2,-1
    2444:	80002737          	lui	a4,0x80002
    2448:	f3270713          	addi	a4,a4,-206 # 80001f32 <__GNU_EH_FRAME_HDR+0x7ffff5f2>
    244c:	07c2                	slli	a5,a5,0x10
    244e:	97ba                	add	a5,a5,a4
    2450:	6729                	lui	a4,0xa
    2452:	c348                	sw	a0,4(a4)
    2454:	060d                	addi	a2,a2,3
    2456:	6729                	lui	a4,0xa
    2458:	c31c                	sw	a5,0(a4)
    245a:	9a71                	andi	a2,a2,-4
    245c:	4781                	li	a5,0
    245e:	0721                	addi	a4,a4,8 # a008 <__GNU_EH_FRAME_HDR+0x76c8>
    2460:	00c79a63          	bne	a5,a2,2474 <s25fl128s_qpp+0x34>
    2464:	67a9                	lui	a5,0xa
    2466:	02878793          	addi	a5,a5,40 # a028 <__GNU_EH_FRAME_HDR+0x76e8>
    246a:	4705                	li	a4,1
    246c:	4394                	lw	a3,0(a5)
    246e:	fee69fe3          	bne	a3,a4,246c <s25fl128s_qpp+0x2c>
    2472:	8082                	ret
    2474:	00f58533          	add	a0,a1,a5
    2478:	4108                	lw	a0,0(a0)
    247a:	00e786b3          	add	a3,a5,a4
    247e:	0791                	addi	a5,a5,4
    2480:	c288                	sw	a0,0(a3)
    2482:	bff9                	j	2460 <s25fl128s_qpp+0x20>

Disassembly of section .text.qspi_custom_write:

00002484 <qspi_custom_write>:
    2484:	800008b7          	lui	a7,0x80000
    2488:	0866                	slli	a6,a6,0x19
    248a:	40088893          	addi	a7,a7,1024 # 80000400 <__GNU_EH_FRAME_HDR+0x7fffdac0>
    248e:	072e                	slli	a4,a4,0xb
    2490:	9846                	add	a6,a6,a7
    2492:	983a                	add	a6,a6,a4
    2494:	fff78713          	addi	a4,a5,-1
    2498:	0742                	slli	a4,a4,0x10
    249a:	983a                	add	a6,a6,a4
    249c:	06a2                	slli	a3,a3,0x8
    249e:	9836                	add	a6,a6,a3
    24a0:	6729                	lui	a4,0xa
    24a2:	0ff67613          	zext.b	a2,a2
    24a6:	078d                	addi	a5,a5,3
    24a8:	66a9                	lui	a3,0xa
    24aa:	c348                	sw	a0,4(a4)
    24ac:	9832                	add	a6,a6,a2
    24ae:	9bf1                	andi	a5,a5,-4
    24b0:	4701                	li	a4,0
    24b2:	06a1                	addi	a3,a3,8 # a008 <__GNU_EH_FRAME_HDR+0x76c8>
    24b4:	00e79c63          	bne	a5,a4,24cc <qspi_custom_write+0x48>
    24b8:	67a9                	lui	a5,0xa
    24ba:	0107a023          	sw	a6,0(a5) # a000 <__GNU_EH_FRAME_HDR+0x76c0>
    24be:	4705                	li	a4,1
    24c0:	02878793          	addi	a5,a5,40
    24c4:	4394                	lw	a3,0(a5)
    24c6:	fee69fe3          	bne	a3,a4,24c4 <qspi_custom_write+0x40>
    24ca:	8082                	ret
    24cc:	00e58533          	add	a0,a1,a4
    24d0:	4108                	lw	a0,0(a0)
    24d2:	00d70633          	add	a2,a4,a3
    24d6:	0711                	addi	a4,a4,4 # a004 <__GNU_EH_FRAME_HDR+0x76c4>
    24d8:	c208                	sw	a0,0(a2)
    24da:	bfe9                	j	24b4 <qspi_custom_write+0x30>

Disassembly of section .text.qspi_custom_read:

000024dc <qspi_custom_read>:
    24dc:	0866                	slli	a6,a6,0x19
    24de:	800008b7          	lui	a7,0x80000
    24e2:	072e                	slli	a4,a4,0xb
    24e4:	9846                	add	a6,a6,a7
    24e6:	983a                	add	a6,a6,a4
    24e8:	fff78713          	addi	a4,a5,-1
    24ec:	0742                	slli	a4,a4,0x10
    24ee:	983a                	add	a6,a6,a4
    24f0:	06a2                	slli	a3,a3,0x8
    24f2:	9836                	add	a6,a6,a3
    24f4:	6729                	lui	a4,0xa
    24f6:	0ff67613          	zext.b	a2,a2
    24fa:	c348                	sw	a0,4(a4)
    24fc:	9832                	add	a6,a6,a2
    24fe:	6729                	lui	a4,0xa
    2500:	01072023          	sw	a6,0(a4) # a000 <__GNU_EH_FRAME_HDR+0x76c0>
    2504:	4685                	li	a3,1
    2506:	02870713          	addi	a4,a4,40
    250a:	4310                	lw	a2,0(a4)
    250c:	fed61fe3          	bne	a2,a3,250a <qspi_custom_read+0x2e>
    2510:	078d                	addi	a5,a5,3
    2512:	66a9                	lui	a3,0xa
    2514:	9bf1                	andi	a5,a5,-4
    2516:	4701                	li	a4,0
    2518:	06a1                	addi	a3,a3,8 # a008 <__GNU_EH_FRAME_HDR+0x76c8>
    251a:	00e79363          	bne	a5,a4,2520 <qspi_custom_read+0x44>
    251e:	8082                	ret
    2520:	00d70633          	add	a2,a4,a3
    2524:	4208                	lw	a0,0(a2)
    2526:	00e58633          	add	a2,a1,a4
    252a:	0711                	addi	a4,a4,4
    252c:	c208                	sw	a0,0(a2)
    252e:	b7f5                	j	251a <qspi_custom_read+0x3e>

Disassembly of section .text.timer_read_counter:

00002530 <timer_read_counter>:
    2530:	67b1                	lui	a5,0xc
    2532:	4bc8                	lw	a0,20(a5)
    2534:	8082                	ret

Disassembly of section .text.timer_read_event:

00002536 <timer_read_event>:
    2536:	67b1                	lui	a5,0xc
    2538:	4f88                	lw	a0,24(a5)
    253a:	8082                	ret

Disassembly of section .text.timer_clear_counter:

0000253c <timer_clear_counter>:
    253c:	67b1                	lui	a5,0xc
    253e:	4705                	li	a4,1
    2540:	c798                	sw	a4,8(a5)
    2542:	8082                	ret

Disassembly of section .text.timer_clear_event:

00002544 <timer_clear_event>:
    2544:	67b1                	lui	a5,0xc
    2546:	4705                	li	a4,1
    2548:	cfd8                	sw	a4,28(a5)
    254a:	8082                	ret

Disassembly of section .text.timer_enable:

0000254c <timer_enable>:
    254c:	67b1                	lui	a5,0xc
    254e:	4705                	li	a4,1
    2550:	c7d8                	sw	a4,12(a5)
    2552:	8082                	ret

Disassembly of section .text.timer_disable:

00002554 <timer_disable>:
    2554:	67b1                	lui	a5,0xc
    2556:	0007a623          	sw	zero,12(a5) # c00c <__GNU_EH_FRAME_HDR+0x96cc>
    255a:	8082                	ret

Disassembly of section .text.timer_conf:

0000255c <timer_conf>:
    255c:	67b1                	lui	a5,0xc
    255e:	c388                	sw	a0,0(a5)
    2560:	c3cc                	sw	a1,4(a5)
    2562:	67b1                	lui	a5,0xc
    2564:	cb90                	sw	a2,16(a5)
    2566:	08000513          	li	a0,128
    256a:	6589                	lui	a1,0x2
    256c:	10058593          	addi	a1,a1,256 # 2100 <interrupt>
    2570:	30559073          	csrw	mtvec,a1
    2574:	30046073          	csrsi	mstatus,8
    2578:	30452073          	csrs	mie,a0
    257c:	8082                	ret

Disassembly of section .text.gpio_write:

0000257e <gpio_write>:
    257e:	67c1                	lui	a5,0x10
    2580:	c3c8                	sw	a0,4(a5)
    2582:	8082                	ret

Disassembly of section .text.gpio_read:

00002584 <gpio_read>:
    2584:	67c1                	lui	a5,0x10
    2586:	4388                	lw	a0,0(a5)
    2588:	0542                	slli	a0,a0,0x10
    258a:	8141                	srli	a0,a0,0x10
    258c:	8082                	ret

Disassembly of section .text.instr_mem_write:

0000258e <instr_mem_write>:
    258e:	050a                	slli	a0,a0,0x2
    2590:	6791                	lui	a5,0x4
    2592:	97aa                	add	a5,a5,a0
    2594:	c38c                	sw	a1,0(a5)
    2596:	8082                	ret
