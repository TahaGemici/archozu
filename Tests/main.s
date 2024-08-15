
a.out:     file format elf32-littleriscv


Disassembly of section .text:

00002000 <main>:
    2000:	04802703          	lw	a4,72(zero) # 48 <main_gpio_val>
    2004:	67c1                	lui	a5,0x10
    2006:	4581                	li	a1,0
    2008:	0742                	slli	a4,a4,0x10
    200a:	8341                	srli	a4,a4,0x10
    200c:	c3d8                	sw	a4,4(a5)
    200e:	4605                	li	a2,1
    2010:	557d                	li	a0,-1
    2012:	7dc000ef          	jal	27ee <timer_conf>
    2016:	65c1                	lui	a1,0x10
    2018:	46a1                	li	a3,8
    201a:	419c                	lw	a5,0(a1)
    201c:	07c2                	slli	a5,a5,0x10
    201e:	83c1                	srli	a5,a5,0x10
    2020:	10f01023          	sh	a5,256(zero) # 100 <main_state>
    2024:	10005783          	lhu	a5,256(zero) # 100 <main_state>
    2028:	c799                	beqz	a5,2036 <main+0x36>
    202a:	67c1                	lui	a5,0x10
    202c:	0007a223          	sw	zero,4(a5) # 10004 <__GNU_EH_FRAME_HDR+0xcd58>
    2030:	67b1                	lui	a5,0xc
    2032:	0007a623          	sw	zero,12(a5) # c00c <__GNU_EH_FRAME_HDR+0x8d60>
    2036:	10005603          	lhu	a2,256(zero) # 100 <main_state>
    203a:	01061793          	slli	a5,a2,0x10
    203e:	83c1                	srli	a5,a5,0x10
    2040:	04d60063          	beq	a2,a3,2080 <main+0x80>
    2044:	00f6ed63          	bltu	a3,a5,205e <main+0x5e>
    2048:	4609                	li	a2,2
    204a:	02c78763          	beq	a5,a2,2078 <main+0x78>
    204e:	4611                	li	a2,4
    2050:	02c78663          	beq	a5,a2,207c <main+0x7c>
    2054:	4605                	li	a2,1
    2056:	fcc792e3          	bne	a5,a2,201a <main+0x1a>
    205a:	019000ef          	jal	2872 <uart_main>
    205e:	02000613          	li	a2,32
    2062:	02c78163          	beq	a5,a2,2084 <main+0x84>
    2066:	04000613          	li	a2,64
    206a:	00c78f63          	beq	a5,a2,2088 <main+0x88>
    206e:	4641                	li	a2,16
    2070:	fac795e3          	bne	a5,a2,201a <main+0x1a>
    2074:	155000ef          	jal	29c8 <gpio_main>
    2078:	02f000ef          	jal	28a6 <i2c_main>
    207c:	069000ef          	jal	28e4 <qspi_main>
    2080:	0f3000ef          	jal	2972 <timer_main>
    2084:	159000ef          	jal	29dc <usb_main>
    2088:	251000ef          	jal	2ad8 <data_mem_main>
	...

00002200 <interrupt>:
    2200:	7139                	addi	sp,sp,-64
    2202:	cc3e                	sw	a5,24(sp)
    2204:	d036                	sw	a3,32(sp)
    2206:	10005683          	lhu	a3,256(zero) # 100 <main_state>
    220a:	ce3a                	sw	a4,28(sp)
    220c:	de06                	sw	ra,60(sp)
    220e:	dc16                	sw	t0,56(sp)
    2210:	da1a                	sw	t1,52(sp)
    2212:	d81e                	sw	t2,48(sp)
    2214:	d62a                	sw	a0,44(sp)
    2216:	d42e                	sw	a1,40(sp)
    2218:	d232                	sw	a2,36(sp)
    221a:	ca42                	sw	a6,20(sp)
    221c:	c846                	sw	a7,16(sp)
    221e:	c672                	sw	t3,12(sp)
    2220:	c476                	sw	t4,8(sp)
    2222:	c27a                	sw	t5,4(sp)
    2224:	c07e                	sw	t6,0(sp)
    2226:	4721                	li	a4,8
    2228:	06e68663          	beq	a3,a4,2294 <interrupt+0x94>
    222c:	01069793          	slli	a5,a3,0x10
    2230:	83c1                	srli	a5,a5,0x10
    2232:	02f76963          	bltu	a4,a5,2264 <interrupt+0x64>
    2236:	cf95                	beqz	a5,2272 <interrupt+0x72>
    2238:	4709                	li	a4,2
    223a:	04e78963          	beq	a5,a4,228c <interrupt+0x8c>
    223e:	50f2                	lw	ra,60(sp)
    2240:	52e2                	lw	t0,56(sp)
    2242:	5352                	lw	t1,52(sp)
    2244:	53c2                	lw	t2,48(sp)
    2246:	5532                	lw	a0,44(sp)
    2248:	55a2                	lw	a1,40(sp)
    224a:	5612                	lw	a2,36(sp)
    224c:	5682                	lw	a3,32(sp)
    224e:	4772                	lw	a4,28(sp)
    2250:	47e2                	lw	a5,24(sp)
    2252:	4852                	lw	a6,20(sp)
    2254:	48c2                	lw	a7,16(sp)
    2256:	4e32                	lw	t3,12(sp)
    2258:	4ea2                	lw	t4,8(sp)
    225a:	4f12                	lw	t5,4(sp)
    225c:	4f82                	lw	t6,0(sp)
    225e:	6121                	addi	sp,sp,64
    2260:	30200073          	mret
    2264:	02000713          	li	a4,32
    2268:	fce79be3          	bne	a5,a4,223e <interrupt+0x3e>
    226c:	05b000ef          	jal	2ac6 <usb_interrupt>
    2270:	b7f9                	j	223e <interrupt+0x3e>
    2272:	04802703          	lw	a4,72(zero) # 48 <main_gpio_val>
    2276:	fff74713          	not	a4,a4
    227a:	04e02423          	sw	a4,72(zero) # 48 <main_gpio_val>
    227e:	04802703          	lw	a4,72(zero) # 48 <main_gpio_val>
    2282:	67c1                	lui	a5,0x10
    2284:	0742                	slli	a4,a4,0x10
    2286:	8341                	srli	a4,a4,0x10
    2288:	c3d8                	sw	a4,4(a5)
    228a:	bf55                	j	223e <interrupt+0x3e>
    228c:	4705                	li	a4,1
    228e:	04e02823          	sw	a4,80(zero) # 50 <i2c_tmp>
    2292:	b775                	j	223e <interrupt+0x3e>
    2294:	720000ef          	jal	29b4 <timer_interrupt>
    2298:	b75d                	j	223e <interrupt+0x3e>

Disassembly of section .text.uart_conf:

0000229a <uart_conf>:
    229a:	039387b7          	lui	a5,0x3938
    229e:	70078793          	addi	a5,a5,1792 # 3938700 <__GNU_EH_FRAME_HDR+0x3935454>
    22a2:	02a7d7b3          	divu	a5,a5,a0
    22a6:	6719                	lui	a4,0x6
    22a8:	17fd                	addi	a5,a5,-1
    22aa:	c31c                	sw	a5,0(a4)
    22ac:	6799                	lui	a5,0x6
    22ae:	c3cc                	sw	a1,4(a5)
    22b0:	8082                	ret

Disassembly of section .text.uart_read:

000022b2 <uart_read>:
    22b2:	6799                	lui	a5,0x6
    22b4:	07c1                	addi	a5,a5,16 # 6010 <__GNU_EH_FRAME_HDR+0x2d64>
    22b6:	4709                	li	a4,2
    22b8:	4394                	lw	a3,0(a5)
    22ba:	fee69fe3          	bne	a3,a4,22b8 <uart_read+0x6>
    22be:	6719                	lui	a4,0x6
    22c0:	4708                	lw	a0,8(a4)
    22c2:	0007a023          	sw	zero,0(a5)
    22c6:	0ff57513          	zext.b	a0,a0
    22ca:	8082                	ret

Disassembly of section .text.uart_write:

000022cc <uart_write>:
    22cc:	6799                	lui	a5,0x6
    22ce:	c7c8                	sw	a0,12(a5)
    22d0:	6799                	lui	a5,0x6
    22d2:	07c1                	addi	a5,a5,16 # 6010 <__GNU_EH_FRAME_HDR+0x2d64>
    22d4:	4705                	li	a4,1
    22d6:	c398                	sw	a4,0(a5)
    22d8:	4398                	lw	a4,0(a5)
    22da:	8b11                	andi	a4,a4,4
    22dc:	df75                	beqz	a4,22d8 <uart_write+0xc>
    22de:	4398                	lw	a4,0(a5)
    22e0:	8b09                	andi	a4,a4,2
    22e2:	c398                	sw	a4,0(a5)
    22e4:	8082                	ret

Disassembly of section .text.i2c_conf:

000022e6 <i2c_conf>:
    22e6:	67a1                	lui	a5,0x8
    22e8:	c3c8                	sw	a0,4(a5)
    22ea:	8082                	ret

Disassembly of section .text.i2c_write:

000022ec <i2c_write>:
    22ec:	67a1                	lui	a5,0x8
    22ee:	c38c                	sw	a1,0(a5)
    22f0:	c7c8                	sw	a0,12(a5)
    22f2:	67a1                	lui	a5,0x8
    22f4:	07c1                	addi	a5,a5,16 # 8010 <__GNU_EH_FRAME_HDR+0x4d64>
    22f6:	4705                	li	a4,1
    22f8:	c398                	sw	a4,0(a5)
    22fa:	4398                	lw	a4,0(a5)
    22fc:	8b09                	andi	a4,a4,2
    22fe:	df75                	beqz	a4,22fa <i2c_write+0xe>
    2300:	4398                	lw	a4,0(a5)
    2302:	8b31                	andi	a4,a4,12
    2304:	c398                	sw	a4,0(a5)
    2306:	8082                	ret

Disassembly of section .text.i2c_read:

00002308 <i2c_read>:
    2308:	67a1                	lui	a5,0x8
    230a:	c388                	sw	a0,0(a5)
    230c:	4711                	li	a4,4
    230e:	07c1                	addi	a5,a5,16 # 8010 <__GNU_EH_FRAME_HDR+0x4d64>
    2310:	c398                	sw	a4,0(a5)
    2312:	4398                	lw	a4,0(a5)
    2314:	8b21                	andi	a4,a4,8
    2316:	df75                	beqz	a4,2312 <i2c_read+0xa>
    2318:	4398                	lw	a4,0(a5)
    231a:	8b0d                	andi	a4,a4,3
    231c:	c398                	sw	a4,0(a5)
    231e:	67a1                	lui	a5,0x8
    2320:	4788                	lw	a0,8(a5)
    2322:	8082                	ret

Disassembly of section .text.qspi_wait:

00002324 <qspi_wait>:
    2324:	67a9                	lui	a5,0xa
    2326:	02878793          	addi	a5,a5,40 # a028 <__GNU_EH_FRAME_HDR+0x6d7c>
    232a:	4705                	li	a4,1
    232c:	4394                	lw	a3,0(a5)
    232e:	fee69fe3          	bne	a3,a4,232c <qspi_wait+0x8>
    2332:	67a9                	lui	a5,0xa
    2334:	02878793          	addi	a5,a5,40 # a028 <__GNU_EH_FRAME_HDR+0x6d7c>
    2338:	4705                	li	a4,1
    233a:	4394                	lw	a3,0(a5)
    233c:	fee69fe3          	bne	a3,a4,233a <qspi_wait+0x16>
    2340:	8082                	ret

Disassembly of section .text.qspi_read_array:

00002342 <qspi_read_array>:
    2342:	058d                	addi	a1,a1,3 # 10003 <__GNU_EH_FRAME_HDR+0xcd57>
    2344:	6729                	lui	a4,0xa
    2346:	99f1                	andi	a1,a1,-4
    2348:	4781                	li	a5,0
    234a:	0721                	addi	a4,a4,8 # a008 <__GNU_EH_FRAME_HDR+0x6d5c>
    234c:	00b79363          	bne	a5,a1,2352 <qspi_read_array+0x10>
    2350:	8082                	ret
    2352:	00e786b3          	add	a3,a5,a4
    2356:	4290                	lw	a2,0(a3)
    2358:	00f506b3          	add	a3,a0,a5
    235c:	0791                	addi	a5,a5,4
    235e:	c290                	sw	a2,0(a3)
    2360:	b7f5                	j	234c <qspi_read_array+0xa>

Disassembly of section .text.qspi_write_array:

00002362 <qspi_write_array>:
    2362:	058d                	addi	a1,a1,3
    2364:	6729                	lui	a4,0xa
    2366:	99f1                	andi	a1,a1,-4
    2368:	4781                	li	a5,0
    236a:	0721                	addi	a4,a4,8 # a008 <__GNU_EH_FRAME_HDR+0x6d5c>
    236c:	00b79363          	bne	a5,a1,2372 <qspi_write_array+0x10>
    2370:	8082                	ret
    2372:	00f50633          	add	a2,a0,a5
    2376:	4210                	lw	a2,0(a2)
    2378:	00e786b3          	add	a3,a5,a4
    237c:	0791                	addi	a5,a5,4
    237e:	c290                	sw	a2,0(a3)
    2380:	b7f5                	j	236c <qspi_write_array+0xa>

Disassembly of section .text.s25fl128s_wren:

00002382 <s25fl128s_wren>:
    2382:	800007b7          	lui	a5,0x80000
    2386:	0799                	addi	a5,a5,6 # 80000006 <__GNU_EH_FRAME_HDR+0x7fffcd5a>
    2388:	6729                	lui	a4,0xa
    238a:	c31c                	sw	a5,0(a4)
    238c:	bf61                	j	2324 <qspi_wait>

Disassembly of section .text.s25fl128s_wrdi:

0000238e <s25fl128s_wrdi>:
    238e:	800007b7          	lui	a5,0x80000
    2392:	0791                	addi	a5,a5,4 # 80000004 <__GNU_EH_FRAME_HDR+0x7fffcd58>
    2394:	6729                	lui	a4,0xa
    2396:	c31c                	sw	a5,0(a4)
    2398:	b771                	j	2324 <qspi_wait>

Disassembly of section .text.s25fl128s_clsr:

0000239a <s25fl128s_clsr>:
    239a:	800007b7          	lui	a5,0x80000
    239e:	03078793          	addi	a5,a5,48 # 80000030 <__GNU_EH_FRAME_HDR+0x7fffcd84>
    23a2:	6729                	lui	a4,0xa
    23a4:	c31c                	sw	a5,0(a4)
    23a6:	bfbd                	j	2324 <qspi_wait>

Disassembly of section .text.s25fl128s_reset:

000023a8 <s25fl128s_reset>:
    23a8:	800007b7          	lui	a5,0x80000
    23ac:	0f078793          	addi	a5,a5,240 # 800000f0 <__GNU_EH_FRAME_HDR+0x7fffce44>
    23b0:	6729                	lui	a4,0xa
    23b2:	c31c                	sw	a5,0(a4)
    23b4:	bf85                	j	2324 <qspi_wait>

Disassembly of section .text.s25fl128s_rdid:

000023b6 <s25fl128s_rdid>:
    23b6:	fff58793          	addi	a5,a1,-1
    23ba:	80000737          	lui	a4,0x80000
    23be:	1101                	addi	sp,sp,-32
    23c0:	19f70713          	addi	a4,a4,415 # 8000019f <__GNU_EH_FRAME_HDR+0x7fffcef3>
    23c4:	07c2                	slli	a5,a5,0x10
    23c6:	ce06                	sw	ra,28(sp)
    23c8:	c62a                	sw	a0,12(sp)
    23ca:	c42e                	sw	a1,8(sp)
    23cc:	97ba                	add	a5,a5,a4
    23ce:	6729                	lui	a4,0xa
    23d0:	c31c                	sw	a5,0(a4)
    23d2:	3f89                	jal	2324 <qspi_wait>
    23d4:	45a2                	lw	a1,8(sp)
    23d6:	4532                	lw	a0,12(sp)
    23d8:	40f2                	lw	ra,28(sp)
    23da:	6105                	addi	sp,sp,32
    23dc:	b79d                	j	2342 <qspi_read_array>

Disassembly of section .text.s25fl128s_rdsr1:

000023de <s25fl128s_rdsr1>:
    23de:	1141                	addi	sp,sp,-16
    23e0:	800007b7          	lui	a5,0x80000
    23e4:	c606                	sw	ra,12(sp)
    23e6:	10578793          	addi	a5,a5,261 # 80000105 <__GNU_EH_FRAME_HDR+0x7fffce59>
    23ea:	6729                	lui	a4,0xa
    23ec:	c31c                	sw	a5,0(a4)
    23ee:	3f1d                	jal	2324 <qspi_wait>
    23f0:	67a9                	lui	a5,0xa
    23f2:	4788                	lw	a0,8(a5)
    23f4:	40b2                	lw	ra,12(sp)
    23f6:	0ff57513          	zext.b	a0,a0
    23fa:	0141                	addi	sp,sp,16
    23fc:	8082                	ret

Disassembly of section .text.s25fl128s_rdsr2:

000023fe <s25fl128s_rdsr2>:
    23fe:	1141                	addi	sp,sp,-16
    2400:	800007b7          	lui	a5,0x80000
    2404:	c606                	sw	ra,12(sp)
    2406:	10778793          	addi	a5,a5,263 # 80000107 <__GNU_EH_FRAME_HDR+0x7fffce5b>
    240a:	6729                	lui	a4,0xa
    240c:	c31c                	sw	a5,0(a4)
    240e:	3f19                	jal	2324 <qspi_wait>
    2410:	67a9                	lui	a5,0xa
    2412:	4788                	lw	a0,8(a5)
    2414:	40b2                	lw	ra,12(sp)
    2416:	0ff57513          	zext.b	a0,a0
    241a:	0141                	addi	sp,sp,16
    241c:	8082                	ret

Disassembly of section .text.s25fl128s_rdcr:

0000241e <s25fl128s_rdcr>:
    241e:	1141                	addi	sp,sp,-16
    2420:	800007b7          	lui	a5,0x80000
    2424:	c606                	sw	ra,12(sp)
    2426:	13578793          	addi	a5,a5,309 # 80000135 <__GNU_EH_FRAME_HDR+0x7fffce89>
    242a:	6729                	lui	a4,0xa
    242c:	c31c                	sw	a5,0(a4)
    242e:	3ddd                	jal	2324 <qspi_wait>
    2430:	67a9                	lui	a5,0xa
    2432:	4788                	lw	a0,8(a5)
    2434:	40b2                	lw	ra,12(sp)
    2436:	0ff57513          	zext.b	a0,a0
    243a:	0141                	addi	sp,sp,16
    243c:	8082                	ret

Disassembly of section .text.s25fl128s_read_id:

0000243e <s25fl128s_read_id>:
    243e:	1141                	addi	sp,sp,-16
    2440:	c606                	sw	ra,12(sp)
    2442:	67a9                	lui	a5,0xa
    2444:	c3c8                	sw	a0,4(a5)
    2446:	800127b7          	lui	a5,0x80012
    244a:	99078793          	addi	a5,a5,-1648 # 80011990 <__GNU_EH_FRAME_HDR+0x8000e6e4>
    244e:	6729                	lui	a4,0xa
    2450:	c31c                	sw	a5,0(a4)
    2452:	3dc9                	jal	2324 <qspi_wait>
    2454:	67a9                	lui	a5,0xa
    2456:	4788                	lw	a0,8(a5)
    2458:	40b2                	lw	ra,12(sp)
    245a:	0542                	slli	a0,a0,0x10
    245c:	8141                	srli	a0,a0,0x10
    245e:	0141                	addi	sp,sp,16
    2460:	8082                	ret

Disassembly of section .text.s25fl128s_res:

00002462 <s25fl128s_res>:
    2462:	1141                	addi	sp,sp,-16
    2464:	800027b7          	lui	a5,0x80002
    2468:	c606                	sw	ra,12(sp)
    246a:	9ab78793          	addi	a5,a5,-1621 # 800019ab <__GNU_EH_FRAME_HDR+0x7fffe6ff>
    246e:	6729                	lui	a4,0xa
    2470:	c31c                	sw	a5,0(a4)
    2472:	3d4d                	jal	2324 <qspi_wait>
    2474:	67a9                	lui	a5,0xa
    2476:	4788                	lw	a0,8(a5)
    2478:	40b2                	lw	ra,12(sp)
    247a:	0ff57513          	zext.b	a0,a0
    247e:	0141                	addi	sp,sp,16
    2480:	8082                	ret

Disassembly of section .text.s25fl128s_wrr:

00002482 <s25fl128s_wrr>:
    2482:	67a9                	lui	a5,0xa
    2484:	c788                	sw	a0,8(a5)
    2486:	800107b7          	lui	a5,0x80010
    248a:	50178793          	addi	a5,a5,1281 # 80010501 <__GNU_EH_FRAME_HDR+0x8000d255>
    248e:	6729                	lui	a4,0xa
    2490:	c31c                	sw	a5,0(a4)
    2492:	bd49                	j	2324 <qspi_wait>

Disassembly of section .text.s25fl128s_read:

00002494 <s25fl128s_read>:
    2494:	fff60793          	addi	a5,a2,-1
    2498:	80002737          	lui	a4,0x80002
    249c:	1141                	addi	sp,sp,-16
    249e:	90370713          	addi	a4,a4,-1789 # 80001903 <__GNU_EH_FRAME_HDR+0x7fffe657>
    24a2:	07c2                	slli	a5,a5,0x10
    24a4:	c422                	sw	s0,8(sp)
    24a6:	c226                	sw	s1,4(sp)
    24a8:	c606                	sw	ra,12(sp)
    24aa:	97ba                	add	a5,a5,a4
    24ac:	6729                	lui	a4,0xa
    24ae:	c348                	sw	a0,4(a4)
    24b0:	6729                	lui	a4,0xa
    24b2:	c31c                	sw	a5,0(a4)
    24b4:	84ae                	mv	s1,a1
    24b6:	8432                	mv	s0,a2
    24b8:	35b5                	jal	2324 <qspi_wait>
    24ba:	85a2                	mv	a1,s0
    24bc:	4422                	lw	s0,8(sp)
    24be:	40b2                	lw	ra,12(sp)
    24c0:	8526                	mv	a0,s1
    24c2:	4492                	lw	s1,4(sp)
    24c4:	0141                	addi	sp,sp,16
    24c6:	bdb5                	j	2342 <qspi_read_array>

Disassembly of section .text.s25fl128s_pp:

000024c8 <s25fl128s_pp>:
    24c8:	1141                	addi	sp,sp,-16
    24ca:	c422                	sw	s0,8(sp)
    24cc:	800027b7          	lui	a5,0x80002
    24d0:	fff60413          	addi	s0,a2,-1
    24d4:	d0278793          	addi	a5,a5,-766 # 80001d02 <__GNU_EH_FRAME_HDR+0x7fffea56>
    24d8:	0442                	slli	s0,s0,0x10
    24da:	c606                	sw	ra,12(sp)
    24dc:	872a                	mv	a4,a0
    24de:	943e                	add	s0,s0,a5
    24e0:	67a9                	lui	a5,0xa
    24e2:	852e                	mv	a0,a1
    24e4:	c3d8                	sw	a4,4(a5)
    24e6:	85b2                	mv	a1,a2
    24e8:	3dad                	jal	2362 <qspi_write_array>
    24ea:	67a9                	lui	a5,0xa
    24ec:	c380                	sw	s0,0(a5)
    24ee:	4422                	lw	s0,8(sp)
    24f0:	40b2                	lw	ra,12(sp)
    24f2:	0141                	addi	sp,sp,16
    24f4:	bd05                	j	2324 <qspi_wait>

Disassembly of section .text.s25fl128s_se:

000024f6 <s25fl128s_se>:
    24f6:	67a9                	lui	a5,0xa
    24f8:	c788                	sw	a0,8(a5)
    24fa:	800207b7          	lui	a5,0x80020
    24fe:	5d878793          	addi	a5,a5,1496 # 800205d8 <__GNU_EH_FRAME_HDR+0x8001d32c>
    2502:	6729                	lui	a4,0xa
    2504:	c31c                	sw	a5,0(a4)
    2506:	bd39                	j	2324 <qspi_wait>

Disassembly of section .text.s25fl128s_dor:

00002508 <s25fl128s_dor>:
    2508:	fff60793          	addi	a5,a2,-1
    250c:	80002737          	lui	a4,0x80002
    2510:	1141                	addi	sp,sp,-16
    2512:	23b70713          	addi	a4,a4,571 # 8000223b <__GNU_EH_FRAME_HDR+0x7fffef8f>
    2516:	07c2                	slli	a5,a5,0x10
    2518:	c422                	sw	s0,8(sp)
    251a:	c226                	sw	s1,4(sp)
    251c:	c606                	sw	ra,12(sp)
    251e:	97ba                	add	a5,a5,a4
    2520:	6729                	lui	a4,0xa
    2522:	c348                	sw	a0,4(a4)
    2524:	6729                	lui	a4,0xa
    2526:	c31c                	sw	a5,0(a4)
    2528:	84ae                	mv	s1,a1
    252a:	8432                	mv	s0,a2
    252c:	3be5                	jal	2324 <qspi_wait>
    252e:	85a2                	mv	a1,s0
    2530:	4422                	lw	s0,8(sp)
    2532:	40b2                	lw	ra,12(sp)
    2534:	8526                	mv	a0,s1
    2536:	4492                	lw	s1,4(sp)
    2538:	0141                	addi	sp,sp,16
    253a:	b521                	j	2342 <qspi_read_array>

Disassembly of section .text.s25fl128s_qor:

0000253c <s25fl128s_qor>:
    253c:	fff60793          	addi	a5,a2,-1
    2540:	80002737          	lui	a4,0x80002
    2544:	1141                	addi	sp,sp,-16
    2546:	36b70713          	addi	a4,a4,875 # 8000236b <__GNU_EH_FRAME_HDR+0x7ffff0bf>
    254a:	07c2                	slli	a5,a5,0x10
    254c:	c422                	sw	s0,8(sp)
    254e:	c226                	sw	s1,4(sp)
    2550:	c606                	sw	ra,12(sp)
    2552:	97ba                	add	a5,a5,a4
    2554:	6729                	lui	a4,0xa
    2556:	c348                	sw	a0,4(a4)
    2558:	6729                	lui	a4,0xa
    255a:	c31c                	sw	a5,0(a4)
    255c:	84ae                	mv	s1,a1
    255e:	8432                	mv	s0,a2
    2560:	33d1                	jal	2324 <qspi_wait>
    2562:	85a2                	mv	a1,s0
    2564:	4422                	lw	s0,8(sp)
    2566:	40b2                	lw	ra,12(sp)
    2568:	8526                	mv	a0,s1
    256a:	4492                	lw	s1,4(sp)
    256c:	0141                	addi	sp,sp,16
    256e:	bbd1                	j	2342 <qspi_read_array>

Disassembly of section .text.s25fl128s_qpp:

00002570 <s25fl128s_qpp>:
    2570:	fff60793          	addi	a5,a2,-1
    2574:	80002737          	lui	a4,0x80002
    2578:	1141                	addi	sp,sp,-16
    257a:	f3270713          	addi	a4,a4,-206 # 80001f32 <__GNU_EH_FRAME_HDR+0x7fffec86>
    257e:	07c2                	slli	a5,a5,0x10
    2580:	c606                	sw	ra,12(sp)
    2582:	86aa                	mv	a3,a0
    2584:	97ba                	add	a5,a5,a4
    2586:	6729                	lui	a4,0xa
    2588:	c354                	sw	a3,4(a4)
    258a:	6729                	lui	a4,0xa
    258c:	852e                	mv	a0,a1
    258e:	c31c                	sw	a5,0(a4)
    2590:	85b2                	mv	a1,a2
    2592:	3bc1                	jal	2362 <qspi_write_array>
    2594:	40b2                	lw	ra,12(sp)
    2596:	0141                	addi	sp,sp,16
    2598:	b371                	j	2324 <qspi_wait>

Disassembly of section .text.qspi_custom_write:

0000259a <qspi_custom_write>:
    259a:	88aa                	mv	a7,a0
    259c:	852e                	mv	a0,a1
    259e:	85be                	mv	a1,a5
    25a0:	800007b7          	lui	a5,0x80000
    25a4:	40078793          	addi	a5,a5,1024 # 80000400 <__GNU_EH_FRAME_HDR+0x7fffd154>
    25a8:	0866                	slli	a6,a6,0x19
    25aa:	983e                	add	a6,a6,a5
    25ac:	072e                	slli	a4,a4,0xb
    25ae:	fff58793          	addi	a5,a1,-1
    25b2:	1141                	addi	sp,sp,-16
    25b4:	983a                	add	a6,a6,a4
    25b6:	07c2                	slli	a5,a5,0x10
    25b8:	c422                	sw	s0,8(sp)
    25ba:	c606                	sw	ra,12(sp)
    25bc:	983e                	add	a6,a6,a5
    25be:	06a2                	slli	a3,a3,0x8
    25c0:	67a9                	lui	a5,0xa
    25c2:	0ff67613          	zext.b	a2,a2
    25c6:	9836                	add	a6,a6,a3
    25c8:	0117a223          	sw	a7,4(a5) # a004 <__GNU_EH_FRAME_HDR+0x6d58>
    25cc:	00c80433          	add	s0,a6,a2
    25d0:	3b49                	jal	2362 <qspi_write_array>
    25d2:	67a9                	lui	a5,0xa
    25d4:	c380                	sw	s0,0(a5)
    25d6:	4422                	lw	s0,8(sp)
    25d8:	40b2                	lw	ra,12(sp)
    25da:	0141                	addi	sp,sp,16
    25dc:	b3a1                	j	2324 <qspi_wait>

Disassembly of section .text.qspi_custom_read:

000025de <qspi_custom_read>:
    25de:	1141                	addi	sp,sp,-16
    25e0:	c422                	sw	s0,8(sp)
    25e2:	0866                	slli	a6,a6,0x19
    25e4:	843e                	mv	s0,a5
    25e6:	800007b7          	lui	a5,0x80000
    25ea:	983e                	add	a6,a6,a5
    25ec:	072e                	slli	a4,a4,0xb
    25ee:	fff40793          	addi	a5,s0,-1
    25f2:	983a                	add	a6,a6,a4
    25f4:	07c2                	slli	a5,a5,0x10
    25f6:	983e                	add	a6,a6,a5
    25f8:	06a2                	slli	a3,a3,0x8
    25fa:	c226                	sw	s1,4(sp)
    25fc:	c606                	sw	ra,12(sp)
    25fe:	0ff67613          	zext.b	a2,a2
    2602:	9836                	add	a6,a6,a3
    2604:	67a9                	lui	a5,0xa
    2606:	c3c8                	sw	a0,4(a5)
    2608:	9832                	add	a6,a6,a2
    260a:	67a9                	lui	a5,0xa
    260c:	0107a023          	sw	a6,0(a5) # a000 <__GNU_EH_FRAME_HDR+0x6d54>
    2610:	84ae                	mv	s1,a1
    2612:	3b09                	jal	2324 <qspi_wait>
    2614:	85a2                	mv	a1,s0
    2616:	4422                	lw	s0,8(sp)
    2618:	40b2                	lw	ra,12(sp)
    261a:	8526                	mv	a0,s1
    261c:	4492                	lw	s1,4(sp)
    261e:	0141                	addi	sp,sp,16
    2620:	b30d                	j	2342 <qspi_read_array>

Disassembly of section .text.mt25ql256aba_read:

00002622 <mt25ql256aba_read>:
    2622:	fff60793          	addi	a5,a2,-1
    2626:	80000737          	lui	a4,0x80000
    262a:	1141                	addi	sp,sp,-16
    262c:	10370713          	addi	a4,a4,259 # 80000103 <__GNU_EH_FRAME_HDR+0x7fffce57>
    2630:	07c2                	slli	a5,a5,0x10
    2632:	c422                	sw	s0,8(sp)
    2634:	c226                	sw	s1,4(sp)
    2636:	c606                	sw	ra,12(sp)
    2638:	97ba                	add	a5,a5,a4
    263a:	6729                	lui	a4,0xa
    263c:	c348                	sw	a0,4(a4)
    263e:	6729                	lui	a4,0xa
    2640:	c31c                	sw	a5,0(a4)
    2642:	84ae                	mv	s1,a1
    2644:	8432                	mv	s0,a2
    2646:	39f9                	jal	2324 <qspi_wait>
    2648:	85a2                	mv	a1,s0
    264a:	4422                	lw	s0,8(sp)
    264c:	40b2                	lw	ra,12(sp)
    264e:	8526                	mv	a0,s1
    2650:	4492                	lw	s1,4(sp)
    2652:	0141                	addi	sp,sp,16
    2654:	b1fd                	j	2342 <qspi_read_array>

Disassembly of section .text.mt25ql256aba_dual_output_fast_read:

00002656 <mt25ql256aba_dual_output_fast_read>:
    2656:	fff60793          	addi	a5,a2,-1
    265a:	80001737          	lui	a4,0x80001
    265e:	1141                	addi	sp,sp,-16
    2660:	a3b70713          	addi	a4,a4,-1477 # 80000a3b <__GNU_EH_FRAME_HDR+0x7fffd78f>
    2664:	07c2                	slli	a5,a5,0x10
    2666:	c422                	sw	s0,8(sp)
    2668:	c226                	sw	s1,4(sp)
    266a:	c606                	sw	ra,12(sp)
    266c:	97ba                	add	a5,a5,a4
    266e:	6729                	lui	a4,0xa
    2670:	c348                	sw	a0,4(a4)
    2672:	6729                	lui	a4,0xa
    2674:	c31c                	sw	a5,0(a4)
    2676:	84ae                	mv	s1,a1
    2678:	8432                	mv	s0,a2
    267a:	316d                	jal	2324 <qspi_wait>
    267c:	85a2                	mv	a1,s0
    267e:	4422                	lw	s0,8(sp)
    2680:	40b2                	lw	ra,12(sp)
    2682:	8526                	mv	a0,s1
    2684:	4492                	lw	s1,4(sp)
    2686:	0141                	addi	sp,sp,16
    2688:	b96d                	j	2342 <qspi_read_array>

Disassembly of section .text.mt25ql256aba_quad_output_fast_read:

0000268a <mt25ql256aba_quad_output_fast_read>:
    268a:	fff60793          	addi	a5,a2,-1
    268e:	80001737          	lui	a4,0x80001
    2692:	1141                	addi	sp,sp,-16
    2694:	b6b70713          	addi	a4,a4,-1173 # 80000b6b <__GNU_EH_FRAME_HDR+0x7fffd8bf>
    2698:	07c2                	slli	a5,a5,0x10
    269a:	c422                	sw	s0,8(sp)
    269c:	c226                	sw	s1,4(sp)
    269e:	c606                	sw	ra,12(sp)
    26a0:	97ba                	add	a5,a5,a4
    26a2:	6729                	lui	a4,0xa
    26a4:	c348                	sw	a0,4(a4)
    26a6:	6729                	lui	a4,0xa
    26a8:	c31c                	sw	a5,0(a4)
    26aa:	84ae                	mv	s1,a1
    26ac:	8432                	mv	s0,a2
    26ae:	399d                	jal	2324 <qspi_wait>
    26b0:	85a2                	mv	a1,s0
    26b2:	4422                	lw	s0,8(sp)
    26b4:	40b2                	lw	ra,12(sp)
    26b6:	8526                	mv	a0,s1
    26b8:	4492                	lw	s1,4(sp)
    26ba:	0141                	addi	sp,sp,16
    26bc:	b159                	j	2342 <qspi_read_array>

Disassembly of section .text.mt25ql256aba_page_program:

000026be <mt25ql256aba_page_program>:
    26be:	1141                	addi	sp,sp,-16
    26c0:	c422                	sw	s0,8(sp)
    26c2:	800007b7          	lui	a5,0x80000
    26c6:	fff60413          	addi	s0,a2,-1
    26ca:	50278793          	addi	a5,a5,1282 # 80000502 <__GNU_EH_FRAME_HDR+0x7fffd256>
    26ce:	0442                	slli	s0,s0,0x10
    26d0:	c606                	sw	ra,12(sp)
    26d2:	872a                	mv	a4,a0
    26d4:	943e                	add	s0,s0,a5
    26d6:	67a9                	lui	a5,0xa
    26d8:	852e                	mv	a0,a1
    26da:	c3d8                	sw	a4,4(a5)
    26dc:	85b2                	mv	a1,a2
    26de:	3151                	jal	2362 <qspi_write_array>
    26e0:	67a9                	lui	a5,0xa
    26e2:	c380                	sw	s0,0(a5)
    26e4:	4422                	lw	s0,8(sp)
    26e6:	40b2                	lw	ra,12(sp)
    26e8:	0141                	addi	sp,sp,16
    26ea:	b92d                	j	2324 <qspi_wait>

Disassembly of section .text.mt25ql256aba_sector_erase:

000026ec <mt25ql256aba_sector_erase>:
    26ec:	15fd                	addi	a1,a1,-1
    26ee:	800007b7          	lui	a5,0x80000
    26f2:	5d878793          	addi	a5,a5,1496 # 800005d8 <__GNU_EH_FRAME_HDR+0x7fffd32c>
    26f6:	05c2                	slli	a1,a1,0x10
    26f8:	95be                	add	a1,a1,a5
    26fa:	67a9                	lui	a5,0xa
    26fc:	c788                	sw	a0,8(a5)
    26fe:	67a9                	lui	a5,0xa
    2700:	c38c                	sw	a1,0(a5)
    2702:	b10d                	j	2324 <qspi_wait>

Disassembly of section .text.mt25ql256aba_read_id:

00002704 <mt25ql256aba_read_id>:
    2704:	b94d                	j	23b6 <s25fl128s_rdid>

Disassembly of section .text.mt25ql256aba_read_status_register:

00002706 <mt25ql256aba_read_status_register>:
    2706:	b9e1                	j	23de <s25fl128s_rdsr1>

Disassembly of section .text.mt25ql256aba_read_flag_status_register:

00002708 <mt25ql256aba_read_flag_status_register>:
    2708:	1141                	addi	sp,sp,-16
    270a:	800007b7          	lui	a5,0x80000
    270e:	c606                	sw	ra,12(sp)
    2710:	17078793          	addi	a5,a5,368 # 80000170 <__GNU_EH_FRAME_HDR+0x7fffcec4>
    2714:	6729                	lui	a4,0xa
    2716:	c31c                	sw	a5,0(a4)
    2718:	3131                	jal	2324 <qspi_wait>
    271a:	67a9                	lui	a5,0xa
    271c:	4788                	lw	a0,8(a5)
    271e:	40b2                	lw	ra,12(sp)
    2720:	0ff57513          	zext.b	a0,a0
    2724:	0141                	addi	sp,sp,16
    2726:	8082                	ret

Disassembly of section .text.mt25ql256aba_read_nonvolatile_configuration_register:

00002728 <mt25ql256aba_read_nonvolatile_configuration_register>:
    2728:	1141                	addi	sp,sp,-16
    272a:	800107b7          	lui	a5,0x80010
    272e:	c606                	sw	ra,12(sp)
    2730:	1b578793          	addi	a5,a5,437 # 800101b5 <__GNU_EH_FRAME_HDR+0x8000cf09>
    2734:	6729                	lui	a4,0xa
    2736:	c31c                	sw	a5,0(a4)
    2738:	36f5                	jal	2324 <qspi_wait>
    273a:	67a9                	lui	a5,0xa
    273c:	4788                	lw	a0,8(a5)
    273e:	40b2                	lw	ra,12(sp)
    2740:	0542                	slli	a0,a0,0x10
    2742:	8141                	srli	a0,a0,0x10
    2744:	0141                	addi	sp,sp,16
    2746:	8082                	ret

Disassembly of section .text.mt25ql256aba_read_volatile_configuration_register:

00002748 <mt25ql256aba_read_volatile_configuration_register>:
    2748:	1141                	addi	sp,sp,-16
    274a:	800007b7          	lui	a5,0x80000
    274e:	c606                	sw	ra,12(sp)
    2750:	18578793          	addi	a5,a5,389 # 80000185 <__GNU_EH_FRAME_HDR+0x7fffced9>
    2754:	6729                	lui	a4,0xa
    2756:	c31c                	sw	a5,0(a4)
    2758:	36f1                	jal	2324 <qspi_wait>
    275a:	67a9                	lui	a5,0xa
    275c:	4788                	lw	a0,8(a5)
    275e:	40b2                	lw	ra,12(sp)
    2760:	0ff57513          	zext.b	a0,a0
    2764:	0141                	addi	sp,sp,16
    2766:	8082                	ret

Disassembly of section .text.mt25ql256aba_write_status_register:

00002768 <mt25ql256aba_write_status_register>:
    2768:	67a9                	lui	a5,0xa
    276a:	c788                	sw	a0,8(a5)
    276c:	800007b7          	lui	a5,0x80000
    2770:	50178793          	addi	a5,a5,1281 # 80000501 <__GNU_EH_FRAME_HDR+0x7fffd255>
    2774:	6729                	lui	a4,0xa
    2776:	c31c                	sw	a5,0(a4)
    2778:	b675                	j	2324 <qspi_wait>

Disassembly of section .text.mt25ql256aba_write_nonvolatile_configuration_register:

0000277a <mt25ql256aba_write_nonvolatile_configuration_register>:
    277a:	67a9                	lui	a5,0xa
    277c:	c788                	sw	a0,8(a5)
    277e:	800107b7          	lui	a5,0x80010
    2782:	5b178793          	addi	a5,a5,1457 # 800105b1 <__GNU_EH_FRAME_HDR+0x8000d305>
    2786:	6729                	lui	a4,0xa
    2788:	c31c                	sw	a5,0(a4)
    278a:	be69                	j	2324 <qspi_wait>

Disassembly of section .text.mt25ql256aba_write_volatile_configuration_register:

0000278c <mt25ql256aba_write_volatile_configuration_register>:
    278c:	67a9                	lui	a5,0xa
    278e:	c788                	sw	a0,8(a5)
    2790:	800007b7          	lui	a5,0x80000
    2794:	58178793          	addi	a5,a5,1409 # 80000581 <__GNU_EH_FRAME_HDR+0x7fffd2d5>
    2798:	6729                	lui	a4,0xa
    279a:	c31c                	sw	a5,0(a4)
    279c:	b661                	j	2324 <qspi_wait>

Disassembly of section .text.mt25ql256aba_write_enhanced_volatile_configuration_register:

0000279e <mt25ql256aba_write_enhanced_volatile_configuration_register>:
    279e:	67a9                	lui	a5,0xa
    27a0:	c788                	sw	a0,8(a5)
    27a2:	800007b7          	lui	a5,0x80000
    27a6:	56178793          	addi	a5,a5,1377 # 80000561 <__GNU_EH_FRAME_HDR+0x7fffd2b5>
    27aa:	6729                	lui	a4,0xa
    27ac:	c31c                	sw	a5,0(a4)
    27ae:	be9d                	j	2324 <qspi_wait>

Disassembly of section .text.mt25ql256aba_write_disable:

000027b0 <mt25ql256aba_write_disable>:
    27b0:	bef9                	j	238e <s25fl128s_wrdi>

Disassembly of section .text.mt25ql256aba_write_enable:

000027b2 <mt25ql256aba_write_enable>:
    27b2:	bec1                	j	2382 <s25fl128s_wren>

Disassembly of section .text.mt25ql256aba_reset_enable:

000027b4 <mt25ql256aba_reset_enable>:
    27b4:	800007b7          	lui	a5,0x80000
    27b8:	06678793          	addi	a5,a5,102 # 80000066 <__GNU_EH_FRAME_HDR+0x7fffcdba>
    27bc:	6729                	lui	a4,0xa
    27be:	c31c                	sw	a5,0(a4)
    27c0:	b695                	j	2324 <qspi_wait>

Disassembly of section .text.mt25ql256aba_reset_memory:

000027c2 <mt25ql256aba_reset_memory>:
    27c2:	800007b7          	lui	a5,0x80000
    27c6:	09978793          	addi	a5,a5,153 # 80000099 <__GNU_EH_FRAME_HDR+0x7fffcded>
    27ca:	6729                	lui	a4,0xa
    27cc:	c31c                	sw	a5,0(a4)
    27ce:	be99                	j	2324 <qspi_wait>

Disassembly of section .text.timer_counter:

000027d0 <timer_counter>:
    27d0:	67b1                	lui	a5,0xc
    27d2:	4bc8                	lw	a0,20(a5)
    27d4:	8082                	ret

Disassembly of section .text.timer_event:

000027d6 <timer_event>:
    27d6:	67b1                	lui	a5,0xc
    27d8:	4f88                	lw	a0,24(a5)
    27da:	8082                	ret

Disassembly of section .text.timer_clear:

000027dc <timer_clear>:
    27dc:	67b1                	lui	a5,0xc
    27de:	4705                	li	a4,1
    27e0:	c798                	sw	a4,8(a5)
    27e2:	67b1                	lui	a5,0xc
    27e4:	cfd8                	sw	a4,28(a5)
    27e6:	8082                	ret

Disassembly of section .text.timer_enabled:

000027e8 <timer_enabled>:
    27e8:	67b1                	lui	a5,0xc
    27ea:	c7c8                	sw	a0,12(a5)
    27ec:	8082                	ret

Disassembly of section .text.timer_conf:

000027ee <timer_conf>:
    27ee:	1141                	addi	sp,sp,-16
    27f0:	c606                	sw	ra,12(sp)
    27f2:	67b1                	lui	a5,0xc
    27f4:	c388                	sw	a0,0(a5)
    27f6:	c3cc                	sw	a1,4(a5)
    27f8:	67b1                	lui	a5,0xc
    27fa:	cb90                	sw	a2,16(a5)
    27fc:	08000613          	li	a2,128
    2800:	6589                	lui	a1,0x2
    2802:	20058593          	addi	a1,a1,512 # 2200 <interrupt>
    2806:	30559073          	csrw	mtvec,a1
    280a:	30046073          	csrsi	mstatus,8
    280e:	30462073          	csrs	mie,a2
    2812:	37e9                	jal	27dc <timer_clear>
    2814:	40b2                	lw	ra,12(sp)
    2816:	67b1                	lui	a5,0xc
    2818:	4705                	li	a4,1
    281a:	c7d8                	sw	a4,12(a5)
    281c:	0141                	addi	sp,sp,16
    281e:	8082                	ret

Disassembly of section .text.usb_connected:

00002820 <usb_connected>:
    2820:	67b9                	lui	a5,0xe
    2822:	47c8                	lw	a0,12(a5)
    2824:	8905                	andi	a0,a0,1
    2826:	8082                	ret

Disassembly of section .text.usb_conf:

00002828 <usb_conf>:
    2828:	67b9                	lui	a5,0xe
    282a:	c388                	sw	a0,0(a5)
    282c:	157d                	addi	a0,a0,-1
    282e:	4791                	li	a5,4
    2830:	00a7e763          	bltu	a5,a0,283e <usb_conf+0x16>
    2834:	6739                	lui	a4,0xe
    2836:	0731                	addi	a4,a4,12 # e00c <__GNU_EH_FRAME_HDR+0xad60>
    2838:	431c                	lw	a5,0(a4)
    283a:	8b85                	andi	a5,a5,1
    283c:	dff5                	beqz	a5,2838 <usb_conf+0x10>
    283e:	8082                	ret

Disassembly of section .text.usb_rw:

00002840 <usb_rw>:
    2840:	67b9                	lui	a5,0xe
    2842:	c788                	sw	a0,8(a5)
    2844:	67b9                	lui	a5,0xe
    2846:	07b1                	addi	a5,a5,12 # e00c <__GNU_EH_FRAME_HDR+0xad60>
    2848:	4398                	lw	a4,0(a5)
    284a:	8b09                	andi	a4,a4,2
    284c:	ff75                	bnez	a4,2848 <usb_rw+0x8>
    284e:	4705                	li	a4,1
    2850:	c398                	sw	a4,0(a5)
    2852:	67b9                	lui	a5,0xe
    2854:	43c8                	lw	a0,4(a5)
    2856:	8082                	ret

Disassembly of section .text.gpio_write:

00002858 <gpio_write>:
    2858:	67c1                	lui	a5,0x10
    285a:	c3c8                	sw	a0,4(a5)
    285c:	8082                	ret

Disassembly of section .text.gpio_read:

0000285e <gpio_read>:
    285e:	67c1                	lui	a5,0x10
    2860:	4388                	lw	a0,0(a5)
    2862:	0542                	slli	a0,a0,0x10
    2864:	8141                	srli	a0,a0,0x10
    2866:	8082                	ret

Disassembly of section .text.instr_mem_write:

00002868 <instr_mem_write>:
    2868:	050a                	slli	a0,a0,0x2
    286a:	6791                	lui	a5,0x4
    286c:	97aa                	add	a5,a5,a0
    286e:	c38c                	sw	a1,0(a5)
    2870:	8082                	ret

Disassembly of section .text.uart_main:

00002872 <uart_main>:
    2872:	1141                	addi	sp,sp,-16
    2874:	c422                	sw	s0,8(sp)
    2876:	c226                	sw	s1,4(sp)
    2878:	c606                	sw	ra,12(sp)
    287a:	6799                	lui	a5,0x6
    287c:	0c700713          	li	a4,199
    2880:	c398                	sw	a4,0(a5)
    2882:	0007a223          	sw	zero,4(a5) # 6004 <__GNU_EH_FRAME_HDR+0x2d58>
    2886:	4401                	li	s0,0
    2888:	64c1                	lui	s1,0x10
    288a:	4088                	lw	a0,0(s1)
    288c:	c801                	beqz	s0,289c <uart_main+0x2a>
    288e:	0ff57513          	zext.b	a0,a0
    2892:	3c2d                	jal	22cc <uart_write>
    2894:	3c39                	jal	22b2 <uart_read>
    2896:	00144413          	xori	s0,s0,1
    289a:	bfc5                	j	288a <uart_main+0x18>
    289c:	0542                	slli	a0,a0,0x10
    289e:	8141                	srli	a0,a0,0x10
    28a0:	8121                	srli	a0,a0,0x8
    28a2:	bfc5                	j	2892 <uart_main+0x20>

Disassembly of section .text.uart_interrupt:

000028a4 <uart_interrupt>:
    28a4:	8082                	ret

Disassembly of section .text.i2c_main:

000028a6 <i2c_main>:
    28a6:	1141                	addi	sp,sp,-16
    28a8:	c422                	sw	s0,8(sp)
    28aa:	c226                	sw	s1,4(sp)
    28ac:	c04a                	sw	s2,0(sp)
    28ae:	c606                	sw	ra,12(sp)
    28b0:	67a1                	lui	a5,0x8
    28b2:	07b00713          	li	a4,123
    28b6:	c3d8                	sw	a4,4(a5)
    28b8:	4605                	li	a2,1
    28ba:	4581                	li	a1,0
    28bc:	557d                	li	a0,-1
    28be:	64c1                	lui	s1,0x10
    28c0:	6441                	lui	s0,0x10
    28c2:	3735                	jal	27ee <timer_conf>
    28c4:	14fd                	addi	s1,s1,-1 # ffff <__GNU_EH_FRAME_HDR+0xcd53>
    28c6:	0411                	addi	s0,s0,4 # 10004 <__GNU_EH_FRAME_HDR+0xcd58>
    28c8:	05002783          	lw	a5,80(zero) # 50 <i2c_tmp>
    28cc:	dff5                	beqz	a5,28c8 <i2c_main+0x22>
    28ce:	4509                	li	a0,2
    28d0:	3c25                	jal	2308 <i2c_read>
    28d2:	8d65                	and	a0,a0,s1
    28d4:	c008                	sw	a0,0(s0)
    28d6:	04002823          	sw	zero,80(zero) # 50 <i2c_tmp>
    28da:	b7fd                	j	28c8 <i2c_main+0x22>

Disassembly of section .text.i2c_interrupt:

000028dc <i2c_interrupt>:
    28dc:	4705                	li	a4,1
    28de:	04e02823          	sw	a4,80(zero) # 50 <i2c_tmp>
    28e2:	8082                	ret

Disassembly of section .text.qspi_main:

000028e4 <qspi_main>:
    28e4:	4715                	li	a4,5
    28e6:	67b9                	lui	a5,0xe
    28e8:	c398                	sw	a4,0(a5)
    28ea:	6739                	lui	a4,0xe
    28ec:	0731                	addi	a4,a4,12 # e00c <__GNU_EH_FRAME_HDR+0xad60>
    28ee:	431c                	lw	a5,0(a4)
    28f0:	8b85                	andi	a5,a5,1
    28f2:	dff5                	beqz	a5,28ee <qspi_main+0xa>
    28f4:	6741                	lui	a4,0x10
    28f6:	431c                	lw	a5,0(a4)
    28f8:	8b89                	andi	a5,a5,2
    28fa:	c7bd                	beqz	a5,2968 <qspi_main+0x84>
    28fc:	1101                	addi	sp,sp,-32
    28fe:	ce06                	sw	ra,28(sp)
    2900:	ca26                	sw	s1,20(sp)
    2902:	c64e                	sw	s3,12(sp)
    2904:	c256                	sw	s5,4(sp)
    2906:	cc22                	sw	s0,24(sp)
    2908:	c84a                	sw	s2,16(sp)
    290a:	c452                	sw	s4,8(sp)
    290c:	3c9d                	jal	2382 <s25fl128s_wren>
    290e:	07f00513          	li	a0,127
    2912:	3571                	jal	279e <mt25ql256aba_write_enhanced_volatile_configuration_register>
    2914:	4481                	li	s1,0
    2916:	6a91                	lui	s5,0x4
    2918:	0e000413          	li	s0,224
    291c:	02040a13          	addi	s4,s0,32
    2920:	a831                	j	293c <qspi_main+0x58>
    2922:	401c                	lw	a5,0(s0)
    2924:	197d                	addi	s2,s2,-1
    2926:	07a2                	slli	a5,a5,0x8
    2928:	c01c                	sw	a5,0(s0)
    292a:	3261                	jal	22b2 <uart_read>
    292c:	401c                	lw	a5,0(s0)
    292e:	97aa                	add	a5,a5,a0
    2930:	c01c                	sw	a5,0(s0)
    2932:	fe0918e3          	bnez	s2,2922 <qspi_main+0x3e>
    2936:	0411                	addi	s0,s0,4
    2938:	01440463          	beq	s0,s4,2940 <qspi_main+0x5c>
    293c:	4911                	li	s2,4
    293e:	b7d5                	j	2922 <qspi_main+0x3e>
    2940:	8526                	mv	a0,s1
    2942:	02000613          	li	a2,32
    2946:	0e000593          	li	a1,224
    294a:	02048493          	addi	s1,s1,32
    294e:	3b85                	jal	26be <mt25ql256aba_page_program>
    2950:	fd5494e3          	bne	s1,s5,2918 <qspi_main+0x34>
    2954:	40f2                	lw	ra,28(sp)
    2956:	4462                	lw	s0,24(sp)
    2958:	44d2                	lw	s1,20(sp)
    295a:	4942                	lw	s2,16(sp)
    295c:	49b2                	lw	s3,12(sp)
    295e:	4a22                	lw	s4,8(sp)
    2960:	4a92                	lw	s5,4(sp)
    2962:	4501                	li	a0,0
    2964:	6105                	addi	sp,sp,32
    2966:	8082                	ret
    2968:	431c                	lw	a5,0(a4)
    296a:	8b85                	andi	a5,a5,1
    296c:	d7c9                	beqz	a5,28f6 <qspi_main+0x12>
    296e:	a001                	j	296e <qspi_main+0x8a>

Disassembly of section .text.qspi_interrupt:

00002970 <qspi_interrupt>:
    2970:	8082                	ret

Disassembly of section .text.timer_main:

00002972 <timer_main>:
    2972:	1101                	addi	sp,sp,-32
    2974:	653d                	lui	a0,0xf
    2976:	cc22                	sw	s0,24(sp)
    2978:	c84a                	sw	s2,16(sp)
    297a:	4605                	li	a2,1
    297c:	4581                	li	a1,0
    297e:	a5f50513          	addi	a0,a0,-1441 # ea5f <__GNU_EH_FRAME_HDR+0xb7b3>
    2982:	6441                	lui	s0,0x10
    2984:	6931                	lui	s2,0xc
    2986:	ca26                	sw	s1,20(sp)
    2988:	c64e                	sw	s3,12(sp)
    298a:	ce06                	sw	ra,28(sp)
    298c:	358d                	jal	27ee <timer_conf>
    298e:	fff40493          	addi	s1,s0,-1 # ffff <__GNU_EH_FRAME_HDR+0xcd53>
    2992:	0911                	addi	s2,s2,4 # c004 <__GNU_EH_FRAME_HDR+0x8d58>
    2994:	04c02703          	lw	a4,76(zero) # 4c <timer_tmp2>
    2998:	401c                	lw	a5,0(s0)
    299a:	8fe5                	and	a5,a5,s1
    299c:	fee78ee3          	beq	a5,a4,2998 <timer_main+0x26>
    29a0:	401c                	lw	a5,0(s0)
    29a2:	8fe5                	and	a5,a5,s1
    29a4:	00f92023          	sw	a5,0(s2)
    29a8:	3d15                	jal	27dc <timer_clear>
    29aa:	401c                	lw	a5,0(s0)
    29ac:	8fe5                	and	a5,a5,s1
    29ae:	04f02623          	sw	a5,76(zero) # 4c <timer_tmp2>
    29b2:	b7cd                	j	2994 <timer_main+0x22>

Disassembly of section .text.timer_interrupt:

000029b4 <timer_interrupt>:
    29b4:	11405683          	lhu	a3,276(zero) # 114 <timer_tmp>
    29b8:	6741                	lui	a4,0x10
    29ba:	c354                	sw	a3,4(a4)
    29bc:	11402703          	lw	a4,276(zero) # 114 <timer_tmp>
    29c0:	0705                	addi	a4,a4,1 # 10001 <__GNU_EH_FRAME_HDR+0xcd55>
    29c2:	10e02a23          	sw	a4,276(zero) # 114 <timer_tmp>
    29c6:	8082                	ret

Disassembly of section .text.gpio_main:

000029c8 <gpio_main>:
    29c8:	66c1                	lui	a3,0x10
    29ca:	67c1                	lui	a5,0x10
    29cc:	fff68613          	addi	a2,a3,-1 # ffff <__GNU_EH_FRAME_HDR+0xcd53>
    29d0:	0791                	addi	a5,a5,4 # 10004 <__GNU_EH_FRAME_HDR+0xcd58>
    29d2:	4298                	lw	a4,0(a3)
    29d4:	8f71                	and	a4,a4,a2
    29d6:	c398                	sw	a4,0(a5)
    29d8:	bfed                	j	29d2 <gpio_main+0xa>

Disassembly of section .text.gpio_interrupt:

000029da <gpio_interrupt>:
    29da:	8082                	ret

Disassembly of section .text.usb_main:

000029dc <usb_main>:
    29dc:	7179                	addi	sp,sp,-48
    29de:	d04a                	sw	s2,32(sp)
    29e0:	4605                	li	a2,1
    29e2:	4581                	li	a1,0
    29e4:	557d                	li	a0,-1
    29e6:	6939                	lui	s2,0xe
    29e8:	d422                	sw	s0,40(sp)
    29ea:	d226                	sw	s1,36(sp)
    29ec:	ce4e                	sw	s3,28(sp)
    29ee:	cc52                	sw	s4,24(sp)
    29f0:	ca56                	sw	s5,20(sp)
    29f2:	d606                	sw	ra,44(sp)
    29f4:	c85a                	sw	s6,16(sp)
    29f6:	c65e                	sw	s7,12(sp)
    29f8:	c462                	sw	s8,8(sp)
    29fa:	c266                	sw	s9,4(sp)
    29fc:	3bcd                	jal	27ee <timer_conf>
    29fe:	4a85                	li	s5,1
    2a00:	0931                	addi	s2,s2,12 # e00c <__GNU_EH_FRAME_HDR+0xad60>
    2a02:	6b41                	lui	s6,0x10
    2a04:	000b2783          	lw	a5,0(s6) # 10000 <__GNU_EH_FRAME_HDR+0xcd54>
    2a08:	4701                	li	a4,0
    2a0a:	4681                	li	a3,0
    2a0c:	0ff7f793          	zext.b	a5,a5
    2a10:	10f02823          	sw	a5,272(zero) # 110 <usb_tmp>
    2a14:	00170613          	addi	a2,a4,1
    2a18:	efad                	bnez	a5,2a92 <usb_main+0xb6>
    2a1a:	e2c1                	bnez	a3,2a9a <usb_main+0xbe>
    2a1c:	10002423          	sw	zero,264(zero) # 108 <usb_state>
    2a20:	10802503          	lw	a0,264(zero) # 108 <usb_state>
    2a24:	10402783          	lw	a5,260(zero) # 104 <usb_old_state>
    2a28:	00f50363          	beq	a0,a5,2a2e <usb_main+0x52>
    2a2c:	3bf5                	jal	2828 <usb_conf>
    2a2e:	10802783          	lw	a5,264(zero) # 108 <usb_state>
    2a32:	10f02223          	sw	a5,260(zero) # 104 <usb_old_state>
    2a36:	00092703          	lw	a4,0(s2)
    2a3a:	07a2                	slli	a5,a5,0x8
    2a3c:	8b05                	andi	a4,a4,1
    2a3e:	97ba                	add	a5,a5,a4
    2a40:	07c2                	slli	a5,a5,0x10
    2a42:	83c1                	srli	a5,a5,0x10
    2a44:	6741                	lui	a4,0x10
    2a46:	c35c                	sw	a5,4(a4)
    2a48:	10802783          	lw	a5,264(zero) # 108 <usb_state>
    2a4c:	4711                	li	a4,4
    2a4e:	06e78463          	beq	a5,a4,2ab6 <usb_main+0xda>
    2a52:	04f76963          	bltu	a4,a5,2aa4 <usb_main+0xc8>
    2a56:	05578a63          	beq	a5,s5,2aaa <usb_main+0xce>
    2a5a:	4709                	li	a4,2
    2a5c:	fae794e3          	bne	a5,a4,2a04 <usb_main+0x28>
    2a60:	4501                	li	a0,0
    2a62:	3bf9                	jal	2840 <usb_rw>
    2a64:	4b81                	li	s7,0
    2a66:	14000c13          	li	s8,320
    2a6a:	0b400c93          	li	s9,180
    2a6e:	4b01                	li	s6,0
    2a70:	10c02503          	lw	a0,268(zero) # 10c <usb_tmp2>
    2a74:	955e                	add	a0,a0,s7
    2a76:	955a                	add	a0,a0,s6
    2a78:	0b05                	addi	s6,s6,1
    2a7a:	33d9                	jal	2840 <usb_rw>
    2a7c:	ff8b1ae3          	bne	s6,s8,2a70 <usb_main+0x94>
    2a80:	0b85                	addi	s7,s7,1
    2a82:	ff9b96e3          	bne	s7,s9,2a6e <usb_main+0x92>
    2a86:	10c02783          	lw	a5,268(zero) # 10c <usb_tmp2>
    2a8a:	0785                	addi	a5,a5,1
    2a8c:	10f02623          	sw	a5,268(zero) # 10c <usb_tmp2>
    2a90:	bf8d                	j	2a02 <usb_main+0x26>
    2a92:	8385                	srli	a5,a5,0x1
    2a94:	8732                	mv	a4,a2
    2a96:	4685                	li	a3,1
    2a98:	bfb5                	j	2a14 <usb_main+0x38>
    2a9a:	10e02423          	sw	a4,264(zero) # 108 <usb_state>
    2a9e:	10002823          	sw	zero,272(zero) # 110 <usb_tmp>
    2aa2:	bfbd                	j	2a20 <usb_main+0x44>
    2aa4:	4715                	li	a4,5
    2aa6:	f4e79fe3          	bne	a5,a4,2a04 <usb_main+0x28>
    2aaa:	11002503          	lw	a0,272(zero) # 110 <usb_tmp>
    2aae:	3b49                	jal	2840 <usb_rw>
    2ab0:	10a02823          	sw	a0,272(zero) # 110 <usb_tmp>
    2ab4:	b7b9                	j	2a02 <usb_main+0x26>
    2ab6:	000b2783          	lw	a5,0(s6)
    2aba:	07c2                	slli	a5,a5,0x10
    2abc:	83c1                	srli	a5,a5,0x10
    2abe:	83a1                	srli	a5,a5,0x8
    2ac0:	10f02823          	sw	a5,272(zero) # 110 <usb_tmp>
    2ac4:	bf3d                	j	2a02 <usb_main+0x26>

Disassembly of section .text.usb_interrupt:

00002ac6 <usb_interrupt>:
    2ac6:	10802703          	lw	a4,264(zero) # 108 <usb_state>
    2aca:	4791                	li	a5,4
    2acc:	00f71563          	bne	a4,a5,2ad6 <usb_interrupt+0x10>
    2ad0:	11002503          	lw	a0,272(zero) # 110 <usb_tmp>
    2ad4:	b3b5                	j	2840 <usb_rw>
    2ad6:	8082                	ret

Disassembly of section .text.data_mem_main:

00002ad8 <data_mem_main>:
    2ad8:	66c1                	lui	a3,0x10
    2ada:	6741                	lui	a4,0x10
    2adc:	fff68613          	addi	a2,a3,-1 # ffff <__GNU_EH_FRAME_HDR+0xcd53>
    2ae0:	0711                	addi	a4,a4,4 # 10004 <__GNU_EH_FRAME_HDR+0xcd58>
    2ae2:	429c                	lw	a5,0(a3)
    2ae4:	8ff1                	and	a5,a5,a2
    2ae6:	0786                	slli	a5,a5,0x1
    2ae8:	0007d783          	lhu	a5,0(a5)
    2aec:	c31c                	sw	a5,0(a4)
    2aee:	bfd5                	j	2ae2 <data_mem_main+0xa>
