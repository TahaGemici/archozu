
a.out:     file format elf32-littleriscv


Disassembly of section .text:

00002000 <main>:
    2000:	4605                	li	a2,1
    2002:	4581                	li	a1,0
    2004:	557d                	li	a0,-1
    2006:	6939                	lui	s2,0xe
    2008:	69c1                	lui	s3,0x10
    200a:	2591                	jal	264e <timer_conf>
    200c:	6a41                	lui	s4,0x10
    200e:	0931                	addi	s2,s2,12 # e00c <__GNU_EH_FRAME_HDR+0xb464>
    2010:	0991                	addi	s3,s3,4 # 10004 <__GNU_EH_FRAME_HDR+0xd45c>
    2012:	4b11                	li	s6,4
    2014:	4b95                	li	s7,5
    2016:	000a2783          	lw	a5,0(s4) # 10000 <__GNU_EH_FRAME_HDR+0xd458>
    201a:	0c002a23          	sw	zero,212(zero) # d4 <state>
    201e:	0ff7f793          	zext.b	a5,a5
    2022:	0cf02c23          	sw	a5,216(zero) # d8 <tmp>
    2026:	e381                	bnez	a5,2026 <main+0x26>
    2028:	0d002783          	lw	a5,208(zero) # d0 <old_state>
    202c:	c399                	beqz	a5,2032 <main+0x32>
    202e:	4501                	li	a0,0
    2030:	25b9                	jal	267e <usb_conf>
    2032:	0d402783          	lw	a5,212(zero) # d4 <state>
    2036:	0cf02823          	sw	a5,208(zero) # d0 <old_state>
    203a:	00092783          	lw	a5,0(s2)
    203e:	8b85                	andi	a5,a5,1
    2040:	00f9a023          	sw	a5,0(s3)
    2044:	0d402783          	lw	a5,212(zero) # d4 <state>
    2048:	05678463          	beq	a5,s6,2090 <main+0x90>
    204c:	02fb6a63          	bltu	s6,a5,2080 <main+0x80>
    2050:	4705                	li	a4,1
    2052:	02e78963          	beq	a5,a4,2084 <main+0x84>
    2056:	4709                	li	a4,2
    2058:	fae79fe3          	bne	a5,a4,2016 <main+0x16>
    205c:	4501                	li	a0,0
    205e:	2d05                	jal	268e <usb_rw>
    2060:	4c81                	li	s9,0
    2062:	14000d13          	li	s10,320
    2066:	0b400d93          	li	s11,180
    206a:	4c01                	li	s8,0
    206c:	019c0533          	add	a0,s8,s9
    2070:	0c05                	addi	s8,s8,1
    2072:	2d31                	jal	268e <usb_rw>
    2074:	ffac1ce3          	bne	s8,s10,206c <main+0x6c>
    2078:	0c85                	addi	s9,s9,1
    207a:	ffbc98e3          	bne	s9,s11,206a <main+0x6a>
    207e:	bf61                	j	2016 <main+0x16>
    2080:	f9779be3          	bne	a5,s7,2016 <main+0x16>
    2084:	0d802503          	lw	a0,216(zero) # d8 <tmp>
    2088:	2519                	jal	268e <usb_rw>
    208a:	0ca02c23          	sw	a0,216(zero) # d8 <tmp>
    208e:	b761                	j	2016 <main+0x16>
    2090:	000a2783          	lw	a5,0(s4)
    2094:	07c2                	slli	a5,a5,0x10
    2096:	83c1                	srli	a5,a5,0x10
    2098:	83a1                	srli	a5,a5,0x8
    209a:	0cf02c23          	sw	a5,216(zero) # d8 <tmp>
    209e:	bfa5                	j	2016 <main+0x16>
	...

00002200 <interrupt>:
    2200:	7115                	addi	sp,sp,-224
    2202:	df3a                	sw	a4,188(sp)
    2204:	dd3e                	sw	a5,184(sp)
    2206:	cf86                	sw	ra,220(sp)
    2208:	cd96                	sw	t0,216(sp)
    220a:	cb9a                	sw	t1,212(sp)
    220c:	c99e                	sw	t2,208(sp)
    220e:	c7aa                	sw	a0,204(sp)
    2210:	c5ae                	sw	a1,200(sp)
    2212:	c3b2                	sw	a2,196(sp)
    2214:	c1b6                	sw	a3,192(sp)
    2216:	db42                	sw	a6,180(sp)
    2218:	d946                	sw	a7,176(sp)
    221a:	d772                	sw	t3,172(sp)
    221c:	d576                	sw	t4,168(sp)
    221e:	d37a                	sw	t5,164(sp)
    2220:	d17e                	sw	t6,160(sp)
    2222:	ad02                	fsd	ft0,152(sp)
    2224:	a906                	fsd	ft1,144(sp)
    2226:	a50a                	fsd	ft2,136(sp)
    2228:	a10e                	fsd	ft3,128(sp)
    222a:	bc92                	fsd	ft4,120(sp)
    222c:	b896                	fsd	ft5,112(sp)
    222e:	b49a                	fsd	ft6,104(sp)
    2230:	b09e                	fsd	ft7,96(sp)
    2232:	acaa                	fsd	fa0,88(sp)
    2234:	a8ae                	fsd	fa1,80(sp)
    2236:	a4b2                	fsd	fa2,72(sp)
    2238:	a0b6                	fsd	fa3,64(sp)
    223a:	bc3a                	fsd	fa4,56(sp)
    223c:	b83e                	fsd	fa5,48(sp)
    223e:	b442                	fsd	fa6,40(sp)
    2240:	b046                	fsd	fa7,32(sp)
    2242:	ac72                	fsd	ft8,24(sp)
    2244:	0d402703          	lw	a4,212(zero) # d4 <state>
    2248:	a876                	fsd	ft9,16(sp)
    224a:	a47a                	fsd	ft10,8(sp)
    224c:	a07e                	fsd	ft11,0(sp)
    224e:	4791                	li	a5,4
    2250:	00f71563          	bne	a4,a5,225a <interrupt+0x5a>
    2254:	0d802503          	lw	a0,216(zero) # d8 <tmp>
    2258:	291d                	jal	268e <usb_rw>
    225a:	40fe                	lw	ra,220(sp)
    225c:	42ee                	lw	t0,216(sp)
    225e:	435e                	lw	t1,212(sp)
    2260:	43ce                	lw	t2,208(sp)
    2262:	453e                	lw	a0,204(sp)
    2264:	45ae                	lw	a1,200(sp)
    2266:	461e                	lw	a2,196(sp)
    2268:	468e                	lw	a3,192(sp)
    226a:	577a                	lw	a4,188(sp)
    226c:	57ea                	lw	a5,184(sp)
    226e:	585a                	lw	a6,180(sp)
    2270:	58ca                	lw	a7,176(sp)
    2272:	5e3a                	lw	t3,172(sp)
    2274:	5eaa                	lw	t4,168(sp)
    2276:	5f1a                	lw	t5,164(sp)
    2278:	5f8a                	lw	t6,160(sp)
    227a:	206a                	fld	ft0,152(sp)
    227c:	20ca                	fld	ft1,144(sp)
    227e:	212a                	fld	ft2,136(sp)
    2280:	218a                	fld	ft3,128(sp)
    2282:	3266                	fld	ft4,120(sp)
    2284:	32c6                	fld	ft5,112(sp)
    2286:	3326                	fld	ft6,104(sp)
    2288:	3386                	fld	ft7,96(sp)
    228a:	2566                	fld	fa0,88(sp)
    228c:	25c6                	fld	fa1,80(sp)
    228e:	2626                	fld	fa2,72(sp)
    2290:	2686                	fld	fa3,64(sp)
    2292:	3762                	fld	fa4,56(sp)
    2294:	37c2                	fld	fa5,48(sp)
    2296:	3822                	fld	fa6,40(sp)
    2298:	3882                	fld	fa7,32(sp)
    229a:	2e62                	fld	ft8,24(sp)
    229c:	2ec2                	fld	ft9,16(sp)
    229e:	2f22                	fld	ft10,8(sp)
    22a0:	2f82                	fld	ft11,0(sp)
    22a2:	612d                	addi	sp,sp,224
    22a4:	30200073          	mret

Disassembly of section .text.uart_conf:

000022a8 <uart_conf>:
    22a8:	039387b7          	lui	a5,0x3938
    22ac:	70078793          	addi	a5,a5,1792 # 3938700 <__GNU_EH_FRAME_HDR+0x3935b58>
    22b0:	02a7d7b3          	divu	a5,a5,a0
    22b4:	6719                	lui	a4,0x6
    22b6:	17fd                	addi	a5,a5,-1
    22b8:	c31c                	sw	a5,0(a4)
    22ba:	6799                	lui	a5,0x6
    22bc:	c3cc                	sw	a1,4(a5)
    22be:	8082                	ret

Disassembly of section .text.uart_read:

000022c0 <uart_read>:
    22c0:	6799                	lui	a5,0x6
    22c2:	07c1                	addi	a5,a5,16 # 6010 <__GNU_EH_FRAME_HDR+0x3468>
    22c4:	4709                	li	a4,2
    22c6:	4394                	lw	a3,0(a5)
    22c8:	fee69fe3          	bne	a3,a4,22c6 <uart_read+0x6>
    22cc:	6719                	lui	a4,0x6
    22ce:	4708                	lw	a0,8(a4)
    22d0:	0007a023          	sw	zero,0(a5)
    22d4:	0ff57513          	zext.b	a0,a0
    22d8:	8082                	ret

Disassembly of section .text.uart_write:

000022da <uart_write>:
    22da:	6799                	lui	a5,0x6
    22dc:	c7c8                	sw	a0,12(a5)
    22de:	6799                	lui	a5,0x6
    22e0:	4705                	li	a4,1
    22e2:	07c1                	addi	a5,a5,16 # 6010 <__GNU_EH_FRAME_HDR+0x3468>
    22e4:	c398                	sw	a4,0(a5)
    22e6:	4715                	li	a4,5
    22e8:	4394                	lw	a3,0(a5)
    22ea:	fee69fe3          	bne	a3,a4,22e8 <uart_write+0xe>
    22ee:	0007a023          	sw	zero,0(a5)
    22f2:	8082                	ret

Disassembly of section .text.i2c_conf:

000022f4 <i2c_conf>:
    22f4:	67a1                	lui	a5,0x8
    22f6:	c3c8                	sw	a0,4(a5)
    22f8:	8082                	ret

Disassembly of section .text.i2c_write:

000022fa <i2c_write>:
    22fa:	67a1                	lui	a5,0x8
    22fc:	c38c                	sw	a1,0(a5)
    22fe:	c7c8                	sw	a0,12(a5)
    2300:	67a1                	lui	a5,0x8
    2302:	4705                	li	a4,1
    2304:	07c1                	addi	a5,a5,16 # 8010 <__GNU_EH_FRAME_HDR+0x5468>
    2306:	c398                	sw	a4,0(a5)
    2308:	470d                	li	a4,3
    230a:	4394                	lw	a3,0(a5)
    230c:	fee69fe3          	bne	a3,a4,230a <i2c_write+0x10>
    2310:	0007a023          	sw	zero,0(a5)
    2314:	8082                	ret

Disassembly of section .text.i2c_read:

00002316 <i2c_read>:
    2316:	67a1                	lui	a5,0x8
    2318:	c388                	sw	a0,0(a5)
    231a:	4711                	li	a4,4
    231c:	07c1                	addi	a5,a5,16 # 8010 <__GNU_EH_FRAME_HDR+0x5468>
    231e:	c398                	sw	a4,0(a5)
    2320:	4731                	li	a4,12
    2322:	4394                	lw	a3,0(a5)
    2324:	fee69fe3          	bne	a3,a4,2322 <i2c_read+0xc>
    2328:	0007a023          	sw	zero,0(a5)
    232c:	67a1                	lui	a5,0x8
    232e:	4788                	lw	a0,8(a5)
    2330:	8082                	ret

Disassembly of section .text.qspi_wait:

00002332 <qspi_wait>:
    2332:	67a9                	lui	a5,0xa
    2334:	02878793          	addi	a5,a5,40 # a028 <__GNU_EH_FRAME_HDR+0x7480>
    2338:	4705                	li	a4,1
    233a:	4394                	lw	a3,0(a5)
    233c:	fee69fe3          	bne	a3,a4,233a <qspi_wait+0x8>
    2340:	67a9                	lui	a5,0xa
    2342:	02878793          	addi	a5,a5,40 # a028 <__GNU_EH_FRAME_HDR+0x7480>
    2346:	4705                	li	a4,1
    2348:	4394                	lw	a3,0(a5)
    234a:	fee69fe3          	bne	a3,a4,2348 <qspi_wait+0x16>
    234e:	8082                	ret

Disassembly of section .text.qspi_read_array:

00002350 <qspi_read_array>:
    2350:	058d                	addi	a1,a1,3
    2352:	6729                	lui	a4,0xa
    2354:	99f1                	andi	a1,a1,-4
    2356:	4781                	li	a5,0
    2358:	0721                	addi	a4,a4,8 # a008 <__GNU_EH_FRAME_HDR+0x7460>
    235a:	00b79363          	bne	a5,a1,2360 <qspi_read_array+0x10>
    235e:	8082                	ret
    2360:	00e786b3          	add	a3,a5,a4
    2364:	4290                	lw	a2,0(a3)
    2366:	00f506b3          	add	a3,a0,a5
    236a:	0791                	addi	a5,a5,4
    236c:	c290                	sw	a2,0(a3)
    236e:	b7f5                	j	235a <qspi_read_array+0xa>

Disassembly of section .text.qspi_write_array:

00002370 <qspi_write_array>:
    2370:	058d                	addi	a1,a1,3
    2372:	6729                	lui	a4,0xa
    2374:	99f1                	andi	a1,a1,-4
    2376:	4781                	li	a5,0
    2378:	0721                	addi	a4,a4,8 # a008 <__GNU_EH_FRAME_HDR+0x7460>
    237a:	00b79363          	bne	a5,a1,2380 <qspi_write_array+0x10>
    237e:	8082                	ret
    2380:	00f50633          	add	a2,a0,a5
    2384:	4210                	lw	a2,0(a2)
    2386:	00e786b3          	add	a3,a5,a4
    238a:	0791                	addi	a5,a5,4
    238c:	c290                	sw	a2,0(a3)
    238e:	b7f5                	j	237a <qspi_write_array+0xa>

Disassembly of section .text.s25fl128s_wren:

00002390 <s25fl128s_wren>:
    2390:	800007b7          	lui	a5,0x80000
    2394:	0799                	addi	a5,a5,6 # 80000006 <__GNU_EH_FRAME_HDR+0x7fffd45e>
    2396:	6729                	lui	a4,0xa
    2398:	c31c                	sw	a5,0(a4)
    239a:	bf61                	j	2332 <qspi_wait>

Disassembly of section .text.s25fl128s_wrdi:

0000239c <s25fl128s_wrdi>:
    239c:	800007b7          	lui	a5,0x80000
    23a0:	0791                	addi	a5,a5,4 # 80000004 <__GNU_EH_FRAME_HDR+0x7fffd45c>
    23a2:	6729                	lui	a4,0xa
    23a4:	c31c                	sw	a5,0(a4)
    23a6:	b771                	j	2332 <qspi_wait>

Disassembly of section .text.s25fl128s_clsr:

000023a8 <s25fl128s_clsr>:
    23a8:	800007b7          	lui	a5,0x80000
    23ac:	03078793          	addi	a5,a5,48 # 80000030 <__GNU_EH_FRAME_HDR+0x7fffd488>
    23b0:	6729                	lui	a4,0xa
    23b2:	c31c                	sw	a5,0(a4)
    23b4:	bfbd                	j	2332 <qspi_wait>

Disassembly of section .text.s25fl128s_reset:

000023b6 <s25fl128s_reset>:
    23b6:	800007b7          	lui	a5,0x80000
    23ba:	0f078793          	addi	a5,a5,240 # 800000f0 <__GNU_EH_FRAME_HDR+0x7fffd548>
    23be:	6729                	lui	a4,0xa
    23c0:	c31c                	sw	a5,0(a4)
    23c2:	bf85                	j	2332 <qspi_wait>

Disassembly of section .text.s25fl128s_rdid:

000023c4 <s25fl128s_rdid>:
    23c4:	fff58793          	addi	a5,a1,-1
    23c8:	80000737          	lui	a4,0x80000
    23cc:	1101                	addi	sp,sp,-32
    23ce:	19f70713          	addi	a4,a4,415 # 8000019f <__GNU_EH_FRAME_HDR+0x7fffd5f7>
    23d2:	07c2                	slli	a5,a5,0x10
    23d4:	ce06                	sw	ra,28(sp)
    23d6:	c62a                	sw	a0,12(sp)
    23d8:	c42e                	sw	a1,8(sp)
    23da:	97ba                	add	a5,a5,a4
    23dc:	6729                	lui	a4,0xa
    23de:	c31c                	sw	a5,0(a4)
    23e0:	3f89                	jal	2332 <qspi_wait>
    23e2:	45a2                	lw	a1,8(sp)
    23e4:	4532                	lw	a0,12(sp)
    23e6:	40f2                	lw	ra,28(sp)
    23e8:	6105                	addi	sp,sp,32
    23ea:	b79d                	j	2350 <qspi_read_array>

Disassembly of section .text.s25fl128s_rdsr1:

000023ec <s25fl128s_rdsr1>:
    23ec:	1141                	addi	sp,sp,-16
    23ee:	800007b7          	lui	a5,0x80000
    23f2:	c606                	sw	ra,12(sp)
    23f4:	10578793          	addi	a5,a5,261 # 80000105 <__GNU_EH_FRAME_HDR+0x7fffd55d>
    23f8:	6729                	lui	a4,0xa
    23fa:	c31c                	sw	a5,0(a4)
    23fc:	3f1d                	jal	2332 <qspi_wait>
    23fe:	67a9                	lui	a5,0xa
    2400:	4788                	lw	a0,8(a5)
    2402:	40b2                	lw	ra,12(sp)
    2404:	0ff57513          	zext.b	a0,a0
    2408:	0141                	addi	sp,sp,16
    240a:	8082                	ret

Disassembly of section .text.s25fl128s_rdsr2:

0000240c <s25fl128s_rdsr2>:
    240c:	1141                	addi	sp,sp,-16
    240e:	800007b7          	lui	a5,0x80000
    2412:	c606                	sw	ra,12(sp)
    2414:	10778793          	addi	a5,a5,263 # 80000107 <__GNU_EH_FRAME_HDR+0x7fffd55f>
    2418:	6729                	lui	a4,0xa
    241a:	c31c                	sw	a5,0(a4)
    241c:	3f19                	jal	2332 <qspi_wait>
    241e:	67a9                	lui	a5,0xa
    2420:	4788                	lw	a0,8(a5)
    2422:	40b2                	lw	ra,12(sp)
    2424:	0ff57513          	zext.b	a0,a0
    2428:	0141                	addi	sp,sp,16
    242a:	8082                	ret

Disassembly of section .text.s25fl128s_rdcr:

0000242c <s25fl128s_rdcr>:
    242c:	1141                	addi	sp,sp,-16
    242e:	800007b7          	lui	a5,0x80000
    2432:	c606                	sw	ra,12(sp)
    2434:	13578793          	addi	a5,a5,309 # 80000135 <__GNU_EH_FRAME_HDR+0x7fffd58d>
    2438:	6729                	lui	a4,0xa
    243a:	c31c                	sw	a5,0(a4)
    243c:	3ddd                	jal	2332 <qspi_wait>
    243e:	67a9                	lui	a5,0xa
    2440:	4788                	lw	a0,8(a5)
    2442:	40b2                	lw	ra,12(sp)
    2444:	0ff57513          	zext.b	a0,a0
    2448:	0141                	addi	sp,sp,16
    244a:	8082                	ret

Disassembly of section .text.s25fl128s_read_id:

0000244c <s25fl128s_read_id>:
    244c:	1141                	addi	sp,sp,-16
    244e:	c606                	sw	ra,12(sp)
    2450:	67a9                	lui	a5,0xa
    2452:	c3c8                	sw	a0,4(a5)
    2454:	800127b7          	lui	a5,0x80012
    2458:	99078793          	addi	a5,a5,-1648 # 80011990 <__GNU_EH_FRAME_HDR+0x8000ede8>
    245c:	6729                	lui	a4,0xa
    245e:	c31c                	sw	a5,0(a4)
    2460:	3dc9                	jal	2332 <qspi_wait>
    2462:	67a9                	lui	a5,0xa
    2464:	4788                	lw	a0,8(a5)
    2466:	40b2                	lw	ra,12(sp)
    2468:	0542                	slli	a0,a0,0x10
    246a:	8141                	srli	a0,a0,0x10
    246c:	0141                	addi	sp,sp,16
    246e:	8082                	ret

Disassembly of section .text.s25fl128s_res:

00002470 <s25fl128s_res>:
    2470:	1141                	addi	sp,sp,-16
    2472:	800027b7          	lui	a5,0x80002
    2476:	c606                	sw	ra,12(sp)
    2478:	9ab78793          	addi	a5,a5,-1621 # 800019ab <__GNU_EH_FRAME_HDR+0x7fffee03>
    247c:	6729                	lui	a4,0xa
    247e:	c31c                	sw	a5,0(a4)
    2480:	3d4d                	jal	2332 <qspi_wait>
    2482:	67a9                	lui	a5,0xa
    2484:	4788                	lw	a0,8(a5)
    2486:	40b2                	lw	ra,12(sp)
    2488:	0ff57513          	zext.b	a0,a0
    248c:	0141                	addi	sp,sp,16
    248e:	8082                	ret

Disassembly of section .text.s25fl128s_wrr:

00002490 <s25fl128s_wrr>:
    2490:	67a9                	lui	a5,0xa
    2492:	c788                	sw	a0,8(a5)
    2494:	800107b7          	lui	a5,0x80010
    2498:	50178793          	addi	a5,a5,1281 # 80010501 <__GNU_EH_FRAME_HDR+0x8000d959>
    249c:	6729                	lui	a4,0xa
    249e:	c31c                	sw	a5,0(a4)
    24a0:	bd49                	j	2332 <qspi_wait>

Disassembly of section .text.s25fl128s_read:

000024a2 <s25fl128s_read>:
    24a2:	fff60793          	addi	a5,a2,-1
    24a6:	80002737          	lui	a4,0x80002
    24aa:	1141                	addi	sp,sp,-16
    24ac:	90370713          	addi	a4,a4,-1789 # 80001903 <__GNU_EH_FRAME_HDR+0x7fffed5b>
    24b0:	07c2                	slli	a5,a5,0x10
    24b2:	c422                	sw	s0,8(sp)
    24b4:	c226                	sw	s1,4(sp)
    24b6:	c606                	sw	ra,12(sp)
    24b8:	97ba                	add	a5,a5,a4
    24ba:	6729                	lui	a4,0xa
    24bc:	c348                	sw	a0,4(a4)
    24be:	6729                	lui	a4,0xa
    24c0:	c31c                	sw	a5,0(a4)
    24c2:	84ae                	mv	s1,a1
    24c4:	8432                	mv	s0,a2
    24c6:	35b5                	jal	2332 <qspi_wait>
    24c8:	85a2                	mv	a1,s0
    24ca:	4422                	lw	s0,8(sp)
    24cc:	40b2                	lw	ra,12(sp)
    24ce:	8526                	mv	a0,s1
    24d0:	4492                	lw	s1,4(sp)
    24d2:	0141                	addi	sp,sp,16
    24d4:	bdb5                	j	2350 <qspi_read_array>

Disassembly of section .text.s25fl128s_pp:

000024d6 <s25fl128s_pp>:
    24d6:	1141                	addi	sp,sp,-16
    24d8:	c422                	sw	s0,8(sp)
    24da:	800027b7          	lui	a5,0x80002
    24de:	fff60413          	addi	s0,a2,-1
    24e2:	d0278793          	addi	a5,a5,-766 # 80001d02 <__GNU_EH_FRAME_HDR+0x7ffff15a>
    24e6:	0442                	slli	s0,s0,0x10
    24e8:	c606                	sw	ra,12(sp)
    24ea:	872a                	mv	a4,a0
    24ec:	943e                	add	s0,s0,a5
    24ee:	67a9                	lui	a5,0xa
    24f0:	852e                	mv	a0,a1
    24f2:	c3d8                	sw	a4,4(a5)
    24f4:	85b2                	mv	a1,a2
    24f6:	3dad                	jal	2370 <qspi_write_array>
    24f8:	67a9                	lui	a5,0xa
    24fa:	c380                	sw	s0,0(a5)
    24fc:	4422                	lw	s0,8(sp)
    24fe:	40b2                	lw	ra,12(sp)
    2500:	0141                	addi	sp,sp,16
    2502:	bd05                	j	2332 <qspi_wait>

Disassembly of section .text.s25fl128s_se:

00002504 <s25fl128s_se>:
    2504:	67a9                	lui	a5,0xa
    2506:	c788                	sw	a0,8(a5)
    2508:	800207b7          	lui	a5,0x80020
    250c:	5d878793          	addi	a5,a5,1496 # 800205d8 <__GNU_EH_FRAME_HDR+0x8001da30>
    2510:	6729                	lui	a4,0xa
    2512:	c31c                	sw	a5,0(a4)
    2514:	bd39                	j	2332 <qspi_wait>

Disassembly of section .text.s25fl128s_dor:

00002516 <s25fl128s_dor>:
    2516:	fff60793          	addi	a5,a2,-1
    251a:	80002737          	lui	a4,0x80002
    251e:	1141                	addi	sp,sp,-16
    2520:	23b70713          	addi	a4,a4,571 # 8000223b <__GNU_EH_FRAME_HDR+0x7ffff693>
    2524:	07c2                	slli	a5,a5,0x10
    2526:	c422                	sw	s0,8(sp)
    2528:	c226                	sw	s1,4(sp)
    252a:	c606                	sw	ra,12(sp)
    252c:	97ba                	add	a5,a5,a4
    252e:	6729                	lui	a4,0xa
    2530:	c348                	sw	a0,4(a4)
    2532:	6729                	lui	a4,0xa
    2534:	c31c                	sw	a5,0(a4)
    2536:	84ae                	mv	s1,a1
    2538:	8432                	mv	s0,a2
    253a:	3be5                	jal	2332 <qspi_wait>
    253c:	85a2                	mv	a1,s0
    253e:	4422                	lw	s0,8(sp)
    2540:	40b2                	lw	ra,12(sp)
    2542:	8526                	mv	a0,s1
    2544:	4492                	lw	s1,4(sp)
    2546:	0141                	addi	sp,sp,16
    2548:	b521                	j	2350 <qspi_read_array>

Disassembly of section .text.s25fl128s_qor:

0000254a <s25fl128s_qor>:
    254a:	fff60793          	addi	a5,a2,-1
    254e:	80002737          	lui	a4,0x80002
    2552:	1141                	addi	sp,sp,-16
    2554:	36b70713          	addi	a4,a4,875 # 8000236b <__GNU_EH_FRAME_HDR+0x7ffff7c3>
    2558:	07c2                	slli	a5,a5,0x10
    255a:	c422                	sw	s0,8(sp)
    255c:	c226                	sw	s1,4(sp)
    255e:	c606                	sw	ra,12(sp)
    2560:	97ba                	add	a5,a5,a4
    2562:	6729                	lui	a4,0xa
    2564:	c348                	sw	a0,4(a4)
    2566:	6729                	lui	a4,0xa
    2568:	c31c                	sw	a5,0(a4)
    256a:	84ae                	mv	s1,a1
    256c:	8432                	mv	s0,a2
    256e:	33d1                	jal	2332 <qspi_wait>
    2570:	85a2                	mv	a1,s0
    2572:	4422                	lw	s0,8(sp)
    2574:	40b2                	lw	ra,12(sp)
    2576:	8526                	mv	a0,s1
    2578:	4492                	lw	s1,4(sp)
    257a:	0141                	addi	sp,sp,16
    257c:	bbd1                	j	2350 <qspi_read_array>

Disassembly of section .text.s25fl128s_qpp:

0000257e <s25fl128s_qpp>:
    257e:	fff60793          	addi	a5,a2,-1
    2582:	80002737          	lui	a4,0x80002
    2586:	1141                	addi	sp,sp,-16
    2588:	f3270713          	addi	a4,a4,-206 # 80001f32 <__GNU_EH_FRAME_HDR+0x7ffff38a>
    258c:	07c2                	slli	a5,a5,0x10
    258e:	c606                	sw	ra,12(sp)
    2590:	86aa                	mv	a3,a0
    2592:	97ba                	add	a5,a5,a4
    2594:	6729                	lui	a4,0xa
    2596:	c354                	sw	a3,4(a4)
    2598:	6729                	lui	a4,0xa
    259a:	852e                	mv	a0,a1
    259c:	c31c                	sw	a5,0(a4)
    259e:	85b2                	mv	a1,a2
    25a0:	3bc1                	jal	2370 <qspi_write_array>
    25a2:	40b2                	lw	ra,12(sp)
    25a4:	0141                	addi	sp,sp,16
    25a6:	b371                	j	2332 <qspi_wait>

Disassembly of section .text.qspi_custom_write:

000025a8 <qspi_custom_write>:
    25a8:	88aa                	mv	a7,a0
    25aa:	852e                	mv	a0,a1
    25ac:	85be                	mv	a1,a5
    25ae:	800007b7          	lui	a5,0x80000
    25b2:	40078793          	addi	a5,a5,1024 # 80000400 <__GNU_EH_FRAME_HDR+0x7fffd858>
    25b6:	0866                	slli	a6,a6,0x19
    25b8:	983e                	add	a6,a6,a5
    25ba:	072e                	slli	a4,a4,0xb
    25bc:	fff58793          	addi	a5,a1,-1
    25c0:	1141                	addi	sp,sp,-16
    25c2:	983a                	add	a6,a6,a4
    25c4:	07c2                	slli	a5,a5,0x10
    25c6:	c422                	sw	s0,8(sp)
    25c8:	c606                	sw	ra,12(sp)
    25ca:	983e                	add	a6,a6,a5
    25cc:	06a2                	slli	a3,a3,0x8
    25ce:	67a9                	lui	a5,0xa
    25d0:	0ff67613          	zext.b	a2,a2
    25d4:	9836                	add	a6,a6,a3
    25d6:	0117a223          	sw	a7,4(a5) # a004 <__GNU_EH_FRAME_HDR+0x745c>
    25da:	00c80433          	add	s0,a6,a2
    25de:	3b49                	jal	2370 <qspi_write_array>
    25e0:	67a9                	lui	a5,0xa
    25e2:	c380                	sw	s0,0(a5)
    25e4:	4422                	lw	s0,8(sp)
    25e6:	40b2                	lw	ra,12(sp)
    25e8:	0141                	addi	sp,sp,16
    25ea:	b3a1                	j	2332 <qspi_wait>

Disassembly of section .text.qspi_custom_read:

000025ec <qspi_custom_read>:
    25ec:	1141                	addi	sp,sp,-16
    25ee:	c422                	sw	s0,8(sp)
    25f0:	0866                	slli	a6,a6,0x19
    25f2:	843e                	mv	s0,a5
    25f4:	800007b7          	lui	a5,0x80000
    25f8:	983e                	add	a6,a6,a5
    25fa:	072e                	slli	a4,a4,0xb
    25fc:	fff40793          	addi	a5,s0,-1
    2600:	983a                	add	a6,a6,a4
    2602:	07c2                	slli	a5,a5,0x10
    2604:	983e                	add	a6,a6,a5
    2606:	06a2                	slli	a3,a3,0x8
    2608:	c226                	sw	s1,4(sp)
    260a:	c606                	sw	ra,12(sp)
    260c:	0ff67613          	zext.b	a2,a2
    2610:	9836                	add	a6,a6,a3
    2612:	67a9                	lui	a5,0xa
    2614:	c3c8                	sw	a0,4(a5)
    2616:	9832                	add	a6,a6,a2
    2618:	67a9                	lui	a5,0xa
    261a:	0107a023          	sw	a6,0(a5) # a000 <__GNU_EH_FRAME_HDR+0x7458>
    261e:	84ae                	mv	s1,a1
    2620:	3b09                	jal	2332 <qspi_wait>
    2622:	85a2                	mv	a1,s0
    2624:	4422                	lw	s0,8(sp)
    2626:	40b2                	lw	ra,12(sp)
    2628:	8526                	mv	a0,s1
    262a:	4492                	lw	s1,4(sp)
    262c:	0141                	addi	sp,sp,16
    262e:	b30d                	j	2350 <qspi_read_array>

Disassembly of section .text.timer_counter:

00002630 <timer_counter>:
    2630:	67b1                	lui	a5,0xc
    2632:	4bc8                	lw	a0,20(a5)
    2634:	8082                	ret

Disassembly of section .text.timer_event:

00002636 <timer_event>:
    2636:	67b1                	lui	a5,0xc
    2638:	4f88                	lw	a0,24(a5)
    263a:	8082                	ret

Disassembly of section .text.timer_clear:

0000263c <timer_clear>:
    263c:	67b1                	lui	a5,0xc
    263e:	4705                	li	a4,1
    2640:	c798                	sw	a4,8(a5)
    2642:	67b1                	lui	a5,0xc
    2644:	cfd8                	sw	a4,28(a5)
    2646:	8082                	ret

Disassembly of section .text.timer_enabled:

00002648 <timer_enabled>:
    2648:	67b1                	lui	a5,0xc
    264a:	c7c8                	sw	a0,12(a5)
    264c:	8082                	ret

Disassembly of section .text.timer_conf:

0000264e <timer_conf>:
    264e:	1141                	addi	sp,sp,-16
    2650:	c606                	sw	ra,12(sp)
    2652:	67b1                	lui	a5,0xc
    2654:	c388                	sw	a0,0(a5)
    2656:	c3cc                	sw	a1,4(a5)
    2658:	67b1                	lui	a5,0xc
    265a:	cb90                	sw	a2,16(a5)
    265c:	08000613          	li	a2,128
    2660:	30046073          	csrsi	mstatus,8
    2664:	30462073          	csrs	mie,a2
    2668:	3fd1                	jal	263c <timer_clear>
    266a:	40b2                	lw	ra,12(sp)
    266c:	67b1                	lui	a5,0xc
    266e:	4705                	li	a4,1
    2670:	c7d8                	sw	a4,12(a5)
    2672:	0141                	addi	sp,sp,16
    2674:	8082                	ret

Disassembly of section .text.usb_connected:

00002676 <usb_connected>:
    2676:	67b9                	lui	a5,0xe
    2678:	47c8                	lw	a0,12(a5)
    267a:	8905                	andi	a0,a0,1
    267c:	8082                	ret

Disassembly of section .text.usb_conf:

0000267e <usb_conf>:
    267e:	67b9                	lui	a5,0xe
    2680:	6739                	lui	a4,0xe
    2682:	c388                	sw	a0,0(a5)
    2684:	0731                	addi	a4,a4,12 # e00c <__GNU_EH_FRAME_HDR+0xb464>
    2686:	431c                	lw	a5,0(a4)
    2688:	8b85                	andi	a5,a5,1
    268a:	dff5                	beqz	a5,2686 <usb_conf+0x8>
    268c:	8082                	ret

Disassembly of section .text.usb_rw:

0000268e <usb_rw>:
    268e:	67b9                	lui	a5,0xe
    2690:	c788                	sw	a0,8(a5)
    2692:	67b9                	lui	a5,0xe
    2694:	07b1                	addi	a5,a5,12 # e00c <__GNU_EH_FRAME_HDR+0xb464>
    2696:	4709                	li	a4,2
    2698:	4394                	lw	a3,0(a5)
    269a:	fee68fe3          	beq	a3,a4,2698 <usb_rw+0xa>
    269e:	c398                	sw	a4,0(a5)
    26a0:	67b9                	lui	a5,0xe
    26a2:	43c8                	lw	a0,4(a5)
    26a4:	8082                	ret

Disassembly of section .text.gpio_write:

000026a6 <gpio_write>:
    26a6:	67c1                	lui	a5,0x10
    26a8:	c3c8                	sw	a0,4(a5)
    26aa:	8082                	ret

Disassembly of section .text.gpio_read:

000026ac <gpio_read>:
    26ac:	67c1                	lui	a5,0x10
    26ae:	4388                	lw	a0,0(a5)
    26b0:	0542                	slli	a0,a0,0x10
    26b2:	8141                	srli	a0,a0,0x10
    26b4:	8082                	ret

Disassembly of section .text.instr_mem_write:

000026b6 <instr_mem_write>:
    26b6:	050a                	slli	a0,a0,0x2
    26b8:	6791                	lui	a5,0x4
    26ba:	97aa                	add	a5,a5,a0
    26bc:	c38c                	sw	a1,0(a5)
    26be:	8082                	ret
