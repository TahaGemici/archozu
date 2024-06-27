
a.out:     file format elf32-littleriscv


Disassembly of section .text:

00002000 <main>:
    2000:	1141                	addi	sp,sp,-16
    2002:	4509                	li	a0,2
    2004:	4605                	li	a2,1
    2006:	4595                	li	a1,5
    2008:	c606                	sw	ra,12(sp)
    200a:	298d                	jal	247c <timer_conf>
    200c:	40b2                	lw	ra,12(sp)
    200e:	4501                	li	a0,0
    2010:	0141                	addi	sp,sp,16
    2012:	8082                	ret

Disassembly of section .text.uart_conf:

00002014 <uart_conf>:
    2014:	6799                	lui	a5,0x6
    2016:	c388                	sw	a0,0(a5)
    2018:	c3cc                	sw	a1,4(a5)
    201a:	8082                	ret

Disassembly of section .text.uart_read:

0000201c <uart_read>:
    201c:	6799                	lui	a5,0x6
    201e:	07c1                	addi	a5,a5,16 # 6010 <__GNU_EH_FRAME_HDR+0x3754>
    2020:	4709                	li	a4,2
    2022:	4394                	lw	a3,0(a5)
    2024:	fee69fe3          	bne	a3,a4,2022 <uart_read+0x6>
    2028:	6719                	lui	a4,0x6
    202a:	4708                	lw	a0,8(a4)
    202c:	0007a023          	sw	zero,0(a5)
    2030:	0ff57513          	zext.b	a0,a0
    2034:	8082                	ret

Disassembly of section .text.uart_write:

00002036 <uart_write>:
    2036:	6799                	lui	a5,0x6
    2038:	c7c8                	sw	a0,12(a5)
    203a:	6799                	lui	a5,0x6
    203c:	4705                	li	a4,1
    203e:	07c1                	addi	a5,a5,16 # 6010 <__GNU_EH_FRAME_HDR+0x3754>
    2040:	c398                	sw	a4,0(a5)
    2042:	4715                	li	a4,5
    2044:	4394                	lw	a3,0(a5)
    2046:	fee69fe3          	bne	a3,a4,2044 <uart_write+0xe>
    204a:	0007a023          	sw	zero,0(a5)
    204e:	8082                	ret

Disassembly of section .text.i2c_conf:

00002050 <i2c_conf>:
    2050:	67a1                	lui	a5,0x8
    2052:	c3c8                	sw	a0,4(a5)
    2054:	8082                	ret

Disassembly of section .text.i2c_write:

00002056 <i2c_write>:
    2056:	67a1                	lui	a5,0x8
    2058:	c38c                	sw	a1,0(a5)
    205a:	c7c8                	sw	a0,12(a5)
    205c:	67a1                	lui	a5,0x8
    205e:	4705                	li	a4,1
    2060:	07c1                	addi	a5,a5,16 # 8010 <__GNU_EH_FRAME_HDR+0x5754>
    2062:	c398                	sw	a4,0(a5)
    2064:	470d                	li	a4,3
    2066:	4394                	lw	a3,0(a5)
    2068:	fee69fe3          	bne	a3,a4,2066 <i2c_write+0x10>
    206c:	0007a023          	sw	zero,0(a5)
    2070:	8082                	ret

Disassembly of section .text.i2c_read:

00002072 <i2c_read>:
    2072:	67a1                	lui	a5,0x8
    2074:	c388                	sw	a0,0(a5)
    2076:	4711                	li	a4,4
    2078:	07c1                	addi	a5,a5,16 # 8010 <__GNU_EH_FRAME_HDR+0x5754>
    207a:	c398                	sw	a4,0(a5)
    207c:	4731                	li	a4,12
    207e:	4394                	lw	a3,0(a5)
    2080:	fee69fe3          	bne	a3,a4,207e <i2c_read+0xc>
    2084:	0007a023          	sw	zero,0(a5)
    2088:	67a1                	lui	a5,0x8
    208a:	4788                	lw	a0,8(a5)
    208c:	8082                	ret

Disassembly of section .text.s25fl128s_wren:

0000208e <s25fl128s_wren>:
    208e:	800007b7          	lui	a5,0x80000
    2092:	0799                	addi	a5,a5,6 # 80000006 <__GNU_EH_FRAME_HDR+0x7fffd74a>
    2094:	6729                	lui	a4,0xa
    2096:	c31c                	sw	a5,0(a4)
    2098:	67a9                	lui	a5,0xa
    209a:	02878793          	addi	a5,a5,40 # a028 <__GNU_EH_FRAME_HDR+0x776c>
    209e:	4705                	li	a4,1
    20a0:	4394                	lw	a3,0(a5)
    20a2:	fee69fe3          	bne	a3,a4,20a0 <s25fl128s_wren+0x12>
    20a6:	8082                	ret

Disassembly of section .text.s25fl128s_wrdi:

000020a8 <s25fl128s_wrdi>:
    20a8:	800007b7          	lui	a5,0x80000
    20ac:	0791                	addi	a5,a5,4 # 80000004 <__GNU_EH_FRAME_HDR+0x7fffd748>
    20ae:	6729                	lui	a4,0xa
    20b0:	c31c                	sw	a5,0(a4)
    20b2:	67a9                	lui	a5,0xa
    20b4:	02878793          	addi	a5,a5,40 # a028 <__GNU_EH_FRAME_HDR+0x776c>
    20b8:	4705                	li	a4,1
    20ba:	4394                	lw	a3,0(a5)
    20bc:	fee69fe3          	bne	a3,a4,20ba <s25fl128s_wrdi+0x12>
    20c0:	8082                	ret

Disassembly of section .text.s25fl128s_clsr:

000020c2 <s25fl128s_clsr>:
    20c2:	800007b7          	lui	a5,0x80000
    20c6:	03078793          	addi	a5,a5,48 # 80000030 <__GNU_EH_FRAME_HDR+0x7fffd774>
    20ca:	6729                	lui	a4,0xa
    20cc:	c31c                	sw	a5,0(a4)
    20ce:	67a9                	lui	a5,0xa
    20d0:	02878793          	addi	a5,a5,40 # a028 <__GNU_EH_FRAME_HDR+0x776c>
    20d4:	4705                	li	a4,1
    20d6:	4394                	lw	a3,0(a5)
    20d8:	fee69fe3          	bne	a3,a4,20d6 <s25fl128s_clsr+0x14>
    20dc:	8082                	ret

Disassembly of section .text.s25fl128s_reset:

000020de <s25fl128s_reset>:
    20de:	800007b7          	lui	a5,0x80000
    20e2:	0f078793          	addi	a5,a5,240 # 800000f0 <__GNU_EH_FRAME_HDR+0x7fffd834>
    20e6:	6729                	lui	a4,0xa
    20e8:	c31c                	sw	a5,0(a4)
    20ea:	67a9                	lui	a5,0xa
    20ec:	02878793          	addi	a5,a5,40 # a028 <__GNU_EH_FRAME_HDR+0x776c>
    20f0:	4705                	li	a4,1
    20f2:	4394                	lw	a3,0(a5)
    20f4:	fee69fe3          	bne	a3,a4,20f2 <s25fl128s_reset+0x14>
    20f8:	8082                	ret

Disassembly of section .text.s25fl128s_rdid:

000020fa <s25fl128s_rdid>:
    20fa:	fff58793          	addi	a5,a1,-1
    20fe:	80000737          	lui	a4,0x80000
    2102:	19f70713          	addi	a4,a4,415 # 8000019f <__GNU_EH_FRAME_HDR+0x7fffd8e3>
    2106:	07c2                	slli	a5,a5,0x10
    2108:	97ba                	add	a5,a5,a4
    210a:	6729                	lui	a4,0xa
    210c:	c31c                	sw	a5,0(a4)
    210e:	67a9                	lui	a5,0xa
    2110:	02878793          	addi	a5,a5,40 # a028 <__GNU_EH_FRAME_HDR+0x776c>
    2114:	4705                	li	a4,1
    2116:	4394                	lw	a3,0(a5)
    2118:	fee69fe3          	bne	a3,a4,2116 <s25fl128s_rdid+0x1c>
    211c:	058d                	addi	a1,a1,3
    211e:	66a9                	lui	a3,0xa
    2120:	8589                	srai	a1,a1,0x2
    2122:	4781                	li	a5,0
    2124:	06a1                	addi	a3,a3,8 # a008 <__GNU_EH_FRAME_HDR+0x774c>
    2126:	00b7c363          	blt	a5,a1,212c <s25fl128s_rdid+0x32>
    212a:	8082                	ret
    212c:	00279713          	slli	a4,a5,0x2
    2130:	00d70633          	add	a2,a4,a3
    2134:	4210                	lw	a2,0(a2)
    2136:	972a                	add	a4,a4,a0
    2138:	0785                	addi	a5,a5,1
    213a:	c310                	sw	a2,0(a4)
    213c:	b7ed                	j	2126 <s25fl128s_rdid+0x2c>

Disassembly of section .text.s25fl128s_rdsr1:

0000213e <s25fl128s_rdsr1>:
    213e:	800007b7          	lui	a5,0x80000
    2142:	10578793          	addi	a5,a5,261 # 80000105 <__GNU_EH_FRAME_HDR+0x7fffd849>
    2146:	6729                	lui	a4,0xa
    2148:	c31c                	sw	a5,0(a4)
    214a:	67a9                	lui	a5,0xa
    214c:	02878793          	addi	a5,a5,40 # a028 <__GNU_EH_FRAME_HDR+0x776c>
    2150:	4705                	li	a4,1
    2152:	4394                	lw	a3,0(a5)
    2154:	fee69fe3          	bne	a3,a4,2152 <s25fl128s_rdsr1+0x14>
    2158:	67a9                	lui	a5,0xa
    215a:	4788                	lw	a0,8(a5)
    215c:	0ff57513          	zext.b	a0,a0
    2160:	8082                	ret

Disassembly of section .text.s25fl128s_rdsr2:

00002162 <s25fl128s_rdsr2>:
    2162:	800007b7          	lui	a5,0x80000
    2166:	10778793          	addi	a5,a5,263 # 80000107 <__GNU_EH_FRAME_HDR+0x7fffd84b>
    216a:	6729                	lui	a4,0xa
    216c:	c31c                	sw	a5,0(a4)
    216e:	67a9                	lui	a5,0xa
    2170:	02878793          	addi	a5,a5,40 # a028 <__GNU_EH_FRAME_HDR+0x776c>
    2174:	4705                	li	a4,1
    2176:	4394                	lw	a3,0(a5)
    2178:	fee69fe3          	bne	a3,a4,2176 <s25fl128s_rdsr2+0x14>
    217c:	67a9                	lui	a5,0xa
    217e:	4788                	lw	a0,8(a5)
    2180:	0ff57513          	zext.b	a0,a0
    2184:	8082                	ret

Disassembly of section .text.s25fl128s_rdcr:

00002186 <s25fl128s_rdcr>:
    2186:	800007b7          	lui	a5,0x80000
    218a:	13578793          	addi	a5,a5,309 # 80000135 <__GNU_EH_FRAME_HDR+0x7fffd879>
    218e:	6729                	lui	a4,0xa
    2190:	c31c                	sw	a5,0(a4)
    2192:	67a9                	lui	a5,0xa
    2194:	02878793          	addi	a5,a5,40 # a028 <__GNU_EH_FRAME_HDR+0x776c>
    2198:	4705                	li	a4,1
    219a:	4394                	lw	a3,0(a5)
    219c:	fee69fe3          	bne	a3,a4,219a <s25fl128s_rdcr+0x14>
    21a0:	67a9                	lui	a5,0xa
    21a2:	4788                	lw	a0,8(a5)
    21a4:	0ff57513          	zext.b	a0,a0
    21a8:	8082                	ret

Disassembly of section .text.s25fl128s_read_id:

000021aa <s25fl128s_read_id>:
    21aa:	67a9                	lui	a5,0xa
    21ac:	c3c8                	sw	a0,4(a5)
    21ae:	800127b7          	lui	a5,0x80012
    21b2:	99078793          	addi	a5,a5,-1648 # 80011990 <__GNU_EH_FRAME_HDR+0x8000f0d4>
    21b6:	6729                	lui	a4,0xa
    21b8:	c31c                	sw	a5,0(a4)
    21ba:	67a9                	lui	a5,0xa
    21bc:	02878793          	addi	a5,a5,40 # a028 <__GNU_EH_FRAME_HDR+0x776c>
    21c0:	4705                	li	a4,1
    21c2:	4394                	lw	a3,0(a5)
    21c4:	fee69fe3          	bne	a3,a4,21c2 <s25fl128s_read_id+0x18>
    21c8:	67a9                	lui	a5,0xa
    21ca:	4788                	lw	a0,8(a5)
    21cc:	0542                	slli	a0,a0,0x10
    21ce:	8541                	srai	a0,a0,0x10
    21d0:	8082                	ret

Disassembly of section .text.s25fl128s_res:

000021d2 <s25fl128s_res>:
    21d2:	800027b7          	lui	a5,0x80002
    21d6:	9ab78793          	addi	a5,a5,-1621 # 800019ab <__GNU_EH_FRAME_HDR+0x7ffff0ef>
    21da:	6729                	lui	a4,0xa
    21dc:	c31c                	sw	a5,0(a4)
    21de:	67a9                	lui	a5,0xa
    21e0:	02878793          	addi	a5,a5,40 # a028 <__GNU_EH_FRAME_HDR+0x776c>
    21e4:	4705                	li	a4,1
    21e6:	4394                	lw	a3,0(a5)
    21e8:	fee69fe3          	bne	a3,a4,21e6 <s25fl128s_res+0x14>
    21ec:	67a9                	lui	a5,0xa
    21ee:	4788                	lw	a0,8(a5)
    21f0:	0ff57513          	zext.b	a0,a0
    21f4:	8082                	ret

Disassembly of section .text.s25fl128s_wrr:

000021f6 <s25fl128s_wrr>:
    21f6:	67a9                	lui	a5,0xa
    21f8:	c788                	sw	a0,8(a5)
    21fa:	800107b7          	lui	a5,0x80010
    21fe:	50178793          	addi	a5,a5,1281 # 80010501 <__GNU_EH_FRAME_HDR+0x8000dc45>
    2202:	6729                	lui	a4,0xa
    2204:	c31c                	sw	a5,0(a4)
    2206:	67a9                	lui	a5,0xa
    2208:	02878793          	addi	a5,a5,40 # a028 <__GNU_EH_FRAME_HDR+0x776c>
    220c:	4705                	li	a4,1
    220e:	4394                	lw	a3,0(a5)
    2210:	fee69fe3          	bne	a3,a4,220e <s25fl128s_wrr+0x18>
    2214:	8082                	ret

Disassembly of section .text.s25fl128s_read:

00002216 <s25fl128s_read>:
    2216:	fff60793          	addi	a5,a2,-1
    221a:	80002737          	lui	a4,0x80002
    221e:	90370713          	addi	a4,a4,-1789 # 80001903 <__GNU_EH_FRAME_HDR+0x7ffff047>
    2222:	07c2                	slli	a5,a5,0x10
    2224:	97ba                	add	a5,a5,a4
    2226:	6729                	lui	a4,0xa
    2228:	c348                	sw	a0,4(a4)
    222a:	6729                	lui	a4,0xa
    222c:	c31c                	sw	a5,0(a4)
    222e:	67a9                	lui	a5,0xa
    2230:	02878793          	addi	a5,a5,40 # a028 <__GNU_EH_FRAME_HDR+0x776c>
    2234:	4705                	li	a4,1
    2236:	4394                	lw	a3,0(a5)
    2238:	fee69fe3          	bne	a3,a4,2236 <s25fl128s_read+0x20>
    223c:	060d                	addi	a2,a2,3
    223e:	66a9                	lui	a3,0xa
    2240:	8609                	srai	a2,a2,0x2
    2242:	4781                	li	a5,0
    2244:	06a1                	addi	a3,a3,8 # a008 <__GNU_EH_FRAME_HDR+0x774c>
    2246:	00c7c363          	blt	a5,a2,224c <s25fl128s_read+0x36>
    224a:	8082                	ret
    224c:	00279713          	slli	a4,a5,0x2
    2250:	00d70533          	add	a0,a4,a3
    2254:	4108                	lw	a0,0(a0)
    2256:	972e                	add	a4,a4,a1
    2258:	0785                	addi	a5,a5,1
    225a:	c308                	sw	a0,0(a4)
    225c:	b7ed                	j	2246 <s25fl128s_read+0x30>

Disassembly of section .text.s25fl128s_pp:

0000225e <s25fl128s_pp>:
    225e:	fff60793          	addi	a5,a2,-1
    2262:	80002737          	lui	a4,0x80002
    2266:	d0270713          	addi	a4,a4,-766 # 80001d02 <__GNU_EH_FRAME_HDR+0x7ffff446>
    226a:	07c2                	slli	a5,a5,0x10
    226c:	97ba                	add	a5,a5,a4
    226e:	6729                	lui	a4,0xa
    2270:	c348                	sw	a0,4(a4)
    2272:	060d                	addi	a2,a2,3
    2274:	6529                	lui	a0,0xa
    2276:	8609                	srai	a2,a2,0x2
    2278:	4701                	li	a4,0
    227a:	0521                	addi	a0,a0,8 # a008 <__GNU_EH_FRAME_HDR+0x774c>
    227c:	00c74c63          	blt	a4,a2,2294 <s25fl128s_pp+0x36>
    2280:	6729                	lui	a4,0xa
    2282:	c31c                	sw	a5,0(a4)
    2284:	67a9                	lui	a5,0xa
    2286:	02878793          	addi	a5,a5,40 # a028 <__GNU_EH_FRAME_HDR+0x776c>
    228a:	4705                	li	a4,1
    228c:	4394                	lw	a3,0(a5)
    228e:	fee69fe3          	bne	a3,a4,228c <s25fl128s_pp+0x2e>
    2292:	8082                	ret
    2294:	00271693          	slli	a3,a4,0x2
    2298:	00a68833          	add	a6,a3,a0
    229c:	96ae                	add	a3,a3,a1
    229e:	4294                	lw	a3,0(a3)
    22a0:	0705                	addi	a4,a4,1 # a001 <__GNU_EH_FRAME_HDR+0x7745>
    22a2:	00d82023          	sw	a3,0(a6)
    22a6:	bfd9                	j	227c <s25fl128s_pp+0x1e>

Disassembly of section .text.s25fl128s_se:

000022a8 <s25fl128s_se>:
    22a8:	67a9                	lui	a5,0xa
    22aa:	c788                	sw	a0,8(a5)
    22ac:	800207b7          	lui	a5,0x80020
    22b0:	5d878793          	addi	a5,a5,1496 # 800205d8 <__GNU_EH_FRAME_HDR+0x8001dd1c>
    22b4:	6729                	lui	a4,0xa
    22b6:	c31c                	sw	a5,0(a4)
    22b8:	67a9                	lui	a5,0xa
    22ba:	02878793          	addi	a5,a5,40 # a028 <__GNU_EH_FRAME_HDR+0x776c>
    22be:	4705                	li	a4,1
    22c0:	4394                	lw	a3,0(a5)
    22c2:	fee69fe3          	bne	a3,a4,22c0 <s25fl128s_se+0x18>
    22c6:	8082                	ret

Disassembly of section .text.s25fl128s_dor:

000022c8 <s25fl128s_dor>:
    22c8:	fff60793          	addi	a5,a2,-1
    22cc:	80002737          	lui	a4,0x80002
    22d0:	23b70713          	addi	a4,a4,571 # 8000223b <__GNU_EH_FRAME_HDR+0x7ffff97f>
    22d4:	07c2                	slli	a5,a5,0x10
    22d6:	97ba                	add	a5,a5,a4
    22d8:	6729                	lui	a4,0xa
    22da:	c348                	sw	a0,4(a4)
    22dc:	6729                	lui	a4,0xa
    22de:	c31c                	sw	a5,0(a4)
    22e0:	67a9                	lui	a5,0xa
    22e2:	02878793          	addi	a5,a5,40 # a028 <__GNU_EH_FRAME_HDR+0x776c>
    22e6:	4705                	li	a4,1
    22e8:	4394                	lw	a3,0(a5)
    22ea:	fee69fe3          	bne	a3,a4,22e8 <s25fl128s_dor+0x20>
    22ee:	060d                	addi	a2,a2,3
    22f0:	66a9                	lui	a3,0xa
    22f2:	8609                	srai	a2,a2,0x2
    22f4:	4781                	li	a5,0
    22f6:	06a1                	addi	a3,a3,8 # a008 <__GNU_EH_FRAME_HDR+0x774c>
    22f8:	00c7c363          	blt	a5,a2,22fe <s25fl128s_dor+0x36>
    22fc:	8082                	ret
    22fe:	00279713          	slli	a4,a5,0x2
    2302:	00d70533          	add	a0,a4,a3
    2306:	4108                	lw	a0,0(a0)
    2308:	972e                	add	a4,a4,a1
    230a:	0785                	addi	a5,a5,1
    230c:	c308                	sw	a0,0(a4)
    230e:	b7ed                	j	22f8 <s25fl128s_dor+0x30>

Disassembly of section .text.s25fl128s_qor:

00002310 <s25fl128s_qor>:
    2310:	fff60793          	addi	a5,a2,-1
    2314:	80002737          	lui	a4,0x80002
    2318:	36b70713          	addi	a4,a4,875 # 8000236b <__GNU_EH_FRAME_HDR+0x7ffffaaf>
    231c:	07c2                	slli	a5,a5,0x10
    231e:	97ba                	add	a5,a5,a4
    2320:	6729                	lui	a4,0xa
    2322:	c348                	sw	a0,4(a4)
    2324:	6729                	lui	a4,0xa
    2326:	c31c                	sw	a5,0(a4)
    2328:	67a9                	lui	a5,0xa
    232a:	02878793          	addi	a5,a5,40 # a028 <__GNU_EH_FRAME_HDR+0x776c>
    232e:	4705                	li	a4,1
    2330:	4394                	lw	a3,0(a5)
    2332:	fee69fe3          	bne	a3,a4,2330 <s25fl128s_qor+0x20>
    2336:	060d                	addi	a2,a2,3
    2338:	66a9                	lui	a3,0xa
    233a:	8609                	srai	a2,a2,0x2
    233c:	4781                	li	a5,0
    233e:	06a1                	addi	a3,a3,8 # a008 <__GNU_EH_FRAME_HDR+0x774c>
    2340:	00c7c363          	blt	a5,a2,2346 <s25fl128s_qor+0x36>
    2344:	8082                	ret
    2346:	00279713          	slli	a4,a5,0x2
    234a:	00d70533          	add	a0,a4,a3
    234e:	4108                	lw	a0,0(a0)
    2350:	972e                	add	a4,a4,a1
    2352:	0785                	addi	a5,a5,1
    2354:	c308                	sw	a0,0(a4)
    2356:	b7ed                	j	2340 <s25fl128s_qor+0x30>

Disassembly of section .text.s25fl128s_qpp:

00002358 <s25fl128s_qpp>:
    2358:	fff60793          	addi	a5,a2,-1
    235c:	80002737          	lui	a4,0x80002
    2360:	f3270713          	addi	a4,a4,-206 # 80001f32 <__GNU_EH_FRAME_HDR+0x7ffff676>
    2364:	07c2                	slli	a5,a5,0x10
    2366:	97ba                	add	a5,a5,a4
    2368:	6729                	lui	a4,0xa
    236a:	c348                	sw	a0,4(a4)
    236c:	060d                	addi	a2,a2,3
    236e:	6729                	lui	a4,0xa
    2370:	66a9                	lui	a3,0xa
    2372:	c31c                	sw	a5,0(a4)
    2374:	8609                	srai	a2,a2,0x2
    2376:	4781                	li	a5,0
    2378:	06a1                	addi	a3,a3,8 # a008 <__GNU_EH_FRAME_HDR+0x774c>
    237a:	00c7ca63          	blt	a5,a2,238e <s25fl128s_qpp+0x36>
    237e:	67a9                	lui	a5,0xa
    2380:	02878793          	addi	a5,a5,40 # a028 <__GNU_EH_FRAME_HDR+0x776c>
    2384:	4705                	li	a4,1
    2386:	4394                	lw	a3,0(a5)
    2388:	fee69fe3          	bne	a3,a4,2386 <s25fl128s_qpp+0x2e>
    238c:	8082                	ret
    238e:	00279713          	slli	a4,a5,0x2
    2392:	00d70533          	add	a0,a4,a3
    2396:	972e                	add	a4,a4,a1
    2398:	4318                	lw	a4,0(a4)
    239a:	0785                	addi	a5,a5,1
    239c:	c118                	sw	a4,0(a0)
    239e:	bff1                	j	237a <s25fl128s_qpp+0x22>

Disassembly of section .text.qspi_custom_write:

000023a0 <qspi_custom_write>:
    23a0:	0ff67613          	zext.b	a2,a2
    23a4:	06a2                	slli	a3,a3,0x8
    23a6:	96b2                	add	a3,a3,a2
    23a8:	072e                	slli	a4,a4,0xb
    23aa:	40068693          	addi	a3,a3,1024
    23ae:	96ba                	add	a3,a3,a4
    23b0:	fff78713          	addi	a4,a5,-1
    23b4:	0742                	slli	a4,a4,0x10
    23b6:	9736                	add	a4,a4,a3
    23b8:	0866                	slli	a6,a6,0x19
    23ba:	983a                	add	a6,a6,a4
    23bc:	80000737          	lui	a4,0x80000
    23c0:	983a                	add	a6,a6,a4
    23c2:	078d                	addi	a5,a5,3
    23c4:	6729                	lui	a4,0xa
    23c6:	6629                	lui	a2,0xa
    23c8:	c348                	sw	a0,4(a4)
    23ca:	8789                	srai	a5,a5,0x2
    23cc:	4701                	li	a4,0
    23ce:	0621                	addi	a2,a2,8 # a008 <__GNU_EH_FRAME_HDR+0x774c>
    23d0:	00f74c63          	blt	a4,a5,23e8 <qspi_custom_write+0x48>
    23d4:	67a9                	lui	a5,0xa
    23d6:	0107a023          	sw	a6,0(a5) # a000 <__GNU_EH_FRAME_HDR+0x7744>
    23da:	4705                	li	a4,1
    23dc:	02878793          	addi	a5,a5,40
    23e0:	4394                	lw	a3,0(a5)
    23e2:	fee69fe3          	bne	a3,a4,23e0 <qspi_custom_write+0x40>
    23e6:	8082                	ret
    23e8:	00271693          	slli	a3,a4,0x2
    23ec:	00c68533          	add	a0,a3,a2
    23f0:	96ae                	add	a3,a3,a1
    23f2:	4294                	lw	a3,0(a3)
    23f4:	0705                	addi	a4,a4,1 # a001 <__GNU_EH_FRAME_HDR+0x7745>
    23f6:	c114                	sw	a3,0(a0)
    23f8:	bfe1                	j	23d0 <qspi_custom_write+0x30>

Disassembly of section .text.qspi_custom_read:

000023fa <qspi_custom_read>:
    23fa:	0ff67613          	zext.b	a2,a2
    23fe:	06a2                	slli	a3,a3,0x8
    2400:	072e                	slli	a4,a4,0xb
    2402:	96b2                	add	a3,a3,a2
    2404:	96ba                	add	a3,a3,a4
    2406:	fff78713          	addi	a4,a5,-1
    240a:	0742                	slli	a4,a4,0x10
    240c:	9736                	add	a4,a4,a3
    240e:	0866                	slli	a6,a6,0x19
    2410:	983a                	add	a6,a6,a4
    2412:	80000737          	lui	a4,0x80000
    2416:	983a                	add	a6,a6,a4
    2418:	6729                	lui	a4,0xa
    241a:	c348                	sw	a0,4(a4)
    241c:	6729                	lui	a4,0xa
    241e:	01072023          	sw	a6,0(a4) # a000 <__GNU_EH_FRAME_HDR+0x7744>
    2422:	4685                	li	a3,1
    2424:	02870713          	addi	a4,a4,40
    2428:	4310                	lw	a2,0(a4)
    242a:	fed61fe3          	bne	a2,a3,2428 <qspi_custom_read+0x2e>
    242e:	078d                	addi	a5,a5,3
    2430:	6629                	lui	a2,0xa
    2432:	8789                	srai	a5,a5,0x2
    2434:	4701                	li	a4,0
    2436:	0621                	addi	a2,a2,8 # a008 <__GNU_EH_FRAME_HDR+0x774c>
    2438:	00f74363          	blt	a4,a5,243e <qspi_custom_read+0x44>
    243c:	8082                	ret
    243e:	00271693          	slli	a3,a4,0x2
    2442:	00c68533          	add	a0,a3,a2
    2446:	4108                	lw	a0,0(a0)
    2448:	96ae                	add	a3,a3,a1
    244a:	0705                	addi	a4,a4,1
    244c:	c288                	sw	a0,0(a3)
    244e:	b7ed                	j	2438 <qspi_custom_read+0x3e>

Disassembly of section .text.timer_read_counter:

00002450 <timer_read_counter>:
    2450:	67b1                	lui	a5,0xc
    2452:	4bc8                	lw	a0,20(a5)
    2454:	8082                	ret

Disassembly of section .text.timer_read_event:

00002456 <timer_read_event>:
    2456:	67b1                	lui	a5,0xc
    2458:	4f88                	lw	a0,24(a5)
    245a:	8082                	ret

Disassembly of section .text.timer_clear_counter:

0000245c <timer_clear_counter>:
    245c:	67b1                	lui	a5,0xc
    245e:	4705                	li	a4,1
    2460:	c798                	sw	a4,8(a5)
    2462:	8082                	ret

Disassembly of section .text.timer_clear_event:

00002464 <timer_clear_event>:
    2464:	67b1                	lui	a5,0xc
    2466:	4705                	li	a4,1
    2468:	cfd8                	sw	a4,28(a5)
    246a:	8082                	ret

Disassembly of section .text.timer_enable:

0000246c <timer_enable>:
    246c:	67b1                	lui	a5,0xc
    246e:	4705                	li	a4,1
    2470:	c7d8                	sw	a4,12(a5)
    2472:	8082                	ret

Disassembly of section .text.timer_disable:

00002474 <timer_disable>:
    2474:	67b1                	lui	a5,0xc
    2476:	0007a623          	sw	zero,12(a5) # c00c <__GNU_EH_FRAME_HDR+0x9750>
    247a:	8082                	ret

Disassembly of section .text.timer_conf:

0000247c <timer_conf>:
    247c:	67b1                	lui	a5,0xc
    247e:	c388                	sw	a0,0(a5)
    2480:	c3cc                	sw	a1,4(a5)
    2482:	67b1                	lui	a5,0xc
    2484:	cb90                	sw	a2,16(a5)
    2486:	4705                	li	a4,1
    2488:	67b1                	lui	a5,0xc
    248a:	c798                	sw	a4,8(a5)
    248c:	67b1                	lui	a5,0xc
    248e:	cfd8                	sw	a4,28(a5)
    2490:	67b1                	lui	a5,0xc
    2492:	c7d8                	sw	a4,12(a5)
    2494:	8082                	ret

Disassembly of section .text.gpio_write:

00002496 <gpio_write>:
    2496:	67c1                	lui	a5,0x10
    2498:	c3c8                	sw	a0,4(a5)
    249a:	8082                	ret

Disassembly of section .text.gpio_read:

0000249c <gpio_read>:
    249c:	67c1                	lui	a5,0x10
    249e:	4388                	lw	a0,0(a5)
    24a0:	0542                	slli	a0,a0,0x10
    24a2:	8541                	srai	a0,a0,0x10
    24a4:	8082                	ret

Disassembly of section .text.instr_mem_write:

000024a6 <instr_mem_write>:
    24a6:	050a                	slli	a0,a0,0x2
    24a8:	6791                	lui	a5,0x4
    24aa:	97aa                	add	a5,a5,a0
    24ac:	c38c                	sw	a1,0(a5)
    24ae:	8082                	ret

Disassembly of section .text.knightrider_i2c:

000024b0 <knightrider_i2c>:
    24b0:	1141                	addi	sp,sp,-16
    24b2:	c04a                	sw	s2,0(sp)
    24b4:	c606                	sw	ra,12(sp)
    24b6:	c422                	sw	s0,8(sp)
    24b8:	c226                	sw	s1,4(sp)
    24ba:	67a1                	lui	a5,0x8
    24bc:	07b00713          	li	a4,123
    24c0:	c3d8                	sw	a4,4(a5)
    24c2:	4929                	li	s2,10
    24c4:	44fd                	li	s1,31
    24c6:	4405                	li	s0,1
    24c8:	0406                	slli	s0,s0,0x1
    24ca:	4591                	li	a1,4
    24cc:	8522                	mv	a0,s0
    24ce:	14fd                	addi	s1,s1,-1
    24d0:	3659                	jal	2056 <i2c_write>
    24d2:	f8fd                	bnez	s1,24c8 <knightrider_i2c+0x18>
    24d4:	447d                	li	s0,31
    24d6:	800004b7          	lui	s1,0x80000
    24da:	8085                	srli	s1,s1,0x1
    24dc:	4591                	li	a1,4
    24de:	8526                	mv	a0,s1
    24e0:	147d                	addi	s0,s0,-1
    24e2:	3e95                	jal	2056 <i2c_write>
    24e4:	f87d                	bnez	s0,24da <knightrider_i2c+0x2a>
    24e6:	197d                	addi	s2,s2,-1
    24e8:	fc091ee3          	bnez	s2,24c4 <knightrider_i2c+0x14>
    24ec:	40b2                	lw	ra,12(sp)
    24ee:	4422                	lw	s0,8(sp)
    24f0:	4492                	lw	s1,4(sp)
    24f2:	4902                	lw	s2,0(sp)
    24f4:	0141                	addi	sp,sp,16
    24f6:	8082                	ret
