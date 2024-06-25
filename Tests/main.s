
a.out:     file format elf32-littleriscv


Disassembly of section .text:

00002000 <main>:
    2000:	1141                	addi	sp,sp,-16
    2002:	c606                	sw	ra,12(sp)
    2004:	299d                	jal	247a <knightrider_i2c>

Disassembly of section .text.uart_conf:

00002006 <uart_conf>:
    2006:	6799                	lui	a5,0x6
    2008:	0007a783          	lw	a5,0(a5) # 6000 <_addr_uart>
    200c:	c388                	sw	a0,0(a5)
    200e:	c3cc                	sw	a1,4(a5)
    2010:	8082                	ret

Disassembly of section .text.uart_read:

00002012 <uart_read>:
    2012:	6799                	lui	a5,0x6
    2014:	0007a783          	lw	a5,0(a5) # 6000 <_addr_uart>
    2018:	4709                	li	a4,2
    201a:	4b94                	lw	a3,16(a5)
    201c:	00e68363          	beq	a3,a4,2022 <uart_read+0x10>
    2020:	a001                	j	2020 <uart_read+0xe>
    2022:	0087c503          	lbu	a0,8(a5)
    2026:	0007a823          	sw	zero,16(a5)
    202a:	8082                	ret

Disassembly of section .text.uart_write:

0000202c <uart_write>:
    202c:	6799                	lui	a5,0x6
    202e:	0007a783          	lw	a5,0(a5) # 6000 <_addr_uart>
    2032:	4705                	li	a4,1
    2034:	c7c8                	sw	a0,12(a5)
    2036:	cb98                	sw	a4,16(a5)
    2038:	a001                	j	2038 <uart_write+0xc>

Disassembly of section .text.i2c_conf:

0000203a <i2c_conf>:
    203a:	67a1                	lui	a5,0x8
    203c:	0007a783          	lw	a5,0(a5) # 8000 <_addr_i2c>
    2040:	c3c8                	sw	a0,4(a5)
    2042:	8082                	ret

Disassembly of section .text.i2c_write:

00002044 <i2c_write>:
    2044:	67a1                	lui	a5,0x8
    2046:	0007a783          	lw	a5,0(a5) # 8000 <_addr_i2c>
    204a:	4705                	li	a4,1
    204c:	cb98                	sw	a4,16(a5)
    204e:	c38c                	sw	a1,0(a5)
    2050:	c7c8                	sw	a0,12(a5)
    2052:	470d                	li	a4,3
    2054:	4b94                	lw	a3,16(a5)
    2056:	fee69fe3          	bne	a3,a4,2054 <i2c_write+0x10>
    205a:	0007a823          	sw	zero,16(a5)
    205e:	8082                	ret

Disassembly of section .text.i2c_read:

00002060 <i2c_read>:
    2060:	67a1                	lui	a5,0x8
    2062:	0007a783          	lw	a5,0(a5) # 8000 <_addr_i2c>
    2066:	4711                	li	a4,4
    2068:	c388                	sw	a0,0(a5)
    206a:	cb98                	sw	a4,16(a5)
    206c:	a001                	j	206c <i2c_read+0xc>

Disassembly of section .text.s25fl128s_wren:

0000206e <s25fl128s_wren>:
    206e:	67a9                	lui	a5,0xa
    2070:	0007a703          	lw	a4,0(a5) # a000 <_addr_qspi>
    2074:	800007b7          	lui	a5,0x80000
    2078:	0799                	addi	a5,a5,6 # 80000006 <_addr_gpio+0x7fff0006>
    207a:	c31c                	sw	a5,0(a4)
    207c:	5718                	lw	a4,40(a4)
    207e:	4785                	li	a5,1
    2080:	00f70363          	beq	a4,a5,2086 <s25fl128s_wren+0x18>
    2084:	a001                	j	2084 <s25fl128s_wren+0x16>
    2086:	8082                	ret

Disassembly of section .text.s25fl128s_wrdi:

00002088 <s25fl128s_wrdi>:
    2088:	67a9                	lui	a5,0xa
    208a:	0007a703          	lw	a4,0(a5) # a000 <_addr_qspi>
    208e:	800007b7          	lui	a5,0x80000
    2092:	0791                	addi	a5,a5,4 # 80000004 <_addr_gpio+0x7fff0004>
    2094:	c31c                	sw	a5,0(a4)
    2096:	5718                	lw	a4,40(a4)
    2098:	4785                	li	a5,1
    209a:	00f70363          	beq	a4,a5,20a0 <s25fl128s_wrdi+0x18>
    209e:	a001                	j	209e <s25fl128s_wrdi+0x16>
    20a0:	8082                	ret

Disassembly of section .text.s25fl128s_clsr:

000020a2 <s25fl128s_clsr>:
    20a2:	67a9                	lui	a5,0xa
    20a4:	0007a703          	lw	a4,0(a5) # a000 <_addr_qspi>
    20a8:	800007b7          	lui	a5,0x80000
    20ac:	03078793          	addi	a5,a5,48 # 80000030 <_addr_gpio+0x7fff0030>
    20b0:	c31c                	sw	a5,0(a4)
    20b2:	5718                	lw	a4,40(a4)
    20b4:	4785                	li	a5,1
    20b6:	00f70363          	beq	a4,a5,20bc <s25fl128s_clsr+0x1a>
    20ba:	a001                	j	20ba <s25fl128s_clsr+0x18>
    20bc:	8082                	ret

Disassembly of section .text.s25fl128s_reset:

000020be <s25fl128s_reset>:
    20be:	67a9                	lui	a5,0xa
    20c0:	0007a703          	lw	a4,0(a5) # a000 <_addr_qspi>
    20c4:	800007b7          	lui	a5,0x80000
    20c8:	0f078793          	addi	a5,a5,240 # 800000f0 <_addr_gpio+0x7fff00f0>
    20cc:	c31c                	sw	a5,0(a4)
    20ce:	5718                	lw	a4,40(a4)
    20d0:	4785                	li	a5,1
    20d2:	00f70363          	beq	a4,a5,20d8 <s25fl128s_reset+0x1a>
    20d6:	a001                	j	20d6 <s25fl128s_reset+0x18>
    20d8:	8082                	ret

Disassembly of section .text.s25fl128s_rdid:

000020da <s25fl128s_rdid>:
    20da:	67a9                	lui	a5,0xa
    20dc:	0007a783          	lw	a5,0(a5) # a000 <_addr_qspi>
    20e0:	fff58713          	addi	a4,a1,-1
    20e4:	800006b7          	lui	a3,0x80000
    20e8:	19f68693          	addi	a3,a3,415 # 8000019f <_addr_gpio+0x7fff019f>
    20ec:	0742                	slli	a4,a4,0x10
    20ee:	9736                	add	a4,a4,a3
    20f0:	5794                	lw	a3,40(a5)
    20f2:	c398                	sw	a4,0(a5)
    20f4:	4705                	li	a4,1
    20f6:	00e68363          	beq	a3,a4,20fc <s25fl128s_rdid+0x22>
    20fa:	a001                	j	20fa <s25fl128s_rdid+0x20>
    20fc:	4711                	li	a4,4
    20fe:	02e5c5b3          	div	a1,a1,a4
    2102:	07a1                	addi	a5,a5,8
    2104:	4701                	li	a4,0
    2106:	00b74363          	blt	a4,a1,210c <s25fl128s_rdid+0x32>
    210a:	8082                	ret
    210c:	4390                	lw	a2,0(a5)
    210e:	00271693          	slli	a3,a4,0x2
    2112:	96aa                	add	a3,a3,a0
    2114:	c290                	sw	a2,0(a3)
    2116:	0705                	addi	a4,a4,1
    2118:	0791                	addi	a5,a5,4
    211a:	b7f5                	j	2106 <s25fl128s_rdid+0x2c>

Disassembly of section .text.s25fl128s_rdsr1:

0000211c <s25fl128s_rdsr1>:
    211c:	67a9                	lui	a5,0xa
    211e:	0007a783          	lw	a5,0(a5) # a000 <_addr_qspi>
    2122:	80000737          	lui	a4,0x80000
    2126:	10570713          	addi	a4,a4,261 # 80000105 <_addr_gpio+0x7fff0105>
    212a:	5794                	lw	a3,40(a5)
    212c:	c398                	sw	a4,0(a5)
    212e:	4705                	li	a4,1
    2130:	00e68363          	beq	a3,a4,2136 <s25fl128s_rdsr1+0x1a>
    2134:	a001                	j	2134 <s25fl128s_rdsr1+0x18>
    2136:	0087c503          	lbu	a0,8(a5)
    213a:	8082                	ret

Disassembly of section .text.s25fl128s_rdsr2:

0000213c <s25fl128s_rdsr2>:
    213c:	67a9                	lui	a5,0xa
    213e:	0007a783          	lw	a5,0(a5) # a000 <_addr_qspi>
    2142:	80000737          	lui	a4,0x80000
    2146:	10770713          	addi	a4,a4,263 # 80000107 <_addr_gpio+0x7fff0107>
    214a:	5794                	lw	a3,40(a5)
    214c:	c398                	sw	a4,0(a5)
    214e:	4705                	li	a4,1
    2150:	00e68363          	beq	a3,a4,2156 <s25fl128s_rdsr2+0x1a>
    2154:	a001                	j	2154 <s25fl128s_rdsr2+0x18>
    2156:	0087c503          	lbu	a0,8(a5)
    215a:	8082                	ret

Disassembly of section .text.s25fl128s_rdcr:

0000215c <s25fl128s_rdcr>:
    215c:	67a9                	lui	a5,0xa
    215e:	0007a783          	lw	a5,0(a5) # a000 <_addr_qspi>
    2162:	80000737          	lui	a4,0x80000
    2166:	13570713          	addi	a4,a4,309 # 80000135 <_addr_gpio+0x7fff0135>
    216a:	5794                	lw	a3,40(a5)
    216c:	c398                	sw	a4,0(a5)
    216e:	4705                	li	a4,1
    2170:	00e68363          	beq	a3,a4,2176 <s25fl128s_rdcr+0x1a>
    2174:	a001                	j	2174 <s25fl128s_rdcr+0x18>
    2176:	0087c503          	lbu	a0,8(a5)
    217a:	8082                	ret

Disassembly of section .text.s25fl128s_read_id:

0000217c <s25fl128s_read_id>:
    217c:	67a9                	lui	a5,0xa
    217e:	0007a783          	lw	a5,0(a5) # a000 <_addr_qspi>
    2182:	80012737          	lui	a4,0x80012
    2186:	99070713          	addi	a4,a4,-1648 # 80011990 <_addr_gpio+0x80001990>
    218a:	5794                	lw	a3,40(a5)
    218c:	c398                	sw	a4,0(a5)
    218e:	c3c8                	sw	a0,4(a5)
    2190:	4705                	li	a4,1
    2192:	00e68363          	beq	a3,a4,2198 <s25fl128s_read_id+0x1c>
    2196:	a001                	j	2196 <s25fl128s_read_id+0x1a>
    2198:	00879503          	lh	a0,8(a5)
    219c:	8082                	ret

Disassembly of section .text.s25fl128s_res:

0000219e <s25fl128s_res>:
    219e:	67a9                	lui	a5,0xa
    21a0:	0007a783          	lw	a5,0(a5) # a000 <_addr_qspi>
    21a4:	80002737          	lui	a4,0x80002
    21a8:	9ab70713          	addi	a4,a4,-1621 # 800019ab <_addr_gpio+0x7fff19ab>
    21ac:	5794                	lw	a3,40(a5)
    21ae:	c398                	sw	a4,0(a5)
    21b0:	4705                	li	a4,1
    21b2:	00e68363          	beq	a3,a4,21b8 <s25fl128s_res+0x1a>
    21b6:	a001                	j	21b6 <s25fl128s_res+0x18>
    21b8:	0087c503          	lbu	a0,8(a5)
    21bc:	8082                	ret

Disassembly of section .text.s25fl128s_wrr:

000021be <s25fl128s_wrr>:
    21be:	67a9                	lui	a5,0xa
    21c0:	0007a783          	lw	a5,0(a5) # a000 <_addr_qspi>
    21c4:	80010737          	lui	a4,0x80010
    21c8:	50170713          	addi	a4,a4,1281 # 80010501 <_addr_gpio+0x80000501>
    21cc:	c398                	sw	a4,0(a5)
    21ce:	5798                	lw	a4,40(a5)
    21d0:	c788                	sw	a0,8(a5)
    21d2:	4785                	li	a5,1
    21d4:	00f70363          	beq	a4,a5,21da <s25fl128s_wrr+0x1c>
    21d8:	a001                	j	21d8 <s25fl128s_wrr+0x1a>
    21da:	8082                	ret

Disassembly of section .text.s25fl128s_read:

000021dc <s25fl128s_read>:
    21dc:	67a9                	lui	a5,0xa
    21de:	0007a783          	lw	a5,0(a5) # a000 <_addr_qspi>
    21e2:	fff60713          	addi	a4,a2,-1
    21e6:	800026b7          	lui	a3,0x80002
    21ea:	90368693          	addi	a3,a3,-1789 # 80001903 <_addr_gpio+0x7fff1903>
    21ee:	0742                	slli	a4,a4,0x10
    21f0:	9736                	add	a4,a4,a3
    21f2:	5794                	lw	a3,40(a5)
    21f4:	c398                	sw	a4,0(a5)
    21f6:	c3c8                	sw	a0,4(a5)
    21f8:	4705                	li	a4,1
    21fa:	00e68363          	beq	a3,a4,2200 <s25fl128s_read+0x24>
    21fe:	a001                	j	21fe <s25fl128s_read+0x22>
    2200:	4711                	li	a4,4
    2202:	02e64633          	div	a2,a2,a4
    2206:	07a1                	addi	a5,a5,8
    2208:	4701                	li	a4,0
    220a:	00c74363          	blt	a4,a2,2210 <s25fl128s_read+0x34>
    220e:	8082                	ret
    2210:	4388                	lw	a0,0(a5)
    2212:	00271693          	slli	a3,a4,0x2
    2216:	96ae                	add	a3,a3,a1
    2218:	c288                	sw	a0,0(a3)
    221a:	0705                	addi	a4,a4,1
    221c:	0791                	addi	a5,a5,4
    221e:	b7f5                	j	220a <s25fl128s_read+0x2e>

Disassembly of section .text.s25fl128s_pp:

00002220 <s25fl128s_pp>:
    2220:	fff60793          	addi	a5,a2,-1
    2224:	80002737          	lui	a4,0x80002
    2228:	d0270713          	addi	a4,a4,-766 # 80001d02 <_addr_gpio+0x7fff1d02>
    222c:	07c2                	slli	a5,a5,0x10
    222e:	97ba                	add	a5,a5,a4
    2230:	6729                	lui	a4,0xa
    2232:	00072703          	lw	a4,0(a4) # a000 <_addr_qspi>
    2236:	4691                	li	a3,4
    2238:	02d64633          	div	a2,a2,a3
    223c:	c348                	sw	a0,4(a4)
    223e:	4681                	li	a3,0
    2240:	00870513          	addi	a0,a4,8
    2244:	00c6c863          	blt	a3,a2,2254 <s25fl128s_pp+0x34>
    2248:	c31c                	sw	a5,0(a4)
    224a:	5718                	lw	a4,40(a4)
    224c:	4785                	li	a5,1
    224e:	00f70d63          	beq	a4,a5,2268 <s25fl128s_pp+0x48>
    2252:	a001                	j	2252 <s25fl128s_pp+0x32>
    2254:	00269813          	slli	a6,a3,0x2
    2258:	982e                	add	a6,a6,a1
    225a:	00082803          	lw	a6,0(a6)
    225e:	0685                	addi	a3,a3,1
    2260:	01052023          	sw	a6,0(a0)
    2264:	0511                	addi	a0,a0,4
    2266:	bff9                	j	2244 <s25fl128s_pp+0x24>
    2268:	8082                	ret

Disassembly of section .text.s25fl128s_se:

0000226a <s25fl128s_se>:
    226a:	67a9                	lui	a5,0xa
    226c:	0007a783          	lw	a5,0(a5) # a000 <_addr_qspi>
    2270:	80020737          	lui	a4,0x80020
    2274:	5d870713          	addi	a4,a4,1496 # 800205d8 <_addr_gpio+0x800105d8>
    2278:	c398                	sw	a4,0(a5)
    227a:	5798                	lw	a4,40(a5)
    227c:	c788                	sw	a0,8(a5)
    227e:	4785                	li	a5,1
    2280:	00f70363          	beq	a4,a5,2286 <s25fl128s_se+0x1c>
    2284:	a001                	j	2284 <s25fl128s_se+0x1a>
    2286:	8082                	ret

Disassembly of section .text.s25fl128s_dor:

00002288 <s25fl128s_dor>:
    2288:	67a9                	lui	a5,0xa
    228a:	0007a783          	lw	a5,0(a5) # a000 <_addr_qspi>
    228e:	fff60713          	addi	a4,a2,-1
    2292:	800026b7          	lui	a3,0x80002
    2296:	23b68693          	addi	a3,a3,571 # 8000223b <_addr_gpio+0x7fff223b>
    229a:	0742                	slli	a4,a4,0x10
    229c:	9736                	add	a4,a4,a3
    229e:	5794                	lw	a3,40(a5)
    22a0:	c398                	sw	a4,0(a5)
    22a2:	c3c8                	sw	a0,4(a5)
    22a4:	4705                	li	a4,1
    22a6:	00e68363          	beq	a3,a4,22ac <s25fl128s_dor+0x24>
    22aa:	a001                	j	22aa <s25fl128s_dor+0x22>
    22ac:	4711                	li	a4,4
    22ae:	02e64633          	div	a2,a2,a4
    22b2:	07a1                	addi	a5,a5,8
    22b4:	4701                	li	a4,0
    22b6:	00c74363          	blt	a4,a2,22bc <s25fl128s_dor+0x34>
    22ba:	8082                	ret
    22bc:	4388                	lw	a0,0(a5)
    22be:	00271693          	slli	a3,a4,0x2
    22c2:	96ae                	add	a3,a3,a1
    22c4:	c288                	sw	a0,0(a3)
    22c6:	0705                	addi	a4,a4,1
    22c8:	0791                	addi	a5,a5,4
    22ca:	b7f5                	j	22b6 <s25fl128s_dor+0x2e>

Disassembly of section .text.s25fl128s_qor:

000022cc <s25fl128s_qor>:
    22cc:	67a9                	lui	a5,0xa
    22ce:	0007a783          	lw	a5,0(a5) # a000 <_addr_qspi>
    22d2:	fff60713          	addi	a4,a2,-1
    22d6:	800026b7          	lui	a3,0x80002
    22da:	36b68693          	addi	a3,a3,875 # 8000236b <_addr_gpio+0x7fff236b>
    22de:	0742                	slli	a4,a4,0x10
    22e0:	9736                	add	a4,a4,a3
    22e2:	5794                	lw	a3,40(a5)
    22e4:	c398                	sw	a4,0(a5)
    22e6:	c3c8                	sw	a0,4(a5)
    22e8:	4705                	li	a4,1
    22ea:	00e68363          	beq	a3,a4,22f0 <s25fl128s_qor+0x24>
    22ee:	a001                	j	22ee <s25fl128s_qor+0x22>
    22f0:	4711                	li	a4,4
    22f2:	02e64633          	div	a2,a2,a4
    22f6:	07a1                	addi	a5,a5,8
    22f8:	4701                	li	a4,0
    22fa:	00c74363          	blt	a4,a2,2300 <s25fl128s_qor+0x34>
    22fe:	8082                	ret
    2300:	4388                	lw	a0,0(a5)
    2302:	00271693          	slli	a3,a4,0x2
    2306:	96ae                	add	a3,a3,a1
    2308:	c288                	sw	a0,0(a3)
    230a:	0705                	addi	a4,a4,1
    230c:	0791                	addi	a5,a5,4
    230e:	b7f5                	j	22fa <s25fl128s_qor+0x2e>

Disassembly of section .text.s25fl128s_qpp:

00002310 <s25fl128s_qpp>:
    2310:	67a9                	lui	a5,0xa
    2312:	0007a703          	lw	a4,0(a5) # a000 <_addr_qspi>
    2316:	800026b7          	lui	a3,0x80002
    231a:	fff60793          	addi	a5,a2,-1
    231e:	f3268693          	addi	a3,a3,-206 # 80001f32 <_addr_gpio+0x7fff1f32>
    2322:	07c2                	slli	a5,a5,0x10
    2324:	97b6                	add	a5,a5,a3
    2326:	c31c                	sw	a5,0(a4)
    2328:	4791                	li	a5,4
    232a:	02f64633          	div	a2,a2,a5
    232e:	c348                	sw	a0,4(a4)
    2330:	00870693          	addi	a3,a4,8
    2334:	4781                	li	a5,0
    2336:	00c7c763          	blt	a5,a2,2344 <s25fl128s_qpp+0x34>
    233a:	5718                	lw	a4,40(a4)
    233c:	4785                	li	a5,1
    233e:	00f70b63          	beq	a4,a5,2354 <s25fl128s_qpp+0x44>
    2342:	a001                	j	2342 <s25fl128s_qpp+0x32>
    2344:	00279513          	slli	a0,a5,0x2
    2348:	952e                	add	a0,a0,a1
    234a:	4108                	lw	a0,0(a0)
    234c:	0785                	addi	a5,a5,1
    234e:	c288                	sw	a0,0(a3)
    2350:	0691                	addi	a3,a3,4
    2352:	b7d5                	j	2336 <s25fl128s_qpp+0x26>
    2354:	8082                	ret

Disassembly of section .text.qspi_custom_write:

00002356 <qspi_custom_write>:
    2356:	0ff67613          	zext.b	a2,a2
    235a:	06a2                	slli	a3,a3,0x8
    235c:	96b2                	add	a3,a3,a2
    235e:	072e                	slli	a4,a4,0xb
    2360:	40068693          	addi	a3,a3,1024
    2364:	96ba                	add	a3,a3,a4
    2366:	fff78713          	addi	a4,a5,-1
    236a:	0742                	slli	a4,a4,0x10
    236c:	9736                	add	a4,a4,a3
    236e:	0866                	slli	a6,a6,0x19
    2370:	983a                	add	a6,a6,a4
    2372:	80000737          	lui	a4,0x80000
    2376:	983a                	add	a6,a6,a4
    2378:	6729                	lui	a4,0xa
    237a:	00072703          	lw	a4,0(a4) # a000 <_addr_qspi>
    237e:	4691                	li	a3,4
    2380:	02d7c7b3          	div	a5,a5,a3
    2384:	c348                	sw	a0,4(a4)
    2386:	00870613          	addi	a2,a4,8
    238a:	4681                	li	a3,0
    238c:	00f6c963          	blt	a3,a5,239e <qspi_custom_write+0x48>
    2390:	01072023          	sw	a6,0(a4)
    2394:	5718                	lw	a4,40(a4)
    2396:	4785                	li	a5,1
    2398:	00f70b63          	beq	a4,a5,23ae <qspi_custom_write+0x58>
    239c:	a001                	j	239c <qspi_custom_write+0x46>
    239e:	00269513          	slli	a0,a3,0x2
    23a2:	952e                	add	a0,a0,a1
    23a4:	4108                	lw	a0,0(a0)
    23a6:	0685                	addi	a3,a3,1
    23a8:	c208                	sw	a0,0(a2)
    23aa:	0611                	addi	a2,a2,4
    23ac:	b7c5                	j	238c <qspi_custom_write+0x36>
    23ae:	8082                	ret

Disassembly of section .text.qspi_custom_read:

000023b0 <qspi_custom_read>:
    23b0:	0ff67613          	zext.b	a2,a2
    23b4:	06a2                	slli	a3,a3,0x8
    23b6:	96b2                	add	a3,a3,a2
    23b8:	072e                	slli	a4,a4,0xb
    23ba:	96ba                	add	a3,a3,a4
    23bc:	fff78713          	addi	a4,a5,-1
    23c0:	0742                	slli	a4,a4,0x10
    23c2:	9736                	add	a4,a4,a3
    23c4:	0866                	slli	a6,a6,0x19
    23c6:	983a                	add	a6,a6,a4
    23c8:	6729                	lui	a4,0xa
    23ca:	00072703          	lw	a4,0(a4) # a000 <_addr_qspi>
    23ce:	800006b7          	lui	a3,0x80000
    23d2:	9836                	add	a6,a6,a3
    23d4:	5710                	lw	a2,40(a4)
    23d6:	c348                	sw	a0,4(a4)
    23d8:	01072023          	sw	a6,0(a4)
    23dc:	4685                	li	a3,1
    23de:	00d60363          	beq	a2,a3,23e4 <qspi_custom_read+0x34>
    23e2:	a001                	j	23e2 <qspi_custom_read+0x32>
    23e4:	4691                	li	a3,4
    23e6:	02d7c7b3          	div	a5,a5,a3
    23ea:	0721                	addi	a4,a4,8
    23ec:	4681                	li	a3,0
    23ee:	00f6c363          	blt	a3,a5,23f4 <qspi_custom_read+0x44>
    23f2:	8082                	ret
    23f4:	4308                	lw	a0,0(a4)
    23f6:	00269613          	slli	a2,a3,0x2
    23fa:	962e                	add	a2,a2,a1
    23fc:	c208                	sw	a0,0(a2)
    23fe:	0685                	addi	a3,a3,1 # 80000001 <_addr_gpio+0x7fff0001>
    2400:	0711                	addi	a4,a4,4
    2402:	b7f5                	j	23ee <qspi_custom_read+0x3e>

Disassembly of section .text.timer_conf:

00002404 <timer_conf>:
    2404:	67b1                	lui	a5,0xc
    2406:	0007a783          	lw	a5,0(a5) # c000 <_addr_timer>
    240a:	c388                	sw	a0,0(a5)
    240c:	c3cc                	sw	a1,4(a5)
    240e:	cb90                	sw	a2,16(a5)
    2410:	8082                	ret

Disassembly of section .text.timer_read_counter:

00002412 <timer_read_counter>:
    2412:	67b1                	lui	a5,0xc
    2414:	0007a783          	lw	a5,0(a5) # c000 <_addr_timer>
    2418:	4bc8                	lw	a0,20(a5)
    241a:	8082                	ret

Disassembly of section .text.timer_read_event:

0000241c <timer_read_event>:
    241c:	67b1                	lui	a5,0xc
    241e:	0007a783          	lw	a5,0(a5) # c000 <_addr_timer>
    2422:	4f88                	lw	a0,24(a5)
    2424:	8082                	ret

Disassembly of section .text.timer_clear_counter:

00002426 <timer_clear_counter>:
    2426:	67b1                	lui	a5,0xc
    2428:	0007a783          	lw	a5,0(a5) # c000 <_addr_timer>
    242c:	4705                	li	a4,1
    242e:	c798                	sw	a4,8(a5)
    2430:	8082                	ret

Disassembly of section .text.timer_clear_event:

00002432 <timer_clear_event>:
    2432:	67b1                	lui	a5,0xc
    2434:	0007a783          	lw	a5,0(a5) # c000 <_addr_timer>
    2438:	4705                	li	a4,1
    243a:	cfd8                	sw	a4,28(a5)
    243c:	8082                	ret

Disassembly of section .text.timer_enable:

0000243e <timer_enable>:
    243e:	67b1                	lui	a5,0xc
    2440:	0007a783          	lw	a5,0(a5) # c000 <_addr_timer>
    2444:	4705                	li	a4,1
    2446:	c7d8                	sw	a4,12(a5)
    2448:	8082                	ret

Disassembly of section .text.timer_disable:

0000244a <timer_disable>:
    244a:	67b1                	lui	a5,0xc
    244c:	0007a783          	lw	a5,0(a5) # c000 <_addr_timer>
    2450:	0007a623          	sw	zero,12(a5)
    2454:	8082                	ret

Disassembly of section .text.gpio_write:

00002456 <gpio_write>:
    2456:	67c1                	lui	a5,0x10
    2458:	0007a783          	lw	a5,0(a5) # 10000 <_addr_gpio>
    245c:	c3c8                	sw	a0,4(a5)
    245e:	8082                	ret

Disassembly of section .text.gpio_read:

00002460 <gpio_read>:
    2460:	67c1                	lui	a5,0x10
    2462:	0007a783          	lw	a5,0(a5) # 10000 <_addr_gpio>
    2466:	00079503          	lh	a0,0(a5)
    246a:	8082                	ret

Disassembly of section .text.instr_mem_write:

0000246c <instr_mem_write>:
    246c:	6791                	lui	a5,0x4
    246e:	0007a783          	lw	a5,0(a5) # 4000 <_addr_instr_mem>
    2472:	050a                	slli	a0,a0,0x2
    2474:	97aa                	add	a5,a5,a0
    2476:	c38c                	sw	a1,0(a5)
    2478:	8082                	ret

Disassembly of section .text.knightrider_i2c:

0000247a <knightrider_i2c>:
    247a:	1141                	addi	sp,sp,-16
    247c:	c422                	sw	s0,8(sp)
    247e:	c226                	sw	s1,4(sp)
    2480:	c606                	sw	ra,12(sp)
    2482:	447d                	li	s0,31
    2484:	4485                	li	s1,1
    2486:	0486                	slli	s1,s1,0x1
    2488:	4591                	li	a1,4
    248a:	8526                	mv	a0,s1
    248c:	147d                	addi	s0,s0,-1
    248e:	3e5d                	jal	2044 <i2c_write>
    2490:	f87d                	bnez	s0,2486 <knightrider_i2c+0xc>
    2492:	80000437          	lui	s0,0x80000
    2496:	8405                	srai	s0,s0,0x1
    2498:	4591                	li	a1,4
    249a:	8522                	mv	a0,s0
    249c:	3665                	jal	2044 <i2c_write>
    249e:	bfe5                	j	2496 <knightrider_i2c+0x1c>

Disassembly of section .text.calculator_gpio:

000024a0 <calculator_gpio>:
    24a0:	8082                	ret
