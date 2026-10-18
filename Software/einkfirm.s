
einkfirm.elf:     file format elf32-littleriscv


Disassembly of section .vectors:

00000000 <_stack_start-0xa000>:
   0:	1040006f          	j	104 <_stext>
   4:	2740006f          	j	278 <instruction_address_misaligned_handler>
   8:	2a40006f          	j	2ac <default_exc_handler>
   c:	2700006f          	j	27c <illegal_insn_handler>
  10:	29c0006f          	j	2ac <default_exc_handler>
  14:	2980006f          	j	2ac <default_exc_handler>
  18:	2940006f          	j	2ac <default_exc_handler>
  1c:	2900006f          	j	2ac <default_exc_handler>
  20:	28c0006f          	j	2ac <default_exc_handler>
  24:	25c0006f          	j	280 <ecall_u_handler>
  28:	2840006f          	j	2ac <default_exc_handler>
  2c:	2800006f          	j	2ac <default_exc_handler>
  30:	27c0006f          	j	2ac <default_exc_handler>
  34:	2780006f          	j	2ac <default_exc_handler>
  38:	2740006f          	j	2ac <default_exc_handler>
  3c:	2700006f          	j	2ac <default_exc_handler>
  40:	26c0006f          	j	2ac <default_exc_handler>
  44:	2680006f          	j	2ac <default_exc_handler>
  48:	2640006f          	j	2ac <default_exc_handler>
  4c:	2600006f          	j	2ac <default_exc_handler>
  50:	25c0006f          	j	2ac <default_exc_handler>
  54:	2580006f          	j	2ac <default_exc_handler>
  58:	2540006f          	j	2ac <default_exc_handler>
  5c:	2500006f          	j	2ac <default_exc_handler>
  60:	24c0006f          	j	2ac <default_exc_handler>
  64:	2480006f          	j	2ac <default_exc_handler>
  68:	2440006f          	j	2ac <default_exc_handler>
  6c:	2400006f          	j	2ac <default_exc_handler>
  70:	23c0006f          	j	2ac <default_exc_handler>
  74:	2380006f          	j	2ac <default_exc_handler>
  78:	2340006f          	j	2ac <default_exc_handler>
  7c:	2300006f          	j	2ac <default_exc_handler>
  80:	22c0006f          	j	2ac <default_exc_handler>
  84:	2280006f          	j	2ac <default_exc_handler>
  88:	2240006f          	j	2ac <default_exc_handler>
  8c:	2200006f          	j	2ac <default_exc_handler>
  90:	21c0006f          	j	2ac <default_exc_handler>
  94:	2180006f          	j	2ac <default_exc_handler>
  98:	2140006f          	j	2ac <default_exc_handler>
  9c:	2100006f          	j	2ac <default_exc_handler>
  a0:	20c0006f          	j	2ac <default_exc_handler>
  a4:	2080006f          	j	2ac <default_exc_handler>
  a8:	2040006f          	j	2ac <default_exc_handler>
  ac:	2000006f          	j	2ac <default_exc_handler>
  b0:	5c00106f          	j	1670 <uart_interrupt_handler>
  b4:	1f80006f          	j	2ac <default_exc_handler>
  b8:	1f40006f          	j	2ac <default_exc_handler>
  bc:	1f00006f          	j	2ac <default_exc_handler>
  c0:	1ec0006f          	j	2ac <default_exc_handler>
  c4:	1d80006f          	j	29c <external_interrupt_signal_handler>
  c8:	1d40006f          	j	29c <external_interrupt_signal_handler>
  cc:	1d00006f          	j	29c <external_interrupt_signal_handler>
  d0:	1cc0006f          	j	29c <external_interrupt_signal_handler>
  d4:	1c80006f          	j	29c <external_interrupt_signal_handler>
  d8:	1c40006f          	j	29c <external_interrupt_signal_handler>
  dc:	1c00006f          	j	29c <external_interrupt_signal_handler>
  e0:	1bc0006f          	j	29c <external_interrupt_signal_handler>
  e4:	1b80006f          	j	29c <external_interrupt_signal_handler>
  e8:	1b40006f          	j	29c <external_interrupt_signal_handler>
  ec:	1b00006f          	j	29c <external_interrupt_signal_handler>
  f0:	1ac0006f          	j	29c <external_interrupt_signal_handler>
  f4:	1a80006f          	j	29c <external_interrupt_signal_handler>
  f8:	1a40006f          	j	29c <external_interrupt_signal_handler>
  fc:	1a00006f          	j	29c <external_interrupt_signal_handler>
 100:	19c0006f          	j	29c <external_interrupt_signal_handler>

Disassembly of section .text:

00000104 <_stext>:
 104:	18000093          	li	ra,384
 108:	00409093          	slli	ra,ra,0x4
 10c:	300090f3          	csrrw	ra,mstatus,ra
 110:	3058d0f3          	csrrwi	ra,mtvec,17
 114:	00000093          	li	ra,0
 118:	00008113          	mv	sp,ra
 11c:	00008193          	mv	gp,ra
 120:	00008213          	mv	tp,ra
 124:	00008293          	mv	t0,ra
 128:	00008313          	mv	t1,ra
 12c:	00008393          	mv	t2,ra
 130:	00008413          	mv	s0,ra
 134:	00008493          	mv	s1,ra
 138:	00008513          	mv	a0,ra
 13c:	00008593          	mv	a1,ra
 140:	00008613          	mv	a2,ra
 144:	00008693          	mv	a3,ra
 148:	00008713          	mv	a4,ra
 14c:	00008793          	mv	a5,ra
 150:	00008813          	mv	a6,ra
 154:	00008893          	mv	a7,ra
 158:	00008913          	mv	s2,ra
 15c:	00008993          	mv	s3,ra
 160:	00008a13          	mv	s4,ra
 164:	00008a93          	mv	s5,ra
 168:	00008b13          	mv	s6,ra
 16c:	00008b93          	mv	s7,ra
 170:	00008c13          	mv	s8,ra
 174:	00008c93          	mv	s9,ra
 178:	00008d13          	mv	s10,ra
 17c:	00008d93          	mv	s11,ra
 180:	00008e13          	mv	t3,ra
 184:	00008e93          	mv	t4,ra
 188:	00008f13          	mv	t5,ra
 18c:	00008f93          	mv	t6,ra
 190:	0000a117          	auipc	sp,0xa
 194:	e7010113          	addi	sp,sp,-400 # a000 <_stack_start>

00000198 <_start>:
 198:	00006d17          	auipc	s10,0x6
 19c:	310d0d13          	addi	s10,s10,784 # 64a8 <recieved_bytes>
 1a0:	00006d97          	auipc	s11,0x6
 1a4:	6f9d8d93          	addi	s11,s11,1785 # 6899 <_bss_end>
 1a8:	01bd5863          	bge	s10,s11,1b8 <main_entry>

000001ac <zero_loop>:
 1ac:	000d2023          	sw	zero,0(s10)
 1b0:	004d0d13          	addi	s10,s10,4
 1b4:	ffaddce3          	bge	s11,s10,1ac <zero_loop>

000001b8 <main_entry>:
 1b8:	00000513          	li	a0,0
 1bc:	00000593          	li	a1,0
 1c0:	00000393          	li	t2,0
 1c4:	ffff03b7          	lui	t2,0xffff0
 1c8:	3043a3f3          	csrrs	t2,mie,t2
 1cc:	00800393          	li	t2,8
 1d0:	3003a3f3          	csrrs	t2,mstatus,t2
 1d4:	00000393          	li	t2,0
 1d8:	5f0010ef          	jal	17c8 <main>

000001dc <_end>:
 1dc:	0000006f          	j	1dc <_end>

000001e0 <store_regs>:
 1e0:	00312023          	sw	gp,0(sp)
 1e4:	00412223          	sw	tp,4(sp)
 1e8:	00512423          	sw	t0,8(sp)
 1ec:	00612623          	sw	t1,12(sp)
 1f0:	00712823          	sw	t2,16(sp)
 1f4:	00a12a23          	sw	a0,20(sp)
 1f8:	00b12c23          	sw	a1,24(sp)
 1fc:	00c12e23          	sw	a2,28(sp)
 200:	02d12023          	sw	a3,32(sp)
 204:	02e12223          	sw	a4,36(sp)
 208:	02f12423          	sw	a5,40(sp)
 20c:	03012623          	sw	a6,44(sp)
 210:	03112823          	sw	a7,48(sp)
 214:	03c12a23          	sw	t3,52(sp)
 218:	03d12c23          	sw	t4,56(sp)
 21c:	03e12e23          	sw	t5,60(sp)
 220:	05f12023          	sw	t6,64(sp)
 224:	00008067          	ret

00000228 <end_except>:
 228:	00012183          	lw	gp,0(sp)
 22c:	00412203          	lw	tp,4(sp)
 230:	00812283          	lw	t0,8(sp)
 234:	00c12303          	lw	t1,12(sp)
 238:	01012383          	lw	t2,16(sp)
 23c:	01412503          	lw	a0,20(sp)
 240:	01812583          	lw	a1,24(sp)
 244:	01c12603          	lw	a2,28(sp)
 248:	02012683          	lw	a3,32(sp)
 24c:	02412703          	lw	a4,36(sp)
 250:	02812783          	lw	a5,40(sp)
 254:	02c12803          	lw	a6,44(sp)
 258:	03012883          	lw	a7,48(sp)
 25c:	03412e03          	lw	t3,52(sp)
 260:	03812e83          	lw	t4,56(sp)
 264:	03c12f03          	lw	t5,60(sp)
 268:	04012f83          	lw	t6,64(sp)
 26c:	04412083          	lw	ra,68(sp)
 270:	04810113          	addi	sp,sp,72
 274:	30200073          	mret

00000278 <instruction_address_misaligned_handler>:
 278:	0000006f          	j	278 <instruction_address_misaligned_handler>

0000027c <illegal_insn_handler>:
 27c:	0000006f          	j	27c <illegal_insn_handler>

00000280 <ecall_u_handler>:
 280:	fb810113          	addi	sp,sp,-72
 284:	04112223          	sw	ra,68(sp)
 288:	f59ff0ef          	jal	1e0 <store_regs>
 28c:	341063f3          	csrrsi	t2,mepc,0
 290:	00438393          	addi	t2,t2,4 # ffff0004 <_stack_start+0xfffe6004>
 294:	341393f3          	csrrw	t2,mepc,t2
 298:	f91ff06f          	j	228 <end_except>

0000029c <external_interrupt_signal_handler>:
 29c:	fb810113          	addi	sp,sp,-72
 2a0:	04112223          	sw	ra,68(sp)
 2a4:	f3dff0ef          	jal	1e0 <store_regs>
 2a8:	f81ff06f          	j	228 <end_except>

000002ac <default_exc_handler>:
 2ac:	0000006f          	j	2ac <default_exc_handler>

000002b0 <memset>:
 2b0:	01f00793          	li	a5,31
 2b4:	00050693          	mv	a3,a0
 2b8:	10c7f463          	bgeu	a5,a2,3c0 <memset+0x110>
 2bc:	0036f713          	andi	a4,a3,3
 2c0:	02070663          	beqz	a4,2ec <memset+0x3c>
 2c4:	00000297          	auipc	t0,0x0
 2c8:	00271313          	slli	t1,a4,0x2
 2cc:	006282b3          	add	t0,t0,t1
 2d0:	00008313          	mv	t1,ra
 2d4:	17c280e7          	jalr	380(t0) # 440 <memset+0x190>
 2d8:	00030093          	mv	ra,t1
 2dc:	ffc70713          	addi	a4,a4,-4
 2e0:	00e60633          	add	a2,a2,a4
 2e4:	40e686b3          	sub	a3,a3,a4
 2e8:	0cc7fc63          	bgeu	a5,a2,3c0 <memset+0x110>
 2ec:	00059463          	bnez	a1,2f4 <memset+0x44>
 2f0:	0180006f          	j	308 <memset+0x58>
 2f4:	0ff5f593          	zext.b	a1,a1
 2f8:	00859293          	slli	t0,a1,0x8
 2fc:	0055e5b3          	or	a1,a1,t0
 300:	01059293          	slli	t0,a1,0x10
 304:	0055e5b3          	or	a1,a1,t0
 308:	ffc67293          	andi	t0,a2,-4
 30c:	00568333          	add	t1,a3,t0
 310:	07c2f293          	andi	t0,t0,124
 314:	00028e63          	beqz	t0,330 <memset+0x80>
 318:	405002b3          	neg	t0,t0
 31c:	08028293          	addi	t0,t0,128
 320:	405686b3          	sub	a3,a3,t0
 324:	00000397          	auipc	t2,0x0
 328:	005383b3          	add	t2,t2,t0
 32c:	00c38067          	jr	12(t2) # 330 <memset+0x80>
 330:	00b6a023          	sw	a1,0(a3)
 334:	00b6a223          	sw	a1,4(a3)
 338:	00b6a423          	sw	a1,8(a3)
 33c:	00b6a623          	sw	a1,12(a3)
 340:	00b6a823          	sw	a1,16(a3)
 344:	00b6aa23          	sw	a1,20(a3)
 348:	00b6ac23          	sw	a1,24(a3)
 34c:	00b6ae23          	sw	a1,28(a3)
 350:	02b6a023          	sw	a1,32(a3)
 354:	02b6a223          	sw	a1,36(a3)
 358:	02b6a423          	sw	a1,40(a3)
 35c:	02b6a623          	sw	a1,44(a3)
 360:	02b6a823          	sw	a1,48(a3)
 364:	02b6aa23          	sw	a1,52(a3)
 368:	02b6ac23          	sw	a1,56(a3)
 36c:	02b6ae23          	sw	a1,60(a3)
 370:	04b6a023          	sw	a1,64(a3)
 374:	04b6a223          	sw	a1,68(a3)
 378:	04b6a423          	sw	a1,72(a3)
 37c:	04b6a623          	sw	a1,76(a3)
 380:	04b6a823          	sw	a1,80(a3)
 384:	04b6aa23          	sw	a1,84(a3)
 388:	04b6ac23          	sw	a1,88(a3)
 38c:	04b6ae23          	sw	a1,92(a3)
 390:	06b6a023          	sw	a1,96(a3)
 394:	06b6a223          	sw	a1,100(a3)
 398:	06b6a423          	sw	a1,104(a3)
 39c:	06b6a623          	sw	a1,108(a3)
 3a0:	06b6a823          	sw	a1,112(a3)
 3a4:	06b6aa23          	sw	a1,116(a3)
 3a8:	06b6ac23          	sw	a1,120(a3)
 3ac:	06b6ae23          	sw	a1,124(a3)
 3b0:	08068693          	addi	a3,a3,128
 3b4:	f666eee3          	bltu	a3,t1,330 <memset+0x80>
 3b8:	00367613          	andi	a2,a2,3
 3bc:	08060a63          	beqz	a2,450 <memset+0x1a0>
 3c0:	00000297          	auipc	t0,0x0
 3c4:	40c78633          	sub	a2,a5,a2
 3c8:	00261613          	slli	a2,a2,0x2
 3cc:	00c282b3          	add	t0,t0,a2
 3d0:	01428067          	jr	20(t0) # 3d4 <memset+0x124>
 3d4:	00b68f23          	sb	a1,30(a3)
 3d8:	00b68ea3          	sb	a1,29(a3)
 3dc:	00b68e23          	sb	a1,28(a3)
 3e0:	00b68da3          	sb	a1,27(a3)
 3e4:	00b68d23          	sb	a1,26(a3)
 3e8:	00b68ca3          	sb	a1,25(a3)
 3ec:	00b68c23          	sb	a1,24(a3)
 3f0:	00b68ba3          	sb	a1,23(a3)
 3f4:	00b68b23          	sb	a1,22(a3)
 3f8:	00b68aa3          	sb	a1,21(a3)
 3fc:	00b68a23          	sb	a1,20(a3)
 400:	00b689a3          	sb	a1,19(a3)
 404:	00b68923          	sb	a1,18(a3)
 408:	00b688a3          	sb	a1,17(a3)
 40c:	00b68823          	sb	a1,16(a3)
 410:	00b687a3          	sb	a1,15(a3)
 414:	00b68723          	sb	a1,14(a3)
 418:	00b686a3          	sb	a1,13(a3)
 41c:	00b68623          	sb	a1,12(a3)
 420:	00b685a3          	sb	a1,11(a3)
 424:	00b68523          	sb	a1,10(a3)
 428:	00b684a3          	sb	a1,9(a3)
 42c:	00b68423          	sb	a1,8(a3)
 430:	00b683a3          	sb	a1,7(a3)
 434:	00b68323          	sb	a1,6(a3)
 438:	00b682a3          	sb	a1,5(a3)
 43c:	00b68223          	sb	a1,4(a3)
 440:	00b681a3          	sb	a1,3(a3)
 444:	00b68123          	sb	a1,2(a3)
 448:	00b680a3          	sb	a1,1(a3)
 44c:	00b68023          	sb	a1,0(a3)
 450:	00008067          	ret

00000454 <__CTOR_LIST__>:
	...

0000045c <__CTOR_END__>:
	...

Disassembly of section .text.spi_write_byte:

00000464 <spi_write_byte>:
 464:	fe010113          	addi	sp,sp,-32
 468:	00112e23          	sw	ra,28(sp)
 46c:	00812c23          	sw	s0,24(sp)
 470:	02010413          	addi	s0,sp,32
 474:	00050793          	mv	a5,a0
 478:	fef407a3          	sb	a5,-17(s0)
 47c:	000107b7          	lui	a5,0x10
 480:	00278793          	addi	a5,a5,2 # 10002 <_stack_start+0x6002>
 484:	fef44703          	lbu	a4,-17(s0)
 488:	00e78023          	sb	a4,0(a5)
 48c:	00000013          	nop
 490:	01c12083          	lw	ra,28(sp)
 494:	01812403          	lw	s0,24(sp)
 498:	02010113          	addi	sp,sp,32
 49c:	00008067          	ret

Disassembly of section .text.spi_write_short:

000004a0 <spi_write_short>:
 4a0:	fe010113          	addi	sp,sp,-32
 4a4:	00112e23          	sw	ra,28(sp)
 4a8:	00812c23          	sw	s0,24(sp)
 4ac:	02010413          	addi	s0,sp,32
 4b0:	00050793          	mv	a5,a0
 4b4:	fef41723          	sh	a5,-18(s0)
 4b8:	fee45783          	lhu	a5,-18(s0)
 4bc:	0087d793          	srli	a5,a5,0x8
 4c0:	01079713          	slli	a4,a5,0x10
 4c4:	01075713          	srli	a4,a4,0x10
 4c8:	000107b7          	lui	a5,0x10
 4cc:	00278793          	addi	a5,a5,2 # 10002 <_stack_start+0x6002>
 4d0:	0ff77713          	zext.b	a4,a4
 4d4:	00e78023          	sb	a4,0(a5)
 4d8:	000107b7          	lui	a5,0x10
 4dc:	00278793          	addi	a5,a5,2 # 10002 <_stack_start+0x6002>
 4e0:	fee45703          	lhu	a4,-18(s0)
 4e4:	0ff77713          	zext.b	a4,a4
 4e8:	00e78023          	sb	a4,0(a5)
 4ec:	00000013          	nop
 4f0:	01c12083          	lw	ra,28(sp)
 4f4:	01812403          	lw	s0,24(sp)
 4f8:	02010113          	addi	sp,sp,32
 4fc:	00008067          	ret

Disassembly of section .text.set_pixel:

00000500 <set_pixel>:
 500:	fe010113          	addi	sp,sp,-32
 504:	00112e23          	sw	ra,28(sp)
 508:	00812c23          	sw	s0,24(sp)
 50c:	02010413          	addi	s0,sp,32
 510:	fea42623          	sw	a0,-20(s0)
 514:	feb42423          	sw	a1,-24(s0)
 518:	00060793          	mv	a5,a2
 51c:	fef403a3          	sb	a5,-25(s0)
 520:	00000513          	li	a0,0
 524:	f41ff0ef          	jal	464 <spi_write_byte>
 528:	fec42783          	lw	a5,-20(s0)
 52c:	01079793          	slli	a5,a5,0x10
 530:	0107d793          	srli	a5,a5,0x10
 534:	00078513          	mv	a0,a5
 538:	f69ff0ef          	jal	4a0 <spi_write_short>
 53c:	fe842783          	lw	a5,-24(s0)
 540:	01079793          	slli	a5,a5,0x10
 544:	0107d793          	srli	a5,a5,0x10
 548:	00078513          	mv	a0,a5
 54c:	f55ff0ef          	jal	4a0 <spi_write_short>
 550:	fe744783          	lbu	a5,-25(s0)
 554:	00078513          	mv	a0,a5
 558:	f0dff0ef          	jal	464 <spi_write_byte>
 55c:	00000013          	nop
 560:	01c12083          	lw	ra,28(sp)
 564:	01812403          	lw	s0,24(sp)
 568:	02010113          	addi	sp,sp,32
 56c:	00008067          	ret

Disassembly of section .text.clear_screen:

00000570 <clear_screen>:
 570:	ff010113          	addi	sp,sp,-16
 574:	00112623          	sw	ra,12(sp)
 578:	00812423          	sw	s0,8(sp)
 57c:	01010413          	addi	s0,sp,16
 580:	00100513          	li	a0,1
 584:	ee1ff0ef          	jal	464 <spi_write_byte>
 588:	00000013          	nop
 58c:	00c12083          	lw	ra,12(sp)
 590:	00812403          	lw	s0,8(sp)
 594:	01010113          	addi	sp,sp,16
 598:	00008067          	ret

Disassembly of section .text.draw_char:

0000059c <draw_char>:
 59c:	fd010113          	addi	sp,sp,-48
 5a0:	02112623          	sw	ra,44(sp)
 5a4:	02812423          	sw	s0,40(sp)
 5a8:	03010413          	addi	s0,sp,48
 5ac:	fca42e23          	sw	a0,-36(s0)
 5b0:	fcb42c23          	sw	a1,-40(s0)
 5b4:	00060793          	mv	a5,a2
 5b8:	fcd42823          	sw	a3,-48(s0)
 5bc:	fcf40ba3          	sb	a5,-41(s0)
 5c0:	fe042623          	sw	zero,-20(s0)
 5c4:	1000006f          	j	6c4 <draw_char+0x128>
 5c8:	fe042423          	sw	zero,-24(s0)
 5cc:	0e00006f          	j	6ac <draw_char+0x110>
 5d0:	fd744683          	lbu	a3,-41(s0)
 5d4:	000047b7          	lui	a5,0x4
 5d8:	03478613          	addi	a2,a5,52 # 4034 <FONT>
 5dc:	fec42783          	lw	a5,-20(s0)
 5e0:	00078713          	mv	a4,a5
 5e4:	00271713          	slli	a4,a4,0x2
 5e8:	00f70733          	add	a4,a4,a5
 5ec:	00068793          	mv	a5,a3
 5f0:	00379793          	slli	a5,a5,0x3
 5f4:	00d787b3          	add	a5,a5,a3
 5f8:	00279793          	slli	a5,a5,0x2
 5fc:	40d787b3          	sub	a5,a5,a3
 600:	00f707b3          	add	a5,a4,a5
 604:	00f60733          	add	a4,a2,a5
 608:	fe842783          	lw	a5,-24(s0)
 60c:	00f707b3          	add	a5,a4,a5
 610:	0007c783          	lbu	a5,0(a5)
 614:	08078663          	beqz	a5,6a0 <draw_char+0x104>
 618:	fe0403a3          	sb	zero,-25(s0)
 61c:	0780006f          	j	694 <draw_char+0xf8>
 620:	fe040323          	sb	zero,-26(s0)
 624:	0580006f          	j	67c <draw_char+0xe0>
 628:	fe842703          	lw	a4,-24(s0)
 62c:	fd042783          	lw	a5,-48(s0)
 630:	02f70733          	mul	a4,a4,a5
 634:	fdc42783          	lw	a5,-36(s0)
 638:	00f70733          	add	a4,a4,a5
 63c:	fe744783          	lbu	a5,-25(s0)
 640:	00f706b3          	add	a3,a4,a5
 644:	fec42703          	lw	a4,-20(s0)
 648:	fd042783          	lw	a5,-48(s0)
 64c:	02f70733          	mul	a4,a4,a5
 650:	fd842783          	lw	a5,-40(s0)
 654:	00f70733          	add	a4,a4,a5
 658:	fe644783          	lbu	a5,-26(s0)
 65c:	00f707b3          	add	a5,a4,a5
 660:	00100613          	li	a2,1
 664:	00078593          	mv	a1,a5
 668:	00068513          	mv	a0,a3
 66c:	e95ff0ef          	jal	500 <set_pixel>
 670:	fe644783          	lbu	a5,-26(s0)
 674:	00178793          	addi	a5,a5,1
 678:	fef40323          	sb	a5,-26(s0)
 67c:	fe644783          	lbu	a5,-26(s0)
 680:	fd042703          	lw	a4,-48(s0)
 684:	fae7e2e3          	bltu	a5,a4,628 <draw_char+0x8c>
 688:	fe744783          	lbu	a5,-25(s0)
 68c:	00178793          	addi	a5,a5,1
 690:	fef403a3          	sb	a5,-25(s0)
 694:	fe744783          	lbu	a5,-25(s0)
 698:	fd042703          	lw	a4,-48(s0)
 69c:	f8e7e2e3          	bltu	a5,a4,620 <draw_char+0x84>
 6a0:	fe842783          	lw	a5,-24(s0)
 6a4:	00178793          	addi	a5,a5,1
 6a8:	fef42423          	sw	a5,-24(s0)
 6ac:	fe842703          	lw	a4,-24(s0)
 6b0:	00400793          	li	a5,4
 6b4:	f0e7fee3          	bgeu	a5,a4,5d0 <draw_char+0x34>
 6b8:	fec42783          	lw	a5,-20(s0)
 6bc:	00178793          	addi	a5,a5,1
 6c0:	fef42623          	sw	a5,-20(s0)
 6c4:	fec42703          	lw	a4,-20(s0)
 6c8:	00600793          	li	a5,6
 6cc:	eee7fee3          	bgeu	a5,a4,5c8 <draw_char+0x2c>
 6d0:	00000013          	nop
 6d4:	02c12083          	lw	ra,44(sp)
 6d8:	02812403          	lw	s0,40(sp)
 6dc:	03010113          	addi	sp,sp,48
 6e0:	00008067          	ret

Disassembly of section .text.draw_text:

000006e4 <draw_text>:
 6e4:	fd010113          	addi	sp,sp,-48
 6e8:	02112623          	sw	ra,44(sp)
 6ec:	02812423          	sw	s0,40(sp)
 6f0:	03010413          	addi	s0,sp,48
 6f4:	fca42e23          	sw	a0,-36(s0)
 6f8:	fcb42c23          	sw	a1,-40(s0)
 6fc:	fcc42a23          	sw	a2,-44(s0)
 700:	fcd42823          	sw	a3,-48(s0)
 704:	fe042623          	sw	zero,-20(s0)
 708:	fdc42783          	lw	a5,-36(s0)
 70c:	fef42423          	sw	a5,-24(s0)
 710:	0580006f          	j	768 <draw_text+0x84>
 714:	fd442703          	lw	a4,-44(s0)
 718:	fec42783          	lw	a5,-20(s0)
 71c:	00f707b3          	add	a5,a4,a5
 720:	0007c783          	lbu	a5,0(a5)
 724:	fd042683          	lw	a3,-48(s0)
 728:	00078613          	mv	a2,a5
 72c:	fd842583          	lw	a1,-40(s0)
 730:	fe842503          	lw	a0,-24(s0)
 734:	e69ff0ef          	jal	59c <draw_char>
 738:	fd042703          	lw	a4,-48(s0)
 73c:	00070793          	mv	a5,a4
 740:	00179793          	slli	a5,a5,0x1
 744:	00e787b3          	add	a5,a5,a4
 748:	00179793          	slli	a5,a5,0x1
 74c:	00078713          	mv	a4,a5
 750:	fe842783          	lw	a5,-24(s0)
 754:	00e787b3          	add	a5,a5,a4
 758:	fef42423          	sw	a5,-24(s0)
 75c:	fec42783          	lw	a5,-20(s0)
 760:	00178793          	addi	a5,a5,1
 764:	fef42623          	sw	a5,-20(s0)
 768:	fd442703          	lw	a4,-44(s0)
 76c:	fec42783          	lw	a5,-20(s0)
 770:	00f707b3          	add	a5,a4,a5
 774:	0007c783          	lbu	a5,0(a5)
 778:	f8079ee3          	bnez	a5,714 <draw_text+0x30>
 77c:	00000013          	nop
 780:	00000013          	nop
 784:	02c12083          	lw	ra,44(sp)
 788:	02812403          	lw	s0,40(sp)
 78c:	03010113          	addi	sp,sp,48
 790:	00008067          	ret

Disassembly of section .text.QrTinyBufferAppend:

00000794 <QrTinyBufferAppend>:
 794:	fc010113          	addi	sp,sp,-64
 798:	02112e23          	sw	ra,60(sp)
 79c:	02812c23          	sw	s0,56(sp)
 7a0:	04010413          	addi	s0,sp,64
 7a4:	fca42623          	sw	a0,-52(s0)
 7a8:	fcb42423          	sw	a1,-56(s0)
 7ac:	fcc42223          	sw	a2,-60(s0)
 7b0:	fcd42023          	sw	a3,-64(s0)
 7b4:	fe042623          	sw	zero,-20(s0)
 7b8:	0e00006f          	j	898 <QrTinyBufferAppend+0x104>
 7bc:	fc842703          	lw	a4,-56(s0)
 7c0:	fec42783          	lw	a5,-20(s0)
 7c4:	00f707b3          	add	a5,a4,a5
 7c8:	0037d793          	srli	a5,a5,0x3
 7cc:	fcc42703          	lw	a4,-52(s0)
 7d0:	00f707b3          	add	a5,a4,a5
 7d4:	fef42423          	sw	a5,-24(s0)
 7d8:	fc842703          	lw	a4,-56(s0)
 7dc:	fec42783          	lw	a5,-20(s0)
 7e0:	00f707b3          	add	a5,a4,a5
 7e4:	fff7c793          	not	a5,a5
 7e8:	0077f793          	andi	a5,a5,7
 7ec:	fef42223          	sw	a5,-28(s0)
 7f0:	fe442783          	lw	a5,-28(s0)
 7f4:	00100713          	li	a4,1
 7f8:	00f717b3          	sll	a5,a4,a5
 7fc:	fef42023          	sw	a5,-32(s0)
 800:	fc042703          	lw	a4,-64(s0)
 804:	fec42783          	lw	a5,-20(s0)
 808:	40f707b3          	sub	a5,a4,a5
 80c:	fff78793          	addi	a5,a5,-1
 810:	00100713          	li	a4,1
 814:	00f717b3          	sll	a5,a4,a5
 818:	fcf42e23          	sw	a5,-36(s0)
 81c:	fe842783          	lw	a5,-24(s0)
 820:	0007c783          	lbu	a5,0(a5)
 824:	01879713          	slli	a4,a5,0x18
 828:	41875713          	srai	a4,a4,0x18
 82c:	fe042783          	lw	a5,-32(s0)
 830:	01879793          	slli	a5,a5,0x18
 834:	4187d793          	srai	a5,a5,0x18
 838:	fff7c793          	not	a5,a5
 83c:	01879793          	slli	a5,a5,0x18
 840:	4187d793          	srai	a5,a5,0x18
 844:	00f777b3          	and	a5,a4,a5
 848:	01879713          	slli	a4,a5,0x18
 84c:	41875713          	srai	a4,a4,0x18
 850:	fdc42683          	lw	a3,-36(s0)
 854:	fc442783          	lw	a5,-60(s0)
 858:	00f6f7b3          	and	a5,a3,a5
 85c:	00078a63          	beqz	a5,870 <QrTinyBufferAppend+0xdc>
 860:	fe042783          	lw	a5,-32(s0)
 864:	01879793          	slli	a5,a5,0x18
 868:	4187d793          	srai	a5,a5,0x18
 86c:	0080006f          	j	874 <QrTinyBufferAppend+0xe0>
 870:	00000793          	li	a5,0
 874:	00e7e7b3          	or	a5,a5,a4
 878:	01879793          	slli	a5,a5,0x18
 87c:	4187d793          	srai	a5,a5,0x18
 880:	0ff7f713          	zext.b	a4,a5
 884:	fe842783          	lw	a5,-24(s0)
 888:	00e78023          	sb	a4,0(a5)
 88c:	fec42783          	lw	a5,-20(s0)
 890:	00178793          	addi	a5,a5,1
 894:	fef42623          	sw	a5,-20(s0)
 898:	fec42703          	lw	a4,-20(s0)
 89c:	fc042783          	lw	a5,-64(s0)
 8a0:	f0f76ee3          	bltu	a4,a5,7bc <QrTinyBufferAppend+0x28>
 8a4:	fc042783          	lw	a5,-64(s0)
 8a8:	00078513          	mv	a0,a5
 8ac:	03c12083          	lw	ra,60(sp)
 8b0:	03812403          	lw	s0,56(sp)
 8b4:	04010113          	addi	sp,sp,64
 8b8:	00008067          	ret

Disassembly of section .text.QrTinyWriteAlphanumeric:

000008bc <QrTinyWriteAlphanumeric>:
 8bc:	fc010113          	addi	sp,sp,-64
 8c0:	02112e23          	sw	ra,60(sp)
 8c4:	02812c23          	sw	s0,56(sp)
 8c8:	04010413          	addi	s0,sp,64
 8cc:	fca42623          	sw	a0,-52(s0)
 8d0:	fcb42423          	sw	a1,-56(s0)
 8d4:	fcc42223          	sw	a2,-60(s0)
 8d8:	fc442503          	lw	a0,-60(s0)
 8dc:	30d010ef          	jal	23e8 <strlen>
 8e0:	fca42e23          	sw	a0,-36(s0)
 8e4:	fe042623          	sw	zero,-20(s0)
 8e8:	fc842703          	lw	a4,-56(s0)
 8ec:	fec42783          	lw	a5,-20(s0)
 8f0:	00f707b3          	add	a5,a4,a5
 8f4:	00400693          	li	a3,4
 8f8:	00200613          	li	a2,2
 8fc:	00078593          	mv	a1,a5
 900:	fcc42503          	lw	a0,-52(s0)
 904:	e91ff0ef          	jal	794 <QrTinyBufferAppend>
 908:	00050713          	mv	a4,a0
 90c:	fec42783          	lw	a5,-20(s0)
 910:	00e787b3          	add	a5,a5,a4
 914:	fef42623          	sw	a5,-20(s0)
 918:	fc842703          	lw	a4,-56(s0)
 91c:	fec42783          	lw	a5,-20(s0)
 920:	00f707b3          	add	a5,a4,a5
 924:	00900693          	li	a3,9
 928:	fdc42603          	lw	a2,-36(s0)
 92c:	00078593          	mv	a1,a5
 930:	fcc42503          	lw	a0,-52(s0)
 934:	e61ff0ef          	jal	794 <QrTinyBufferAppend>
 938:	00050713          	mv	a4,a0
 93c:	fec42783          	lw	a5,-20(s0)
 940:	00e787b3          	add	a5,a5,a4
 944:	fef42623          	sw	a5,-20(s0)
 948:	fe042423          	sw	zero,-24(s0)
 94c:	1740006f          	j	ac0 <QrTinyWriteAlphanumeric+0x204>
 950:	fdc42703          	lw	a4,-36(s0)
 954:	fe842783          	lw	a5,-24(s0)
 958:	40f707b3          	sub	a5,a4,a5
 95c:	00200713          	li	a4,2
 960:	00f77463          	bgeu	a4,a5,968 <QrTinyWriteAlphanumeric+0xac>
 964:	00200793          	li	a5,2
 968:	fcf42c23          	sw	a5,-40(s0)
 96c:	fc442703          	lw	a4,-60(s0)
 970:	fe842783          	lw	a5,-24(s0)
 974:	00f707b3          	add	a5,a4,a5
 978:	0007c783          	lbu	a5,0(a5)
 97c:	fcf40ba3          	sb	a5,-41(s0)
 980:	000067b7          	lui	a5,0x6
 984:	4a07a683          	lw	a3,1184(a5) # 64a0 <symbols.0>
 988:	fd744703          	lbu	a4,-41(s0)
 98c:	06000793          	li	a5,96
 990:	00e7fe63          	bgeu	a5,a4,9ac <QrTinyWriteAlphanumeric+0xf0>
 994:	fd744703          	lbu	a4,-41(s0)
 998:	07a00793          	li	a5,122
 99c:	00e7e863          	bltu	a5,a4,9ac <QrTinyWriteAlphanumeric+0xf0>
 9a0:	fd744783          	lbu	a5,-41(s0)
 9a4:	fe078793          	addi	a5,a5,-32
 9a8:	0080006f          	j	9b0 <QrTinyWriteAlphanumeric+0xf4>
 9ac:	fd744783          	lbu	a5,-41(s0)
 9b0:	00078593          	mv	a1,a5
 9b4:	00068513          	mv	a0,a3
 9b8:	304010ef          	jal	1cbc <strchr>
 9bc:	00050713          	mv	a4,a0
 9c0:	000067b7          	lui	a5,0x6
 9c4:	4a07a783          	lw	a5,1184(a5) # 64a0 <symbols.0>
 9c8:	40f707b3          	sub	a5,a4,a5
 9cc:	fef42223          	sw	a5,-28(s0)
 9d0:	00600793          	li	a5,6
 9d4:	fef42023          	sw	a5,-32(s0)
 9d8:	fd842703          	lw	a4,-40(s0)
 9dc:	00100793          	li	a5,1
 9e0:	08e7fe63          	bgeu	a5,a4,a7c <QrTinyWriteAlphanumeric+0x1c0>
 9e4:	fe842783          	lw	a5,-24(s0)
 9e8:	00178793          	addi	a5,a5,1
 9ec:	fc442703          	lw	a4,-60(s0)
 9f0:	00f707b3          	add	a5,a4,a5
 9f4:	0007c783          	lbu	a5,0(a5)
 9f8:	fcf40ba3          	sb	a5,-41(s0)
 9fc:	fe442703          	lw	a4,-28(s0)
 a00:	00070793          	mv	a5,a4
 a04:	00179793          	slli	a5,a5,0x1
 a08:	00e787b3          	add	a5,a5,a4
 a0c:	00479713          	slli	a4,a5,0x4
 a10:	40f707b3          	sub	a5,a4,a5
 a14:	fef42223          	sw	a5,-28(s0)
 a18:	000067b7          	lui	a5,0x6
 a1c:	4a07a683          	lw	a3,1184(a5) # 64a0 <symbols.0>
 a20:	fd744703          	lbu	a4,-41(s0)
 a24:	06000793          	li	a5,96
 a28:	00e7fe63          	bgeu	a5,a4,a44 <QrTinyWriteAlphanumeric+0x188>
 a2c:	fd744703          	lbu	a4,-41(s0)
 a30:	07a00793          	li	a5,122
 a34:	00e7e863          	bltu	a5,a4,a44 <QrTinyWriteAlphanumeric+0x188>
 a38:	fd744783          	lbu	a5,-41(s0)
 a3c:	fe078793          	addi	a5,a5,-32
 a40:	0080006f          	j	a48 <QrTinyWriteAlphanumeric+0x18c>
 a44:	fd744783          	lbu	a5,-41(s0)
 a48:	00078593          	mv	a1,a5
 a4c:	00068513          	mv	a0,a3
 a50:	26c010ef          	jal	1cbc <strchr>
 a54:	00050713          	mv	a4,a0
 a58:	000067b7          	lui	a5,0x6
 a5c:	4a07a783          	lw	a5,1184(a5) # 64a0 <symbols.0>
 a60:	40f707b3          	sub	a5,a4,a5
 a64:	fe442703          	lw	a4,-28(s0)
 a68:	00f707b3          	add	a5,a4,a5
 a6c:	fef42223          	sw	a5,-28(s0)
 a70:	fe042783          	lw	a5,-32(s0)
 a74:	00578793          	addi	a5,a5,5
 a78:	fef42023          	sw	a5,-32(s0)
 a7c:	fc842703          	lw	a4,-56(s0)
 a80:	fec42783          	lw	a5,-20(s0)
 a84:	00f707b3          	add	a5,a4,a5
 a88:	fe442703          	lw	a4,-28(s0)
 a8c:	fe042683          	lw	a3,-32(s0)
 a90:	00070613          	mv	a2,a4
 a94:	00078593          	mv	a1,a5
 a98:	fcc42503          	lw	a0,-52(s0)
 a9c:	cf9ff0ef          	jal	794 <QrTinyBufferAppend>
 aa0:	00050713          	mv	a4,a0
 aa4:	fec42783          	lw	a5,-20(s0)
 aa8:	00e787b3          	add	a5,a5,a4
 aac:	fef42623          	sw	a5,-20(s0)
 ab0:	fe842703          	lw	a4,-24(s0)
 ab4:	fd842783          	lw	a5,-40(s0)
 ab8:	00f707b3          	add	a5,a4,a5
 abc:	fef42423          	sw	a5,-24(s0)
 ac0:	fe842703          	lw	a4,-24(s0)
 ac4:	fdc42783          	lw	a5,-36(s0)
 ac8:	e8f764e3          	bltu	a4,a5,950 <QrTinyWriteAlphanumeric+0x94>
 acc:	fec42783          	lw	a5,-20(s0)
 ad0:	00078513          	mv	a0,a5
 ad4:	03c12083          	lw	ra,60(sp)
 ad8:	03812403          	lw	s0,56(sp)
 adc:	04010113          	addi	sp,sp,64
 ae0:	00008067          	ret

Disassembly of section .text.QrTinyIdentifyIndex:

00000ae4 <QrTinyIdentifyIndex>:
 ae4:	fc010113          	addi	sp,sp,-64
 ae8:	02112e23          	sw	ra,60(sp)
 aec:	02812c23          	sw	s0,56(sp)
 af0:	04010413          	addi	s0,sp,64
 af4:	fca42623          	sw	a0,-52(s0)
 af8:	fcb42423          	sw	a1,-56(s0)
 afc:	fcc42783          	lw	a5,-52(s0)
 b00:	0067a793          	slti	a5,a5,6
 b04:	0017b793          	seqz	a5,a5
 b08:	0ff7f793          	zext.b	a5,a5
 b0c:	00078713          	mv	a4,a5
 b10:	fcc42783          	lw	a5,-52(s0)
 b14:	40e787b3          	sub	a5,a5,a4
 b18:	fef42423          	sw	a5,-24(s0)
 b1c:	fc842783          	lw	a5,-56(s0)
 b20:	0067a793          	slti	a5,a5,6
 b24:	0017b793          	seqz	a5,a5
 b28:	0ff7f793          	zext.b	a5,a5
 b2c:	00078713          	mv	a4,a5
 b30:	fc842783          	lw	a5,-56(s0)
 b34:	40e787b3          	sub	a5,a5,a4
 b38:	fef42223          	sw	a5,-28(s0)
 b3c:	fe842783          	lw	a5,-24(s0)
 b40:	4017d793          	srai	a5,a5,0x1
 b44:	0017f793          	andi	a5,a5,1
 b48:	fef42023          	sw	a5,-32(s0)
 b4c:	fe842783          	lw	a5,-24(s0)
 b50:	0017f793          	andi	a5,a5,1
 b54:	fcf42e23          	sw	a5,-36(s0)
 b58:	fe842783          	lw	a5,-24(s0)
 b5c:	4017d793          	srai	a5,a5,0x1
 b60:	00900713          	li	a4,9
 b64:	40f707b3          	sub	a5,a4,a5
 b68:	fcf42c23          	sw	a5,-40(s0)
 b6c:	fe442783          	lw	a5,-28(s0)
 b70:	4027d793          	srai	a5,a5,0x2
 b74:	00400713          	li	a4,4
 b78:	40f707b3          	sub	a5,a4,a5
 b7c:	fcf42a23          	sw	a5,-44(s0)
 b80:	fff00793          	li	a5,-1
 b84:	fef42623          	sw	a5,-20(s0)
 b88:	fd842703          	lw	a4,-40(s0)
 b8c:	00300793          	li	a5,3
 b90:	04e7c863          	blt	a5,a4,be0 <QrTinyIdentifyIndex+0xfc>
 b94:	fe042783          	lw	a5,-32(s0)
 b98:	02078263          	beqz	a5,bbc <QrTinyIdentifyIndex+0xd8>
 b9c:	fd842703          	lw	a4,-40(s0)
 ba0:	00070793          	mv	a5,a4
 ba4:	00179793          	slli	a5,a5,0x1
 ba8:	00e787b3          	add	a5,a5,a4
 bac:	fd442703          	lw	a4,-44(s0)
 bb0:	00f707b3          	add	a5,a4,a5
 bb4:	fef42623          	sw	a5,-20(s0)
 bb8:	09c0006f          	j	c54 <QrTinyIdentifyIndex+0x170>
 bbc:	fd842703          	lw	a4,-40(s0)
 bc0:	00070793          	mv	a5,a4
 bc4:	00179793          	slli	a5,a5,0x1
 bc8:	00e787b3          	add	a5,a5,a4
 bcc:	00278713          	addi	a4,a5,2
 bd0:	fd442783          	lw	a5,-44(s0)
 bd4:	40f707b3          	sub	a5,a4,a5
 bd8:	fef42623          	sw	a5,-20(s0)
 bdc:	0780006f          	j	c54 <QrTinyIdentifyIndex+0x170>
 be0:	fd842703          	lw	a4,-40(s0)
 be4:	00500793          	li	a5,5
 be8:	06e7c063          	blt	a5,a4,c48 <QrTinyIdentifyIndex+0x164>
 bec:	fe042783          	lw	a5,-32(s0)
 bf0:	02078663          	beqz	a5,c1c <QrTinyIdentifyIndex+0x138>
 bf4:	fd842783          	lw	a5,-40(s0)
 bf8:	ffc78713          	addi	a4,a5,-4
 bfc:	00070793          	mv	a5,a4
 c00:	00279793          	slli	a5,a5,0x2
 c04:	00e78733          	add	a4,a5,a4
 c08:	fd442783          	lw	a5,-44(s0)
 c0c:	00f707b3          	add	a5,a4,a5
 c10:	00c78793          	addi	a5,a5,12
 c14:	fef42623          	sw	a5,-20(s0)
 c18:	03c0006f          	j	c54 <QrTinyIdentifyIndex+0x170>
 c1c:	fd842783          	lw	a5,-40(s0)
 c20:	ffc78713          	addi	a4,a5,-4
 c24:	00070793          	mv	a5,a4
 c28:	00279793          	slli	a5,a5,0x2
 c2c:	00e787b3          	add	a5,a5,a4
 c30:	00478713          	addi	a4,a5,4
 c34:	fd442783          	lw	a5,-44(s0)
 c38:	40f707b3          	sub	a5,a4,a5
 c3c:	00c78793          	addi	a5,a5,12
 c40:	fef42623          	sw	a5,-20(s0)
 c44:	0100006f          	j	c54 <QrTinyIdentifyIndex+0x170>
 c48:	fd842783          	lw	a5,-40(s0)
 c4c:	01078793          	addi	a5,a5,16
 c50:	fef42623          	sw	a5,-20(s0)
 c54:	fe042783          	lw	a5,-32(s0)
 c58:	00078663          	beqz	a5,c64 <QrTinyIdentifyIndex+0x180>
 c5c:	00000793          	li	a5,0
 c60:	0080006f          	j	c68 <QrTinyIdentifyIndex+0x184>
 c64:	00300793          	li	a5,3
 c68:	fe442703          	lw	a4,-28(s0)
 c6c:	00377713          	andi	a4,a4,3
 c70:	00e7c7b3          	xor	a5,a5,a4
 c74:	00179793          	slli	a5,a5,0x1
 c78:	fdc42703          	lw	a4,-36(s0)
 c7c:	00f707b3          	add	a5,a4,a5
 c80:	fcf42823          	sw	a5,-48(s0)
 c84:	fec42783          	lw	a5,-20(s0)
 c88:	00379713          	slli	a4,a5,0x3
 c8c:	fd042783          	lw	a5,-48(s0)
 c90:	00f767b3          	or	a5,a4,a5
 c94:	00078513          	mv	a0,a5
 c98:	03c12083          	lw	ra,60(sp)
 c9c:	03812403          	lw	s0,56(sp)
 ca0:	04010113          	addi	sp,sp,64
 ca4:	00008067          	ret

Disassembly of section .text.QrTinyIdentifyModule:

00000ca8 <QrTinyIdentifyModule>:
 ca8:	fc010113          	addi	sp,sp,-64
 cac:	02112e23          	sw	ra,60(sp)
 cb0:	02812c23          	sw	s0,56(sp)
 cb4:	04010413          	addi	s0,sp,64
 cb8:	fca42623          	sw	a0,-52(s0)
 cbc:	fcb42423          	sw	a1,-56(s0)
 cc0:	00060793          	mv	a5,a2
 cc4:	fcf41323          	sh	a5,-58(s0)
 cc8:	fcc42783          	lw	a5,-52(s0)
 ccc:	0207c263          	bltz	a5,cf0 <QrTinyIdentifyModule+0x48>
 cd0:	fc842783          	lw	a5,-56(s0)
 cd4:	0007ce63          	bltz	a5,cf0 <QrTinyIdentifyModule+0x48>
 cd8:	fcc42703          	lw	a4,-52(s0)
 cdc:	01400793          	li	a5,20
 ce0:	00e7c863          	blt	a5,a4,cf0 <QrTinyIdentifyModule+0x48>
 ce4:	fc842703          	lw	a4,-56(s0)
 ce8:	01400793          	li	a5,20
 cec:	00e7d663          	bge	a5,a4,cf8 <QrTinyIdentifyModule+0x50>
 cf0:	00000793          	li	a5,0
 cf4:	2000006f          	j	ef4 <QrTinyIdentifyModule+0x24c>
 cf8:	fe042623          	sw	zero,-20(s0)
 cfc:	0b80006f          	j	db4 <QrTinyIdentifyModule+0x10c>
 d00:	fec42783          	lw	a5,-20(s0)
 d04:	0017f793          	andi	a5,a5,1
 d08:	00078663          	beqz	a5,d14 <QrTinyIdentifyModule+0x6c>
 d0c:	01100793          	li	a5,17
 d10:	0080006f          	j	d18 <QrTinyIdentifyModule+0x70>
 d14:	00300793          	li	a5,3
 d18:	fcc42703          	lw	a4,-52(s0)
 d1c:	40f70733          	sub	a4,a4,a5
 d20:	41f75793          	srai	a5,a4,0x1f
 d24:	00e7c733          	xor	a4,a5,a4
 d28:	40f707b3          	sub	a5,a4,a5
 d2c:	fcf42e23          	sw	a5,-36(s0)
 d30:	fec42783          	lw	a5,-20(s0)
 d34:	0027f793          	andi	a5,a5,2
 d38:	00078663          	beqz	a5,d44 <QrTinyIdentifyModule+0x9c>
 d3c:	01100793          	li	a5,17
 d40:	0080006f          	j	d48 <QrTinyIdentifyModule+0xa0>
 d44:	00300793          	li	a5,3
 d48:	fc842703          	lw	a4,-56(s0)
 d4c:	40f70733          	sub	a4,a4,a5
 d50:	41f75793          	srai	a5,a4,0x1f
 d54:	00e7c733          	xor	a4,a5,a4
 d58:	40f707b3          	sub	a5,a4,a5
 d5c:	fcf42c23          	sw	a5,-40(s0)
 d60:	fdc42783          	lw	a5,-36(s0)
 d64:	00079a63          	bnez	a5,d78 <QrTinyIdentifyModule+0xd0>
 d68:	fd842783          	lw	a5,-40(s0)
 d6c:	00079663          	bnez	a5,d78 <QrTinyIdentifyModule+0xd0>
 d70:	00100793          	li	a5,1
 d74:	1800006f          	j	ef4 <QrTinyIdentifyModule+0x24c>
 d78:	fdc42703          	lw	a4,-36(s0)
 d7c:	00400793          	li	a5,4
 d80:	02e7c463          	blt	a5,a4,da8 <QrTinyIdentifyModule+0x100>
 d84:	fd842703          	lw	a4,-40(s0)
 d88:	00400793          	li	a5,4
 d8c:	00e7ce63          	blt	a5,a4,da8 <QrTinyIdentifyModule+0x100>
 d90:	fdc42703          	lw	a4,-36(s0)
 d94:	fd842783          	lw	a5,-40(s0)
 d98:	00e7d463          	bge	a5,a4,da0 <QrTinyIdentifyModule+0xf8>
 d9c:	00070793          	mv	a5,a4
 da0:	0017f793          	andi	a5,a5,1
 da4:	1500006f          	j	ef4 <QrTinyIdentifyModule+0x24c>
 da8:	fec42783          	lw	a5,-20(s0)
 dac:	00178793          	addi	a5,a5,1
 db0:	fef42623          	sw	a5,-20(s0)
 db4:	fec42703          	lw	a4,-20(s0)
 db8:	00200793          	li	a5,2
 dbc:	f4e7d2e3          	bge	a5,a4,d00 <QrTinyIdentifyModule+0x58>
 dc0:	fcc42703          	lw	a4,-52(s0)
 dc4:	00600793          	li	a5,6
 dc8:	00f70863          	beq	a4,a5,dd8 <QrTinyIdentifyModule+0x130>
 dcc:	fc842703          	lw	a4,-56(s0)
 dd0:	00600793          	li	a5,6
 dd4:	00f71e63          	bne	a4,a5,df0 <QrTinyIdentifyModule+0x148>
 dd8:	fcc42703          	lw	a4,-52(s0)
 ddc:	fc842783          	lw	a5,-56(s0)
 de0:	00f747b3          	xor	a5,a4,a5
 de4:	fff7c793          	not	a5,a5
 de8:	0017f793          	andi	a5,a5,1
 dec:	1080006f          	j	ef4 <QrTinyIdentifyModule+0x24c>
 df0:	fcc42783          	lw	a5,-52(s0)
 df4:	0067a793          	slti	a5,a5,6
 df8:	0017b793          	seqz	a5,a5
 dfc:	0ff7f793          	zext.b	a5,a5
 e00:	00078713          	mv	a4,a5
 e04:	fcc42783          	lw	a5,-52(s0)
 e08:	40e787b3          	sub	a5,a5,a4
 e0c:	fef42223          	sw	a5,-28(s0)
 e10:	fc842783          	lw	a5,-56(s0)
 e14:	0067a793          	slti	a5,a5,6
 e18:	0017b793          	seqz	a5,a5
 e1c:	0ff7f793          	zext.b	a5,a5
 e20:	00078713          	mv	a4,a5
 e24:	fc842783          	lw	a5,-56(s0)
 e28:	40e787b3          	sub	a5,a5,a4
 e2c:	fef42023          	sw	a5,-32(s0)
 e30:	fcc42703          	lw	a4,-52(s0)
 e34:	00800793          	li	a5,8
 e38:	00f71c63          	bne	a4,a5,e50 <QrTinyIdentifyModule+0x1a8>
 e3c:	fc842703          	lw	a4,-56(s0)
 e40:	00d00793          	li	a5,13
 e44:	00f71663          	bne	a4,a5,e50 <QrTinyIdentifyModule+0x1a8>
 e48:	00100793          	li	a5,1
 e4c:	0a80006f          	j	ef4 <QrTinyIdentifyModule+0x24c>
 e50:	fff00793          	li	a5,-1
 e54:	fef42423          	sw	a5,-24(s0)
 e58:	fe442703          	lw	a4,-28(s0)
 e5c:	00700793          	li	a5,7
 e60:	02e7c463          	blt	a5,a4,e88 <QrTinyIdentifyModule+0x1e0>
 e64:	fe042703          	lw	a4,-32(s0)
 e68:	00700793          	li	a5,7
 e6c:	00e7ce63          	blt	a5,a4,e88 <QrTinyIdentifyModule+0x1e0>
 e70:	00700713          	li	a4,7
 e74:	fe442783          	lw	a5,-28(s0)
 e78:	40f707b3          	sub	a5,a4,a5
 e7c:	fe042703          	lw	a4,-32(s0)
 e80:	00f707b3          	add	a5,a4,a5
 e84:	fef42423          	sw	a5,-24(s0)
 e88:	fcc42703          	lw	a4,-52(s0)
 e8c:	00800793          	li	a5,8
 e90:	00f71e63          	bne	a4,a5,eac <QrTinyIdentifyModule+0x204>
 e94:	fc842703          	lw	a4,-56(s0)
 e98:	00c00793          	li	a5,12
 e9c:	00e7d863          	bge	a5,a4,eac <QrTinyIdentifyModule+0x204>
 ea0:	fc842783          	lw	a5,-56(s0)
 ea4:	ffa78793          	addi	a5,a5,-6
 ea8:	fef42423          	sw	a5,-24(s0)
 eac:	fc842703          	lw	a4,-56(s0)
 eb0:	00800793          	li	a5,8
 eb4:	02f71063          	bne	a4,a5,ed4 <QrTinyIdentifyModule+0x22c>
 eb8:	fcc42703          	lw	a4,-52(s0)
 ebc:	00c00793          	li	a5,12
 ec0:	00e7da63          	bge	a5,a4,ed4 <QrTinyIdentifyModule+0x22c>
 ec4:	01400713          	li	a4,20
 ec8:	fcc42783          	lw	a5,-52(s0)
 ecc:	40f707b3          	sub	a5,a4,a5
 ed0:	fef42423          	sw	a5,-24(s0)
 ed4:	fe842783          	lw	a5,-24(s0)
 ed8:	0007cc63          	bltz	a5,ef0 <QrTinyIdentifyModule+0x248>
 edc:	fc645703          	lhu	a4,-58(s0)
 ee0:	fe842783          	lw	a5,-24(s0)
 ee4:	40f757b3          	sra	a5,a4,a5
 ee8:	0017f793          	andi	a5,a5,1
 eec:	0080006f          	j	ef4 <QrTinyIdentifyModule+0x24c>
 ef0:	fff00793          	li	a5,-1
 ef4:	00078513          	mv	a0,a5
 ef8:	03c12083          	lw	ra,60(sp)
 efc:	03812403          	lw	s0,56(sp)
 f00:	04010113          	addi	sp,sp,64
 f04:	00008067          	ret

Disassembly of section .text.QrTinyCalculateMask:

00000f08 <QrTinyCalculateMask>:
     f08:	fe010113          	addi	sp,sp,-32
     f0c:	00112e23          	sw	ra,28(sp)
     f10:	00812c23          	sw	s0,24(sp)
     f14:	02010413          	addi	s0,sp,32
     f18:	00050793          	mv	a5,a0
     f1c:	feb42423          	sw	a1,-24(s0)
     f20:	fec42223          	sw	a2,-28(s0)
     f24:	fef41723          	sh	a5,-18(s0)
     f28:	fee45783          	lhu	a5,-18(s0)
     f2c:	00a7d793          	srli	a5,a5,0xa
     f30:	01079793          	slli	a5,a5,0x10
     f34:	0107d793          	srli	a5,a5,0x10
     f38:	0157c793          	xori	a5,a5,21
     f3c:	01079793          	slli	a5,a5,0x10
     f40:	0107d793          	srli	a5,a5,0x10
     f44:	0077f793          	andi	a5,a5,7
     f48:	00700713          	li	a4,7
     f4c:	1ee78c63          	beq	a5,a4,1144 <QrTinyCalculateMask+0x23c>
     f50:	00700713          	li	a4,7
     f54:	24f74263          	blt	a4,a5,1198 <QrTinyCalculateMask+0x290>
     f58:	00600713          	li	a4,6
     f5c:	18e78663          	beq	a5,a4,10e8 <QrTinyCalculateMask+0x1e0>
     f60:	00600713          	li	a4,6
     f64:	22f74a63          	blt	a4,a5,1198 <QrTinyCalculateMask+0x290>
     f68:	00500713          	li	a4,5
     f6c:	12e78663          	beq	a5,a4,1098 <QrTinyCalculateMask+0x190>
     f70:	00500713          	li	a4,5
     f74:	22f74263          	blt	a4,a5,1198 <QrTinyCalculateMask+0x290>
     f78:	00400713          	li	a4,4
     f7c:	0ee78263          	beq	a5,a4,1060 <QrTinyCalculateMask+0x158>
     f80:	00400713          	li	a4,4
     f84:	20f74a63          	blt	a4,a5,1198 <QrTinyCalculateMask+0x290>
     f88:	00300713          	li	a4,3
     f8c:	08e78c63          	beq	a5,a4,1024 <QrTinyCalculateMask+0x11c>
     f90:	00300713          	li	a4,3
     f94:	20f74263          	blt	a4,a5,1198 <QrTinyCalculateMask+0x290>
     f98:	00200713          	li	a4,2
     f9c:	04e78a63          	beq	a5,a4,ff0 <QrTinyCalculateMask+0xe8>
     fa0:	00200713          	li	a4,2
     fa4:	1ef74a63          	blt	a4,a5,1198 <QrTinyCalculateMask+0x290>
     fa8:	00078863          	beqz	a5,fb8 <QrTinyCalculateMask+0xb0>
     fac:	00100713          	li	a4,1
     fb0:	02e78463          	beq	a5,a4,fd8 <QrTinyCalculateMask+0xd0>
     fb4:	1e40006f          	j	1198 <QrTinyCalculateMask+0x290>
     fb8:	fe442703          	lw	a4,-28(s0)
     fbc:	fe842783          	lw	a5,-24(s0)
     fc0:	00f707b3          	add	a5,a4,a5
     fc4:	0017f793          	andi	a5,a5,1
     fc8:	0017f793          	andi	a5,a5,1
     fcc:	0017c793          	xori	a5,a5,1
     fd0:	0ff7f793          	zext.b	a5,a5
     fd4:	1c80006f          	j	119c <QrTinyCalculateMask+0x294>
     fd8:	fe442783          	lw	a5,-28(s0)
     fdc:	0017f793          	andi	a5,a5,1
     fe0:	0017f793          	andi	a5,a5,1
     fe4:	0017c793          	xori	a5,a5,1
     fe8:	0ff7f793          	zext.b	a5,a5
     fec:	1b00006f          	j	119c <QrTinyCalculateMask+0x294>
     ff0:	fe842683          	lw	a3,-24(s0)
     ff4:	555557b7          	lui	a5,0x55555
     ff8:	55678793          	addi	a5,a5,1366 # 55555556 <_stack_start+0x5554b556>
     ffc:	02f69733          	mulh	a4,a3,a5
    1000:	41f6d793          	srai	a5,a3,0x1f
    1004:	40f70733          	sub	a4,a4,a5
    1008:	00070793          	mv	a5,a4
    100c:	00179793          	slli	a5,a5,0x1
    1010:	00e787b3          	add	a5,a5,a4
    1014:	40f68733          	sub	a4,a3,a5
    1018:	00173793          	seqz	a5,a4
    101c:	0ff7f793          	zext.b	a5,a5
    1020:	17c0006f          	j	119c <QrTinyCalculateMask+0x294>
    1024:	fe442703          	lw	a4,-28(s0)
    1028:	fe842783          	lw	a5,-24(s0)
    102c:	00f706b3          	add	a3,a4,a5
    1030:	555557b7          	lui	a5,0x55555
    1034:	55678793          	addi	a5,a5,1366 # 55555556 <_stack_start+0x5554b556>
    1038:	02f69733          	mulh	a4,a3,a5
    103c:	41f6d793          	srai	a5,a3,0x1f
    1040:	40f70733          	sub	a4,a4,a5
    1044:	00070793          	mv	a5,a4
    1048:	00179793          	slli	a5,a5,0x1
    104c:	00e787b3          	add	a5,a5,a4
    1050:	40f68733          	sub	a4,a3,a5
    1054:	00173793          	seqz	a5,a4
    1058:	0ff7f793          	zext.b	a5,a5
    105c:	1400006f          	j	119c <QrTinyCalculateMask+0x294>
    1060:	fe442783          	lw	a5,-28(s0)
    1064:	4017d713          	srai	a4,a5,0x1
    1068:	fe842783          	lw	a5,-24(s0)
    106c:	555556b7          	lui	a3,0x55555
    1070:	55668693          	addi	a3,a3,1366 # 55555556 <_stack_start+0x5554b556>
    1074:	02d796b3          	mulh	a3,a5,a3
    1078:	41f7d793          	srai	a5,a5,0x1f
    107c:	40f687b3          	sub	a5,a3,a5
    1080:	00f707b3          	add	a5,a4,a5
    1084:	0017f793          	andi	a5,a5,1
    1088:	0017f793          	andi	a5,a5,1
    108c:	0017c793          	xori	a5,a5,1
    1090:	0ff7f793          	zext.b	a5,a5
    1094:	1080006f          	j	119c <QrTinyCalculateMask+0x294>
    1098:	fe442703          	lw	a4,-28(s0)
    109c:	fe842783          	lw	a5,-24(s0)
    10a0:	02f707b3          	mul	a5,a4,a5
    10a4:	0017f613          	andi	a2,a5,1
    10a8:	fe442703          	lw	a4,-28(s0)
    10ac:	fe842783          	lw	a5,-24(s0)
    10b0:	02f706b3          	mul	a3,a4,a5
    10b4:	555557b7          	lui	a5,0x55555
    10b8:	55678793          	addi	a5,a5,1366 # 55555556 <_stack_start+0x5554b556>
    10bc:	02f69733          	mulh	a4,a3,a5
    10c0:	41f6d793          	srai	a5,a3,0x1f
    10c4:	40f70733          	sub	a4,a4,a5
    10c8:	00070793          	mv	a5,a4
    10cc:	00179793          	slli	a5,a5,0x1
    10d0:	00e787b3          	add	a5,a5,a4
    10d4:	40f68733          	sub	a4,a3,a5
    10d8:	00e607b3          	add	a5,a2,a4
    10dc:	0017b793          	seqz	a5,a5
    10e0:	0ff7f793          	zext.b	a5,a5
    10e4:	0b80006f          	j	119c <QrTinyCalculateMask+0x294>
    10e8:	fe442703          	lw	a4,-28(s0)
    10ec:	fe842783          	lw	a5,-24(s0)
    10f0:	02f707b3          	mul	a5,a4,a5
    10f4:	00078613          	mv	a2,a5
    10f8:	fe442703          	lw	a4,-28(s0)
    10fc:	fe842783          	lw	a5,-24(s0)
    1100:	02f70733          	mul	a4,a4,a5
    1104:	555557b7          	lui	a5,0x55555
    1108:	55678793          	addi	a5,a5,1366 # 55555556 <_stack_start+0x5554b556>
    110c:	02f716b3          	mulh	a3,a4,a5
    1110:	41f75793          	srai	a5,a4,0x1f
    1114:	40f686b3          	sub	a3,a3,a5
    1118:	00068793          	mv	a5,a3
    111c:	00179793          	slli	a5,a5,0x1
    1120:	00d787b3          	add	a5,a5,a3
    1124:	40f706b3          	sub	a3,a4,a5
    1128:	00068793          	mv	a5,a3
    112c:	00f607b3          	add	a5,a2,a5
    1130:	0017f793          	andi	a5,a5,1
    1134:	0017f793          	andi	a5,a5,1
    1138:	0017c793          	xori	a5,a5,1
    113c:	0ff7f793          	zext.b	a5,a5
    1140:	05c0006f          	j	119c <QrTinyCalculateMask+0x294>
    1144:	fe442703          	lw	a4,-28(s0)
    1148:	fe842783          	lw	a5,-24(s0)
    114c:	02f70733          	mul	a4,a4,a5
    1150:	555557b7          	lui	a5,0x55555
    1154:	55678793          	addi	a5,a5,1366 # 55555556 <_stack_start+0x5554b556>
    1158:	02f716b3          	mulh	a3,a4,a5
    115c:	41f75793          	srai	a5,a4,0x1f
    1160:	40f686b3          	sub	a3,a3,a5
    1164:	00068793          	mv	a5,a3
    1168:	00179793          	slli	a5,a5,0x1
    116c:	00d787b3          	add	a5,a5,a3
    1170:	40f706b3          	sub	a3,a4,a5
    1174:	fe442703          	lw	a4,-28(s0)
    1178:	fe842783          	lw	a5,-24(s0)
    117c:	00f707b3          	add	a5,a4,a5
    1180:	00f687b3          	add	a5,a3,a5
    1184:	0017f793          	andi	a5,a5,1
    1188:	0017f793          	andi	a5,a5,1
    118c:	0017c793          	xori	a5,a5,1
    1190:	0ff7f793          	zext.b	a5,a5
    1194:	0080006f          	j	119c <QrTinyCalculateMask+0x294>
    1198:	00000793          	li	a5,0
    119c:	00078513          	mv	a0,a5
    11a0:	01c12083          	lw	ra,28(sp)
    11a4:	01812403          	lw	s0,24(sp)
    11a8:	02010113          	addi	sp,sp,32
    11ac:	00008067          	ret

Disassembly of section .text.QrTinyRSRemainder:

000011b0 <QrTinyRSRemainder>:
    11b0:	fb010113          	addi	sp,sp,-80
    11b4:	04112623          	sw	ra,76(sp)
    11b8:	04812423          	sw	s0,72(sp)
    11bc:	05010413          	addi	s0,sp,80
    11c0:	fca42623          	sw	a0,-52(s0)
    11c4:	fcb42423          	sw	a1,-56(s0)
    11c8:	fcc42223          	sw	a2,-60(s0)
    11cc:	fcd42023          	sw	a3,-64(s0)
    11d0:	fae42e23          	sw	a4,-68(s0)
    11d4:	fc042783          	lw	a5,-64(s0)
    11d8:	00078613          	mv	a2,a5
    11dc:	00000593          	li	a1,0
    11e0:	fbc42503          	lw	a0,-68(s0)
    11e4:	8ccff0ef          	jal	2b0 <memset>
    11e8:	fe042623          	sw	zero,-20(s0)
    11ec:	1780006f          	j	1364 <QrTinyRSRemainder+0x1b4>
    11f0:	fcc42703          	lw	a4,-52(s0)
    11f4:	fec42783          	lw	a5,-20(s0)
    11f8:	00f707b3          	add	a5,a4,a5
    11fc:	0007c703          	lbu	a4,0(a5)
    1200:	fbc42783          	lw	a5,-68(s0)
    1204:	0007c783          	lbu	a5,0(a5)
    1208:	00f747b3          	xor	a5,a4,a5
    120c:	fcf40fa3          	sb	a5,-33(s0)
    1210:	fbc42783          	lw	a5,-68(s0)
    1214:	00178713          	addi	a4,a5,1
    1218:	fc042783          	lw	a5,-64(s0)
    121c:	fff78793          	addi	a5,a5,-1
    1220:	00078613          	mv	a2,a5
    1224:	00070593          	mv	a1,a4
    1228:	fbc42503          	lw	a0,-68(s0)
    122c:	481000ef          	jal	1eac <memmove>
    1230:	fc042783          	lw	a5,-64(s0)
    1234:	fff78793          	addi	a5,a5,-1
    1238:	fbc42703          	lw	a4,-68(s0)
    123c:	00f707b3          	add	a5,a4,a5
    1240:	00078023          	sb	zero,0(a5)
    1244:	fe042423          	sw	zero,-24(s0)
    1248:	1040006f          	j	134c <QrTinyRSRemainder+0x19c>
    124c:	fe0403a3          	sb	zero,-25(s0)
    1250:	00700793          	li	a5,7
    1254:	fef42023          	sw	a5,-32(s0)
    1258:	0b40006f          	j	130c <QrTinyRSRemainder+0x15c>
    125c:	fe740783          	lb	a5,-25(s0)
    1260:	00179793          	slli	a5,a5,0x1
    1264:	01879693          	slli	a3,a5,0x18
    1268:	4186d693          	srai	a3,a3,0x18
    126c:	fe744783          	lbu	a5,-25(s0)
    1270:	0077d793          	srli	a5,a5,0x7
    1274:	0ff7f793          	zext.b	a5,a5
    1278:	01879793          	slli	a5,a5,0x18
    127c:	4187d793          	srai	a5,a5,0x18
    1280:	00078713          	mv	a4,a5
    1284:	00371713          	slli	a4,a4,0x3
    1288:	40f70733          	sub	a4,a4,a5
    128c:	00271713          	slli	a4,a4,0x2
    1290:	00f707b3          	add	a5,a4,a5
    1294:	01879793          	slli	a5,a5,0x18
    1298:	4187d793          	srai	a5,a5,0x18
    129c:	00f6c7b3          	xor	a5,a3,a5
    12a0:	01879793          	slli	a5,a5,0x18
    12a4:	4187d793          	srai	a5,a5,0x18
    12a8:	fef403a3          	sb	a5,-25(s0)
    12ac:	fdf44703          	lbu	a4,-33(s0)
    12b0:	fe042783          	lw	a5,-32(s0)
    12b4:	40f757b3          	sra	a5,a4,a5
    12b8:	0ff7f793          	zext.b	a5,a5
    12bc:	0017f793          	andi	a5,a5,1
    12c0:	0ff7f693          	zext.b	a3,a5
    12c4:	fe842783          	lw	a5,-24(s0)
    12c8:	fc442703          	lw	a4,-60(s0)
    12cc:	00f707b3          	add	a5,a4,a5
    12d0:	0007c783          	lbu	a5,0(a5)
    12d4:	00068713          	mv	a4,a3
    12d8:	40e00733          	neg	a4,a4
    12dc:	00f777b3          	and	a5,a4,a5
    12e0:	0ff7f793          	zext.b	a5,a5
    12e4:	01879713          	slli	a4,a5,0x18
    12e8:	41875713          	srai	a4,a4,0x18
    12ec:	fe740783          	lb	a5,-25(s0)
    12f0:	00f747b3          	xor	a5,a4,a5
    12f4:	01879793          	slli	a5,a5,0x18
    12f8:	4187d793          	srai	a5,a5,0x18
    12fc:	fef403a3          	sb	a5,-25(s0)
    1300:	fe042783          	lw	a5,-32(s0)
    1304:	fff78793          	addi	a5,a5,-1
    1308:	fef42023          	sw	a5,-32(s0)
    130c:	fe042783          	lw	a5,-32(s0)
    1310:	f407d6e3          	bgez	a5,125c <QrTinyRSRemainder+0xac>
    1314:	fe842783          	lw	a5,-24(s0)
    1318:	fbc42703          	lw	a4,-68(s0)
    131c:	00f707b3          	add	a5,a4,a5
    1320:	0007c703          	lbu	a4,0(a5)
    1324:	fe842783          	lw	a5,-24(s0)
    1328:	fbc42683          	lw	a3,-68(s0)
    132c:	00f687b3          	add	a5,a3,a5
    1330:	fe744683          	lbu	a3,-25(s0)
    1334:	00d74733          	xor	a4,a4,a3
    1338:	0ff77713          	zext.b	a4,a4
    133c:	00e78023          	sb	a4,0(a5)
    1340:	fe842783          	lw	a5,-24(s0)
    1344:	00178793          	addi	a5,a5,1
    1348:	fef42423          	sw	a5,-24(s0)
    134c:	fe842703          	lw	a4,-24(s0)
    1350:	fc042783          	lw	a5,-64(s0)
    1354:	eef74ce3          	blt	a4,a5,124c <QrTinyRSRemainder+0x9c>
    1358:	fec42783          	lw	a5,-20(s0)
    135c:	00178793          	addi	a5,a5,1
    1360:	fef42623          	sw	a5,-20(s0)
    1364:	fec42703          	lw	a4,-20(s0)
    1368:	fc842783          	lw	a5,-56(s0)
    136c:	e8f762e3          	bltu	a4,a5,11f0 <QrTinyRSRemainder+0x40>
    1370:	00000013          	nop
    1374:	00000013          	nop
    1378:	04c12083          	lw	ra,76(sp)
    137c:	04812403          	lw	s0,72(sp)
    1380:	05010113          	addi	sp,sp,80
    1384:	00008067          	ret

Disassembly of section .text.QrTinyGenerate:

00001388 <QrTinyGenerate>:
    1388:	fc010113          	addi	sp,sp,-64
    138c:	02112e23          	sw	ra,60(sp)
    1390:	02812c23          	sw	s0,56(sp)
    1394:	04010413          	addi	s0,sp,64
    1398:	fca42623          	sw	a0,-52(s0)
    139c:	fcb42423          	sw	a1,-56(s0)
    13a0:	00060793          	mv	a5,a2
    13a4:	fcf41323          	sh	a5,-58(s0)
    13a8:	fc645783          	lhu	a5,-58(s0)
    13ac:	00d7d793          	srli	a5,a5,0xd
    13b0:	01079793          	slli	a5,a5,0x10
    13b4:	0107d793          	srli	a5,a5,0x10
    13b8:	0027c793          	xori	a5,a5,2
    13bc:	01079793          	slli	a5,a5,0x10
    13c0:	0107d793          	srli	a5,a5,0x10
    13c4:	0037f793          	andi	a5,a5,3
    13c8:	fef42223          	sw	a5,-28(s0)
    13cc:	000067b7          	lui	a5,0x6
    13d0:	36478713          	addi	a4,a5,868 # 6364 <qrcode_ecc_block_codewords>
    13d4:	fe442783          	lw	a5,-28(s0)
    13d8:	00f707b3          	add	a5,a4,a5
    13dc:	00078783          	lb	a5,0(a5)
    13e0:	fef42023          	sw	a5,-32(s0)
    13e4:	000067b7          	lui	a5,0x6
    13e8:	37078713          	addi	a4,a5,880 # 6370 <eccDivisors>
    13ec:	fe442783          	lw	a5,-28(s0)
    13f0:	00279793          	slli	a5,a5,0x2
    13f4:	00f707b3          	add	a5,a4,a5
    13f8:	0007a783          	lw	a5,0(a5)
    13fc:	fcf42e23          	sw	a5,-36(s0)
    1400:	fe042783          	lw	a5,-32(s0)
    1404:	01a00713          	li	a4,26
    1408:	40f707b3          	sub	a5,a4,a5
    140c:	00379793          	slli	a5,a5,0x3
    1410:	fcf42c23          	sw	a5,-40(s0)
    1414:	fd842703          	lw	a4,-40(s0)
    1418:	fc842783          	lw	a5,-56(s0)
    141c:	40f707b3          	sub	a5,a4,a5
    1420:	fcf42a23          	sw	a5,-44(s0)
    1424:	fd442783          	lw	a5,-44(s0)
    1428:	0007d663          	bgez	a5,1434 <QrTinyGenerate+0xac>
    142c:	00000793          	li	a5,0
    1430:	1580006f          	j	1588 <QrTinyGenerate+0x200>
    1434:	fc842783          	lw	a5,-56(s0)
    1438:	fef42623          	sw	a5,-20(s0)
    143c:	fd842703          	lw	a4,-40(s0)
    1440:	fec42783          	lw	a5,-20(s0)
    1444:	40f707b3          	sub	a5,a4,a5
    1448:	fef42423          	sw	a5,-24(s0)
    144c:	fe842703          	lw	a4,-24(s0)
    1450:	00400793          	li	a5,4
    1454:	00e7f663          	bgeu	a5,a4,1460 <QrTinyGenerate+0xd8>
    1458:	00400793          	li	a5,4
    145c:	fef42423          	sw	a5,-24(s0)
    1460:	fe842683          	lw	a3,-24(s0)
    1464:	00000613          	li	a2,0
    1468:	fec42583          	lw	a1,-20(s0)
    146c:	fcc42503          	lw	a0,-52(s0)
    1470:	b24ff0ef          	jal	794 <QrTinyBufferAppend>
    1474:	00050713          	mv	a4,a0
    1478:	fec42783          	lw	a5,-20(s0)
    147c:	00e787b3          	add	a5,a5,a4
    1480:	fef42623          	sw	a5,-20(s0)
    1484:	fec42783          	lw	a5,-20(s0)
    1488:	40f007b3          	neg	a5,a5
    148c:	0077f793          	andi	a5,a5,7
    1490:	fcf42823          	sw	a5,-48(s0)
    1494:	fd842703          	lw	a4,-40(s0)
    1498:	fec42783          	lw	a5,-20(s0)
    149c:	40f707b3          	sub	a5,a4,a5
    14a0:	fef42423          	sw	a5,-24(s0)
    14a4:	fe842703          	lw	a4,-24(s0)
    14a8:	fd042783          	lw	a5,-48(s0)
    14ac:	00e7f663          	bgeu	a5,a4,14b8 <QrTinyGenerate+0x130>
    14b0:	fd042783          	lw	a5,-48(s0)
    14b4:	fef42423          	sw	a5,-24(s0)
    14b8:	fe842683          	lw	a3,-24(s0)
    14bc:	00000613          	li	a2,0
    14c0:	fec42583          	lw	a1,-20(s0)
    14c4:	fcc42503          	lw	a0,-52(s0)
    14c8:	accff0ef          	jal	794 <QrTinyBufferAppend>
    14cc:	00050713          	mv	a4,a0
    14d0:	fec42783          	lw	a5,-20(s0)
    14d4:	00e787b3          	add	a5,a5,a4
    14d8:	fef42623          	sw	a5,-20(s0)
    14dc:	0540006f          	j	1530 <QrTinyGenerate+0x1a8>
    14e0:	fe842703          	lw	a4,-24(s0)
    14e4:	01000793          	li	a5,16
    14e8:	00e7f663          	bgeu	a5,a4,14f4 <QrTinyGenerate+0x16c>
    14ec:	01000793          	li	a5,16
    14f0:	fef42423          	sw	a5,-24(s0)
    14f4:	01000713          	li	a4,16
    14f8:	fe842783          	lw	a5,-24(s0)
    14fc:	40f707b3          	sub	a5,a4,a5
    1500:	0000f737          	lui	a4,0xf
    1504:	c1170713          	addi	a4,a4,-1007 # ec11 <_stack_start+0x4c11>
    1508:	40f757b3          	sra	a5,a4,a5
    150c:	fe842683          	lw	a3,-24(s0)
    1510:	00078613          	mv	a2,a5
    1514:	fec42583          	lw	a1,-20(s0)
    1518:	fcc42503          	lw	a0,-52(s0)
    151c:	a78ff0ef          	jal	794 <QrTinyBufferAppend>
    1520:	00050713          	mv	a4,a0
    1524:	fec42783          	lw	a5,-20(s0)
    1528:	00e787b3          	add	a5,a5,a4
    152c:	fef42623          	sw	a5,-20(s0)
    1530:	fd842703          	lw	a4,-40(s0)
    1534:	fec42783          	lw	a5,-20(s0)
    1538:	40f707b3          	sub	a5,a4,a5
    153c:	fef42423          	sw	a5,-24(s0)
    1540:	fe842783          	lw	a5,-24(s0)
    1544:	f8079ee3          	bnez	a5,14e0 <QrTinyGenerate+0x158>
    1548:	fd842783          	lw	a5,-40(s0)
    154c:	0037d593          	srli	a1,a5,0x3
    1550:	fe042783          	lw	a5,-32(s0)
    1554:	01a00713          	li	a4,26
    1558:	40f70733          	sub	a4,a4,a5
    155c:	200007b7          	lui	a5,0x20000
    1560:	fff78793          	addi	a5,a5,-1 # 1fffffff <_stack_start+0x1fff5fff>
    1564:	00f777b3          	and	a5,a4,a5
    1568:	fcc42703          	lw	a4,-52(s0)
    156c:	00f707b3          	add	a5,a4,a5
    1570:	00078713          	mv	a4,a5
    1574:	fe042683          	lw	a3,-32(s0)
    1578:	fdc42603          	lw	a2,-36(s0)
    157c:	fcc42503          	lw	a0,-52(s0)
    1580:	c31ff0ef          	jal	11b0 <QrTinyRSRemainder>
    1584:	00100793          	li	a5,1
    1588:	00078513          	mv	a0,a5
    158c:	03c12083          	lw	ra,60(sp)
    1590:	03812403          	lw	s0,56(sp)
    1594:	04010113          	addi	sp,sp,64
    1598:	00008067          	ret

Disassembly of section .text.QrTinyModuleGet:

0000159c <QrTinyModuleGet>:
    159c:	fd010113          	addi	sp,sp,-48
    15a0:	02112623          	sw	ra,44(sp)
    15a4:	02812423          	sw	s0,40(sp)
    15a8:	03010413          	addi	s0,sp,48
    15ac:	fca42e23          	sw	a0,-36(s0)
    15b0:	00058793          	mv	a5,a1
    15b4:	fcc42a23          	sw	a2,-44(s0)
    15b8:	fcd42823          	sw	a3,-48(s0)
    15bc:	fcf41d23          	sh	a5,-38(s0)
    15c0:	fda45783          	lhu	a5,-38(s0)
    15c4:	00078613          	mv	a2,a5
    15c8:	fd042583          	lw	a1,-48(s0)
    15cc:	fd442503          	lw	a0,-44(s0)
    15d0:	ed8ff0ef          	jal	ca8 <QrTinyIdentifyModule>
    15d4:	fea42623          	sw	a0,-20(s0)
    15d8:	fec42703          	lw	a4,-20(s0)
    15dc:	fff00793          	li	a5,-1
    15e0:	06f71c63          	bne	a4,a5,1658 <QrTinyModuleGet+0xbc>
    15e4:	fd042583          	lw	a1,-48(s0)
    15e8:	fd442503          	lw	a0,-44(s0)
    15ec:	cf8ff0ef          	jal	ae4 <QrTinyIdentifyIndex>
    15f0:	00050793          	mv	a5,a0
    15f4:	fef42423          	sw	a5,-24(s0)
    15f8:	fe842783          	lw	a5,-24(s0)
    15fc:	4037d793          	srai	a5,a5,0x3
    1600:	00078713          	mv	a4,a5
    1604:	fdc42783          	lw	a5,-36(s0)
    1608:	00e787b3          	add	a5,a5,a4
    160c:	0007c783          	lbu	a5,0(a5)
    1610:	00078713          	mv	a4,a5
    1614:	fe842783          	lw	a5,-24(s0)
    1618:	0077f793          	andi	a5,a5,7
    161c:	40f757b3          	sra	a5,a4,a5
    1620:	0017f793          	andi	a5,a5,1
    1624:	fef42623          	sw	a5,-20(s0)
    1628:	fda45783          	lhu	a5,-38(s0)
    162c:	fd042603          	lw	a2,-48(s0)
    1630:	fd442583          	lw	a1,-44(s0)
    1634:	00078513          	mv	a0,a5
    1638:	8d1ff0ef          	jal	f08 <QrTinyCalculateMask>
    163c:	00050793          	mv	a5,a0
    1640:	fef403a3          	sb	a5,-25(s0)
    1644:	fe744783          	lbu	a5,-25(s0)
    1648:	00078863          	beqz	a5,1658 <QrTinyModuleGet+0xbc>
    164c:	fec42783          	lw	a5,-20(s0)
    1650:	0017c793          	xori	a5,a5,1
    1654:	fef42623          	sw	a5,-20(s0)
    1658:	fec42783          	lw	a5,-20(s0)
    165c:	00078513          	mv	a0,a5
    1660:	02c12083          	lw	ra,44(sp)
    1664:	02812403          	lw	s0,40(sp)
    1668:	03010113          	addi	sp,sp,48
    166c:	00008067          	ret

Disassembly of section .text.uart_interrupt_handler:

00001670 <uart_interrupt_handler>:
    1670:	fd010113          	addi	sp,sp,-48
    1674:	02112623          	sw	ra,44(sp)
    1678:	02812423          	sw	s0,40(sp)
    167c:	02d12223          	sw	a3,36(sp)
    1680:	02e12023          	sw	a4,32(sp)
    1684:	00f12e23          	sw	a5,28(sp)
    1688:	03010413          	addi	s0,sp,48
    168c:	00800793          	li	a5,8
    1690:	3007b073          	csrc	mstatus,a5
    1694:	000207b7          	lui	a5,0x20
    1698:	00278793          	addi	a5,a5,2 # 20002 <_stack_start+0x16002>
    169c:	0007c783          	lbu	a5,0(a5)
    16a0:	00078713          	mv	a4,a5
    16a4:	000077b7          	lui	a5,0x7
    16a8:	88e7aa23          	sw	a4,-1900(a5) # 6894 <recieved_bytes_num>
    16ac:	fc042e23          	sw	zero,-36(s0)
    16b0:	0600006f          	j	1710 <uart_interrupt_handler+0xa0>
    16b4:	fdc42703          	lw	a4,-36(s0)
    16b8:	000077b7          	lui	a5,0x7
    16bc:	8947a783          	lw	a5,-1900(a5) # 6894 <recieved_bytes_num>
    16c0:	02f77863          	bgeu	a4,a5,16f0 <uart_interrupt_handler+0x80>
    16c4:	fdc42703          	lw	a4,-36(s0)
    16c8:	000207b7          	lui	a5,0x20
    16cc:	00378793          	addi	a5,a5,3 # 20003 <_stack_start+0x16003>
    16d0:	00f707b3          	add	a5,a4,a5
    16d4:	0007c703          	lbu	a4,0(a5)
    16d8:	000067b7          	lui	a5,0x6
    16dc:	4a878693          	addi	a3,a5,1192 # 64a8 <recieved_bytes>
    16e0:	fdc42783          	lw	a5,-36(s0)
    16e4:	00f687b3          	add	a5,a3,a5
    16e8:	00e78023          	sb	a4,0(a5)
    16ec:	0180006f          	j	1704 <uart_interrupt_handler+0x94>
    16f0:	000067b7          	lui	a5,0x6
    16f4:	4a878713          	addi	a4,a5,1192 # 64a8 <recieved_bytes>
    16f8:	fdc42783          	lw	a5,-36(s0)
    16fc:	00f707b3          	add	a5,a4,a5
    1700:	00078023          	sb	zero,0(a5)
    1704:	fdc42783          	lw	a5,-36(s0)
    1708:	00178793          	addi	a5,a5,1
    170c:	fcf42e23          	sw	a5,-36(s0)
    1710:	fdc42703          	lw	a4,-36(s0)
    1714:	0ff00793          	li	a5,255
    1718:	f8e7dee3          	bge	a5,a4,16b4 <uart_interrupt_handler+0x44>
    171c:	00800793          	li	a5,8
    1720:	3007a073          	csrs	mstatus,a5
    1724:	000077b7          	lui	a5,0x7
    1728:	00100713          	li	a4,1
    172c:	88e78c23          	sb	a4,-1896(a5) # 6898 <uart_new_command>
    1730:	00000013          	nop
    1734:	02c12083          	lw	ra,44(sp)
    1738:	02812403          	lw	s0,40(sp)
    173c:	02412683          	lw	a3,36(sp)
    1740:	02012703          	lw	a4,32(sp)
    1744:	01c12783          	lw	a5,28(sp)
    1748:	03010113          	addi	sp,sp,48
    174c:	30200073          	mret

Disassembly of section .text.read_uart:

00001750 <read_uart>:
    1750:	fe010113          	addi	sp,sp,-32
    1754:	00112e23          	sw	ra,28(sp)
    1758:	00812c23          	sw	s0,24(sp)
    175c:	02010413          	addi	s0,sp,32
    1760:	fea42623          	sw	a0,-20(s0)
    1764:	000207b7          	lui	a5,0x20
    1768:	00300713          	li	a4,3
    176c:	00e78023          	sb	a4,0(a5) # 20000 <_stack_start+0x16000>
    1770:	00000013          	nop
    1774:	000077b7          	lui	a5,0x7
    1778:	8987c783          	lbu	a5,-1896(a5) # 6898 <uart_new_command>
    177c:	0017c793          	xori	a5,a5,1
    1780:	0ff7f793          	zext.b	a5,a5
    1784:	fe0798e3          	bnez	a5,1774 <read_uart+0x24>
    1788:	000077b7          	lui	a5,0x7
    178c:	88078c23          	sb	zero,-1896(a5) # 6898 <uart_new_command>
    1790:	000077b7          	lui	a5,0x7
    1794:	8947a783          	lw	a5,-1900(a5) # 6894 <recieved_bytes_num>
    1798:	00078613          	mv	a2,a5
    179c:	000067b7          	lui	a5,0x6
    17a0:	4a878593          	addi	a1,a5,1192 # 64a8 <recieved_bytes>
    17a4:	fec42503          	lw	a0,-20(s0)
    17a8:	279000ef          	jal	2220 <memcpy>
    17ac:	000077b7          	lui	a5,0x7
    17b0:	8947a783          	lw	a5,-1900(a5) # 6894 <recieved_bytes_num>
    17b4:	00078513          	mv	a0,a5
    17b8:	01c12083          	lw	ra,28(sp)
    17bc:	01812403          	lw	s0,24(sp)
    17c0:	02010113          	addi	sp,sp,32
    17c4:	00008067          	ret

Disassembly of section .text.main:

000017c8 <main>:
    17c8:	f7010113          	addi	sp,sp,-144
    17cc:	08112623          	sw	ra,140(sp)
    17d0:	08812423          	sw	s0,136(sp)
    17d4:	09010413          	addi	s0,sp,144
    17d8:	00800793          	li	a5,8
    17dc:	3007a073          	csrs	mstatus,a5
    17e0:	000017b7          	lui	a5,0x1
    17e4:	80078793          	addi	a5,a5,-2048 # 800 <QrTinyBufferAppend+0x6c>
    17e8:	3047a073          	csrs	mie,a5
    17ec:	000067b7          	lui	a5,0x6
    17f0:	64078513          	addi	a0,a5,1600 # 6640 <new_data_buffer>
    17f4:	f5dff0ef          	jal	1750 <read_uart>
    17f8:	fca42423          	sw	a0,-56(s0)
    17fc:	000047b7          	lui	a5,0x4
    1800:	00078593          	mv	a1,a5
    1804:	000067b7          	lui	a5,0x6
    1808:	64078513          	addi	a0,a5,1600 # 6640 <new_data_buffer>
    180c:	5f0000ef          	jal	1dfc <strtok>
    1810:	fea42623          	sw	a0,-20(s0)
    1814:	fe0405a3          	sb	zero,-21(s0)
    1818:	0d00006f          	j	18e8 <main+0x120>
    181c:	feb44783          	lbu	a5,-21(s0)
    1820:	00400713          	li	a4,4
    1824:	08e78663          	beq	a5,a4,18b0 <main+0xe8>
    1828:	00400713          	li	a4,4
    182c:	08f74c63          	blt	a4,a5,18c4 <main+0xfc>
    1830:	00300713          	li	a4,3
    1834:	06e78463          	beq	a5,a4,189c <main+0xd4>
    1838:	00300713          	li	a4,3
    183c:	08f74463          	blt	a4,a5,18c4 <main+0xfc>
    1840:	00200713          	li	a4,2
    1844:	04e78263          	beq	a5,a4,1888 <main+0xc0>
    1848:	00200713          	li	a4,2
    184c:	06f74c63          	blt	a4,a5,18c4 <main+0xfc>
    1850:	00078863          	beqz	a5,1860 <main+0x98>
    1854:	00100713          	li	a4,1
    1858:	00e78e63          	beq	a5,a4,1874 <main+0xac>
    185c:	0680006f          	j	18c4 <main+0xfc>
    1860:	fec42583          	lw	a1,-20(s0)
    1864:	000067b7          	lui	a5,0x6
    1868:	5a878513          	addi	a0,a5,1448 # 65a8 <name_buffer>
    186c:	409000ef          	jal	2474 <strcpy>
    1870:	0580006f          	j	18c8 <main+0x100>
    1874:	fec42583          	lw	a1,-20(s0)
    1878:	000067b7          	lui	a5,0x6
    187c:	5bc78513          	addi	a0,a5,1468 # 65bc <desc_buffer>
    1880:	3f5000ef          	jal	2474 <strcpy>
    1884:	0440006f          	j	18c8 <main+0x100>
    1888:	fec42583          	lw	a1,-20(s0)
    188c:	000067b7          	lui	a5,0x6
    1890:	5f078513          	addi	a0,a5,1520 # 65f0 <price_buffer>
    1894:	3e1000ef          	jal	2474 <strcpy>
    1898:	0300006f          	j	18c8 <main+0x100>
    189c:	fec42583          	lw	a1,-20(s0)
    18a0:	000067b7          	lui	a5,0x6
    18a4:	5fc78513          	addi	a0,a5,1532 # 65fc <old_price_buffer>
    18a8:	3cd000ef          	jal	2474 <strcpy>
    18ac:	01c0006f          	j	18c8 <main+0x100>
    18b0:	fec42583          	lw	a1,-20(s0)
    18b4:	000067b7          	lui	a5,0x6
    18b8:	60878513          	addi	a0,a5,1544 # 6608 <url_buffer>
    18bc:	3b9000ef          	jal	2474 <strcpy>
    18c0:	0080006f          	j	18c8 <main+0x100>
    18c4:	00000013          	nop
    18c8:	feb44783          	lbu	a5,-21(s0)
    18cc:	00178793          	addi	a5,a5,1
    18d0:	fef405a3          	sb	a5,-21(s0)
    18d4:	000047b7          	lui	a5,0x4
    18d8:	00078593          	mv	a1,a5
    18dc:	00000513          	li	a0,0
    18e0:	51c000ef          	jal	1dfc <strtok>
    18e4:	fea42623          	sw	a0,-20(s0)
    18e8:	fec42783          	lw	a5,-20(s0)
    18ec:	f20798e3          	bnez	a5,181c <main+0x54>
    18f0:	c81fe0ef          	jal	570 <clear_screen>
    18f4:	fc042223          	sw	zero,-60(s0)
    18f8:	000067b7          	lui	a5,0x6
    18fc:	60878613          	addi	a2,a5,1544 # 6608 <url_buffer>
    1900:	fc442583          	lw	a1,-60(s0)
    1904:	000067b7          	lui	a5,0x6
    1908:	74078513          	addi	a0,a5,1856 # 6740 <qr_buffer>
    190c:	fb1fe0ef          	jal	8bc <QrTinyWriteAlphanumeric>
    1910:	00050713          	mv	a4,a0
    1914:	fc442783          	lw	a5,-60(s0)
    1918:	00e787b3          	add	a5,a5,a4
    191c:	fcf42223          	sw	a5,-60(s0)
    1920:	000077b7          	lui	a5,0x7
    1924:	7c478793          	addi	a5,a5,1988 # 77c4 <_end+0xf28>
    1928:	fcf41123          	sh	a5,-62(s0)
    192c:	fc245783          	lhu	a5,-62(s0)
    1930:	00078613          	mv	a2,a5
    1934:	fc442583          	lw	a1,-60(s0)
    1938:	000067b7          	lui	a5,0x6
    193c:	74078513          	addi	a0,a5,1856 # 6740 <qr_buffer>
    1940:	a49ff0ef          	jal	1388 <QrTinyGenerate>
    1944:	01500793          	li	a5,21
    1948:	faf42e23          	sw	a5,-68(s0)
    194c:	00400793          	li	a5,4
    1950:	faf40da3          	sb	a5,-69(s0)
    1954:	00400793          	li	a5,4
    1958:	fef40523          	sb	a5,-22(s0)
    195c:	fea44703          	lbu	a4,-22(s0)
    1960:	fbc42783          	lw	a5,-68(s0)
    1964:	02f70733          	mul	a4,a4,a5
    1968:	06800793          	li	a5,104
    196c:	06e7e463          	bltu	a5,a4,19d4 <main+0x20c>
    1970:	fea44783          	lbu	a5,-22(s0)
    1974:	faf40da3          	sb	a5,-69(s0)
    1978:	00000013          	nop
    197c:	fbb44703          	lbu	a4,-69(s0)
    1980:	fbc42783          	lw	a5,-68(s0)
    1984:	02f707b3          	mul	a5,a4,a5
    1988:	06800713          	li	a4,104
    198c:	40f707b3          	sub	a5,a4,a5
    1990:	0017d793          	srli	a5,a5,0x1
    1994:	faf42a23          	sw	a5,-76(s0)
    1998:	fbb44703          	lbu	a4,-69(s0)
    199c:	fbc42783          	lw	a5,-68(s0)
    19a0:	02f70733          	mul	a4,a4,a5
    19a4:	fbb44683          	lbu	a3,-69(s0)
    19a8:	fbc42783          	lw	a5,-68(s0)
    19ac:	02f687b3          	mul	a5,a3,a5
    19b0:	06800693          	li	a3,104
    19b4:	40f687b3          	sub	a5,a3,a5
    19b8:	0017d793          	srli	a5,a5,0x1
    19bc:	00f707b3          	add	a5,a4,a5
    19c0:	09800713          	li	a4,152
    19c4:	40f707b3          	sub	a5,a4,a5
    19c8:	faf42823          	sw	a5,-80(s0)
    19cc:	fe042223          	sw	zero,-28(s0)
    19d0:	1000006f          	j	1ad0 <main+0x308>
    19d4:	fea44783          	lbu	a5,-22(s0)
    19d8:	fff78793          	addi	a5,a5,-1
    19dc:	fef40523          	sb	a5,-22(s0)
    19e0:	f7dff06f          	j	195c <main+0x194>
    19e4:	fe042023          	sw	zero,-32(s0)
    19e8:	0d00006f          	j	1ab8 <main+0x2f0>
    19ec:	fc245783          	lhu	a5,-62(s0)
    19f0:	fe442683          	lw	a3,-28(s0)
    19f4:	fe042603          	lw	a2,-32(s0)
    19f8:	00078593          	mv	a1,a5
    19fc:	000067b7          	lui	a5,0x6
    1a00:	74078513          	addi	a0,a5,1856 # 6740 <qr_buffer>
    1a04:	b99ff0ef          	jal	159c <QrTinyModuleGet>
    1a08:	f6a42e23          	sw	a0,-132(s0)
    1a0c:	f7c42783          	lw	a5,-132(s0)
    1a10:	08078e63          	beqz	a5,1aac <main+0x2e4>
    1a14:	fc042e23          	sw	zero,-36(s0)
    1a18:	0880006f          	j	1aa0 <main+0x2d8>
    1a1c:	fc042c23          	sw	zero,-40(s0)
    1a20:	0680006f          	j	1a88 <main+0x2c0>
    1a24:	fbb44703          	lbu	a4,-69(s0)
    1a28:	fe042783          	lw	a5,-32(s0)
    1a2c:	02f707b3          	mul	a5,a4,a5
    1a30:	00078713          	mv	a4,a5
    1a34:	fb442783          	lw	a5,-76(s0)
    1a38:	00f70733          	add	a4,a4,a5
    1a3c:	fd842783          	lw	a5,-40(s0)
    1a40:	00f706b3          	add	a3,a4,a5
    1a44:	fbb44703          	lbu	a4,-69(s0)
    1a48:	fe442783          	lw	a5,-28(s0)
    1a4c:	02f707b3          	mul	a5,a4,a5
    1a50:	00078713          	mv	a4,a5
    1a54:	fb042783          	lw	a5,-80(s0)
    1a58:	00f70733          	add	a4,a4,a5
    1a5c:	fdc42783          	lw	a5,-36(s0)
    1a60:	00f707b3          	add	a5,a4,a5
    1a64:	f7c42703          	lw	a4,-132(s0)
    1a68:	0ff77713          	zext.b	a4,a4
    1a6c:	00070613          	mv	a2,a4
    1a70:	00078593          	mv	a1,a5
    1a74:	00068513          	mv	a0,a3
    1a78:	a89fe0ef          	jal	500 <set_pixel>
    1a7c:	fd842783          	lw	a5,-40(s0)
    1a80:	00178793          	addi	a5,a5,1
    1a84:	fcf42c23          	sw	a5,-40(s0)
    1a88:	fbb44783          	lbu	a5,-69(s0)
    1a8c:	fd842703          	lw	a4,-40(s0)
    1a90:	f8f76ae3          	bltu	a4,a5,1a24 <main+0x25c>
    1a94:	fdc42783          	lw	a5,-36(s0)
    1a98:	00178793          	addi	a5,a5,1
    1a9c:	fcf42e23          	sw	a5,-36(s0)
    1aa0:	fbb44783          	lbu	a5,-69(s0)
    1aa4:	fdc42703          	lw	a4,-36(s0)
    1aa8:	f6f76ae3          	bltu	a4,a5,1a1c <main+0x254>
    1aac:	fe042783          	lw	a5,-32(s0)
    1ab0:	00178793          	addi	a5,a5,1
    1ab4:	fef42023          	sw	a5,-32(s0)
    1ab8:	fe042703          	lw	a4,-32(s0)
    1abc:	01400793          	li	a5,20
    1ac0:	f2e7d6e3          	bge	a5,a4,19ec <main+0x224>
    1ac4:	fe442783          	lw	a5,-28(s0)
    1ac8:	00178793          	addi	a5,a5,1
    1acc:	fef42223          	sw	a5,-28(s0)
    1ad0:	fe442703          	lw	a4,-28(s0)
    1ad4:	01400793          	li	a5,20
    1ad8:	f0e7d6e3          	bge	a5,a4,19e4 <main+0x21c>
    1adc:	00200693          	li	a3,2
    1ae0:	000067b7          	lui	a5,0x6
    1ae4:	5a878613          	addi	a2,a5,1448 # 65a8 <name_buffer>
    1ae8:	00a00593          	li	a1,10
    1aec:	00a00513          	li	a0,10
    1af0:	bf5fe0ef          	jal	6e4 <draw_text>
    1af4:	01d00793          	li	a5,29
    1af8:	faf42623          	sw	a5,-84(s0)
    1afc:	00100693          	li	a3,1
    1b00:	000067b7          	lui	a5,0x6
    1b04:	5bc78613          	addi	a2,a5,1468 # 65bc <desc_buffer>
    1b08:	fac42583          	lw	a1,-84(s0)
    1b0c:	00a00513          	li	a0,10
    1b10:	bd5fe0ef          	jal	6e4 <draw_text>
    1b14:	fac42783          	lw	a5,-84(s0)
    1b18:	00c78793          	addi	a5,a5,12
    1b1c:	faf42423          	sw	a5,-88(s0)
    1b20:	fc042a23          	sw	zero,-44(s0)
    1b24:	0200006f          	j	1b44 <main+0x37c>
    1b28:	00100613          	li	a2,1
    1b2c:	fa842583          	lw	a1,-88(s0)
    1b30:	fd442503          	lw	a0,-44(s0)
    1b34:	9cdfe0ef          	jal	500 <set_pixel>
    1b38:	fd442783          	lw	a5,-44(s0)
    1b3c:	00178793          	addi	a5,a5,1
    1b40:	fcf42a23          	sw	a5,-44(s0)
    1b44:	fd442703          	lw	a4,-44(s0)
    1b48:	12700793          	li	a5,295
    1b4c:	fce7fee3          	bgeu	a5,a4,1b28 <main+0x360>
    1b50:	fa842783          	lw	a5,-88(s0)
    1b54:	fcf42823          	sw	a5,-48(s0)
    1b58:	0200006f          	j	1b78 <main+0x3b0>
    1b5c:	00100613          	li	a2,1
    1b60:	fd042583          	lw	a1,-48(s0)
    1b64:	06800513          	li	a0,104
    1b68:	999fe0ef          	jal	500 <set_pixel>
    1b6c:	fd042783          	lw	a5,-48(s0)
    1b70:	00178793          	addi	a5,a5,1
    1b74:	fcf42823          	sw	a5,-48(s0)
    1b78:	fd042703          	lw	a4,-48(s0)
    1b7c:	09700793          	li	a5,151
    1b80:	fce7fee3          	bgeu	a5,a4,1b5c <main+0x394>
    1b84:	000067b7          	lui	a5,0x6
    1b88:	5f078513          	addi	a0,a5,1520 # 65f0 <price_buffer>
    1b8c:	05d000ef          	jal	23e8 <strlen>
    1b90:	00050713          	mv	a4,a0
    1b94:	00070793          	mv	a5,a4
    1b98:	00179793          	slli	a5,a5,0x1
    1b9c:	00e787b3          	add	a5,a5,a4
    1ba0:	00379793          	slli	a5,a5,0x3
    1ba4:	ffc78793          	addi	a5,a5,-4
    1ba8:	faf42223          	sw	a5,-92(s0)
    1bac:	fa442783          	lw	a5,-92(s0)
    1bb0:	0017d793          	srli	a5,a5,0x1
    1bb4:	faf42023          	sw	a5,-96(s0)
    1bb8:	06000713          	li	a4,96
    1bbc:	fa042783          	lw	a5,-96(s0)
    1bc0:	40f707b3          	sub	a5,a4,a5
    1bc4:	f8f42e23          	sw	a5,-100(s0)
    1bc8:	f9c42783          	lw	a5,-100(s0)
    1bcc:	06878793          	addi	a5,a5,104
    1bd0:	f8f42c23          	sw	a5,-104(s0)
    1bd4:	00400693          	li	a3,4
    1bd8:	000067b7          	lui	a5,0x6
    1bdc:	5f078613          	addi	a2,a5,1520 # 65f0 <price_buffer>
    1be0:	05200593          	li	a1,82
    1be4:	f9842503          	lw	a0,-104(s0)
    1be8:	afdfe0ef          	jal	6e4 <draw_text>
    1bec:	000067b7          	lui	a5,0x6
    1bf0:	5fc78513          	addi	a0,a5,1532 # 65fc <old_price_buffer>
    1bf4:	7f4000ef          	jal	23e8 <strlen>
    1bf8:	00050793          	mv	a5,a0
    1bfc:	f8f40ba3          	sb	a5,-105(s0)
    1c00:	f9744783          	lbu	a5,-105(s0)
    1c04:	be0784e3          	beqz	a5,17ec <main+0x24>
    1c08:	f9744703          	lbu	a4,-105(s0)
    1c0c:	00070793          	mv	a5,a4
    1c10:	00179793          	slli	a5,a5,0x1
    1c14:	00e787b3          	add	a5,a5,a4
    1c18:	00279793          	slli	a5,a5,0x2
    1c1c:	ffe78793          	addi	a5,a5,-2
    1c20:	f8f42823          	sw	a5,-112(s0)
    1c24:	f9042783          	lw	a5,-112(s0)
    1c28:	0017d793          	srli	a5,a5,0x1
    1c2c:	f8f42623          	sw	a5,-116(s0)
    1c30:	06000713          	li	a4,96
    1c34:	f8c42783          	lw	a5,-116(s0)
    1c38:	40f707b3          	sub	a5,a4,a5
    1c3c:	f8f42423          	sw	a5,-120(s0)
    1c40:	f8842783          	lw	a5,-120(s0)
    1c44:	06878793          	addi	a5,a5,104
    1c48:	f8f42223          	sw	a5,-124(s0)
    1c4c:	08000793          	li	a5,128
    1c50:	f8f42023          	sw	a5,-128(s0)
    1c54:	00200693          	li	a3,2
    1c58:	000067b7          	lui	a5,0x6
    1c5c:	5fc78613          	addi	a2,a5,1532 # 65fc <old_price_buffer>
    1c60:	f8042583          	lw	a1,-128(s0)
    1c64:	f8442503          	lw	a0,-124(s0)
    1c68:	a7dfe0ef          	jal	6e4 <draw_text>
    1c6c:	f8442783          	lw	a5,-124(s0)
    1c70:	ffb78793          	addi	a5,a5,-5
    1c74:	fcf42623          	sw	a5,-52(s0)
    1c78:	0280006f          	j	1ca0 <main+0x4d8>
    1c7c:	f8042783          	lw	a5,-128(s0)
    1c80:	00878793          	addi	a5,a5,8
    1c84:	00100613          	li	a2,1
    1c88:	00078593          	mv	a1,a5
    1c8c:	fcc42503          	lw	a0,-52(s0)
    1c90:	871fe0ef          	jal	500 <set_pixel>
    1c94:	fcc42783          	lw	a5,-52(s0)
    1c98:	00178793          	addi	a5,a5,1
    1c9c:	fcf42623          	sw	a5,-52(s0)
    1ca0:	f8442703          	lw	a4,-124(s0)
    1ca4:	f9042783          	lw	a5,-112(s0)
    1ca8:	00f707b3          	add	a5,a4,a5
    1cac:	00578793          	addi	a5,a5,5
    1cb0:	fcc42703          	lw	a4,-52(s0)
    1cb4:	fcf764e3          	bltu	a4,a5,1c7c <main+0x4b4>
    1cb8:	b35ff06f          	j	17ec <main+0x24>

Disassembly of section .text.strchr:

00001cbc <strchr>:
    1cbc:	0ff5f693          	zext.b	a3,a1
    1cc0:	00357793          	andi	a5,a0,3
    1cc4:	0c068063          	beqz	a3,1d84 <strchr+0xc8>
    1cc8:	00078e63          	beqz	a5,1ce4 <strchr+0x28>
    1ccc:	00054783          	lbu	a5,0(a0)
    1cd0:	0a078663          	beqz	a5,1d7c <strchr+0xc0>
    1cd4:	0ad78663          	beq	a5,a3,1d80 <strchr+0xc4>
    1cd8:	00150513          	addi	a0,a0,1
    1cdc:	00357793          	andi	a5,a0,3
    1ce0:	fe0796e3          	bnez	a5,1ccc <strchr+0x10>
    1ce4:	0ff5f593          	zext.b	a1,a1
    1ce8:	00859893          	slli	a7,a1,0x8
    1cec:	00052703          	lw	a4,0(a0)
    1cf0:	00b888b3          	add	a7,a7,a1
    1cf4:	01089793          	slli	a5,a7,0x10
    1cf8:	00f888b3          	add	a7,a7,a5
    1cfc:	feff0837          	lui	a6,0xfeff0
    1d00:	00e8c7b3          	xor	a5,a7,a4
    1d04:	eff80813          	addi	a6,a6,-257 # fefefeff <_stack_start+0xfefe5eff>
    1d08:	010785b3          	add	a1,a5,a6
    1d0c:	fff7c613          	not	a2,a5
    1d10:	010707b3          	add	a5,a4,a6
    1d14:	fff74713          	not	a4,a4
    1d18:	00c5f633          	and	a2,a1,a2
    1d1c:	00e7f7b3          	and	a5,a5,a4
    1d20:	80808337          	lui	t1,0x80808
    1d24:	00c7e7b3          	or	a5,a5,a2
    1d28:	08030313          	addi	t1,t1,128 # 80808080 <_stack_start+0x807fe080>
    1d2c:	0067f7b3          	and	a5,a5,t1
    1d30:	04079263          	bnez	a5,1d74 <strchr+0xb8>
    1d34:	00452703          	lw	a4,4(a0)
    1d38:	00450513          	addi	a0,a0,4
    1d3c:	011747b3          	xor	a5,a4,a7
    1d40:	fff7c593          	not	a1,a5
    1d44:	01078633          	add	a2,a5,a6
    1d48:	010707b3          	add	a5,a4,a6
    1d4c:	fff74713          	not	a4,a4
    1d50:	00c5f633          	and	a2,a1,a2
    1d54:	00e7f7b3          	and	a5,a5,a4
    1d58:	00c7e7b3          	or	a5,a5,a2
    1d5c:	0067f7b3          	and	a5,a5,t1
    1d60:	fc078ae3          	beqz	a5,1d34 <strchr+0x78>
    1d64:	00054783          	lbu	a5,0(a0)
    1d68:	00078a63          	beqz	a5,1d7c <strchr+0xc0>
    1d6c:	08f68663          	beq	a3,a5,1df8 <strchr+0x13c>
    1d70:	00150513          	addi	a0,a0,1
    1d74:	00054783          	lbu	a5,0(a0)
    1d78:	fe079ae3          	bnez	a5,1d6c <strchr+0xb0>
    1d7c:	00000513          	li	a0,0
    1d80:	00008067          	ret
    1d84:	00078c63          	beqz	a5,1d9c <strchr+0xe0>
    1d88:	00054783          	lbu	a5,0(a0)
    1d8c:	fe078ae3          	beqz	a5,1d80 <strchr+0xc4>
    1d90:	00150513          	addi	a0,a0,1
    1d94:	00357793          	andi	a5,a0,3
    1d98:	fe0798e3          	bnez	a5,1d88 <strchr+0xcc>
    1d9c:	00052703          	lw	a4,0(a0)
    1da0:	feff0637          	lui	a2,0xfeff0
    1da4:	eff60613          	addi	a2,a2,-257 # fefefeff <_stack_start+0xfefe5eff>
    1da8:	00c707b3          	add	a5,a4,a2
    1dac:	808086b7          	lui	a3,0x80808
    1db0:	fff74713          	not	a4,a4
    1db4:	00e7f7b3          	and	a5,a5,a4
    1db8:	08068693          	addi	a3,a3,128 # 80808080 <_stack_start+0x807fe080>
    1dbc:	00d7f7b3          	and	a5,a5,a3
    1dc0:	02079063          	bnez	a5,1de0 <strchr+0x124>
    1dc4:	00452703          	lw	a4,4(a0)
    1dc8:	00450513          	addi	a0,a0,4
    1dcc:	00c707b3          	add	a5,a4,a2
    1dd0:	fff74713          	not	a4,a4
    1dd4:	00e7f7b3          	and	a5,a5,a4
    1dd8:	00d7f7b3          	and	a5,a5,a3
    1ddc:	fe0784e3          	beqz	a5,1dc4 <strchr+0x108>
    1de0:	00054783          	lbu	a5,0(a0)
    1de4:	f8078ee3          	beqz	a5,1d80 <strchr+0xc4>
    1de8:	00154783          	lbu	a5,1(a0)
    1dec:	00150513          	addi	a0,a0,1
    1df0:	fe079ce3          	bnez	a5,1de8 <strchr+0x12c>
    1df4:	00008067          	ret
    1df8:	00008067          	ret

Disassembly of section .text.strtok:

00001dfc <strtok>:
    1dfc:	000067b7          	lui	a5,0x6
    1e00:	4a47a603          	lw	a2,1188(a5) # 64a4 <_impure_ptr>
    1e04:	00100693          	li	a3,1
    1e08:	05060613          	addi	a2,a2,80
    1e0c:	0040006f          	j	1e10 <__strtok_r>

Disassembly of section .text.__strtok_r:

00001e10 <__strtok_r>:
    1e10:	06050c63          	beqz	a0,1e88 <__strtok_r+0x78>
    1e14:	00054803          	lbu	a6,0(a0)
    1e18:	00150893          	addi	a7,a0,1
    1e1c:	00058793          	mv	a5,a1
    1e20:	0080006f          	j	1e28 <__strtok_r+0x18>
    1e24:	04e80263          	beq	a6,a4,1e68 <__strtok_r+0x58>
    1e28:	0007c703          	lbu	a4,0(a5)
    1e2c:	00178793          	addi	a5,a5,1
    1e30:	fe071ae3          	bnez	a4,1e24 <__strtok_r+0x14>
    1e34:	06080063          	beqz	a6,1e94 <__strtok_r+0x84>
    1e38:	0008c683          	lbu	a3,0(a7)
    1e3c:	00188813          	addi	a6,a7,1
    1e40:	00058793          	mv	a5,a1
    1e44:	0080006f          	j	1e4c <__strtok_r+0x3c>
    1e48:	02070663          	beqz	a4,1e74 <__strtok_r+0x64>
    1e4c:	0007c703          	lbu	a4,0(a5)
    1e50:	00178793          	addi	a5,a5,1
    1e54:	fee69ae3          	bne	a3,a4,1e48 <__strtok_r+0x38>
    1e58:	02068263          	beqz	a3,1e7c <__strtok_r+0x6c>
    1e5c:	00088023          	sb	zero,0(a7)
    1e60:	01062023          	sw	a6,0(a2)
    1e64:	00008067          	ret
    1e68:	02068c63          	beqz	a3,1ea0 <__strtok_r+0x90>
    1e6c:	00088513          	mv	a0,a7
    1e70:	fa5ff06f          	j	1e14 <__strtok_r+0x4>
    1e74:	00080893          	mv	a7,a6
    1e78:	fc1ff06f          	j	1e38 <__strtok_r+0x28>
    1e7c:	00000813          	li	a6,0
    1e80:	01062023          	sw	a6,0(a2)
    1e84:	00008067          	ret
    1e88:	00062503          	lw	a0,0(a2)
    1e8c:	f80514e3          	bnez	a0,1e14 <__strtok_r+0x4>
    1e90:	0080006f          	j	1e98 <__strtok_r+0x88>
    1e94:	00062023          	sw	zero,0(a2)
    1e98:	00000513          	li	a0,0
    1e9c:	00008067          	ret
    1ea0:	01162023          	sw	a7,0(a2)
    1ea4:	00050023          	sb	zero,0(a0)
    1ea8:	00008067          	ret

Disassembly of section .text.memmove:

00001eac <memmove>:
    1eac:	02b56c63          	bltu	a0,a1,1ee4 <memmove+0x38>
    1eb0:	00c58733          	add	a4,a1,a2
    1eb4:	12e56463          	bltu	a0,a4,1fdc <memmove+0x130>
    1eb8:	00400793          	li	a5,4
    1ebc:	10c7ee63          	bltu	a5,a2,1fd8 <memmove+0x12c>
    1ec0:	00c586b3          	add	a3,a1,a2
    1ec4:	00050793          	mv	a5,a0
    1ec8:	22060a63          	beqz	a2,20fc <_stack_len+0xfc>
    1ecc:	0005c703          	lbu	a4,0(a1)
    1ed0:	00158593          	addi	a1,a1,1
    1ed4:	00178793          	addi	a5,a5,1
    1ed8:	fee78fa3          	sb	a4,-1(a5)
    1edc:	fed598e3          	bne	a1,a3,1ecc <memmove+0x20>
    1ee0:	00008067          	ret
    1ee4:	00c507b3          	add	a5,a0,a2
    1ee8:	fcf5f8e3          	bgeu	a1,a5,1eb8 <memmove+0xc>
    1eec:	00300713          	li	a4,3
    1ef0:	1ec77063          	bgeu	a4,a2,20d0 <_stack_len+0xd0>
    1ef4:	00a5e733          	or	a4,a1,a0
    1ef8:	00377713          	andi	a4,a4,3
    1efc:	1c071e63          	bnez	a4,20d8 <_stack_len+0xd8>
    1f00:	02300293          	li	t0,35
    1f04:	00050793          	mv	a5,a0
    1f08:	06c2f263          	bgeu	t0,a2,1f6c <memmove+0xc0>
    1f0c:	0005af83          	lw	t6,0(a1)
    1f10:	0045af03          	lw	t5,4(a1)
    1f14:	0085ae83          	lw	t4,8(a1)
    1f18:	00c5ae03          	lw	t3,12(a1)
    1f1c:	0105a303          	lw	t1,16(a1)
    1f20:	0145a883          	lw	a7,20(a1)
    1f24:	0185a803          	lw	a6,24(a1)
    1f28:	01c5a683          	lw	a3,28(a1)
    1f2c:	0205a703          	lw	a4,32(a1)
    1f30:	fdc60613          	addi	a2,a2,-36
    1f34:	01f7a023          	sw	t6,0(a5)
    1f38:	01e7a223          	sw	t5,4(a5)
    1f3c:	01d7a423          	sw	t4,8(a5)
    1f40:	01c7a623          	sw	t3,12(a5)
    1f44:	0067a823          	sw	t1,16(a5)
    1f48:	0117aa23          	sw	a7,20(a5)
    1f4c:	0107ac23          	sw	a6,24(a5)
    1f50:	00d7ae23          	sw	a3,28(a5)
    1f54:	02e7a023          	sw	a4,32(a5)
    1f58:	02458593          	addi	a1,a1,36
    1f5c:	02478793          	addi	a5,a5,36
    1f60:	fac2e6e3          	bltu	t0,a2,1f0c <memmove+0x60>
    1f64:	00300713          	li	a4,3
    1f68:	04c77463          	bgeu	a4,a2,1fb0 <memmove+0x104>
    1f6c:	00265713          	srli	a4,a2,0x2
    1f70:	00271893          	slli	a7,a4,0x2
    1f74:	fff70313          	addi	t1,a4,-1
    1f78:	011788b3          	add	a7,a5,a7
    1f7c:	00058693          	mv	a3,a1
    1f80:	00078713          	mv	a4,a5
    1f84:	0006a803          	lw	a6,0(a3)
    1f88:	00470713          	addi	a4,a4,4
    1f8c:	00468693          	addi	a3,a3,4
    1f90:	ff072e23          	sw	a6,-4(a4)
    1f94:	ff1718e3          	bne	a4,a7,1f84 <memmove+0xd8>
    1f98:	00231713          	slli	a4,t1,0x2
    1f9c:	00478793          	addi	a5,a5,4
    1fa0:	00458593          	addi	a1,a1,4
    1fa4:	00e787b3          	add	a5,a5,a4
    1fa8:	00e585b3          	add	a1,a1,a4
    1fac:	00367613          	andi	a2,a2,3
    1fb0:	f20608e3          	beqz	a2,1ee0 <memmove+0x34>
    1fb4:	fff60693          	addi	a3,a2,-1
    1fb8:	00168693          	addi	a3,a3,1
    1fbc:	00d586b3          	add	a3,a1,a3
    1fc0:	0005c703          	lbu	a4,0(a1)
    1fc4:	00158593          	addi	a1,a1,1
    1fc8:	00178793          	addi	a5,a5,1
    1fcc:	fee78fa3          	sb	a4,-1(a5)
    1fd0:	fed598e3          	bne	a1,a3,1fc0 <memmove+0x114>
    1fd4:	00008067          	ret
    1fd8:	2480006f          	j	2220 <memcpy>
    1fdc:	00300693          	li	a3,3
    1fe0:	00c507b3          	add	a5,a0,a2
    1fe4:	0cc6f263          	bgeu	a3,a2,20a8 <_stack_len+0xa8>
    1fe8:	00e7e6b3          	or	a3,a5,a4
    1fec:	0036f693          	andi	a3,a3,3
    1ff0:	00070813          	mv	a6,a4
    1ff4:	0e069c63          	bnez	a3,20ec <_stack_len+0xec>
    1ff8:	02300293          	li	t0,35
    1ffc:	06c2f263          	bgeu	t0,a2,2060 <_stack_len+0x60>
    2000:	fdc72f83          	lw	t6,-36(a4)
    2004:	fe072f03          	lw	t5,-32(a4)
    2008:	fe472e83          	lw	t4,-28(a4)
    200c:	fe872e03          	lw	t3,-24(a4)
    2010:	fec72303          	lw	t1,-20(a4)
    2014:	ff072883          	lw	a7,-16(a4)
    2018:	ff472803          	lw	a6,-12(a4)
    201c:	ff872583          	lw	a1,-8(a4)
    2020:	ffc72683          	lw	a3,-4(a4)
    2024:	fdc60613          	addi	a2,a2,-36
    2028:	fdf7ae23          	sw	t6,-36(a5)
    202c:	ffe7a023          	sw	t5,-32(a5)
    2030:	ffd7a223          	sw	t4,-28(a5)
    2034:	ffc7a423          	sw	t3,-24(a5)
    2038:	fe67a623          	sw	t1,-20(a5)
    203c:	ff17a823          	sw	a7,-16(a5)
    2040:	ff07aa23          	sw	a6,-12(a5)
    2044:	feb7ac23          	sw	a1,-8(a5)
    2048:	fed7ae23          	sw	a3,-4(a5)
    204c:	fdc70713          	addi	a4,a4,-36
    2050:	fdc78793          	addi	a5,a5,-36
    2054:	fac2e6e3          	bltu	t0,a2,2000 <_stack_len>
    2058:	00300693          	li	a3,3
    205c:	04c6f663          	bgeu	a3,a2,20a8 <_stack_len+0xa8>
    2060:	00265693          	srli	a3,a2,0x2
    2064:	00269893          	slli	a7,a3,0x2
    2068:	fff68313          	addi	t1,a3,-1
    206c:	411788b3          	sub	a7,a5,a7
    2070:	00070593          	mv	a1,a4
    2074:	00078693          	mv	a3,a5
    2078:	ffc5a803          	lw	a6,-4(a1)
    207c:	ffc68693          	addi	a3,a3,-4
    2080:	ffc58593          	addi	a1,a1,-4
    2084:	0106a023          	sw	a6,0(a3)
    2088:	ff1698e3          	bne	a3,a7,2078 <_stack_len+0x78>
    208c:	406006b3          	neg	a3,t1
    2090:	00269693          	slli	a3,a3,0x2
    2094:	ffc70713          	addi	a4,a4,-4
    2098:	ffc78793          	addi	a5,a5,-4
    209c:	00d70733          	add	a4,a4,a3
    20a0:	00d787b3          	add	a5,a5,a3
    20a4:	00367613          	andi	a2,a2,3
    20a8:	fff60693          	addi	a3,a2,-1
    20ac:	16060863          	beqz	a2,221c <_stack_len+0x21c>
    20b0:	fff6c613          	not	a2,a3
    20b4:	00c78633          	add	a2,a5,a2
    20b8:	fff74683          	lbu	a3,-1(a4)
    20bc:	fff78793          	addi	a5,a5,-1
    20c0:	fff70713          	addi	a4,a4,-1
    20c4:	00d78023          	sb	a3,0(a5)
    20c8:	fec798e3          	bne	a5,a2,20b8 <_stack_len+0xb8>
    20cc:	00008067          	ret
    20d0:	00050793          	mv	a5,a0
    20d4:	eddff06f          	j	1fb0 <memmove+0x104>
    20d8:	00800713          	li	a4,8
    20dc:	02c76263          	bltu	a4,a2,2100 <_stack_len+0x100>
    20e0:	fff60693          	addi	a3,a2,-1
    20e4:	00050793          	mv	a5,a0
    20e8:	ed1ff06f          	j	1fb8 <memmove+0x10c>
    20ec:	00800693          	li	a3,8
    20f0:	08c6ee63          	bltu	a3,a2,218c <_stack_len+0x18c>
    20f4:	fff60693          	addi	a3,a2,-1
    20f8:	fb9ff06f          	j	20b0 <_stack_len+0xb0>
    20fc:	00008067          	ret
    2100:	0035f713          	andi	a4,a1,3
    2104:	00050693          	mv	a3,a0
    2108:	02070063          	beqz	a4,2128 <_stack_len+0x128>
    210c:	0005c603          	lbu	a2,0(a1)
    2110:	00158593          	addi	a1,a1,1
    2114:	0035f713          	andi	a4,a1,3
    2118:	00c68023          	sb	a2,0(a3)
    211c:	00168693          	addi	a3,a3,1
    2120:	fe0716e3          	bnez	a4,210c <_stack_len+0x10c>
    2124:	40d78633          	sub	a2,a5,a3
    2128:	ffc60713          	addi	a4,a2,-4
    212c:	00275f13          	srli	t5,a4,0x2
    2130:	001f0e93          	addi	t4,t5,1
    2134:	002e9e93          	slli	t4,t4,0x2
    2138:	01d68eb3          	add	t4,a3,t4
    213c:	00058813          	mv	a6,a1
    2140:	00068793          	mv	a5,a3
    2144:	00082703          	lw	a4,0(a6)
    2148:	00478793          	addi	a5,a5,4
    214c:	00480813          	addi	a6,a6,4
    2150:	00875e13          	srli	t3,a4,0x8
    2154:	01075313          	srli	t1,a4,0x10
    2158:	01875893          	srli	a7,a4,0x18
    215c:	fee78e23          	sb	a4,-4(a5)
    2160:	ffc78ea3          	sb	t3,-3(a5)
    2164:	fe678f23          	sb	t1,-2(a5)
    2168:	ff178fa3          	sb	a7,-1(a5)
    216c:	fdd79ce3          	bne	a5,t4,2144 <_stack_len+0x144>
    2170:	002f1713          	slli	a4,t5,0x2
    2174:	00458593          	addi	a1,a1,4
    2178:	00468793          	addi	a5,a3,4
    217c:	00e585b3          	add	a1,a1,a4
    2180:	00e787b3          	add	a5,a5,a4
    2184:	00367613          	andi	a2,a2,3
    2188:	e29ff06f          	j	1fb0 <memmove+0x104>
    218c:	00377693          	andi	a3,a4,3
    2190:	02068263          	beqz	a3,21b4 <_stack_len+0x1b4>
    2194:	fff74583          	lbu	a1,-1(a4)
    2198:	fff70713          	addi	a4,a4,-1
    219c:	00377693          	andi	a3,a4,3
    21a0:	feb78fa3          	sb	a1,-1(a5)
    21a4:	fff78793          	addi	a5,a5,-1
    21a8:	fe0696e3          	bnez	a3,2194 <_stack_len+0x194>
    21ac:	00e60633          	add	a2,a2,a4
    21b0:	41060633          	sub	a2,a2,a6
    21b4:	ffc60f13          	addi	t5,a2,-4
    21b8:	002f5f13          	srli	t5,t5,0x2
    21bc:	ffff4e93          	not	t4,t5
    21c0:	002e9e93          	slli	t4,t4,0x2
    21c4:	01d78eb3          	add	t4,a5,t4
    21c8:	00070813          	mv	a6,a4
    21cc:	00078693          	mv	a3,a5
    21d0:	ffc82583          	lw	a1,-4(a6)
    21d4:	ffc68693          	addi	a3,a3,-4
    21d8:	ffc80813          	addi	a6,a6,-4
    21dc:	0085de13          	srli	t3,a1,0x8
    21e0:	0105d313          	srli	t1,a1,0x10
    21e4:	0185d893          	srli	a7,a1,0x18
    21e8:	01c680a3          	sb	t3,1(a3)
    21ec:	00668123          	sb	t1,2(a3)
    21f0:	011681a3          	sb	a7,3(a3)
    21f4:	00b68023          	sb	a1,0(a3)
    21f8:	fdd69ce3          	bne	a3,t4,21d0 <_stack_len+0x1d0>
    21fc:	41e006b3          	neg	a3,t5
    2200:	00269693          	slli	a3,a3,0x2
    2204:	ffc78793          	addi	a5,a5,-4
    2208:	ffc70713          	addi	a4,a4,-4
    220c:	00d787b3          	add	a5,a5,a3
    2210:	00d70733          	add	a4,a4,a3
    2214:	00367613          	andi	a2,a2,3
    2218:	e91ff06f          	j	20a8 <_stack_len+0xa8>
    221c:	00008067          	ret

Disassembly of section .text.memcpy:

00002220 <memcpy>:
    2220:	00300793          	li	a5,3
    2224:	00c50733          	add	a4,a0,a2
    2228:	08c7f863          	bgeu	a5,a2,22b8 <memcpy+0x98>
    222c:	00a5c7b3          	xor	a5,a1,a0
    2230:	0037f793          	andi	a5,a5,3
    2234:	0c079463          	bnez	a5,22fc <memcpy+0xdc>
    2238:	00357693          	andi	a3,a0,3
    223c:	00050793          	mv	a5,a0
    2240:	16069a63          	bnez	a3,23b4 <memcpy+0x194>
    2244:	ffc77613          	andi	a2,a4,-4
    2248:	40f60833          	sub	a6,a2,a5
    224c:	02000693          	li	a3,32
    2250:	0106c663          	blt	a3,a6,225c <memcpy+0x3c>
    2254:	08e7e463          	bltu	a5,a4,22dc <memcpy+0xbc>
    2258:	00008067          	ret
    225c:	0005a803          	lw	a6,0(a1)
    2260:	0045a283          	lw	t0,4(a1)
    2264:	0085af83          	lw	t6,8(a1)
    2268:	00c5af03          	lw	t5,12(a1)
    226c:	0105ae83          	lw	t4,16(a1)
    2270:	0145ae03          	lw	t3,20(a1)
    2274:	0185a303          	lw	t1,24(a1)
    2278:	01c5a883          	lw	a7,28(a1)
    227c:	0107a023          	sw	a6,0(a5)
    2280:	0205a803          	lw	a6,32(a1)
    2284:	02478793          	addi	a5,a5,36
    2288:	fe57a023          	sw	t0,-32(a5)
    228c:	ff07ae23          	sw	a6,-4(a5)
    2290:	fff7a223          	sw	t6,-28(a5)
    2294:	40f60833          	sub	a6,a2,a5
    2298:	ffe7a423          	sw	t5,-24(a5)
    229c:	ffd7a623          	sw	t4,-20(a5)
    22a0:	ffc7a823          	sw	t3,-16(a5)
    22a4:	fe67aa23          	sw	t1,-12(a5)
    22a8:	ff17ac23          	sw	a7,-8(a5)
    22ac:	02458593          	addi	a1,a1,36
    22b0:	fb06c6e3          	blt	a3,a6,225c <memcpy+0x3c>
    22b4:	fa1ff06f          	j	2254 <memcpy+0x34>
    22b8:	fae570e3          	bgeu	a0,a4,2258 <memcpy+0x38>
    22bc:	00c58633          	add	a2,a1,a2
    22c0:	00050793          	mv	a5,a0
    22c4:	0005c703          	lbu	a4,0(a1)
    22c8:	00158593          	addi	a1,a1,1
    22cc:	00178793          	addi	a5,a5,1
    22d0:	fee78fa3          	sb	a4,-1(a5)
    22d4:	feb618e3          	bne	a2,a1,22c4 <memcpy+0xa4>
    22d8:	00008067          	ret
    22dc:	40f70733          	sub	a4,a4,a5
    22e0:	00e58733          	add	a4,a1,a4
    22e4:	0005c683          	lbu	a3,0(a1)
    22e8:	00158593          	addi	a1,a1,1
    22ec:	00178793          	addi	a5,a5,1
    22f0:	fed78fa3          	sb	a3,-1(a5)
    22f4:	fee598e3          	bne	a1,a4,22e4 <memcpy+0xc4>
    22f8:	00008067          	ret
    22fc:	40a008b3          	neg	a7,a0
    2300:	0038f893          	andi	a7,a7,3
    2304:	01150eb3          	add	t4,a0,a7
    2308:	00050793          	mv	a5,a0
    230c:	011588b3          	add	a7,a1,a7
    2310:	01d57c63          	bgeu	a0,t4,2328 <memcpy+0x108>
    2314:	0005c683          	lbu	a3,0(a1)
    2318:	00158593          	addi	a1,a1,1
    231c:	00178793          	addi	a5,a5,1
    2320:	fed78fa3          	sb	a3,-1(a5)
    2324:	ff1598e3          	bne	a1,a7,2314 <memcpy+0xf4>
    2328:	ffc77313          	andi	t1,a4,-4
    232c:	00088693          	mv	a3,a7
    2330:	066ef063          	bgeu	t4,t1,2390 <memcpy+0x170>
    2334:	00088793          	mv	a5,a7
    2338:	000e8813          	mv	a6,t4
    233c:	0017c583          	lbu	a1,1(a5)
    2340:	0007ce03          	lbu	t3,0(a5)
    2344:	0027c603          	lbu	a2,2(a5)
    2348:	0037c683          	lbu	a3,3(a5)
    234c:	00859593          	slli	a1,a1,0x8
    2350:	01c5e5b3          	or	a1,a1,t3
    2354:	01061613          	slli	a2,a2,0x10
    2358:	00b66633          	or	a2,a2,a1
    235c:	01869693          	slli	a3,a3,0x18
    2360:	00480813          	addi	a6,a6,4
    2364:	00c6e6b3          	or	a3,a3,a2
    2368:	fed82e23          	sw	a3,-4(a6)
    236c:	00478793          	addi	a5,a5,4
    2370:	fc6866e3          	bltu	a6,t1,233c <memcpy+0x11c>
    2374:	fff30793          	addi	a5,t1,-1
    2378:	41d787b3          	sub	a5,a5,t4
    237c:	ffc7f793          	andi	a5,a5,-4
    2380:	00488893          	addi	a7,a7,4
    2384:	004e8e93          	addi	t4,t4,4
    2388:	00f886b3          	add	a3,a7,a5
    238c:	00fe8eb3          	add	t4,t4,a5
    2390:	eceef4e3          	bgeu	t4,a4,2258 <memcpy+0x38>
    2394:	41d70733          	sub	a4,a4,t4
    2398:	00e68733          	add	a4,a3,a4
    239c:	0006c783          	lbu	a5,0(a3)
    23a0:	00168693          	addi	a3,a3,1
    23a4:	001e8e93          	addi	t4,t4,1
    23a8:	fefe8fa3          	sb	a5,-1(t4)
    23ac:	fed718e3          	bne	a4,a3,239c <memcpy+0x17c>
    23b0:	00008067          	ret
    23b4:	00400813          	li	a6,4
    23b8:	40d80833          	sub	a6,a6,a3
    23bc:	010507b3          	add	a5,a0,a6
    23c0:	00050693          	mv	a3,a0
    23c4:	01058833          	add	a6,a1,a6
    23c8:	00f57c63          	bgeu	a0,a5,23e0 <memcpy+0x1c0>
    23cc:	0005c603          	lbu	a2,0(a1)
    23d0:	00158593          	addi	a1,a1,1
    23d4:	00168693          	addi	a3,a3,1
    23d8:	fec68fa3          	sb	a2,-1(a3)
    23dc:	ff0598e3          	bne	a1,a6,23cc <memcpy+0x1ac>
    23e0:	00080593          	mv	a1,a6
    23e4:	e61ff06f          	j	2244 <memcpy+0x24>

Disassembly of section .text.strlen:

000023e8 <strlen>:
    23e8:	00357793          	andi	a5,a0,3
    23ec:	00050713          	mv	a4,a0
    23f0:	04079c63          	bnez	a5,2448 <strlen+0x60>
    23f4:	7f7f86b7          	lui	a3,0x7f7f8
    23f8:	f7f68693          	addi	a3,a3,-129 # 7f7f7f7f <_stack_start+0x7f7edf7f>
    23fc:	fff00593          	li	a1,-1
    2400:	00072603          	lw	a2,0(a4)
    2404:	00470713          	addi	a4,a4,4
    2408:	00d677b3          	and	a5,a2,a3
    240c:	00d787b3          	add	a5,a5,a3
    2410:	00c7e7b3          	or	a5,a5,a2
    2414:	00d7e7b3          	or	a5,a5,a3
    2418:	feb784e3          	beq	a5,a1,2400 <strlen+0x18>
    241c:	ffc74683          	lbu	a3,-4(a4)
    2420:	40a707b3          	sub	a5,a4,a0
    2424:	04068463          	beqz	a3,246c <strlen+0x84>
    2428:	ffd74683          	lbu	a3,-3(a4)
    242c:	02068c63          	beqz	a3,2464 <strlen+0x7c>
    2430:	ffe74503          	lbu	a0,-2(a4)
    2434:	00a03533          	snez	a0,a0
    2438:	00f50533          	add	a0,a0,a5
    243c:	ffe50513          	addi	a0,a0,-2
    2440:	00008067          	ret
    2444:	fa0688e3          	beqz	a3,23f4 <strlen+0xc>
    2448:	00074783          	lbu	a5,0(a4)
    244c:	00170713          	addi	a4,a4,1
    2450:	00377693          	andi	a3,a4,3
    2454:	fe0798e3          	bnez	a5,2444 <strlen+0x5c>
    2458:	40a70733          	sub	a4,a4,a0
    245c:	fff70513          	addi	a0,a4,-1
    2460:	00008067          	ret
    2464:	ffd78513          	addi	a0,a5,-3
    2468:	00008067          	ret
    246c:	ffc78513          	addi	a0,a5,-4
    2470:	00008067          	ret

Disassembly of section .text.strcpy:

00002474 <strcpy>:
    2474:	0005a703          	lw	a4,0(a1)
    2478:	7f7f86b7          	lui	a3,0x7f7f8
    247c:	f7f68693          	addi	a3,a3,-129 # 7f7f7f7f <_stack_start+0x7f7edf7f>
    2480:	00d77833          	and	a6,a4,a3
    2484:	00d80833          	add	a6,a6,a3
    2488:	00e86833          	or	a6,a6,a4
    248c:	00d86833          	or	a6,a6,a3
    2490:	fff00793          	li	a5,-1
    2494:	00050613          	mv	a2,a0
    2498:	02f81463          	bne	a6,a5,24c0 <strcpy+0x4c>
    249c:	00458593          	addi	a1,a1,4
    24a0:	00e62023          	sw	a4,0(a2)
    24a4:	0005a703          	lw	a4,0(a1)
    24a8:	00460613          	addi	a2,a2,4
    24ac:	00d777b3          	and	a5,a4,a3
    24b0:	00d787b3          	add	a5,a5,a3
    24b4:	00e7e7b3          	or	a5,a5,a4
    24b8:	00d7e7b3          	or	a5,a5,a3
    24bc:	ff0780e3          	beq	a5,a6,249c <strcpy+0x28>
    24c0:	0005c783          	lbu	a5,0(a1)
    24c4:	00f60023          	sb	a5,0(a2)
    24c8:	02078063          	beqz	a5,24e8 <strcpy+0x74>
    24cc:	0015c783          	lbu	a5,1(a1)
    24d0:	00f600a3          	sb	a5,1(a2)
    24d4:	00078a63          	beqz	a5,24e8 <strcpy+0x74>
    24d8:	0025c783          	lbu	a5,2(a1)
    24dc:	00f60123          	sb	a5,2(a2)
    24e0:	00078463          	beqz	a5,24e8 <strcpy+0x74>
    24e4:	000601a3          	sb	zero,3(a2)
    24e8:	00008067          	ret

einkfirm.elf:     file format elf32-littleriscv


Disassembly of section .rodata:

00004000 <FONT-0x34>:
    4000:	0000007c          	.word	0x0000007c
    4004:	33323130          	.word	0x33323130
    4008:	37363534          	.word	0x37363534
    400c:	42413938          	.word	0x42413938
    4010:	46454443          	.word	0x46454443
    4014:	4a494847          	.word	0x4a494847
    4018:	4e4d4c4b          	.word	0x4e4d4c4b
    401c:	5251504f          	.word	0x5251504f
    4020:	56555453          	.word	0x56555453
    4024:	5a595857          	.word	0x5a595857
    4028:	2a252420          	.word	0x2a252420
    402c:	2f2e2d2b          	.word	0x2f2e2d2b
    4030:	0000003a          	.word	0x0000003a

00004034 <FONT>:
	...
    4520:	00010000 01010000 00010101 00000001     ................
    4530:	00010101 00010000 01010101 00000001     ................
    4540:	01000001 00000001 00000101 00000001     ................
    4550:	00000001 00000001 00000001 01000001     ................
    4560:	00000001 00000101 00000000 00000000     ................
	...
    464c:	00010000 01000000 01000000 00000000     ................
	...
    4668:	01010000 00010101 00000000 00000000     ................
	...
    4698:	00000100 00010000 00000000 00000100     ................
    46a8:	00000100 00000100 00000100 00000100     ................
	...
    46c4:	01010100 00000100 00010100 01010100     ................
    46d4:	01000100 00000101 00000101 01000100     ................
    46e4:	00000101 00000100 00010100 01000000     ................
    46f4:	00000000 00000001 00000100 00010000     ................
    4704:	01010000 01000001 01000101 01000000     ................
    4714:	00000000 00000001 00000001 00000001     ................
    4724:	00000001 01010101 01010101 00000001     ................
    4734:	00010000 01000000 01010100 00000000     ................
    4744:	00000100 01010000 00010101 01000000     ................
    4754:	01000000 01000001 01000100 00010000     ................
    4764:	01010101 00000001 00000001 01000100     ................
    4774:	01010101 00000001 00000100 01010000     ................
    4784:	00000101 01000000 00000000 01010101     ................
    4794:	01000001 01000101 00000000 00000001     ................
    47a4:	01010100 00010001 01010000 01000000     ................
    47b4:	01010100 01010100 00000101 00010000     ................
    47c4:	00010000 00010000 00010000 01000000     ................
    47d4:	00000000 00000001 01010100 00000100     ................
    47e4:	00010100 00010000 00010101 00000001     ................
    47f4:	00000101 01000100 00000101 00010101     ................
    4804:	00000001 00000101 01000100 00010101     ................
    4814:	01000000 00000000 01010001 00000001     ................
	...
    4890:	00010000 01000000 00000000 00000000     ................
    48a0:	00000100 00010000 00000000 00000000     ................
	...
    4918:	00010101 00000001 00000101 01010100     ................
    4928:	01010101 01000000 00000001 00000101     ................
    4938:	01010100 01000101 01000000 00000001     ................
    4948:	01010101 00010001 01010000 01000000     ................
    4958:	01010101 01010000 00010001 01010000     ................
    4968:	00000000 00000001 00000100 00010000     ................
    4978:	00010000 00010101 01010101 00000100     ................
    4988:	00010100 01010000 01000000 00000001     ................
    4998:	00000101 01010100 01000101 01010101     ................
    49a8:	00000001 00000100 01010000 01000101     ................
    49b8:	00000000 00000001 01010100 01010101     ................
    49c8:	01010101 00000000 00000001 01010100     ................
    49d8:	00010001 01000000 00000000 00000001     ................
    49e8:	01010000 00010001 01010000 00000000     ................
    49f8:	01010001 00000101 00010100 00010000     ................
    4a08:	00010101 00000001 00000101 00010100     ................
    4a18:	01010000 01010101 00000001 00000101     ................
    4a28:	00010100 00010000 00010101 00010000     ................
    4a38:	01000000 00000000 00000001 00000100     ................
    4a48:	00010000 01010000 00000001 00010101     ................
    4a58:	00010000 01000000 00000000 00010001     ................
    4a68:	01000100 00010000 00010100 00000100     ................
    4a78:	00010100 01000100 00000100 00000101     ................
    4a88:	01000100 00010000 01000100 01000000     ................
    4a98:	00000001 00000100 00010000 01000000     ................
    4aa8:	00000000 00000001 00000100 01010000     ................
    4ab8:	01010101 01000000 01000101 01000101     ................
    4ac8:	00010100 01010001 01000000 00000001     ................
    4ad8:	00000101 00010100 01010000 01000001     ................
    4ae8:	00010001 00000101 00010101 01010000     ................
    4af8:	01000000 00000001 01010001 00010001     ................
    4b08:	01010000 01000000 00000001 00000101     ................
    4b18:	00010100 00010000 00010101 01010101     ................
    4b28:	00000100 00010100 01010000 00010101     ................
    4b38:	00000001 00000100 00010000 00000000     ................
    4b48:	00010101 00000001 00000101 00010100     ................
    4b58:	01010000 01000100 01000001 01010000     ................
    4b68:	01010100 01000101 01000000 00000001     ................
    4b78:	01010101 00010001 01000001 00010000     ................
    4b88:	00000001 01010001 00010101 01000000     ................
    4b98:	00000000 01010100 00000000 00000100     ................
    4ba8:	01010000 00010101 01010101 01000001     ................
    4bb8:	00000000 00000001 00000100 00010000     ................
    4bc8:	01000000 00000000 01000001 01000000     ................
    4bd8:	00000001 00000101 00010100 01010000     ................
    4be8:	01000000 00000001 01010001 00010001     ................
    4bf8:	01010000 01000000 00000001 00000101     ................
    4c08:	00010100 00010000 00010001 00010000     ................
    4c18:	00000100 00010100 01010000 01000000     ................
    4c28:	00010001 01000101 00010100 00010001     ................
    4c38:	00010001 00000001 00000101 01000100     ................
    4c48:	00000100 00000100 01000100 00000100     ................
    4c58:	00010100 01010000 01000000 00000001     ................
    4c68:	00010001 00000001 00000001 00000100     ................
    4c78:	00010000 01000000 01010000 00010101     ................
    4c88:	01000000 01000000 01000000 01000000     ................
    4c98:	01000000 00000000 01010101 00000001     ................
	...
    4d80:	01010000 00000001 00010000 01010101     ................
    4d90:	00000001 01010001 00010101 01000000     ................
    4da0:	00000000 01010101 00000100 00010100     ................
    4db0:	01010000 01000000 01010101 00000000     ................
	...
    4dc8:	00010101 00000001 00000101 00010000     ................
    4dd8:	00010000 00010101 00000000 00000001     ................
    4de8:	01000100 01010101 01000000 00000001     ................
    4df8:	00000101 01000100 00010101 00000000     ................
    4e08:	00000000 01010000 00010001 01010000     ................
    4e18:	01010101 00000001 01010000 00000001     ................
    4e28:	00010101 00000001 01010101 00010000     ................
    4e38:	01000000 00000000 00000001 00000100     ................
    4e48:	00000000 01000000 01010101 01000000     ................
    4e58:	00000001 01010001 00000101 00010000     ................
    4e68:	00010101 00000001 00000100 01010000     ................
    4e78:	01000101 01000000 00000001 00000101     ................
    4e88:	00010100 00010000 00000100 00000000     ................
    4e98:	01010000 00000000 00000001 00000100     ................
    4ea8:	00010000 01010000 00000001 00000100     ................
    4eb8:	00000000 01000000 00000000 00000001     ................
    4ec8:	01000100 00010000 00010100 00000100     ................
    4ed8:	00010000 01000000 00010000 00010001     ................
    4ee8:	00010100 00010000 01000001 00010000     ................
    4ef8:	00010100 01000000 00000000 00000001     ................
    4f08:	00000100 00010000 01000000 01000000     ................
    4f18:	00000101 00000000 00000000 00010100     ................
    4f28:	00010001 01010001 01000100 00000001     ................
    4f38:	00000101 00000100 00000000 00000000     ................
    4f48:	01010101 00000100 00010100 01010000     ................
    4f58:	01000000 00000001 00000001 00000000     ................
    4f68:	00000000 00010101 00000001 00000101     ................
    4f78:	00010100 00010000 00010101 00000000     ................
    4f88:	01010100 00010001 01010000 01000000     ................
    4f98:	01010101 00000100 00010000 00000000     ................
    4fa8:	00000000 01010100 00000101 00010100     ................
    4fb8:	00010000 01010101 00000000 00000001     ................
    4fc8:	00000100 00000000 00000000 01010001     ................
    4fd8:	00010100 00010100 01000000 00000000     ................
    4fe8:	00000001 00000000 00000000 00000000     ................
    4ff8:	01010101 00000001 01010000 00000001     ................
    5008:	01010000 00010101 00000100 00010000     ................
    5018:	01010000 00000001 00000001 00000100     ................
    5028:	00010000 00000100 00000101 00000000     ................
    5038:	00000000 00000100 00010100 01010000     ................
    5048:	01000000 00000001 01010001 00000101     ................
	...
    5060:	00000001 00000101 00010100 00010000     ................
    5070:	00010001 00010000 00000000 00000000     ................
    5080:	01000000 01000000 00000001 01000101     ................
    5090:	00010100 00010001 00010001 00000000     ................
    50a0:	00000000 00010000 00010000 00010001     ................
    50b0:	00010000 00010000 00010001 00010000     ................
    50c0:	00000000 00000001 00000101 00010100     ................
    50d0:	00010000 01010101 00000000 01010001     ................
    50e0:	00000001 00000000 00000000 01010101     ................
    50f0:	00000001 00000001 00000001 00000001     ................
    5100:	01010101 00000001 00000000 00000000     ................
	...

00006334 <eccDivisorsMedium>:
    6334:	6f9fc2d8 715f5ec7 0000c19d              ...o.^_q....

00006340 <eccDivisorsHigh>:
    6340:	78534277 53c51677 868f29f9 637d3555     wBSxw..S.)..U5}c
    6350:	0000004f                                O...

00006354 <eccDivisorsQuartile>:
    6354:	11e34989 0d3411b1 84532b2e               .I....4..+S.x
