	.include 'dpf.inc'

	.area LCDAUX (CODE)

_lcd_custom_init::
	mov	p3dir,#0
	anl	p1dir,#0xe8
	anl	p2dir,#0xfd
	clr	LCD_CS
	setb	LCD_RST
	mov	a,#0x0a
	lcall	X1710
	clr	LCD_RST
	mov	a,#0x0a
	lcall	X1710
	setb	LCD_RST
	mov	a,#0x96
	lcall	X1710
	mov	a,#0x11
	lcall	X1726
	mov	a,#0x96
	lcall	X1710
	mov	a,#0xb1
	lcall	X1726
	mov	a,#0
	lcall	X1730
	mov	a,#0x6
	lcall	X1730
	mov	a,#0x3
	lcall	X1730
	mov	a,#0xb2
	lcall	X1726
	mov	a,#0
	lcall	X1730
	mov	a,#0x6
	lcall	X1730
	mov	a,#0x3
	lcall	X1730
	mov	a,#0xb3
	lcall	X1726
	mov	a,#0
	lcall	X1730
	mov	a,#0x6
	lcall	X1730
	mov	a,#0x3
	lcall	X1730
	mov	a,#0
	lcall	X1730
	mov	a,#0x6
	lcall	X1730
	mov	a,#0x3
	lcall	X1730
	mov	a,#0xb4
	lcall	X1726
	mov	a,#0x7
	lcall	X1730
	mov	a,#0xc0
	lcall	X1726
	mov	a,#0xb4
	lcall	X1730
	mov	a,#0x14
	lcall	X1730
	mov	a,#0x4
	lcall	X1730
	mov	a,#0xc1
	lcall	X1726
	mov	a,#0xc0
	lcall	X1730
	mov	a,#0xc2
	lcall	X1726
	mov	a,#0x0a
	lcall	X1730
	mov	a,#0
	lcall	X1730
	mov	a,#0xc3
	lcall	X1726
	mov	a,#0x8a
	lcall	X1730
	mov	a,#0x2a
	lcall	X1730
	mov	a,#0xc4
	lcall	X1726
	mov	a,#0x8a
	lcall	X1730
	mov	a,#0xaa
	lcall	X1730
	mov	a,#0xc5
	lcall	X1726
	mov	a,#0
	lcall	X1730
	mov	a,#0x36
	lcall	X1726
	mov	a,#0xa8
	lcall	X1730
	mov	a,#0x3a
	lcall	X1726
	mov	a,#0x5
	lcall	X1730
	mov	a,#0xe0
	lcall	X1726
	mov	a,#0x3
	lcall	X1730
	mov	a,#0x22
	lcall	X1730
	mov	a,#0x0a
	lcall	X1730
	mov	a,#0x12
	lcall	X1730
	mov	a,#0x3a
	lcall	X1730
	mov	a,#0x35
	lcall	X1730
	mov	a,#0x2e
	lcall	X1730
	mov	a,#0x31
	lcall	X1730
	mov	a,#0x30
	lcall	X1730
	mov	a,#0x2d
	lcall	X1730
	mov	a,#0x34
	lcall	X1730
	mov	a,#0x3d
	lcall	X1730
	mov	a,#0
	lcall	X1730
	mov	a,#0
	lcall	X1730
	mov	a,#0x1
	lcall	X1730
	mov	a,#0x3
	lcall	X1730
	mov	a,#0xe1
	lcall	X1726
	mov	a,#0x3
	lcall	X1730
	mov	a,#0x20
	lcall	X1730
	mov	a,#0x0a
	lcall	X1730
	mov	a,#0x12
	lcall	X1730
	mov	a,#0x2e
	lcall	X1730
	mov	a,#0x2a
	lcall	X1730
	mov	a,#0x26
	lcall	X1730
	mov	a,#0x2b
	lcall	X1730
	mov	a,#0x2b
	lcall	X1730
	mov	a,#0x2a
	lcall	X1730
	mov	a,#0x32
	lcall	X1730
	mov	a,#0x3d
	lcall	X1730
	mov	a,#0
	lcall	X1730
	mov	a,#0x1
	lcall	X1730
	mov	a,#0x2
	lcall	X1730
	mov	a,#0x4
	lcall	X1730
	mov	a,#0x29
	lcall	X1726
	mov	a,#0x2a
	lcall	X1726
	mov	a,#0
	lcall	X1730
	mov	a,#0x2
	lcall	X1730
	mov	a,#0
	lcall	X1730
	mov	a,#0x81
	lcall	X1730
	mov	a,#0x2b
	lcall	X1726
	mov	a,#0
	lcall	X1730
	mov	a,#0x3
	lcall	X1730
	mov	a,#0
	lcall	X1730
	mov	a,#0x82
	lcall	X1730
	mov	a,#0x78
	lcall	X1710
	mov	a,#0x2c
	lcall	X1726
	ret	
;
X1710:	mov	r5,a
X1711:	mov	r6,#0x18
X1713:	mov	r7,#0xfa
X1715:	djnz	r7,X1715
	djnz	r6,X1713
	djnz	r5,X1711
	ret	
;
X1726:	clr	LCD_A0
	ljmp	otp_lcd_write
;
X1730:	setb	LCD_A0
	ljmp	otp_lcd_write
;
; No detectable Lcd_Contrast routine - do not use contrast setting!
;
;_lcd_custom_setcontrast::
;	ret
