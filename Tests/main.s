
a.out:     file format elf32-littleriscv


Disassembly of section .text:

00002000 <main>:
    2000:	1141                	addi	sp,sp,-16
    2002:	4515                	li	a0,5
    2004:	4591                	li	a1,4
    2006:	c606                	sw	ra,12(sp)
    2008:	20a1                	jal	2050 <i2c_write>
    200a:	40b2                	lw	ra,12(sp)
    200c:	4501                	li	a0,0
    200e:	0141                	addi	sp,sp,16
    2010:	8082                	ret

Disassembly of section .text.uart_conf:

00002012 <uart_conf>:
    2012:	6799                	lui	a5,0x6
    2014:	0007a783          	lw	a5,0(a5) # 6000 <_addr_uart>
    2018:	c388                	sw	a0,0(a5)
    201a:	c3cc                	sw	a1,4(a5)
    201c:	8082                	ret

Disassembly of section .text.uart_read:

0000201e <uart_read>:
    201e:	6799                	lui	a5,0x6
    2020:	0007a783          	lw	a5,0(a5) # 6000 <_addr_uart>
    2024:	4709                	li	a4,2
    2026:	4b94                	lw	a3,16(a5)
    2028:	00e68363          	beq	a3,a4,202e <uart_read+0x10>
    202c:	a001                	j	202c <uart_read+0xe>
    202e:	0087c503          	lbu	a0,8(a5)
    2032:	0007a823          	sw	zero,16(a5)
    2036:	8082                	ret

Disassembly of section .text.uart_write:

00002038 <uart_write>:
    2038:	6799                	lui	a5,0x6
    203a:	0007a783          	lw	a5,0(a5) # 6000 <_addr_uart>
    203e:	4705                	li	a4,1
    2040:	c7c8                	sw	a0,12(a5)
    2042:	cb98                	sw	a4,16(a5)
    2044:	a001                	j	2044 <uart_write+0xc>

Disassembly of section .text.i2c_conf:

00002046 <i2c_conf>:
    2046:	67a1                	lui	a5,0x8
    2048:	0007a783          	lw	a5,0(a5) # 8000 <_addr_i2c>
    204c:	c3c8                	sw	a0,4(a5)
    204e:	8082                	ret

Disassembly of section .text.i2c_write:

00002050 <i2c_write>:
    2050:	67a1                	lui	a5,0x8
    2052:	0007a783          	lw	a5,0(a5) # 8000 <_addr_i2c>
    2056:	4705                	li	a4,1
    2058:	cb98                	sw	a4,16(a5)
    205a:	c38c                	sw	a1,0(a5)
    205c:	c7c8                	sw	a0,12(a5)
    205e:	470d                	li	a4,3
    2060:	4b94                	lw	a3,16(a5)
    2062:	fee69fe3          	bne	a3,a4,2060 <i2c_write+0x10>
    2066:	0007a823          	sw	zero,16(a5)
    206a:	8082                	ret

Disassembly of section .text.i2c_read:

0000206c <i2c_read>:
    206c:	67a1                	lui	a5,0x8
    206e:	0007a783          	lw	a5,0(a5) # 8000 <_addr_i2c>
    2072:	4711                	li	a4,4
    2074:	c388                	sw	a0,0(a5)
    2076:	cb98                	sw	a4,16(a5)
    2078:	a001                	j	2078 <i2c_read+0xc>

Disassembly of section .text.s25fl128s_wren:

0000207a <s25fl128s_wren>:
    207a:	67a9                	lui	a5,0xa
    207c:	0007a703          	lw	a4,0(a5) # a000 <_addr_qspi>
    2080:	800007b7          	lui	a5,0x80000
    2084:	0799                	addi	a5,a5,6 # 80000006 <_addr_gpio+0x7fff0006>
    2086:	c31c                	sw	a5,0(a4)
    2088:	5718                	lw	a4,40(a4)
    208a:	4785                	li	a5,1
    208c:	00f70363          	beq	a4,a5,2092 <s25fl128s_wren+0x18>
    2090:	a001                	j	2090 <s25fl128s_wren+0x16>
    2092:	8082                	ret

Disassembly of section .text.s25fl128s_wrdi:

00002094 <s25fl128s_wrdi>:
    2094:	67a9                	lui	a5,0xa
    2096:	0007a703          	lw	a4,0(a5) # a000 <_addr_qspi>
    209a:	800007b7          	lui	a5,0x80000
    209e:	0791                	addi	a5,a5,4 # 80000004 <_addr_gpio+0x7fff0004>
    20a0:	c31c                	sw	a5,0(a4)
    20a2:	5718                	lw	a4,40(a4)
    20a4:	4785                	li	a5,1
    20a6:	00f70363          	beq	a4,a5,20ac <s25fl128s_wrdi+0x18>
    20aa:	a001                	j	20aa <s25fl128s_wrdi+0x16>
    20ac:	8082                	ret

Disassembly of section .text.s25fl128s_clsr:

000020ae <s25fl128s_clsr>:
    20ae:	67a9                	lui	a5,0xa
    20b0:	0007a703          	lw	a4,0(a5) # a000 <_addr_qspi>
    20b4:	800007b7          	lui	a5,0x80000
    20b8:	03078793          	addi	a5,a5,48 # 80000030 <_addr_gpio+0x7fff0030>
    20bc:	c31c                	sw	a5,0(a4)
    20be:	5718                	lw	a4,40(a4)
    20c0:	4785                	li	a5,1
    20c2:	00f70363          	beq	a4,a5,20c8 <s25fl128s_clsr+0x1a>
    20c6:	a001                	j	20c6 <s25fl128s_clsr+0x18>
    20c8:	8082                	ret

Disassembly of section .text.s25fl128s_reset:

000020ca <s25fl128s_reset>:
    20ca:	67a9                	lui	a5,0xa
    20cc:	0007a703          	lw	a4,0(a5) # a000 <_addr_qspi>
    20d0:	800007b7          	lui	a5,0x80000
    20d4:	0f078793          	addi	a5,a5,240 # 800000f0 <_addr_gpio+0x7fff00f0>
    20d8:	c31c                	sw	a5,0(a4)
    20da:	5718                	lw	a4,40(a4)
    20dc:	4785                	li	a5,1
    20de:	00f70363          	beq	a4,a5,20e4 <s25fl128s_reset+0x1a>
    20e2:	a001                	j	20e2 <s25fl128s_reset+0x18>
    20e4:	8082                	ret

Disassembly of section .text.s25fl128s_rdid:

000020e6 <s25fl128s_rdid>:
    20e6:	67a9                	lui	a5,0xa
    20e8:	0007a783          	lw	a5,0(a5) # a000 <_addr_qspi>
    20ec:	fff58713          	addi	a4,a1,-1
    20f0:	800006b7          	lui	a3,0x80000
    20f4:	19f68693          	addi	a3,a3,415 # 8000019f <_addr_gpio+0x7fff019f>
    20f8:	0742                	slli	a4,a4,0x10
    20fa:	9736                	add	a4,a4,a3
    20fc:	5794                	lw	a3,40(a5)
    20fe:	c398                	sw	a4,0(a5)
    2100:	4705                	li	a4,1
    2102:	00e68363          	beq	a3,a4,2108 <s25fl128s_rdid+0x22>
    2106:	a001                	j	2106 <s25fl128s_rdid+0x20>
    2108:	4711                	li	a4,4
    210a:	02e5c5b3          	div	a1,a1,a4
    210e:	07a1                	addi	a5,a5,8
    2110:	4701                	li	a4,0
    2112:	00b74363          	blt	a4,a1,2118 <s25fl128s_rdid+0x32>
    2116:	8082                	ret
    2118:	4390                	lw	a2,0(a5)
    211a:	00271693          	slli	a3,a4,0x2
    211e:	96aa                	add	a3,a3,a0
    2120:	c290                	sw	a2,0(a3)
    2122:	0705                	addi	a4,a4,1
    2124:	0791                	addi	a5,a5,4
    2126:	b7f5                	j	2112 <s25fl128s_rdid+0x2c>

Disassembly of section .text.s25fl128s_rdsr1:

00002128 <s25fl128s_rdsr1>:
    2128:	67a9                	lui	a5,0xa
    212a:	0007a783          	lw	a5,0(a5) # a000 <_addr_qspi>
    212e:	80000737          	lui	a4,0x80000
    2132:	10570713          	addi	a4,a4,261 # 80000105 <_addr_gpio+0x7fff0105>
    2136:	5794                	lw	a3,40(a5)
    2138:	c398                	sw	a4,0(a5)
    213a:	4705                	li	a4,1
    213c:	00e68363          	beq	a3,a4,2142 <s25fl128s_rdsr1+0x1a>
    2140:	a001                	j	2140 <s25fl128s_rdsr1+0x18>
    2142:	0087c503          	lbu	a0,8(a5)
    2146:	8082                	ret

Disassembly of section .text.s25fl128s_rdsr2:

00002148 <s25fl128s_rdsr2>:
    2148:	67a9                	lui	a5,0xa
    214a:	0007a783          	lw	a5,0(a5) # a000 <_addr_qspi>
    214e:	80000737          	lui	a4,0x80000
    2152:	10770713          	addi	a4,a4,263 # 80000107 <_addr_gpio+0x7fff0107>
    2156:	5794                	lw	a3,40(a5)
    2158:	c398                	sw	a4,0(a5)
    215a:	4705                	li	a4,1
    215c:	00e68363          	beq	a3,a4,2162 <s25fl128s_rdsr2+0x1a>
    2160:	a001                	j	2160 <s25fl128s_rdsr2+0x18>
    2162:	0087c503          	lbu	a0,8(a5)
    2166:	8082                	ret

Disassembly of section .text.s25fl128s_rdcr:

00002168 <s25fl128s_rdcr>:
    2168:	67a9                	lui	a5,0xa
    216a:	0007a783          	lw	a5,0(a5) # a000 <_addr_qspi>
    216e:	80000737          	lui	a4,0x80000
    2172:	13570713          	addi	a4,a4,309 # 80000135 <_addr_gpio+0x7fff0135>
    2176:	5794                	lw	a3,40(a5)
    2178:	c398                	sw	a4,0(a5)
    217a:	4705                	li	a4,1
    217c:	00e68363          	beq	a3,a4,2182 <s25fl128s_rdcr+0x1a>
    2180:	a001                	j	2180 <s25fl128s_rdcr+0x18>
    2182:	0087c503          	lbu	a0,8(a5)
    2186:	8082                	ret

Disassembly of section .text.s25fl128s_read_id:

00002188 <s25fl128s_read_id>:
    2188:	67a9                	lui	a5,0xa
    218a:	0007a783          	lw	a5,0(a5) # a000 <_addr_qspi>
    218e:	80012737          	lui	a4,0x80012
    2192:	99070713          	addi	a4,a4,-1648 # 80011990 <_addr_gpio+0x80001990>
    2196:	5794                	lw	a3,40(a5)
    2198:	c398                	sw	a4,0(a5)
    219a:	c3c8                	sw	a0,4(a5)
    219c:	4705                	li	a4,1
    219e:	00e68363          	beq	a3,a4,21a4 <s25fl128s_read_id+0x1c>
    21a2:	a001                	j	21a2 <s25fl128s_read_id+0x1a>
    21a4:	00879503          	lh	a0,8(a5)
    21a8:	8082                	ret

Disassembly of section .text.s25fl128s_res:

000021aa <s25fl128s_res>:
    21aa:	67a9                	lui	a5,0xa
    21ac:	0007a783          	lw	a5,0(a5) # a000 <_addr_qspi>
    21b0:	80002737          	lui	a4,0x80002
    21b4:	9ab70713          	addi	a4,a4,-1621 # 800019ab <_addr_gpio+0x7fff19ab>
    21b8:	5794                	lw	a3,40(a5)
    21ba:	c398                	sw	a4,0(a5)
    21bc:	4705                	li	a4,1
    21be:	00e68363          	beq	a3,a4,21c4 <s25fl128s_res+0x1a>
    21c2:	a001                	j	21c2 <s25fl128s_res+0x18>
    21c4:	0087c503          	lbu	a0,8(a5)
    21c8:	8082                	ret

Disassembly of section .text.s25fl128s_wrr:

000021ca <s25fl128s_wrr>:
    21ca:	67a9                	lui	a5,0xa
    21cc:	0007a783          	lw	a5,0(a5) # a000 <_addr_qspi>
    21d0:	80010737          	lui	a4,0x80010
    21d4:	50170713          	addi	a4,a4,1281 # 80010501 <_addr_gpio+0x80000501>
    21d8:	c398                	sw	a4,0(a5)
    21da:	5798                	lw	a4,40(a5)
    21dc:	c788                	sw	a0,8(a5)
    21de:	4785                	li	a5,1
    21e0:	00f70363          	beq	a4,a5,21e6 <s25fl128s_wrr+0x1c>
    21e4:	a001                	j	21e4 <s25fl128s_wrr+0x1a>
    21e6:	8082                	ret

Disassembly of section .text.s25fl128s_read:

000021e8 <s25fl128s_read>:
    21e8:	67a9                	lui	a5,0xa
    21ea:	0007a783          	lw	a5,0(a5) # a000 <_addr_qspi>
    21ee:	fff60713          	addi	a4,a2,-1
    21f2:	800026b7          	lui	a3,0x80002
    21f6:	90368693          	addi	a3,a3,-1789 # 80001903 <_addr_gpio+0x7fff1903>
    21fa:	0742                	slli	a4,a4,0x10
    21fc:	9736                	add	a4,a4,a3
    21fe:	5794                	lw	a3,40(a5)
    2200:	c398                	sw	a4,0(a5)
    2202:	c3c8                	sw	a0,4(a5)
    2204:	4705                	li	a4,1
    2206:	00e68363          	beq	a3,a4,220c <s25fl128s_read+0x24>
    220a:	a001                	j	220a <s25fl128s_read+0x22>
    220c:	4711                	li	a4,4
    220e:	02e64633          	div	a2,a2,a4
    2212:	07a1                	addi	a5,a5,8
    2214:	4701                	li	a4,0
    2216:	00c74363          	blt	a4,a2,221c <s25fl128s_read+0x34>
    221a:	8082                	ret
    221c:	4388                	lw	a0,0(a5)
    221e:	00271693          	slli	a3,a4,0x2
    2222:	96ae                	add	a3,a3,a1
    2224:	c288                	sw	a0,0(a3)
    2226:	0705                	addi	a4,a4,1
    2228:	0791                	addi	a5,a5,4
    222a:	b7f5                	j	2216 <s25fl128s_read+0x2e>

Disassembly of section .text.s25fl128s_pp:

0000222c <s25fl128s_pp>:
    222c:	fff60793          	addi	a5,a2,-1
    2230:	80002737          	lui	a4,0x80002
    2234:	d0270713          	addi	a4,a4,-766 # 80001d02 <_addr_gpio+0x7fff1d02>
    2238:	07c2                	slli	a5,a5,0x10
    223a:	97ba                	add	a5,a5,a4
    223c:	6729                	lui	a4,0xa
    223e:	00072703          	lw	a4,0(a4) # a000 <_addr_qspi>
    2242:	4691                	li	a3,4
    2244:	02d64633          	div	a2,a2,a3
    2248:	c348                	sw	a0,4(a4)
    224a:	4681                	li	a3,0
    224c:	00870513          	addi	a0,a4,8
    2250:	00c6c863          	blt	a3,a2,2260 <s25fl128s_pp+0x34>
    2254:	c31c                	sw	a5,0(a4)
    2256:	5718                	lw	a4,40(a4)
    2258:	4785                	li	a5,1
    225a:	00f70d63          	beq	a4,a5,2274 <s25fl128s_pp+0x48>
    225e:	a001                	j	225e <s25fl128s_pp+0x32>
    2260:	00269813          	slli	a6,a3,0x2
    2264:	982e                	add	a6,a6,a1
    2266:	00082803          	lw	a6,0(a6)
    226a:	0685                	addi	a3,a3,1
    226c:	01052023          	sw	a6,0(a0)
    2270:	0511                	addi	a0,a0,4
    2272:	bff9                	j	2250 <s25fl128s_pp+0x24>
    2274:	8082                	ret

Disassembly of section .text.s25fl128s_se:

00002276 <s25fl128s_se>:
    2276:	67a9                	lui	a5,0xa
    2278:	0007a783          	lw	a5,0(a5) # a000 <_addr_qspi>
    227c:	80020737          	lui	a4,0x80020
    2280:	5d870713          	addi	a4,a4,1496 # 800205d8 <_addr_gpio+0x800105d8>
    2284:	c398                	sw	a4,0(a5)
    2286:	5798                	lw	a4,40(a5)
    2288:	c788                	sw	a0,8(a5)
    228a:	4785                	li	a5,1
    228c:	00f70363          	beq	a4,a5,2292 <s25fl128s_se+0x1c>
    2290:	a001                	j	2290 <s25fl128s_se+0x1a>
    2292:	8082                	ret

Disassembly of section .text.s25fl128s_dor:

00002294 <s25fl128s_dor>:
    2294:	67a9                	lui	a5,0xa
    2296:	0007a783          	lw	a5,0(a5) # a000 <_addr_qspi>
    229a:	fff60713          	addi	a4,a2,-1
    229e:	800026b7          	lui	a3,0x80002
    22a2:	23b68693          	addi	a3,a3,571 # 8000223b <_addr_gpio+0x7fff223b>
    22a6:	0742                	slli	a4,a4,0x10
    22a8:	9736                	add	a4,a4,a3
    22aa:	5794                	lw	a3,40(a5)
    22ac:	c398                	sw	a4,0(a5)
    22ae:	c3c8                	sw	a0,4(a5)
    22b0:	4705                	li	a4,1
    22b2:	00e68363          	beq	a3,a4,22b8 <s25fl128s_dor+0x24>
    22b6:	a001                	j	22b6 <s25fl128s_dor+0x22>
    22b8:	4711                	li	a4,4
    22ba:	02e64633          	div	a2,a2,a4
    22be:	07a1                	addi	a5,a5,8
    22c0:	4701                	li	a4,0
    22c2:	00c74363          	blt	a4,a2,22c8 <s25fl128s_dor+0x34>
    22c6:	8082                	ret
    22c8:	4388                	lw	a0,0(a5)
    22ca:	00271693          	slli	a3,a4,0x2
    22ce:	96ae                	add	a3,a3,a1
    22d0:	c288                	sw	a0,0(a3)
    22d2:	0705                	addi	a4,a4,1
    22d4:	0791                	addi	a5,a5,4
    22d6:	b7f5                	j	22c2 <s25fl128s_dor+0x2e>

Disassembly of section .text.s25fl128s_qor:

000022d8 <s25fl128s_qor>:
    22d8:	67a9                	lui	a5,0xa
    22da:	0007a783          	lw	a5,0(a5) # a000 <_addr_qspi>
    22de:	fff60713          	addi	a4,a2,-1
    22e2:	800026b7          	lui	a3,0x80002
    22e6:	36b68693          	addi	a3,a3,875 # 8000236b <_addr_gpio+0x7fff236b>
    22ea:	0742                	slli	a4,a4,0x10
    22ec:	9736                	add	a4,a4,a3
    22ee:	5794                	lw	a3,40(a5)
    22f0:	c398                	sw	a4,0(a5)
    22f2:	c3c8                	sw	a0,4(a5)
    22f4:	4705                	li	a4,1
    22f6:	00e68363          	beq	a3,a4,22fc <s25fl128s_qor+0x24>
    22fa:	a001                	j	22fa <s25fl128s_qor+0x22>
    22fc:	4711                	li	a4,4
    22fe:	02e64633          	div	a2,a2,a4
    2302:	07a1                	addi	a5,a5,8
    2304:	4701                	li	a4,0
    2306:	00c74363          	blt	a4,a2,230c <s25fl128s_qor+0x34>
    230a:	8082                	ret
    230c:	4388                	lw	a0,0(a5)
    230e:	00271693          	slli	a3,a4,0x2
    2312:	96ae                	add	a3,a3,a1
    2314:	c288                	sw	a0,0(a3)
    2316:	0705                	addi	a4,a4,1
    2318:	0791                	addi	a5,a5,4
    231a:	b7f5                	j	2306 <s25fl128s_qor+0x2e>

Disassembly of section .text.s25fl128s_qpp:

0000231c <s25fl128s_qpp>:
    231c:	67a9                	lui	a5,0xa
    231e:	0007a703          	lw	a4,0(a5) # a000 <_addr_qspi>
    2322:	800026b7          	lui	a3,0x80002
    2326:	fff60793          	addi	a5,a2,-1
    232a:	f3268693          	addi	a3,a3,-206 # 80001f32 <_addr_gpio+0x7fff1f32>
    232e:	07c2                	slli	a5,a5,0x10
    2330:	97b6                	add	a5,a5,a3
    2332:	c31c                	sw	a5,0(a4)
    2334:	4791                	li	a5,4
    2336:	02f64633          	div	a2,a2,a5
    233a:	c348                	sw	a0,4(a4)
    233c:	00870693          	addi	a3,a4,8
    2340:	4781                	li	a5,0
    2342:	00c7c763          	blt	a5,a2,2350 <s25fl128s_qpp+0x34>
    2346:	5718                	lw	a4,40(a4)
    2348:	4785                	li	a5,1
    234a:	00f70b63          	beq	a4,a5,2360 <s25fl128s_qpp+0x44>
    234e:	a001                	j	234e <s25fl128s_qpp+0x32>
    2350:	00279513          	slli	a0,a5,0x2
    2354:	952e                	add	a0,a0,a1
    2356:	4108                	lw	a0,0(a0)
    2358:	0785                	addi	a5,a5,1
    235a:	c288                	sw	a0,0(a3)
    235c:	0691                	addi	a3,a3,4
    235e:	b7d5                	j	2342 <s25fl128s_qpp+0x26>
    2360:	8082                	ret

Disassembly of section .text.qspi_custom_write:

00002362 <qspi_custom_write>:
    2362:	0ff67613          	zext.b	a2,a2
    2366:	06a2                	slli	a3,a3,0x8
    2368:	96b2                	add	a3,a3,a2
    236a:	072e                	slli	a4,a4,0xb
    236c:	40068693          	addi	a3,a3,1024
    2370:	96ba                	add	a3,a3,a4
    2372:	fff78713          	addi	a4,a5,-1
    2376:	0742                	slli	a4,a4,0x10
    2378:	9736                	add	a4,a4,a3
    237a:	0866                	slli	a6,a6,0x19
    237c:	983a                	add	a6,a6,a4
    237e:	80000737          	lui	a4,0x80000
    2382:	983a                	add	a6,a6,a4
    2384:	6729                	lui	a4,0xa
    2386:	00072703          	lw	a4,0(a4) # a000 <_addr_qspi>
    238a:	4691                	li	a3,4
    238c:	02d7c7b3          	div	a5,a5,a3
    2390:	c348                	sw	a0,4(a4)
    2392:	00870613          	addi	a2,a4,8
    2396:	4681                	li	a3,0
    2398:	00f6c963          	blt	a3,a5,23aa <qspi_custom_write+0x48>
    239c:	01072023          	sw	a6,0(a4)
    23a0:	5718                	lw	a4,40(a4)
    23a2:	4785                	li	a5,1
    23a4:	00f70b63          	beq	a4,a5,23ba <qspi_custom_write+0x58>
    23a8:	a001                	j	23a8 <qspi_custom_write+0x46>
    23aa:	00269513          	slli	a0,a3,0x2
    23ae:	952e                	add	a0,a0,a1
    23b0:	4108                	lw	a0,0(a0)
    23b2:	0685                	addi	a3,a3,1
    23b4:	c208                	sw	a0,0(a2)
    23b6:	0611                	addi	a2,a2,4
    23b8:	b7c5                	j	2398 <qspi_custom_write+0x36>
    23ba:	8082                	ret

Disassembly of section .text.qspi_custom_read:

000023bc <qspi_custom_read>:
    23bc:	0ff67613          	zext.b	a2,a2
    23c0:	06a2                	slli	a3,a3,0x8
    23c2:	96b2                	add	a3,a3,a2
    23c4:	072e                	slli	a4,a4,0xb
    23c6:	96ba                	add	a3,a3,a4
    23c8:	fff78713          	addi	a4,a5,-1
    23cc:	0742                	slli	a4,a4,0x10
    23ce:	9736                	add	a4,a4,a3
    23d0:	0866                	slli	a6,a6,0x19
    23d2:	983a                	add	a6,a6,a4
    23d4:	6729                	lui	a4,0xa
    23d6:	00072703          	lw	a4,0(a4) # a000 <_addr_qspi>
    23da:	800006b7          	lui	a3,0x80000
    23de:	9836                	add	a6,a6,a3
    23e0:	5710                	lw	a2,40(a4)
    23e2:	c348                	sw	a0,4(a4)
    23e4:	01072023          	sw	a6,0(a4)
    23e8:	4685                	li	a3,1
    23ea:	00d60363          	beq	a2,a3,23f0 <qspi_custom_read+0x34>
    23ee:	a001                	j	23ee <qspi_custom_read+0x32>
    23f0:	4691                	li	a3,4
    23f2:	02d7c7b3          	div	a5,a5,a3
    23f6:	0721                	addi	a4,a4,8
    23f8:	4681                	li	a3,0
    23fa:	00f6c363          	blt	a3,a5,2400 <qspi_custom_read+0x44>
    23fe:	8082                	ret
    2400:	4308                	lw	a0,0(a4)
    2402:	00269613          	slli	a2,a3,0x2
    2406:	962e                	add	a2,a2,a1
    2408:	c208                	sw	a0,0(a2)
    240a:	0685                	addi	a3,a3,1 # 80000001 <_addr_gpio+0x7fff0001>
    240c:	0711                	addi	a4,a4,4
    240e:	b7f5                	j	23fa <qspi_custom_read+0x3e>

Disassembly of section .text.timer_conf:

00002410 <timer_conf>:
    2410:	67b1                	lui	a5,0xc
    2412:	0007a783          	lw	a5,0(a5) # c000 <_addr_timer>
    2416:	c388                	sw	a0,0(a5)
    2418:	c3cc                	sw	a1,4(a5)
    241a:	cb90                	sw	a2,16(a5)
    241c:	8082                	ret

Disassembly of section .text.timer_read_counter:

0000241e <timer_read_counter>:
    241e:	67b1                	lui	a5,0xc
    2420:	0007a783          	lw	a5,0(a5) # c000 <_addr_timer>
    2424:	4bc8                	lw	a0,20(a5)
    2426:	8082                	ret

Disassembly of section .text.timer_read_event:

00002428 <timer_read_event>:
    2428:	67b1                	lui	a5,0xc
    242a:	0007a783          	lw	a5,0(a5) # c000 <_addr_timer>
    242e:	4f88                	lw	a0,24(a5)
    2430:	8082                	ret

Disassembly of section .text.timer_clear_counter:

00002432 <timer_clear_counter>:
    2432:	67b1                	lui	a5,0xc
    2434:	0007a783          	lw	a5,0(a5) # c000 <_addr_timer>
    2438:	4705                	li	a4,1
    243a:	c798                	sw	a4,8(a5)
    243c:	8082                	ret

Disassembly of section .text.timer_clear_event:

0000243e <timer_clear_event>:
    243e:	67b1                	lui	a5,0xc
    2440:	0007a783          	lw	a5,0(a5) # c000 <_addr_timer>
    2444:	4705                	li	a4,1
    2446:	cfd8                	sw	a4,28(a5)
    2448:	8082                	ret

Disassembly of section .text.timer_enable:

0000244a <timer_enable>:
    244a:	67b1                	lui	a5,0xc
    244c:	0007a783          	lw	a5,0(a5) # c000 <_addr_timer>
    2450:	4705                	li	a4,1
    2452:	c7d8                	sw	a4,12(a5)
    2454:	8082                	ret

Disassembly of section .text.timer_disable:

00002456 <timer_disable>:
    2456:	67b1                	lui	a5,0xc
    2458:	0007a783          	lw	a5,0(a5) # c000 <_addr_timer>
    245c:	0007a623          	sw	zero,12(a5)
    2460:	8082                	ret

Disassembly of section .text.gpio_write:

00002462 <gpio_write>:
    2462:	67c1                	lui	a5,0x10
    2464:	0007a783          	lw	a5,0(a5) # 10000 <_addr_gpio>
    2468:	c3c8                	sw	a0,4(a5)
    246a:	8082                	ret

Disassembly of section .text.gpio_read:

0000246c <gpio_read>:
    246c:	67c1                	lui	a5,0x10
    246e:	0007a783          	lw	a5,0(a5) # 10000 <_addr_gpio>
    2472:	00079503          	lh	a0,0(a5)
    2476:	8082                	ret

Disassembly of section .text.instr_mem_write:

00002478 <instr_mem_write>:
    2478:	6791                	lui	a5,0x4
    247a:	0007a783          	lw	a5,0(a5) # 4000 <_addr_instr_mem>
    247e:	050a                	slli	a0,a0,0x2
    2480:	97aa                	add	a5,a5,a0
    2482:	c38c                	sw	a1,0(a5)
    2484:	8082                	ret

Disassembly of section .text.knightrider_i2c:

00002486 <knightrider_i2c>:
    2486:	1141                	addi	sp,sp,-16
    2488:	c422                	sw	s0,8(sp)
    248a:	c226                	sw	s1,4(sp)
    248c:	c606                	sw	ra,12(sp)
    248e:	447d                	li	s0,31
    2490:	4485                	li	s1,1
    2492:	0486                	slli	s1,s1,0x1
    2494:	4591                	li	a1,4
    2496:	8526                	mv	a0,s1
    2498:	147d                	addi	s0,s0,-1
    249a:	3e5d                	jal	2050 <i2c_write>
    249c:	f87d                	bnez	s0,2492 <knightrider_i2c+0xc>
    249e:	80000437          	lui	s0,0x80000
    24a2:	8405                	srai	s0,s0,0x1
    24a4:	4591                	li	a1,4
    24a6:	8522                	mv	a0,s0
    24a8:	3665                	jal	2050 <i2c_write>
    24aa:	bfe5                	j	24a2 <knightrider_i2c+0x1c>

Disassembly of section .text.calculator_gpio:

000024ac <calculator_gpio>:
    24ac:	8082                	ret
