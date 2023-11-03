
my_test_float.riscv:     file format elf64-littleriscv


Disassembly of section .text:

00000000000100e8 <exit>:
   100e8:	ff010113          	add	sp,sp,-16
   100ec:	00000593          	li	a1,0
   100f0:	00813023          	sd	s0,0(sp)
   100f4:	00113423          	sd	ra,8(sp)
   100f8:	00050413          	mv	s0,a0
   100fc:	3d0000ef          	jal	104cc <__call_exitprocs>
   10100:	f481b503          	ld	a0,-184(gp) # 11ea8 <_global_impure_ptr>
   10104:	05853783          	ld	a5,88(a0)
   10108:	00078463          	beqz	a5,10110 <exit+0x28>
   1010c:	000780e7          	jalr	a5
   10110:	00040513          	mv	a0,s0
   10114:	5f8000ef          	jal	1070c <_exit>

0000000000010118 <register_fini>:
   10118:	00000793          	li	a5,0
   1011c:	00078863          	beqz	a5,1012c <register_fini+0x14>
   10120:	00010537          	lui	a0,0x10
   10124:	5f450513          	add	a0,a0,1524 # 105f4 <__libc_fini_array>
   10128:	5280006f          	j	10650 <atexit>
   1012c:	00008067          	ret

0000000000010130 <_start>:
   10130:	00002197          	auipc	gp,0x2
   10134:	e3018193          	add	gp,gp,-464 # 11f60 <__global_pointer$>
   10138:	f6018513          	add	a0,gp,-160 # 11ec0 <completed.1>
   1013c:	f9818613          	add	a2,gp,-104 # 11ef8 <__BSS_END__>
   10140:	40a60633          	sub	a2,a2,a0
   10144:	00000593          	li	a1,0
   10148:	2a8000ef          	jal	103f0 <memset>
   1014c:	00000517          	auipc	a0,0x0
   10150:	50450513          	add	a0,a0,1284 # 10650 <atexit>
   10154:	00050863          	beqz	a0,10164 <_start+0x34>
   10158:	00000517          	auipc	a0,0x0
   1015c:	49c50513          	add	a0,a0,1180 # 105f4 <__libc_fini_array>
   10160:	4f0000ef          	jal	10650 <atexit>
   10164:	1f0000ef          	jal	10354 <__libc_init_array>
   10168:	00012503          	lw	a0,0(sp)
   1016c:	00810593          	add	a1,sp,8
   10170:	00000613          	li	a2,0
   10174:	06c000ef          	jal	101e0 <main>
   10178:	f71ff06f          	j	100e8 <exit>

000000000001017c <__do_global_dtors_aux>:
   1017c:	ff010113          	add	sp,sp,-16
   10180:	00813023          	sd	s0,0(sp)
   10184:	f601c783          	lbu	a5,-160(gp) # 11ec0 <completed.1>
   10188:	00113423          	sd	ra,8(sp)
   1018c:	02079263          	bnez	a5,101b0 <__do_global_dtors_aux+0x34>
   10190:	00000793          	li	a5,0
   10194:	00078a63          	beqz	a5,101a8 <__do_global_dtors_aux+0x2c>
   10198:	00011537          	lui	a0,0x11
   1019c:	74450513          	add	a0,a0,1860 # 11744 <__EH_FRAME_BEGIN__>
   101a0:	00000097          	auipc	ra,0x0
   101a4:	000000e7          	jalr	zero # 0 <exit-0x100e8>
   101a8:	00100793          	li	a5,1
   101ac:	f6f18023          	sb	a5,-160(gp) # 11ec0 <completed.1>
   101b0:	00813083          	ld	ra,8(sp)
   101b4:	00013403          	ld	s0,0(sp)
   101b8:	01010113          	add	sp,sp,16
   101bc:	00008067          	ret

00000000000101c0 <frame_dummy>:
   101c0:	00000793          	li	a5,0
   101c4:	00078c63          	beqz	a5,101dc <frame_dummy+0x1c>
   101c8:	00011537          	lui	a0,0x11
   101cc:	f6818593          	add	a1,gp,-152 # 11ec8 <object.0>
   101d0:	74450513          	add	a0,a0,1860 # 11744 <__EH_FRAME_BEGIN__>
   101d4:	00000317          	auipc	t1,0x0
   101d8:	00000067          	jr	zero # 0 <exit-0x100e8>
   101dc:	00008067          	ret

00000000000101e0 <main>:
   101e0:	fe010113          	add	sp,sp,-32
   101e4:	00113c23          	sd	ra,24(sp)
   101e8:	00813823          	sd	s0,16(sp)
   101ec:	02010413          	add	s0,sp,32
   101f0:	00200793          	li	a5,2
   101f4:	fef42623          	sw	a5,-20(s0)
   101f8:	fec42783          	lw	a5,-20(s0)
   101fc:	d007f7d3          	fcvt.s.w	fa5,a5
   10200:	20f78553          	fmv.s	fa0,fa5
   10204:	128000ef          	jal	1032c <print_f>
   10208:	00a00513          	li	a0,10
   1020c:	070000ef          	jal	1027c <print_c>
   10210:	00000793          	li	a5,0
   10214:	00078513          	mv	a0,a5
   10218:	01813083          	ld	ra,24(sp)
   1021c:	01013403          	ld	s0,16(sp)
   10220:	02010113          	add	sp,sp,32
   10224:	00008067          	ret

0000000000010228 <print_d>:
   10228:	fe010113          	add	sp,sp,-32
   1022c:	00813c23          	sd	s0,24(sp)
   10230:	02010413          	add	s0,sp,32
   10234:	00050793          	mv	a5,a0
   10238:	fef42623          	sw	a5,-20(s0)
   1023c:	00200893          	li	a7,2
   10240:	00000073          	ecall
   10244:	00000013          	nop
   10248:	01813403          	ld	s0,24(sp)
   1024c:	02010113          	add	sp,sp,32
   10250:	00008067          	ret

0000000000010254 <print_s>:
   10254:	fe010113          	add	sp,sp,-32
   10258:	00813c23          	sd	s0,24(sp)
   1025c:	02010413          	add	s0,sp,32
   10260:	fea43423          	sd	a0,-24(s0)
   10264:	00000893          	li	a7,0
   10268:	00000073          	ecall
   1026c:	00000013          	nop
   10270:	01813403          	ld	s0,24(sp)
   10274:	02010113          	add	sp,sp,32
   10278:	00008067          	ret

000000000001027c <print_c>:
   1027c:	fe010113          	add	sp,sp,-32
   10280:	00813c23          	sd	s0,24(sp)
   10284:	02010413          	add	s0,sp,32
   10288:	00050793          	mv	a5,a0
   1028c:	fef407a3          	sb	a5,-17(s0)
   10290:	00100893          	li	a7,1
   10294:	00000073          	ecall
   10298:	00000013          	nop
   1029c:	01813403          	ld	s0,24(sp)
   102a0:	02010113          	add	sp,sp,32
   102a4:	00008067          	ret

00000000000102a8 <exit_proc>:
   102a8:	ff010113          	add	sp,sp,-16
   102ac:	00813423          	sd	s0,8(sp)
   102b0:	01010413          	add	s0,sp,16
   102b4:	00300893          	li	a7,3
   102b8:	00000073          	ecall
   102bc:	00000013          	nop
   102c0:	00813403          	ld	s0,8(sp)
   102c4:	01010113          	add	sp,sp,16
   102c8:	00008067          	ret

00000000000102cc <read_char>:
   102cc:	fe010113          	add	sp,sp,-32
   102d0:	00813c23          	sd	s0,24(sp)
   102d4:	02010413          	add	s0,sp,32
   102d8:	00400893          	li	a7,4
   102dc:	00000073          	ecall
   102e0:	00050793          	mv	a5,a0
   102e4:	fef407a3          	sb	a5,-17(s0)
   102e8:	fef44783          	lbu	a5,-17(s0)
   102ec:	00078513          	mv	a0,a5
   102f0:	01813403          	ld	s0,24(sp)
   102f4:	02010113          	add	sp,sp,32
   102f8:	00008067          	ret

00000000000102fc <read_num>:
   102fc:	fe010113          	add	sp,sp,-32
   10300:	00813c23          	sd	s0,24(sp)
   10304:	02010413          	add	s0,sp,32
   10308:	00500893          	li	a7,5
   1030c:	00000073          	ecall
   10310:	00050793          	mv	a5,a0
   10314:	fef43423          	sd	a5,-24(s0)
   10318:	fe843783          	ld	a5,-24(s0)
   1031c:	00078513          	mv	a0,a5
   10320:	01813403          	ld	s0,24(sp)
   10324:	02010113          	add	sp,sp,32
   10328:	00008067          	ret

000000000001032c <print_f>:
   1032c:	fe010113          	add	sp,sp,-32
   10330:	00813c23          	sd	s0,24(sp)
   10334:	02010413          	add	s0,sp,32
   10338:	fea42627          	fsw	fa0,-20(s0)
   1033c:	00600893          	li	a7,6
   10340:	00000073          	ecall
   10344:	00000013          	nop
   10348:	01813403          	ld	s0,24(sp)
   1034c:	02010113          	add	sp,sp,32
   10350:	00008067          	ret

0000000000010354 <__libc_init_array>:
   10354:	fe010113          	add	sp,sp,-32
   10358:	00813823          	sd	s0,16(sp)
   1035c:	000117b7          	lui	a5,0x11
   10360:	00011437          	lui	s0,0x11
   10364:	01213023          	sd	s2,0(sp)
   10368:	74878793          	add	a5,a5,1864 # 11748 <__init_array_start>
   1036c:	74840713          	add	a4,s0,1864 # 11748 <__init_array_start>
   10370:	00113c23          	sd	ra,24(sp)
   10374:	00913423          	sd	s1,8(sp)
   10378:	40e78933          	sub	s2,a5,a4
   1037c:	02e78263          	beq	a5,a4,103a0 <__libc_init_array+0x4c>
   10380:	40395913          	sra	s2,s2,0x3
   10384:	74840413          	add	s0,s0,1864
   10388:	00000493          	li	s1,0
   1038c:	00043783          	ld	a5,0(s0)
   10390:	00148493          	add	s1,s1,1
   10394:	00840413          	add	s0,s0,8
   10398:	000780e7          	jalr	a5
   1039c:	ff24e8e3          	bltu	s1,s2,1038c <__libc_init_array+0x38>
   103a0:	00011437          	lui	s0,0x11
   103a4:	000117b7          	lui	a5,0x11
   103a8:	75878793          	add	a5,a5,1880 # 11758 <__do_global_dtors_aux_fini_array_entry>
   103ac:	74840713          	add	a4,s0,1864 # 11748 <__init_array_start>
   103b0:	40e78933          	sub	s2,a5,a4
   103b4:	40395913          	sra	s2,s2,0x3
   103b8:	02e78063          	beq	a5,a4,103d8 <__libc_init_array+0x84>
   103bc:	74840413          	add	s0,s0,1864
   103c0:	00000493          	li	s1,0
   103c4:	00043783          	ld	a5,0(s0)
   103c8:	00148493          	add	s1,s1,1
   103cc:	00840413          	add	s0,s0,8
   103d0:	000780e7          	jalr	a5
   103d4:	ff24e8e3          	bltu	s1,s2,103c4 <__libc_init_array+0x70>
   103d8:	01813083          	ld	ra,24(sp)
   103dc:	01013403          	ld	s0,16(sp)
   103e0:	00813483          	ld	s1,8(sp)
   103e4:	00013903          	ld	s2,0(sp)
   103e8:	02010113          	add	sp,sp,32
   103ec:	00008067          	ret

00000000000103f0 <memset>:
   103f0:	00f00313          	li	t1,15
   103f4:	00050713          	mv	a4,a0
   103f8:	02c37a63          	bgeu	t1,a2,1042c <memset+0x3c>
   103fc:	00f77793          	and	a5,a4,15
   10400:	0a079063          	bnez	a5,104a0 <memset+0xb0>
   10404:	06059e63          	bnez	a1,10480 <memset+0x90>
   10408:	ff067693          	and	a3,a2,-16
   1040c:	00f67613          	and	a2,a2,15
   10410:	00e686b3          	add	a3,a3,a4
   10414:	00b73023          	sd	a1,0(a4)
   10418:	00b73423          	sd	a1,8(a4)
   1041c:	01070713          	add	a4,a4,16
   10420:	fed76ae3          	bltu	a4,a3,10414 <memset+0x24>
   10424:	00061463          	bnez	a2,1042c <memset+0x3c>
   10428:	00008067          	ret
   1042c:	40c306b3          	sub	a3,t1,a2
   10430:	00269693          	sll	a3,a3,0x2
   10434:	00000297          	auipc	t0,0x0
   10438:	005686b3          	add	a3,a3,t0
   1043c:	00c68067          	jr	12(a3)
   10440:	00b70723          	sb	a1,14(a4)
   10444:	00b706a3          	sb	a1,13(a4)
   10448:	00b70623          	sb	a1,12(a4)
   1044c:	00b705a3          	sb	a1,11(a4)
   10450:	00b70523          	sb	a1,10(a4)
   10454:	00b704a3          	sb	a1,9(a4)
   10458:	00b70423          	sb	a1,8(a4)
   1045c:	00b703a3          	sb	a1,7(a4)
   10460:	00b70323          	sb	a1,6(a4)
   10464:	00b702a3          	sb	a1,5(a4)
   10468:	00b70223          	sb	a1,4(a4)
   1046c:	00b701a3          	sb	a1,3(a4)
   10470:	00b70123          	sb	a1,2(a4)
   10474:	00b700a3          	sb	a1,1(a4)
   10478:	00b70023          	sb	a1,0(a4)
   1047c:	00008067          	ret
   10480:	0ff5f593          	zext.b	a1,a1
   10484:	00859693          	sll	a3,a1,0x8
   10488:	00d5e5b3          	or	a1,a1,a3
   1048c:	01059693          	sll	a3,a1,0x10
   10490:	00d5e5b3          	or	a1,a1,a3
   10494:	02059693          	sll	a3,a1,0x20
   10498:	00d5e5b3          	or	a1,a1,a3
   1049c:	f6dff06f          	j	10408 <memset+0x18>
   104a0:	00279693          	sll	a3,a5,0x2
   104a4:	00000297          	auipc	t0,0x0
   104a8:	005686b3          	add	a3,a3,t0
   104ac:	00008293          	mv	t0,ra
   104b0:	f98680e7          	jalr	-104(a3)
   104b4:	00028093          	mv	ra,t0
   104b8:	ff078793          	add	a5,a5,-16
   104bc:	40f70733          	sub	a4,a4,a5
   104c0:	00f60633          	add	a2,a2,a5
   104c4:	f6c374e3          	bgeu	t1,a2,1042c <memset+0x3c>
   104c8:	f3dff06f          	j	10404 <memset+0x14>

00000000000104cc <__call_exitprocs>:
   104cc:	fb010113          	add	sp,sp,-80
   104d0:	03413023          	sd	s4,32(sp)
   104d4:	f481ba03          	ld	s4,-184(gp) # 11ea8 <_global_impure_ptr>
   104d8:	03213823          	sd	s2,48(sp)
   104dc:	04113423          	sd	ra,72(sp)
   104e0:	1f8a3903          	ld	s2,504(s4)
   104e4:	04813023          	sd	s0,64(sp)
   104e8:	02913c23          	sd	s1,56(sp)
   104ec:	03313423          	sd	s3,40(sp)
   104f0:	01513c23          	sd	s5,24(sp)
   104f4:	01613823          	sd	s6,16(sp)
   104f8:	01713423          	sd	s7,8(sp)
   104fc:	01813023          	sd	s8,0(sp)
   10500:	04090063          	beqz	s2,10540 <__call_exitprocs+0x74>
   10504:	00050b13          	mv	s6,a0
   10508:	00058b93          	mv	s7,a1
   1050c:	00100a93          	li	s5,1
   10510:	fff00993          	li	s3,-1
   10514:	00892483          	lw	s1,8(s2)
   10518:	fff4841b          	addw	s0,s1,-1
   1051c:	02044263          	bltz	s0,10540 <__call_exitprocs+0x74>
   10520:	00349493          	sll	s1,s1,0x3
   10524:	009904b3          	add	s1,s2,s1
   10528:	040b8463          	beqz	s7,10570 <__call_exitprocs+0xa4>
   1052c:	2084b783          	ld	a5,520(s1)
   10530:	05778063          	beq	a5,s7,10570 <__call_exitprocs+0xa4>
   10534:	fff4041b          	addw	s0,s0,-1
   10538:	ff848493          	add	s1,s1,-8
   1053c:	ff3416e3          	bne	s0,s3,10528 <__call_exitprocs+0x5c>
   10540:	04813083          	ld	ra,72(sp)
   10544:	04013403          	ld	s0,64(sp)
   10548:	03813483          	ld	s1,56(sp)
   1054c:	03013903          	ld	s2,48(sp)
   10550:	02813983          	ld	s3,40(sp)
   10554:	02013a03          	ld	s4,32(sp)
   10558:	01813a83          	ld	s5,24(sp)
   1055c:	01013b03          	ld	s6,16(sp)
   10560:	00813b83          	ld	s7,8(sp)
   10564:	00013c03          	ld	s8,0(sp)
   10568:	05010113          	add	sp,sp,80
   1056c:	00008067          	ret
   10570:	00892783          	lw	a5,8(s2)
   10574:	0084b703          	ld	a4,8(s1)
   10578:	fff7879b          	addw	a5,a5,-1
   1057c:	06878263          	beq	a5,s0,105e0 <__call_exitprocs+0x114>
   10580:	0004b423          	sd	zero,8(s1)
   10584:	fa0708e3          	beqz	a4,10534 <__call_exitprocs+0x68>
   10588:	31092783          	lw	a5,784(s2)
   1058c:	008a96bb          	sllw	a3,s5,s0
   10590:	00892c03          	lw	s8,8(s2)
   10594:	00d7f7b3          	and	a5,a5,a3
   10598:	0007879b          	sext.w	a5,a5
   1059c:	02079263          	bnez	a5,105c0 <__call_exitprocs+0xf4>
   105a0:	000700e7          	jalr	a4
   105a4:	00892703          	lw	a4,8(s2)
   105a8:	1f8a3783          	ld	a5,504(s4)
   105ac:	01871463          	bne	a4,s8,105b4 <__call_exitprocs+0xe8>
   105b0:	f92782e3          	beq	a5,s2,10534 <__call_exitprocs+0x68>
   105b4:	f80786e3          	beqz	a5,10540 <__call_exitprocs+0x74>
   105b8:	00078913          	mv	s2,a5
   105bc:	f59ff06f          	j	10514 <__call_exitprocs+0x48>
   105c0:	31492783          	lw	a5,788(s2)
   105c4:	1084b583          	ld	a1,264(s1)
   105c8:	00d7f7b3          	and	a5,a5,a3
   105cc:	0007879b          	sext.w	a5,a5
   105d0:	00079c63          	bnez	a5,105e8 <__call_exitprocs+0x11c>
   105d4:	000b0513          	mv	a0,s6
   105d8:	000700e7          	jalr	a4
   105dc:	fc9ff06f          	j	105a4 <__call_exitprocs+0xd8>
   105e0:	00892423          	sw	s0,8(s2)
   105e4:	fa1ff06f          	j	10584 <__call_exitprocs+0xb8>
   105e8:	00058513          	mv	a0,a1
   105ec:	000700e7          	jalr	a4
   105f0:	fb5ff06f          	j	105a4 <__call_exitprocs+0xd8>

00000000000105f4 <__libc_fini_array>:
   105f4:	fe010113          	add	sp,sp,-32
   105f8:	00813823          	sd	s0,16(sp)
   105fc:	000117b7          	lui	a5,0x11
   10600:	00011437          	lui	s0,0x11
   10604:	75878793          	add	a5,a5,1880 # 11758 <__do_global_dtors_aux_fini_array_entry>
   10608:	76040413          	add	s0,s0,1888 # 11760 <impure_data>
   1060c:	40f40433          	sub	s0,s0,a5
   10610:	00913423          	sd	s1,8(sp)
   10614:	00113c23          	sd	ra,24(sp)
   10618:	40345493          	sra	s1,s0,0x3
   1061c:	02048063          	beqz	s1,1063c <__libc_fini_array+0x48>
   10620:	ff840413          	add	s0,s0,-8
   10624:	00f40433          	add	s0,s0,a5
   10628:	00043783          	ld	a5,0(s0)
   1062c:	fff48493          	add	s1,s1,-1
   10630:	ff840413          	add	s0,s0,-8
   10634:	000780e7          	jalr	a5
   10638:	fe0498e3          	bnez	s1,10628 <__libc_fini_array+0x34>
   1063c:	01813083          	ld	ra,24(sp)
   10640:	01013403          	ld	s0,16(sp)
   10644:	00813483          	ld	s1,8(sp)
   10648:	02010113          	add	sp,sp,32
   1064c:	00008067          	ret

0000000000010650 <atexit>:
   10650:	00050593          	mv	a1,a0
   10654:	00000693          	li	a3,0
   10658:	00000613          	li	a2,0
   1065c:	00000513          	li	a0,0
   10660:	0040006f          	j	10664 <__register_exitproc>

0000000000010664 <__register_exitproc>:
   10664:	f481b703          	ld	a4,-184(gp) # 11ea8 <_global_impure_ptr>
   10668:	1f873783          	ld	a5,504(a4)
   1066c:	06078063          	beqz	a5,106cc <__register_exitproc+0x68>
   10670:	0087a703          	lw	a4,8(a5)
   10674:	01f00813          	li	a6,31
   10678:	08e84663          	blt	a6,a4,10704 <__register_exitproc+0xa0>
   1067c:	02050863          	beqz	a0,106ac <__register_exitproc+0x48>
   10680:	00371813          	sll	a6,a4,0x3
   10684:	01078833          	add	a6,a5,a6
   10688:	10c83823          	sd	a2,272(a6)
   1068c:	3107a883          	lw	a7,784(a5)
   10690:	00100613          	li	a2,1
   10694:	00e6163b          	sllw	a2,a2,a4
   10698:	00c8e8b3          	or	a7,a7,a2
   1069c:	3117a823          	sw	a7,784(a5)
   106a0:	20d83823          	sd	a3,528(a6)
   106a4:	00200693          	li	a3,2
   106a8:	02d50863          	beq	a0,a3,106d8 <__register_exitproc+0x74>
   106ac:	00270693          	add	a3,a4,2
   106b0:	00369693          	sll	a3,a3,0x3
   106b4:	0017071b          	addw	a4,a4,1
   106b8:	00e7a423          	sw	a4,8(a5)
   106bc:	00d787b3          	add	a5,a5,a3
   106c0:	00b7b023          	sd	a1,0(a5)
   106c4:	00000513          	li	a0,0
   106c8:	00008067          	ret
   106cc:	20070793          	add	a5,a4,512
   106d0:	1ef73c23          	sd	a5,504(a4)
   106d4:	f9dff06f          	j	10670 <__register_exitproc+0xc>
   106d8:	3147a683          	lw	a3,788(a5)
   106dc:	00000513          	li	a0,0
   106e0:	00c6e6b3          	or	a3,a3,a2
   106e4:	30d7aa23          	sw	a3,788(a5)
   106e8:	00270693          	add	a3,a4,2
   106ec:	00369693          	sll	a3,a3,0x3
   106f0:	0017071b          	addw	a4,a4,1
   106f4:	00e7a423          	sw	a4,8(a5)
   106f8:	00d787b3          	add	a5,a5,a3
   106fc:	00b7b023          	sd	a1,0(a5)
   10700:	00008067          	ret
   10704:	fff00513          	li	a0,-1
   10708:	00008067          	ret

000000000001070c <_exit>:
   1070c:	05d00893          	li	a7,93
   10710:	00000073          	ecall
   10714:	00054463          	bltz	a0,1071c <_exit+0x10>
   10718:	0000006f          	j	10718 <_exit+0xc>
   1071c:	ff010113          	add	sp,sp,-16
   10720:	00813023          	sd	s0,0(sp)
   10724:	00050413          	mv	s0,a0
   10728:	00113423          	sd	ra,8(sp)
   1072c:	4080043b          	negw	s0,s0
   10730:	00c000ef          	jal	1073c <__errno>
   10734:	00852023          	sw	s0,0(a0)
   10738:	0000006f          	j	10738 <_exit+0x2c>

000000000001073c <__errno>:
   1073c:	f581b503          	ld	a0,-168(gp) # 11eb8 <_impure_ptr>
   10740:	00008067          	ret
