
a.out:     file format elf32-littleriscv


Disassembly of section .text:

00002000 <main>:
    2000:	05c05703          	lhu	a4,92(zero) # 5c <main_gpio_val>
    2004:	67c1                	lui	a5,0x10
    2006:	4605                	li	a2,1
    2008:	c3d8                	sw	a4,4(a5)
    200a:	4581                	li	a1,0
    200c:	557d                	li	a0,-1
    200e:	25bd                	jal	267c <timer_conf>
    2010:	6641                	lui	a2,0x10
    2012:	4218                	lw	a4,0(a2)
    2014:	0742                	slli	a4,a4,0x10
    2016:	8741                	srai	a4,a4,0x10
    2018:	df6d                	beqz	a4,2012 <main+0x12>
    201a:	67b1                	lui	a5,0xc
    201c:	0007a623          	sw	zero,12(a5) # c00c <__GNU_EH_FRAME_HDR+0x9158>
    2020:	fff70793          	addi	a5,a4,-1
    2024:	07c2                	slli	a5,a5,0x10
    2026:	83c1                	srli	a5,a5,0x10
    2028:	4695                	li	a3,5
    202a:	fef6e4e3          	bltu	a3,a5,2012 <main+0x12>
    202e:	00000693          	li	a3,0
    2032:	078a                	slli	a5,a5,0x2
    2034:	97b6                	add	a5,a5,a3
    2036:	4394                	lw	a3,0(a5)
    2038:	8682                	jr	a3
    203a:	4705                	li	a4,1
    203c:	0ee01823          	sh	a4,240(zero) # f0 <main_state>
    2040:	257d                	jal	26ee <uart_main>
    2042:	4709                	li	a4,2
    2044:	0ee01823          	sh	a4,240(zero) # f0 <main_state>
    2048:	2df9                	jal	2726 <i2c_main>
    204a:	0ee01823          	sh	a4,240(zero) # f0 <main_state>
    204e:	734000ef          	jal	2782 <timer_main>
    2052:	4715                	li	a4,5
    2054:	0ee01823          	sh	a4,240(zero) # f0 <main_state>
    2058:	754000ef          	jal	27ac <gpio_main>
    205c:	4719                	li	a4,6
    205e:	0ee01823          	sh	a4,240(zero) # f0 <main_state>
    2062:	75e000ef          	jal	27c0 <usb_main>
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
    2244:	0f001783          	lh	a5,240(zero) # f0 <main_state>
    2248:	a876                	fsd	ft9,16(sp)
    224a:	a47a                	fsd	ft10,8(sp)
    224c:	a07e                	fsd	ft11,0(sp)
    224e:	4711                	li	a4,4
    2250:	08e78163          	beq	a5,a4,22d2 <interrupt+0xd2>
    2254:	04f74d63          	blt	a4,a5,22ae <interrupt+0xae>
    2258:	c3a5                	beqz	a5,22b8 <interrupt+0xb8>
    225a:	4709                	li	a4,2
    225c:	06e78963          	beq	a5,a4,22ce <interrupt+0xce>
    2260:	40fe                	lw	ra,220(sp)
    2262:	42ee                	lw	t0,216(sp)
    2264:	435e                	lw	t1,212(sp)
    2266:	43ce                	lw	t2,208(sp)
    2268:	453e                	lw	a0,204(sp)
    226a:	45ae                	lw	a1,200(sp)
    226c:	461e                	lw	a2,196(sp)
    226e:	468e                	lw	a3,192(sp)
    2270:	577a                	lw	a4,188(sp)
    2272:	57ea                	lw	a5,184(sp)
    2274:	585a                	lw	a6,180(sp)
    2276:	58ca                	lw	a7,176(sp)
    2278:	5e3a                	lw	t3,172(sp)
    227a:	5eaa                	lw	t4,168(sp)
    227c:	5f1a                	lw	t5,164(sp)
    227e:	5f8a                	lw	t6,160(sp)
    2280:	206a                	fld	ft0,152(sp)
    2282:	20ca                	fld	ft1,144(sp)
    2284:	212a                	fld	ft2,136(sp)
    2286:	218a                	fld	ft3,128(sp)
    2288:	3266                	fld	ft4,120(sp)
    228a:	32c6                	fld	ft5,112(sp)
    228c:	3326                	fld	ft6,104(sp)
    228e:	3386                	fld	ft7,96(sp)
    2290:	2566                	fld	fa0,88(sp)
    2292:	25c6                	fld	fa1,80(sp)
    2294:	2626                	fld	fa2,72(sp)
    2296:	2686                	fld	fa3,64(sp)
    2298:	3762                	fld	fa4,56(sp)
    229a:	37c2                	fld	fa5,48(sp)
    229c:	3822                	fld	fa6,40(sp)
    229e:	3882                	fld	fa7,32(sp)
    22a0:	2e62                	fld	ft8,24(sp)
    22a2:	2ec2                	fld	ft9,16(sp)
    22a4:	2f22                	fld	ft10,8(sp)
    22a6:	2f82                	fld	ft11,0(sp)
    22a8:	612d                	addi	sp,sp,224
    22aa:	30200073          	mret
    22ae:	4719                	li	a4,6
    22b0:	fae798e3          	bne	a5,a4,2260 <interrupt+0x60>
    22b4:	2bf9                	jal	2892 <usb_interrupt>
    22b6:	b76d                	j	2260 <interrupt+0x60>
    22b8:	05c01783          	lh	a5,92(zero) # 5c <main_gpio_val>
    22bc:	fff7c793          	not	a5,a5
    22c0:	04f01e23          	sh	a5,92(zero) # 5c <main_gpio_val>
    22c4:	07c2                	slli	a5,a5,0x10
    22c6:	83c1                	srli	a5,a5,0x10
    22c8:	6741                	lui	a4,0x10
    22ca:	c35c                	sw	a5,4(a4)
    22cc:	bf51                	j	2260 <interrupt+0x60>
    22ce:	2949                	jal	2760 <i2c_interrupt>
    22d0:	bf41                	j	2260 <interrupt+0x60>
    22d2:	21f9                	jal	27a0 <timer_interrupt>
    22d4:	b771                	j	2260 <interrupt+0x60>

Disassembly of section .text.uart_conf:

000022d6 <uart_conf>:
    22d6:	039387b7          	lui	a5,0x3938
    22da:	70078793          	addi	a5,a5,1792 # 3938700 <__GNU_EH_FRAME_HDR+0x393584c>
    22de:	02a7d7b3          	divu	a5,a5,a0
    22e2:	6719                	lui	a4,0x6
    22e4:	17fd                	addi	a5,a5,-1
    22e6:	c31c                	sw	a5,0(a4)
    22e8:	6799                	lui	a5,0x6
    22ea:	c3cc                	sw	a1,4(a5)
    22ec:	8082                	ret

Disassembly of section .text.uart_read:

000022ee <uart_read>:
    22ee:	6799                	lui	a5,0x6
    22f0:	07c1                	addi	a5,a5,16 # 6010 <__GNU_EH_FRAME_HDR+0x315c>
    22f2:	4709                	li	a4,2
    22f4:	4394                	lw	a3,0(a5)
    22f6:	fee69fe3          	bne	a3,a4,22f4 <uart_read+0x6>
    22fa:	6719                	lui	a4,0x6
    22fc:	4708                	lw	a0,8(a4)
    22fe:	0007a023          	sw	zero,0(a5)
    2302:	0ff57513          	zext.b	a0,a0
    2306:	8082                	ret

Disassembly of section .text.uart_write:

00002308 <uart_write>:
    2308:	6799                	lui	a5,0x6
    230a:	c7c8                	sw	a0,12(a5)
    230c:	6799                	lui	a5,0x6
    230e:	4705                	li	a4,1
    2310:	07c1                	addi	a5,a5,16 # 6010 <__GNU_EH_FRAME_HDR+0x315c>
    2312:	c398                	sw	a4,0(a5)
    2314:	4715                	li	a4,5
    2316:	4394                	lw	a3,0(a5)
    2318:	fee69fe3          	bne	a3,a4,2316 <uart_write+0xe>
    231c:	0007a023          	sw	zero,0(a5)
    2320:	8082                	ret

Disassembly of section .text.i2c_conf:

00002322 <i2c_conf>:
    2322:	67a1                	lui	a5,0x8
    2324:	c3c8                	sw	a0,4(a5)
    2326:	8082                	ret

Disassembly of section .text.i2c_write:

00002328 <i2c_write>:
    2328:	67a1                	lui	a5,0x8
    232a:	c38c                	sw	a1,0(a5)
    232c:	c7c8                	sw	a0,12(a5)
    232e:	67a1                	lui	a5,0x8
    2330:	4705                	li	a4,1
    2332:	07c1                	addi	a5,a5,16 # 8010 <__GNU_EH_FRAME_HDR+0x515c>
    2334:	c398                	sw	a4,0(a5)
    2336:	470d                	li	a4,3
    2338:	4394                	lw	a3,0(a5)
    233a:	fee69fe3          	bne	a3,a4,2338 <i2c_write+0x10>
    233e:	0007a023          	sw	zero,0(a5)
    2342:	8082                	ret

Disassembly of section .text.i2c_read:

00002344 <i2c_read>:
    2344:	67a1                	lui	a5,0x8
    2346:	c388                	sw	a0,0(a5)
    2348:	4711                	li	a4,4
    234a:	07c1                	addi	a5,a5,16 # 8010 <__GNU_EH_FRAME_HDR+0x515c>
    234c:	c398                	sw	a4,0(a5)
    234e:	4731                	li	a4,12
    2350:	4394                	lw	a3,0(a5)
    2352:	fee69fe3          	bne	a3,a4,2350 <i2c_read+0xc>
    2356:	0007a023          	sw	zero,0(a5)
    235a:	67a1                	lui	a5,0x8
    235c:	4788                	lw	a0,8(a5)
    235e:	8082                	ret

Disassembly of section .text.qspi_wait:

00002360 <qspi_wait>:
    2360:	67a9                	lui	a5,0xa
    2362:	02878793          	addi	a5,a5,40 # a028 <__GNU_EH_FRAME_HDR+0x7174>
    2366:	4705                	li	a4,1
    2368:	4394                	lw	a3,0(a5)
    236a:	fee69fe3          	bne	a3,a4,2368 <qspi_wait+0x8>
    236e:	67a9                	lui	a5,0xa
    2370:	02878793          	addi	a5,a5,40 # a028 <__GNU_EH_FRAME_HDR+0x7174>
    2374:	4705                	li	a4,1
    2376:	4394                	lw	a3,0(a5)
    2378:	fee69fe3          	bne	a3,a4,2376 <qspi_wait+0x16>
    237c:	8082                	ret

Disassembly of section .text.qspi_read_array:

0000237e <qspi_read_array>:
    237e:	058d                	addi	a1,a1,3
    2380:	6729                	lui	a4,0xa
    2382:	99f1                	andi	a1,a1,-4
    2384:	4781                	li	a5,0
    2386:	0721                	addi	a4,a4,8 # a008 <__GNU_EH_FRAME_HDR+0x7154>
    2388:	00b79363          	bne	a5,a1,238e <qspi_read_array+0x10>
    238c:	8082                	ret
    238e:	00e786b3          	add	a3,a5,a4
    2392:	4290                	lw	a2,0(a3)
    2394:	00f506b3          	add	a3,a0,a5
    2398:	0791                	addi	a5,a5,4
    239a:	c290                	sw	a2,0(a3)
    239c:	b7f5                	j	2388 <qspi_read_array+0xa>

Disassembly of section .text.qspi_write_array:

0000239e <qspi_write_array>:
    239e:	058d                	addi	a1,a1,3
    23a0:	6729                	lui	a4,0xa
    23a2:	99f1                	andi	a1,a1,-4
    23a4:	4781                	li	a5,0
    23a6:	0721                	addi	a4,a4,8 # a008 <__GNU_EH_FRAME_HDR+0x7154>
    23a8:	00b79363          	bne	a5,a1,23ae <qspi_write_array+0x10>
    23ac:	8082                	ret
    23ae:	00f50633          	add	a2,a0,a5
    23b2:	4210                	lw	a2,0(a2)
    23b4:	00e786b3          	add	a3,a5,a4
    23b8:	0791                	addi	a5,a5,4
    23ba:	c290                	sw	a2,0(a3)
    23bc:	b7f5                	j	23a8 <qspi_write_array+0xa>

Disassembly of section .text.s25fl128s_wren:

000023be <s25fl128s_wren>:
    23be:	800007b7          	lui	a5,0x80000
    23c2:	0799                	addi	a5,a5,6 # 80000006 <__GNU_EH_FRAME_HDR+0x7fffd152>
    23c4:	6729                	lui	a4,0xa
    23c6:	c31c                	sw	a5,0(a4)
    23c8:	bf61                	j	2360 <qspi_wait>

Disassembly of section .text.s25fl128s_wrdi:

000023ca <s25fl128s_wrdi>:
    23ca:	800007b7          	lui	a5,0x80000
    23ce:	0791                	addi	a5,a5,4 # 80000004 <__GNU_EH_FRAME_HDR+0x7fffd150>
    23d0:	6729                	lui	a4,0xa
    23d2:	c31c                	sw	a5,0(a4)
    23d4:	b771                	j	2360 <qspi_wait>

Disassembly of section .text.s25fl128s_clsr:

000023d6 <s25fl128s_clsr>:
    23d6:	800007b7          	lui	a5,0x80000
    23da:	03078793          	addi	a5,a5,48 # 80000030 <__GNU_EH_FRAME_HDR+0x7fffd17c>
    23de:	6729                	lui	a4,0xa
    23e0:	c31c                	sw	a5,0(a4)
    23e2:	bfbd                	j	2360 <qspi_wait>

Disassembly of section .text.s25fl128s_reset:

000023e4 <s25fl128s_reset>:
    23e4:	800007b7          	lui	a5,0x80000
    23e8:	0f078793          	addi	a5,a5,240 # 800000f0 <__GNU_EH_FRAME_HDR+0x7fffd23c>
    23ec:	6729                	lui	a4,0xa
    23ee:	c31c                	sw	a5,0(a4)
    23f0:	bf85                	j	2360 <qspi_wait>

Disassembly of section .text.s25fl128s_rdid:

000023f2 <s25fl128s_rdid>:
    23f2:	fff58793          	addi	a5,a1,-1
    23f6:	80000737          	lui	a4,0x80000
    23fa:	1101                	addi	sp,sp,-32
    23fc:	19f70713          	addi	a4,a4,415 # 8000019f <__GNU_EH_FRAME_HDR+0x7fffd2eb>
    2400:	07c2                	slli	a5,a5,0x10
    2402:	ce06                	sw	ra,28(sp)
    2404:	c62a                	sw	a0,12(sp)
    2406:	c42e                	sw	a1,8(sp)
    2408:	97ba                	add	a5,a5,a4
    240a:	6729                	lui	a4,0xa
    240c:	c31c                	sw	a5,0(a4)
    240e:	3f89                	jal	2360 <qspi_wait>
    2410:	45a2                	lw	a1,8(sp)
    2412:	4532                	lw	a0,12(sp)
    2414:	40f2                	lw	ra,28(sp)
    2416:	6105                	addi	sp,sp,32
    2418:	b79d                	j	237e <qspi_read_array>

Disassembly of section .text.s25fl128s_rdsr1:

0000241a <s25fl128s_rdsr1>:
    241a:	1141                	addi	sp,sp,-16
    241c:	800007b7          	lui	a5,0x80000
    2420:	c606                	sw	ra,12(sp)
    2422:	10578793          	addi	a5,a5,261 # 80000105 <__GNU_EH_FRAME_HDR+0x7fffd251>
    2426:	6729                	lui	a4,0xa
    2428:	c31c                	sw	a5,0(a4)
    242a:	3f1d                	jal	2360 <qspi_wait>
    242c:	67a9                	lui	a5,0xa
    242e:	4788                	lw	a0,8(a5)
    2430:	40b2                	lw	ra,12(sp)
    2432:	0ff57513          	zext.b	a0,a0
    2436:	0141                	addi	sp,sp,16
    2438:	8082                	ret

Disassembly of section .text.s25fl128s_rdsr2:

0000243a <s25fl128s_rdsr2>:
    243a:	1141                	addi	sp,sp,-16
    243c:	800007b7          	lui	a5,0x80000
    2440:	c606                	sw	ra,12(sp)
    2442:	10778793          	addi	a5,a5,263 # 80000107 <__GNU_EH_FRAME_HDR+0x7fffd253>
    2446:	6729                	lui	a4,0xa
    2448:	c31c                	sw	a5,0(a4)
    244a:	3f19                	jal	2360 <qspi_wait>
    244c:	67a9                	lui	a5,0xa
    244e:	4788                	lw	a0,8(a5)
    2450:	40b2                	lw	ra,12(sp)
    2452:	0ff57513          	zext.b	a0,a0
    2456:	0141                	addi	sp,sp,16
    2458:	8082                	ret

Disassembly of section .text.s25fl128s_rdcr:

0000245a <s25fl128s_rdcr>:
    245a:	1141                	addi	sp,sp,-16
    245c:	800007b7          	lui	a5,0x80000
    2460:	c606                	sw	ra,12(sp)
    2462:	13578793          	addi	a5,a5,309 # 80000135 <__GNU_EH_FRAME_HDR+0x7fffd281>
    2466:	6729                	lui	a4,0xa
    2468:	c31c                	sw	a5,0(a4)
    246a:	3ddd                	jal	2360 <qspi_wait>
    246c:	67a9                	lui	a5,0xa
    246e:	4788                	lw	a0,8(a5)
    2470:	40b2                	lw	ra,12(sp)
    2472:	0ff57513          	zext.b	a0,a0
    2476:	0141                	addi	sp,sp,16
    2478:	8082                	ret

Disassembly of section .text.s25fl128s_read_id:

0000247a <s25fl128s_read_id>:
    247a:	1141                	addi	sp,sp,-16
    247c:	c606                	sw	ra,12(sp)
    247e:	67a9                	lui	a5,0xa
    2480:	c3c8                	sw	a0,4(a5)
    2482:	800127b7          	lui	a5,0x80012
    2486:	99078793          	addi	a5,a5,-1648 # 80011990 <__GNU_EH_FRAME_HDR+0x8000eadc>
    248a:	6729                	lui	a4,0xa
    248c:	c31c                	sw	a5,0(a4)
    248e:	3dc9                	jal	2360 <qspi_wait>
    2490:	67a9                	lui	a5,0xa
    2492:	4788                	lw	a0,8(a5)
    2494:	40b2                	lw	ra,12(sp)
    2496:	0542                	slli	a0,a0,0x10
    2498:	8141                	srli	a0,a0,0x10
    249a:	0141                	addi	sp,sp,16
    249c:	8082                	ret

Disassembly of section .text.s25fl128s_res:

0000249e <s25fl128s_res>:
    249e:	1141                	addi	sp,sp,-16
    24a0:	800027b7          	lui	a5,0x80002
    24a4:	c606                	sw	ra,12(sp)
    24a6:	9ab78793          	addi	a5,a5,-1621 # 800019ab <__GNU_EH_FRAME_HDR+0x7fffeaf7>
    24aa:	6729                	lui	a4,0xa
    24ac:	c31c                	sw	a5,0(a4)
    24ae:	3d4d                	jal	2360 <qspi_wait>
    24b0:	67a9                	lui	a5,0xa
    24b2:	4788                	lw	a0,8(a5)
    24b4:	40b2                	lw	ra,12(sp)
    24b6:	0ff57513          	zext.b	a0,a0
    24ba:	0141                	addi	sp,sp,16
    24bc:	8082                	ret

Disassembly of section .text.s25fl128s_wrr:

000024be <s25fl128s_wrr>:
    24be:	67a9                	lui	a5,0xa
    24c0:	c788                	sw	a0,8(a5)
    24c2:	800107b7          	lui	a5,0x80010
    24c6:	50178793          	addi	a5,a5,1281 # 80010501 <__GNU_EH_FRAME_HDR+0x8000d64d>
    24ca:	6729                	lui	a4,0xa
    24cc:	c31c                	sw	a5,0(a4)
    24ce:	bd49                	j	2360 <qspi_wait>

Disassembly of section .text.s25fl128s_read:

000024d0 <s25fl128s_read>:
    24d0:	fff60793          	addi	a5,a2,-1 # ffff <__GNU_EH_FRAME_HDR+0xd14b>
    24d4:	80002737          	lui	a4,0x80002
    24d8:	1141                	addi	sp,sp,-16
    24da:	90370713          	addi	a4,a4,-1789 # 80001903 <__GNU_EH_FRAME_HDR+0x7fffea4f>
    24de:	07c2                	slli	a5,a5,0x10
    24e0:	c422                	sw	s0,8(sp)
    24e2:	c226                	sw	s1,4(sp)
    24e4:	c606                	sw	ra,12(sp)
    24e6:	97ba                	add	a5,a5,a4
    24e8:	6729                	lui	a4,0xa
    24ea:	c348                	sw	a0,4(a4)
    24ec:	6729                	lui	a4,0xa
    24ee:	c31c                	sw	a5,0(a4)
    24f0:	84ae                	mv	s1,a1
    24f2:	8432                	mv	s0,a2
    24f4:	35b5                	jal	2360 <qspi_wait>
    24f6:	85a2                	mv	a1,s0
    24f8:	4422                	lw	s0,8(sp)
    24fa:	40b2                	lw	ra,12(sp)
    24fc:	8526                	mv	a0,s1
    24fe:	4492                	lw	s1,4(sp)
    2500:	0141                	addi	sp,sp,16
    2502:	bdb5                	j	237e <qspi_read_array>

Disassembly of section .text.s25fl128s_pp:

00002504 <s25fl128s_pp>:
    2504:	1141                	addi	sp,sp,-16
    2506:	c422                	sw	s0,8(sp)
    2508:	800027b7          	lui	a5,0x80002
    250c:	fff60413          	addi	s0,a2,-1
    2510:	d0278793          	addi	a5,a5,-766 # 80001d02 <__GNU_EH_FRAME_HDR+0x7fffee4e>
    2514:	0442                	slli	s0,s0,0x10
    2516:	c606                	sw	ra,12(sp)
    2518:	872a                	mv	a4,a0
    251a:	943e                	add	s0,s0,a5
    251c:	67a9                	lui	a5,0xa
    251e:	852e                	mv	a0,a1
    2520:	c3d8                	sw	a4,4(a5)
    2522:	85b2                	mv	a1,a2
    2524:	3dad                	jal	239e <qspi_write_array>
    2526:	67a9                	lui	a5,0xa
    2528:	c380                	sw	s0,0(a5)
    252a:	4422                	lw	s0,8(sp)
    252c:	40b2                	lw	ra,12(sp)
    252e:	0141                	addi	sp,sp,16
    2530:	bd05                	j	2360 <qspi_wait>

Disassembly of section .text.s25fl128s_se:

00002532 <s25fl128s_se>:
    2532:	67a9                	lui	a5,0xa
    2534:	c788                	sw	a0,8(a5)
    2536:	800207b7          	lui	a5,0x80020
    253a:	5d878793          	addi	a5,a5,1496 # 800205d8 <__GNU_EH_FRAME_HDR+0x8001d724>
    253e:	6729                	lui	a4,0xa
    2540:	c31c                	sw	a5,0(a4)
    2542:	bd39                	j	2360 <qspi_wait>

Disassembly of section .text.s25fl128s_dor:

00002544 <s25fl128s_dor>:
    2544:	fff60793          	addi	a5,a2,-1
    2548:	80002737          	lui	a4,0x80002
    254c:	1141                	addi	sp,sp,-16
    254e:	23b70713          	addi	a4,a4,571 # 8000223b <__GNU_EH_FRAME_HDR+0x7ffff387>
    2552:	07c2                	slli	a5,a5,0x10
    2554:	c422                	sw	s0,8(sp)
    2556:	c226                	sw	s1,4(sp)
    2558:	c606                	sw	ra,12(sp)
    255a:	97ba                	add	a5,a5,a4
    255c:	6729                	lui	a4,0xa
    255e:	c348                	sw	a0,4(a4)
    2560:	6729                	lui	a4,0xa
    2562:	c31c                	sw	a5,0(a4)
    2564:	84ae                	mv	s1,a1
    2566:	8432                	mv	s0,a2
    2568:	3be5                	jal	2360 <qspi_wait>
    256a:	85a2                	mv	a1,s0
    256c:	4422                	lw	s0,8(sp)
    256e:	40b2                	lw	ra,12(sp)
    2570:	8526                	mv	a0,s1
    2572:	4492                	lw	s1,4(sp)
    2574:	0141                	addi	sp,sp,16
    2576:	b521                	j	237e <qspi_read_array>

Disassembly of section .text.s25fl128s_qor:

00002578 <s25fl128s_qor>:
    2578:	fff60793          	addi	a5,a2,-1
    257c:	80002737          	lui	a4,0x80002
    2580:	1141                	addi	sp,sp,-16
    2582:	36b70713          	addi	a4,a4,875 # 8000236b <__GNU_EH_FRAME_HDR+0x7ffff4b7>
    2586:	07c2                	slli	a5,a5,0x10
    2588:	c422                	sw	s0,8(sp)
    258a:	c226                	sw	s1,4(sp)
    258c:	c606                	sw	ra,12(sp)
    258e:	97ba                	add	a5,a5,a4
    2590:	6729                	lui	a4,0xa
    2592:	c348                	sw	a0,4(a4)
    2594:	6729                	lui	a4,0xa
    2596:	c31c                	sw	a5,0(a4)
    2598:	84ae                	mv	s1,a1
    259a:	8432                	mv	s0,a2
    259c:	33d1                	jal	2360 <qspi_wait>
    259e:	85a2                	mv	a1,s0
    25a0:	4422                	lw	s0,8(sp)
    25a2:	40b2                	lw	ra,12(sp)
    25a4:	8526                	mv	a0,s1
    25a6:	4492                	lw	s1,4(sp)
    25a8:	0141                	addi	sp,sp,16
    25aa:	bbd1                	j	237e <qspi_read_array>

Disassembly of section .text.s25fl128s_qpp:

000025ac <s25fl128s_qpp>:
    25ac:	fff60793          	addi	a5,a2,-1
    25b0:	80002737          	lui	a4,0x80002
    25b4:	1141                	addi	sp,sp,-16
    25b6:	f3270713          	addi	a4,a4,-206 # 80001f32 <__GNU_EH_FRAME_HDR+0x7ffff07e>
    25ba:	07c2                	slli	a5,a5,0x10
    25bc:	c606                	sw	ra,12(sp)
    25be:	86aa                	mv	a3,a0
    25c0:	97ba                	add	a5,a5,a4
    25c2:	6729                	lui	a4,0xa
    25c4:	c354                	sw	a3,4(a4)
    25c6:	6729                	lui	a4,0xa
    25c8:	852e                	mv	a0,a1
    25ca:	c31c                	sw	a5,0(a4)
    25cc:	85b2                	mv	a1,a2
    25ce:	3bc1                	jal	239e <qspi_write_array>
    25d0:	40b2                	lw	ra,12(sp)
    25d2:	0141                	addi	sp,sp,16
    25d4:	b371                	j	2360 <qspi_wait>

Disassembly of section .text.qspi_custom_write:

000025d6 <qspi_custom_write>:
    25d6:	88aa                	mv	a7,a0
    25d8:	852e                	mv	a0,a1
    25da:	85be                	mv	a1,a5
    25dc:	800007b7          	lui	a5,0x80000
    25e0:	40078793          	addi	a5,a5,1024 # 80000400 <__GNU_EH_FRAME_HDR+0x7fffd54c>
    25e4:	0866                	slli	a6,a6,0x19
    25e6:	983e                	add	a6,a6,a5
    25e8:	072e                	slli	a4,a4,0xb
    25ea:	fff58793          	addi	a5,a1,-1
    25ee:	1141                	addi	sp,sp,-16
    25f0:	983a                	add	a6,a6,a4
    25f2:	07c2                	slli	a5,a5,0x10
    25f4:	c422                	sw	s0,8(sp)
    25f6:	c606                	sw	ra,12(sp)
    25f8:	983e                	add	a6,a6,a5
    25fa:	06a2                	slli	a3,a3,0x8
    25fc:	67a9                	lui	a5,0xa
    25fe:	0ff67613          	zext.b	a2,a2
    2602:	9836                	add	a6,a6,a3
    2604:	0117a223          	sw	a7,4(a5) # a004 <__GNU_EH_FRAME_HDR+0x7150>
    2608:	00c80433          	add	s0,a6,a2
    260c:	3b49                	jal	239e <qspi_write_array>
    260e:	67a9                	lui	a5,0xa
    2610:	c380                	sw	s0,0(a5)
    2612:	4422                	lw	s0,8(sp)
    2614:	40b2                	lw	ra,12(sp)
    2616:	0141                	addi	sp,sp,16
    2618:	b3a1                	j	2360 <qspi_wait>

Disassembly of section .text.qspi_custom_read:

0000261a <qspi_custom_read>:
    261a:	1141                	addi	sp,sp,-16
    261c:	c422                	sw	s0,8(sp)
    261e:	0866                	slli	a6,a6,0x19
    2620:	843e                	mv	s0,a5
    2622:	800007b7          	lui	a5,0x80000
    2626:	983e                	add	a6,a6,a5
    2628:	072e                	slli	a4,a4,0xb
    262a:	fff40793          	addi	a5,s0,-1
    262e:	983a                	add	a6,a6,a4
    2630:	07c2                	slli	a5,a5,0x10
    2632:	983e                	add	a6,a6,a5
    2634:	06a2                	slli	a3,a3,0x8
    2636:	c226                	sw	s1,4(sp)
    2638:	c606                	sw	ra,12(sp)
    263a:	0ff67613          	zext.b	a2,a2
    263e:	9836                	add	a6,a6,a3
    2640:	67a9                	lui	a5,0xa
    2642:	c3c8                	sw	a0,4(a5)
    2644:	9832                	add	a6,a6,a2
    2646:	67a9                	lui	a5,0xa
    2648:	0107a023          	sw	a6,0(a5) # a000 <__GNU_EH_FRAME_HDR+0x714c>
    264c:	84ae                	mv	s1,a1
    264e:	3b09                	jal	2360 <qspi_wait>
    2650:	85a2                	mv	a1,s0
    2652:	4422                	lw	s0,8(sp)
    2654:	40b2                	lw	ra,12(sp)
    2656:	8526                	mv	a0,s1
    2658:	4492                	lw	s1,4(sp)
    265a:	0141                	addi	sp,sp,16
    265c:	b30d                	j	237e <qspi_read_array>

Disassembly of section .text.timer_counter:

0000265e <timer_counter>:
    265e:	67b1                	lui	a5,0xc
    2660:	4bc8                	lw	a0,20(a5)
    2662:	8082                	ret

Disassembly of section .text.timer_event:

00002664 <timer_event>:
    2664:	67b1                	lui	a5,0xc
    2666:	4f88                	lw	a0,24(a5)
    2668:	8082                	ret

Disassembly of section .text.timer_clear:

0000266a <timer_clear>:
    266a:	67b1                	lui	a5,0xc
    266c:	4705                	li	a4,1
    266e:	c798                	sw	a4,8(a5)
    2670:	67b1                	lui	a5,0xc
    2672:	cfd8                	sw	a4,28(a5)
    2674:	8082                	ret

Disassembly of section .text.timer_enabled:

00002676 <timer_enabled>:
    2676:	67b1                	lui	a5,0xc
    2678:	c7c8                	sw	a0,12(a5)
    267a:	8082                	ret

Disassembly of section .text.timer_conf:

0000267c <timer_conf>:
    267c:	1141                	addi	sp,sp,-16
    267e:	c606                	sw	ra,12(sp)
    2680:	67b1                	lui	a5,0xc
    2682:	c388                	sw	a0,0(a5)
    2684:	c3cc                	sw	a1,4(a5)
    2686:	67b1                	lui	a5,0xc
    2688:	cb90                	sw	a2,16(a5)
    268a:	08000613          	li	a2,128
    268e:	30046073          	csrsi	mstatus,8
    2692:	30462073          	csrs	mie,a2
    2696:	3fd1                	jal	266a <timer_clear>
    2698:	40b2                	lw	ra,12(sp)
    269a:	67b1                	lui	a5,0xc
    269c:	4705                	li	a4,1
    269e:	c7d8                	sw	a4,12(a5)
    26a0:	0141                	addi	sp,sp,16
    26a2:	8082                	ret

Disassembly of section .text.usb_connected:

000026a4 <usb_connected>:
    26a4:	67b9                	lui	a5,0xe
    26a6:	47c8                	lw	a0,12(a5)
    26a8:	8905                	andi	a0,a0,1
    26aa:	8082                	ret

Disassembly of section .text.usb_conf:

000026ac <usb_conf>:
    26ac:	67b9                	lui	a5,0xe
    26ae:	6739                	lui	a4,0xe
    26b0:	c388                	sw	a0,0(a5)
    26b2:	0731                	addi	a4,a4,12 # e00c <__GNU_EH_FRAME_HDR+0xb158>
    26b4:	431c                	lw	a5,0(a4)
    26b6:	8b85                	andi	a5,a5,1
    26b8:	dff5                	beqz	a5,26b4 <usb_conf+0x8>
    26ba:	8082                	ret

Disassembly of section .text.usb_rw:

000026bc <usb_rw>:
    26bc:	67b9                	lui	a5,0xe
    26be:	c788                	sw	a0,8(a5)
    26c0:	67b9                	lui	a5,0xe
    26c2:	07b1                	addi	a5,a5,12 # e00c <__GNU_EH_FRAME_HDR+0xb158>
    26c4:	4709                	li	a4,2
    26c6:	4394                	lw	a3,0(a5)
    26c8:	fee68fe3          	beq	a3,a4,26c6 <usb_rw+0xa>
    26cc:	c398                	sw	a4,0(a5)
    26ce:	67b9                	lui	a5,0xe
    26d0:	43c8                	lw	a0,4(a5)
    26d2:	8082                	ret

Disassembly of section .text.gpio_write:

000026d4 <gpio_write>:
    26d4:	67c1                	lui	a5,0x10
    26d6:	c3c8                	sw	a0,4(a5)
    26d8:	8082                	ret

Disassembly of section .text.gpio_read:

000026da <gpio_read>:
    26da:	67c1                	lui	a5,0x10
    26dc:	4388                	lw	a0,0(a5)
    26de:	0542                	slli	a0,a0,0x10
    26e0:	8141                	srli	a0,a0,0x10
    26e2:	8082                	ret

Disassembly of section .text.instr_mem_write:

000026e4 <instr_mem_write>:
    26e4:	050a                	slli	a0,a0,0x2
    26e6:	6791                	lui	a5,0x4
    26e8:	97aa                	add	a5,a5,a0
    26ea:	c38c                	sw	a1,0(a5)
    26ec:	8082                	ret

Disassembly of section .text.uart_main:

000026ee <uart_main>:
    26ee:	1141                	addi	sp,sp,-16
    26f0:	6789                	lui	a5,0x2
    26f2:	c422                	sw	s0,8(sp)
    26f4:	c226                	sw	s1,4(sp)
    26f6:	c606                	sw	ra,12(sp)
    26f8:	86978793          	addi	a5,a5,-1943 # 1869 <i2c_tmp2+0x1761>
    26fc:	6719                	lui	a4,0x6
    26fe:	c31c                	sw	a5,0(a4)
    2700:	6441                	lui	s0,0x10
    2702:	6799                	lui	a5,0x6
    2704:	0007a223          	sw	zero,4(a5) # 6004 <__GNU_EH_FRAME_HDR+0x3150>
    2708:	64c1                	lui	s1,0x10
    270a:	0411                	addi	s0,s0,4 # 10004 <__GNU_EH_FRAME_HDR+0xd150>
    270c:	4088                	lw	a0,0(s1)
    270e:	00157793          	andi	a5,a0,1
    2712:	c791                	beqz	a5,271e <uart_main+0x30>
    2714:	8521                	srai	a0,a0,0x8
    2716:	0ff57513          	zext.b	a0,a0
    271a:	36fd                	jal	2308 <uart_write>
    271c:	bfc5                	j	270c <uart_main+0x1e>
    271e:	3ec1                	jal	22ee <uart_read>
    2720:	c008                	sw	a0,0(s0)
    2722:	b7ed                	j	270c <uart_main+0x1e>

Disassembly of section .text.uart_interrupt:

00002724 <uart_interrupt>:
    2724:	8082                	ret

Disassembly of section .text.i2c_main:

00002726 <i2c_main>:
    2726:	1141                	addi	sp,sp,-16
    2728:	c422                	sw	s0,8(sp)
    272a:	c226                	sw	s1,4(sp)
    272c:	c04a                	sw	s2,0(sp)
    272e:	c606                	sw	ra,12(sp)
    2730:	67a1                	lui	a5,0x8
    2732:	07b00713          	li	a4,123
    2736:	00989537          	lui	a0,0x989
    273a:	c3d8                	sw	a4,4(a5)
    273c:	4605                	li	a2,1
    273e:	4581                	li	a1,0
    2740:	68050513          	addi	a0,a0,1664 # 989680 <__GNU_EH_FRAME_HDR+0x9867cc>
    2744:	6441                	lui	s0,0x10
    2746:	3f1d                	jal	267c <timer_conf>
    2748:	fff40913          	addi	s2,s0,-1 # ffff <__GNU_EH_FRAME_HDR+0xd14b>
    274c:	4008                	lw	a0,0(s0)
    274e:	4585                	li	a1,1
    2750:	00a97533          	and	a0,s2,a0
    2754:	3ed1                	jal	2328 <i2c_write>
    2756:	4505                	li	a0,1
    2758:	36f5                	jal	2344 <i2c_read>
    275a:	10a02423          	sw	a0,264(zero) # 108 <i2c_tmp2>
    275e:	b7fd                	j	274c <i2c_main+0x26>

Disassembly of section .text.i2c_interrupt:

00002760 <i2c_interrupt>:
    2760:	06002783          	lw	a5,96(zero) # 60 <i2c_tmp>
    2764:	0785                	addi	a5,a5,1 # 8001 <__GNU_EH_FRAME_HDR+0x514d>
    2766:	06f02023          	sw	a5,96(zero) # 60 <i2c_tmp>
    276a:	10802703          	lw	a4,264(zero) # 108 <i2c_tmp2>
    276e:	0721                	addi	a4,a4,8 # 6008 <__GNU_EH_FRAME_HDR+0x3154>
    2770:	00e797b3          	sll	a5,a5,a4
    2774:	07c2                	slli	a5,a5,0x10
    2776:	83c1                	srli	a5,a5,0x10
    2778:	6741                	lui	a4,0x10
    277a:	c35c                	sw	a5,4(a4)
    277c:	8082                	ret

Disassembly of section .text.qspi_main:

0000277e <qspi_main>:
    277e:	8082                	ret

Disassembly of section .text.qspi_interrupt:

00002780 <qspi_interrupt>:
    2780:	8082                	ret

Disassembly of section .text.timer_main:

00002782 <timer_main>:
    2782:	1141                	addi	sp,sp,-16
    2784:	4605                	li	a2,1
    2786:	4581                	li	a1,0
    2788:	557d                	li	a0,-1
    278a:	c606                	sw	ra,12(sp)
    278c:	3dc5                	jal	267c <timer_conf>
    278e:	66c1                	lui	a3,0x10
    2790:	67c1                	lui	a5,0x10
    2792:	16fd                	addi	a3,a3,-1 # ffff <__GNU_EH_FRAME_HDR+0xd14b>
    2794:	0791                	addi	a5,a5,4 # 10004 <__GNU_EH_FRAME_HDR+0xd150>
    2796:	10402703          	lw	a4,260(zero) # 104 <timer_tmp>
    279a:	8f75                	and	a4,a4,a3
    279c:	c398                	sw	a4,0(a5)
    279e:	bfe5                	j	2796 <timer_main+0x14>

Disassembly of section .text.timer_interrupt:

000027a0 <timer_interrupt>:
    27a0:	10402783          	lw	a5,260(zero) # 104 <timer_tmp>
    27a4:	0785                	addi	a5,a5,1
    27a6:	10f02223          	sw	a5,260(zero) # 104 <timer_tmp>
    27aa:	8082                	ret

Disassembly of section .text.gpio_main:

000027ac <gpio_main>:
    27ac:	66c1                	lui	a3,0x10
    27ae:	67c1                	lui	a5,0x10
    27b0:	fff68613          	addi	a2,a3,-1 # ffff <__GNU_EH_FRAME_HDR+0xd14b>
    27b4:	0791                	addi	a5,a5,4 # 10004 <__GNU_EH_FRAME_HDR+0xd150>
    27b6:	4298                	lw	a4,0(a3)
    27b8:	8f71                	and	a4,a4,a2
    27ba:	c398                	sw	a4,0(a5)
    27bc:	bfed                	j	27b6 <gpio_main+0xa>

Disassembly of section .text.gpio_interrupt:

000027be <gpio_interrupt>:
    27be:	8082                	ret

Disassembly of section .text.usb_main:

000027c0 <usb_main>:
    27c0:	7139                	addi	sp,sp,-64
    27c2:	d84a                	sw	s2,48(sp)
    27c4:	d64e                	sw	s3,44(sp)
    27c6:	4605                	li	a2,1
    27c8:	4581                	li	a1,0
    27ca:	557d                	li	a0,-1
    27cc:	6939                	lui	s2,0xe
    27ce:	69c1                	lui	s3,0x10
    27d0:	dc22                	sw	s0,56(sp)
    27d2:	da26                	sw	s1,52(sp)
    27d4:	d452                	sw	s4,40(sp)
    27d6:	d256                	sw	s5,36(sp)
    27d8:	d05a                	sw	s6,32(sp)
    27da:	ce5e                	sw	s7,28(sp)
    27dc:	de06                	sw	ra,60(sp)
    27de:	cc62                	sw	s8,24(sp)
    27e0:	ca66                	sw	s9,20(sp)
    27e2:	c86a                	sw	s10,16(sp)
    27e4:	c66e                	sw	s11,12(sp)
    27e6:	6ac1                	lui	s5,0x10
    27e8:	3d51                	jal	267c <timer_conf>
    27ea:	0931                	addi	s2,s2,12 # e00c <__GNU_EH_FRAME_HDR+0xb158>
    27ec:	0991                	addi	s3,s3,4 # 10004 <__GNU_EH_FRAME_HDR+0xd150>
    27ee:	4b91                	li	s7,4
    27f0:	000aa783          	lw	a5,0(s5) # 10000 <__GNU_EH_FRAME_HDR+0xd14c>
    27f4:	0e002c23          	sw	zero,248(zero) # f8 <usb_state>
    27f8:	0ff7f793          	zext.b	a5,a5
    27fc:	10f02023          	sw	a5,256(zero) # 100 <usb_tmp>
    2800:	e381                	bnez	a5,2800 <usb_main+0x40>
    2802:	0f402783          	lw	a5,244(zero) # f4 <usb_old_state>
    2806:	c399                	beqz	a5,280c <usb_main+0x4c>
    2808:	4501                	li	a0,0
    280a:	354d                	jal	26ac <usb_conf>
    280c:	0f802783          	lw	a5,248(zero) # f8 <usb_state>
    2810:	0ef02a23          	sw	a5,244(zero) # f4 <usb_old_state>
    2814:	00092703          	lw	a4,0(s2)
    2818:	07a2                	slli	a5,a5,0x8
    281a:	8b05                	andi	a4,a4,1
    281c:	97ba                	add	a5,a5,a4
    281e:	07c2                	slli	a5,a5,0x10
    2820:	83c1                	srli	a5,a5,0x10
    2822:	00f9a023          	sw	a5,0(s3)
    2826:	0f802783          	lw	a5,248(zero) # f8 <usb_state>
    282a:	05778c63          	beq	a5,s7,2882 <usb_main+0xc2>
    282e:	04fbe163          	bltu	s7,a5,2870 <usb_main+0xb0>
    2832:	4705                	li	a4,1
    2834:	04e78163          	beq	a5,a4,2876 <usb_main+0xb6>
    2838:	4709                	li	a4,2
    283a:	fae79be3          	bne	a5,a4,27f0 <usb_main+0x30>
    283e:	4501                	li	a0,0
    2840:	3db5                	jal	26bc <usb_rw>
    2842:	4c81                	li	s9,0
    2844:	14000d13          	li	s10,320
    2848:	0b400d93          	li	s11,180
    284c:	4c01                	li	s8,0
    284e:	0fc02503          	lw	a0,252(zero) # fc <usb_tmp2>
    2852:	9566                	add	a0,a0,s9
    2854:	9562                	add	a0,a0,s8
    2856:	0c05                	addi	s8,s8,1
    2858:	3595                	jal	26bc <usb_rw>
    285a:	ffac1ae3          	bne	s8,s10,284e <usb_main+0x8e>
    285e:	0c85                	addi	s9,s9,1
    2860:	ffbc96e3          	bne	s9,s11,284c <usb_main+0x8c>
    2864:	0fc02783          	lw	a5,252(zero) # fc <usb_tmp2>
    2868:	0785                	addi	a5,a5,1
    286a:	0ef02e23          	sw	a5,252(zero) # fc <usb_tmp2>
    286e:	b749                	j	27f0 <usb_main+0x30>
    2870:	4715                	li	a4,5
    2872:	f6e79fe3          	bne	a5,a4,27f0 <usb_main+0x30>
    2876:	10002503          	lw	a0,256(zero) # 100 <usb_tmp>
    287a:	3589                	jal	26bc <usb_rw>
    287c:	10a02023          	sw	a0,256(zero) # 100 <usb_tmp>
    2880:	bf85                	j	27f0 <usb_main+0x30>
    2882:	000aa783          	lw	a5,0(s5)
    2886:	07c2                	slli	a5,a5,0x10
    2888:	83c1                	srli	a5,a5,0x10
    288a:	83a1                	srli	a5,a5,0x8
    288c:	10f02023          	sw	a5,256(zero) # 100 <usb_tmp>
    2890:	b785                	j	27f0 <usb_main+0x30>

Disassembly of section .text.usb_interrupt:

00002892 <usb_interrupt>:
    2892:	0f802703          	lw	a4,248(zero) # f8 <usb_state>
    2896:	4791                	li	a5,4
    2898:	00f71563          	bne	a4,a5,28a2 <usb_interrupt+0x10>
    289c:	10002503          	lw	a0,256(zero) # 100 <usb_tmp>
    28a0:	bd31                	j	26bc <usb_rw>
    28a2:	8082                	ret
