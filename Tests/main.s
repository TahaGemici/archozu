
a.out:     file format elf32-littleriscv


Disassembly of section .text:

00002000 <main>:
    2000:	1101                	addi	sp,sp,-32
    2002:	cc22                	sw	s0,24(sp)
    2004:	ca26                	sw	s1,20(sp)
    2006:	c84a                	sw	s2,16(sp)
    2008:	c64e                	sw	s3,12(sp)
    200a:	ce06                	sw	ra,28(sp)
    200c:	67a1                	lui	a5,0x8
    200e:	07b00713          	li	a4,123
    2012:	69c1                	lui	s3,0x10
    2014:	6441                	lui	s0,0x10
    2016:	c3d8                	sw	a4,4(a5)
    2018:	fff98913          	addi	s2,s3,-1 # ffff <__GNU_EH_FRAME_HDR+0xd577>
    201c:	0411                	addi	s0,s0,4 # 10004 <__GNU_EH_FRAME_HDR+0xd57c>
    201e:	08c02783          	lw	a5,140(zero) # 8c <abc>
    2022:	4585                	li	a1,1
    2024:	0127f7b3          	and	a5,a5,s2
    2028:	c01c                	sw	a5,0(s0)
    202a:	0009a503          	lw	a0,0(s3)
    202e:	01257533          	and	a0,a0,s2
    2032:	2a75                	jal	21ee <i2c_write>
    2034:	4505                	li	a0,1
    2036:	2ad1                	jal	220a <i2c_read>
    2038:	08a02623          	sw	a0,140(zero) # 8c <abc>
    203c:	b7cd                	j	201e <main+0x1e>
	...

00002100 <interrupt>:
    2100:	7115                	addi	sp,sp,-224
    2102:	cf86                	sw	ra,220(sp)
    2104:	cd96                	sw	t0,216(sp)
    2106:	cb9a                	sw	t1,212(sp)
    2108:	c99e                	sw	t2,208(sp)
    210a:	c3b2                	sw	a2,196(sp)
    210c:	c1b6                	sw	a3,192(sp)
    210e:	df3a                	sw	a4,188(sp)
    2110:	db42                	sw	a6,180(sp)
    2112:	d946                	sw	a7,176(sp)
    2114:	d772                	sw	t3,172(sp)
    2116:	d576                	sw	t4,168(sp)
    2118:	d37a                	sw	t5,164(sp)
    211a:	d17e                	sw	t6,160(sp)
    211c:	ad02                	fsd	ft0,152(sp)
    211e:	a906                	fsd	ft1,144(sp)
    2120:	a50a                	fsd	ft2,136(sp)
    2122:	a10e                	fsd	ft3,128(sp)
    2124:	bc92                	fsd	ft4,120(sp)
    2126:	b896                	fsd	ft5,112(sp)
    2128:	b49a                	fsd	ft6,104(sp)
    212a:	b09e                	fsd	ft7,96(sp)
    212c:	acaa                	fsd	fa0,88(sp)
    212e:	a8ae                	fsd	fa1,80(sp)
    2130:	a4b2                	fsd	fa2,72(sp)
    2132:	a0b6                	fsd	fa3,64(sp)
    2134:	bc3a                	fsd	fa4,56(sp)
    2136:	b83e                	fsd	fa5,48(sp)
    2138:	b442                	fsd	fa6,40(sp)
    213a:	b046                	fsd	fa7,32(sp)
    213c:	c7aa                	sw	a0,204(sp)
    213e:	c5ae                	sw	a1,200(sp)
    2140:	dd3e                	sw	a5,184(sp)
    2142:	67c1                	lui	a5,0x10
    2144:	ac72                	fsd	ft8,24(sp)
    2146:	4388                	lw	a0,0(a5)
    2148:	4589                	li	a1,2
    214a:	a876                	fsd	ft9,16(sp)
    214c:	0542                	slli	a0,a0,0x10
    214e:	8141                	srli	a0,a0,0x10
    2150:	a47a                	fsd	ft10,8(sp)
    2152:	a07e                	fsd	ft11,0(sp)
    2154:	2869                	jal	21ee <i2c_write>
    2156:	4509                	li	a0,2
    2158:	284d                	jal	220a <i2c_read>
    215a:	08a02623          	sw	a0,140(zero) # 8c <abc>
    215e:	40fe                	lw	ra,220(sp)
    2160:	42ee                	lw	t0,216(sp)
    2162:	435e                	lw	t1,212(sp)
    2164:	43ce                	lw	t2,208(sp)
    2166:	453e                	lw	a0,204(sp)
    2168:	45ae                	lw	a1,200(sp)
    216a:	461e                	lw	a2,196(sp)
    216c:	468e                	lw	a3,192(sp)
    216e:	577a                	lw	a4,188(sp)
    2170:	57ea                	lw	a5,184(sp)
    2172:	585a                	lw	a6,180(sp)
    2174:	58ca                	lw	a7,176(sp)
    2176:	5e3a                	lw	t3,172(sp)
    2178:	5eaa                	lw	t4,168(sp)
    217a:	5f1a                	lw	t5,164(sp)
    217c:	5f8a                	lw	t6,160(sp)
    217e:	206a                	fld	ft0,152(sp)
    2180:	20ca                	fld	ft1,144(sp)
    2182:	212a                	fld	ft2,136(sp)
    2184:	218a                	fld	ft3,128(sp)
    2186:	3266                	fld	ft4,120(sp)
    2188:	32c6                	fld	ft5,112(sp)
    218a:	3326                	fld	ft6,104(sp)
    218c:	3386                	fld	ft7,96(sp)
    218e:	2566                	fld	fa0,88(sp)
    2190:	25c6                	fld	fa1,80(sp)
    2192:	2626                	fld	fa2,72(sp)
    2194:	2686                	fld	fa3,64(sp)
    2196:	3762                	fld	fa4,56(sp)
    2198:	37c2                	fld	fa5,48(sp)
    219a:	3822                	fld	fa6,40(sp)
    219c:	3882                	fld	fa7,32(sp)
    219e:	2e62                	fld	ft8,24(sp)
    21a0:	2ec2                	fld	ft9,16(sp)
    21a2:	2f22                	fld	ft10,8(sp)
    21a4:	2f82                	fld	ft11,0(sp)
    21a6:	612d                	addi	sp,sp,224
    21a8:	30200073          	mret

Disassembly of section .text.uart_conf:

000021ac <uart_conf>:
    21ac:	6799                	lui	a5,0x6
    21ae:	c388                	sw	a0,0(a5)
    21b0:	c3cc                	sw	a1,4(a5)
    21b2:	8082                	ret

Disassembly of section .text.uart_read:

000021b4 <uart_read>:
    21b4:	6799                	lui	a5,0x6
    21b6:	07c1                	addi	a5,a5,16 # 6010 <__GNU_EH_FRAME_HDR+0x3588>
    21b8:	4709                	li	a4,2
    21ba:	4394                	lw	a3,0(a5)
    21bc:	fee69fe3          	bne	a3,a4,21ba <uart_read+0x6>
    21c0:	6719                	lui	a4,0x6
    21c2:	4708                	lw	a0,8(a4)
    21c4:	0007a023          	sw	zero,0(a5)
    21c8:	0ff57513          	zext.b	a0,a0
    21cc:	8082                	ret

Disassembly of section .text.uart_write:

000021ce <uart_write>:
    21ce:	6799                	lui	a5,0x6
    21d0:	c7c8                	sw	a0,12(a5)
    21d2:	6799                	lui	a5,0x6
    21d4:	4705                	li	a4,1
    21d6:	07c1                	addi	a5,a5,16 # 6010 <__GNU_EH_FRAME_HDR+0x3588>
    21d8:	c398                	sw	a4,0(a5)
    21da:	4715                	li	a4,5
    21dc:	4394                	lw	a3,0(a5)
    21de:	fee69fe3          	bne	a3,a4,21dc <uart_write+0xe>
    21e2:	0007a023          	sw	zero,0(a5)
    21e6:	8082                	ret

Disassembly of section .text.i2c_conf:

000021e8 <i2c_conf>:
    21e8:	67a1                	lui	a5,0x8
    21ea:	c3c8                	sw	a0,4(a5)
    21ec:	8082                	ret

Disassembly of section .text.i2c_write:

000021ee <i2c_write>:
    21ee:	67a1                	lui	a5,0x8
    21f0:	c38c                	sw	a1,0(a5)
    21f2:	c7c8                	sw	a0,12(a5)
    21f4:	67a1                	lui	a5,0x8
    21f6:	4705                	li	a4,1
    21f8:	07c1                	addi	a5,a5,16 # 8010 <__GNU_EH_FRAME_HDR+0x5588>
    21fa:	c398                	sw	a4,0(a5)
    21fc:	470d                	li	a4,3
    21fe:	4394                	lw	a3,0(a5)
    2200:	fee69fe3          	bne	a3,a4,21fe <i2c_write+0x10>
    2204:	0007a023          	sw	zero,0(a5)
    2208:	8082                	ret

Disassembly of section .text.i2c_read:

0000220a <i2c_read>:
    220a:	67a1                	lui	a5,0x8
    220c:	c388                	sw	a0,0(a5)
    220e:	4711                	li	a4,4
    2210:	07c1                	addi	a5,a5,16 # 8010 <__GNU_EH_FRAME_HDR+0x5588>
    2212:	c398                	sw	a4,0(a5)
    2214:	4731                	li	a4,12
    2216:	4394                	lw	a3,0(a5)
    2218:	fee69fe3          	bne	a3,a4,2216 <i2c_read+0xc>
    221c:	0007a023          	sw	zero,0(a5)
    2220:	67a1                	lui	a5,0x8
    2222:	4788                	lw	a0,8(a5)
    2224:	8082                	ret

Disassembly of section .text.s25fl128s_wren:

00002226 <s25fl128s_wren>:
    2226:	800007b7          	lui	a5,0x80000
    222a:	0799                	addi	a5,a5,6 # 80000006 <__GNU_EH_FRAME_HDR+0x7fffd57e>
    222c:	6729                	lui	a4,0xa
    222e:	c31c                	sw	a5,0(a4)
    2230:	67a9                	lui	a5,0xa
    2232:	02878793          	addi	a5,a5,40 # a028 <__GNU_EH_FRAME_HDR+0x75a0>
    2236:	4705                	li	a4,1
    2238:	4394                	lw	a3,0(a5)
    223a:	fee69fe3          	bne	a3,a4,2238 <s25fl128s_wren+0x12>
    223e:	8082                	ret

Disassembly of section .text.s25fl128s_wrdi:

00002240 <s25fl128s_wrdi>:
    2240:	800007b7          	lui	a5,0x80000
    2244:	0791                	addi	a5,a5,4 # 80000004 <__GNU_EH_FRAME_HDR+0x7fffd57c>
    2246:	6729                	lui	a4,0xa
    2248:	c31c                	sw	a5,0(a4)
    224a:	67a9                	lui	a5,0xa
    224c:	02878793          	addi	a5,a5,40 # a028 <__GNU_EH_FRAME_HDR+0x75a0>
    2250:	4705                	li	a4,1
    2252:	4394                	lw	a3,0(a5)
    2254:	fee69fe3          	bne	a3,a4,2252 <s25fl128s_wrdi+0x12>
    2258:	8082                	ret

Disassembly of section .text.s25fl128s_clsr:

0000225a <s25fl128s_clsr>:
    225a:	800007b7          	lui	a5,0x80000
    225e:	03078793          	addi	a5,a5,48 # 80000030 <__GNU_EH_FRAME_HDR+0x7fffd5a8>
    2262:	6729                	lui	a4,0xa
    2264:	c31c                	sw	a5,0(a4)
    2266:	67a9                	lui	a5,0xa
    2268:	02878793          	addi	a5,a5,40 # a028 <__GNU_EH_FRAME_HDR+0x75a0>
    226c:	4705                	li	a4,1
    226e:	4394                	lw	a3,0(a5)
    2270:	fee69fe3          	bne	a3,a4,226e <s25fl128s_clsr+0x14>
    2274:	8082                	ret

Disassembly of section .text.s25fl128s_reset:

00002276 <s25fl128s_reset>:
    2276:	800007b7          	lui	a5,0x80000
    227a:	0f078793          	addi	a5,a5,240 # 800000f0 <__GNU_EH_FRAME_HDR+0x7fffd668>
    227e:	6729                	lui	a4,0xa
    2280:	c31c                	sw	a5,0(a4)
    2282:	67a9                	lui	a5,0xa
    2284:	02878793          	addi	a5,a5,40 # a028 <__GNU_EH_FRAME_HDR+0x75a0>
    2288:	4705                	li	a4,1
    228a:	4394                	lw	a3,0(a5)
    228c:	fee69fe3          	bne	a3,a4,228a <s25fl128s_reset+0x14>
    2290:	8082                	ret

Disassembly of section .text.s25fl128s_rdid:

00002292 <s25fl128s_rdid>:
    2292:	fff58793          	addi	a5,a1,-1
    2296:	80000737          	lui	a4,0x80000
    229a:	19f70713          	addi	a4,a4,415 # 8000019f <__GNU_EH_FRAME_HDR+0x7fffd717>
    229e:	07c2                	slli	a5,a5,0x10
    22a0:	97ba                	add	a5,a5,a4
    22a2:	6729                	lui	a4,0xa
    22a4:	c31c                	sw	a5,0(a4)
    22a6:	67a9                	lui	a5,0xa
    22a8:	02878793          	addi	a5,a5,40 # a028 <__GNU_EH_FRAME_HDR+0x75a0>
    22ac:	4705                	li	a4,1
    22ae:	4394                	lw	a3,0(a5)
    22b0:	fee69fe3          	bne	a3,a4,22ae <s25fl128s_rdid+0x1c>
    22b4:	058d                	addi	a1,a1,3
    22b6:	6729                	lui	a4,0xa
    22b8:	99f1                	andi	a1,a1,-4
    22ba:	4781                	li	a5,0
    22bc:	0721                	addi	a4,a4,8 # a008 <__GNU_EH_FRAME_HDR+0x7580>
    22be:	00b79363          	bne	a5,a1,22c4 <s25fl128s_rdid+0x32>
    22c2:	8082                	ret
    22c4:	00e786b3          	add	a3,a5,a4
    22c8:	4290                	lw	a2,0(a3)
    22ca:	00f506b3          	add	a3,a0,a5
    22ce:	0791                	addi	a5,a5,4
    22d0:	c290                	sw	a2,0(a3)
    22d2:	b7f5                	j	22be <s25fl128s_rdid+0x2c>

Disassembly of section .text.s25fl128s_rdsr1:

000022d4 <s25fl128s_rdsr1>:
    22d4:	800007b7          	lui	a5,0x80000
    22d8:	10578793          	addi	a5,a5,261 # 80000105 <__GNU_EH_FRAME_HDR+0x7fffd67d>
    22dc:	6729                	lui	a4,0xa
    22de:	c31c                	sw	a5,0(a4)
    22e0:	67a9                	lui	a5,0xa
    22e2:	02878793          	addi	a5,a5,40 # a028 <__GNU_EH_FRAME_HDR+0x75a0>
    22e6:	4705                	li	a4,1
    22e8:	4394                	lw	a3,0(a5)
    22ea:	fee69fe3          	bne	a3,a4,22e8 <s25fl128s_rdsr1+0x14>
    22ee:	67a9                	lui	a5,0xa
    22f0:	4788                	lw	a0,8(a5)
    22f2:	0ff57513          	zext.b	a0,a0
    22f6:	8082                	ret

Disassembly of section .text.s25fl128s_rdsr2:

000022f8 <s25fl128s_rdsr2>:
    22f8:	800007b7          	lui	a5,0x80000
    22fc:	10778793          	addi	a5,a5,263 # 80000107 <__GNU_EH_FRAME_HDR+0x7fffd67f>
    2300:	6729                	lui	a4,0xa
    2302:	c31c                	sw	a5,0(a4)
    2304:	67a9                	lui	a5,0xa
    2306:	02878793          	addi	a5,a5,40 # a028 <__GNU_EH_FRAME_HDR+0x75a0>
    230a:	4705                	li	a4,1
    230c:	4394                	lw	a3,0(a5)
    230e:	fee69fe3          	bne	a3,a4,230c <s25fl128s_rdsr2+0x14>
    2312:	67a9                	lui	a5,0xa
    2314:	4788                	lw	a0,8(a5)
    2316:	0ff57513          	zext.b	a0,a0
    231a:	8082                	ret

Disassembly of section .text.s25fl128s_rdcr:

0000231c <s25fl128s_rdcr>:
    231c:	800007b7          	lui	a5,0x80000
    2320:	13578793          	addi	a5,a5,309 # 80000135 <__GNU_EH_FRAME_HDR+0x7fffd6ad>
    2324:	6729                	lui	a4,0xa
    2326:	c31c                	sw	a5,0(a4)
    2328:	67a9                	lui	a5,0xa
    232a:	02878793          	addi	a5,a5,40 # a028 <__GNU_EH_FRAME_HDR+0x75a0>
    232e:	4705                	li	a4,1
    2330:	4394                	lw	a3,0(a5)
    2332:	fee69fe3          	bne	a3,a4,2330 <s25fl128s_rdcr+0x14>
    2336:	67a9                	lui	a5,0xa
    2338:	4788                	lw	a0,8(a5)
    233a:	0ff57513          	zext.b	a0,a0
    233e:	8082                	ret

Disassembly of section .text.s25fl128s_read_id:

00002340 <s25fl128s_read_id>:
    2340:	67a9                	lui	a5,0xa
    2342:	c3c8                	sw	a0,4(a5)
    2344:	800127b7          	lui	a5,0x80012
    2348:	99078793          	addi	a5,a5,-1648 # 80011990 <__GNU_EH_FRAME_HDR+0x8000ef08>
    234c:	6729                	lui	a4,0xa
    234e:	c31c                	sw	a5,0(a4)
    2350:	67a9                	lui	a5,0xa
    2352:	02878793          	addi	a5,a5,40 # a028 <__GNU_EH_FRAME_HDR+0x75a0>
    2356:	4705                	li	a4,1
    2358:	4394                	lw	a3,0(a5)
    235a:	fee69fe3          	bne	a3,a4,2358 <s25fl128s_read_id+0x18>
    235e:	67a9                	lui	a5,0xa
    2360:	4788                	lw	a0,8(a5)
    2362:	0542                	slli	a0,a0,0x10
    2364:	8141                	srli	a0,a0,0x10
    2366:	8082                	ret

Disassembly of section .text.s25fl128s_res:

00002368 <s25fl128s_res>:
    2368:	800027b7          	lui	a5,0x80002
    236c:	9ab78793          	addi	a5,a5,-1621 # 800019ab <__GNU_EH_FRAME_HDR+0x7fffef23>
    2370:	6729                	lui	a4,0xa
    2372:	c31c                	sw	a5,0(a4)
    2374:	67a9                	lui	a5,0xa
    2376:	02878793          	addi	a5,a5,40 # a028 <__GNU_EH_FRAME_HDR+0x75a0>
    237a:	4705                	li	a4,1
    237c:	4394                	lw	a3,0(a5)
    237e:	fee69fe3          	bne	a3,a4,237c <s25fl128s_res+0x14>
    2382:	67a9                	lui	a5,0xa
    2384:	4788                	lw	a0,8(a5)
    2386:	0ff57513          	zext.b	a0,a0
    238a:	8082                	ret

Disassembly of section .text.s25fl128s_wrr:

0000238c <s25fl128s_wrr>:
    238c:	67a9                	lui	a5,0xa
    238e:	c788                	sw	a0,8(a5)
    2390:	800107b7          	lui	a5,0x80010
    2394:	50178793          	addi	a5,a5,1281 # 80010501 <__GNU_EH_FRAME_HDR+0x8000da79>
    2398:	6729                	lui	a4,0xa
    239a:	c31c                	sw	a5,0(a4)
    239c:	67a9                	lui	a5,0xa
    239e:	02878793          	addi	a5,a5,40 # a028 <__GNU_EH_FRAME_HDR+0x75a0>
    23a2:	4705                	li	a4,1
    23a4:	4394                	lw	a3,0(a5)
    23a6:	fee69fe3          	bne	a3,a4,23a4 <s25fl128s_wrr+0x18>
    23aa:	8082                	ret

Disassembly of section .text.s25fl128s_read:

000023ac <s25fl128s_read>:
    23ac:	fff60793          	addi	a5,a2,-1
    23b0:	80002737          	lui	a4,0x80002
    23b4:	90370713          	addi	a4,a4,-1789 # 80001903 <__GNU_EH_FRAME_HDR+0x7fffee7b>
    23b8:	07c2                	slli	a5,a5,0x10
    23ba:	97ba                	add	a5,a5,a4
    23bc:	6729                	lui	a4,0xa
    23be:	c348                	sw	a0,4(a4)
    23c0:	6729                	lui	a4,0xa
    23c2:	c31c                	sw	a5,0(a4)
    23c4:	67a9                	lui	a5,0xa
    23c6:	02878793          	addi	a5,a5,40 # a028 <__GNU_EH_FRAME_HDR+0x75a0>
    23ca:	4705                	li	a4,1
    23cc:	4394                	lw	a3,0(a5)
    23ce:	fee69fe3          	bne	a3,a4,23cc <s25fl128s_read+0x20>
    23d2:	060d                	addi	a2,a2,3
    23d4:	6729                	lui	a4,0xa
    23d6:	9a71                	andi	a2,a2,-4
    23d8:	4781                	li	a5,0
    23da:	0721                	addi	a4,a4,8 # a008 <__GNU_EH_FRAME_HDR+0x7580>
    23dc:	00c79363          	bne	a5,a2,23e2 <s25fl128s_read+0x36>
    23e0:	8082                	ret
    23e2:	00e786b3          	add	a3,a5,a4
    23e6:	4288                	lw	a0,0(a3)
    23e8:	00f586b3          	add	a3,a1,a5
    23ec:	0791                	addi	a5,a5,4
    23ee:	c288                	sw	a0,0(a3)
    23f0:	b7f5                	j	23dc <s25fl128s_read+0x30>

Disassembly of section .text.s25fl128s_pp:

000023f2 <s25fl128s_pp>:
    23f2:	fff60793          	addi	a5,a2,-1
    23f6:	80002737          	lui	a4,0x80002
    23fa:	d0270713          	addi	a4,a4,-766 # 80001d02 <__GNU_EH_FRAME_HDR+0x7ffff27a>
    23fe:	07c2                	slli	a5,a5,0x10
    2400:	97ba                	add	a5,a5,a4
    2402:	060d                	addi	a2,a2,3
    2404:	6729                	lui	a4,0xa
    2406:	66a9                	lui	a3,0xa
    2408:	c348                	sw	a0,4(a4)
    240a:	9a71                	andi	a2,a2,-4
    240c:	4701                	li	a4,0
    240e:	06a1                	addi	a3,a3,8 # a008 <__GNU_EH_FRAME_HDR+0x7580>
    2410:	00c71c63          	bne	a4,a2,2428 <s25fl128s_pp+0x36>
    2414:	6729                	lui	a4,0xa
    2416:	c31c                	sw	a5,0(a4)
    2418:	67a9                	lui	a5,0xa
    241a:	02878793          	addi	a5,a5,40 # a028 <__GNU_EH_FRAME_HDR+0x75a0>
    241e:	4705                	li	a4,1
    2420:	4394                	lw	a3,0(a5)
    2422:	fee69fe3          	bne	a3,a4,2420 <s25fl128s_pp+0x2e>
    2426:	8082                	ret
    2428:	00e58833          	add	a6,a1,a4
    242c:	00082803          	lw	a6,0(a6)
    2430:	00d70533          	add	a0,a4,a3
    2434:	0711                	addi	a4,a4,4 # a004 <__GNU_EH_FRAME_HDR+0x757c>
    2436:	01052023          	sw	a6,0(a0)
    243a:	bfd9                	j	2410 <s25fl128s_pp+0x1e>

Disassembly of section .text.s25fl128s_se:

0000243c <s25fl128s_se>:
    243c:	67a9                	lui	a5,0xa
    243e:	c788                	sw	a0,8(a5)
    2440:	800207b7          	lui	a5,0x80020
    2444:	5d878793          	addi	a5,a5,1496 # 800205d8 <__GNU_EH_FRAME_HDR+0x8001db50>
    2448:	6729                	lui	a4,0xa
    244a:	c31c                	sw	a5,0(a4)
    244c:	67a9                	lui	a5,0xa
    244e:	02878793          	addi	a5,a5,40 # a028 <__GNU_EH_FRAME_HDR+0x75a0>
    2452:	4705                	li	a4,1
    2454:	4394                	lw	a3,0(a5)
    2456:	fee69fe3          	bne	a3,a4,2454 <s25fl128s_se+0x18>
    245a:	8082                	ret

Disassembly of section .text.s25fl128s_dor:

0000245c <s25fl128s_dor>:
    245c:	fff60793          	addi	a5,a2,-1
    2460:	80002737          	lui	a4,0x80002
    2464:	23b70713          	addi	a4,a4,571 # 8000223b <__GNU_EH_FRAME_HDR+0x7ffff7b3>
    2468:	07c2                	slli	a5,a5,0x10
    246a:	97ba                	add	a5,a5,a4
    246c:	6729                	lui	a4,0xa
    246e:	c348                	sw	a0,4(a4)
    2470:	6729                	lui	a4,0xa
    2472:	c31c                	sw	a5,0(a4)
    2474:	67a9                	lui	a5,0xa
    2476:	02878793          	addi	a5,a5,40 # a028 <__GNU_EH_FRAME_HDR+0x75a0>
    247a:	4705                	li	a4,1
    247c:	4394                	lw	a3,0(a5)
    247e:	fee69fe3          	bne	a3,a4,247c <s25fl128s_dor+0x20>
    2482:	060d                	addi	a2,a2,3
    2484:	6729                	lui	a4,0xa
    2486:	9a71                	andi	a2,a2,-4
    2488:	4781                	li	a5,0
    248a:	0721                	addi	a4,a4,8 # a008 <__GNU_EH_FRAME_HDR+0x7580>
    248c:	00c79363          	bne	a5,a2,2492 <s25fl128s_dor+0x36>
    2490:	8082                	ret
    2492:	00e786b3          	add	a3,a5,a4
    2496:	4288                	lw	a0,0(a3)
    2498:	00f586b3          	add	a3,a1,a5
    249c:	0791                	addi	a5,a5,4
    249e:	c288                	sw	a0,0(a3)
    24a0:	b7f5                	j	248c <s25fl128s_dor+0x30>

Disassembly of section .text.s25fl128s_qor:

000024a2 <s25fl128s_qor>:
    24a2:	fff60793          	addi	a5,a2,-1
    24a6:	80002737          	lui	a4,0x80002
    24aa:	36b70713          	addi	a4,a4,875 # 8000236b <__GNU_EH_FRAME_HDR+0x7ffff8e3>
    24ae:	07c2                	slli	a5,a5,0x10
    24b0:	97ba                	add	a5,a5,a4
    24b2:	6729                	lui	a4,0xa
    24b4:	c348                	sw	a0,4(a4)
    24b6:	6729                	lui	a4,0xa
    24b8:	c31c                	sw	a5,0(a4)
    24ba:	67a9                	lui	a5,0xa
    24bc:	02878793          	addi	a5,a5,40 # a028 <__GNU_EH_FRAME_HDR+0x75a0>
    24c0:	4705                	li	a4,1
    24c2:	4394                	lw	a3,0(a5)
    24c4:	fee69fe3          	bne	a3,a4,24c2 <s25fl128s_qor+0x20>
    24c8:	060d                	addi	a2,a2,3
    24ca:	6729                	lui	a4,0xa
    24cc:	9a71                	andi	a2,a2,-4
    24ce:	4781                	li	a5,0
    24d0:	0721                	addi	a4,a4,8 # a008 <__GNU_EH_FRAME_HDR+0x7580>
    24d2:	00c79363          	bne	a5,a2,24d8 <s25fl128s_qor+0x36>
    24d6:	8082                	ret
    24d8:	00e786b3          	add	a3,a5,a4
    24dc:	4288                	lw	a0,0(a3)
    24de:	00f586b3          	add	a3,a1,a5
    24e2:	0791                	addi	a5,a5,4
    24e4:	c288                	sw	a0,0(a3)
    24e6:	b7f5                	j	24d2 <s25fl128s_qor+0x30>

Disassembly of section .text.s25fl128s_qpp:

000024e8 <s25fl128s_qpp>:
    24e8:	fff60793          	addi	a5,a2,-1
    24ec:	80002737          	lui	a4,0x80002
    24f0:	f3270713          	addi	a4,a4,-206 # 80001f32 <__GNU_EH_FRAME_HDR+0x7ffff4aa>
    24f4:	07c2                	slli	a5,a5,0x10
    24f6:	97ba                	add	a5,a5,a4
    24f8:	6729                	lui	a4,0xa
    24fa:	c348                	sw	a0,4(a4)
    24fc:	060d                	addi	a2,a2,3
    24fe:	6729                	lui	a4,0xa
    2500:	c31c                	sw	a5,0(a4)
    2502:	9a71                	andi	a2,a2,-4
    2504:	4781                	li	a5,0
    2506:	0721                	addi	a4,a4,8 # a008 <__GNU_EH_FRAME_HDR+0x7580>
    2508:	00c79a63          	bne	a5,a2,251c <s25fl128s_qpp+0x34>
    250c:	67a9                	lui	a5,0xa
    250e:	02878793          	addi	a5,a5,40 # a028 <__GNU_EH_FRAME_HDR+0x75a0>
    2512:	4705                	li	a4,1
    2514:	4394                	lw	a3,0(a5)
    2516:	fee69fe3          	bne	a3,a4,2514 <s25fl128s_qpp+0x2c>
    251a:	8082                	ret
    251c:	00f58533          	add	a0,a1,a5
    2520:	4108                	lw	a0,0(a0)
    2522:	00e786b3          	add	a3,a5,a4
    2526:	0791                	addi	a5,a5,4
    2528:	c288                	sw	a0,0(a3)
    252a:	bff9                	j	2508 <s25fl128s_qpp+0x20>

Disassembly of section .text.qspi_custom_write:

0000252c <qspi_custom_write>:
    252c:	800008b7          	lui	a7,0x80000
    2530:	0866                	slli	a6,a6,0x19
    2532:	40088893          	addi	a7,a7,1024 # 80000400 <__GNU_EH_FRAME_HDR+0x7fffd978>
    2536:	072e                	slli	a4,a4,0xb
    2538:	9846                	add	a6,a6,a7
    253a:	983a                	add	a6,a6,a4
    253c:	fff78713          	addi	a4,a5,-1
    2540:	0742                	slli	a4,a4,0x10
    2542:	983a                	add	a6,a6,a4
    2544:	06a2                	slli	a3,a3,0x8
    2546:	9836                	add	a6,a6,a3
    2548:	6729                	lui	a4,0xa
    254a:	0ff67613          	zext.b	a2,a2
    254e:	078d                	addi	a5,a5,3
    2550:	66a9                	lui	a3,0xa
    2552:	c348                	sw	a0,4(a4)
    2554:	9832                	add	a6,a6,a2
    2556:	9bf1                	andi	a5,a5,-4
    2558:	4701                	li	a4,0
    255a:	06a1                	addi	a3,a3,8 # a008 <__GNU_EH_FRAME_HDR+0x7580>
    255c:	00e79c63          	bne	a5,a4,2574 <qspi_custom_write+0x48>
    2560:	67a9                	lui	a5,0xa
    2562:	0107a023          	sw	a6,0(a5) # a000 <__GNU_EH_FRAME_HDR+0x7578>
    2566:	4705                	li	a4,1
    2568:	02878793          	addi	a5,a5,40
    256c:	4394                	lw	a3,0(a5)
    256e:	fee69fe3          	bne	a3,a4,256c <qspi_custom_write+0x40>
    2572:	8082                	ret
    2574:	00e58533          	add	a0,a1,a4
    2578:	4108                	lw	a0,0(a0)
    257a:	00d70633          	add	a2,a4,a3
    257e:	0711                	addi	a4,a4,4 # a004 <__GNU_EH_FRAME_HDR+0x757c>
    2580:	c208                	sw	a0,0(a2)
    2582:	bfe9                	j	255c <qspi_custom_write+0x30>

Disassembly of section .text.qspi_custom_read:

00002584 <qspi_custom_read>:
    2584:	0866                	slli	a6,a6,0x19
    2586:	800008b7          	lui	a7,0x80000
    258a:	072e                	slli	a4,a4,0xb
    258c:	9846                	add	a6,a6,a7
    258e:	983a                	add	a6,a6,a4
    2590:	fff78713          	addi	a4,a5,-1
    2594:	0742                	slli	a4,a4,0x10
    2596:	983a                	add	a6,a6,a4
    2598:	06a2                	slli	a3,a3,0x8
    259a:	9836                	add	a6,a6,a3
    259c:	6729                	lui	a4,0xa
    259e:	0ff67613          	zext.b	a2,a2
    25a2:	c348                	sw	a0,4(a4)
    25a4:	9832                	add	a6,a6,a2
    25a6:	6729                	lui	a4,0xa
    25a8:	01072023          	sw	a6,0(a4) # a000 <__GNU_EH_FRAME_HDR+0x7578>
    25ac:	4685                	li	a3,1
    25ae:	02870713          	addi	a4,a4,40
    25b2:	4310                	lw	a2,0(a4)
    25b4:	fed61fe3          	bne	a2,a3,25b2 <qspi_custom_read+0x2e>
    25b8:	078d                	addi	a5,a5,3
    25ba:	66a9                	lui	a3,0xa
    25bc:	9bf1                	andi	a5,a5,-4
    25be:	4701                	li	a4,0
    25c0:	06a1                	addi	a3,a3,8 # a008 <__GNU_EH_FRAME_HDR+0x7580>
    25c2:	00e79363          	bne	a5,a4,25c8 <qspi_custom_read+0x44>
    25c6:	8082                	ret
    25c8:	00d70633          	add	a2,a4,a3
    25cc:	4208                	lw	a0,0(a2)
    25ce:	00e58633          	add	a2,a1,a4
    25d2:	0711                	addi	a4,a4,4
    25d4:	c208                	sw	a0,0(a2)
    25d6:	b7f5                	j	25c2 <qspi_custom_read+0x3e>

Disassembly of section .text.timer_read_counter:

000025d8 <timer_read_counter>:
    25d8:	67b1                	lui	a5,0xc
    25da:	4bc8                	lw	a0,20(a5)
    25dc:	8082                	ret

Disassembly of section .text.timer_read_event:

000025de <timer_read_event>:
    25de:	67b1                	lui	a5,0xc
    25e0:	4f88                	lw	a0,24(a5)
    25e2:	8082                	ret

Disassembly of section .text.timer_clear_counter:

000025e4 <timer_clear_counter>:
    25e4:	67b1                	lui	a5,0xc
    25e6:	4705                	li	a4,1
    25e8:	c798                	sw	a4,8(a5)
    25ea:	8082                	ret

Disassembly of section .text.timer_clear_event:

000025ec <timer_clear_event>:
    25ec:	67b1                	lui	a5,0xc
    25ee:	4705                	li	a4,1
    25f0:	cfd8                	sw	a4,28(a5)
    25f2:	8082                	ret

Disassembly of section .text.timer_enable:

000025f4 <timer_enable>:
    25f4:	67b1                	lui	a5,0xc
    25f6:	4705                	li	a4,1
    25f8:	c7d8                	sw	a4,12(a5)
    25fa:	8082                	ret

Disassembly of section .text.timer_disable:

000025fc <timer_disable>:
    25fc:	67b1                	lui	a5,0xc
    25fe:	0007a623          	sw	zero,12(a5) # c00c <__GNU_EH_FRAME_HDR+0x9584>
    2602:	8082                	ret

Disassembly of section .text.timer_conf:

00002604 <timer_conf>:
    2604:	67b1                	lui	a5,0xc
    2606:	c388                	sw	a0,0(a5)
    2608:	c3cc                	sw	a1,4(a5)
    260a:	67b1                	lui	a5,0xc
    260c:	cb90                	sw	a2,16(a5)
    260e:	08000513          	li	a0,128
    2612:	6589                	lui	a1,0x2
    2614:	10058593          	addi	a1,a1,256 # 2100 <interrupt>
    2618:	30559073          	csrw	mtvec,a1
    261c:	30046073          	csrsi	mstatus,8
    2620:	30452073          	csrs	mie,a0
    2624:	8082                	ret

Disassembly of section .text.gpio_write:

00002626 <gpio_write>:
    2626:	67c1                	lui	a5,0x10
    2628:	c3c8                	sw	a0,4(a5)
    262a:	8082                	ret

Disassembly of section .text.gpio_read:

0000262c <gpio_read>:
    262c:	67c1                	lui	a5,0x10
    262e:	4388                	lw	a0,0(a5)
    2630:	0542                	slli	a0,a0,0x10
    2632:	8141                	srli	a0,a0,0x10
    2634:	8082                	ret

Disassembly of section .text.instr_mem_write:

00002636 <instr_mem_write>:
    2636:	050a                	slli	a0,a0,0x2
    2638:	6791                	lui	a5,0x4
    263a:	97aa                	add	a5,a5,a0
    263c:	c38c                	sw	a1,0(a5)
    263e:	8082                	ret
