
a.out:     file format elf32-littleriscv


Disassembly of section .text:

00002000 <main>:
    2000:	1141                	addi	sp,sp,-16
    2002:	c606                	sw	ra,12(sp)
    2004:	217d                	jal	24b2 <knightrider_i2c>
    2006:	4509                	li	a0,2
    2008:	4605                	li	a2,1
    200a:	4595                	li	a1,5
    200c:	298d                	jal	247e <timer_conf>
    200e:	40b2                	lw	ra,12(sp)
    2010:	4501                	li	a0,0
    2012:	0141                	addi	sp,sp,16
    2014:	8082                	ret

Disassembly of section .text.uart_conf:

00002016 <uart_conf>:
    2016:	6799                	lui	a5,0x6
    2018:	c388                	sw	a0,0(a5)
    201a:	c3cc                	sw	a1,4(a5)
    201c:	8082                	ret

Disassembly of section .text.uart_read:

0000201e <uart_read>:
    201e:	6799                	lui	a5,0x6
    2020:	07c1                	addi	a5,a5,16 # 6010 <__GNU_EH_FRAME_HDR+0x3750>
    2022:	4709                	li	a4,2
    2024:	4394                	lw	a3,0(a5)
    2026:	fee69fe3          	bne	a3,a4,2024 <uart_read+0x6>
    202a:	6719                	lui	a4,0x6
    202c:	4708                	lw	a0,8(a4)
    202e:	0007a023          	sw	zero,0(a5)
    2032:	0ff57513          	zext.b	a0,a0
    2036:	8082                	ret

Disassembly of section .text.uart_write:

00002038 <uart_write>:
    2038:	6799                	lui	a5,0x6
    203a:	c7c8                	sw	a0,12(a5)
    203c:	6799                	lui	a5,0x6
    203e:	4705                	li	a4,1
    2040:	07c1                	addi	a5,a5,16 # 6010 <__GNU_EH_FRAME_HDR+0x3750>
    2042:	c398                	sw	a4,0(a5)
    2044:	4715                	li	a4,5
    2046:	4394                	lw	a3,0(a5)
    2048:	fee69fe3          	bne	a3,a4,2046 <uart_write+0xe>
    204c:	0007a023          	sw	zero,0(a5)
    2050:	8082                	ret

Disassembly of section .text.i2c_conf:

00002052 <i2c_conf>:
    2052:	67a1                	lui	a5,0x8
    2054:	c3c8                	sw	a0,4(a5)
    2056:	8082                	ret

Disassembly of section .text.i2c_write:

00002058 <i2c_write>:
    2058:	67a1                	lui	a5,0x8
    205a:	c38c                	sw	a1,0(a5)
    205c:	c7c8                	sw	a0,12(a5)
    205e:	67a1                	lui	a5,0x8
    2060:	4705                	li	a4,1
    2062:	07c1                	addi	a5,a5,16 # 8010 <__GNU_EH_FRAME_HDR+0x5750>
    2064:	c398                	sw	a4,0(a5)
    2066:	470d                	li	a4,3
    2068:	4394                	lw	a3,0(a5)
    206a:	fee69fe3          	bne	a3,a4,2068 <i2c_write+0x10>
    206e:	0007a023          	sw	zero,0(a5)
    2072:	8082                	ret

Disassembly of section .text.i2c_read:

00002074 <i2c_read>:
    2074:	67a1                	lui	a5,0x8
    2076:	c388                	sw	a0,0(a5)
    2078:	4711                	li	a4,4
    207a:	07c1                	addi	a5,a5,16 # 8010 <__GNU_EH_FRAME_HDR+0x5750>
    207c:	c398                	sw	a4,0(a5)
    207e:	4731                	li	a4,12
    2080:	4394                	lw	a3,0(a5)
    2082:	fee69fe3          	bne	a3,a4,2080 <i2c_read+0xc>
    2086:	0007a023          	sw	zero,0(a5)
    208a:	67a1                	lui	a5,0x8
    208c:	4788                	lw	a0,8(a5)
    208e:	8082                	ret

Disassembly of section .text.s25fl128s_wren:

00002090 <s25fl128s_wren>:
    2090:	800007b7          	lui	a5,0x80000
    2094:	0799                	addi	a5,a5,6 # 80000006 <__GNU_EH_FRAME_HDR+0x7fffd746>
    2096:	6729                	lui	a4,0xa
    2098:	c31c                	sw	a5,0(a4)
    209a:	67a9                	lui	a5,0xa
    209c:	02878793          	addi	a5,a5,40 # a028 <__GNU_EH_FRAME_HDR+0x7768>
    20a0:	4705                	li	a4,1
    20a2:	4394                	lw	a3,0(a5)
    20a4:	fee69fe3          	bne	a3,a4,20a2 <s25fl128s_wren+0x12>
    20a8:	8082                	ret

Disassembly of section .text.s25fl128s_wrdi:

000020aa <s25fl128s_wrdi>:
    20aa:	800007b7          	lui	a5,0x80000
    20ae:	0791                	addi	a5,a5,4 # 80000004 <__GNU_EH_FRAME_HDR+0x7fffd744>
    20b0:	6729                	lui	a4,0xa
    20b2:	c31c                	sw	a5,0(a4)
    20b4:	67a9                	lui	a5,0xa
    20b6:	02878793          	addi	a5,a5,40 # a028 <__GNU_EH_FRAME_HDR+0x7768>
    20ba:	4705                	li	a4,1
    20bc:	4394                	lw	a3,0(a5)
    20be:	fee69fe3          	bne	a3,a4,20bc <s25fl128s_wrdi+0x12>
    20c2:	8082                	ret

Disassembly of section .text.s25fl128s_clsr:

000020c4 <s25fl128s_clsr>:
    20c4:	800007b7          	lui	a5,0x80000
    20c8:	03078793          	addi	a5,a5,48 # 80000030 <__GNU_EH_FRAME_HDR+0x7fffd770>
    20cc:	6729                	lui	a4,0xa
    20ce:	c31c                	sw	a5,0(a4)
    20d0:	67a9                	lui	a5,0xa
    20d2:	02878793          	addi	a5,a5,40 # a028 <__GNU_EH_FRAME_HDR+0x7768>
    20d6:	4705                	li	a4,1
    20d8:	4394                	lw	a3,0(a5)
    20da:	fee69fe3          	bne	a3,a4,20d8 <s25fl128s_clsr+0x14>
    20de:	8082                	ret

Disassembly of section .text.s25fl128s_reset:

000020e0 <s25fl128s_reset>:
    20e0:	800007b7          	lui	a5,0x80000
    20e4:	0f078793          	addi	a5,a5,240 # 800000f0 <__GNU_EH_FRAME_HDR+0x7fffd830>
    20e8:	6729                	lui	a4,0xa
    20ea:	c31c                	sw	a5,0(a4)
    20ec:	67a9                	lui	a5,0xa
    20ee:	02878793          	addi	a5,a5,40 # a028 <__GNU_EH_FRAME_HDR+0x7768>
    20f2:	4705                	li	a4,1
    20f4:	4394                	lw	a3,0(a5)
    20f6:	fee69fe3          	bne	a3,a4,20f4 <s25fl128s_reset+0x14>
    20fa:	8082                	ret

Disassembly of section .text.s25fl128s_rdid:

000020fc <s25fl128s_rdid>:
    20fc:	fff58793          	addi	a5,a1,-1
    2100:	80000737          	lui	a4,0x80000
    2104:	19f70713          	addi	a4,a4,415 # 8000019f <__GNU_EH_FRAME_HDR+0x7fffd8df>
    2108:	07c2                	slli	a5,a5,0x10
    210a:	97ba                	add	a5,a5,a4
    210c:	6729                	lui	a4,0xa
    210e:	c31c                	sw	a5,0(a4)
    2110:	67a9                	lui	a5,0xa
    2112:	02878793          	addi	a5,a5,40 # a028 <__GNU_EH_FRAME_HDR+0x7768>
    2116:	4705                	li	a4,1
    2118:	4394                	lw	a3,0(a5)
    211a:	fee69fe3          	bne	a3,a4,2118 <s25fl128s_rdid+0x1c>
    211e:	058d                	addi	a1,a1,3
    2120:	66a9                	lui	a3,0xa
    2122:	8589                	srai	a1,a1,0x2
    2124:	4781                	li	a5,0
    2126:	06a1                	addi	a3,a3,8 # a008 <__GNU_EH_FRAME_HDR+0x7748>
    2128:	00b7c363          	blt	a5,a1,212e <s25fl128s_rdid+0x32>
    212c:	8082                	ret
    212e:	00279713          	slli	a4,a5,0x2
    2132:	00d70633          	add	a2,a4,a3
    2136:	4210                	lw	a2,0(a2)
    2138:	972a                	add	a4,a4,a0
    213a:	0785                	addi	a5,a5,1
    213c:	c310                	sw	a2,0(a4)
    213e:	b7ed                	j	2128 <s25fl128s_rdid+0x2c>

Disassembly of section .text.s25fl128s_rdsr1:

00002140 <s25fl128s_rdsr1>:
    2140:	800007b7          	lui	a5,0x80000
    2144:	10578793          	addi	a5,a5,261 # 80000105 <__GNU_EH_FRAME_HDR+0x7fffd845>
    2148:	6729                	lui	a4,0xa
    214a:	c31c                	sw	a5,0(a4)
    214c:	67a9                	lui	a5,0xa
    214e:	02878793          	addi	a5,a5,40 # a028 <__GNU_EH_FRAME_HDR+0x7768>
    2152:	4705                	li	a4,1
    2154:	4394                	lw	a3,0(a5)
    2156:	fee69fe3          	bne	a3,a4,2154 <s25fl128s_rdsr1+0x14>
    215a:	67a9                	lui	a5,0xa
    215c:	4788                	lw	a0,8(a5)
    215e:	0ff57513          	zext.b	a0,a0
    2162:	8082                	ret

Disassembly of section .text.s25fl128s_rdsr2:

00002164 <s25fl128s_rdsr2>:
    2164:	800007b7          	lui	a5,0x80000
    2168:	10778793          	addi	a5,a5,263 # 80000107 <__GNU_EH_FRAME_HDR+0x7fffd847>
    216c:	6729                	lui	a4,0xa
    216e:	c31c                	sw	a5,0(a4)
    2170:	67a9                	lui	a5,0xa
    2172:	02878793          	addi	a5,a5,40 # a028 <__GNU_EH_FRAME_HDR+0x7768>
    2176:	4705                	li	a4,1
    2178:	4394                	lw	a3,0(a5)
    217a:	fee69fe3          	bne	a3,a4,2178 <s25fl128s_rdsr2+0x14>
    217e:	67a9                	lui	a5,0xa
    2180:	4788                	lw	a0,8(a5)
    2182:	0ff57513          	zext.b	a0,a0
    2186:	8082                	ret

Disassembly of section .text.s25fl128s_rdcr:

00002188 <s25fl128s_rdcr>:
    2188:	800007b7          	lui	a5,0x80000
    218c:	13578793          	addi	a5,a5,309 # 80000135 <__GNU_EH_FRAME_HDR+0x7fffd875>
    2190:	6729                	lui	a4,0xa
    2192:	c31c                	sw	a5,0(a4)
    2194:	67a9                	lui	a5,0xa
    2196:	02878793          	addi	a5,a5,40 # a028 <__GNU_EH_FRAME_HDR+0x7768>
    219a:	4705                	li	a4,1
    219c:	4394                	lw	a3,0(a5)
    219e:	fee69fe3          	bne	a3,a4,219c <s25fl128s_rdcr+0x14>
    21a2:	67a9                	lui	a5,0xa
    21a4:	4788                	lw	a0,8(a5)
    21a6:	0ff57513          	zext.b	a0,a0
    21aa:	8082                	ret

Disassembly of section .text.s25fl128s_read_id:

000021ac <s25fl128s_read_id>:
    21ac:	67a9                	lui	a5,0xa
    21ae:	c3c8                	sw	a0,4(a5)
    21b0:	800127b7          	lui	a5,0x80012
    21b4:	99078793          	addi	a5,a5,-1648 # 80011990 <__GNU_EH_FRAME_HDR+0x8000f0d0>
    21b8:	6729                	lui	a4,0xa
    21ba:	c31c                	sw	a5,0(a4)
    21bc:	67a9                	lui	a5,0xa
    21be:	02878793          	addi	a5,a5,40 # a028 <__GNU_EH_FRAME_HDR+0x7768>
    21c2:	4705                	li	a4,1
    21c4:	4394                	lw	a3,0(a5)
    21c6:	fee69fe3          	bne	a3,a4,21c4 <s25fl128s_read_id+0x18>
    21ca:	67a9                	lui	a5,0xa
    21cc:	4788                	lw	a0,8(a5)
    21ce:	0542                	slli	a0,a0,0x10
    21d0:	8541                	srai	a0,a0,0x10
    21d2:	8082                	ret

Disassembly of section .text.s25fl128s_res:

000021d4 <s25fl128s_res>:
    21d4:	800027b7          	lui	a5,0x80002
    21d8:	9ab78793          	addi	a5,a5,-1621 # 800019ab <__GNU_EH_FRAME_HDR+0x7ffff0eb>
    21dc:	6729                	lui	a4,0xa
    21de:	c31c                	sw	a5,0(a4)
    21e0:	67a9                	lui	a5,0xa
    21e2:	02878793          	addi	a5,a5,40 # a028 <__GNU_EH_FRAME_HDR+0x7768>
    21e6:	4705                	li	a4,1
    21e8:	4394                	lw	a3,0(a5)
    21ea:	fee69fe3          	bne	a3,a4,21e8 <s25fl128s_res+0x14>
    21ee:	67a9                	lui	a5,0xa
    21f0:	4788                	lw	a0,8(a5)
    21f2:	0ff57513          	zext.b	a0,a0
    21f6:	8082                	ret

Disassembly of section .text.s25fl128s_wrr:

000021f8 <s25fl128s_wrr>:
    21f8:	67a9                	lui	a5,0xa
    21fa:	c788                	sw	a0,8(a5)
    21fc:	800107b7          	lui	a5,0x80010
    2200:	50178793          	addi	a5,a5,1281 # 80010501 <__GNU_EH_FRAME_HDR+0x8000dc41>
    2204:	6729                	lui	a4,0xa
    2206:	c31c                	sw	a5,0(a4)
    2208:	67a9                	lui	a5,0xa
    220a:	02878793          	addi	a5,a5,40 # a028 <__GNU_EH_FRAME_HDR+0x7768>
    220e:	4705                	li	a4,1
    2210:	4394                	lw	a3,0(a5)
    2212:	fee69fe3          	bne	a3,a4,2210 <s25fl128s_wrr+0x18>
    2216:	8082                	ret

Disassembly of section .text.s25fl128s_read:

00002218 <s25fl128s_read>:
    2218:	fff60793          	addi	a5,a2,-1
    221c:	80002737          	lui	a4,0x80002
    2220:	90370713          	addi	a4,a4,-1789 # 80001903 <__GNU_EH_FRAME_HDR+0x7ffff043>
    2224:	07c2                	slli	a5,a5,0x10
    2226:	97ba                	add	a5,a5,a4
    2228:	6729                	lui	a4,0xa
    222a:	c348                	sw	a0,4(a4)
    222c:	6729                	lui	a4,0xa
    222e:	c31c                	sw	a5,0(a4)
    2230:	67a9                	lui	a5,0xa
    2232:	02878793          	addi	a5,a5,40 # a028 <__GNU_EH_FRAME_HDR+0x7768>
    2236:	4705                	li	a4,1
    2238:	4394                	lw	a3,0(a5)
    223a:	fee69fe3          	bne	a3,a4,2238 <s25fl128s_read+0x20>
    223e:	060d                	addi	a2,a2,3
    2240:	66a9                	lui	a3,0xa
    2242:	8609                	srai	a2,a2,0x2
    2244:	4781                	li	a5,0
    2246:	06a1                	addi	a3,a3,8 # a008 <__GNU_EH_FRAME_HDR+0x7748>
    2248:	00c7c363          	blt	a5,a2,224e <s25fl128s_read+0x36>
    224c:	8082                	ret
    224e:	00279713          	slli	a4,a5,0x2
    2252:	00d70533          	add	a0,a4,a3
    2256:	4108                	lw	a0,0(a0)
    2258:	972e                	add	a4,a4,a1
    225a:	0785                	addi	a5,a5,1
    225c:	c308                	sw	a0,0(a4)
    225e:	b7ed                	j	2248 <s25fl128s_read+0x30>

Disassembly of section .text.s25fl128s_pp:

00002260 <s25fl128s_pp>:
    2260:	fff60793          	addi	a5,a2,-1
    2264:	80002737          	lui	a4,0x80002
    2268:	d0270713          	addi	a4,a4,-766 # 80001d02 <__GNU_EH_FRAME_HDR+0x7ffff442>
    226c:	07c2                	slli	a5,a5,0x10
    226e:	97ba                	add	a5,a5,a4
    2270:	6729                	lui	a4,0xa
    2272:	c348                	sw	a0,4(a4)
    2274:	060d                	addi	a2,a2,3
    2276:	6529                	lui	a0,0xa
    2278:	8609                	srai	a2,a2,0x2
    227a:	4701                	li	a4,0
    227c:	0521                	addi	a0,a0,8 # a008 <__GNU_EH_FRAME_HDR+0x7748>
    227e:	00c74c63          	blt	a4,a2,2296 <s25fl128s_pp+0x36>
    2282:	6729                	lui	a4,0xa
    2284:	c31c                	sw	a5,0(a4)
    2286:	67a9                	lui	a5,0xa
    2288:	02878793          	addi	a5,a5,40 # a028 <__GNU_EH_FRAME_HDR+0x7768>
    228c:	4705                	li	a4,1
    228e:	4394                	lw	a3,0(a5)
    2290:	fee69fe3          	bne	a3,a4,228e <s25fl128s_pp+0x2e>
    2294:	8082                	ret
    2296:	00271693          	slli	a3,a4,0x2
    229a:	00a68833          	add	a6,a3,a0
    229e:	96ae                	add	a3,a3,a1
    22a0:	4294                	lw	a3,0(a3)
    22a2:	0705                	addi	a4,a4,1 # a001 <__GNU_EH_FRAME_HDR+0x7741>
    22a4:	00d82023          	sw	a3,0(a6)
    22a8:	bfd9                	j	227e <s25fl128s_pp+0x1e>

Disassembly of section .text.s25fl128s_se:

000022aa <s25fl128s_se>:
    22aa:	67a9                	lui	a5,0xa
    22ac:	c788                	sw	a0,8(a5)
    22ae:	800207b7          	lui	a5,0x80020
    22b2:	5d878793          	addi	a5,a5,1496 # 800205d8 <__GNU_EH_FRAME_HDR+0x8001dd18>
    22b6:	6729                	lui	a4,0xa
    22b8:	c31c                	sw	a5,0(a4)
    22ba:	67a9                	lui	a5,0xa
    22bc:	02878793          	addi	a5,a5,40 # a028 <__GNU_EH_FRAME_HDR+0x7768>
    22c0:	4705                	li	a4,1
    22c2:	4394                	lw	a3,0(a5)
    22c4:	fee69fe3          	bne	a3,a4,22c2 <s25fl128s_se+0x18>
    22c8:	8082                	ret

Disassembly of section .text.s25fl128s_dor:

000022ca <s25fl128s_dor>:
    22ca:	fff60793          	addi	a5,a2,-1
    22ce:	80002737          	lui	a4,0x80002
    22d2:	23b70713          	addi	a4,a4,571 # 8000223b <__GNU_EH_FRAME_HDR+0x7ffff97b>
    22d6:	07c2                	slli	a5,a5,0x10
    22d8:	97ba                	add	a5,a5,a4
    22da:	6729                	lui	a4,0xa
    22dc:	c348                	sw	a0,4(a4)
    22de:	6729                	lui	a4,0xa
    22e0:	c31c                	sw	a5,0(a4)
    22e2:	67a9                	lui	a5,0xa
    22e4:	02878793          	addi	a5,a5,40 # a028 <__GNU_EH_FRAME_HDR+0x7768>
    22e8:	4705                	li	a4,1
    22ea:	4394                	lw	a3,0(a5)
    22ec:	fee69fe3          	bne	a3,a4,22ea <s25fl128s_dor+0x20>
    22f0:	060d                	addi	a2,a2,3
    22f2:	66a9                	lui	a3,0xa
    22f4:	8609                	srai	a2,a2,0x2
    22f6:	4781                	li	a5,0
    22f8:	06a1                	addi	a3,a3,8 # a008 <__GNU_EH_FRAME_HDR+0x7748>
    22fa:	00c7c363          	blt	a5,a2,2300 <s25fl128s_dor+0x36>
    22fe:	8082                	ret
    2300:	00279713          	slli	a4,a5,0x2
    2304:	00d70533          	add	a0,a4,a3
    2308:	4108                	lw	a0,0(a0)
    230a:	972e                	add	a4,a4,a1
    230c:	0785                	addi	a5,a5,1
    230e:	c308                	sw	a0,0(a4)
    2310:	b7ed                	j	22fa <s25fl128s_dor+0x30>

Disassembly of section .text.s25fl128s_qor:

00002312 <s25fl128s_qor>:
    2312:	fff60793          	addi	a5,a2,-1
    2316:	80002737          	lui	a4,0x80002
    231a:	36b70713          	addi	a4,a4,875 # 8000236b <__GNU_EH_FRAME_HDR+0x7ffffaab>
    231e:	07c2                	slli	a5,a5,0x10
    2320:	97ba                	add	a5,a5,a4
    2322:	6729                	lui	a4,0xa
    2324:	c348                	sw	a0,4(a4)
    2326:	6729                	lui	a4,0xa
    2328:	c31c                	sw	a5,0(a4)
    232a:	67a9                	lui	a5,0xa
    232c:	02878793          	addi	a5,a5,40 # a028 <__GNU_EH_FRAME_HDR+0x7768>
    2330:	4705                	li	a4,1
    2332:	4394                	lw	a3,0(a5)
    2334:	fee69fe3          	bne	a3,a4,2332 <s25fl128s_qor+0x20>
    2338:	060d                	addi	a2,a2,3
    233a:	66a9                	lui	a3,0xa
    233c:	8609                	srai	a2,a2,0x2
    233e:	4781                	li	a5,0
    2340:	06a1                	addi	a3,a3,8 # a008 <__GNU_EH_FRAME_HDR+0x7748>
    2342:	00c7c363          	blt	a5,a2,2348 <s25fl128s_qor+0x36>
    2346:	8082                	ret
    2348:	00279713          	slli	a4,a5,0x2
    234c:	00d70533          	add	a0,a4,a3
    2350:	4108                	lw	a0,0(a0)
    2352:	972e                	add	a4,a4,a1
    2354:	0785                	addi	a5,a5,1
    2356:	c308                	sw	a0,0(a4)
    2358:	b7ed                	j	2342 <s25fl128s_qor+0x30>

Disassembly of section .text.s25fl128s_qpp:

0000235a <s25fl128s_qpp>:
    235a:	fff60793          	addi	a5,a2,-1
    235e:	80002737          	lui	a4,0x80002
    2362:	f3270713          	addi	a4,a4,-206 # 80001f32 <__GNU_EH_FRAME_HDR+0x7ffff672>
    2366:	07c2                	slli	a5,a5,0x10
    2368:	97ba                	add	a5,a5,a4
    236a:	6729                	lui	a4,0xa
    236c:	c348                	sw	a0,4(a4)
    236e:	060d                	addi	a2,a2,3
    2370:	6729                	lui	a4,0xa
    2372:	66a9                	lui	a3,0xa
    2374:	c31c                	sw	a5,0(a4)
    2376:	8609                	srai	a2,a2,0x2
    2378:	4781                	li	a5,0
    237a:	06a1                	addi	a3,a3,8 # a008 <__GNU_EH_FRAME_HDR+0x7748>
    237c:	00c7ca63          	blt	a5,a2,2390 <s25fl128s_qpp+0x36>
    2380:	67a9                	lui	a5,0xa
    2382:	02878793          	addi	a5,a5,40 # a028 <__GNU_EH_FRAME_HDR+0x7768>
    2386:	4705                	li	a4,1
    2388:	4394                	lw	a3,0(a5)
    238a:	fee69fe3          	bne	a3,a4,2388 <s25fl128s_qpp+0x2e>
    238e:	8082                	ret
    2390:	00279713          	slli	a4,a5,0x2
    2394:	00d70533          	add	a0,a4,a3
    2398:	972e                	add	a4,a4,a1
    239a:	4318                	lw	a4,0(a4)
    239c:	0785                	addi	a5,a5,1
    239e:	c118                	sw	a4,0(a0)
    23a0:	bff1                	j	237c <s25fl128s_qpp+0x22>

Disassembly of section .text.qspi_custom_write:

000023a2 <qspi_custom_write>:
    23a2:	0ff67613          	zext.b	a2,a2
    23a6:	06a2                	slli	a3,a3,0x8
    23a8:	96b2                	add	a3,a3,a2
    23aa:	072e                	slli	a4,a4,0xb
    23ac:	40068693          	addi	a3,a3,1024
    23b0:	96ba                	add	a3,a3,a4
    23b2:	fff78713          	addi	a4,a5,-1
    23b6:	0742                	slli	a4,a4,0x10
    23b8:	9736                	add	a4,a4,a3
    23ba:	0866                	slli	a6,a6,0x19
    23bc:	983a                	add	a6,a6,a4
    23be:	80000737          	lui	a4,0x80000
    23c2:	983a                	add	a6,a6,a4
    23c4:	078d                	addi	a5,a5,3
    23c6:	6729                	lui	a4,0xa
    23c8:	6629                	lui	a2,0xa
    23ca:	c348                	sw	a0,4(a4)
    23cc:	8789                	srai	a5,a5,0x2
    23ce:	4701                	li	a4,0
    23d0:	0621                	addi	a2,a2,8 # a008 <__GNU_EH_FRAME_HDR+0x7748>
    23d2:	00f74c63          	blt	a4,a5,23ea <qspi_custom_write+0x48>
    23d6:	67a9                	lui	a5,0xa
    23d8:	0107a023          	sw	a6,0(a5) # a000 <__GNU_EH_FRAME_HDR+0x7740>
    23dc:	4705                	li	a4,1
    23de:	02878793          	addi	a5,a5,40
    23e2:	4394                	lw	a3,0(a5)
    23e4:	fee69fe3          	bne	a3,a4,23e2 <qspi_custom_write+0x40>
    23e8:	8082                	ret
    23ea:	00271693          	slli	a3,a4,0x2
    23ee:	00c68533          	add	a0,a3,a2
    23f2:	96ae                	add	a3,a3,a1
    23f4:	4294                	lw	a3,0(a3)
    23f6:	0705                	addi	a4,a4,1 # a001 <__GNU_EH_FRAME_HDR+0x7741>
    23f8:	c114                	sw	a3,0(a0)
    23fa:	bfe1                	j	23d2 <qspi_custom_write+0x30>

Disassembly of section .text.qspi_custom_read:

000023fc <qspi_custom_read>:
    23fc:	0ff67613          	zext.b	a2,a2
    2400:	06a2                	slli	a3,a3,0x8
    2402:	072e                	slli	a4,a4,0xb
    2404:	96b2                	add	a3,a3,a2
    2406:	96ba                	add	a3,a3,a4
    2408:	fff78713          	addi	a4,a5,-1
    240c:	0742                	slli	a4,a4,0x10
    240e:	9736                	add	a4,a4,a3
    2410:	0866                	slli	a6,a6,0x19
    2412:	983a                	add	a6,a6,a4
    2414:	80000737          	lui	a4,0x80000
    2418:	983a                	add	a6,a6,a4
    241a:	6729                	lui	a4,0xa
    241c:	c348                	sw	a0,4(a4)
    241e:	6729                	lui	a4,0xa
    2420:	01072023          	sw	a6,0(a4) # a000 <__GNU_EH_FRAME_HDR+0x7740>
    2424:	4685                	li	a3,1
    2426:	02870713          	addi	a4,a4,40
    242a:	4310                	lw	a2,0(a4)
    242c:	fed61fe3          	bne	a2,a3,242a <qspi_custom_read+0x2e>
    2430:	078d                	addi	a5,a5,3
    2432:	6629                	lui	a2,0xa
    2434:	8789                	srai	a5,a5,0x2
    2436:	4701                	li	a4,0
    2438:	0621                	addi	a2,a2,8 # a008 <__GNU_EH_FRAME_HDR+0x7748>
    243a:	00f74363          	blt	a4,a5,2440 <qspi_custom_read+0x44>
    243e:	8082                	ret
    2440:	00271693          	slli	a3,a4,0x2
    2444:	00c68533          	add	a0,a3,a2
    2448:	4108                	lw	a0,0(a0)
    244a:	96ae                	add	a3,a3,a1
    244c:	0705                	addi	a4,a4,1
    244e:	c288                	sw	a0,0(a3)
    2450:	b7ed                	j	243a <qspi_custom_read+0x3e>

Disassembly of section .text.timer_read_counter:

00002452 <timer_read_counter>:
    2452:	67b1                	lui	a5,0xc
    2454:	4bc8                	lw	a0,20(a5)
    2456:	8082                	ret

Disassembly of section .text.timer_read_event:

00002458 <timer_read_event>:
    2458:	67b1                	lui	a5,0xc
    245a:	4f88                	lw	a0,24(a5)
    245c:	8082                	ret

Disassembly of section .text.timer_clear_counter:

0000245e <timer_clear_counter>:
    245e:	67b1                	lui	a5,0xc
    2460:	4705                	li	a4,1
    2462:	c798                	sw	a4,8(a5)
    2464:	8082                	ret

Disassembly of section .text.timer_clear_event:

00002466 <timer_clear_event>:
    2466:	67b1                	lui	a5,0xc
    2468:	4705                	li	a4,1
    246a:	cfd8                	sw	a4,28(a5)
    246c:	8082                	ret

Disassembly of section .text.timer_enable:

0000246e <timer_enable>:
    246e:	67b1                	lui	a5,0xc
    2470:	4705                	li	a4,1
    2472:	c7d8                	sw	a4,12(a5)
    2474:	8082                	ret

Disassembly of section .text.timer_disable:

00002476 <timer_disable>:
    2476:	67b1                	lui	a5,0xc
    2478:	0007a623          	sw	zero,12(a5) # c00c <__GNU_EH_FRAME_HDR+0x974c>
    247c:	8082                	ret

Disassembly of section .text.timer_conf:

0000247e <timer_conf>:
    247e:	67b1                	lui	a5,0xc
    2480:	c388                	sw	a0,0(a5)
    2482:	c3cc                	sw	a1,4(a5)
    2484:	67b1                	lui	a5,0xc
    2486:	cb90                	sw	a2,16(a5)
    2488:	4705                	li	a4,1
    248a:	67b1                	lui	a5,0xc
    248c:	c798                	sw	a4,8(a5)
    248e:	67b1                	lui	a5,0xc
    2490:	cfd8                	sw	a4,28(a5)
    2492:	67b1                	lui	a5,0xc
    2494:	c7d8                	sw	a4,12(a5)
    2496:	8082                	ret

Disassembly of section .text.gpio_write:

00002498 <gpio_write>:
    2498:	67c1                	lui	a5,0x10
    249a:	c3c8                	sw	a0,4(a5)
    249c:	8082                	ret

Disassembly of section .text.gpio_read:

0000249e <gpio_read>:
    249e:	67c1                	lui	a5,0x10
    24a0:	4388                	lw	a0,0(a5)
    24a2:	0542                	slli	a0,a0,0x10
    24a4:	8541                	srai	a0,a0,0x10
    24a6:	8082                	ret

Disassembly of section .text.instr_mem_write:

000024a8 <instr_mem_write>:
    24a8:	050a                	slli	a0,a0,0x2
    24aa:	6791                	lui	a5,0x4
    24ac:	97aa                	add	a5,a5,a0
    24ae:	c38c                	sw	a1,0(a5)
    24b0:	8082                	ret

Disassembly of section .text.knightrider_i2c:

000024b2 <knightrider_i2c>:
    24b2:	1141                	addi	sp,sp,-16
    24b4:	c04a                	sw	s2,0(sp)
    24b6:	c606                	sw	ra,12(sp)
    24b8:	c422                	sw	s0,8(sp)
    24ba:	c226                	sw	s1,4(sp)
    24bc:	67a1                	lui	a5,0x8
    24be:	07b00713          	li	a4,123
    24c2:	c3d8                	sw	a4,4(a5)
    24c4:	4929                	li	s2,10
    24c6:	44fd                	li	s1,31
    24c8:	4405                	li	s0,1
    24ca:	0406                	slli	s0,s0,0x1
    24cc:	4591                	li	a1,4
    24ce:	8522                	mv	a0,s0
    24d0:	14fd                	addi	s1,s1,-1
    24d2:	3659                	jal	2058 <i2c_write>
    24d4:	f8fd                	bnez	s1,24ca <knightrider_i2c+0x18>
    24d6:	447d                	li	s0,31
    24d8:	800004b7          	lui	s1,0x80000
    24dc:	8085                	srli	s1,s1,0x1
    24de:	4591                	li	a1,4
    24e0:	8526                	mv	a0,s1
    24e2:	147d                	addi	s0,s0,-1
    24e4:	3e95                	jal	2058 <i2c_write>
    24e6:	f87d                	bnez	s0,24dc <knightrider_i2c+0x2a>
    24e8:	197d                	addi	s2,s2,-1
    24ea:	fc091ee3          	bnez	s2,24c6 <knightrider_i2c+0x14>
    24ee:	40b2                	lw	ra,12(sp)
    24f0:	4422                	lw	s0,8(sp)
    24f2:	4492                	lw	s1,4(sp)
    24f4:	4902                	lw	s2,0(sp)
    24f6:	0141                	addi	sp,sp,16
    24f8:	8082                	ret
