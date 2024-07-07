
a.out:     file format elf32-littleriscv


Disassembly of section .text:

00002000 <main>:
    2000:	1141                	addi	sp,sp,-16
    2002:	4605                	li	a2,1
    2004:	4581                	li	a1,0
    2006:	557d                	li	a0,-1
    2008:	c606                	sw	ra,12(sp)
    200a:	2349                	jal	258c <timer_conf>
    200c:	67b1                	lui	a5,0xc
    200e:	4705                	li	a4,1
    2010:	c7d8                	sw	a4,12(a5)
    2012:	66c1                	lui	a3,0x10
    2014:	67c1                	lui	a5,0x10
    2016:	16fd                	addi	a3,a3,-1 # ffff <__GNU_EH_FRAME_HDR+0xd5fb>
    2018:	0791                	addi	a5,a5,4 # 10004 <__GNU_EH_FRAME_HDR+0xd600>
    201a:	00002703          	lw	a4,0(zero) # 0 <abc>
    201e:	8f75                	and	a4,a4,a3
    2020:	c398                	sw	a4,0(a5)
    2022:	bfe5                	j	201a <main+0x1a>
	...

00002100 <interrupt>:
    2100:	1141                	addi	sp,sp,-16
    2102:	c23e                	sw	a5,4(sp)
    2104:	67c1                	lui	a5,0x10
    2106:	439c                	lw	a5,0(a5)
    2108:	c43a                	sw	a4,8(sp)
    210a:	c636                	sw	a3,12(sp)
    210c:	00002683          	lw	a3,0(zero) # 0 <abc>
    2110:	07c2                	slli	a5,a5,0x10
    2112:	83c1                	srli	a5,a5,0x10
    2114:	97b6                	add	a5,a5,a3
    2116:	00f02023          	sw	a5,0(zero) # 0 <abc>
    211a:	46b2                	lw	a3,12(sp)
    211c:	4722                	lw	a4,8(sp)
    211e:	4792                	lw	a5,4(sp)
    2120:	0141                	addi	sp,sp,16
    2122:	30200073          	mret

Disassembly of section .text.uart_conf:

00002126 <uart_conf>:
    2126:	6799                	lui	a5,0x6
    2128:	c388                	sw	a0,0(a5)
    212a:	c3cc                	sw	a1,4(a5)
    212c:	8082                	ret

Disassembly of section .text.uart_read:

0000212e <uart_read>:
    212e:	6799                	lui	a5,0x6
    2130:	07c1                	addi	a5,a5,16 # 6010 <__GNU_EH_FRAME_HDR+0x360c>
    2132:	4709                	li	a4,2
    2134:	4394                	lw	a3,0(a5)
    2136:	fee69fe3          	bne	a3,a4,2134 <uart_read+0x6>
    213a:	6719                	lui	a4,0x6
    213c:	4708                	lw	a0,8(a4)
    213e:	0007a023          	sw	zero,0(a5)
    2142:	0ff57513          	zext.b	a0,a0
    2146:	8082                	ret

Disassembly of section .text.uart_write:

00002148 <uart_write>:
    2148:	6799                	lui	a5,0x6
    214a:	c7c8                	sw	a0,12(a5)
    214c:	6799                	lui	a5,0x6
    214e:	4705                	li	a4,1
    2150:	07c1                	addi	a5,a5,16 # 6010 <__GNU_EH_FRAME_HDR+0x360c>
    2152:	c398                	sw	a4,0(a5)
    2154:	4715                	li	a4,5
    2156:	4394                	lw	a3,0(a5)
    2158:	fee69fe3          	bne	a3,a4,2156 <uart_write+0xe>
    215c:	0007a023          	sw	zero,0(a5)
    2160:	8082                	ret

Disassembly of section .text.i2c_conf:

00002162 <i2c_conf>:
    2162:	67a1                	lui	a5,0x8
    2164:	c3c8                	sw	a0,4(a5)
    2166:	8082                	ret

Disassembly of section .text.i2c_write:

00002168 <i2c_write>:
    2168:	67a1                	lui	a5,0x8
    216a:	c38c                	sw	a1,0(a5)
    216c:	c7c8                	sw	a0,12(a5)
    216e:	67a1                	lui	a5,0x8
    2170:	4705                	li	a4,1
    2172:	07c1                	addi	a5,a5,16 # 8010 <__GNU_EH_FRAME_HDR+0x560c>
    2174:	c398                	sw	a4,0(a5)
    2176:	470d                	li	a4,3
    2178:	4394                	lw	a3,0(a5)
    217a:	fee69fe3          	bne	a3,a4,2178 <i2c_write+0x10>
    217e:	0007a023          	sw	zero,0(a5)
    2182:	8082                	ret

Disassembly of section .text.i2c_read:

00002184 <i2c_read>:
    2184:	67a1                	lui	a5,0x8
    2186:	c388                	sw	a0,0(a5)
    2188:	4711                	li	a4,4
    218a:	07c1                	addi	a5,a5,16 # 8010 <__GNU_EH_FRAME_HDR+0x560c>
    218c:	c398                	sw	a4,0(a5)
    218e:	4731                	li	a4,12
    2190:	4394                	lw	a3,0(a5)
    2192:	fee69fe3          	bne	a3,a4,2190 <i2c_read+0xc>
    2196:	0007a023          	sw	zero,0(a5)
    219a:	67a1                	lui	a5,0x8
    219c:	4788                	lw	a0,8(a5)
    219e:	8082                	ret

Disassembly of section .text.s25fl128s_wren:

000021a0 <s25fl128s_wren>:
    21a0:	800007b7          	lui	a5,0x80000
    21a4:	0799                	addi	a5,a5,6 # 80000006 <__GNU_EH_FRAME_HDR+0x7fffd602>
    21a6:	6729                	lui	a4,0xa
    21a8:	c31c                	sw	a5,0(a4)
    21aa:	67a9                	lui	a5,0xa
    21ac:	02878793          	addi	a5,a5,40 # a028 <__GNU_EH_FRAME_HDR+0x7624>
    21b0:	4705                	li	a4,1
    21b2:	4394                	lw	a3,0(a5)
    21b4:	fee69fe3          	bne	a3,a4,21b2 <s25fl128s_wren+0x12>
    21b8:	8082                	ret

Disassembly of section .text.s25fl128s_wrdi:

000021ba <s25fl128s_wrdi>:
    21ba:	800007b7          	lui	a5,0x80000
    21be:	0791                	addi	a5,a5,4 # 80000004 <__GNU_EH_FRAME_HDR+0x7fffd600>
    21c0:	6729                	lui	a4,0xa
    21c2:	c31c                	sw	a5,0(a4)
    21c4:	67a9                	lui	a5,0xa
    21c6:	02878793          	addi	a5,a5,40 # a028 <__GNU_EH_FRAME_HDR+0x7624>
    21ca:	4705                	li	a4,1
    21cc:	4394                	lw	a3,0(a5)
    21ce:	fee69fe3          	bne	a3,a4,21cc <s25fl128s_wrdi+0x12>
    21d2:	8082                	ret

Disassembly of section .text.s25fl128s_clsr:

000021d4 <s25fl128s_clsr>:
    21d4:	800007b7          	lui	a5,0x80000
    21d8:	03078793          	addi	a5,a5,48 # 80000030 <__GNU_EH_FRAME_HDR+0x7fffd62c>
    21dc:	6729                	lui	a4,0xa
    21de:	c31c                	sw	a5,0(a4)
    21e0:	67a9                	lui	a5,0xa
    21e2:	02878793          	addi	a5,a5,40 # a028 <__GNU_EH_FRAME_HDR+0x7624>
    21e6:	4705                	li	a4,1
    21e8:	4394                	lw	a3,0(a5)
    21ea:	fee69fe3          	bne	a3,a4,21e8 <s25fl128s_clsr+0x14>
    21ee:	8082                	ret

Disassembly of section .text.s25fl128s_reset:

000021f0 <s25fl128s_reset>:
    21f0:	800007b7          	lui	a5,0x80000
    21f4:	0f078793          	addi	a5,a5,240 # 800000f0 <__GNU_EH_FRAME_HDR+0x7fffd6ec>
    21f8:	6729                	lui	a4,0xa
    21fa:	c31c                	sw	a5,0(a4)
    21fc:	67a9                	lui	a5,0xa
    21fe:	02878793          	addi	a5,a5,40 # a028 <__GNU_EH_FRAME_HDR+0x7624>
    2202:	4705                	li	a4,1
    2204:	4394                	lw	a3,0(a5)
    2206:	fee69fe3          	bne	a3,a4,2204 <s25fl128s_reset+0x14>
    220a:	8082                	ret

Disassembly of section .text.s25fl128s_rdid:

0000220c <s25fl128s_rdid>:
    220c:	fff58793          	addi	a5,a1,-1
    2210:	80000737          	lui	a4,0x80000
    2214:	19f70713          	addi	a4,a4,415 # 8000019f <__GNU_EH_FRAME_HDR+0x7fffd79b>
    2218:	07c2                	slli	a5,a5,0x10
    221a:	97ba                	add	a5,a5,a4
    221c:	6729                	lui	a4,0xa
    221e:	c31c                	sw	a5,0(a4)
    2220:	67a9                	lui	a5,0xa
    2222:	02878793          	addi	a5,a5,40 # a028 <__GNU_EH_FRAME_HDR+0x7624>
    2226:	4705                	li	a4,1
    2228:	4394                	lw	a3,0(a5)
    222a:	fee69fe3          	bne	a3,a4,2228 <s25fl128s_rdid+0x1c>
    222e:	058d                	addi	a1,a1,3
    2230:	6729                	lui	a4,0xa
    2232:	99f1                	andi	a1,a1,-4
    2234:	4781                	li	a5,0
    2236:	0721                	addi	a4,a4,8 # a008 <__GNU_EH_FRAME_HDR+0x7604>
    2238:	00b79363          	bne	a5,a1,223e <s25fl128s_rdid+0x32>
    223c:	8082                	ret
    223e:	00e786b3          	add	a3,a5,a4
    2242:	4290                	lw	a2,0(a3)
    2244:	00f506b3          	add	a3,a0,a5
    2248:	0791                	addi	a5,a5,4
    224a:	c290                	sw	a2,0(a3)
    224c:	b7f5                	j	2238 <s25fl128s_rdid+0x2c>

Disassembly of section .text.s25fl128s_rdsr1:

0000224e <s25fl128s_rdsr1>:
    224e:	800007b7          	lui	a5,0x80000
    2252:	10578793          	addi	a5,a5,261 # 80000105 <__GNU_EH_FRAME_HDR+0x7fffd701>
    2256:	6729                	lui	a4,0xa
    2258:	c31c                	sw	a5,0(a4)
    225a:	67a9                	lui	a5,0xa
    225c:	02878793          	addi	a5,a5,40 # a028 <__GNU_EH_FRAME_HDR+0x7624>
    2260:	4705                	li	a4,1
    2262:	4394                	lw	a3,0(a5)
    2264:	fee69fe3          	bne	a3,a4,2262 <s25fl128s_rdsr1+0x14>
    2268:	67a9                	lui	a5,0xa
    226a:	4788                	lw	a0,8(a5)
    226c:	0ff57513          	zext.b	a0,a0
    2270:	8082                	ret

Disassembly of section .text.s25fl128s_rdsr2:

00002272 <s25fl128s_rdsr2>:
    2272:	800007b7          	lui	a5,0x80000
    2276:	10778793          	addi	a5,a5,263 # 80000107 <__GNU_EH_FRAME_HDR+0x7fffd703>
    227a:	6729                	lui	a4,0xa
    227c:	c31c                	sw	a5,0(a4)
    227e:	67a9                	lui	a5,0xa
    2280:	02878793          	addi	a5,a5,40 # a028 <__GNU_EH_FRAME_HDR+0x7624>
    2284:	4705                	li	a4,1
    2286:	4394                	lw	a3,0(a5)
    2288:	fee69fe3          	bne	a3,a4,2286 <s25fl128s_rdsr2+0x14>
    228c:	67a9                	lui	a5,0xa
    228e:	4788                	lw	a0,8(a5)
    2290:	0ff57513          	zext.b	a0,a0
    2294:	8082                	ret

Disassembly of section .text.s25fl128s_rdcr:

00002296 <s25fl128s_rdcr>:
    2296:	800007b7          	lui	a5,0x80000
    229a:	13578793          	addi	a5,a5,309 # 80000135 <__GNU_EH_FRAME_HDR+0x7fffd731>
    229e:	6729                	lui	a4,0xa
    22a0:	c31c                	sw	a5,0(a4)
    22a2:	67a9                	lui	a5,0xa
    22a4:	02878793          	addi	a5,a5,40 # a028 <__GNU_EH_FRAME_HDR+0x7624>
    22a8:	4705                	li	a4,1
    22aa:	4394                	lw	a3,0(a5)
    22ac:	fee69fe3          	bne	a3,a4,22aa <s25fl128s_rdcr+0x14>
    22b0:	67a9                	lui	a5,0xa
    22b2:	4788                	lw	a0,8(a5)
    22b4:	0ff57513          	zext.b	a0,a0
    22b8:	8082                	ret

Disassembly of section .text.s25fl128s_read_id:

000022ba <s25fl128s_read_id>:
    22ba:	67a9                	lui	a5,0xa
    22bc:	c3c8                	sw	a0,4(a5)
    22be:	800127b7          	lui	a5,0x80012
    22c2:	99078793          	addi	a5,a5,-1648 # 80011990 <__GNU_EH_FRAME_HDR+0x8000ef8c>
    22c6:	6729                	lui	a4,0xa
    22c8:	c31c                	sw	a5,0(a4)
    22ca:	67a9                	lui	a5,0xa
    22cc:	02878793          	addi	a5,a5,40 # a028 <__GNU_EH_FRAME_HDR+0x7624>
    22d0:	4705                	li	a4,1
    22d2:	4394                	lw	a3,0(a5)
    22d4:	fee69fe3          	bne	a3,a4,22d2 <s25fl128s_read_id+0x18>
    22d8:	67a9                	lui	a5,0xa
    22da:	4788                	lw	a0,8(a5)
    22dc:	0542                	slli	a0,a0,0x10
    22de:	8141                	srli	a0,a0,0x10
    22e0:	8082                	ret

Disassembly of section .text.s25fl128s_res:

000022e2 <s25fl128s_res>:
    22e2:	800027b7          	lui	a5,0x80002
    22e6:	9ab78793          	addi	a5,a5,-1621 # 800019ab <__GNU_EH_FRAME_HDR+0x7fffefa7>
    22ea:	6729                	lui	a4,0xa
    22ec:	c31c                	sw	a5,0(a4)
    22ee:	67a9                	lui	a5,0xa
    22f0:	02878793          	addi	a5,a5,40 # a028 <__GNU_EH_FRAME_HDR+0x7624>
    22f4:	4705                	li	a4,1
    22f6:	4394                	lw	a3,0(a5)
    22f8:	fee69fe3          	bne	a3,a4,22f6 <s25fl128s_res+0x14>
    22fc:	67a9                	lui	a5,0xa
    22fe:	4788                	lw	a0,8(a5)
    2300:	0ff57513          	zext.b	a0,a0
    2304:	8082                	ret

Disassembly of section .text.s25fl128s_wrr:

00002306 <s25fl128s_wrr>:
    2306:	67a9                	lui	a5,0xa
    2308:	c788                	sw	a0,8(a5)
    230a:	800107b7          	lui	a5,0x80010
    230e:	50178793          	addi	a5,a5,1281 # 80010501 <__GNU_EH_FRAME_HDR+0x8000dafd>
    2312:	6729                	lui	a4,0xa
    2314:	c31c                	sw	a5,0(a4)
    2316:	67a9                	lui	a5,0xa
    2318:	02878793          	addi	a5,a5,40 # a028 <__GNU_EH_FRAME_HDR+0x7624>
    231c:	4705                	li	a4,1
    231e:	4394                	lw	a3,0(a5)
    2320:	fee69fe3          	bne	a3,a4,231e <s25fl128s_wrr+0x18>
    2324:	8082                	ret

Disassembly of section .text.s25fl128s_read:

00002326 <s25fl128s_read>:
    2326:	fff60793          	addi	a5,a2,-1
    232a:	80002737          	lui	a4,0x80002
    232e:	90370713          	addi	a4,a4,-1789 # 80001903 <__GNU_EH_FRAME_HDR+0x7fffeeff>
    2332:	07c2                	slli	a5,a5,0x10
    2334:	97ba                	add	a5,a5,a4
    2336:	6729                	lui	a4,0xa
    2338:	c348                	sw	a0,4(a4)
    233a:	6729                	lui	a4,0xa
    233c:	c31c                	sw	a5,0(a4)
    233e:	67a9                	lui	a5,0xa
    2340:	02878793          	addi	a5,a5,40 # a028 <__GNU_EH_FRAME_HDR+0x7624>
    2344:	4705                	li	a4,1
    2346:	4394                	lw	a3,0(a5)
    2348:	fee69fe3          	bne	a3,a4,2346 <s25fl128s_read+0x20>
    234c:	060d                	addi	a2,a2,3
    234e:	66a9                	lui	a3,0xa
    2350:	8609                	srai	a2,a2,0x2
    2352:	4781                	li	a5,0
    2354:	06a1                	addi	a3,a3,8 # a008 <__GNU_EH_FRAME_HDR+0x7604>
    2356:	00c7c363          	blt	a5,a2,235c <s25fl128s_read+0x36>
    235a:	8082                	ret
    235c:	00279713          	slli	a4,a5,0x2
    2360:	00d70533          	add	a0,a4,a3
    2364:	4108                	lw	a0,0(a0)
    2366:	972e                	add	a4,a4,a1
    2368:	0785                	addi	a5,a5,1
    236a:	c308                	sw	a0,0(a4)
    236c:	b7ed                	j	2356 <s25fl128s_read+0x30>

Disassembly of section .text.s25fl128s_pp:

0000236e <s25fl128s_pp>:
    236e:	fff60793          	addi	a5,a2,-1
    2372:	80002737          	lui	a4,0x80002
    2376:	d0270713          	addi	a4,a4,-766 # 80001d02 <__GNU_EH_FRAME_HDR+0x7ffff2fe>
    237a:	07c2                	slli	a5,a5,0x10
    237c:	97ba                	add	a5,a5,a4
    237e:	6729                	lui	a4,0xa
    2380:	c348                	sw	a0,4(a4)
    2382:	060d                	addi	a2,a2,3
    2384:	6529                	lui	a0,0xa
    2386:	8609                	srai	a2,a2,0x2
    2388:	4701                	li	a4,0
    238a:	0521                	addi	a0,a0,8 # a008 <__GNU_EH_FRAME_HDR+0x7604>
    238c:	00c74c63          	blt	a4,a2,23a4 <s25fl128s_pp+0x36>
    2390:	6729                	lui	a4,0xa
    2392:	c31c                	sw	a5,0(a4)
    2394:	67a9                	lui	a5,0xa
    2396:	02878793          	addi	a5,a5,40 # a028 <__GNU_EH_FRAME_HDR+0x7624>
    239a:	4705                	li	a4,1
    239c:	4394                	lw	a3,0(a5)
    239e:	fee69fe3          	bne	a3,a4,239c <s25fl128s_pp+0x2e>
    23a2:	8082                	ret
    23a4:	00271693          	slli	a3,a4,0x2
    23a8:	00a68833          	add	a6,a3,a0
    23ac:	96ae                	add	a3,a3,a1
    23ae:	4294                	lw	a3,0(a3)
    23b0:	0705                	addi	a4,a4,1 # a001 <__GNU_EH_FRAME_HDR+0x75fd>
    23b2:	00d82023          	sw	a3,0(a6)
    23b6:	bfd9                	j	238c <s25fl128s_pp+0x1e>

Disassembly of section .text.s25fl128s_se:

000023b8 <s25fl128s_se>:
    23b8:	67a9                	lui	a5,0xa
    23ba:	c788                	sw	a0,8(a5)
    23bc:	800207b7          	lui	a5,0x80020
    23c0:	5d878793          	addi	a5,a5,1496 # 800205d8 <__GNU_EH_FRAME_HDR+0x8001dbd4>
    23c4:	6729                	lui	a4,0xa
    23c6:	c31c                	sw	a5,0(a4)
    23c8:	67a9                	lui	a5,0xa
    23ca:	02878793          	addi	a5,a5,40 # a028 <__GNU_EH_FRAME_HDR+0x7624>
    23ce:	4705                	li	a4,1
    23d0:	4394                	lw	a3,0(a5)
    23d2:	fee69fe3          	bne	a3,a4,23d0 <s25fl128s_se+0x18>
    23d6:	8082                	ret

Disassembly of section .text.s25fl128s_dor:

000023d8 <s25fl128s_dor>:
    23d8:	fff60793          	addi	a5,a2,-1
    23dc:	80002737          	lui	a4,0x80002
    23e0:	23b70713          	addi	a4,a4,571 # 8000223b <__GNU_EH_FRAME_HDR+0x7ffff837>
    23e4:	07c2                	slli	a5,a5,0x10
    23e6:	97ba                	add	a5,a5,a4
    23e8:	6729                	lui	a4,0xa
    23ea:	c348                	sw	a0,4(a4)
    23ec:	6729                	lui	a4,0xa
    23ee:	c31c                	sw	a5,0(a4)
    23f0:	67a9                	lui	a5,0xa
    23f2:	02878793          	addi	a5,a5,40 # a028 <__GNU_EH_FRAME_HDR+0x7624>
    23f6:	4705                	li	a4,1
    23f8:	4394                	lw	a3,0(a5)
    23fa:	fee69fe3          	bne	a3,a4,23f8 <s25fl128s_dor+0x20>
    23fe:	060d                	addi	a2,a2,3
    2400:	66a9                	lui	a3,0xa
    2402:	8609                	srai	a2,a2,0x2
    2404:	4781                	li	a5,0
    2406:	06a1                	addi	a3,a3,8 # a008 <__GNU_EH_FRAME_HDR+0x7604>
    2408:	00c7c363          	blt	a5,a2,240e <s25fl128s_dor+0x36>
    240c:	8082                	ret
    240e:	00279713          	slli	a4,a5,0x2
    2412:	00d70533          	add	a0,a4,a3
    2416:	4108                	lw	a0,0(a0)
    2418:	972e                	add	a4,a4,a1
    241a:	0785                	addi	a5,a5,1
    241c:	c308                	sw	a0,0(a4)
    241e:	b7ed                	j	2408 <s25fl128s_dor+0x30>

Disassembly of section .text.s25fl128s_qor:

00002420 <s25fl128s_qor>:
    2420:	fff60793          	addi	a5,a2,-1
    2424:	80002737          	lui	a4,0x80002
    2428:	36b70713          	addi	a4,a4,875 # 8000236b <__GNU_EH_FRAME_HDR+0x7ffff967>
    242c:	07c2                	slli	a5,a5,0x10
    242e:	97ba                	add	a5,a5,a4
    2430:	6729                	lui	a4,0xa
    2432:	c348                	sw	a0,4(a4)
    2434:	6729                	lui	a4,0xa
    2436:	c31c                	sw	a5,0(a4)
    2438:	67a9                	lui	a5,0xa
    243a:	02878793          	addi	a5,a5,40 # a028 <__GNU_EH_FRAME_HDR+0x7624>
    243e:	4705                	li	a4,1
    2440:	4394                	lw	a3,0(a5)
    2442:	fee69fe3          	bne	a3,a4,2440 <s25fl128s_qor+0x20>
    2446:	060d                	addi	a2,a2,3
    2448:	66a9                	lui	a3,0xa
    244a:	8609                	srai	a2,a2,0x2
    244c:	4781                	li	a5,0
    244e:	06a1                	addi	a3,a3,8 # a008 <__GNU_EH_FRAME_HDR+0x7604>
    2450:	00c7c363          	blt	a5,a2,2456 <s25fl128s_qor+0x36>
    2454:	8082                	ret
    2456:	00279713          	slli	a4,a5,0x2
    245a:	00d70533          	add	a0,a4,a3
    245e:	4108                	lw	a0,0(a0)
    2460:	972e                	add	a4,a4,a1
    2462:	0785                	addi	a5,a5,1
    2464:	c308                	sw	a0,0(a4)
    2466:	b7ed                	j	2450 <s25fl128s_qor+0x30>

Disassembly of section .text.s25fl128s_qpp:

00002468 <s25fl128s_qpp>:
    2468:	fff60793          	addi	a5,a2,-1
    246c:	80002737          	lui	a4,0x80002
    2470:	f3270713          	addi	a4,a4,-206 # 80001f32 <__GNU_EH_FRAME_HDR+0x7ffff52e>
    2474:	07c2                	slli	a5,a5,0x10
    2476:	97ba                	add	a5,a5,a4
    2478:	6729                	lui	a4,0xa
    247a:	c348                	sw	a0,4(a4)
    247c:	060d                	addi	a2,a2,3
    247e:	6729                	lui	a4,0xa
    2480:	66a9                	lui	a3,0xa
    2482:	c31c                	sw	a5,0(a4)
    2484:	8609                	srai	a2,a2,0x2
    2486:	4781                	li	a5,0
    2488:	06a1                	addi	a3,a3,8 # a008 <__GNU_EH_FRAME_HDR+0x7604>
    248a:	00c7ca63          	blt	a5,a2,249e <s25fl128s_qpp+0x36>
    248e:	67a9                	lui	a5,0xa
    2490:	02878793          	addi	a5,a5,40 # a028 <__GNU_EH_FRAME_HDR+0x7624>
    2494:	4705                	li	a4,1
    2496:	4394                	lw	a3,0(a5)
    2498:	fee69fe3          	bne	a3,a4,2496 <s25fl128s_qpp+0x2e>
    249c:	8082                	ret
    249e:	00279713          	slli	a4,a5,0x2
    24a2:	00d70533          	add	a0,a4,a3
    24a6:	972e                	add	a4,a4,a1
    24a8:	4318                	lw	a4,0(a4)
    24aa:	0785                	addi	a5,a5,1
    24ac:	c118                	sw	a4,0(a0)
    24ae:	bff1                	j	248a <s25fl128s_qpp+0x22>

Disassembly of section .text.qspi_custom_write:

000024b0 <qspi_custom_write>:
    24b0:	0ff67613          	zext.b	a2,a2
    24b4:	06a2                	slli	a3,a3,0x8
    24b6:	96b2                	add	a3,a3,a2
    24b8:	072e                	slli	a4,a4,0xb
    24ba:	40068693          	addi	a3,a3,1024
    24be:	96ba                	add	a3,a3,a4
    24c0:	fff78713          	addi	a4,a5,-1
    24c4:	0742                	slli	a4,a4,0x10
    24c6:	9736                	add	a4,a4,a3
    24c8:	0866                	slli	a6,a6,0x19
    24ca:	983a                	add	a6,a6,a4
    24cc:	80000737          	lui	a4,0x80000
    24d0:	983a                	add	a6,a6,a4
    24d2:	078d                	addi	a5,a5,3
    24d4:	6729                	lui	a4,0xa
    24d6:	6629                	lui	a2,0xa
    24d8:	c348                	sw	a0,4(a4)
    24da:	8789                	srai	a5,a5,0x2
    24dc:	4701                	li	a4,0
    24de:	0621                	addi	a2,a2,8 # a008 <__GNU_EH_FRAME_HDR+0x7604>
    24e0:	00f74c63          	blt	a4,a5,24f8 <qspi_custom_write+0x48>
    24e4:	67a9                	lui	a5,0xa
    24e6:	0107a023          	sw	a6,0(a5) # a000 <__GNU_EH_FRAME_HDR+0x75fc>
    24ea:	4705                	li	a4,1
    24ec:	02878793          	addi	a5,a5,40
    24f0:	4394                	lw	a3,0(a5)
    24f2:	fee69fe3          	bne	a3,a4,24f0 <qspi_custom_write+0x40>
    24f6:	8082                	ret
    24f8:	00271693          	slli	a3,a4,0x2
    24fc:	00c68533          	add	a0,a3,a2
    2500:	96ae                	add	a3,a3,a1
    2502:	4294                	lw	a3,0(a3)
    2504:	0705                	addi	a4,a4,1 # a001 <__GNU_EH_FRAME_HDR+0x75fd>
    2506:	c114                	sw	a3,0(a0)
    2508:	bfe1                	j	24e0 <qspi_custom_write+0x30>

Disassembly of section .text.qspi_custom_read:

0000250a <qspi_custom_read>:
    250a:	0ff67613          	zext.b	a2,a2
    250e:	06a2                	slli	a3,a3,0x8
    2510:	072e                	slli	a4,a4,0xb
    2512:	96b2                	add	a3,a3,a2
    2514:	96ba                	add	a3,a3,a4
    2516:	fff78713          	addi	a4,a5,-1
    251a:	0742                	slli	a4,a4,0x10
    251c:	9736                	add	a4,a4,a3
    251e:	0866                	slli	a6,a6,0x19
    2520:	983a                	add	a6,a6,a4
    2522:	6729                	lui	a4,0xa
    2524:	c348                	sw	a0,4(a4)
    2526:	80000737          	lui	a4,0x80000
    252a:	983a                	add	a6,a6,a4
    252c:	6729                	lui	a4,0xa
    252e:	01072023          	sw	a6,0(a4) # a000 <__GNU_EH_FRAME_HDR+0x75fc>
    2532:	4685                	li	a3,1
    2534:	02870713          	addi	a4,a4,40
    2538:	4310                	lw	a2,0(a4)
    253a:	fed61fe3          	bne	a2,a3,2538 <qspi_custom_read+0x2e>
    253e:	078d                	addi	a5,a5,3
    2540:	6629                	lui	a2,0xa
    2542:	8789                	srai	a5,a5,0x2
    2544:	4701                	li	a4,0
    2546:	0621                	addi	a2,a2,8 # a008 <__GNU_EH_FRAME_HDR+0x7604>
    2548:	00f74363          	blt	a4,a5,254e <qspi_custom_read+0x44>
    254c:	8082                	ret
    254e:	00271693          	slli	a3,a4,0x2
    2552:	00c68533          	add	a0,a3,a2
    2556:	4108                	lw	a0,0(a0)
    2558:	96ae                	add	a3,a3,a1
    255a:	0705                	addi	a4,a4,1
    255c:	c288                	sw	a0,0(a3)
    255e:	b7ed                	j	2548 <qspi_custom_read+0x3e>

Disassembly of section .text.timer_read_counter:

00002560 <timer_read_counter>:
    2560:	67b1                	lui	a5,0xc
    2562:	4bc8                	lw	a0,20(a5)
    2564:	8082                	ret

Disassembly of section .text.timer_read_event:

00002566 <timer_read_event>:
    2566:	67b1                	lui	a5,0xc
    2568:	4f88                	lw	a0,24(a5)
    256a:	8082                	ret

Disassembly of section .text.timer_clear_counter:

0000256c <timer_clear_counter>:
    256c:	67b1                	lui	a5,0xc
    256e:	4705                	li	a4,1
    2570:	c798                	sw	a4,8(a5)
    2572:	8082                	ret

Disassembly of section .text.timer_clear_event:

00002574 <timer_clear_event>:
    2574:	67b1                	lui	a5,0xc
    2576:	4705                	li	a4,1
    2578:	cfd8                	sw	a4,28(a5)
    257a:	8082                	ret

Disassembly of section .text.timer_enable:

0000257c <timer_enable>:
    257c:	67b1                	lui	a5,0xc
    257e:	4705                	li	a4,1
    2580:	c7d8                	sw	a4,12(a5)
    2582:	8082                	ret

Disassembly of section .text.timer_disable:

00002584 <timer_disable>:
    2584:	67b1                	lui	a5,0xc
    2586:	0007a623          	sw	zero,12(a5) # c00c <__GNU_EH_FRAME_HDR+0x9608>
    258a:	8082                	ret

Disassembly of section .text.timer_conf:

0000258c <timer_conf>:
    258c:	67b1                	lui	a5,0xc
    258e:	c388                	sw	a0,0(a5)
    2590:	c3cc                	sw	a1,4(a5)
    2592:	67b1                	lui	a5,0xc
    2594:	cb90                	sw	a2,16(a5)
    2596:	08000513          	li	a0,128
    259a:	6589                	lui	a1,0x2
    259c:	10058593          	addi	a1,a1,256 # 2100 <interrupt>
    25a0:	30559073          	csrw	mtvec,a1
    25a4:	30046073          	csrsi	mstatus,8
    25a8:	30452073          	csrs	mie,a0
    25ac:	8082                	ret

Disassembly of section .text.gpio_write:

000025ae <gpio_write>:
    25ae:	67c1                	lui	a5,0x10
    25b0:	c3c8                	sw	a0,4(a5)
    25b2:	8082                	ret

Disassembly of section .text.gpio_read:

000025b4 <gpio_read>:
    25b4:	67c1                	lui	a5,0x10
    25b6:	4388                	lw	a0,0(a5)
    25b8:	0542                	slli	a0,a0,0x10
    25ba:	8141                	srli	a0,a0,0x10
    25bc:	8082                	ret

Disassembly of section .text.instr_mem_write:

000025be <instr_mem_write>:
    25be:	050a                	slli	a0,a0,0x2
    25c0:	6791                	lui	a5,0x4
    25c2:	97aa                	add	a5,a5,a0
    25c4:	c38c                	sw	a1,0(a5)
    25c6:	8082                	ret

Disassembly of section .text.knightrider_i2c:

000025c8 <knightrider_i2c>:
    25c8:	1141                	addi	sp,sp,-16
    25ca:	c422                	sw	s0,8(sp)
    25cc:	c226                	sw	s1,4(sp)
    25ce:	c606                	sw	ra,12(sp)
    25d0:	441d                	li	s0,7
    25d2:	4485                	li	s1,1
    25d4:	0486                	slli	s1,s1,0x1
    25d6:	4585                	li	a1,1
    25d8:	8526                	mv	a0,s1
    25da:	147d                	addi	s0,s0,-1
    25dc:	3671                	jal	2168 <i2c_write>
    25de:	f87d                	bnez	s0,25d4 <knightrider_i2c+0xc>
    25e0:	441d                	li	s0,7
    25e2:	08000493          	li	s1,128
    25e6:	8085                	srli	s1,s1,0x1
    25e8:	4585                	li	a1,1
    25ea:	8526                	mv	a0,s1
    25ec:	147d                	addi	s0,s0,-1
    25ee:	3ead                	jal	2168 <i2c_write>
    25f0:	f87d                	bnez	s0,25e6 <knightrider_i2c+0x1e>
    25f2:	441d                	li	s0,7
    25f4:	4485                	li	s1,1
    25f6:	0486                	slli	s1,s1,0x1
    25f8:	4585                	li	a1,1
    25fa:	8526                	mv	a0,s1
    25fc:	147d                	addi	s0,s0,-1
    25fe:	36ad                	jal	2168 <i2c_write>
    2600:	f87d                	bnez	s0,25f6 <knightrider_i2c+0x2e>
    2602:	441d                	li	s0,7
    2604:	08000493          	li	s1,128
    2608:	8085                	srli	s1,s1,0x1
    260a:	4585                	li	a1,1
    260c:	8526                	mv	a0,s1
    260e:	147d                	addi	s0,s0,-1
    2610:	3ea1                	jal	2168 <i2c_write>
    2612:	f87d                	bnez	s0,2608 <knightrider_i2c+0x40>
    2614:	40b2                	lw	ra,12(sp)
    2616:	4422                	lw	s0,8(sp)
    2618:	4492                	lw	s1,4(sp)
    261a:	0141                	addi	sp,sp,16
    261c:	8082                	ret
