.386p
PAGE  80,200
COMMENT @

ML /Zm /Fl /Fm /W3 x.ASM

Using MASM v 6.11c

OUTPUT
=====

For correct hard disk

DL=80 0000:7C00
LHDD0 01
SHDD0 01


For correct ZIP disk

DL=00  0000:7C00
LFDD0 ?aabbccddeeffgghhiijjkkllmmnnooppqqrr
SFDD0 ?aabbccddeeffgghhiijjkkllmmnnooppqqrr

where aabbcc etc are the first 16 bytes returned when reading the PBR
if the contents differ from the PBR then the BIOS has a problem and may not boot!


@

TRUE = NOT 0
FALSE = NOT TRUE


RELOC_OFFSET	EQU	0h
RELOC_SEG	EQU	800h


;PTN0	EQU FALSE
;PTN1 	EQU FALSE
;PTN2	EQU FALSE

;SPT32	EQU FALSE


prog	segment para USE16 public 'CODE'

	ASSUME CS:prog, DS:prog, ES:prog
	org 0


start:


; *******************************************************
; *                    MBR_CODE_HDD                     *
; * this is the code saved in the MBR of the hard disks *
; *******************************************************
Public MBR_CODE_HDD
MBR_CODE_HDD:
	call	get_ip_in_ax	;get IP value to see where we are
	push	ax
	nop
	push	cs
	mov	dh,dl		;DL could be 8xh if HDD or 0xh if FDD
	and	dh,07fh		;DH = drive number
	push	dx		;save drive letter from BIOS
	mov	bp,sp		;BP=DX, BP+2=CS, BP+4=IP

	mov	al,'R'
	mov	bl,7		;pixel value
	mov	ah,0eh
	int	10h

	CLD
	Mov	AX,RELOC_SEG	;800h
        MOV 	ES,AX
        MOV 	DI,RELOC_OFFSET ; address 800:0h
        MOV 	DS,[BP+2]	;CS
        MOV 	SI,[BP+4]	;e.g.7C00h  start address of the code
        MOV 	CX,100h 	; 256 words
        REPZ 	MOVSW	 	; relocates the code

        DB 	0EAh 		; Far jump to 0000:RELOC
        DW 	RELOC_OFFSET + offset RELOC
        DW 	RELOC_SEG


ID:	DB 0aah,055h,023h,00h	; this is ID marker for LBA 0

MARKER EQU	offset ID	;REM MUST BE AT 2Fh

LBATABLE:
        DB 16,0,1,0 		; address 0000:061Eh. LBA table
        DB 0,7Ch,0,0 		; address 0000:0622h. Segment:offset
        DB 0,0,0,0,0,0,0,0 	; address 0000:0626h. Logical sector

;CODE EXECUTES FROM HERE

RELOC:

	mov	ax,cs
        mov	ds,ax		;SET TO 0
	MOV	ES,AX

;*********************************
; 
;   r = Relocated Code is running
;
;*********************************

;	mov	al,'r'
;	mov	bl,7		;pixel value
;	mov	ah,0eh
;	int	10h

;*********************************
; 
;   CLEAR SCREEN
;
;*********************************

	mov	ax,3
	int	10h
	MOV 	AH,2h
	MOV 	BH,0
	MOV 	DX,0h
	INT 	10h	 	; puts the screen coordinates to 0,0


;*********************************
; 
;   DL=
;
;*********************************

;	mov	si,offset dl_mes + RELOC_OFFSET
;	call	msg


;*********************************
; 
;   Print DL value passed by BIOS
;
;*********************************
	mov 	dx,[BP]		;get DL as passed by BIOS
	mov	al,dl
	call	print_al	;PRINT DL


;*********************************
; 
;   Print
;   h
;   MBR=
;
;*********************************

;	MOV	SI,OFFSET Load_add_mes + RELOC_OFFSET
;	call	msg
;	mov	ax,[BP+2]
;	call	print_ax

;geometry
	pusha
	call	print_cr
	mov	ah,8
	int	13h	;AH=error code, DL=no of HDDs, DH=no of hds - 1, CX=cyls,secs
	xor	al,al
	call	print_ax_space
	mov	ax,DX
	call	print_ax_space
	mov	ax,cx
	and	ax,0111111b
	call	print_ax_space
	mov	ax,cx
	and	ax,0ffc0h
	shr	ax,6
	call	print_ax_space
	call	print_cr
	popa


        MOV 	AH,41h
        MOV 	BX,55AAh
        INT 	13h 		; test for BIOS extensions
        JC 	safeb
        CMP 	BX,0AA55h
        JNE 	safeb

;*********************************
; 
;   L = We have LBA support
;
;*********************************
        
      	MOV 	AL,'L' 	
       	call	outc
        MOV 	SI,offset LBATABLE + RELOC_OFFSET      	; LBA mode
        MOV 	byte ptr DS:[SI+2],1			;no of sectors
  	MOV 	word ptr DS:[SI+8],0h			;LBA address
        MOV 	AH,42h
        INT 	13h					;DS:SI points to table
        JNC 	gudlba
;*********************************
; 
;   l = LBA read command to sec 1 failed
;
;*********************************
        mov	al,'l'
	call	outc
	jmp	safeb

gudlba:
;We have read LBA 1 - check contents
	xor	ax,ax
	mov	es,ax
	mov	bx,07c00h + offset ID
	mov	eax,es:[bx]
	call	Print_dev	;print device	

;CHS mode
safeb: 	

;*********************************
; 
;   S = Testing for Standard int 13h CHS support LBA 1 = CHS 002
;
;*********************************

	call	print_cr
	mov	al,'S'
	call	outc

	xor	ax,ax
	mov	es,ax		; set ES to 0 for ES_BX address
        MOV 	DH,0 		; head
	MOV 	CX,1h 		; CH=Cyl no low, CL=2bits cyl no+6bits sec no, sector 1 and track 0

;CX =       ---CH--- ---CL---
;cylinder : 76543210 98
;sector   :            543210

        MOV 	BX,7C00h 	; address where we load the boot sector
        MOV 	AX,0201h 	; one sector , read=2
        INT 	13h

;*********************************
; 
;   s = Standard Int13h call to read CHS 001 failed
;
;*********************************

        MOV 	AL,'s' 		; error 1, error reading a sector!
        JC	error
        
	MOV	BX,07C00H + OFFSET ID
	mov	eax,es:[bx]
	call	Print_dev	;print device	
	jmp 	idleloop


error:  call outc		; prints the error passed in AL
mbuc:   JMP idleloop 		; and locks the machine to allows user to read it.


Print_dev:
	push	eax
	mov	ax,[bp]		;get saved drive type on booting
 	and	al,80h
	mov	ah,'H'
	jnz	hddm
	mov	ah,'F'
hddm:
	mov	al,ah
	call	outc		;print H or F
	mov	al,'D'
	call	outc		;print DD
	call	outc
	mov	ax,[bp]
	mov	al,ah		;get drv no.
	add	al,'0'
	call	outc
	call	print_space
	pop	eax

	cmp	ax,55aah	;is this sector one or our sectors with signature
	jne	print_x

;only gets here is one of 'our' dummy sectors was read

	push	eax
	shr	eax,24
	call	print_al	;print sector number actually returned - e.g. HDD0 01
	pop	eax
	cmp	eax,002355aah	;Z if no BIOS ZIP fixup
	jz	zr1		;if Z flag set then not ZIP


zip:
;BIOS has done some sector translation - wrong sector was returned!
	mov	al,'Z'
zr:	call	outc		;if ZIP drive then print Z - e.g. HDD0 40Z
zr1:	ret

print_x:
	mov	al,'?'		;e.g. LHDD0 ?  or LFDD0 ?

;we have unknown sector when reading 2nd sector - display some bytes

	mov	bx,07c00h
	mov	cx,16
llp:	mov	al,es:[bx]
	call	print_al
	inc	bx
	inc	bx
	loop	LLP	
	jmp	zr

print_cr:
	push	ax
	mov	al,13
	call	outc
	mov	al,10
	call	outc
	pop	ax
	ret


;************************************************
;*						*
;*        HEX to ASCII PRINT ROUTINES		*
;*						*
;************************************************

;----
Public Print_ax
Print_ax:
;prints value in AX in ASCII
;	pushf
	pusha
	mov	cl,al
	mov	al,ah
	call	print_al
	mov	al,cl
	call	print_al
	popa
;	popf
	ret

;----
Public Print_al
Print_al:
;converts AL to two ASCII digits and prints them
;	pushf
	pusha
	mov	ch,al
	mov	cl,4
	shr	al,cl
	call	xlat_print_code
	mov	al,ch
	and	al,0fh
	call	xlat_print_code
	popa
;	popf
	ret

;---
Public xlat_print_code
xlat_print_code:
;	pusha
;	push	cs
;	pop	ds
	mov	bx,RELOC_OFFSET + offset ascii_xlat_table
	xlat	
	call	outc
;	popa
	ret

ascii_xlat_table	db	'0123456789ABCDEF'

;----

get_ip_in_ax:
	cli
	pop	ax
	push	ax
	dec	ax
	dec	ax
	dec	ax
	ret

msg:
	lodsb		;use DS:SI
	or 	al, al	;0 = EOS
	jz 	done
	call	outc
	jmp 	msg
done:
	ret


idleloop:
	hlt
	jmp idleloop


print_ax_space:
	call	print_ax
print_space:
	mov	al,' '
PUBLIC OUTC
OUTC:
	mov	bl,7		;pixel value
	mov	ah,0eh
	int	10h
	ret

;--

;CHECK NOT OVER 1BEh !!!!!!
XX:


; PARTITION TABLE STARTS HERE


org	1beh

IF PTN0 
echo ***** NO PTN TABLE *********
	db	0,0
	db	48+14 dup (0)
	db	55h,0aah
ENDIF


IF PTN2 AND NOT SPT32
echo ***** 2 PTN TABLES  SPT=63 *****
	db	80h,01h
	db	01,00,0bh,0FEh,07Fh, 0EEh, 3Fh, 00,  00, 00, 0F0h, 56h, 79h, 00, 00, 00
	db	41h,0efh,21h,0,7fh,0efh,2fh,57h,79h,0,3fh,0,0,0,0,0
	db	16 dup (0)
	db	14 dup (0),55h,0aah
ENDIF

IF PTN2  AND SPT32
echo ***** 2 PTN TABLES  SPT=32  *****
	db	80h,01h
	db	01h, 00h, 0Bh, 0FEh, 0e0h, 0cEh, 20h, 00h, 00h, 00h, 00h, 66h, 79h, 00h, 00h, 00h
	db	41h, 0EFh, 21h, 00h, 7Fh, 0EFh, 2Fh, 57h,79h, 00h, 3Fh, 00h, 00h, 00h, 00h, 00h
	db	16 dup (0)
	db	14 dup (0),55h,0aah
ENDIF

;01B0 6D 00 00 00 00 62 7A 99 - 95 A3 01 C2 00 00 80 01  m....bz™ •£.Â..€.
;01C0 01 00 0B FE 7F EE 3F 00 - 00 00 F0 56 79 00 00 00  ...þî?. ..ðVy...
;01D0 41 EF 21 00 7F EF 2F 57 - 79 00 3F 00 00 00 00 00  Aï!.ï/W y.?.....




If PTN1  AND NOT SPT32
echo **** 1 PTN TABLE  SPT=63 ******
	db	80h,01h
	db	01,00,0bh,0FEh,07Fh, 0EEh, 3Fh, 00,  00, 00, 0F0h, 56h, 79h, 00, 00, 00
	db	16 dup (0)
	db	16 dup (0)
	db	14 dup (0),55h,0aah
ENDIF


If PTN1  AND SPT32

;01B0 6D 00 00 00 00 62 7A 99 - 54 28 33 EC 00 00 80 01  m....bz™ T(3ì..€.
;01C0 01 00 0B FE E0 CE 20 00 - 00 00 00 66 79 00 00 00  ...þàÎ . ...fy...
;01D0 C1 CF 21 00 E0 CF 20 66 - 79 00 20 00 00 00 00 00  ÁÏ!.àÏ f y. .....
;01E0 00 00 00 00 00 00 00 00 - 00 00 00 00 00 00 00 00  ........ ........
;01F0 00 00 00 00 00 00 00 00 - 00 00 00 00 00 00 55 AA  ........ ......Uª

echo **** 1 PTN TABLE  SPT=32 ******
	db	80h,01h
	db	01,00,0bh,0FEh,0e0h, 0cEh, 20h, 00,  00, 00, 000h, 66h, 79h, 00, 00, 00
	db	16 dup (0)
	db	16 dup (0)
	db	14 dup (0),55h,0aah
ENDIF



; 002F AA 55 23 00		ID:	DB 0aah,055h,023h,00h

;Put marker in every sector


	db	0b0h,05ah,0b3h,07h,0b4h,0eh,0cdh,10h,0f4h,0ebh,0fdh,0,0,0,0
	db	20h dup (0)
	db	0aah,055h,023h
	db	1
	db	13 dup (0)
	db	1beh dup (0)
	db	055h,0aah


	db	0b0h,05ah,0b3h,07h,0b4h,0eh,0cdh,10h,0f4h,0ebh,0fdh,0,0,0,0
	db	20h dup (0)
	db	0aah,055h,023h
	db	2
	db	13 dup (0)
	db	1beh dup (0)
	db	055h,0aah

	db	0b0h,05ah,0b3h,07h,0b4h,0eh,0cdh,10h,0f4h,0ebh,0fdh,0,0,0,0
	db	20h dup (0)
	db	0aah,055h,023h
	db	3
	db	13 dup (0)
	db	1beh dup (0)
	db	055h,0aah

	db	0b0h,05ah,0b3h,07h,0b4h,0eh,0cdh,10h,0f4h,0ebh,0fdh,0,0,0,0
	db	20h dup (0)
	db	0aah,055h,023h
	db	4
	db	13 dup (0)
	db	1beh dup (0)
	db	055h,0aah

	db	0b0h,05ah,0b3h,07h,0b4h,0eh,0cdh,10h,0f4h,0ebh,0fdh,0,0,0,0
	db	20h dup (0)
	db	0aah,055h,023h
	db	5
	db	13 dup (0)
	db	1beh dup (0)
	db	055h,0aah

	db	0b0h,05ah,0b3h,07h,0b4h,0eh,0cdh,10h,0f4h,0ebh,0fdh,0,0,0,0
	db	20h dup (0)
	db	0aah,055h,023h
	db	6
	db	13 dup (0)
	db	1beh dup (0)
	db	055h,0aah

	db	0b0h,05ah,0b3h,07h,0b4h,0eh,0cdh,10h,0f4h,0ebh,0fdh,0,0,0,0
	db	20h dup (0)
	db	0aah,055h,023h
	db	7
	db	13 dup (0)
	db	1beh dup (0)
	db	055h,0aah

	db	0b0h,05ah,0b3h,07h,0b4h,0eh,0cdh,10h,0f4h,0ebh,0fdh,0,0,0,0
	db	20h dup (0)
	db	0aah,055h,023h
	db	8
	db	13 dup (0)
	db	1beh dup (0)
	db	055h,0aah

	db	0b0h,05ah,0b3h,07h,0b4h,0eh,0cdh,10h,0f4h,0ebh,0fdh,0,0,0,0
	db	20h dup (0)
	db	0aah,055h,023h
	db	9
	db	13 dup (0)
	db	1beh dup (0)
	db	055h,0aah

	db	0b0h,05ah,0b3h,07h,0b4h,0eh,0cdh,10h,0f4h,0ebh,0fdh,0,0,0,0
	db	20h dup (0)
	db	0aah,055h,023h
	db	10
	db	13 dup (0)
	db	1beh dup (0)
	db	055h,0aah


	db	0b0h,05ah,0b3h,07h,0b4h,0eh,0cdh,10h,0f4h,0ebh,0fdh,0,0,0,0
	db	20h dup (0)
	db	0aah,055h,023h
	db	11
	db	13 dup (0)
	db	1beh dup (0)
	db	055h,0aah


	db	0b0h,05ah,0b3h,07h,0b4h,0eh,0cdh,10h,0f4h,0ebh,0fdh,0,0,0,0
	db	20h dup (0)
	db	0aah,055h,023h
	db	12
	db	13 dup (0)
	db	1beh dup (0)
	db	055h,0aah

	db	0b0h,05ah,0b3h,07h,0b4h,0eh,0cdh,10h,0f4h,0ebh,0fdh,0,0,0,0
	db	20h dup (0)
	db	0aah,055h,023h
	db	13
	db	13 dup (0)
	db	1beh dup (0)
	db	055h,0aah

	db	0b0h,05ah,0b3h,07h,0b4h,0eh,0cdh,10h,0f4h,0ebh,0fdh,0,0,0,0
	db	20h dup (0)
	db	0aah,055h,023h
	db	14
	db	13 dup (0)
	db	1beh dup (0)
	db	055h,0aah

	db	0b0h,05ah,0b3h,07h,0b4h,0eh,0cdh,10h,0f4h,0ebh,0fdh,0,0,0,0
	db	20h dup (0)
	db	0aah,055h,023h
	db	15
	db	13 dup (0)
	db	1beh dup (0)
	db	055h,0aah

	db	0b0h,05ah,0b3h,07h,0b4h,0eh,0cdh,10h,0f4h,0ebh,0fdh,0,0,0,0
	db	20h dup (0)
	db	0aah,055h,023h
	db	16
	db	13 dup (0)
	db	1beh dup (0)
	db	055h,0aah

	db	0b0h,05ah,0b3h,07h,0b4h,0eh,0cdh,10h,0f4h,0ebh,0fdh,0,0,0,0
	db	20h dup (0)
	db	0aah,055h,023h
	db	17
	db	13 dup (0)
	db	1beh dup (0)
	db	055h,0aah

	db	0b0h,05ah,0b3h,07h,0b4h,0eh,0cdh,10h,0f4h,0ebh,0fdh,0,0,0,0
	db	20h dup (0)
	db	0aah,055h,023h
	db	18
	db	13 dup (0)
	db	1beh dup (0)
	db	055h,0aah

	db	0b0h,05ah,0b3h,07h,0b4h,0eh,0cdh,10h,0f4h,0ebh,0fdh,0,0,0,0
	db	20h dup (0)
	db	0aah,055h,023h
	db	19
	db	13 dup (0)
	db	1beh dup (0)
	db	055h,0aah

	db	0b0h,05ah,0b3h,07h,0b4h,0eh,0cdh,10h,0f4h,0ebh,0fdh,0,0,0,0
	db	20h dup (0)
	db	0aah,055h,023h
	db	20
	db	13 dup (0)
	db	1beh dup (0)
	db	055h,0aah


	db	0b0h,05ah,0b3h,07h,0b4h,0eh,0cdh,10h,0f4h,0ebh,0fdh,0,0,0,0
	db	20h dup (0)
	db	0aah,055h,023h
	db	21
	db	13 dup (0)
	db	1beh dup (0)
	db	055h,0aah


	db	0b0h,05ah,0b3h,07h,0b4h,0eh,0cdh,10h,0f4h,0ebh,0fdh,0,0,0,0
	db	20h dup (0)
	db	0aah,055h,023h
	db	22
	db	13 dup (0)
	db	1beh dup (0)
	db	055h,0aah

	db	0b0h,05ah,0b3h,07h,0b4h,0eh,0cdh,10h,0f4h,0ebh,0fdh,0,0,0,0
	db	20h dup (0)
	db	0aah,055h,023h
	db	23
	db	13 dup (0)
	db	1beh dup (0)
	db	055h,0aah

	db	0b0h,05ah,0b3h,07h,0b4h,0eh,0cdh,10h,0f4h,0ebh,0fdh,0,0,0,0
	db	20h dup (0)
	db	0aah,055h,023h
	db	24
	db	13 dup (0)
	db	1beh dup (0)
	db	055h,0aah

	db	0b0h,05ah,0b3h,07h,0b4h,0eh,0cdh,10h,0f4h,0ebh,0fdh,0,0,0,0
	db	20h dup (0)
	db	0aah,055h,023h
	db	25
	db	13 dup (0)
	db	1beh dup (0)
	db	055h,0aah

	db	0b0h,05ah,0b3h,07h,0b4h,0eh,0cdh,10h,0f4h,0ebh,0fdh,0,0,0,0
	db	20h dup (0)
	db	0aah,055h,023h
	db	26
	db	13 dup (0)
	db	1beh dup (0)
	db	055h,0aah

	db	0b0h,05ah,0b3h,07h,0b4h,0eh,0cdh,10h,0f4h,0ebh,0fdh,0,0,0,0
	db	20h dup (0)
	db	0aah,055h,023h
	db	27
	db	13 dup (0)
	db	1beh dup (0)
	db	055h,0aah

	db	0b0h,05ah,0b3h,07h,0b4h,0eh,0cdh,10h,0f4h,0ebh,0fdh,0,0,0,0
	db	20h dup (0)
	db	0aah,055h,023h
	db	28
	db	13 dup (0)
	db	1beh dup (0)
	db	055h,0aah

	db	0b0h,05ah,0b3h,07h,0b4h,0eh,0cdh,10h,0f4h,0ebh,0fdh,0,0,0,0
	db	20h dup (0)
	db	0aah,055h,023h
	db	29
	db	13 dup (0)
	db	1beh dup (0)
	db	055h,0aah

	db	0b0h,05ah,0b3h,07h,0b4h,0eh,0cdh,10h,0f4h,0ebh,0fdh,0,0,0,0
	db	20h dup (0)
	db	0aah,055h,023h
	db	30
	db	13 dup (0)
	db	1beh dup (0)
	db	055h,0aah


	db	0b0h,05ah,0b3h,07h,0b4h,0eh,0cdh,10h,0f4h,0ebh,0fdh,0,0,0,0
	db	20h dup (0)
	db	0aah,055h,023h
	db	31
	db	13 dup (0)
	db	1beh dup (0)
	db	055h,0aah

IF NOT SPT32
	db	0b0h,05ah,0b3h,07h,0b4h,0eh,0cdh,10h,0f4h,0ebh,0fdh,0,0,0,0
	db	20h dup (0)
	db	0aah,055h,023h
	db	32
	db	13 dup (0)
	db	1beh dup (0)
	db	055h,0aah

	db	0b0h,05ah,0b3h,07h,0b4h,0eh,0cdh,10h,0f4h,0ebh,0fdh,0,0,0,0
	db	20h dup (0)
	db	0aah,055h,023h
	db	33
	db	13 dup (0)
	db	1beh dup (0)
	db	055h,0aah

	db	0b0h,05ah,0b3h,07h,0b4h,0eh,0cdh,10h,0f4h,0ebh,0fdh,0,0,0,0
	db	20h dup (0)
	db	0aah,055h,023h
	db	34
	db	13 dup (0)
	db	1beh dup (0)
	db	055h,0aah

	db	0b0h,05ah,0b3h,07h,0b4h,0eh,0cdh,10h,0f4h,0ebh,0fdh,0,0,0,0
	db	20h dup (0)
	db	0aah,055h,023h
	db	35
	db	13 dup (0)
	db	1beh dup (0)
	db	055h,0aah

	db	0b0h,05ah,0b3h,07h,0b4h,0eh,0cdh,10h,0f4h,0ebh,0fdh,0,0,0,0
	db	20h dup (0)
	db	0aah,055h,023h
	db	36
	db	13 dup (0)
	db	1beh dup (0)
	db	055h,0aah

	db	0b0h,05ah,0b3h,07h,0b4h,0eh,0cdh,10h,0f4h,0ebh,0fdh,0,0,0,0
	db	20h dup (0)
	db	0aah,055h,023h
	db	37
	db	13 dup (0)
	db	1beh dup (0)
	db	055h,0aah

	db	0b0h,05ah,0b3h,07h,0b4h,0eh,0cdh,10h,0f4h,0ebh,0fdh,0,0,0,0
	db	20h dup (0)
	db	0aah,055h,023h
	db	38
	db	13 dup (0)
	db	1beh dup (0)
	db	055h,0aah

	db	0b0h,05ah,0b3h,07h,0b4h,0eh,0cdh,10h,0f4h,0ebh,0fdh,0,0,0,0
	db	20h dup (0)
	db	0aah,055h,023h
	db	39
	db	13 dup (0)
	db	1beh dup (0)
	db	055h,0aah

	db	0b0h,05ah,0b3h,07h,0b4h,0eh,0cdh,10h,0f4h,0ebh,0fdh,0,0,0,0
	db	20h dup (0)
	db	0aah,055h,023h
	db	40
	db	13 dup (0)
	db	1beh dup (0)
	db	055h,0aah


	db	0b0h,05ah,0b3h,07h,0b4h,0eh,0cdh,10h,0f4h,0ebh,0fdh,0,0,0,0
	db	20h dup (0)
	db	0aah,055h,023h
	db	41
	db	13 dup (0)
	db	1beh dup (0)
	db	055h,0aah


	db	0b0h,05ah,0b3h,07h,0b4h,0eh,0cdh,10h,0f4h,0ebh,0fdh,0,0,0,0
	db	20h dup (0)
	db	0aah,055h,023h
	db	42
	db	13 dup (0)
	db	1beh dup (0)
	db	055h,0aah

	db	0b0h,05ah,0b3h,07h,0b4h,0eh,0cdh,10h,0f4h,0ebh,0fdh,0,0,0,0
	db	20h dup (0)
	db	0aah,055h,023h
	db	43
	db	13 dup (0)
	db	1beh dup (0)
	db	055h,0aah

	db	0b0h,05ah,0b3h,07h,0b4h,0eh,0cdh,10h,0f4h,0ebh,0fdh,0,0,0,0
	db	20h dup (0)
	db	0aah,055h,023h
	db	44
	db	13 dup (0)
	db	1beh dup (0)
	db	055h,0aah

	db	0b0h,05ah,0b3h,07h,0b4h,0eh,0cdh,10h,0f4h,0ebh,0fdh,0,0,0,0
	db	20h dup (0)
	db	0aah,055h,023h
	db	45
	db	13 dup (0)
	db	1beh dup (0)
	db	055h,0aah

	db	0b0h,05ah,0b3h,07h,0b4h,0eh,0cdh,10h,0f4h,0ebh,0fdh,0,0,0,0
	db	20h dup (0)
	db	0aah,055h,023h
	db	46
	db	13 dup (0)
	db	1beh dup (0)
	db	055h,0aah

	db	0b0h,05ah,0b3h,07h,0b4h,0eh,0cdh,10h,0f4h,0ebh,0fdh,0,0,0,0
	db	20h dup (0)
	db	0aah,055h,023h
	db	47
	db	13 dup (0)
	db	1beh dup (0)
	db	055h,0aah

	db	0b0h,05ah,0b3h,07h,0b4h,0eh,0cdh,10h,0f4h,0ebh,0fdh,0,0,0,0
	db	20h dup (0)
	db	0aah,055h,023h
	db	48
	db	13 dup (0)
	db	1beh dup (0)
	db	055h,0aah

	db	0b0h,05ah,0b3h,07h,0b4h,0eh,0cdh,10h,0f4h,0ebh,0fdh,0,0,0,0
	db	20h dup (0)
	db	0aah,055h,023h
	db	49
	db	13 dup (0)
	db	1beh dup (0)
	db	055h,0aah

	db	0b0h,05ah,0b3h,07h,0b4h,0eh,0cdh,10h,0f4h,0ebh,0fdh,0,0,0,0
	db	20h dup (0)
	db	0aah,055h,023h
	db	50
	db	13 dup (0)
	db	1beh dup (0)
	db	055h,0aah


	db	0b0h,05ah,0b3h,07h,0b4h,0eh,0cdh,10h,0f4h,0ebh,0fdh,0,0,0,0
	db	20h dup (0)
	db	0aah,055h,023h
	db	51
	db	13 dup (0)
	db	1beh dup (0)
	db	055h,0aah


	db	0b0h,05ah,0b3h,07h,0b4h,0eh,0cdh,10h,0f4h,0ebh,0fdh,0,0,0,0
	db	20h dup (0)
	db	0aah,055h,023h
	db	52
	db	13 dup (0)
	db	1beh dup (0)
	db	055h,0aah

	db	0b0h,05ah,0b3h,07h,0b4h,0eh,0cdh,10h,0f4h,0ebh,0fdh,0,0,0,0
	db	20h dup (0)
	db	0aah,055h,023h
	db	53
	db	13 dup (0)
	db	1beh dup (0)
	db	055h,0aah

	db	0b0h,05ah,0b3h,07h,0b4h,0eh,0cdh,10h,0f4h,0ebh,0fdh,0,0,0,0
	db	20h dup (0)
	db	0aah,055h,023h
	db	54
	db	13 dup (0)
	db	1beh dup (0)
	db	055h,0aah

	db	0b0h,05ah,0b3h,07h,0b4h,0eh,0cdh,10h,0f4h,0ebh,0fdh,0,0,0,0
	db	20h dup (0)
	db	0aah,055h,023h
	db	55
	db	13 dup (0)
	db	1beh dup (0)
	db	055h,0aah

	db	0b0h,05ah,0b3h,07h,0b4h,0eh,0cdh,10h,0f4h,0ebh,0fdh,0,0,0,0
	db	20h dup (0)
	db	0aah,055h,023h
	db	56
	db	13 dup (0)
	db	1beh dup (0)
	db	055h,0aah

	db	0b0h,05ah,0b3h,07h,0b4h,0eh,0cdh,10h,0f4h,0ebh,0fdh,0,0,0,0
	db	20h dup (0)
	db	0aah,055h,023h
	db	57
	db	13 dup (0)
	db	1beh dup (0)
	db	055h,0aah

	db	0b0h,05ah,0b3h,07h,0b4h,0eh,0cdh,10h,0f4h,0ebh,0fdh,0,0,0,0
	db	20h dup (0)
	db	0aah,055h,023h
	db	58
	db	13 dup (0)
	db	1beh dup (0)
	db	055h,0aah

	db	0b0h,05ah,0b3h,07h,0b4h,0eh,0cdh,10h,0f4h,0ebh,0fdh,0,0,0,0
	db	20h dup (0)
	db	0aah,055h,023h
	db	59
	db	13 dup (0)
	db	1beh dup (0)
	db	055h,0aah

	db	0b0h,05ah,0b3h,07h,0b4h,0eh,0cdh,10h,0f4h,0ebh,0fdh,0,0,0,0
	db	20h dup (0)
	db	0aah,055h,023h
	db	60
	db	13 dup (0)
	db	1beh dup (0)
	db	055h,0aah


	db	0b0h,05ah,0b3h,07h,0b4h,0eh,0cdh,10h,0f4h,0ebh,0fdh,0,0,0,0
	db	20h dup (0)
	db	0aah,055h,023h
	db	61
	db	13 dup (0)
	db	1beh dup (0)
	db	055h,0aah


	db	0b0h,05ah,0b3h,07h,0b4h,0eh,0cdh,10h,0f4h,0ebh,0fdh,0,0,0,0
	db	20h dup (0)
	db	0aah,055h,023h
	db	62
	db	13 dup (0)
	db	1beh dup (0)
	db	055h,0aah
ENDIF

COMMENT @
	db	0b0h,05ah,0b3h,07h,0b4h,0eh,0cdh,10h,0f4h,0ebh,0fdh,0,0,0,0
	db	20h dup (0)
	db	0aah,055h,023h
	db	63
	db	13 dup (0)
	db	1beh dup (0)
	db	055h,0aah

	db	0b0h,05ah,0b3h,07h,0b4h,0eh,0cdh,10h,0f4h,0ebh,0fdh,0,0,0,0
	db	20h dup (0)
	db	0aah,055h,023h
	db	64
	db	13 dup (0)
	db	1beh dup (0)
	db	055h,0aah

	db	0b0h,05ah,0b3h,07h,0b4h,0eh,0cdh,10h,0f4h,0ebh,0fdh,0,0,0,0
	db	20h dup (0)
	db	0aah,055h,023h
	db	65
	db	13 dup (0)
	db	1beh dup (0)
	db	055h,0aah

	db	0b0h,05ah,0b3h,07h,0b4h,0eh,0cdh,10h,0f4h,0ebh,0fdh,0,0,0,0
	db	20h dup (0)
	db	0aah,055h,023h
	db	66
	db	13 dup (0)
	db	1beh dup (0)
	db	055h,0aah

	db	0b0h,05ah,0b3h,07h,0b4h,0eh,0cdh,10h,0f4h,0ebh,0fdh,0,0,0,0
	db	20h dup (0)
	db	0aah,055h,023h
	db	67
	db	13 dup (0)
	db	1beh dup (0)
	db	055h,0aah

	db	0b0h,05ah,0b3h,07h,0b4h,0eh,0cdh,10h,0f4h,0ebh,0fdh,0,0,0,0
	db	20h dup (0)
	db	0aah,055h,023h
	db	68
	db	13 dup (0)
	db	1beh dup (0)
	db	055h,0aah

	db	0b0h,05ah,0b3h,07h,0b4h,0eh,0cdh,10h,0f4h,0ebh,0fdh,0,0,0,0
	db	20h dup (0)
	db	0aah,055h,023h
	db	69
	db	13 dup (0)
	db	1beh dup (0)
	db	055h,0aah

	db	0b0h,05ah,0b3h,07h,0b4h,0eh,0cdh,10h,0f4h,0ebh,0fdh,0,0,0,0
	db	20h dup (0)
	db	0aah,055h,023h
	db	70
	db	13 dup (0)
	db	1beh dup (0)
	db	055h,0aah

@

;01C0 01 00 07 FE 7F EE 3F 00 - 00 00 F0 56 79 00 00 00  ...þî?. ..ðVy...
;01D0 41 EF 21 00 7F EF 2F 57 - 79 00 3F 00 00 00 00 00  Aï!.ï/W y.?.....
;01E0 00 00 00 00 00 00 00 00 - 00 00 00 00 00 00 00 00  ........ ........
;01F0 00 00 00 00 00 00 00 00 - 00 00 00 00 00 00 55 AA  ........ ......Uª
;Partition 1 (SIZE=3.792GB)  Type: 7 NTFS ACTIVE
;START POS = CYL:0 HD:1 SEC:1  END POS = CYL:238 HD:254 SEC:63
;START (LBA) = 63 (3F)   SIZE (LBA) = 7952112 (7956F0)




prog    ends



        END     start

