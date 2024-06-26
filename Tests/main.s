
a.out:     file format elf32-littleriscv


Disassembly of section .text:

00002000 <main>:
    2000:	1141                	addi	sp,sp,-16
    2002:	c606                	sw	ra,12(sp)
    2004:	2941                	jal	2494 <knightrider_i2c>

Disassembly of section .text.uart_conf:

00002006 <uart_conf>:
    2006:	6799                	lui	a5,0x6
    2008:	c388                	sw	a0,0(a5)
    200a:	c3cc                	sw	a1,4(a5)
    200c:	8082                	ret

Disassembly of section .text.uart_read:

0000200e <uart_read>:
    200e:	6799                	lui	a5,0x6
    2010:	07c1                	addi	a5,a5,16 # 6010 <__GNU_EH_FRAME_HDR+0x3788>
    2012:	4709                	li	a4,2
    2014:	4394                	lw	a3,0(a5)
    2016:	fee69fe3          	bne	a3,a4,2014 <uart_read+0x6>
    201a:	6719                	lui	a4,0x6
    201c:	4708                	lw	a0,8(a4)
    201e:	0007a023          	sw	zero,0(a5)
    2022:	0ff57513          	zext.b	a0,a0
    2026:	8082                	ret

Disassembly of section .text.uart_write:

00002028 <uart_write>:
    2028:	6799                	lui	a5,0x6
    202a:	c7c8                	sw	a0,12(a5)
    202c:	6799                	lui	a5,0x6
    202e:	4705                	li	a4,1
    2030:	07c1                	addi	a5,a5,16 # 6010 <__GNU_EH_FRAME_HDR+0x3788>
    2032:	c398                	sw	a4,0(a5)
    2034:	4715                	li	a4,5
    2036:	4394                	lw	a3,0(a5)
    2038:	fee69fe3          	bne	a3,a4,2036 <uart_write+0xe>
    203c:	0007a023          	sw	zero,0(a5)
    2040:	8082                	ret

Disassembly of section .text.i2c_conf:

00002042 <i2c_conf>:
    2042:	67a1                	lui	a5,0x8
    2044:	c3c8                	sw	a0,4(a5)
    2046:	8082                	ret

Disassembly of section .text.i2c_write:

00002048 <i2c_write>:
    2048:	67a1                	lui	a5,0x8
    204a:	c38c                	sw	a1,0(a5)
    204c:	c7c8                	sw	a0,12(a5)
    204e:	67a1                	lui	a5,0x8
    2050:	4705                	li	a4,1
    2052:	07c1                	addi	a5,a5,16 # 8010 <__GNU_EH_FRAME_HDR+0x5788>
    2054:	c398                	sw	a4,0(a5)
    2056:	470d                	li	a4,3
    2058:	4394                	lw	a3,0(a5)
    205a:	fee69fe3          	bne	a3,a4,2058 <i2c_write+0x10>
    205e:	0007a023          	sw	zero,0(a5)
    2062:	8082                	ret

Disassembly of section .text.i2c_read:

00002064 <i2c_read>:
    2064:	67a1                	lui	a5,0x8
    2066:	c388                	sw	a0,0(a5)
    2068:	4711                	li	a4,4
    206a:	07c1                	addi	a5,a5,16 # 8010 <__GNU_EH_FRAME_HDR+0x5788>
    206c:	c398                	sw	a4,0(a5)
    206e:	4731                	li	a4,12
    2070:	4394                	lw	a3,0(a5)
    2072:	fee69fe3          	bne	a3,a4,2070 <i2c_read+0xc>
    2076:	0007a023          	sw	zero,0(a5)
    207a:	67a1                	lui	a5,0x8
    207c:	4788                	lw	a0,8(a5)
    207e:	8082                	ret

Disassembly of section .text.s25fl128s_wren:

00002080 <s25fl128s_wren>:
    2080:	800007b7          	lui	a5,0x80000
    2084:	0799                	addi	a5,a5,6 # 80000006 <__GNU_EH_FRAME_HDR+0x7fffd77e>
    2086:	6729                	lui	a4,0xa
    2088:	c31c                	sw	a5,0(a4)
    208a:	67a9                	lui	a5,0xa
    208c:	02878793          	addi	a5,a5,40 # a028 <__GNU_EH_FRAME_HDR+0x77a0>
    2090:	4705                	li	a4,1
    2092:	4394                	lw	a3,0(a5)
    2094:	fee69fe3          	bne	a3,a4,2092 <s25fl128s_wren+0x12>
    2098:	8082                	ret

Disassembly of section .text.s25fl128s_wrdi:

0000209a <s25fl128s_wrdi>:
    209a:	800007b7          	lui	a5,0x80000
    209e:	0791                	addi	a5,a5,4 # 80000004 <__GNU_EH_FRAME_HDR+0x7fffd77c>
    20a0:	6729                	lui	a4,0xa
    20a2:	c31c                	sw	a5,0(a4)
    20a4:	67a9                	lui	a5,0xa
    20a6:	02878793          	addi	a5,a5,40 # a028 <__GNU_EH_FRAME_HDR+0x77a0>
    20aa:	4705                	li	a4,1
    20ac:	4394                	lw	a3,0(a5)
    20ae:	fee69fe3          	bne	a3,a4,20ac <s25fl128s_wrdi+0x12>
    20b2:	8082                	ret

Disassembly of section .text.s25fl128s_clsr:

000020b4 <s25fl128s_clsr>:
    20b4:	800007b7          	lui	a5,0x80000
    20b8:	03078793          	addi	a5,a5,48 # 80000030 <__GNU_EH_FRAME_HDR+0x7fffd7a8>
    20bc:	6729                	lui	a4,0xa
    20be:	c31c                	sw	a5,0(a4)
    20c0:	67a9                	lui	a5,0xa
    20c2:	02878793          	addi	a5,a5,40 # a028 <__GNU_EH_FRAME_HDR+0x77a0>
    20c6:	4705                	li	a4,1
    20c8:	4394                	lw	a3,0(a5)
    20ca:	fee69fe3          	bne	a3,a4,20c8 <s25fl128s_clsr+0x14>
    20ce:	8082                	ret

Disassembly of section .text.s25fl128s_reset:

000020d0 <s25fl128s_reset>:
    20d0:	800007b7          	lui	a5,0x80000
    20d4:	0f078793          	addi	a5,a5,240 # 800000f0 <__GNU_EH_FRAME_HDR+0x7fffd868>
    20d8:	6729                	lui	a4,0xa
    20da:	c31c                	sw	a5,0(a4)
    20dc:	67a9                	lui	a5,0xa
    20de:	02878793          	addi	a5,a5,40 # a028 <__GNU_EH_FRAME_HDR+0x77a0>
    20e2:	4705                	li	a4,1
    20e4:	4394                	lw	a3,0(a5)
    20e6:	fee69fe3          	bne	a3,a4,20e4 <s25fl128s_reset+0x14>
    20ea:	8082                	ret

Disassembly of section .text.s25fl128s_rdid:

000020ec <s25fl128s_rdid>:
    20ec:	fff58793          	addi	a5,a1,-1
    20f0:	80000737          	lui	a4,0x80000
    20f4:	19f70713          	addi	a4,a4,415 # 8000019f <__GNU_EH_FRAME_HDR+0x7fffd917>
    20f8:	07c2                	slli	a5,a5,0x10
    20fa:	97ba                	add	a5,a5,a4
    20fc:	6729                	lui	a4,0xa
    20fe:	c31c                	sw	a5,0(a4)
    2100:	67a9                	lui	a5,0xa
    2102:	02878793          	addi	a5,a5,40 # a028 <__GNU_EH_FRAME_HDR+0x77a0>
    2106:	4705                	li	a4,1
    2108:	4394                	lw	a3,0(a5)
    210a:	fee69fe3          	bne	a3,a4,2108 <s25fl128s_rdid+0x1c>
    210e:	058d                	addi	a1,a1,3
    2110:	66a9                	lui	a3,0xa
    2112:	8589                	srai	a1,a1,0x2
    2114:	4781                	li	a5,0
    2116:	06a1                	addi	a3,a3,8 # a008 <__GNU_EH_FRAME_HDR+0x7780>
    2118:	00b7c363          	blt	a5,a1,211e <s25fl128s_rdid+0x32>
    211c:	8082                	ret
    211e:	00279713          	slli	a4,a5,0x2
    2122:	00d70633          	add	a2,a4,a3
    2126:	4210                	lw	a2,0(a2)
    2128:	972a                	add	a4,a4,a0
    212a:	0785                	addi	a5,a5,1
    212c:	c310                	sw	a2,0(a4)
    212e:	b7ed                	j	2118 <s25fl128s_rdid+0x2c>

Disassembly of section .text.s25fl128s_rdsr1:

00002130 <s25fl128s_rdsr1>:
    2130:	800007b7          	lui	a5,0x80000
    2134:	10578793          	addi	a5,a5,261 # 80000105 <__GNU_EH_FRAME_HDR+0x7fffd87d>
    2138:	6729                	lui	a4,0xa
    213a:	c31c                	sw	a5,0(a4)
    213c:	67a9                	lui	a5,0xa
    213e:	02878793          	addi	a5,a5,40 # a028 <__GNU_EH_FRAME_HDR+0x77a0>
    2142:	4705                	li	a4,1
    2144:	4394                	lw	a3,0(a5)
    2146:	fee69fe3          	bne	a3,a4,2144 <s25fl128s_rdsr1+0x14>
    214a:	67a9                	lui	a5,0xa
    214c:	4788                	lw	a0,8(a5)
    214e:	0ff57513          	zext.b	a0,a0
    2152:	8082                	ret

Disassembly of section .text.s25fl128s_rdsr2:

00002154 <s25fl128s_rdsr2>:
    2154:	800007b7          	lui	a5,0x80000
    2158:	10778793          	addi	a5,a5,263 # 80000107 <__GNU_EH_FRAME_HDR+0x7fffd87f>
    215c:	6729                	lui	a4,0xa
    215e:	c31c                	sw	a5,0(a4)
    2160:	67a9                	lui	a5,0xa
    2162:	02878793          	addi	a5,a5,40 # a028 <__GNU_EH_FRAME_HDR+0x77a0>
    2166:	4705                	li	a4,1
    2168:	4394                	lw	a3,0(a5)
    216a:	fee69fe3          	bne	a3,a4,2168 <s25fl128s_rdsr2+0x14>
    216e:	67a9                	lui	a5,0xa
    2170:	4788                	lw	a0,8(a5)
    2172:	0ff57513          	zext.b	a0,a0
    2176:	8082                	ret

Disassembly of section .text.s25fl128s_rdcr:

00002178 <s25fl128s_rdcr>:
    2178:	800007b7          	lui	a5,0x80000
    217c:	13578793          	addi	a5,a5,309 # 80000135 <__GNU_EH_FRAME_HDR+0x7fffd8ad>
    2180:	6729                	lui	a4,0xa
    2182:	c31c                	sw	a5,0(a4)
    2184:	67a9                	lui	a5,0xa
    2186:	02878793          	addi	a5,a5,40 # a028 <__GNU_EH_FRAME_HDR+0x77a0>
    218a:	4705                	li	a4,1
    218c:	4394                	lw	a3,0(a5)
    218e:	fee69fe3          	bne	a3,a4,218c <s25fl128s_rdcr+0x14>
    2192:	67a9                	lui	a5,0xa
    2194:	4788                	lw	a0,8(a5)
    2196:	0ff57513          	zext.b	a0,a0
    219a:	8082                	ret

Disassembly of section .text.s25fl128s_read_id:

0000219c <s25fl128s_read_id>:
    219c:	67a9                	lui	a5,0xa
    219e:	c3c8                	sw	a0,4(a5)
    21a0:	800127b7          	lui	a5,0x80012
    21a4:	99078793          	addi	a5,a5,-1648 # 80011990 <__GNU_EH_FRAME_HDR+0x8000f108>
    21a8:	6729                	lui	a4,0xa
    21aa:	c31c                	sw	a5,0(a4)
    21ac:	67a9                	lui	a5,0xa
    21ae:	02878793          	addi	a5,a5,40 # a028 <__GNU_EH_FRAME_HDR+0x77a0>
    21b2:	4705                	li	a4,1
    21b4:	4394                	lw	a3,0(a5)
    21b6:	fee69fe3          	bne	a3,a4,21b4 <s25fl128s_read_id+0x18>
    21ba:	67a9                	lui	a5,0xa
    21bc:	4788                	lw	a0,8(a5)
    21be:	0542                	slli	a0,a0,0x10
    21c0:	8541                	srai	a0,a0,0x10
    21c2:	8082                	ret

Disassembly of section .text.s25fl128s_res:

000021c4 <s25fl128s_res>:
    21c4:	800027b7          	lui	a5,0x80002
    21c8:	9ab78793          	addi	a5,a5,-1621 # 800019ab <__GNU_EH_FRAME_HDR+0x7ffff123>
    21cc:	6729                	lui	a4,0xa
    21ce:	c31c                	sw	a5,0(a4)
    21d0:	67a9                	lui	a5,0xa
    21d2:	02878793          	addi	a5,a5,40 # a028 <__GNU_EH_FRAME_HDR+0x77a0>
    21d6:	4705                	li	a4,1
    21d8:	4394                	lw	a3,0(a5)
    21da:	fee69fe3          	bne	a3,a4,21d8 <s25fl128s_res+0x14>
    21de:	67a9                	lui	a5,0xa
    21e0:	4788                	lw	a0,8(a5)
    21e2:	0ff57513          	zext.b	a0,a0
    21e6:	8082                	ret

Disassembly of section .text.s25fl128s_wrr:

000021e8 <s25fl128s_wrr>:
    21e8:	67a9                	lui	a5,0xa
    21ea:	c788                	sw	a0,8(a5)
    21ec:	800107b7          	lui	a5,0x80010
    21f0:	50178793          	addi	a5,a5,1281 # 80010501 <__GNU_EH_FRAME_HDR+0x8000dc79>
    21f4:	6729                	lui	a4,0xa
    21f6:	c31c                	sw	a5,0(a4)
    21f8:	67a9                	lui	a5,0xa
    21fa:	02878793          	addi	a5,a5,40 # a028 <__GNU_EH_FRAME_HDR+0x77a0>
    21fe:	4705                	li	a4,1
    2200:	4394                	lw	a3,0(a5)
    2202:	fee69fe3          	bne	a3,a4,2200 <s25fl128s_wrr+0x18>
    2206:	8082                	ret

Disassembly of section .text.s25fl128s_read:

00002208 <s25fl128s_read>:
    2208:	fff60793          	addi	a5,a2,-1
    220c:	80002737          	lui	a4,0x80002
    2210:	90370713          	addi	a4,a4,-1789 # 80001903 <__GNU_EH_FRAME_HDR+0x7ffff07b>
    2214:	07c2                	slli	a5,a5,0x10
    2216:	97ba                	add	a5,a5,a4
    2218:	6729                	lui	a4,0xa
    221a:	c348                	sw	a0,4(a4)
    221c:	6729                	lui	a4,0xa
    221e:	c31c                	sw	a5,0(a4)
    2220:	67a9                	lui	a5,0xa
    2222:	02878793          	addi	a5,a5,40 # a028 <__GNU_EH_FRAME_HDR+0x77a0>
    2226:	4705                	li	a4,1
    2228:	4394                	lw	a3,0(a5)
    222a:	fee69fe3          	bne	a3,a4,2228 <s25fl128s_read+0x20>
    222e:	060d                	addi	a2,a2,3
    2230:	66a9                	lui	a3,0xa
    2232:	8609                	srai	a2,a2,0x2
    2234:	4781                	li	a5,0
    2236:	06a1                	addi	a3,a3,8 # a008 <__GNU_EH_FRAME_HDR+0x7780>
    2238:	00c7c363          	blt	a5,a2,223e <s25fl128s_read+0x36>
    223c:	8082                	ret
    223e:	00279713          	slli	a4,a5,0x2
    2242:	00d70533          	add	a0,a4,a3
    2246:	4108                	lw	a0,0(a0)
    2248:	972e                	add	a4,a4,a1
    224a:	0785                	addi	a5,a5,1
    224c:	c308                	sw	a0,0(a4)
    224e:	b7ed                	j	2238 <s25fl128s_read+0x30>

Disassembly of section .text.s25fl128s_pp:

00002250 <s25fl128s_pp>:
    2250:	fff60793          	addi	a5,a2,-1
    2254:	80002737          	lui	a4,0x80002
    2258:	d0270713          	addi	a4,a4,-766 # 80001d02 <__GNU_EH_FRAME_HDR+0x7ffff47a>
    225c:	07c2                	slli	a5,a5,0x10
    225e:	97ba                	add	a5,a5,a4
    2260:	6729                	lui	a4,0xa
    2262:	c348                	sw	a0,4(a4)
    2264:	060d                	addi	a2,a2,3
    2266:	6529                	lui	a0,0xa
    2268:	8609                	srai	a2,a2,0x2
    226a:	4701                	li	a4,0
    226c:	0521                	addi	a0,a0,8 # a008 <__GNU_EH_FRAME_HDR+0x7780>
    226e:	00c74c63          	blt	a4,a2,2286 <s25fl128s_pp+0x36>
    2272:	6729                	lui	a4,0xa
    2274:	c31c                	sw	a5,0(a4)
    2276:	67a9                	lui	a5,0xa
    2278:	02878793          	addi	a5,a5,40 # a028 <__GNU_EH_FRAME_HDR+0x77a0>
    227c:	4705                	li	a4,1
    227e:	4394                	lw	a3,0(a5)
    2280:	fee69fe3          	bne	a3,a4,227e <s25fl128s_pp+0x2e>
    2284:	8082                	ret
    2286:	00271693          	slli	a3,a4,0x2
    228a:	00a68833          	add	a6,a3,a0
    228e:	96ae                	add	a3,a3,a1
    2290:	4294                	lw	a3,0(a3)
    2292:	0705                	addi	a4,a4,1 # a001 <__GNU_EH_FRAME_HDR+0x7779>
    2294:	00d82023          	sw	a3,0(a6)
    2298:	bfd9                	j	226e <s25fl128s_pp+0x1e>

Disassembly of section .text.s25fl128s_se:

0000229a <s25fl128s_se>:
    229a:	67a9                	lui	a5,0xa
    229c:	c788                	sw	a0,8(a5)
    229e:	800207b7          	lui	a5,0x80020
    22a2:	5d878793          	addi	a5,a5,1496 # 800205d8 <__GNU_EH_FRAME_HDR+0x8001dd50>
    22a6:	6729                	lui	a4,0xa
    22a8:	c31c                	sw	a5,0(a4)
    22aa:	67a9                	lui	a5,0xa
    22ac:	02878793          	addi	a5,a5,40 # a028 <__GNU_EH_FRAME_HDR+0x77a0>
    22b0:	4705                	li	a4,1
    22b2:	4394                	lw	a3,0(a5)
    22b4:	fee69fe3          	bne	a3,a4,22b2 <s25fl128s_se+0x18>
    22b8:	8082                	ret

Disassembly of section .text.s25fl128s_dor:

000022ba <s25fl128s_dor>:
    22ba:	fff60793          	addi	a5,a2,-1
    22be:	80002737          	lui	a4,0x80002
    22c2:	23b70713          	addi	a4,a4,571 # 8000223b <__GNU_EH_FRAME_HDR+0x7ffff9b3>
    22c6:	07c2                	slli	a5,a5,0x10
    22c8:	97ba                	add	a5,a5,a4
    22ca:	6729                	lui	a4,0xa
    22cc:	c348                	sw	a0,4(a4)
    22ce:	6729                	lui	a4,0xa
    22d0:	c31c                	sw	a5,0(a4)
    22d2:	67a9                	lui	a5,0xa
    22d4:	02878793          	addi	a5,a5,40 # a028 <__GNU_EH_FRAME_HDR+0x77a0>
    22d8:	4705                	li	a4,1
    22da:	4394                	lw	a3,0(a5)
    22dc:	fee69fe3          	bne	a3,a4,22da <s25fl128s_dor+0x20>
    22e0:	060d                	addi	a2,a2,3
    22e2:	66a9                	lui	a3,0xa
    22e4:	8609                	srai	a2,a2,0x2
    22e6:	4781                	li	a5,0
    22e8:	06a1                	addi	a3,a3,8 # a008 <__GNU_EH_FRAME_HDR+0x7780>
    22ea:	00c7c363          	blt	a5,a2,22f0 <s25fl128s_dor+0x36>
    22ee:	8082                	ret
    22f0:	00279713          	slli	a4,a5,0x2
    22f4:	00d70533          	add	a0,a4,a3
    22f8:	4108                	lw	a0,0(a0)
    22fa:	972e                	add	a4,a4,a1
    22fc:	0785                	addi	a5,a5,1
    22fe:	c308                	sw	a0,0(a4)
    2300:	b7ed                	j	22ea <s25fl128s_dor+0x30>

Disassembly of section .text.s25fl128s_qor:

00002302 <s25fl128s_qor>:
    2302:	fff60793          	addi	a5,a2,-1
    2306:	80002737          	lui	a4,0x80002
    230a:	36b70713          	addi	a4,a4,875 # 8000236b <__GNU_EH_FRAME_HDR+0x7ffffae3>
    230e:	07c2                	slli	a5,a5,0x10
    2310:	97ba                	add	a5,a5,a4
    2312:	6729                	lui	a4,0xa
    2314:	c348                	sw	a0,4(a4)
    2316:	6729                	lui	a4,0xa
    2318:	c31c                	sw	a5,0(a4)
    231a:	67a9                	lui	a5,0xa
    231c:	02878793          	addi	a5,a5,40 # a028 <__GNU_EH_FRAME_HDR+0x77a0>
    2320:	4705                	li	a4,1
    2322:	4394                	lw	a3,0(a5)
    2324:	fee69fe3          	bne	a3,a4,2322 <s25fl128s_qor+0x20>
    2328:	060d                	addi	a2,a2,3
    232a:	66a9                	lui	a3,0xa
    232c:	8609                	srai	a2,a2,0x2
    232e:	4781                	li	a5,0
    2330:	06a1                	addi	a3,a3,8 # a008 <__GNU_EH_FRAME_HDR+0x7780>
    2332:	00c7c363          	blt	a5,a2,2338 <s25fl128s_qor+0x36>
    2336:	8082                	ret
    2338:	00279713          	slli	a4,a5,0x2
    233c:	00d70533          	add	a0,a4,a3
    2340:	4108                	lw	a0,0(a0)
    2342:	972e                	add	a4,a4,a1
    2344:	0785                	addi	a5,a5,1
    2346:	c308                	sw	a0,0(a4)
    2348:	b7ed                	j	2332 <s25fl128s_qor+0x30>

Disassembly of section .text.s25fl128s_qpp:

0000234a <s25fl128s_qpp>:
    234a:	fff60793          	addi	a5,a2,-1
    234e:	80002737          	lui	a4,0x80002
    2352:	f3270713          	addi	a4,a4,-206 # 80001f32 <__GNU_EH_FRAME_HDR+0x7ffff6aa>
    2356:	07c2                	slli	a5,a5,0x10
    2358:	97ba                	add	a5,a5,a4
    235a:	6729                	lui	a4,0xa
    235c:	c348                	sw	a0,4(a4)
    235e:	060d                	addi	a2,a2,3
    2360:	6729                	lui	a4,0xa
    2362:	66a9                	lui	a3,0xa
    2364:	c31c                	sw	a5,0(a4)
    2366:	8609                	srai	a2,a2,0x2
    2368:	4781                	li	a5,0
    236a:	06a1                	addi	a3,a3,8 # a008 <__GNU_EH_FRAME_HDR+0x7780>
    236c:	00c7ca63          	blt	a5,a2,2380 <s25fl128s_qpp+0x36>
    2370:	67a9                	lui	a5,0xa
    2372:	02878793          	addi	a5,a5,40 # a028 <__GNU_EH_FRAME_HDR+0x77a0>
    2376:	4705                	li	a4,1
    2378:	4394                	lw	a3,0(a5)
    237a:	fee69fe3          	bne	a3,a4,2378 <s25fl128s_qpp+0x2e>
    237e:	8082                	ret
    2380:	00279713          	slli	a4,a5,0x2
    2384:	00d70533          	add	a0,a4,a3
    2388:	972e                	add	a4,a4,a1
    238a:	4318                	lw	a4,0(a4)
    238c:	0785                	addi	a5,a5,1
    238e:	c118                	sw	a4,0(a0)
    2390:	bff1                	j	236c <s25fl128s_qpp+0x22>

Disassembly of section .text.qspi_custom_write:

00002392 <qspi_custom_write>:
    2392:	0ff67613          	zext.b	a2,a2
    2396:	06a2                	slli	a3,a3,0x8
    2398:	96b2                	add	a3,a3,a2
    239a:	072e                	slli	a4,a4,0xb
    239c:	40068693          	addi	a3,a3,1024
    23a0:	96ba                	add	a3,a3,a4
    23a2:	fff78713          	addi	a4,a5,-1
    23a6:	0742                	slli	a4,a4,0x10
    23a8:	9736                	add	a4,a4,a3
    23aa:	0866                	slli	a6,a6,0x19
    23ac:	983a                	add	a6,a6,a4
    23ae:	80000737          	lui	a4,0x80000
    23b2:	983a                	add	a6,a6,a4
    23b4:	078d                	addi	a5,a5,3
    23b6:	6729                	lui	a4,0xa
    23b8:	6629                	lui	a2,0xa
    23ba:	c348                	sw	a0,4(a4)
    23bc:	8789                	srai	a5,a5,0x2
    23be:	4701                	li	a4,0
    23c0:	0621                	addi	a2,a2,8 # a008 <__GNU_EH_FRAME_HDR+0x7780>
    23c2:	00f74c63          	blt	a4,a5,23da <qspi_custom_write+0x48>
    23c6:	67a9                	lui	a5,0xa
    23c8:	0107a023          	sw	a6,0(a5) # a000 <__GNU_EH_FRAME_HDR+0x7778>
    23cc:	4705                	li	a4,1
    23ce:	02878793          	addi	a5,a5,40
    23d2:	4394                	lw	a3,0(a5)
    23d4:	fee69fe3          	bne	a3,a4,23d2 <qspi_custom_write+0x40>
    23d8:	8082                	ret
    23da:	00271693          	slli	a3,a4,0x2
    23de:	00c68533          	add	a0,a3,a2
    23e2:	96ae                	add	a3,a3,a1
    23e4:	4294                	lw	a3,0(a3)
    23e6:	0705                	addi	a4,a4,1 # a001 <__GNU_EH_FRAME_HDR+0x7779>
    23e8:	c114                	sw	a3,0(a0)
    23ea:	bfe1                	j	23c2 <qspi_custom_write+0x30>

Disassembly of section .text.qspi_custom_read:

000023ec <qspi_custom_read>:
    23ec:	0ff67613          	zext.b	a2,a2
    23f0:	06a2                	slli	a3,a3,0x8
    23f2:	072e                	slli	a4,a4,0xb
    23f4:	96b2                	add	a3,a3,a2
    23f6:	96ba                	add	a3,a3,a4
    23f8:	fff78713          	addi	a4,a5,-1
    23fc:	0742                	slli	a4,a4,0x10
    23fe:	9736                	add	a4,a4,a3
    2400:	0866                	slli	a6,a6,0x19
    2402:	983a                	add	a6,a6,a4
    2404:	80000737          	lui	a4,0x80000
    2408:	983a                	add	a6,a6,a4
    240a:	6729                	lui	a4,0xa
    240c:	c348                	sw	a0,4(a4)
    240e:	6729                	lui	a4,0xa
    2410:	01072023          	sw	a6,0(a4) # a000 <__GNU_EH_FRAME_HDR+0x7778>
    2414:	4685                	li	a3,1
    2416:	02870713          	addi	a4,a4,40
    241a:	4310                	lw	a2,0(a4)
    241c:	fed61fe3          	bne	a2,a3,241a <qspi_custom_read+0x2e>
    2420:	078d                	addi	a5,a5,3
    2422:	6629                	lui	a2,0xa
    2424:	8789                	srai	a5,a5,0x2
    2426:	4701                	li	a4,0
    2428:	0621                	addi	a2,a2,8 # a008 <__GNU_EH_FRAME_HDR+0x7780>
    242a:	00f74363          	blt	a4,a5,2430 <qspi_custom_read+0x44>
    242e:	8082                	ret
    2430:	00271693          	slli	a3,a4,0x2
    2434:	00c68533          	add	a0,a3,a2
    2438:	4108                	lw	a0,0(a0)
    243a:	96ae                	add	a3,a3,a1
    243c:	0705                	addi	a4,a4,1
    243e:	c288                	sw	a0,0(a3)
    2440:	b7ed                	j	242a <qspi_custom_read+0x3e>

Disassembly of section .text.timer_conf:

00002442 <timer_conf>:
    2442:	67b1                	lui	a5,0xc
    2444:	c388                	sw	a0,0(a5)
    2446:	c3cc                	sw	a1,4(a5)
    2448:	67b1                	lui	a5,0xc
    244a:	cb90                	sw	a2,16(a5)
    244c:	8082                	ret

Disassembly of section .text.timer_read_counter:

0000244e <timer_read_counter>:
    244e:	67b1                	lui	a5,0xc
    2450:	4bc8                	lw	a0,20(a5)
    2452:	8082                	ret

Disassembly of section .text.timer_read_event:

00002454 <timer_read_event>:
    2454:	67b1                	lui	a5,0xc
    2456:	4f88                	lw	a0,24(a5)
    2458:	8082                	ret

Disassembly of section .text.timer_clear_counter:

0000245a <timer_clear_counter>:
    245a:	67b1                	lui	a5,0xc
    245c:	4705                	li	a4,1
    245e:	c798                	sw	a4,8(a5)
    2460:	8082                	ret

Disassembly of section .text.timer_clear_event:

00002462 <timer_clear_event>:
    2462:	67b1                	lui	a5,0xc
    2464:	4705                	li	a4,1
    2466:	cfd8                	sw	a4,28(a5)
    2468:	8082                	ret

Disassembly of section .text.timer_enable:

0000246a <timer_enable>:
    246a:	67b1                	lui	a5,0xc
    246c:	4705                	li	a4,1
    246e:	c7d8                	sw	a4,12(a5)
    2470:	8082                	ret

Disassembly of section .text.timer_disable:

00002472 <timer_disable>:
    2472:	67b1                	lui	a5,0xc
    2474:	0007a623          	sw	zero,12(a5) # c00c <__GNU_EH_FRAME_HDR+0x9784>
    2478:	8082                	ret

Disassembly of section .text.gpio_write:

0000247a <gpio_write>:
    247a:	67c1                	lui	a5,0x10
    247c:	c3c8                	sw	a0,4(a5)
    247e:	8082                	ret

Disassembly of section .text.gpio_read:

00002480 <gpio_read>:
    2480:	67c1                	lui	a5,0x10
    2482:	4388                	lw	a0,0(a5)
    2484:	0542                	slli	a0,a0,0x10
    2486:	8541                	srai	a0,a0,0x10
    2488:	8082                	ret

Disassembly of section .text.instr_mem_write:

0000248a <instr_mem_write>:
    248a:	050a                	slli	a0,a0,0x2
    248c:	6791                	lui	a5,0x4
    248e:	97aa                	add	a5,a5,a0
    2490:	c38c                	sw	a1,0(a5)
    2492:	8082                	ret

Disassembly of section .text.knightrider_i2c:

00002494 <knightrider_i2c>:
    2494:	1141                	addi	sp,sp,-16
    2496:	c422                	sw	s0,8(sp)
    2498:	c226                	sw	s1,4(sp)
    249a:	c606                	sw	ra,12(sp)
    249c:	67a1                	lui	a5,0x8
    249e:	07b00713          	li	a4,123
    24a2:	c3d8                	sw	a4,4(a5)
    24a4:	447d                	li	s0,31
    24a6:	4485                	li	s1,1
    24a8:	0486                	slli	s1,s1,0x1
    24aa:	4591                	li	a1,4
    24ac:	8526                	mv	a0,s1
    24ae:	147d                	addi	s0,s0,-1
    24b0:	3e61                	jal	2048 <i2c_write>
    24b2:	f87d                	bnez	s0,24a8 <knightrider_i2c+0x14>
    24b4:	80000437          	lui	s0,0x80000
    24b8:	8405                	srai	s0,s0,0x1
    24ba:	4591                	li	a1,4
    24bc:	8522                	mv	a0,s0
    24be:	3669                	jal	2048 <i2c_write>
    24c0:	bfe5                	j	24b8 <knightrider_i2c+0x24>

Disassembly of section .text.calculator_gpio:

000024c2 <calculator_gpio>:
    24c2:	8082                	ret
