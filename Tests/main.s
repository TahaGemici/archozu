
a.out:     file format elf32-littleriscv


Disassembly of section .text:

00002000 <main>:
    2000:	1141                	addi	sp,sp,-16
    2002:	c606                	sw	ra,12(sp)
    2004:	2145                	jal	24a4 <knightrider_i2c>

Disassembly of section .text.uart_conf:

00002006 <uart_conf>:
    2006:	6799                	lui	a5,0x6
    2008:	c388                	sw	a0,0(a5)
    200a:	c3cc                	sw	a1,4(a5)
    200c:	8082                	ret

Disassembly of section .text.uart_read:

0000200e <uart_read>:
    200e:	6799                	lui	a5,0x6
    2010:	07c1                	addi	a5,a5,16 # 6010 <__GNU_EH_FRAME_HDR+0x3778>
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
    2030:	07c1                	addi	a5,a5,16 # 6010 <__GNU_EH_FRAME_HDR+0x3778>
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
    2052:	07c1                	addi	a5,a5,16 # 8010 <__GNU_EH_FRAME_HDR+0x5778>
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
    206a:	07c1                	addi	a5,a5,16 # 8010 <__GNU_EH_FRAME_HDR+0x5778>
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
    2084:	0799                	addi	a5,a5,6 # 80000006 <__GNU_EH_FRAME_HDR+0x7fffd76e>
    2086:	6729                	lui	a4,0xa
    2088:	c31c                	sw	a5,0(a4)
    208a:	67a9                	lui	a5,0xa
    208c:	02878793          	addi	a5,a5,40 # a028 <__GNU_EH_FRAME_HDR+0x7790>
    2090:	4705                	li	a4,1
    2092:	4394                	lw	a3,0(a5)
    2094:	fee69fe3          	bne	a3,a4,2092 <s25fl128s_wren+0x12>
    2098:	8082                	ret

Disassembly of section .text.s25fl128s_wrdi:

0000209a <s25fl128s_wrdi>:
    209a:	800007b7          	lui	a5,0x80000
    209e:	0791                	addi	a5,a5,4 # 80000004 <__GNU_EH_FRAME_HDR+0x7fffd76c>
    20a0:	6729                	lui	a4,0xa
    20a2:	c31c                	sw	a5,0(a4)
    20a4:	67a9                	lui	a5,0xa
    20a6:	02878793          	addi	a5,a5,40 # a028 <__GNU_EH_FRAME_HDR+0x7790>
    20aa:	4705                	li	a4,1
    20ac:	4394                	lw	a3,0(a5)
    20ae:	fee69fe3          	bne	a3,a4,20ac <s25fl128s_wrdi+0x12>
    20b2:	8082                	ret

Disassembly of section .text.s25fl128s_clsr:

000020b4 <s25fl128s_clsr>:
    20b4:	800007b7          	lui	a5,0x80000
    20b8:	03078793          	addi	a5,a5,48 # 80000030 <__GNU_EH_FRAME_HDR+0x7fffd798>
    20bc:	6729                	lui	a4,0xa
    20be:	c31c                	sw	a5,0(a4)
    20c0:	67a9                	lui	a5,0xa
    20c2:	02878793          	addi	a5,a5,40 # a028 <__GNU_EH_FRAME_HDR+0x7790>
    20c6:	4705                	li	a4,1
    20c8:	4394                	lw	a3,0(a5)
    20ca:	fee69fe3          	bne	a3,a4,20c8 <s25fl128s_clsr+0x14>
    20ce:	8082                	ret

Disassembly of section .text.s25fl128s_reset:

000020d0 <s25fl128s_reset>:
    20d0:	800007b7          	lui	a5,0x80000
    20d4:	0f078793          	addi	a5,a5,240 # 800000f0 <__GNU_EH_FRAME_HDR+0x7fffd858>
    20d8:	6729                	lui	a4,0xa
    20da:	c31c                	sw	a5,0(a4)
    20dc:	67a9                	lui	a5,0xa
    20de:	02878793          	addi	a5,a5,40 # a028 <__GNU_EH_FRAME_HDR+0x7790>
    20e2:	4705                	li	a4,1
    20e4:	4394                	lw	a3,0(a5)
    20e6:	fee69fe3          	bne	a3,a4,20e4 <s25fl128s_reset+0x14>
    20ea:	8082                	ret

Disassembly of section .text.s25fl128s_rdid:

000020ec <s25fl128s_rdid>:
    20ec:	fff58793          	addi	a5,a1,-1
    20f0:	80000737          	lui	a4,0x80000
    20f4:	19f70713          	addi	a4,a4,415 # 8000019f <__GNU_EH_FRAME_HDR+0x7fffd907>
    20f8:	07c2                	slli	a5,a5,0x10
    20fa:	97ba                	add	a5,a5,a4
    20fc:	6729                	lui	a4,0xa
    20fe:	c31c                	sw	a5,0(a4)
    2100:	67a9                	lui	a5,0xa
    2102:	02878793          	addi	a5,a5,40 # a028 <__GNU_EH_FRAME_HDR+0x7790>
    2106:	4705                	li	a4,1
    2108:	4394                	lw	a3,0(a5)
    210a:	fee69fe3          	bne	a3,a4,2108 <s25fl128s_rdid+0x1c>
    210e:	4791                	li	a5,4
    2110:	66a9                	lui	a3,0xa
    2112:	02f5c5b3          	div	a1,a1,a5
    2116:	06a1                	addi	a3,a3,8 # a008 <__GNU_EH_FRAME_HDR+0x7770>
    2118:	4781                	li	a5,0
    211a:	00b7c363          	blt	a5,a1,2120 <s25fl128s_rdid+0x34>
    211e:	8082                	ret
    2120:	00279713          	slli	a4,a5,0x2
    2124:	00d70633          	add	a2,a4,a3
    2128:	4210                	lw	a2,0(a2)
    212a:	972a                	add	a4,a4,a0
    212c:	0785                	addi	a5,a5,1
    212e:	c310                	sw	a2,0(a4)
    2130:	b7ed                	j	211a <s25fl128s_rdid+0x2e>

Disassembly of section .text.s25fl128s_rdsr1:

00002132 <s25fl128s_rdsr1>:
    2132:	800007b7          	lui	a5,0x80000
    2136:	10578793          	addi	a5,a5,261 # 80000105 <__GNU_EH_FRAME_HDR+0x7fffd86d>
    213a:	6729                	lui	a4,0xa
    213c:	c31c                	sw	a5,0(a4)
    213e:	67a9                	lui	a5,0xa
    2140:	02878793          	addi	a5,a5,40 # a028 <__GNU_EH_FRAME_HDR+0x7790>
    2144:	4705                	li	a4,1
    2146:	4394                	lw	a3,0(a5)
    2148:	fee69fe3          	bne	a3,a4,2146 <s25fl128s_rdsr1+0x14>
    214c:	67a9                	lui	a5,0xa
    214e:	4788                	lw	a0,8(a5)
    2150:	0ff57513          	zext.b	a0,a0
    2154:	8082                	ret

Disassembly of section .text.s25fl128s_rdsr2:

00002156 <s25fl128s_rdsr2>:
    2156:	800007b7          	lui	a5,0x80000
    215a:	10778793          	addi	a5,a5,263 # 80000107 <__GNU_EH_FRAME_HDR+0x7fffd86f>
    215e:	6729                	lui	a4,0xa
    2160:	c31c                	sw	a5,0(a4)
    2162:	67a9                	lui	a5,0xa
    2164:	02878793          	addi	a5,a5,40 # a028 <__GNU_EH_FRAME_HDR+0x7790>
    2168:	4705                	li	a4,1
    216a:	4394                	lw	a3,0(a5)
    216c:	fee69fe3          	bne	a3,a4,216a <s25fl128s_rdsr2+0x14>
    2170:	67a9                	lui	a5,0xa
    2172:	4788                	lw	a0,8(a5)
    2174:	0ff57513          	zext.b	a0,a0
    2178:	8082                	ret

Disassembly of section .text.s25fl128s_rdcr:

0000217a <s25fl128s_rdcr>:
    217a:	800007b7          	lui	a5,0x80000
    217e:	13578793          	addi	a5,a5,309 # 80000135 <__GNU_EH_FRAME_HDR+0x7fffd89d>
    2182:	6729                	lui	a4,0xa
    2184:	c31c                	sw	a5,0(a4)
    2186:	67a9                	lui	a5,0xa
    2188:	02878793          	addi	a5,a5,40 # a028 <__GNU_EH_FRAME_HDR+0x7790>
    218c:	4705                	li	a4,1
    218e:	4394                	lw	a3,0(a5)
    2190:	fee69fe3          	bne	a3,a4,218e <s25fl128s_rdcr+0x14>
    2194:	67a9                	lui	a5,0xa
    2196:	4788                	lw	a0,8(a5)
    2198:	0ff57513          	zext.b	a0,a0
    219c:	8082                	ret

Disassembly of section .text.s25fl128s_read_id:

0000219e <s25fl128s_read_id>:
    219e:	67a9                	lui	a5,0xa
    21a0:	c3c8                	sw	a0,4(a5)
    21a2:	800127b7          	lui	a5,0x80012
    21a6:	99078793          	addi	a5,a5,-1648 # 80011990 <__GNU_EH_FRAME_HDR+0x8000f0f8>
    21aa:	6729                	lui	a4,0xa
    21ac:	c31c                	sw	a5,0(a4)
    21ae:	67a9                	lui	a5,0xa
    21b0:	02878793          	addi	a5,a5,40 # a028 <__GNU_EH_FRAME_HDR+0x7790>
    21b4:	4705                	li	a4,1
    21b6:	4394                	lw	a3,0(a5)
    21b8:	fee69fe3          	bne	a3,a4,21b6 <s25fl128s_read_id+0x18>
    21bc:	67a9                	lui	a5,0xa
    21be:	4788                	lw	a0,8(a5)
    21c0:	0542                	slli	a0,a0,0x10
    21c2:	8541                	srai	a0,a0,0x10
    21c4:	8082                	ret

Disassembly of section .text.s25fl128s_res:

000021c6 <s25fl128s_res>:
    21c6:	800027b7          	lui	a5,0x80002
    21ca:	9ab78793          	addi	a5,a5,-1621 # 800019ab <__GNU_EH_FRAME_HDR+0x7ffff113>
    21ce:	6729                	lui	a4,0xa
    21d0:	c31c                	sw	a5,0(a4)
    21d2:	67a9                	lui	a5,0xa
    21d4:	02878793          	addi	a5,a5,40 # a028 <__GNU_EH_FRAME_HDR+0x7790>
    21d8:	4705                	li	a4,1
    21da:	4394                	lw	a3,0(a5)
    21dc:	fee69fe3          	bne	a3,a4,21da <s25fl128s_res+0x14>
    21e0:	67a9                	lui	a5,0xa
    21e2:	4788                	lw	a0,8(a5)
    21e4:	0ff57513          	zext.b	a0,a0
    21e8:	8082                	ret

Disassembly of section .text.s25fl128s_wrr:

000021ea <s25fl128s_wrr>:
    21ea:	67a9                	lui	a5,0xa
    21ec:	c788                	sw	a0,8(a5)
    21ee:	800107b7          	lui	a5,0x80010
    21f2:	50178793          	addi	a5,a5,1281 # 80010501 <__GNU_EH_FRAME_HDR+0x8000dc69>
    21f6:	6729                	lui	a4,0xa
    21f8:	c31c                	sw	a5,0(a4)
    21fa:	67a9                	lui	a5,0xa
    21fc:	02878793          	addi	a5,a5,40 # a028 <__GNU_EH_FRAME_HDR+0x7790>
    2200:	4705                	li	a4,1
    2202:	4394                	lw	a3,0(a5)
    2204:	fee69fe3          	bne	a3,a4,2202 <s25fl128s_wrr+0x18>
    2208:	8082                	ret

Disassembly of section .text.s25fl128s_read:

0000220a <s25fl128s_read>:
    220a:	fff60793          	addi	a5,a2,-1
    220e:	80002737          	lui	a4,0x80002
    2212:	90370713          	addi	a4,a4,-1789 # 80001903 <__GNU_EH_FRAME_HDR+0x7ffff06b>
    2216:	07c2                	slli	a5,a5,0x10
    2218:	97ba                	add	a5,a5,a4
    221a:	6729                	lui	a4,0xa
    221c:	c348                	sw	a0,4(a4)
    221e:	6729                	lui	a4,0xa
    2220:	c31c                	sw	a5,0(a4)
    2222:	67a9                	lui	a5,0xa
    2224:	02878793          	addi	a5,a5,40 # a028 <__GNU_EH_FRAME_HDR+0x7790>
    2228:	4705                	li	a4,1
    222a:	4394                	lw	a3,0(a5)
    222c:	fee69fe3          	bne	a3,a4,222a <s25fl128s_read+0x20>
    2230:	4791                	li	a5,4
    2232:	66a9                	lui	a3,0xa
    2234:	02f64633          	div	a2,a2,a5
    2238:	06a1                	addi	a3,a3,8 # a008 <__GNU_EH_FRAME_HDR+0x7770>
    223a:	4781                	li	a5,0
    223c:	00c7c363          	blt	a5,a2,2242 <s25fl128s_read+0x38>
    2240:	8082                	ret
    2242:	00279713          	slli	a4,a5,0x2
    2246:	00d70533          	add	a0,a4,a3
    224a:	4108                	lw	a0,0(a0)
    224c:	972e                	add	a4,a4,a1
    224e:	0785                	addi	a5,a5,1
    2250:	c308                	sw	a0,0(a4)
    2252:	b7ed                	j	223c <s25fl128s_read+0x32>

Disassembly of section .text.s25fl128s_pp:

00002254 <s25fl128s_pp>:
    2254:	fff60793          	addi	a5,a2,-1
    2258:	80002737          	lui	a4,0x80002
    225c:	d0270713          	addi	a4,a4,-766 # 80001d02 <__GNU_EH_FRAME_HDR+0x7ffff46a>
    2260:	07c2                	slli	a5,a5,0x10
    2262:	97ba                	add	a5,a5,a4
    2264:	6729                	lui	a4,0xa
    2266:	c348                	sw	a0,4(a4)
    2268:	4711                	li	a4,4
    226a:	6529                	lui	a0,0xa
    226c:	02e64633          	div	a2,a2,a4
    2270:	0521                	addi	a0,a0,8 # a008 <__GNU_EH_FRAME_HDR+0x7770>
    2272:	4701                	li	a4,0
    2274:	00c74c63          	blt	a4,a2,228c <s25fl128s_pp+0x38>
    2278:	6729                	lui	a4,0xa
    227a:	c31c                	sw	a5,0(a4)
    227c:	67a9                	lui	a5,0xa
    227e:	02878793          	addi	a5,a5,40 # a028 <__GNU_EH_FRAME_HDR+0x7790>
    2282:	4705                	li	a4,1
    2284:	4394                	lw	a3,0(a5)
    2286:	fee69fe3          	bne	a3,a4,2284 <s25fl128s_pp+0x30>
    228a:	8082                	ret
    228c:	00271693          	slli	a3,a4,0x2
    2290:	00a68833          	add	a6,a3,a0
    2294:	96ae                	add	a3,a3,a1
    2296:	4294                	lw	a3,0(a3)
    2298:	0705                	addi	a4,a4,1 # a001 <__GNU_EH_FRAME_HDR+0x7769>
    229a:	00d82023          	sw	a3,0(a6)
    229e:	bfd9                	j	2274 <s25fl128s_pp+0x20>

Disassembly of section .text.s25fl128s_se:

000022a0 <s25fl128s_se>:
    22a0:	67a9                	lui	a5,0xa
    22a2:	c788                	sw	a0,8(a5)
    22a4:	800207b7          	lui	a5,0x80020
    22a8:	5d878793          	addi	a5,a5,1496 # 800205d8 <__GNU_EH_FRAME_HDR+0x8001dd40>
    22ac:	6729                	lui	a4,0xa
    22ae:	c31c                	sw	a5,0(a4)
    22b0:	67a9                	lui	a5,0xa
    22b2:	02878793          	addi	a5,a5,40 # a028 <__GNU_EH_FRAME_HDR+0x7790>
    22b6:	4705                	li	a4,1
    22b8:	4394                	lw	a3,0(a5)
    22ba:	fee69fe3          	bne	a3,a4,22b8 <s25fl128s_se+0x18>
    22be:	8082                	ret

Disassembly of section .text.s25fl128s_dor:

000022c0 <s25fl128s_dor>:
    22c0:	fff60793          	addi	a5,a2,-1
    22c4:	80002737          	lui	a4,0x80002
    22c8:	23b70713          	addi	a4,a4,571 # 8000223b <__GNU_EH_FRAME_HDR+0x7ffff9a3>
    22cc:	07c2                	slli	a5,a5,0x10
    22ce:	97ba                	add	a5,a5,a4
    22d0:	6729                	lui	a4,0xa
    22d2:	c348                	sw	a0,4(a4)
    22d4:	6729                	lui	a4,0xa
    22d6:	c31c                	sw	a5,0(a4)
    22d8:	67a9                	lui	a5,0xa
    22da:	02878793          	addi	a5,a5,40 # a028 <__GNU_EH_FRAME_HDR+0x7790>
    22de:	4705                	li	a4,1
    22e0:	4394                	lw	a3,0(a5)
    22e2:	fee69fe3          	bne	a3,a4,22e0 <s25fl128s_dor+0x20>
    22e6:	4791                	li	a5,4
    22e8:	66a9                	lui	a3,0xa
    22ea:	02f64633          	div	a2,a2,a5
    22ee:	06a1                	addi	a3,a3,8 # a008 <__GNU_EH_FRAME_HDR+0x7770>
    22f0:	4781                	li	a5,0
    22f2:	00c7c363          	blt	a5,a2,22f8 <s25fl128s_dor+0x38>
    22f6:	8082                	ret
    22f8:	00279713          	slli	a4,a5,0x2
    22fc:	00d70533          	add	a0,a4,a3
    2300:	4108                	lw	a0,0(a0)
    2302:	972e                	add	a4,a4,a1
    2304:	0785                	addi	a5,a5,1
    2306:	c308                	sw	a0,0(a4)
    2308:	b7ed                	j	22f2 <s25fl128s_dor+0x32>

Disassembly of section .text.s25fl128s_qor:

0000230a <s25fl128s_qor>:
    230a:	fff60793          	addi	a5,a2,-1
    230e:	80002737          	lui	a4,0x80002
    2312:	36b70713          	addi	a4,a4,875 # 8000236b <__GNU_EH_FRAME_HDR+0x7ffffad3>
    2316:	07c2                	slli	a5,a5,0x10
    2318:	97ba                	add	a5,a5,a4
    231a:	6729                	lui	a4,0xa
    231c:	c348                	sw	a0,4(a4)
    231e:	6729                	lui	a4,0xa
    2320:	c31c                	sw	a5,0(a4)
    2322:	67a9                	lui	a5,0xa
    2324:	02878793          	addi	a5,a5,40 # a028 <__GNU_EH_FRAME_HDR+0x7790>
    2328:	4705                	li	a4,1
    232a:	4394                	lw	a3,0(a5)
    232c:	fee69fe3          	bne	a3,a4,232a <s25fl128s_qor+0x20>
    2330:	4791                	li	a5,4
    2332:	66a9                	lui	a3,0xa
    2334:	02f64633          	div	a2,a2,a5
    2338:	06a1                	addi	a3,a3,8 # a008 <__GNU_EH_FRAME_HDR+0x7770>
    233a:	4781                	li	a5,0
    233c:	00c7c363          	blt	a5,a2,2342 <s25fl128s_qor+0x38>
    2340:	8082                	ret
    2342:	00279713          	slli	a4,a5,0x2
    2346:	00d70533          	add	a0,a4,a3
    234a:	4108                	lw	a0,0(a0)
    234c:	972e                	add	a4,a4,a1
    234e:	0785                	addi	a5,a5,1
    2350:	c308                	sw	a0,0(a4)
    2352:	b7ed                	j	233c <s25fl128s_qor+0x32>

Disassembly of section .text.s25fl128s_qpp:

00002354 <s25fl128s_qpp>:
    2354:	fff60793          	addi	a5,a2,-1
    2358:	80002737          	lui	a4,0x80002
    235c:	f3270713          	addi	a4,a4,-206 # 80001f32 <__GNU_EH_FRAME_HDR+0x7ffff69a>
    2360:	07c2                	slli	a5,a5,0x10
    2362:	97ba                	add	a5,a5,a4
    2364:	6729                	lui	a4,0xa
    2366:	c348                	sw	a0,4(a4)
    2368:	6729                	lui	a4,0xa
    236a:	c31c                	sw	a5,0(a4)
    236c:	66a9                	lui	a3,0xa
    236e:	4791                	li	a5,4
    2370:	02f64633          	div	a2,a2,a5
    2374:	06a1                	addi	a3,a3,8 # a008 <__GNU_EH_FRAME_HDR+0x7770>
    2376:	4781                	li	a5,0
    2378:	00c7ca63          	blt	a5,a2,238c <s25fl128s_qpp+0x38>
    237c:	67a9                	lui	a5,0xa
    237e:	02878793          	addi	a5,a5,40 # a028 <__GNU_EH_FRAME_HDR+0x7790>
    2382:	4705                	li	a4,1
    2384:	4394                	lw	a3,0(a5)
    2386:	fee69fe3          	bne	a3,a4,2384 <s25fl128s_qpp+0x30>
    238a:	8082                	ret
    238c:	00279713          	slli	a4,a5,0x2
    2390:	00d70533          	add	a0,a4,a3
    2394:	972e                	add	a4,a4,a1
    2396:	4318                	lw	a4,0(a4)
    2398:	0785                	addi	a5,a5,1
    239a:	c118                	sw	a4,0(a0)
    239c:	bff1                	j	2378 <s25fl128s_qpp+0x24>

Disassembly of section .text.qspi_custom_write:

0000239e <qspi_custom_write>:
    239e:	0ff67613          	zext.b	a2,a2
    23a2:	06a2                	slli	a3,a3,0x8
    23a4:	96b2                	add	a3,a3,a2
    23a6:	072e                	slli	a4,a4,0xb
    23a8:	40068693          	addi	a3,a3,1024
    23ac:	96ba                	add	a3,a3,a4
    23ae:	fff78713          	addi	a4,a5,-1
    23b2:	0742                	slli	a4,a4,0x10
    23b4:	9736                	add	a4,a4,a3
    23b6:	0866                	slli	a6,a6,0x19
    23b8:	983a                	add	a6,a6,a4
    23ba:	80000737          	lui	a4,0x80000
    23be:	983a                	add	a6,a6,a4
    23c0:	6729                	lui	a4,0xa
    23c2:	c348                	sw	a0,4(a4)
    23c4:	6629                	lui	a2,0xa
    23c6:	4711                	li	a4,4
    23c8:	02e7c7b3          	div	a5,a5,a4
    23cc:	0621                	addi	a2,a2,8 # a008 <__GNU_EH_FRAME_HDR+0x7770>
    23ce:	4701                	li	a4,0
    23d0:	00f74c63          	blt	a4,a5,23e8 <qspi_custom_write+0x4a>
    23d4:	67a9                	lui	a5,0xa
    23d6:	0107a023          	sw	a6,0(a5) # a000 <__GNU_EH_FRAME_HDR+0x7768>
    23da:	4705                	li	a4,1
    23dc:	02878793          	addi	a5,a5,40
    23e0:	4394                	lw	a3,0(a5)
    23e2:	fee69fe3          	bne	a3,a4,23e0 <qspi_custom_write+0x42>
    23e6:	8082                	ret
    23e8:	00271693          	slli	a3,a4,0x2
    23ec:	00c68533          	add	a0,a3,a2
    23f0:	96ae                	add	a3,a3,a1
    23f2:	4294                	lw	a3,0(a3)
    23f4:	0705                	addi	a4,a4,1 # a001 <__GNU_EH_FRAME_HDR+0x7769>
    23f6:	c114                	sw	a3,0(a0)
    23f8:	bfe1                	j	23d0 <qspi_custom_write+0x32>

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
    241e:	01072023          	sw	a6,0(a4) # a000 <__GNU_EH_FRAME_HDR+0x7768>
    2422:	4685                	li	a3,1
    2424:	02870713          	addi	a4,a4,40
    2428:	4310                	lw	a2,0(a4)
    242a:	fed61fe3          	bne	a2,a3,2428 <qspi_custom_read+0x2e>
    242e:	4711                	li	a4,4
    2430:	6629                	lui	a2,0xa
    2432:	02e7c7b3          	div	a5,a5,a4
    2436:	0621                	addi	a2,a2,8 # a008 <__GNU_EH_FRAME_HDR+0x7770>
    2438:	4701                	li	a4,0
    243a:	00f74363          	blt	a4,a5,2440 <qspi_custom_read+0x46>
    243e:	8082                	ret
    2440:	00271693          	slli	a3,a4,0x2
    2444:	00c68533          	add	a0,a3,a2
    2448:	4108                	lw	a0,0(a0)
    244a:	96ae                	add	a3,a3,a1
    244c:	0705                	addi	a4,a4,1
    244e:	c288                	sw	a0,0(a3)
    2450:	b7ed                	j	243a <qspi_custom_read+0x40>

Disassembly of section .text.timer_conf:

00002452 <timer_conf>:
    2452:	67b1                	lui	a5,0xc
    2454:	c388                	sw	a0,0(a5)
    2456:	c3cc                	sw	a1,4(a5)
    2458:	67b1                	lui	a5,0xc
    245a:	cb90                	sw	a2,16(a5)
    245c:	8082                	ret

Disassembly of section .text.timer_read_counter:

0000245e <timer_read_counter>:
    245e:	67b1                	lui	a5,0xc
    2460:	4bc8                	lw	a0,20(a5)
    2462:	8082                	ret

Disassembly of section .text.timer_read_event:

00002464 <timer_read_event>:
    2464:	67b1                	lui	a5,0xc
    2466:	4f88                	lw	a0,24(a5)
    2468:	8082                	ret

Disassembly of section .text.timer_clear_counter:

0000246a <timer_clear_counter>:
    246a:	67b1                	lui	a5,0xc
    246c:	4705                	li	a4,1
    246e:	c798                	sw	a4,8(a5)
    2470:	8082                	ret

Disassembly of section .text.timer_clear_event:

00002472 <timer_clear_event>:
    2472:	67b1                	lui	a5,0xc
    2474:	4705                	li	a4,1
    2476:	cfd8                	sw	a4,28(a5)
    2478:	8082                	ret

Disassembly of section .text.timer_enable:

0000247a <timer_enable>:
    247a:	67b1                	lui	a5,0xc
    247c:	4705                	li	a4,1
    247e:	c7d8                	sw	a4,12(a5)
    2480:	8082                	ret

Disassembly of section .text.timer_disable:

00002482 <timer_disable>:
    2482:	67b1                	lui	a5,0xc
    2484:	0007a623          	sw	zero,12(a5) # c00c <__GNU_EH_FRAME_HDR+0x9774>
    2488:	8082                	ret

Disassembly of section .text.gpio_write:

0000248a <gpio_write>:
    248a:	67c1                	lui	a5,0x10
    248c:	c3c8                	sw	a0,4(a5)
    248e:	8082                	ret

Disassembly of section .text.gpio_read:

00002490 <gpio_read>:
    2490:	67c1                	lui	a5,0x10
    2492:	4388                	lw	a0,0(a5)
    2494:	0542                	slli	a0,a0,0x10
    2496:	8541                	srai	a0,a0,0x10
    2498:	8082                	ret

Disassembly of section .text.instr_mem_write:

0000249a <instr_mem_write>:
    249a:	050a                	slli	a0,a0,0x2
    249c:	6791                	lui	a5,0x4
    249e:	97aa                	add	a5,a5,a0
    24a0:	c38c                	sw	a1,0(a5)
    24a2:	8082                	ret

Disassembly of section .text.knightrider_i2c:

000024a4 <knightrider_i2c>:
    24a4:	1141                	addi	sp,sp,-16
    24a6:	c422                	sw	s0,8(sp)
    24a8:	c226                	sw	s1,4(sp)
    24aa:	c606                	sw	ra,12(sp)
    24ac:	67a1                	lui	a5,0x8
    24ae:	07b00713          	li	a4,123
    24b2:	c3d8                	sw	a4,4(a5)
    24b4:	447d                	li	s0,31
    24b6:	4485                	li	s1,1
    24b8:	0486                	slli	s1,s1,0x1
    24ba:	4591                	li	a1,4
    24bc:	8526                	mv	a0,s1
    24be:	147d                	addi	s0,s0,-1
    24c0:	3661                	jal	2048 <i2c_write>
    24c2:	f87d                	bnez	s0,24b8 <knightrider_i2c+0x14>
    24c4:	80000437          	lui	s0,0x80000
    24c8:	8405                	srai	s0,s0,0x1
    24ca:	4591                	li	a1,4
    24cc:	8522                	mv	a0,s0
    24ce:	3ead                	jal	2048 <i2c_write>
    24d0:	bfe5                	j	24c8 <knightrider_i2c+0x24>

Disassembly of section .text.calculator_gpio:

000024d2 <calculator_gpio>:
    24d2:	8082                	ret
