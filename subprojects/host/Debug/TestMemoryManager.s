	.file	"TestMemoryManager.cpp"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section .rdata,"dr"
	.align 4
_ZL6UNIT_K:
	.long	1024
	.align 4
_ZL3KiB:
	.long	1024
	.align 4
_ZL3MiB:
	.long	1048576
	.align 4
_ZL3GiB:
	.long	1073741824
.lcomm _ZL9RAM_START,8,8
	.align 8
_ZL8RAM_SIZE:
	.quad	126976
	.align 8
_ZL11koutBufSize:
	.quad	65
.LC0:
	.ascii "[INFO] \0"
.LC1:
	.ascii "start TestMemoryManager\12\0"
.LC2:
	.ascii "[FATAL] \0"
.LC3:
	.ascii " [TEST] `\0"
.LC4:
	.ascii "tmm.memoryChunkMergeCorrectly\0"
.LC5:
	.ascii "` failed.\12\0"
.LC6:
	.ascii "tmm.allocateCorrectly\0"
.LC7:
	.ascii "tmm.nextChunkCorrectly\0"
.LC8:
	.ascii "tmm.deallocateCorrectly\0"
	.align 8
.LC9:
	.ascii "tmm.reallocateInPlaceCollectCorrectly\0"
	.align 8
.LC10:
	.ascii "tmm.reallocateOutOfPlaceMoveCorrectly\0"
	.align 8
.LC11:
	.ascii "tmm.reallocateSmallerCorrectly\0"
.LC12:
	.ascii "end TestMemoryManager\12\0"
	.text
	.align 2
	.globl	_ZN17TestMemoryManager3runEv
	.def	_ZN17TestMemoryManager3runEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN17TestMemoryManager3runEv
_ZN17TestMemoryManager3runEv:
.LFB14:
	.file 1 "D:/Pool/eclipse-workspace_aarch64/newspace/raspiOS/src/test/TestMemoryManager.cpp"
	.loc 1 17 0
	.cfi_startproc
	pushq	%rbp
	.seh_pushreg	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	.loc 1 18 0
	leaq	.LC0(%rip), %rdx
	movq	.refptr.kout(%rip), %rcx
	call	_ZN6OutputlsEPKc
	leaq	.LC1(%rip), %rdx
	movq	%rax, %rcx
	call	_ZN6OutputlsEPKc
	.loc 1 20 0
	leaq	-1(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN17TestMemoryManager25memoryChunkMergeCorrectlyEv
	xorl	$1, %eax
	testb	%al, %al
	je	.L2
	.loc 1 20 0 is_stmt 0 discriminator 1
	leaq	.LC2(%rip), %rdx
	movq	.refptr.kout(%rip), %rcx
	call	_ZN6OutputlsEPKc
	leaq	.LC3(%rip), %rdx
	movq	%rax, %rcx
	call	_ZN6OutputlsEPKc
	leaq	.LC4(%rip), %rdx
	movq	%rax, %rcx
	call	_ZN6OutputlsEPKc
	leaq	.LC5(%rip), %rdx
	movq	%rax, %rcx
	call	_ZN6OutputlsEPKc
.L2:
	.loc 1 21 0 is_stmt 1
	leaq	-1(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN17TestMemoryManager17allocateCorrectlyEv
	xorl	$1, %eax
	testb	%al, %al
	je	.L3
	.loc 1 21 0 is_stmt 0 discriminator 1
	leaq	.LC2(%rip), %rdx
	movq	.refptr.kout(%rip), %rcx
	call	_ZN6OutputlsEPKc
	leaq	.LC3(%rip), %rdx
	movq	%rax, %rcx
	call	_ZN6OutputlsEPKc
	leaq	.LC6(%rip), %rdx
	movq	%rax, %rcx
	call	_ZN6OutputlsEPKc
	leaq	.LC5(%rip), %rdx
	movq	%rax, %rcx
	call	_ZN6OutputlsEPKc
.L3:
	.loc 1 22 0 is_stmt 1
	leaq	-1(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN17TestMemoryManager18nextChunkCorrectlyEv
	xorl	$1, %eax
	testb	%al, %al
	je	.L4
	.loc 1 22 0 is_stmt 0 discriminator 1
	leaq	.LC2(%rip), %rdx
	movq	.refptr.kout(%rip), %rcx
	call	_ZN6OutputlsEPKc
	leaq	.LC3(%rip), %rdx
	movq	%rax, %rcx
	call	_ZN6OutputlsEPKc
	leaq	.LC7(%rip), %rdx
	movq	%rax, %rcx
	call	_ZN6OutputlsEPKc
	leaq	.LC5(%rip), %rdx
	movq	%rax, %rcx
	call	_ZN6OutputlsEPKc
.L4:
	.loc 1 23 0 is_stmt 1
	leaq	-1(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN17TestMemoryManager19deallocateCorrectlyEv
	xorl	$1, %eax
	testb	%al, %al
	je	.L5
	.loc 1 23 0 is_stmt 0 discriminator 1
	leaq	.LC2(%rip), %rdx
	movq	.refptr.kout(%rip), %rcx
	call	_ZN6OutputlsEPKc
	leaq	.LC3(%rip), %rdx
	movq	%rax, %rcx
	call	_ZN6OutputlsEPKc
	leaq	.LC8(%rip), %rdx
	movq	%rax, %rcx
	call	_ZN6OutputlsEPKc
	leaq	.LC5(%rip), %rdx
	movq	%rax, %rcx
	call	_ZN6OutputlsEPKc
.L5:
	.loc 1 24 0 is_stmt 1
	leaq	-1(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN17TestMemoryManager33reallocateInPlaceCollectCorrectlyEv
	xorl	$1, %eax
	testb	%al, %al
	je	.L6
	.loc 1 24 0 is_stmt 0 discriminator 1
	leaq	.LC2(%rip), %rdx
	movq	.refptr.kout(%rip), %rcx
	call	_ZN6OutputlsEPKc
	leaq	.LC3(%rip), %rdx
	movq	%rax, %rcx
	call	_ZN6OutputlsEPKc
	leaq	.LC9(%rip), %rdx
	movq	%rax, %rcx
	call	_ZN6OutputlsEPKc
	leaq	.LC5(%rip), %rdx
	movq	%rax, %rcx
	call	_ZN6OutputlsEPKc
.L6:
	.loc 1 25 0 is_stmt 1
	leaq	-1(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN17TestMemoryManager33reallocateOutOfPlaceMoveCorrectlyEv
	xorl	$1, %eax
	testb	%al, %al
	je	.L7
	.loc 1 25 0 is_stmt 0 discriminator 1
	leaq	.LC2(%rip), %rdx
	movq	.refptr.kout(%rip), %rcx
	call	_ZN6OutputlsEPKc
	leaq	.LC3(%rip), %rdx
	movq	%rax, %rcx
	call	_ZN6OutputlsEPKc
	leaq	.LC10(%rip), %rdx
	movq	%rax, %rcx
	call	_ZN6OutputlsEPKc
	leaq	.LC5(%rip), %rdx
	movq	%rax, %rcx
	call	_ZN6OutputlsEPKc
.L7:
	.loc 1 26 0 is_stmt 1
	leaq	-1(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN17TestMemoryManager26reallocateSmallerCorrectlyEv
	xorl	$1, %eax
	testb	%al, %al
	je	.L8
	.loc 1 26 0 is_stmt 0 discriminator 1
	leaq	.LC2(%rip), %rdx
	movq	.refptr.kout(%rip), %rcx
	call	_ZN6OutputlsEPKc
	leaq	.LC3(%rip), %rdx
	movq	%rax, %rcx
	call	_ZN6OutputlsEPKc
	leaq	.LC11(%rip), %rdx
	movq	%rax, %rcx
	call	_ZN6OutputlsEPKc
	leaq	.LC5(%rip), %rdx
	movq	%rax, %rcx
	call	_ZN6OutputlsEPKc
.L8:
	.loc 1 28 0 is_stmt 1
	leaq	.LC0(%rip), %rdx
	movq	.refptr.kout(%rip), %rcx
	call	_ZN6OutputlsEPKc
	leaq	.LC12(%rip), %rdx
	movq	%rax, %rcx
	call	_ZN6OutputlsEPKc
	.loc 1 29 0
	nop
	addq	$48, %rsp
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14:
	.seh_endproc
	.section .rdata,"dr"
.LC13:
	.ascii "baseChunk->getSize()\0"
.LC14:
	.ascii "!=\0"
.LC15:
	.ascii ",the real value is \0"
.LC16:
	.ascii "\12\0"
	.text
	.align 2
	.globl	_ZN17TestMemoryManager25memoryChunkMergeCorrectlyEv
	.def	_ZN17TestMemoryManager25memoryChunkMergeCorrectlyEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN17TestMemoryManager25memoryChunkMergeCorrectlyEv
_ZN17TestMemoryManager25memoryChunkMergeCorrectlyEv:
.LFB18:
	.loc 1 32 0
	.cfi_startproc
	pushq	%rbp
	.seh_pushreg	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rsi
	.seh_pushreg	%rsi
	.cfi_def_cfa_offset 24
	.cfi_offset 4, -24
	pushq	%rbx
	.seh_pushreg	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	subq	$1184, %rsp
	.seh_stackalloc	1184
	.cfi_def_cfa_offset 1216
	leaq	128(%rsp), %rbp
	.seh_setframe	%rbp, 128
	.cfi_def_cfa 6, 1088
	.seh_endprologue
	movq	%rcx, 1088(%rbp)
	.loc 1 34 0
	movq	$100, -80(%rbp)
	movq	$7, -72(%rbp)
	movq	$5, -64(%rbp)
	movq	$10, -56(%rbp)
	.loc 1 36 0
	leaq	-48(%rbp), %rax
	movq	%rax, 1040(%rbp)
	.loc 1 37 0
	movq	1040(%rbp), %rax
	movl	$0, %edx
	movq	%rax, %rcx
	call	_ZN11MemoryChunk12setAllocatedEb
	.loc 1 38 0
	movq	1040(%rbp), %rax
	movl	$0, %edx
	movq	%rax, %rcx
	call	_ZN11MemoryChunk18setNextBaseFromEndEm
	.loc 1 39 0
	movq	-80(%rbp), %rdx
	movq	1040(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN11MemoryChunk7setSizeEm
	.loc 1 40 0
	movq	1040(%rbp), %rax
	movl	$0, %edx
	movq	%rax, %rcx
	call	_ZN11MemoryChunk23setNextValidChunkOffsetEm
	.loc 1 41 0
	movq	1040(%rbp), %rax
	movl	$0, %edx
	movq	%rax, %rcx
	call	_ZN11MemoryChunk6setEndEb
	.loc 1 42 0
	movq	1040(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNK11MemoryChunk7getSizeEv
	movq	%rax, %rbx
	movq	1040(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNK11MemoryChunk18getNextBaseFromEndEv
	addq	%rbx, %rax
	leaq	8(%rax), %rdx
	leaq	-48(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, 1032(%rbp)
	.loc 1 43 0
	movq	-72(%rbp), %rdx
	movq	1032(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN11MemoryChunk23setNextValidChunkOffsetEm
	.loc 1 45 0
	movq	-72(%rbp), %rdx
	movq	1032(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, 1024(%rbp)
	.loc 1 46 0
	movq	-64(%rbp), %rdx
	movq	1024(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN11MemoryChunk23setNextValidChunkOffsetEm
	.loc 1 48 0
	movq	-64(%rbp), %rdx
	movq	1024(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, 1016(%rbp)
	.loc 1 49 0
	movq	1016(%rbp), %rax
	movl	$0, %edx
	movq	%rax, %rcx
	call	_ZN11MemoryChunk23setNextValidChunkOffsetEm
	.loc 1 50 0
	movq	1016(%rbp), %rax
	movl	$0, %edx
	movq	%rax, %rcx
	call	_ZN11MemoryChunk12setAllocatedEb
	.loc 1 51 0
	movq	1016(%rbp), %rax
	movl	$0, %edx
	movq	%rax, %rcx
	call	_ZN11MemoryChunk18setNextBaseFromEndEm
	.loc 1 52 0
	movq	-56(%rbp), %rdx
	movq	1016(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN11MemoryChunk7setSizeEm
	.loc 1 53 0
	movq	1016(%rbp), %rax
	movl	$0, %edx
	movq	%rax, %rcx
	call	_ZN11MemoryChunk6setEndEb
	.loc 1 55 0
	movq	1016(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN11MemoryChunk10getDataEndEv
	movq	%rax, 1008(%rbp)
	.loc 1 56 0
	movq	1008(%rbp), %rax
	movl	$0, %edx
	movq	%rax, %rcx
	call	_ZN11MemoryChunk23setNextValidChunkOffsetEm
	.loc 1 57 0
	movq	1008(%rbp), %rax
	movl	$1, %edx
	movq	%rax, %rcx
	call	_ZN11MemoryChunk6setEndEb
	.loc 1 59 0
	movq	$0, -88(%rbp)
.LBB2:
	.loc 1 60 0
	leaq	-80(%rbp), %rax
	movq	%rax, 1000(%rbp)
	movq	1000(%rbp), %rax
	movq	%rax, 1048(%rbp)
	movq	1000(%rbp), %rax
	addq	$32, %rax
	movq	%rax, 992(%rbp)
.L11:
	.loc 1 60 0 is_stmt 0 discriminator 3
	movq	1048(%rbp), %rax
	cmpq	992(%rbp), %rax
	je	.L10
	.loc 1 60 0 discriminator 2
	movq	1048(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, 984(%rbp)
	.loc 1 61 0 is_stmt 1 discriminator 2
	movq	-88(%rbp), %rdx
	movq	984(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -88(%rbp)
	.loc 1 60 0 discriminator 2
	addq	$8, 1048(%rbp)
	jmp	.L11
.L10:
.LBE2:
	.loc 1 62 0
	movq	-88(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -88(%rbp)
	.loc 1 64 0
	movq	1040(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN11MemoryChunk25mergeTrailingsUnallocatedEv
	.loc 1 65 0
	movq	1040(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNK11MemoryChunk7getSizeEv
	movq	%rax, %rdx
	movq	-88(%rbp), %rax
	cmpq	%rax, %rdx
	setne	%al
	testb	%al, %al
	je	.L12
	.loc 1 65 0 is_stmt 0 discriminator 1
	movq	1040(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNK11MemoryChunk7getSizeEv
	movq	%rax, %rsi
	movq	-88(%rbp), %rbx
	leaq	.LC2(%rip), %rdx
	movq	.refptr.kout(%rip), %rcx
	call	_ZN6OutputlsEPKc
	leaq	.LC13(%rip), %rdx
	movq	%rax, %rcx
	call	_ZN6OutputlsEPKc
	leaq	.LC14(%rip), %rdx
	movq	%rax, %rcx
	call	_ZN6OutputlsEPKc
	movq	%rbx, %rdx
	movq	%rax, %rcx
	call	_ZN6OutputlsEm
	leaq	.LC15(%rip), %rdx
	movq	%rax, %rcx
	call	_ZN6OutputlsEPKc
	movq	%rsi, %rdx
	movq	%rax, %rcx
	call	_ZN6OutputlsEm
	leaq	.LC16(%rip), %rdx
	movq	%rax, %rcx
	call	_ZN6OutputlsEPKc
.L12:
	.loc 1 67 0 is_stmt 1
	movq	1040(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNK11MemoryChunk7getSizeEv
	movq	%rax, %rdx
	movq	-88(%rbp), %rax
	cmpq	%rax, %rdx
	sete	%al
	.loc 1 68 0
	addq	$1184, %rsp
	popq	%rbx
	.cfi_restore 3
	popq	%rsi
	.cfi_restore 4
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, -1160
	ret
	.cfi_endproc
.LFE18:
	.seh_endproc
	.align 2
	.globl	_ZN17TestMemoryManager40uncontiguousChunkMemoryAllocateCorrectlyEv
	.def	_ZN17TestMemoryManager40uncontiguousChunkMemoryAllocateCorrectlyEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN17TestMemoryManager40uncontiguousChunkMemoryAllocateCorrectlyEv
_ZN17TestMemoryManager40uncontiguousChunkMemoryAllocateCorrectlyEv:
.LFB19:
	.loc 1 71 0
	.cfi_startproc
	pushq	%rbp
	.seh_pushreg	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	subq	$1136, %rsp
	.seh_stackalloc	1136
	.cfi_def_cfa_offset 1152
	leaq	128(%rsp), %rbp
	.seh_setframe	%rbp, 128
	.cfi_def_cfa 6, 1024
	.seh_endprologue
	movq	%rcx, 1024(%rbp)
	.loc 1 75 0
	leaq	-32(%rbp), %rax
	movq	%rax, 1000(%rbp)
	.loc 1 76 0
	movq	1000(%rbp), %rax
	movl	$1015, %edx
	movq	%rax, %rcx
	call	_ZN11MemoryChunk7setSizeEm
	.loc 1 77 0
	movq	1000(%rbp), %rax
	movl	$0, %edx
	movq	%rax, %rcx
	call	_ZN11MemoryChunk18setNextBaseFromEndEm
	.loc 1 78 0
	movq	1000(%rbp), %rax
	movl	$0, %edx
	movq	%rax, %rcx
	call	_ZN11MemoryChunk23setNextValidChunkOffsetEm
	.loc 1 79 0
	movq	1000(%rbp), %rax
	movl	$0, %edx
	movq	%rax, %rcx
	call	_ZN11MemoryChunk12setAllocatedEb
	.loc 1 80 0
	movq	1000(%rbp), %rax
	movl	$0, %edx
	movq	%rax, %rcx
	call	_ZN11MemoryChunk6setEndEb
	.loc 1 82 0
	movq	1000(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN11MemoryChunk10getDataEndEv
	movq	%rax, 992(%rbp)
	.loc 1 83 0
	movq	992(%rbp), %rax
	movl	$1, %edx
	movq	%rax, %rcx
	call	_ZN11MemoryChunk6setEndEb
	.loc 1 85 0
	leaq	-32(%rbp), %rdx
	leaq	-64(%rbp), %rax
	movl	$0, %r9d
	movl	$1024, %r8d
	movq	%rax, %rcx
	call	_ZN13MemoryManagerC1EPvmb
	.loc 1 86 0
	leaq	-32(%rbp), %rdx
	leaq	-96(%rbp), %rax
	movl	$1, %r9d
	movl	$1024, %r8d
	movq	%rax, %rcx
	call	_ZN13MemoryManagerC1EPvmb
	.loc 1 88 0
	movl	$1, %eax
	.loc 1 89 0
	addq	$1136, %rsp
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, -1128
	ret
	.cfi_endproc
.LFE19:
	.seh_endproc
	.section .rdata,"dr"
.LC17:
	.ascii ",\0"
	.text
	.align 2
	.globl	_ZN17TestMemoryManager17allocateCorrectlyEv
	.def	_ZN17TestMemoryManager17allocateCorrectlyEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN17TestMemoryManager17allocateCorrectlyEv
_ZN17TestMemoryManager17allocateCorrectlyEv:
.LFB20:
	.loc 1 92 0
	.cfi_startproc
	pushq	%rbp
	.seh_pushreg	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	subq	$1184, %rsp
	.seh_stackalloc	1184
	.cfi_def_cfa_offset 1200
	leaq	128(%rsp), %rbp
	.seh_setframe	%rbp, 128
	.cfi_def_cfa 6, 1072
	.seh_endprologue
	movq	%rcx, 1072(%rbp)
	.loc 1 95 0
	leaq	-64(%rbp), %rax
	movq	%rax, 1048(%rbp)
	.loc 1 96 0
	movq	1048(%rbp), %rax
	movl	$1015, %edx
	movq	%rax, %rcx
	call	_ZN11MemoryChunk7setSizeEm
	.loc 1 97 0
	movq	1048(%rbp), %rax
	movl	$0, %edx
	movq	%rax, %rcx
	call	_ZN11MemoryChunk18setNextBaseFromEndEm
	.loc 1 98 0
	movq	1048(%rbp), %rax
	movl	$0, %edx
	movq	%rax, %rcx
	call	_ZN11MemoryChunk23setNextValidChunkOffsetEm
	.loc 1 99 0
	movq	1048(%rbp), %rax
	movl	$0, %edx
	movq	%rax, %rcx
	call	_ZN11MemoryChunk12setAllocatedEb
	.loc 1 100 0
	movq	1048(%rbp), %rax
	movl	$0, %edx
	movq	%rax, %rcx
	call	_ZN11MemoryChunk6setEndEb
	.loc 1 102 0
	movq	1048(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN11MemoryChunk10getDataEndEv
	movq	%rax, 1040(%rbp)
	.loc 1 103 0
	movq	1040(%rbp), %rax
	movl	$1, %edx
	movq	%rax, %rcx
	call	_ZN11MemoryChunk6setEndEb
	.loc 1 105 0
	leaq	-64(%rbp), %rdx
	leaq	-96(%rbp), %rax
	movl	$0, %r9d
	movl	$1024, %r8d
	movq	%rax, %rcx
	call	_ZN13MemoryManagerC1EPvmb
	.loc 1 107 0
	leaq	-96(%rbp), %rax
	movl	$500, %edx
	movq	%rax, %rcx
	call	_ZN13MemoryManager10allocateAsIPcEET_m
	movq	%rax, 1032(%rbp)
	.loc 1 108 0
	leaq	-96(%rbp), %rax
	movl	$100, %edx
	movq	%rax, %rcx
	call	_ZN13MemoryManager10allocateAsIPcEET_m
	movq	%rax, 1024(%rbp)
	.loc 1 109 0
	leaq	-96(%rbp), %rax
	movl	$30, %edx
	movq	%rax, %rcx
	call	_ZN13MemoryManager10allocateAsIPcEET_m
	movq	%rax, 1016(%rbp)
	.loc 1 110 0
	leaq	-96(%rbp), %rax
	movl	$400, %edx
	movq	%rax, %rcx
	call	_ZN13MemoryManager10allocateAsIPcEET_m
	movq	%rax, 1008(%rbp)
	.loc 1 111 0
	leaq	-96(%rbp), %rax
	movl	$1000, %edx
	movq	%rax, %rcx
	call	_ZN13MemoryManager10allocateAsIPcEET_m
	movq	%rax, 1000(%rbp)
	.loc 1 116 0
	movq	1000(%rbp), %rdx
	leaq	960(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN16IntegerFormatterILi16EEC1Em
	.loc 1 115 0
	movq	1008(%rbp), %rdx
	leaq	968(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN16IntegerFormatterILi16EEC1Em
	.loc 1 114 0
	movq	1016(%rbp), %rdx
	leaq	976(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN16IntegerFormatterILi16EEC1Em
	.loc 1 113 0
	movq	1024(%rbp), %rdx
	leaq	984(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN16IntegerFormatterILi16EEC1Em
	.loc 1 112 0
	movq	1032(%rbp), %rdx
	leaq	992(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN16IntegerFormatterILi16EEC1Em
	leaq	992(%rbp), %rax
	movq	%rax, %rdx
	movq	.refptr.kout(%rip), %rcx
	call	_ZlsILi16EER6OutputS1_RK16IntegerFormatterIXT_EE
	.loc 1 113 0
	leaq	.LC17(%rip), %rdx
	movq	%rax, %rcx
	call	_ZN6OutputlsEPKc
	movq	%rax, %rcx
	leaq	984(%rbp), %rax
	movq	%rax, %rdx
	call	_ZlsILi16EER6OutputS1_RK16IntegerFormatterIXT_EE
	.loc 1 114 0
	leaq	.LC17(%rip), %rdx
	movq	%rax, %rcx
	call	_ZN6OutputlsEPKc
	movq	%rax, %rcx
	leaq	976(%rbp), %rax
	movq	%rax, %rdx
	call	_ZlsILi16EER6OutputS1_RK16IntegerFormatterIXT_EE
	.loc 1 115 0
	leaq	.LC17(%rip), %rdx
	movq	%rax, %rcx
	call	_ZN6OutputlsEPKc
	movq	%rax, %rcx
	leaq	968(%rbp), %rax
	movq	%rax, %rdx
	call	_ZlsILi16EER6OutputS1_RK16IntegerFormatterIXT_EE
	.loc 1 116 0
	leaq	.LC17(%rip), %rdx
	movq	%rax, %rcx
	call	_ZN6OutputlsEPKc
	movq	%rax, %rcx
	leaq	960(%rbp), %rax
	movq	%rax, %rdx
	call	_ZlsILi16EER6OutputS1_RK16IntegerFormatterIXT_EE
	leaq	.LC16(%rip), %rdx
	movq	%rax, %rcx
	call	_ZN6OutputlsEPKc
	.loc 1 118 0
	cmpq	$0, 1008(%rbp)
	jne	.L17
	.loc 1 118 0 is_stmt 0 discriminator 1
	cmpq	$0, 1000(%rbp)
	jne	.L17
	.loc 1 118 0 discriminator 3
	movl	$1, %eax
	jmp	.L19
.L17:
	.loc 1 118 0 discriminator 4
	movl	$0, %eax
.L19:
	.loc 1 119 0 is_stmt 1
	addq	$1184, %rsp
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, -1176
	ret
	.cfi_endproc
.LFE20:
	.seh_endproc
	.align 2
	.globl	_ZN17TestMemoryManager19deallocateCorrectlyEv
	.def	_ZN17TestMemoryManager19deallocateCorrectlyEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN17TestMemoryManager19deallocateCorrectlyEv
_ZN17TestMemoryManager19deallocateCorrectlyEv:
.LFB21:
	.loc 1 121 0
	.cfi_startproc
	pushq	%rbp
	.seh_pushreg	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	subq	$1120, %rsp
	.seh_stackalloc	1120
	.cfi_def_cfa_offset 1136
	leaq	128(%rsp), %rbp
	.seh_setframe	%rbp, 128
	.cfi_def_cfa 6, 1008
	.seh_endprologue
	movq	%rcx, 1008(%rbp)
	.loc 1 123 0
	leaq	-64(%rbp), %rdx
	leaq	-96(%rbp), %rax
	movl	$1, %r9d
	movl	$1024, %r8d
	movq	%rax, %rcx
	call	_ZN13MemoryManagerC1EPvmb
	.loc 1 124 0
	leaq	-96(%rbp), %rax
	movl	$100, %edx
	movq	%rax, %rcx
	call	_ZN13MemoryManager10allocateAsIPcEET_m
	movq	%rax, 984(%rbp)
	.loc 1 125 0
	movq	984(%rbp), %rax
	subq	$8, %rax
	movq	%rax, 976(%rbp)
	.loc 1 126 0
	movq	976(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNK11MemoryChunk11isAllocatedEv
	testb	%al, %al
	je	.L21
	.loc 1 126 0 is_stmt 0 discriminator 1
	movq	976(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNK11MemoryChunk7getSizeEv
	cmpq	$100, %rax
	jne	.L21
	.loc 1 126 0 discriminator 3
	movl	$1, %eax
	jmp	.L22
.L21:
	.loc 1 126 0 discriminator 4
	movl	$0, %eax
.L22:
	.loc 1 126 0 discriminator 6
	movb	%al, 975(%rbp)
	.loc 1 127 0 is_stmt 1 discriminator 6
	movq	984(%rbp), %rdx
	leaq	-96(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN13MemoryManager10deallocateEPv
	.loc 1 129 0 discriminator 6
	movq	976(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNK11MemoryChunk11isAllocatedEv
	xorl	$1, %eax
	movzbl	975(%rbp), %edx
	movzbl	%al, %eax
	andl	%edx, %eax
	testl	%eax, %eax
	setne	%al
	movb	%al, 975(%rbp)
	.loc 1 130 0 discriminator 6
	movzbl	975(%rbp), %eax
	.loc 1 132 0 discriminator 6
	addq	$1120, %rsp
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, -1112
	ret
	.cfi_endproc
.LFE21:
	.seh_endproc
	.align 2
	.globl	_ZN17TestMemoryManager26reallocateSmallerCorrectlyEv
	.def	_ZN17TestMemoryManager26reallocateSmallerCorrectlyEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN17TestMemoryManager26reallocateSmallerCorrectlyEv
_ZN17TestMemoryManager26reallocateSmallerCorrectlyEv:
.LFB22:
	.loc 1 136 0
	.cfi_startproc
	pushq	%rbp
	.seh_pushreg	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	subq	$1120, %rsp
	.seh_stackalloc	1120
	.cfi_def_cfa_offset 1136
	leaq	128(%rsp), %rbp
	.seh_setframe	%rbp, 128
	.cfi_def_cfa 6, 1008
	.seh_endprologue
	movq	%rcx, 1008(%rbp)
	.loc 1 138 0
	leaq	-64(%rbp), %rdx
	leaq	-96(%rbp), %rax
	movl	$1, %r9d
	movl	$1024, %r8d
	movq	%rax, %rcx
	call	_ZN13MemoryManagerC1EPvmb
	.loc 1 139 0
	leaq	-96(%rbp), %rax
	movl	$100, %edx
	movq	%rax, %rcx
	call	_ZN13MemoryManager10allocateAsIPcEET_m
	movq	%rax, 984(%rbp)
	.loc 1 140 0
	movq	984(%rbp), %rax
	subq	$8, %rax
	movq	%rax, 976(%rbp)
	.loc 1 143 0
	movq	984(%rbp), %rdx
	leaq	-96(%rbp), %rax
	movq	$-1, %r9
	movl	$80, %r8d
	movq	%rax, %rcx
	call	_ZN13MemoryManager12reallocateAsIPcEET_Pvmm
	movq	%rax, 968(%rbp)
	.loc 1 144 0
	movq	968(%rbp), %rax
	cmpq	984(%rbp), %rax
	jne	.L25
	.loc 1 144 0 is_stmt 0 discriminator 1
	movq	976(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNK11MemoryChunk7getSizeEv
	cmpq	$80, %rax
	jne	.L25
	.loc 1 144 0 discriminator 3
	movl	$1, %eax
	jmp	.L27
.L25:
	.loc 1 144 0 discriminator 4
	movl	$0, %eax
.L27:
	.loc 1 145 0 is_stmt 1
	addq	$1120, %rsp
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, -1112
	ret
	.cfi_endproc
.LFE22:
	.seh_endproc
	.align 2
	.globl	_ZN17TestMemoryManager33reallocateInPlaceCollectCorrectlyEv
	.def	_ZN17TestMemoryManager33reallocateInPlaceCollectCorrectlyEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN17TestMemoryManager33reallocateInPlaceCollectCorrectlyEv
_ZN17TestMemoryManager33reallocateInPlaceCollectCorrectlyEv:
.LFB23:
	.loc 1 147 0
	.cfi_startproc
	pushq	%rbp
	.seh_pushreg	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	subq	$1120, %rsp
	.seh_stackalloc	1120
	.cfi_def_cfa_offset 1136
	leaq	128(%rsp), %rbp
	.seh_setframe	%rbp, 128
	.cfi_def_cfa 6, 1008
	.seh_endprologue
	movq	%rcx, 1008(%rbp)
	.loc 1 149 0
	leaq	-64(%rbp), %rdx
	leaq	-96(%rbp), %rax
	movl	$1, %r9d
	movl	$1024, %r8d
	movq	%rax, %rcx
	call	_ZN13MemoryManagerC1EPvmb
	.loc 1 150 0
	leaq	-96(%rbp), %rax
	movl	$100, %edx
	movq	%rax, %rcx
	call	_ZN13MemoryManager10allocateAsIPcEET_m
	movq	%rax, 984(%rbp)
	.loc 1 151 0
	movq	984(%rbp), %rax
	subq	$8, %rax
	movq	%rax, 976(%rbp)
	.loc 1 152 0
	movq	984(%rbp), %rax
	addq	$100, %rax
	movq	%rax, 968(%rbp)
	.loc 1 153 0
	movq	968(%rbp), %rax
	movl	$100, %edx
	movq	%rax, %rcx
	call	_ZN11MemoryChunk9moveAheadEm
	.loc 1 156 0
	movq	984(%rbp), %rdx
	leaq	-96(%rbp), %rax
	movq	$-1, %r9
	movl	$200, %r8d
	movq	%rax, %rcx
	call	_ZN13MemoryManager12reallocateAsIPcEET_Pvmm
	movq	%rax, 960(%rbp)
	.loc 1 158 0
	movq	960(%rbp), %rax
	cmpq	984(%rbp), %rax
	jne	.L29
	.loc 1 158 0 is_stmt 0 discriminator 1
	movq	976(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNK11MemoryChunk7getSizeEv
	cmpq	$200, %rax
	jne	.L29
	.loc 1 158 0 discriminator 3
	movl	$1, %eax
	jmp	.L31
.L29:
	.loc 1 158 0 discriminator 4
	movl	$0, %eax
.L31:
	.loc 1 159 0 is_stmt 1
	addq	$1120, %rsp
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, -1112
	ret
	.cfi_endproc
.LFE23:
	.seh_endproc
	.align 2
	.globl	_ZN17TestMemoryManager33reallocateOutOfPlaceMoveCorrectlyEv
	.def	_ZN17TestMemoryManager33reallocateOutOfPlaceMoveCorrectlyEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN17TestMemoryManager33reallocateOutOfPlaceMoveCorrectlyEv
_ZN17TestMemoryManager33reallocateOutOfPlaceMoveCorrectlyEv:
.LFB24:
	.loc 1 162 0
	.cfi_startproc
	pushq	%rbp
	.seh_pushreg	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	subq	$1120, %rsp
	.seh_stackalloc	1120
	.cfi_def_cfa_offset 1136
	leaq	128(%rsp), %rbp
	.seh_setframe	%rbp, 128
	.cfi_def_cfa 6, 1008
	.seh_endprologue
	movq	%rcx, 1008(%rbp)
	.loc 1 164 0
	leaq	-64(%rbp), %rdx
	leaq	-96(%rbp), %rax
	movl	$1, %r9d
	movl	$1024, %r8d
	movq	%rax, %rcx
	call	_ZN13MemoryManagerC1EPvmb
	.loc 1 165 0
	leaq	-96(%rbp), %rax
	movl	$100, %edx
	movq	%rax, %rcx
	call	_ZN13MemoryManager10allocateAsIPcEET_m
	movq	%rax, 984(%rbp)
	.loc 1 166 0
	movq	984(%rbp), %rax
	subq	$8, %rax
	movq	%rax, 976(%rbp)
	.loc 1 167 0
	leaq	-96(%rbp), %rax
	movl	$100, %edx
	movq	%rax, %rcx
	call	_ZN13MemoryManager10allocateAsIPcEET_m
	movq	%rax, 968(%rbp)
	.loc 1 170 0
	movq	984(%rbp), %rax
	movb	$65, (%rax)
	.loc 1 171 0
	movq	984(%rbp), %rax
	addq	$1, %rax
	movb	$98, (%rax)
	.loc 1 173 0
	movq	984(%rbp), %rdx
	leaq	-96(%rbp), %rax
	movq	$-1, %r9
	movl	$150, %r8d
	movq	%rax, %rcx
	call	_ZN13MemoryManager12reallocateAsIPcEET_Pvmm
	movq	%rax, 960(%rbp)
	.loc 1 174 0
	movq	976(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNK11MemoryChunk11isAllocatedEv
	xorl	$1, %eax
	testb	%al, %al
	je	.L33
	.loc 1 174 0 is_stmt 0 discriminator 1
	movq	960(%rbp), %rax
	subq	$8, %rax
	movq	%rax, %rcx
	call	_ZNK11MemoryChunk11isAllocatedEv
	testb	%al, %al
	je	.L33
	.loc 1 174 0 discriminator 3
	movq	960(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$65, %al
	jne	.L33
	.loc 1 174 0 discriminator 5
	movq	960(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	cmpb	$98, %al
	jne	.L33
	.loc 1 174 0 discriminator 7
	movl	$1, %eax
	jmp	.L35
.L33:
	.loc 1 174 0 discriminator 8
	movl	$0, %eax
.L35:
	.loc 1 177 0 is_stmt 1
	addq	$1120, %rsp
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, -1112
	ret
	.cfi_endproc
.LFE24:
	.seh_endproc
	.align 2
	.globl	_ZN17TestMemoryManager18nextChunkCorrectlyEv
	.def	_ZN17TestMemoryManager18nextChunkCorrectlyEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN17TestMemoryManager18nextChunkCorrectlyEv
_ZN17TestMemoryManager18nextChunkCorrectlyEv:
.LFB25:
	.loc 1 181 0
	.cfi_startproc
	pushq	%rbp
	.seh_pushreg	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	subq	$1104, %rsp
	.seh_stackalloc	1104
	.cfi_def_cfa_offset 1120
	leaq	128(%rsp), %rbp
	.seh_setframe	%rbp, 128
	.cfi_def_cfa 6, 992
	.seh_endprologue
	movq	%rcx, 992(%rbp)
	.loc 1 183 0
	leaq	-64(%rbp), %rdx
	leaq	-96(%rbp), %rax
	movl	$1, %r9d
	movl	$1024, %r8d
	movq	%rax, %rcx
	call	_ZN13MemoryManagerC1EPvmb
	.loc 1 184 0
	leaq	-64(%rbp), %rax
	movq	%rax, 968(%rbp)
	.loc 1 185 0
	movq	968(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN11MemoryChunk7getNextEv
	movq	%rax, %rcx
	call	_ZNK11MemoryChunk5isEndEv
	testb	%al, %al
	je	.L37
	.loc 1 185 0 is_stmt 0 discriminator 1
	movq	968(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN11MemoryChunk7getNextEv
	movq	%rax, %rcx
	call	_ZN11MemoryChunk7getNextEv
	testq	%rax, %rax
	jne	.L37
	.loc 1 185 0 discriminator 3
	movl	$1, %eax
	jmp	.L39
.L37:
	.loc 1 185 0 discriminator 4
	movl	$0, %eax
.L39:
	.loc 1 186 0 is_stmt 1
	addq	$1104, %rsp
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, -1096
	ret
	.cfi_endproc
.LFE25:
	.seh_endproc
	.section	.text$_ZN13MemoryManager10allocateAsIPcEET_m,"x"
	.linkonce discard
	.align 2
	.globl	_ZN13MemoryManager10allocateAsIPcEET_m
	.def	_ZN13MemoryManager10allocateAsIPcEET_m;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN13MemoryManager10allocateAsIPcEET_m
_ZN13MemoryManager10allocateAsIPcEET_m:
.LFB26:
	.file 2 "D:\\Pool\\eclipse-workspace_aarch64\\newspace\\raspiOS\\include/templates_implementation/MemoryManager.h"
	.loc 2 15 0
	.cfi_startproc
	pushq	%rbp
	.seh_pushreg	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	.loc 2 17 0
	movq	24(%rbp), %rax
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	_ZN13MemoryManager8allocateEm
	.loc 2 18 0
	addq	$32, %rsp
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE26:
	.seh_endproc
	.section	.text$_ZN16IntegerFormatterILi16EEC1Em,"x"
	.linkonce discard
	.align 2
	.globl	_ZN16IntegerFormatterILi16EEC1Em
	.def	_ZN16IntegerFormatterILi16EEC1Em;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN16IntegerFormatterILi16EEC1Em
_ZN16IntegerFormatterILi16EEC1Em:
.LFB29:
	.file 3 "D:\\Pool\\eclipse-workspace_aarch64\\newspace\\raspiOS\\include/templates_implementation/IntegerFormatter.h"
	.loc 3 16 0
	.cfi_startproc
	pushq	%rbp
	.seh_pushreg	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.cfi_def_cfa_register 6
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
.LBB3:
	.loc 3 17 0
	movq	16(%rbp), %rax
	movq	24(%rbp), %rdx
	movq	%rdx, (%rax)
.LBE3:
	nop
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE29:
	.seh_endproc
	.section	.text$_ZlsILi16EER6OutputS1_RK16IntegerFormatterIXT_EE,"x"
	.linkonce discard
	.globl	_ZlsILi16EER6OutputS1_RK16IntegerFormatterIXT_EE
	.def	_ZlsILi16EER6OutputS1_RK16IntegerFormatterIXT_EE;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZlsILi16EER6OutputS1_RK16IntegerFormatterIXT_EE
_ZlsILi16EER6OutputS1_RK16IntegerFormatterIXT_EE:
.LFB30:
	.loc 3 31 0
	.cfi_startproc
	pushq	%rbp
	.seh_pushreg	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	.loc 3 33 0
	movq	24(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNK16IntegerFormatterILi16EE6formatEv
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	_ZN6OutputlsEPKc
	.loc 3 34 0
	movq	16(%rbp), %rax
	.loc 3 35 0
	addq	$32, %rsp
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE30:
	.seh_endproc
	.section	.text$_ZN13MemoryManager12reallocateAsIPcEET_Pvmm,"x"
	.linkonce discard
	.align 2
	.globl	_ZN13MemoryManager12reallocateAsIPcEET_Pvmm
	.def	_ZN13MemoryManager12reallocateAsIPcEET_Pvmm;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN13MemoryManager12reallocateAsIPcEET_Pvmm
_ZN13MemoryManager12reallocateAsIPcEET_Pvmm:
.LFB31:
	.loc 2 26 0
	.cfi_startproc
	pushq	%rbp
	.seh_pushreg	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	%r8, 32(%rbp)
	movq	%r9, 40(%rbp)
	.loc 2 28 0
	movq	40(%rbp), %rcx
	movq	32(%rbp), %rdx
	movq	24(%rbp), %rax
	movq	%rcx, %r9
	movq	%rdx, %r8
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	_ZN13MemoryManager10reallocateEPvmm
	.loc 2 29 0
	addq	$32, %rsp
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE31:
	.seh_endproc
	.section	.text$_ZNK16IntegerFormatterILi16EE6formatEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNK16IntegerFormatterILi16EE6formatEv
	.def	_ZNK16IntegerFormatterILi16EE6formatEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNK16IntegerFormatterILi16EE6formatEv
_ZNK16IntegerFormatterILi16EE6formatEv:
.LFB32:
	.loc 3 24 0
	.cfi_startproc
	pushq	%rbp
	.seh_pushreg	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	.loc 3 26 0
	movq	16(%rbp), %rax
	movq	(%rax), %rax
	movl	$65, %r9d
	movq	.refptr.koutBuf(%rip), %r8
	movl	$16, %edx
	movq	%rax, %rcx
	call	_Z4itosmjPcm
	.loc 3 27 0
	movq	.refptr.koutBuf(%rip), %rax
	.loc 3 28 0
	addq	$32, %rsp
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE32:
	.seh_endproc
	.text
	.def	_Z41__static_initialization_and_destruction_0ii;	.scl	3;	.type	32;	.endef
	.seh_proc	_Z41__static_initialization_and_destruction_0ii
_Z41__static_initialization_and_destruction_0ii:
.LFB33:
	.loc 1 186 0
	.cfi_startproc
	pushq	%rbp
	.seh_pushreg	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movl	%ecx, 16(%rbp)
	movl	%edx, 24(%rbp)
	.loc 1 186 0
	cmpl	$1, 16(%rbp)
	jne	.L51
	.loc 1 186 0 is_stmt 0 discriminator 1
	cmpl	$65535, 24(%rbp)
	jne	.L51
	.file 4 "D:\\Pool\\eclipse-workspace_aarch64\\newspace\\raspiOS\\include/memory/mem_config.h"
	.loc 4 19 0 is_stmt 1
	movl	$1048576, %ecx
	call	_Znam
	movq	%rax, _ZL9RAM_START(%rip)
.L51:
	.loc 1 186 0
	nop
	addq	$32, %rsp
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE33:
	.seh_endproc
	.def	_GLOBAL__sub_I__ZN17TestMemoryManager3runEv;	.scl	3;	.type	32;	.endef
	.seh_proc	_GLOBAL__sub_I__ZN17TestMemoryManager3runEv
_GLOBAL__sub_I__ZN17TestMemoryManager3runEv:
.LFB34:
	.loc 1 186 0
	.cfi_startproc
	pushq	%rbp
	.seh_pushreg	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	.loc 1 186 0
	movl	$65535, %edx
	movl	$1, %ecx
	call	_Z41__static_initialization_and_destruction_0ii
	nop
	addq	$32, %rsp
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE34:
	.seh_endproc
	.section	.ctors,"w"
	.align 8
	.quad	_GLOBAL__sub_I__ZN17TestMemoryManager3runEv
	.text
.Letext0:
	.file 5 "/usr/lib/gcc/x86_64-pc-cygwin/6.4.0/include/stddef.h"
	.file 6 "/usr/lib/gcc/x86_64-pc-cygwin/6.4.0/include/c++/cstddef"
	.file 7 "/usr/lib/gcc/x86_64-pc-cygwin/6.4.0/include/c++/cstdint"
	.file 8 "/usr/lib/gcc/x86_64-pc-cygwin/6.4.0/include/stdint-gcc.h"
	.file 9 "D:\\Pool\\eclipse-workspace_aarch64\\newspace\\raspiOS\\include/def.h"
	.file 10 "D:\\Pool\\eclipse-workspace_aarch64\\newspace\\raspiOS\\include/generic_util.h"
	.file 11 "D:\\Pool\\eclipse-workspace_aarch64\\newspace\\raspiOS\\include/memory/MemoryChunk.h"
	.file 12 "D:\\Pool\\eclipse-workspace_aarch64\\newspace\\raspiOS\\include/memory/MemoryManager.h"
	.file 13 "D:\\Pool\\eclipse-workspace_aarch64\\newspace\\raspiOS\\include/io/Output.h"
	.file 14 "D:\\Pool\\eclipse-workspace_aarch64\\newspace\\raspiOS\\include/IntegerFormatter.h"
	.file 15 "D:\\Pool\\eclipse-workspace_aarch64\\newspace\\raspiOS\\include/test/TestMemoryManager.h"
	.file 16 "<built-in>"
	.section	.debug_info,"dr"
.Ldebug_info0:
	.long	0x21d5
	.word	0x4
	.secrel32	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.ascii "GNU C++14 6.4.0 -mtune=generic -march=x86-64 -g3 -O0 -pedantic-errors -std=c++14 -fsigned-char -fmessage-length=0 -fmax-errors=20 -ffreestanding -fno-exceptions -fno-rtti\0"
	.byte	0x4
	.ascii "D:/Pool/eclipse-workspace_aarch64/newspace/raspiOS/src/test/TestMemoryManager.cpp\0"
	.ascii "/cygdrive/d/Pool/eclipse-workspace_aarch64/newspace/raspiOS/subprojects/host/Debug\0"
	.secrel32	.Ldebug_ranges0+0
	.quad	0
	.secrel32	.Ldebug_line0
	.secrel32	.Ldebug_macro0
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.ascii "long int\0"
	.uleb128 0x3
	.ascii "size_t\0"
	.byte	0x5
	.byte	0xd8
	.long	0x190
	.uleb128 0x4
	.long	0x17d
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.ascii "long unsigned int\0"
	.uleb128 0x5
	.byte	0x20
	.byte	0x5
	.word	0x1aa
	.ascii "11max_align_t\0"
	.long	0x1ed
	.uleb128 0x6
	.ascii "__max_align_ll\0"
	.byte	0x5
	.word	0x1ab
	.long	0x1ed
	.byte	0
	.uleb128 0x6
	.ascii "__max_align_ld\0"
	.byte	0x5
	.word	0x1ac
	.long	0x1fe
	.byte	0x10
	.byte	0
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.ascii "long long int\0"
	.uleb128 0x2
	.byte	0x10
	.byte	0x4
	.ascii "long double\0"
	.uleb128 0x7
	.ascii "max_align_t\0"
	.byte	0x5
	.word	0x1ad
	.long	0x1a5
	.uleb128 0x8
	.ascii "decltype(nullptr)\0"
	.uleb128 0x9
	.ascii "std\0"
	.byte	0x10
	.byte	0
	.long	0x30b
	.uleb128 0xa
	.byte	0x6
	.byte	0x38
	.long	0x20d
	.uleb128 0xa
	.byte	0x7
	.byte	0x30
	.long	0x30b
	.uleb128 0xa
	.byte	0x7
	.byte	0x31
	.long	0x328
	.uleb128 0xa
	.byte	0x7
	.byte	0x32
	.long	0x344
	.uleb128 0xa
	.byte	0x7
	.byte	0x33
	.long	0x35f
	.uleb128 0xa
	.byte	0x7
	.byte	0x35
	.long	0x48e
	.uleb128 0xa
	.byte	0x7
	.byte	0x36
	.long	0x4a1
	.uleb128 0xa
	.byte	0x7
	.byte	0x37
	.long	0x4b5
	.uleb128 0xa
	.byte	0x7
	.byte	0x38
	.long	0x4c9
	.uleb128 0xa
	.byte	0x7
	.byte	0x3a
	.long	0x3e4
	.uleb128 0xa
	.byte	0x7
	.byte	0x3b
	.long	0x3f8
	.uleb128 0xa
	.byte	0x7
	.byte	0x3c
	.long	0x40d
	.uleb128 0xa
	.byte	0x7
	.byte	0x3d
	.long	0x422
	.uleb128 0xa
	.byte	0x7
	.byte	0x3f
	.long	0x551
	.uleb128 0xa
	.byte	0x7
	.byte	0x40
	.long	0x530
	.uleb128 0xa
	.byte	0x7
	.byte	0x42
	.long	0x36e
	.uleb128 0xa
	.byte	0x7
	.byte	0x43
	.long	0x38e
	.uleb128 0xa
	.byte	0x7
	.byte	0x44
	.long	0x3b4
	.uleb128 0xa
	.byte	0x7
	.byte	0x45
	.long	0x3d4
	.uleb128 0xa
	.byte	0x7
	.byte	0x47
	.long	0x4dd
	.uleb128 0xa
	.byte	0x7
	.byte	0x48
	.long	0x4f1
	.uleb128 0xa
	.byte	0x7
	.byte	0x49
	.long	0x506
	.uleb128 0xa
	.byte	0x7
	.byte	0x4a
	.long	0x51b
	.uleb128 0xa
	.byte	0x7
	.byte	0x4c
	.long	0x437
	.uleb128 0xa
	.byte	0x7
	.byte	0x4d
	.long	0x44c
	.uleb128 0xa
	.byte	0x7
	.byte	0x4e
	.long	0x462
	.uleb128 0xa
	.byte	0x7
	.byte	0x4f
	.long	0x478
	.uleb128 0xa
	.byte	0x7
	.byte	0x51
	.long	0x561
	.uleb128 0xa
	.byte	0x7
	.byte	0x52
	.long	0x540
	.byte	0
	.uleb128 0x3
	.ascii "int8_t\0"
	.byte	0x8
	.byte	0x22
	.long	0x319
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.ascii "signed char\0"
	.uleb128 0x3
	.ascii "int16_t\0"
	.byte	0x8
	.byte	0x25
	.long	0x337
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.ascii "short int\0"
	.uleb128 0x3
	.ascii "int32_t\0"
	.byte	0x8
	.byte	0x28
	.long	0x353
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.ascii "int\0"
	.uleb128 0x4
	.long	0x353
	.uleb128 0x3
	.ascii "int64_t\0"
	.byte	0x8
	.byte	0x2b
	.long	0x171
	.uleb128 0x3
	.ascii "uint8_t\0"
	.byte	0x8
	.byte	0x2e
	.long	0x37d
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.ascii "unsigned char\0"
	.uleb128 0x3
	.ascii "uint16_t\0"
	.byte	0x8
	.byte	0x31
	.long	0x39e
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.ascii "short unsigned int\0"
	.uleb128 0x3
	.ascii "uint32_t\0"
	.byte	0x8
	.byte	0x34
	.long	0x3c4
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.ascii "unsigned int\0"
	.uleb128 0x3
	.ascii "uint64_t\0"
	.byte	0x8
	.byte	0x37
	.long	0x190
	.uleb128 0x3
	.ascii "int_least8_t\0"
	.byte	0x8
	.byte	0x3c
	.long	0x319
	.uleb128 0x3
	.ascii "int_least16_t\0"
	.byte	0x8
	.byte	0x3d
	.long	0x337
	.uleb128 0x3
	.ascii "int_least32_t\0"
	.byte	0x8
	.byte	0x3e
	.long	0x353
	.uleb128 0x3
	.ascii "int_least64_t\0"
	.byte	0x8
	.byte	0x3f
	.long	0x171
	.uleb128 0x3
	.ascii "uint_least8_t\0"
	.byte	0x8
	.byte	0x40
	.long	0x37d
	.uleb128 0x3
	.ascii "uint_least16_t\0"
	.byte	0x8
	.byte	0x41
	.long	0x39e
	.uleb128 0x3
	.ascii "uint_least32_t\0"
	.byte	0x8
	.byte	0x42
	.long	0x3c4
	.uleb128 0x3
	.ascii "uint_least64_t\0"
	.byte	0x8
	.byte	0x43
	.long	0x190
	.uleb128 0x3
	.ascii "int_fast8_t\0"
	.byte	0x8
	.byte	0x47
	.long	0x319
	.uleb128 0x3
	.ascii "int_fast16_t\0"
	.byte	0x8
	.byte	0x48
	.long	0x171
	.uleb128 0x3
	.ascii "int_fast32_t\0"
	.byte	0x8
	.byte	0x49
	.long	0x171
	.uleb128 0x3
	.ascii "int_fast64_t\0"
	.byte	0x8
	.byte	0x4a
	.long	0x171
	.uleb128 0x3
	.ascii "uint_fast8_t\0"
	.byte	0x8
	.byte	0x4b
	.long	0x37d
	.uleb128 0x3
	.ascii "uint_fast16_t\0"
	.byte	0x8
	.byte	0x4c
	.long	0x190
	.uleb128 0x3
	.ascii "uint_fast32_t\0"
	.byte	0x8
	.byte	0x4d
	.long	0x190
	.uleb128 0x3
	.ascii "uint_fast64_t\0"
	.byte	0x8
	.byte	0x4e
	.long	0x190
	.uleb128 0x3
	.ascii "intptr_t\0"
	.byte	0x8
	.byte	0x53
	.long	0x171
	.uleb128 0x3
	.ascii "uintptr_t\0"
	.byte	0x8
	.byte	0x56
	.long	0x190
	.uleb128 0x3
	.ascii "intmax_t\0"
	.byte	0x8
	.byte	0x5b
	.long	0x171
	.uleb128 0x3
	.ascii "uintmax_t\0"
	.byte	0x8
	.byte	0x5c
	.long	0x190
	.uleb128 0xb
	.long	0x59b
	.long	0x582
	.uleb128 0xc
	.long	0x587
	.byte	0
	.byte	0
	.uleb128 0x4
	.long	0x572
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.ascii "sizetype\0"
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.ascii "char\0"
	.uleb128 0x4
	.long	0x593
	.uleb128 0xd
	.ascii "EMPTY_STR\0"
	.byte	0x9
	.byte	0x16
	.long	0x582
	.uleb128 0xe
	.ascii "UNIT_K\0"
	.byte	0x9
	.byte	0x1a
	.long	0x35a
	.uleb128 0x9
	.byte	0x3
	.quad	_ZL6UNIT_K
	.uleb128 0xe
	.ascii "KiB\0"
	.byte	0x9
	.byte	0x1b
	.long	0x35a
	.uleb128 0x9
	.byte	0x3
	.quad	_ZL3KiB
	.uleb128 0xe
	.ascii "MiB\0"
	.byte	0x9
	.byte	0x1c
	.long	0x35a
	.uleb128 0x9
	.byte	0x3
	.quad	_ZL3MiB
	.uleb128 0xe
	.ascii "GiB\0"
	.byte	0x9
	.byte	0x1d
	.long	0x35a
	.uleb128 0x9
	.byte	0x3
	.quad	_ZL3GiB
	.uleb128 0xb
	.long	0x59b
	.long	0x613
	.uleb128 0xf
	.byte	0
	.uleb128 0xd
	.ascii "digitsMap\0"
	.byte	0xa
	.byte	0x16
	.long	0x608
	.uleb128 0x10
	.secrel32	.LASF0
	.byte	0x8
	.byte	0xb
	.byte	0x16
	.long	0xca3
	.uleb128 0x11
	.byte	0x4
	.long	0x3c4
	.byte	0xb
	.byte	0x19
	.byte	0x1
	.long	0x680
	.uleb128 0x12
	.ascii "ValidBits\0"
	.byte	0x6
	.uleb128 0x12
	.ascii "IsEndBits\0"
	.byte	0x1
	.uleb128 0x12
	.ascii "AllocatedBits\0"
	.byte	0x1
	.uleb128 0x12
	.ascii "SizeBits\0"
	.byte	0x26
	.uleb128 0x12
	.ascii "NextBaseBits\0"
	.byte	0x12
	.byte	0
	.uleb128 0x13
	.ascii "nextValidChunkOffset\0"
	.byte	0xb
	.byte	0x42
	.long	0x3d4
	.byte	0x8
	.byte	0x6
	.byte	0x3a
	.byte	0
	.uleb128 0x13
	.ascii "endMark\0"
	.byte	0xb
	.byte	0x43
	.long	0x3d4
	.byte	0x8
	.byte	0x1
	.byte	0x39
	.byte	0
	.uleb128 0x13
	.ascii "allocated\0"
	.byte	0xb
	.byte	0x44
	.long	0x3d4
	.byte	0x8
	.byte	0x1
	.byte	0x38
	.byte	0
	.uleb128 0x13
	.ascii "size\0"
	.byte	0xb
	.byte	0x45
	.long	0x3d4
	.byte	0x8
	.byte	0x26
	.byte	0x12
	.byte	0
	.uleb128 0x13
	.ascii "nextBaseFromEnd\0"
	.byte	0xb
	.byte	0x46
	.long	0x3d4
	.byte	0x8
	.byte	0x12
	.byte	0
	.byte	0
	.uleb128 0x14
	.secrel32	.LASF0
	.byte	0xb
	.byte	0x1b
	.ascii "_ZN11MemoryChunkC4Embmbm\0"
	.byte	0x1
	.long	0x71c
	.long	0x73b
	.uleb128 0x15
	.long	0xca8
	.uleb128 0x16
	.long	0x17d
	.uleb128 0x16
	.long	0xcae
	.uleb128 0x16
	.long	0x17d
	.uleb128 0x16
	.long	0xcae
	.uleb128 0x16
	.long	0x17d
	.byte	0
	.uleb128 0x17
	.ascii "isAllocated\0"
	.byte	0xb
	.byte	0x1c
	.ascii "_ZNK11MemoryChunk11isAllocatedEv\0"
	.long	0xcae
	.byte	0x1
	.long	0x778
	.long	0x77e
	.uleb128 0x15
	.long	0xcb6
	.byte	0
	.uleb128 0x18
	.ascii "setAllocated\0"
	.byte	0xb
	.byte	0x1d
	.ascii "_ZN11MemoryChunk12setAllocatedEb\0"
	.byte	0x1
	.long	0x7b8
	.long	0x7c3
	.uleb128 0x15
	.long	0xca8
	.uleb128 0x16
	.long	0xcae
	.byte	0
	.uleb128 0x17
	.ascii "isEnd\0"
	.byte	0xb
	.byte	0x1e
	.ascii "_ZNK11MemoryChunk5isEndEv\0"
	.long	0xcae
	.byte	0x1
	.long	0x7f3
	.long	0x7f9
	.uleb128 0x15
	.long	0xcb6
	.byte	0
	.uleb128 0x18
	.ascii "setEnd\0"
	.byte	0xb
	.byte	0x1f
	.ascii "_ZN11MemoryChunk6setEndEb\0"
	.byte	0x1
	.long	0x826
	.long	0x831
	.uleb128 0x15
	.long	0xca8
	.uleb128 0x16
	.long	0xcae
	.byte	0
	.uleb128 0x17
	.ascii "getNext\0"
	.byte	0xb
	.byte	0x20
	.ascii "_ZNK11MemoryChunk7getNextEv\0"
	.long	0xcb6
	.byte	0x1
	.long	0x865
	.long	0x86b
	.uleb128 0x15
	.long	0xcb6
	.byte	0
	.uleb128 0x17
	.ascii "getNext\0"
	.byte	0xb
	.byte	0x21
	.ascii "_ZN11MemoryChunk7getNextEv\0"
	.long	0xca8
	.byte	0x1
	.long	0x89e
	.long	0x8a4
	.uleb128 0x15
	.long	0xca8
	.byte	0
	.uleb128 0x17
	.ascii "getSize\0"
	.byte	0xb
	.byte	0x22
	.ascii "_ZNK11MemoryChunk7getSizeEv\0"
	.long	0x17d
	.byte	0x1
	.long	0x8d8
	.long	0x8de
	.uleb128 0x15
	.long	0xcb6
	.byte	0
	.uleb128 0x18
	.ascii "setSize\0"
	.byte	0xb
	.byte	0x23
	.ascii "_ZN11MemoryChunk7setSizeEm\0"
	.byte	0x1
	.long	0x90d
	.long	0x918
	.uleb128 0x15
	.long	0xca8
	.uleb128 0x16
	.long	0x17d
	.byte	0
	.uleb128 0x19
	.secrel32	.LASF1
	.byte	0xb
	.byte	0x24
	.ascii "_ZN11MemoryChunk10getDataPtrEv\0"
	.long	0xcbc
	.byte	0x1
	.long	0x94b
	.long	0x951
	.uleb128 0x15
	.long	0xca8
	.byte	0
	.uleb128 0x19
	.secrel32	.LASF1
	.byte	0xb
	.byte	0x25
	.ascii "_ZNK11MemoryChunk10getDataPtrEv\0"
	.long	0xcbe
	.byte	0x1
	.long	0x985
	.long	0x98b
	.uleb128 0x15
	.long	0xcb6
	.byte	0
	.uleb128 0x19
	.secrel32	.LASF2
	.byte	0xb
	.byte	0x26
	.ascii "_ZN11MemoryChunk10getDataEndEv\0"
	.long	0xcbc
	.byte	0x1
	.long	0x9be
	.long	0x9c4
	.uleb128 0x15
	.long	0xca8
	.byte	0
	.uleb128 0x19
	.secrel32	.LASF2
	.byte	0xb
	.byte	0x27
	.ascii "_ZNK11MemoryChunk10getDataEndEv\0"
	.long	0xcbe
	.byte	0x1
	.long	0x9f8
	.long	0x9fe
	.uleb128 0x15
	.long	0xcb6
	.byte	0
	.uleb128 0x17
	.ascii "getNextBaseFromEnd\0"
	.byte	0xb
	.byte	0x28
	.ascii "_ZNK11MemoryChunk18getNextBaseFromEndEv\0"
	.long	0x3d4
	.byte	0x1
	.long	0xa49
	.long	0xa4f
	.uleb128 0x15
	.long	0xcb6
	.byte	0
	.uleb128 0x18
	.ascii "setNextBaseFromEnd\0"
	.byte	0xb
	.byte	0x29
	.ascii "_ZN11MemoryChunk18setNextBaseFromEndEm\0"
	.byte	0x1
	.long	0xa95
	.long	0xaa0
	.uleb128 0x15
	.long	0xca8
	.uleb128 0x16
	.long	0x3d4
	.byte	0
	.uleb128 0x17
	.ascii "getNextValidChunkOffset\0"
	.byte	0xb
	.byte	0x2a
	.ascii "_ZNK11MemoryChunk23getNextValidChunkOffsetEv\0"
	.long	0x3d4
	.byte	0x1
	.long	0xaf5
	.long	0xafb
	.uleb128 0x15
	.long	0xcb6
	.byte	0
	.uleb128 0x18
	.ascii "setNextValidChunkOffset\0"
	.byte	0xb
	.byte	0x2b
	.ascii "_ZN11MemoryChunk23setNextValidChunkOffsetEm\0"
	.byte	0x1
	.long	0xb4b
	.long	0xb56
	.uleb128 0x15
	.long	0xca8
	.uleb128 0x16
	.long	0x3d4
	.byte	0
	.uleb128 0x17
	.ascii "moveAhead\0"
	.byte	0xb
	.byte	0x36
	.ascii "_ZN11MemoryChunk9moveAheadEm\0"
	.long	0xca8
	.byte	0x1
	.long	0xb8d
	.long	0xb98
	.uleb128 0x15
	.long	0xca8
	.uleb128 0x16
	.long	0x17d
	.byte	0
	.uleb128 0x17
	.ascii "moveOffsetOfAllocSuchAlignedSpace\0"
	.byte	0xb
	.byte	0x38
	.ascii "_ZNK11MemoryChunk33moveOffsetOfAllocSuchAlignedSpaceEmm\0"
	.long	0x17d
	.byte	0x1
	.long	0xc02
	.long	0xc12
	.uleb128 0x15
	.long	0xcb6
	.uleb128 0x16
	.long	0x17d
	.uleb128 0x16
	.long	0x17d
	.byte	0
	.uleb128 0x17
	.ascii "split\0"
	.byte	0xb
	.byte	0x3a
	.ascii "_ZN11MemoryChunk5splitEm\0"
	.long	0xcae
	.byte	0x1
	.long	0xc41
	.long	0xc4c
	.uleb128 0x15
	.long	0xca8
	.uleb128 0x16
	.long	0x17d
	.byte	0
	.uleb128 0x1a
	.ascii "mergeTrailingsUnallocated\0"
	.byte	0xb
	.byte	0x3e
	.ascii "_ZN11MemoryChunk25mergeTrailingsUnallocatedEv\0"
	.byte	0x1
	.long	0xc9c
	.uleb128 0x15
	.long	0xca8
	.byte	0
	.byte	0
	.uleb128 0x4
	.long	0x624
	.uleb128 0x1b
	.byte	0x8
	.long	0x624
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.ascii "bool\0"
	.uleb128 0x1b
	.byte	0x8
	.long	0xca3
	.uleb128 0x1c
	.byte	0x8
	.uleb128 0x1b
	.byte	0x8
	.long	0xcc4
	.uleb128 0x1d
	.uleb128 0x10
	.secrel32	.LASF3
	.byte	0x18
	.byte	0xc
	.byte	0x19
	.long	0x1094
	.uleb128 0x1e
	.ascii "headChunk\0"
	.byte	0xc
	.byte	0x54
	.long	0xca8
	.byte	0
	.uleb128 0x1f
	.secrel32	.LASF4
	.byte	0xc
	.byte	0x55
	.long	0x1099
	.byte	0x8
	.uleb128 0x1e
	.ascii "size\0"
	.byte	0xc
	.byte	0x56
	.long	0x18b
	.byte	0x10
	.uleb128 0x20
	.secrel32	.LASF3
	.byte	0xc
	.byte	0x1c
	.ascii "_ZN13MemoryManagerC4Ev\0"
	.byte	0x1
	.long	0xd23
	.long	0xd29
	.uleb128 0x15
	.long	0x109f
	.byte	0
	.uleb128 0x14
	.secrel32	.LASF3
	.byte	0xc
	.byte	0x20
	.ascii "_ZN13MemoryManagerC4EPvmb\0"
	.byte	0x1
	.long	0xd53
	.long	0xd68
	.uleb128 0x15
	.long	0x109f
	.uleb128 0x16
	.long	0xcbc
	.uleb128 0x16
	.long	0x17d
	.uleb128 0x16
	.long	0xcae
	.byte	0
	.uleb128 0x17
	.ascii "normalizeAllocSize\0"
	.byte	0xc
	.byte	0x23
	.ascii "_ZN13MemoryManager18normalizeAllocSizeEm\0"
	.long	0x17d
	.byte	0x1
	.long	0xdb4
	.long	0xdbf
	.uleb128 0x15
	.long	0x109f
	.uleb128 0x16
	.long	0x17d
	.byte	0
	.uleb128 0x19
	.secrel32	.LASF5
	.byte	0xc
	.byte	0x26
	.ascii "_ZN13MemoryManager8allocateEm\0"
	.long	0xcbc
	.byte	0x1
	.long	0xdf1
	.long	0xdfc
	.uleb128 0x15
	.long	0x109f
	.uleb128 0x16
	.long	0x17d
	.byte	0
	.uleb128 0x19
	.secrel32	.LASF5
	.byte	0xc
	.byte	0x29
	.ascii "_ZN13MemoryManager8allocateEmm\0"
	.long	0xcbc
	.byte	0x1
	.long	0xe2f
	.long	0xe3f
	.uleb128 0x15
	.long	0x109f
	.uleb128 0x16
	.long	0x17d
	.uleb128 0x16
	.long	0x17d
	.byte	0
	.uleb128 0x17
	.ascii "tryIncrease\0"
	.byte	0xc
	.byte	0x37
	.ascii "_ZN13MemoryManager11tryIncreaseEPvm\0"
	.long	0xcae
	.byte	0x1
	.long	0xe7f
	.long	0xe8f
	.uleb128 0x15
	.long	0x109f
	.uleb128 0x16
	.long	0xcbc
	.uleb128 0x16
	.long	0x17d
	.byte	0
	.uleb128 0x17
	.ascii "tryDecrease\0"
	.byte	0xc
	.byte	0x38
	.ascii "_ZN13MemoryManager11tryDecreaseEPvm\0"
	.long	0xcae
	.byte	0x1
	.long	0xecf
	.long	0xedf
	.uleb128 0x15
	.long	0x109f
	.uleb128 0x16
	.long	0xcbc
	.uleb128 0x16
	.long	0x17d
	.byte	0
	.uleb128 0x17
	.ascii "reallocate\0"
	.byte	0xc
	.byte	0x41
	.ascii "_ZN13MemoryManager10reallocateEPvmm\0"
	.long	0xcbc
	.byte	0x1
	.long	0xf1e
	.long	0xf33
	.uleb128 0x15
	.long	0x109f
	.uleb128 0x16
	.long	0xcbc
	.uleb128 0x16
	.long	0x17d
	.uleb128 0x16
	.long	0x17d
	.byte	0
	.uleb128 0x18
	.ascii "deallocate\0"
	.byte	0xc
	.byte	0x4a
	.ascii "_ZN13MemoryManager10deallocateEPv\0"
	.byte	0x1
	.long	0xf6c
	.long	0xf77
	.uleb128 0x15
	.long	0x109f
	.uleb128 0x16
	.long	0xcbc
	.byte	0
	.uleb128 0x17
	.ascii "getAllocatedLength\0"
	.byte	0xc
	.byte	0x50
	.ascii "_ZNK13MemoryManager18getAllocatedLengthEPv\0"
	.long	0x17d
	.byte	0x1
	.long	0xfc5
	.long	0xfd0
	.uleb128 0x15
	.long	0x10aa
	.uleb128 0x16
	.long	0xcbc
	.byte	0
	.uleb128 0x17
	.ascii "reallocateAs<char*>\0"
	.byte	0x2
	.byte	0x1a
	.ascii "_ZN13MemoryManager12reallocateAsIPcEET_Pvmm\0"
	.long	0x10d7
	.byte	0x1
	.long	0x1027
	.long	0x103c
	.uleb128 0x21
	.ascii "T\0"
	.long	0x10d7
	.uleb128 0x15
	.long	0x109f
	.uleb128 0x16
	.long	0xcbc
	.uleb128 0x16
	.long	0x17d
	.uleb128 0x16
	.long	0x17d
	.byte	0
	.uleb128 0x22
	.ascii "allocateAs<char*>\0"
	.byte	0x2
	.byte	0xf
	.ascii "_ZN13MemoryManager10allocateAsIPcEET_m\0"
	.long	0x10d7
	.byte	0x1
	.long	0x1088
	.uleb128 0x21
	.ascii "T\0"
	.long	0x10d7
	.uleb128 0x15
	.long	0x109f
	.uleb128 0x16
	.long	0x17d
	.byte	0
	.byte	0
	.uleb128 0x4
	.long	0xcc5
	.uleb128 0x1b
	.byte	0x8
	.long	0x59b
	.uleb128 0x1b
	.byte	0x8
	.long	0xcc5
	.uleb128 0x4
	.long	0x109f
	.uleb128 0x1b
	.byte	0x8
	.long	0x1094
	.uleb128 0xd
	.ascii "mman\0"
	.byte	0xc
	.byte	0x5b
	.long	0xcc5
	.uleb128 0xe
	.ascii "RAM_START\0"
	.byte	0x4
	.byte	0x13
	.long	0x10dd
	.uleb128 0x9
	.byte	0x3
	.quad	_ZL9RAM_START
	.uleb128 0x1b
	.byte	0x8
	.long	0x593
	.uleb128 0x4
	.long	0x10d7
	.uleb128 0xe
	.ascii "RAM_SIZE\0"
	.byte	0x4
	.byte	0x14
	.long	0x18b
	.uleb128 0x9
	.byte	0x3
	.quad	_ZL8RAM_SIZE
	.uleb128 0x23
	.ascii "Output\0"
	.byte	0x1
	.byte	0xd
	.byte	0xd
	.long	0x13d8
	.uleb128 0x17
	.ascii "print\0"
	.byte	0xd
	.byte	0xf
	.ascii "_ZN6Output5printEPKcm\0"
	.long	0x17d
	.byte	0x1
	.long	0x1137
	.long	0x1147
	.uleb128 0x15
	.long	0x13d8
	.uleb128 0x16
	.long	0x1099
	.uleb128 0x16
	.long	0x17d
	.byte	0
	.uleb128 0x17
	.ascii "print\0"
	.byte	0xd
	.byte	0x10
	.ascii "_ZN6Output5printEPKc\0"
	.long	0x17d
	.byte	0x1
	.long	0x1172
	.long	0x117d
	.uleb128 0x15
	.long	0x13d8
	.uleb128 0x16
	.long	0x1099
	.byte	0
	.uleb128 0x19
	.secrel32	.LASF6
	.byte	0xd
	.byte	0x11
	.ascii "_ZN6OutputlsEc\0"
	.long	0x13de
	.byte	0x1
	.long	0x11a0
	.long	0x11ab
	.uleb128 0x15
	.long	0x13d8
	.uleb128 0x16
	.long	0x593
	.byte	0
	.uleb128 0x19
	.secrel32	.LASF6
	.byte	0xd
	.byte	0x13
	.ascii "_ZN6OutputlsEh\0"
	.long	0x13de
	.byte	0x1
	.long	0x11ce
	.long	0x11d9
	.uleb128 0x15
	.long	0x13d8
	.uleb128 0x16
	.long	0x36e
	.byte	0
	.uleb128 0x19
	.secrel32	.LASF6
	.byte	0xd
	.byte	0x14
	.ascii "_ZN6OutputlsEt\0"
	.long	0x13de
	.byte	0x1
	.long	0x11fc
	.long	0x1207
	.uleb128 0x15
	.long	0x13d8
	.uleb128 0x16
	.long	0x38e
	.byte	0
	.uleb128 0x19
	.secrel32	.LASF6
	.byte	0xd
	.byte	0x15
	.ascii "_ZN6OutputlsEj\0"
	.long	0x13de
	.byte	0x1
	.long	0x122a
	.long	0x1235
	.uleb128 0x15
	.long	0x13d8
	.uleb128 0x16
	.long	0x3b4
	.byte	0
	.uleb128 0x19
	.secrel32	.LASF6
	.byte	0xd
	.byte	0x16
	.ascii "_ZN6OutputlsEb\0"
	.long	0x13de
	.byte	0x1
	.long	0x1258
	.long	0x1263
	.uleb128 0x15
	.long	0x13d8
	.uleb128 0x16
	.long	0xcae
	.byte	0
	.uleb128 0x19
	.secrel32	.LASF6
	.byte	0xd
	.byte	0x17
	.ascii "_ZN6OutputlsEs\0"
	.long	0x13de
	.byte	0x1
	.long	0x1286
	.long	0x1291
	.uleb128 0x15
	.long	0x13d8
	.uleb128 0x16
	.long	0x337
	.byte	0
	.uleb128 0x19
	.secrel32	.LASF6
	.byte	0xd
	.byte	0x18
	.ascii "_ZN6OutputlsEi\0"
	.long	0x13de
	.byte	0x1
	.long	0x12b4
	.long	0x12bf
	.uleb128 0x15
	.long	0x13d8
	.uleb128 0x16
	.long	0x353
	.byte	0
	.uleb128 0x19
	.secrel32	.LASF6
	.byte	0xd
	.byte	0x19
	.ascii "_ZN6OutputlsEd\0"
	.long	0x13de
	.byte	0x1
	.long	0x12e2
	.long	0x12ed
	.uleb128 0x15
	.long	0x13d8
	.uleb128 0x16
	.long	0x13e9
	.byte	0
	.uleb128 0x19
	.secrel32	.LASF6
	.byte	0xd
	.byte	0x1a
	.ascii "_ZN6OutputlsEPKc\0"
	.long	0x13de
	.byte	0x1
	.long	0x1312
	.long	0x131d
	.uleb128 0x15
	.long	0x13d8
	.uleb128 0x16
	.long	0x1099
	.byte	0
	.uleb128 0x19
	.secrel32	.LASF6
	.byte	0xd
	.byte	0x1b
	.ascii "_ZN6OutputlsEm\0"
	.long	0x13de
	.byte	0x1
	.long	0x1340
	.long	0x134b
	.uleb128 0x15
	.long	0x13d8
	.uleb128 0x16
	.long	0x17d
	.byte	0
	.uleb128 0x19
	.secrel32	.LASF6
	.byte	0xd
	.byte	0x1c
	.ascii "_ZN6OutputlsEPKv\0"
	.long	0x13de
	.byte	0x1
	.long	0x1370
	.long	0x137b
	.uleb128 0x15
	.long	0x13d8
	.uleb128 0x16
	.long	0xcbe
	.byte	0
	.uleb128 0x19
	.secrel32	.LASF6
	.byte	0xd
	.byte	0x1d
	.ascii "_ZN6OutputlsEPVKv\0"
	.long	0x13de
	.byte	0x1
	.long	0x13a1
	.long	0x13ac
	.uleb128 0x15
	.long	0x13d8
	.uleb128 0x16
	.long	0x13f3
	.byte	0
	.uleb128 0x22
	.ascii "flush\0"
	.byte	0xd
	.byte	0x1e
	.ascii "_ZN6Output5flushEv\0"
	.long	0x13de
	.byte	0x1
	.long	0x13d1
	.uleb128 0x15
	.long	0x13d8
	.byte	0
	.byte	0
	.uleb128 0x1b
	.byte	0x8
	.long	0x10fc
	.uleb128 0x24
	.byte	0x8
	.long	0x10fc
	.uleb128 0x4
	.long	0x13de
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.ascii "double\0"
	.uleb128 0x1b
	.byte	0x8
	.long	0x13fa
	.uleb128 0x25
	.uleb128 0x4
	.long	0x13f9
	.uleb128 0xd
	.ascii "kout\0"
	.byte	0xd
	.byte	0x22
	.long	0x10fc
	.uleb128 0xe
	.ascii "koutBufSize\0"
	.byte	0xd
	.byte	0x25
	.long	0x18b
	.uleb128 0x9
	.byte	0x3
	.quad	_ZL11koutBufSize
	.uleb128 0xb
	.long	0x593
	.long	0x1438
	.uleb128 0xc
	.long	0x587
	.byte	0x40
	.byte	0
	.uleb128 0xd
	.ascii "koutBuf\0"
	.byte	0xd
	.byte	0x26
	.long	0x1428
	.uleb128 0x3
	.ascii "Hex\0"
	.byte	0xe
	.byte	0x1a
	.long	0x1452
	.uleb128 0x23
	.ascii "IntegerFormatter<16>\0"
	.byte	0x8
	.byte	0xe
	.byte	0x10
	.long	0x1545
	.uleb128 0x1e
	.ascii "num\0"
	.byte	0xe
	.byte	0x16
	.long	0x17d
	.byte	0
	.uleb128 0x14
	.secrel32	.LASF7
	.byte	0x3
	.byte	0x10
	.ascii "_ZN16IntegerFormatterILi16EEC4Em\0"
	.byte	0x1
	.long	0x14ac
	.long	0x14b7
	.uleb128 0x15
	.long	0x1a22
	.uleb128 0x16
	.long	0x17d
	.byte	0
	.uleb128 0x14
	.secrel32	.LASF7
	.byte	0x3
	.byte	0x14
	.ascii "_ZN16IntegerFormatterILi16EEC4EPKv\0"
	.byte	0x1
	.long	0x14ea
	.long	0x14f5
	.uleb128 0x15
	.long	0x1a22
	.uleb128 0x16
	.long	0xcbe
	.byte	0
	.uleb128 0x17
	.ascii "format\0"
	.byte	0x3
	.byte	0x18
	.ascii "_ZNK16IntegerFormatterILi16EE6formatEv\0"
	.long	0x10d7
	.byte	0x1
	.long	0x1533
	.long	0x1539
	.uleb128 0x15
	.long	0x1a2d
	.byte	0
	.uleb128 0x26
	.ascii "Base\0"
	.long	0x353
	.byte	0x10
	.byte	0
	.uleb128 0x4
	.long	0x1452
	.uleb128 0x10
	.secrel32	.LASF8
	.byte	0x1
	.byte	0xf
	.byte	0xd
	.long	0x1a17
	.uleb128 0x14
	.secrel32	.LASF8
	.byte	0xf
	.byte	0x11
	.ascii "_ZN17TestMemoryManagerC4Ev\0"
	.byte	0x1
	.long	0x1581
	.long	0x1587
	.uleb128 0x15
	.long	0x1a17
	.byte	0
	.uleb128 0x27
	.ascii "run\0"
	.byte	0xf
	.byte	0x12
	.ascii "_ZN17TestMemoryManager3runEv\0"
	.byte	0x1
	.uleb128 0x17
	.ascii "memoryChunkMergeCorrectly\0"
	.byte	0xf
	.byte	0x13
	.ascii "_ZN17TestMemoryManager25memoryChunkMergeCorrectlyEv\0"
	.long	0xcae
	.byte	0x1
	.long	0x160a
	.long	0x1610
	.uleb128 0x15
	.long	0x1a17
	.byte	0
	.uleb128 0x17
	.ascii "memoryChunkSpiltCorrectly\0"
	.byte	0xf
	.byte	0x14
	.ascii "_ZN17TestMemoryManager25memoryChunkSpiltCorrectlyEv\0"
	.long	0xcae
	.byte	0x1
	.long	0x166e
	.long	0x1674
	.uleb128 0x15
	.long	0x1a17
	.byte	0
	.uleb128 0x17
	.ascii "uncontiguousChunkMemoryAllocateCorrectly\0"
	.byte	0xf
	.byte	0x15
	.ascii "_ZN17TestMemoryManager40uncontiguousChunkMemoryAllocateCorrectlyEv\0"
	.long	0xcae
	.byte	0x1
	.long	0x16f0
	.long	0x16f6
	.uleb128 0x15
	.long	0x1a17
	.byte	0
	.uleb128 0x17
	.ascii "allocateCorrectly\0"
	.byte	0xf
	.byte	0x16
	.ascii "_ZN17TestMemoryManager17allocateCorrectlyEv\0"
	.long	0xcae
	.byte	0x1
	.long	0x1744
	.long	0x174a
	.uleb128 0x15
	.long	0x1a17
	.byte	0
	.uleb128 0x17
	.ascii "alignedAllocateCorrectly\0"
	.byte	0xf
	.byte	0x17
	.ascii "_ZN17TestMemoryManager24alignedAllocateCorrectlyEv\0"
	.long	0xcae
	.byte	0x1
	.long	0x17a6
	.long	0x17ac
	.uleb128 0x15
	.long	0x1a17
	.byte	0
	.uleb128 0x17
	.ascii "deallocateCorrectly\0"
	.byte	0xf
	.byte	0x18
	.ascii "_ZN17TestMemoryManager19deallocateCorrectlyEv\0"
	.long	0xcae
	.byte	0x1
	.long	0x17fe
	.long	0x1804
	.uleb128 0x15
	.long	0x1a17
	.byte	0
	.uleb128 0x17
	.ascii "reallocateSmallerCorrectly\0"
	.byte	0xf
	.byte	0x19
	.ascii "_ZN17TestMemoryManager26reallocateSmallerCorrectlyEv\0"
	.long	0xcae
	.byte	0x1
	.long	0x1864
	.long	0x186a
	.uleb128 0x15
	.long	0x1a17
	.byte	0
	.uleb128 0x17
	.ascii "reallocateInPlaceCollectCorrectly\0"
	.byte	0xf
	.byte	0x1a
	.ascii "_ZN17TestMemoryManager33reallocateInPlaceCollectCorrectlyEv\0"
	.long	0xcae
	.byte	0x1
	.long	0x18d8
	.long	0x18de
	.uleb128 0x15
	.long	0x1a17
	.byte	0
	.uleb128 0x17
	.ascii "reallocateOutOfPlaceMoveCorrectly\0"
	.byte	0xf
	.byte	0x1b
	.ascii "_ZN17TestMemoryManager33reallocateOutOfPlaceMoveCorrectlyEv\0"
	.long	0xcae
	.byte	0x1
	.long	0x194c
	.long	0x1952
	.uleb128 0x15
	.long	0x1a17
	.byte	0
	.uleb128 0x17
	.ascii "criticalConditionsStillCorrectly\0"
	.byte	0xf
	.byte	0x1c
	.ascii "_ZN17TestMemoryManager32criticalConditionsStillCorrectlyEv\0"
	.long	0xcae
	.byte	0x1
	.long	0x19be
	.long	0x19c4
	.uleb128 0x15
	.long	0x1a17
	.byte	0
	.uleb128 0x22
	.ascii "nextChunkCorrectly\0"
	.byte	0xf
	.byte	0x1d
	.ascii "_ZN17TestMemoryManager18nextChunkCorrectlyEv\0"
	.long	0xcae
	.byte	0x1
	.long	0x1a10
	.uleb128 0x15
	.long	0x1a17
	.byte	0
	.byte	0
	.uleb128 0x1b
	.byte	0x8
	.long	0x154a
	.uleb128 0x4
	.long	0x1a17
	.uleb128 0x1b
	.byte	0x8
	.long	0x1452
	.uleb128 0x4
	.long	0x1a22
	.uleb128 0x1b
	.byte	0x8
	.long	0x1545
	.uleb128 0x4
	.long	0x1a2d
	.uleb128 0x28
	.ascii "_GLOBAL__sub_I__ZN17TestMemoryManager3runEv\0"
	.quad	.LFB34
	.quad	.LFE34-.LFB34
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x29
	.ascii "__static_initialization_and_destruction_0\0"
	.quad	.LFB33
	.quad	.LFE33-.LFB33
	.uleb128 0x1
	.byte	0x9c
	.long	0x1ae7
	.uleb128 0x2a
	.ascii "__initialize_p\0"
	.byte	0x1
	.byte	0xba
	.long	0x353
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2a
	.ascii "__priority\0"
	.byte	0x1
	.byte	0xba
	.long	0x353
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.byte	0
	.uleb128 0x2b
	.long	0x14f5
	.long	0x1b0a
	.quad	.LFB32
	.quad	.LFE32-.LFB32
	.uleb128 0x1
	.byte	0x9c
	.long	0x1b0a
	.long	0x1b17
	.uleb128 0x2c
	.secrel32	.LASF9
	.long	0x1a33
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.byte	0
	.uleb128 0x2b
	.long	0xfd0
	.long	0x1b41
	.quad	.LFB31
	.quad	.LFE31-.LFB31
	.uleb128 0x1
	.byte	0x9c
	.long	0x1b41
	.long	0x1b83
	.uleb128 0x21
	.ascii "T\0"
	.long	0x10d7
	.uleb128 0x2c
	.secrel32	.LASF9
	.long	0x10a5
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2a
	.ascii "origin\0"
	.byte	0x2
	.byte	0x1a
	.long	0xcbc
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2a
	.ascii "newSize\0"
	.byte	0x2
	.byte	0x1a
	.long	0x17d
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x2a
	.ascii "oldSize\0"
	.byte	0x2
	.byte	0x1a
	.long	0x17d
	.uleb128 0x2
	.byte	0x91
	.sleb128 24
	.byte	0
	.uleb128 0x2d
	.ascii "operator<< <16>\0"
	.byte	0x3
	.byte	0x1f
	.ascii "_ZlsILi16EER6OutputS1_RK16IntegerFormatterIXT_EE\0"
	.long	0x13de
	.quad	.LFB30
	.quad	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.long	0x1c08
	.uleb128 0x26
	.ascii "Base\0"
	.long	0x353
	.byte	0x10
	.uleb128 0x2a
	.ascii "out\0"
	.byte	0x3
	.byte	0x1f
	.long	0x13e4
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2a
	.ascii "hf\0"
	.byte	0x3
	.byte	0x1f
	.long	0x1c0e
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.byte	0
	.uleb128 0x24
	.byte	0x8
	.long	0x1545
	.uleb128 0x4
	.long	0x1c08
	.uleb128 0x2e
	.long	0x147b
	.byte	0
	.long	0x1c21
	.long	0x1c36
	.uleb128 0x2f
	.secrel32	.LASF9
	.long	0x1a28
	.uleb128 0x30
	.ascii "num\0"
	.byte	0x3
	.byte	0x10
	.long	0x17d
	.byte	0
	.uleb128 0x31
	.long	0x1c13
	.ascii "_ZN16IntegerFormatterILi16EEC1Em\0"
	.long	0x1c7a
	.quad	.LFB29
	.quad	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.long	0x1c7a
	.long	0x1c8b
	.uleb128 0x32
	.long	0x1c21
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x32
	.long	0x1c2a
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.byte	0
	.uleb128 0x2b
	.long	0x103c
	.long	0x1cb5
	.quad	.LFB26
	.quad	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.long	0x1cb5
	.long	0x1cce
	.uleb128 0x21
	.ascii "T\0"
	.long	0x10d7
	.uleb128 0x2c
	.secrel32	.LASF9
	.long	0x10a5
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2a
	.ascii "n\0"
	.byte	0x2
	.byte	0xf
	.long	0x17d
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.byte	0
	.uleb128 0x33
	.long	0x19c4
	.byte	0x1
	.byte	0xb4
	.long	0x1cf3
	.quad	.LFB25
	.quad	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.long	0x1cf3
	.long	0x1d2c
	.uleb128 0x2c
	.secrel32	.LASF9
	.long	0x1a1d
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x34
	.secrel32	.LASF4
	.byte	0x1
	.byte	0xb6
	.long	0x1d2c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1056
	.uleb128 0xe
	.ascii "man\0"
	.byte	0x1
	.byte	0xb7
	.long	0xcc5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1088
	.uleb128 0x34
	.secrel32	.LASF10
	.byte	0x1
	.byte	0xb8
	.long	0xca8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xb
	.long	0x593
	.long	0x1d3d
	.uleb128 0x35
	.long	0x587
	.word	0x3ff
	.byte	0
	.uleb128 0x33
	.long	0x18de
	.byte	0x1
	.byte	0xa1
	.long	0x1d62
	.quad	.LFB24
	.quad	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.long	0x1d62
	.long	0x1dc3
	.uleb128 0x2c
	.secrel32	.LASF9
	.long	0x1a1d
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x34
	.secrel32	.LASF4
	.byte	0x1
	.byte	0xa3
	.long	0x1d2c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1072
	.uleb128 0xe
	.ascii "man\0"
	.byte	0x1
	.byte	0xa4
	.long	0xcc5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1104
	.uleb128 0xe
	.ascii "p1\0"
	.byte	0x1
	.byte	0xa5
	.long	0x10d7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x34
	.secrel32	.LASF11
	.byte	0x1
	.byte	0xa6
	.long	0xca8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0xe
	.ascii "p2\0"
	.byte	0x1
	.byte	0xa7
	.long	0x10d7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xe
	.ascii "rp1\0"
	.byte	0x1
	.byte	0xad
	.long	0x10d7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x33
	.long	0x186a
	.byte	0x1
	.byte	0x92
	.long	0x1de8
	.quad	.LFB23
	.quad	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.long	0x1de8
	.long	0x1e51
	.uleb128 0x2c
	.secrel32	.LASF9
	.long	0x1a1d
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x34
	.secrel32	.LASF4
	.byte	0x1
	.byte	0x94
	.long	0x1d2c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1072
	.uleb128 0xe
	.ascii "man\0"
	.byte	0x1
	.byte	0x95
	.long	0xcc5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1104
	.uleb128 0xe
	.ascii "p1\0"
	.byte	0x1
	.byte	0x96
	.long	0x10d7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x34
	.secrel32	.LASF11
	.byte	0x1
	.byte	0x97
	.long	0xca8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0xe
	.ascii "freeChunk1\0"
	.byte	0x1
	.byte	0x98
	.long	0xca8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xe
	.ascii "rp1\0"
	.byte	0x1
	.byte	0x9c
	.long	0x10d7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x33
	.long	0x1804
	.byte	0x1
	.byte	0x87
	.long	0x1e76
	.quad	.LFB22
	.quad	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.long	0x1e76
	.long	0x1eca
	.uleb128 0x2c
	.secrel32	.LASF9
	.long	0x1a1d
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x34
	.secrel32	.LASF4
	.byte	0x1
	.byte	0x89
	.long	0x1d2c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1072
	.uleb128 0xe
	.ascii "man\0"
	.byte	0x1
	.byte	0x8a
	.long	0xcc5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1104
	.uleb128 0xe
	.ascii "p1\0"
	.byte	0x1
	.byte	0x8b
	.long	0x10d7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x34
	.secrel32	.LASF11
	.byte	0x1
	.byte	0x8c
	.long	0xca8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0xe
	.ascii "rp1\0"
	.byte	0x1
	.byte	0x8f
	.long	0x10d7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x33
	.long	0x17ac
	.byte	0x1
	.byte	0x78
	.long	0x1eef
	.quad	.LFB21
	.quad	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.long	0x1eef
	.long	0x1f46
	.uleb128 0x2c
	.secrel32	.LASF9
	.long	0x1a1d
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x34
	.secrel32	.LASF4
	.byte	0x1
	.byte	0x7a
	.long	0x1d2c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1072
	.uleb128 0xe
	.ascii "man\0"
	.byte	0x1
	.byte	0x7b
	.long	0xcc5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1104
	.uleb128 0xe
	.ascii "p1\0"
	.byte	0x1
	.byte	0x7c
	.long	0x10d7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xe
	.ascii "chunk1\0"
	.byte	0x1
	.byte	0x7d
	.long	0xca8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0xe
	.ascii "res\0"
	.byte	0x1
	.byte	0x7e
	.long	0xcae
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.byte	0
	.uleb128 0x33
	.long	0x16f6
	.byte	0x1
	.byte	0x5b
	.long	0x1f6b
	.quad	.LFB20
	.quad	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.long	0x1f6b
	.long	0x1ff4
	.uleb128 0x2c
	.secrel32	.LASF9
	.long	0x1a1d
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x34
	.secrel32	.LASF4
	.byte	0x1
	.byte	0x5d
	.long	0x1d2c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1136
	.uleb128 0x34
	.secrel32	.LASF10
	.byte	0x1
	.byte	0x5f
	.long	0xca8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x34
	.secrel32	.LASF12
	.byte	0x1
	.byte	0x66
	.long	0xca8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0xe
	.ascii "man\0"
	.byte	0x1
	.byte	0x69
	.long	0xcc5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1168
	.uleb128 0xe
	.ascii "p1\0"
	.byte	0x1
	.byte	0x6b
	.long	0x10d7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xe
	.ascii "p2\0"
	.byte	0x1
	.byte	0x6c
	.long	0x10d7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xe
	.ascii "p3\0"
	.byte	0x1
	.byte	0x6d
	.long	0x10d7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0xe
	.ascii "p4\0"
	.byte	0x1
	.byte	0x6e
	.long	0x10d7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0xe
	.ascii "p5\0"
	.byte	0x1
	.byte	0x6f
	.long	0x10d7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.byte	0
	.uleb128 0x33
	.long	0x1674
	.byte	0x1
	.byte	0x46
	.long	0x2019
	.quad	.LFB19
	.quad	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.long	0x2019
	.long	0x2070
	.uleb128 0x2c
	.secrel32	.LASF9
	.long	0x1a1d
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x34
	.secrel32	.LASF4
	.byte	0x1
	.byte	0x48
	.long	0x1d2c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1056
	.uleb128 0x34
	.secrel32	.LASF10
	.byte	0x1
	.byte	0x4b
	.long	0xca8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x34
	.secrel32	.LASF12
	.byte	0x1
	.byte	0x52
	.long	0xca8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0xe
	.ascii "man\0"
	.byte	0x1
	.byte	0x55
	.long	0xcc5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1088
	.uleb128 0xe
	.ascii "man2\0"
	.byte	0x1
	.byte	0x56
	.long	0xcc5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1120
	.byte	0
	.uleb128 0x33
	.long	0x15ac
	.byte	0x1
	.byte	0x1f
	.long	0x2095
	.quad	.LFB18
	.quad	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.long	0x2095
	.long	0x2184
	.uleb128 0x2c
	.secrel32	.LASF9
	.long	0x1a1d
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x34
	.secrel32	.LASF4
	.byte	0x1
	.byte	0x21
	.long	0x1d2c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1136
	.uleb128 0xe
	.ascii "sizes\0"
	.byte	0x1
	.byte	0x22
	.long	0x2184
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1168
	.uleb128 0x34
	.secrel32	.LASF10
	.byte	0x1
	.byte	0x24
	.long	0xca8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xe
	.ascii "chunk2\0"
	.byte	0x1
	.byte	0x2a
	.long	0xca8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0xe
	.ascii "chunk3\0"
	.byte	0x1
	.byte	0x2d
	.long	0xca8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0xe
	.ascii "chunk4\0"
	.byte	0x1
	.byte	0x30
	.long	0xca8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0xe
	.ascii "chunk5\0"
	.byte	0x1
	.byte	0x37
	.long	0xca8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0xe
	.ascii "sumSize\0"
	.byte	0x1
	.byte	0x3b
	.long	0x17d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1176
	.uleb128 0x36
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.uleb128 0xe
	.ascii "i\0"
	.byte	0x1
	.byte	0x3c
	.long	0x190
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x37
	.ascii "__for_range\0"
	.long	0x21a4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x37
	.ascii "__for_begin\0"
	.long	0x21aa
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x37
	.ascii "__for_end\0"
	.long	0x21aa
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.byte	0
	.byte	0
	.uleb128 0xb
	.long	0x17d
	.long	0x2194
	.uleb128 0xc
	.long	0x587
	.byte	0x3
	.byte	0
	.uleb128 0xb
	.long	0x190
	.long	0x21a4
	.uleb128 0xc
	.long	0x587
	.byte	0x3
	.byte	0
	.uleb128 0x24
	.byte	0x8
	.long	0x2194
	.uleb128 0x1b
	.byte	0x8
	.long	0x190
	.uleb128 0x38
	.long	0x1587
	.byte	0x1
	.byte	0x10
	.quad	.LFB14
	.quad	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0xe
	.ascii "tmm\0"
	.byte	0x1
	.byte	0x13
	.long	0x154a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.byte	0
	.byte	0
	.section	.debug_abbrev,"dr"
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0x8
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1b
	.uleb128 0x8
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x10
	.uleb128 0x17
	.uleb128 0x2119
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x6e
	.uleb128 0x8
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x3b
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x39
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x8
	.byte	0
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x18
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x21
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x2
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x4
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x32
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xd
	.uleb128 0xb
	.uleb128 0xc
	.uleb128 0xb
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x6e
	.uleb128 0x8
	.uleb128 0x32
	.uleb128 0xb
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x64
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x34
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x6e
	.uleb128 0x8
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x32
	.uleb128 0xb
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x64
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x6e
	.uleb128 0x8
	.uleb128 0x32
	.uleb128 0xb
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x64
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x6e
	.uleb128 0x8
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x32
	.uleb128 0xb
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x64
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x6e
	.uleb128 0x8
	.uleb128 0x32
	.uleb128 0xb
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x64
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x6e
	.uleb128 0x8
	.uleb128 0x32
	.uleb128 0xb
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x211a
	.uleb128 0x19
	.uleb128 0x64
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x2f
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x6e
	.uleb128 0x8
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x32
	.uleb128 0xb
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x64
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x2
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0x10
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0x35
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x26
	.uleb128 0x30
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x27
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x6e
	.uleb128 0x8
	.uleb128 0x32
	.uleb128 0xb
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x28
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x34
	.uleb128 0x19
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2116
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x29
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x34
	.uleb128 0x19
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x47
	.uleb128 0x13
	.uleb128 0x64
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x64
	.uleb128 0x13
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2c
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x34
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x2d
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x6e
	.uleb128 0x8
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2e
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x47
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x64
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x34
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x30
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x31
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x6e
	.uleb128 0x8
	.uleb128 0x64
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x64
	.uleb128 0x13
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x32
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x33
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x47
	.uleb128 0x13
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x64
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x64
	.uleb128 0x13
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x34
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x35
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x36
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0x37
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x34
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x38
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x47
	.uleb128 0x13
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2116
	.uleb128 0x19
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_aranges,"dr"
	.long	0x7c
	.word	0x2
	.secrel32	.Ldebug_info0
	.byte	0x8
	.byte	0
	.word	0
	.word	0
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.quad	.LFB26
	.quad	.LFE26-.LFB26
	.quad	.LFB29
	.quad	.LFE29-.LFB29
	.quad	.LFB30
	.quad	.LFE30-.LFB30
	.quad	.LFB31
	.quad	.LFE31-.LFB31
	.quad	.LFB32
	.quad	.LFE32-.LFB32
	.quad	0
	.quad	0
	.section	.debug_ranges,"dr"
.Ldebug_ranges0:
	.quad	.Ltext0
	.quad	.Letext0
	.quad	.LFB26
	.quad	.LFE26
	.quad	.LFB29
	.quad	.LFE29
	.quad	.LFB30
	.quad	.LFE30
	.quad	.LFB31
	.quad	.LFE31
	.quad	.LFB32
	.quad	.LFE32
	.quad	0
	.quad	0
	.section	.debug_macro,"dr"
.Ldebug_macro0:
	.word	0x4
	.byte	0x2
	.secrel32	.Ldebug_line0
	.byte	0x3
	.uleb128 0
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x1
	.ascii "__STDC__ 1\0"
	.byte	0x1
	.uleb128 0x2
	.ascii "__cplusplus 201402L\0"
	.byte	0x1
	.uleb128 0x3
	.ascii "__STDC_UTF_16__ 1\0"
	.byte	0x1
	.uleb128 0x4
	.ascii "__STDC_UTF_32__ 1\0"
	.byte	0x1
	.uleb128 0x5
	.ascii "__STDC_HOSTED__ 0\0"
	.byte	0x1
	.uleb128 0x6
	.ascii "__GNUC__ 6\0"
	.byte	0x1
	.uleb128 0x7
	.ascii "__GNUC_MINOR__ 4\0"
	.byte	0x1
	.uleb128 0x8
	.ascii "__GNUC_PATCHLEVEL__ 0\0"
	.byte	0x1
	.uleb128 0x9
	.ascii "__VERSION__ \"6.4.0\"\0"
	.byte	0x1
	.uleb128 0xa
	.ascii "__ATOMIC_RELAXED 0\0"
	.byte	0x1
	.uleb128 0xb
	.ascii "__ATOMIC_SEQ_CST 5\0"
	.byte	0x1
	.uleb128 0xc
	.ascii "__ATOMIC_ACQUIRE 2\0"
	.byte	0x1
	.uleb128 0xd
	.ascii "__ATOMIC_RELEASE 3\0"
	.byte	0x1
	.uleb128 0xe
	.ascii "__ATOMIC_ACQ_REL 4\0"
	.byte	0x1
	.uleb128 0xf
	.ascii "__ATOMIC_CONSUME 1\0"
	.byte	0x1
	.uleb128 0x10
	.ascii "__pic__ 1\0"
	.byte	0x1
	.uleb128 0x11
	.ascii "__PIC__ 1\0"
	.byte	0x1
	.uleb128 0x12
	.ascii "__FINITE_MATH_ONLY__ 0\0"
	.byte	0x1
	.uleb128 0x13
	.ascii "_LP64 1\0"
	.byte	0x1
	.uleb128 0x14
	.ascii "__LP64__ 1\0"
	.byte	0x1
	.uleb128 0x15
	.ascii "__SIZEOF_INT__ 4\0"
	.byte	0x1
	.uleb128 0x16
	.ascii "__SIZEOF_LONG__ 8\0"
	.byte	0x1
	.uleb128 0x17
	.ascii "__SIZEOF_LONG_LONG__ 8\0"
	.byte	0x1
	.uleb128 0x18
	.ascii "__SIZEOF_SHORT__ 2\0"
	.byte	0x1
	.uleb128 0x19
	.ascii "__SIZEOF_FLOAT__ 4\0"
	.byte	0x1
	.uleb128 0x1a
	.ascii "__SIZEOF_DOUBLE__ 8\0"
	.byte	0x1
	.uleb128 0x1b
	.ascii "__SIZEOF_LONG_DOUBLE__ 16\0"
	.byte	0x1
	.uleb128 0x1c
	.ascii "__SIZEOF_SIZE_T__ 8\0"
	.byte	0x1
	.uleb128 0x1d
	.ascii "__CHAR_BIT__ 8\0"
	.byte	0x1
	.uleb128 0x1e
	.ascii "__BIGGEST_ALIGNMENT__ 16\0"
	.byte	0x1
	.uleb128 0x1f
	.ascii "__ORDER_LITTLE_ENDIAN__ 1234\0"
	.byte	0x1
	.uleb128 0x20
	.ascii "__ORDER_BIG_ENDIAN__ 4321\0"
	.byte	0x1
	.uleb128 0x21
	.ascii "__ORDER_PDP_ENDIAN__ 3412\0"
	.byte	0x1
	.uleb128 0x22
	.ascii "__BYTE_ORDER__ __ORDER_LITTLE_ENDIAN__\0"
	.byte	0x1
	.uleb128 0x23
	.ascii "__FLOAT_WORD_ORDER__ __ORDER_LITTLE_ENDIAN__\0"
	.byte	0x1
	.uleb128 0x24
	.ascii "__SIZEOF_POINTER__ 8\0"
	.byte	0x1
	.uleb128 0x25
	.ascii "__GNUG__ 6\0"
	.byte	0x1
	.uleb128 0x26
	.ascii "__SIZE_TYPE__ long unsigned int\0"
	.byte	0x1
	.uleb128 0x27
	.ascii "__PTRDIFF_TYPE__ long int\0"
	.byte	0x1
	.uleb128 0x28
	.ascii "__WCHAR_TYPE__ short unsigned int\0"
	.byte	0x1
	.uleb128 0x29
	.ascii "__WINT_TYPE__ unsigned int\0"
	.byte	0x1
	.uleb128 0x2a
	.ascii "__INTMAX_TYPE__ long int\0"
	.byte	0x1
	.uleb128 0x2b
	.ascii "__UINTMAX_TYPE__ long unsigned int\0"
	.byte	0x1
	.uleb128 0x2c
	.ascii "__CHAR16_TYPE__ short unsigned int\0"
	.byte	0x1
	.uleb128 0x2d
	.ascii "__CHAR32_TYPE__ unsigned int\0"
	.byte	0x1
	.uleb128 0x2e
	.ascii "__SIG_ATOMIC_TYPE__ int\0"
	.byte	0x1
	.uleb128 0x2f
	.ascii "__INT8_TYPE__ signed char\0"
	.byte	0x1
	.uleb128 0x30
	.ascii "__INT16_TYPE__ short int\0"
	.byte	0x1
	.uleb128 0x31
	.ascii "__INT32_TYPE__ int\0"
	.byte	0x1
	.uleb128 0x32
	.ascii "__INT64_TYPE__ long int\0"
	.byte	0x1
	.uleb128 0x33
	.ascii "__UINT8_TYPE__ unsigned char\0"
	.byte	0x1
	.uleb128 0x34
	.ascii "__UINT16_TYPE__ short unsigned int\0"
	.byte	0x1
	.uleb128 0x35
	.ascii "__UINT32_TYPE__ unsigned int\0"
	.byte	0x1
	.uleb128 0x36
	.ascii "__UINT64_TYPE__ long unsigned int\0"
	.byte	0x1
	.uleb128 0x37
	.ascii "__INT_LEAST8_TYPE__ signed char\0"
	.byte	0x1
	.uleb128 0x38
	.ascii "__INT_LEAST16_TYPE__ short int\0"
	.byte	0x1
	.uleb128 0x39
	.ascii "__INT_LEAST32_TYPE__ int\0"
	.byte	0x1
	.uleb128 0x3a
	.ascii "__INT_LEAST64_TYPE__ long int\0"
	.byte	0x1
	.uleb128 0x3b
	.ascii "__UINT_LEAST8_TYPE__ unsigned char\0"
	.byte	0x1
	.uleb128 0x3c
	.ascii "__UINT_LEAST16_TYPE__ short unsigned int\0"
	.byte	0x1
	.uleb128 0x3d
	.ascii "__UINT_LEAST32_TYPE__ unsigned int\0"
	.byte	0x1
	.uleb128 0x3e
	.ascii "__UINT_LEAST64_TYPE__ long unsigned int\0"
	.byte	0x1
	.uleb128 0x3f
	.ascii "__INT_FAST8_TYPE__ signed char\0"
	.byte	0x1
	.uleb128 0x40
	.ascii "__INT_FAST16_TYPE__ long int\0"
	.byte	0x1
	.uleb128 0x41
	.ascii "__INT_FAST32_TYPE__ long int\0"
	.byte	0x1
	.uleb128 0x42
	.ascii "__INT_FAST64_TYPE__ long int\0"
	.byte	0x1
	.uleb128 0x43
	.ascii "__UINT_FAST8_TYPE__ unsigned char\0"
	.byte	0x1
	.uleb128 0x44
	.ascii "__UINT_FAST16_TYPE__ long unsigned int\0"
	.byte	0x1
	.uleb128 0x45
	.ascii "__UINT_FAST32_TYPE__ long unsigned int\0"
	.byte	0x1
	.uleb128 0x46
	.ascii "__UINT_FAST64_TYPE__ long unsigned int\0"
	.byte	0x1
	.uleb128 0x47
	.ascii "__INTPTR_TYPE__ long int\0"
	.byte	0x1
	.uleb128 0x48
	.ascii "__UINTPTR_TYPE__ long unsigned int\0"
	.byte	0x1
	.uleb128 0x49
	.ascii "__has_include(STR) __has_include__(STR)\0"
	.byte	0x1
	.uleb128 0x4a
	.ascii "__has_include_next(STR) __has_include_next__(STR)\0"
	.byte	0x1
	.uleb128 0x4b
	.ascii "__GXX_WEAK__ 1\0"
	.byte	0x1
	.uleb128 0x4c
	.ascii "__DEPRECATED 1\0"
	.byte	0x1
	.uleb128 0x4d
	.ascii "__GXX_EXPERIMENTAL_CXX0X__ 1\0"
	.byte	0x1
	.uleb128 0x4e
	.ascii "__cpp_binary_literals 201304\0"
	.byte	0x1
	.uleb128 0x4f
	.ascii "__cpp_unicode_characters 200704\0"
	.byte	0x1
	.uleb128 0x50
	.ascii "__cpp_raw_strings 200710\0"
	.byte	0x1
	.uleb128 0x51
	.ascii "__cpp_unicode_literals 200710\0"
	.byte	0x1
	.uleb128 0x52
	.ascii "__cpp_user_defined_literals 200809\0"
	.byte	0x1
	.uleb128 0x53
	.ascii "__cpp_lambdas 200907\0"
	.byte	0x1
	.uleb128 0x54
	.ascii "__cpp_range_based_for 200907\0"
	.byte	0x1
	.uleb128 0x55
	.ascii "__cpp_static_assert 200410\0"
	.byte	0x1
	.uleb128 0x56
	.ascii "__cpp_decltype 200707\0"
	.byte	0x1
	.uleb128 0x57
	.ascii "__cpp_attributes 200809\0"
	.byte	0x1
	.uleb128 0x58
	.ascii "__cpp_rvalue_reference 200610\0"
	.byte	0x1
	.uleb128 0x59
	.ascii "__cpp_rvalue_references 200610\0"
	.byte	0x1
	.uleb128 0x5a
	.ascii "__cpp_variadic_templates 200704\0"
	.byte	0x1
	.uleb128 0x5b
	.ascii "__cpp_initializer_lists 200806\0"
	.byte	0x1
	.uleb128 0x5c
	.ascii "__cpp_delegating_constructors 200604\0"
	.byte	0x1
	.uleb128 0x5d
	.ascii "__cpp_nsdmi 200809\0"
	.byte	0x1
	.uleb128 0x5e
	.ascii "__cpp_inheriting_constructors 200802\0"
	.byte	0x1
	.uleb128 0x5f
	.ascii "__cpp_ref_qualifiers 200710\0"
	.byte	0x1
	.uleb128 0x60
	.ascii "__cpp_alias_templates 200704\0"
	.byte	0x1
	.uleb128 0x61
	.ascii "__cpp_return_type_deduction 201304\0"
	.byte	0x1
	.uleb128 0x62
	.ascii "__cpp_init_captures 201304\0"
	.byte	0x1
	.uleb128 0x63
	.ascii "__cpp_generic_lambdas 201304\0"
	.byte	0x1
	.uleb128 0x64
	.ascii "__cpp_constexpr 201304\0"
	.byte	0x1
	.uleb128 0x65
	.ascii "__cpp_decltype_auto 201304\0"
	.byte	0x1
	.uleb128 0x66
	.ascii "__cpp_aggregate_nsdmi 201304\0"
	.byte	0x1
	.uleb128 0x67
	.ascii "__cpp_variable_templates 201304\0"
	.byte	0x1
	.uleb128 0x68
	.ascii "__cpp_digit_separators 201309\0"
	.byte	0x1
	.uleb128 0x69
	.ascii "__cpp_sized_deallocation 201309\0"
	.byte	0x1
	.uleb128 0x6a
	.ascii "__GXX_ABI_VERSION 1010\0"
	.byte	0x1
	.uleb128 0x6b
	.ascii "__SCHAR_MAX__ 0x7f\0"
	.byte	0x1
	.uleb128 0x6c
	.ascii "__SHRT_MAX__ 0x7fff\0"
	.byte	0x1
	.uleb128 0x6d
	.ascii "__INT_MAX__ 0x7fffffff\0"
	.byte	0x1
	.uleb128 0x6e
	.ascii "__LONG_MAX__ 0x7fffffffffffffffL\0"
	.byte	0x1
	.uleb128 0x6f
	.ascii "__LONG_LONG_MAX__ 0x7fffffffffffffffLL\0"
	.byte	0x1
	.uleb128 0x70
	.ascii "__WCHAR_MAX__ 0xffff\0"
	.byte	0x1
	.uleb128 0x71
	.ascii "__WCHAR_MIN__ 0\0"
	.byte	0x1
	.uleb128 0x72
	.ascii "__WINT_MAX__ 0xffffffffU\0"
	.byte	0x1
	.uleb128 0x73
	.ascii "__WINT_MIN__ 0U\0"
	.byte	0x1
	.uleb128 0x74
	.ascii "__PTRDIFF_MAX__ 0x7fffffffffffffffL\0"
	.byte	0x1
	.uleb128 0x75
	.ascii "__SIZE_MAX__ 0xffffffffffffffffUL\0"
	.byte	0x1
	.uleb128 0x76
	.ascii "__INTMAX_MAX__ 0x7fffffffffffffffL\0"
	.byte	0x1
	.uleb128 0x77
	.ascii "__INTMAX_C(c) c ## L\0"
	.byte	0x1
	.uleb128 0x78
	.ascii "__UINTMAX_MAX__ 0xffffffffffffffffUL\0"
	.byte	0x1
	.uleb128 0x79
	.ascii "__UINTMAX_C(c) c ## UL\0"
	.byte	0x1
	.uleb128 0x7a
	.ascii "__SIG_ATOMIC_MAX__ 0x7fffffff\0"
	.byte	0x1
	.uleb128 0x7b
	.ascii "__SIG_ATOMIC_MIN__ (-__SIG_ATOMIC_MAX__ - 1)\0"
	.byte	0x1
	.uleb128 0x7c
	.ascii "__INT8_MAX__ 0x7f\0"
	.byte	0x1
	.uleb128 0x7d
	.ascii "__INT16_MAX__ 0x7fff\0"
	.byte	0x1
	.uleb128 0x7e
	.ascii "__INT32_MAX__ 0x7fffffff\0"
	.byte	0x1
	.uleb128 0x7f
	.ascii "__INT64_MAX__ 0x7fffffffffffffffL\0"
	.byte	0x1
	.uleb128 0x80
	.ascii "__UINT8_MAX__ 0xff\0"
	.byte	0x1
	.uleb128 0x81
	.ascii "__UINT16_MAX__ 0xffff\0"
	.byte	0x1
	.uleb128 0x82
	.ascii "__UINT32_MAX__ 0xffffffffU\0"
	.byte	0x1
	.uleb128 0x83
	.ascii "__UINT64_MAX__ 0xffffffffffffffffUL\0"
	.byte	0x1
	.uleb128 0x84
	.ascii "__INT_LEAST8_MAX__ 0x7f\0"
	.byte	0x1
	.uleb128 0x85
	.ascii "__INT8_C(c) c\0"
	.byte	0x1
	.uleb128 0x86
	.ascii "__INT_LEAST16_MAX__ 0x7fff\0"
	.byte	0x1
	.uleb128 0x87
	.ascii "__INT16_C(c) c\0"
	.byte	0x1
	.uleb128 0x88
	.ascii "__INT_LEAST32_MAX__ 0x7fffffff\0"
	.byte	0x1
	.uleb128 0x89
	.ascii "__INT32_C(c) c\0"
	.byte	0x1
	.uleb128 0x8a
	.ascii "__INT_LEAST64_MAX__ 0x7fffffffffffffffL\0"
	.byte	0x1
	.uleb128 0x8b
	.ascii "__INT64_C(c) c ## L\0"
	.byte	0x1
	.uleb128 0x8c
	.ascii "__UINT_LEAST8_MAX__ 0xff\0"
	.byte	0x1
	.uleb128 0x8d
	.ascii "__UINT8_C(c) c\0"
	.byte	0x1
	.uleb128 0x8e
	.ascii "__UINT_LEAST16_MAX__ 0xffff\0"
	.byte	0x1
	.uleb128 0x8f
	.ascii "__UINT16_C(c) c\0"
	.byte	0x1
	.uleb128 0x90
	.ascii "__UINT_LEAST32_MAX__ 0xffffffffU\0"
	.byte	0x1
	.uleb128 0x91
	.ascii "__UINT32_C(c) c ## U\0"
	.byte	0x1
	.uleb128 0x92
	.ascii "__UINT_LEAST64_MAX__ 0xffffffffffffffffUL\0"
	.byte	0x1
	.uleb128 0x93
	.ascii "__UINT64_C(c) c ## UL\0"
	.byte	0x1
	.uleb128 0x94
	.ascii "__INT_FAST8_MAX__ 0x7f\0"
	.byte	0x1
	.uleb128 0x95
	.ascii "__INT_FAST16_MAX__ 0x7fffffffffffffffL\0"
	.byte	0x1
	.uleb128 0x96
	.ascii "__INT_FAST32_MAX__ 0x7fffffffffffffffL\0"
	.byte	0x1
	.uleb128 0x97
	.ascii "__INT_FAST64_MAX__ 0x7fffffffffffffffL\0"
	.byte	0x1
	.uleb128 0x98
	.ascii "__UINT_FAST8_MAX__ 0xff\0"
	.byte	0x1
	.uleb128 0x99
	.ascii "__UINT_FAST16_MAX__ 0xffffffffffffffffUL\0"
	.byte	0x1
	.uleb128 0x9a
	.ascii "__UINT_FAST32_MAX__ 0xffffffffffffffffUL\0"
	.byte	0x1
	.uleb128 0x9b
	.ascii "__UINT_FAST64_MAX__ 0xffffffffffffffffUL\0"
	.byte	0x1
	.uleb128 0x9c
	.ascii "__INTPTR_MAX__ 0x7fffffffffffffffL\0"
	.byte	0x1
	.uleb128 0x9d
	.ascii "__UINTPTR_MAX__ 0xffffffffffffffffUL\0"
	.byte	0x1
	.uleb128 0x9e
	.ascii "__GCC_IEC_559 2\0"
	.byte	0x1
	.uleb128 0x9f
	.ascii "__GCC_IEC_559_COMPLEX 2\0"
	.byte	0x1
	.uleb128 0xa0
	.ascii "__FLT_EVAL_METHOD__ 0\0"
	.byte	0x1
	.uleb128 0xa1
	.ascii "__DEC_EVAL_METHOD__ 2\0"
	.byte	0x1
	.uleb128 0xa2
	.ascii "__FLT_RADIX__ 2\0"
	.byte	0x1
	.uleb128 0xa3
	.ascii "__FLT_MANT_DIG__ 24\0"
	.byte	0x1
	.uleb128 0xa4
	.ascii "__FLT_DIG__ 6\0"
	.byte	0x1
	.uleb128 0xa5
	.ascii "__FLT_MIN_EXP__ (-125)\0"
	.byte	0x1
	.uleb128 0xa6
	.ascii "__FLT_MIN_10_EXP__ (-37)\0"
	.byte	0x1
	.uleb128 0xa7
	.ascii "__FLT_MAX_EXP__ 128\0"
	.byte	0x1
	.uleb128 0xa8
	.ascii "__FLT_MAX_10_EXP__ 38\0"
	.byte	0x1
	.uleb128 0xa9
	.ascii "__FLT_DECIMAL_DIG__ 9\0"
	.byte	0x1
	.uleb128 0xaa
	.ascii "__FLT_MAX__ 3.40282346638528859812e+38F\0"
	.byte	0x1
	.uleb128 0xab
	.ascii "__FLT_MIN__ 1.17549435082228750797e-38F\0"
	.byte	0x1
	.uleb128 0xac
	.ascii "__FLT_EPSILON__ 1.19209289550781250000e-7F\0"
	.byte	0x1
	.uleb128 0xad
	.ascii "__FLT_DENORM_MIN__ 1.40129846432481707092e-45F\0"
	.byte	0x1
	.uleb128 0xae
	.ascii "__FLT_HAS_DENORM__ 1\0"
	.byte	0x1
	.uleb128 0xaf
	.ascii "__FLT_HAS_INFINITY__ 1\0"
	.byte	0x1
	.uleb128 0xb0
	.ascii "__FLT_HAS_QUIET_NAN__ 1\0"
	.byte	0x1
	.uleb128 0xb1
	.ascii "__DBL_MANT_DIG__ 53\0"
	.byte	0x1
	.uleb128 0xb2
	.ascii "__DBL_DIG__ 15\0"
	.byte	0x1
	.uleb128 0xb3
	.ascii "__DBL_MIN_EXP__ (-1021)\0"
	.byte	0x1
	.uleb128 0xb4
	.ascii "__DBL_MIN_10_EXP__ (-307)\0"
	.byte	0x1
	.uleb128 0xb5
	.ascii "__DBL_MAX_EXP__ 1024\0"
	.byte	0x1
	.uleb128 0xb6
	.ascii "__DBL_MAX_10_EXP__ 308\0"
	.byte	0x1
	.uleb128 0xb7
	.ascii "__DBL_DECIMAL_DIG__ 17\0"
	.byte	0x1
	.uleb128 0xb8
	.ascii "__DBL_MAX__ double(1.79769313486231570815e+308L)\0"
	.byte	0x1
	.uleb128 0xb9
	.ascii "__DBL_MIN__ double(2.22507385850720138309e-308L)\0"
	.byte	0x1
	.uleb128 0xba
	.ascii "__DBL_EPSILON__ double(2.22044604925031308085e-16L)\0"
	.byte	0x1
	.uleb128 0xbb
	.ascii "__DBL_DENORM_MIN__ double(4.94065645841246544177e-324L)\0"
	.byte	0x1
	.uleb128 0xbc
	.ascii "__DBL_HAS_DENORM__ 1\0"
	.byte	0x1
	.uleb128 0xbd
	.ascii "__DBL_HAS_INFINITY__ 1\0"
	.byte	0x1
	.uleb128 0xbe
	.ascii "__DBL_HAS_QUIET_NAN__ 1\0"
	.byte	0x1
	.uleb128 0xbf
	.ascii "__LDBL_MANT_DIG__ 64\0"
	.byte	0x1
	.uleb128 0xc0
	.ascii "__LDBL_DIG__ 18\0"
	.byte	0x1
	.uleb128 0xc1
	.ascii "__LDBL_MIN_EXP__ (-16381)\0"
	.byte	0x1
	.uleb128 0xc2
	.ascii "__LDBL_MIN_10_EXP__ (-4931)\0"
	.byte	0x1
	.uleb128 0xc3
	.ascii "__LDBL_MAX_EXP__ 16384\0"
	.byte	0x1
	.uleb128 0xc4
	.ascii "__LDBL_MAX_10_EXP__ 4932\0"
	.byte	0x1
	.uleb128 0xc5
	.ascii "__DECIMAL_DIG__ 21\0"
	.byte	0x1
	.uleb128 0xc6
	.ascii "__LDBL_MAX__ 1.18973149535723176502e+4932L\0"
	.byte	0x1
	.uleb128 0xc7
	.ascii "__LDBL_MIN__ 3.36210314311209350626e-4932L\0"
	.byte	0x1
	.uleb128 0xc8
	.ascii "__LDBL_EPSILON__ 1.08420217248550443401e-19L\0"
	.byte	0x1
	.uleb128 0xc9
	.ascii "__LDBL_DENORM_MIN__ 3.64519953188247460253e-4951L\0"
	.byte	0x1
	.uleb128 0xca
	.ascii "__LDBL_HAS_DENORM__ 1\0"
	.byte	0x1
	.uleb128 0xcb
	.ascii "__LDBL_HAS_INFINITY__ 1\0"
	.byte	0x1
	.uleb128 0xcc
	.ascii "__LDBL_HAS_QUIET_NAN__ 1\0"
	.byte	0x1
	.uleb128 0xcd
	.ascii "__DEC32_MANT_DIG__ 7\0"
	.byte	0x1
	.uleb128 0xce
	.ascii "__DEC32_MIN_EXP__ (-94)\0"
	.byte	0x1
	.uleb128 0xcf
	.ascii "__DEC32_MAX_EXP__ 97\0"
	.byte	0x1
	.uleb128 0xd0
	.ascii "__DEC32_MIN__ 1E-95DF\0"
	.byte	0x1
	.uleb128 0xd1
	.ascii "__DEC32_MAX__ 9.999999E96DF\0"
	.byte	0x1
	.uleb128 0xd2
	.ascii "__DEC32_EPSILON__ 1E-6DF\0"
	.byte	0x1
	.uleb128 0xd3
	.ascii "__DEC32_SUBNORMAL_MIN__ 0.000001E-95DF\0"
	.byte	0x1
	.uleb128 0xd4
	.ascii "__DEC64_MANT_DIG__ 16\0"
	.byte	0x1
	.uleb128 0xd5
	.ascii "__DEC64_MIN_EXP__ (-382)\0"
	.byte	0x1
	.uleb128 0xd6
	.ascii "__DEC64_MAX_EXP__ 385\0"
	.byte	0x1
	.uleb128 0xd7
	.ascii "__DEC64_MIN__ 1E-383DD\0"
	.byte	0x1
	.uleb128 0xd8
	.ascii "__DEC64_MAX__ 9.999999999999999E384DD\0"
	.byte	0x1
	.uleb128 0xd9
	.ascii "__DEC64_EPSILON__ 1E-15DD\0"
	.byte	0x1
	.uleb128 0xda
	.ascii "__DEC64_SUBNORMAL_MIN__ 0.000000000000001E-383DD\0"
	.byte	0x1
	.uleb128 0xdb
	.ascii "__DEC128_MANT_DIG__ 34\0"
	.byte	0x1
	.uleb128 0xdc
	.ascii "__DEC128_MIN_EXP__ (-6142)\0"
	.byte	0x1
	.uleb128 0xdd
	.ascii "__DEC128_MAX_EXP__ 6145\0"
	.byte	0x1
	.uleb128 0xde
	.ascii "__DEC128_MIN__ 1E-6143DL\0"
	.byte	0x1
	.uleb128 0xdf
	.ascii "__DEC128_MAX__ 9.999999999999999999999999999999999E6144DL\0"
	.byte	0x1
	.uleb128 0xe0
	.ascii "__DEC128_EPSILON__ 1E-33DL\0"
	.byte	0x1
	.uleb128 0xe1
	.ascii "__DEC128_SUBNORMAL_MIN__ 0.000000000000000000000000000000001E-6143DL\0"
	.byte	0x1
	.uleb128 0xe2
	.ascii "__REGISTER_PREFIX__ \0"
	.byte	0x1
	.uleb128 0xe3
	.ascii "__USER_LABEL_PREFIX__ \0"
	.byte	0x1
	.uleb128 0xe4
	.ascii "__GNUC_STDC_INLINE__ 1\0"
	.byte	0x1
	.uleb128 0xe5
	.ascii "__NO_INLINE__ 1\0"
	.byte	0x1
	.uleb128 0xe6
	.ascii "__STRICT_ANSI__ 1\0"
	.byte	0x1
	.uleb128 0xe7
	.ascii "__WCHAR_UNSIGNED__ 1\0"
	.byte	0x1
	.uleb128 0xe8
	.ascii "__GCC_HAVE_SYNC_COMPARE_AND_SWAP_1 1\0"
	.byte	0x1
	.uleb128 0xe9
	.ascii "__GCC_HAVE_SYNC_COMPARE_AND_SWAP_2 1\0"
	.byte	0x1
	.uleb128 0xea
	.ascii "__GCC_HAVE_SYNC_COMPARE_AND_SWAP_4 1\0"
	.byte	0x1
	.uleb128 0xeb
	.ascii "__GCC_HAVE_SYNC_COMPARE_AND_SWAP_8 1\0"
	.byte	0x1
	.uleb128 0xec
	.ascii "__GCC_ATOMIC_BOOL_LOCK_FREE 2\0"
	.byte	0x1
	.uleb128 0xed
	.ascii "__GCC_ATOMIC_CHAR_LOCK_FREE 2\0"
	.byte	0x1
	.uleb128 0xee
	.ascii "__GCC_ATOMIC_CHAR16_T_LOCK_FREE 2\0"
	.byte	0x1
	.uleb128 0xef
	.ascii "__GCC_ATOMIC_CHAR32_T_LOCK_FREE 2\0"
	.byte	0x1
	.uleb128 0xf0
	.ascii "__GCC_ATOMIC_WCHAR_T_LOCK_FREE 2\0"
	.byte	0x1
	.uleb128 0xf1
	.ascii "__GCC_ATOMIC_SHORT_LOCK_FREE 2\0"
	.byte	0x1
	.uleb128 0xf2
	.ascii "__GCC_ATOMIC_INT_LOCK_FREE 2\0"
	.byte	0x1
	.uleb128 0xf3
	.ascii "__GCC_ATOMIC_LONG_LOCK_FREE 2\0"
	.byte	0x1
	.uleb128 0xf4
	.ascii "__GCC_ATOMIC_LLONG_LOCK_FREE 2\0"
	.byte	0x1
	.uleb128 0xf5
	.ascii "__GCC_ATOMIC_TEST_AND_SET_TRUEVAL 1\0"
	.byte	0x1
	.uleb128 0xf6
	.ascii "__GCC_ATOMIC_POINTER_LOCK_FREE 2\0"
	.byte	0x1
	.uleb128 0xf7
	.ascii "__GCC_HAVE_DWARF2_CFI_ASM 1\0"
	.byte	0x1
	.uleb128 0xf8
	.ascii "__PRAGMA_REDEFINE_EXTNAME 1\0"
	.byte	0x1
	.uleb128 0xf9
	.ascii "__SIZEOF_INT128__ 16\0"
	.byte	0x1
	.uleb128 0xfa
	.ascii "__SIZEOF_WCHAR_T__ 2\0"
	.byte	0x1
	.uleb128 0xfb
	.ascii "__SIZEOF_WINT_T__ 4\0"
	.byte	0x1
	.uleb128 0xfc
	.ascii "__SIZEOF_PTRDIFF_T__ 8\0"
	.byte	0x1
	.uleb128 0xfd
	.ascii "__amd64 1\0"
	.byte	0x1
	.uleb128 0xfe
	.ascii "__amd64__ 1\0"
	.byte	0x1
	.uleb128 0xff
	.ascii "__x86_64 1\0"
	.byte	0x1
	.uleb128 0x100
	.ascii "__x86_64__ 1\0"
	.byte	0x1
	.uleb128 0x101
	.ascii "__SIZEOF_FLOAT80__ 16\0"
	.byte	0x1
	.uleb128 0x102
	.ascii "__SIZEOF_FLOAT128__ 16\0"
	.byte	0x1
	.uleb128 0x103
	.ascii "__ATOMIC_HLE_ACQUIRE 65536\0"
	.byte	0x1
	.uleb128 0x104
	.ascii "__ATOMIC_HLE_RELEASE 131072\0"
	.byte	0x1
	.uleb128 0x105
	.ascii "__GCC_ASM_FLAG_OUTPUTS__ 1\0"
	.byte	0x1
	.uleb128 0x106
	.ascii "__k8 1\0"
	.byte	0x1
	.uleb128 0x107
	.ascii "__k8__ 1\0"
	.byte	0x1
	.uleb128 0x108
	.ascii "__code_model_medium__ 1\0"
	.byte	0x1
	.uleb128 0x109
	.ascii "__MMX__ 1\0"
	.byte	0x1
	.uleb128 0x10a
	.ascii "__SSE__ 1\0"
	.byte	0x1
	.uleb128 0x10b
	.ascii "__SSE2__ 1\0"
	.byte	0x1
	.uleb128 0x10c
	.ascii "__FXSR__ 1\0"
	.byte	0x1
	.uleb128 0x10d
	.ascii "__SSE_MATH__ 1\0"
	.byte	0x1
	.uleb128 0x10e
	.ascii "__SSE2_MATH__ 1\0"
	.byte	0x1
	.uleb128 0x10f
	.ascii "__SEG_FS 1\0"
	.byte	0x1
	.uleb128 0x110
	.ascii "__SEG_GS 1\0"
	.byte	0x1
	.uleb128 0x111
	.ascii "__SEH__ 1\0"
	.byte	0x1
	.uleb128 0x112
	.ascii "__stdcall __attribute__((__stdcall__))\0"
	.byte	0x1
	.uleb128 0x113
	.ascii "__fastcall __attribute__((__fastcall__))\0"
	.byte	0x1
	.uleb128 0x114
	.ascii "__thiscall __attribute__((__thiscall__))\0"
	.byte	0x1
	.uleb128 0x115
	.ascii "__cdecl __attribute__((__cdecl__))\0"
	.byte	0x1
	.uleb128 0x116
	.ascii "__GXX_MERGED_TYPEINFO_NAMES 0\0"
	.byte	0x1
	.uleb128 0x117
	.ascii "__GXX_TYPEINFO_EQUALITY_INLINE 0\0"
	.byte	0x1
	.uleb128 0x118
	.ascii "__CYGWIN__ 1\0"
	.byte	0x1
	.uleb128 0x119
	.ascii "__unix__ 1\0"
	.byte	0x1
	.uleb128 0x11a
	.ascii "__unix 1\0"
	.byte	0x1
	.uleb128 0x11b
	.ascii "__declspec(x) __attribute__((x))\0"
	.byte	0x1
	.uleb128 0x11c
	.ascii "__DECIMAL_BID_FORMAT__ 1\0"
	.byte	0x1
	.uleb128 0x1
	.ascii "unix 1\0"
	.file 17 "./cxx_macros.h"
	.byte	0x3
	.uleb128 0x2
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x3
	.ascii "CXX_MACROS_H__ \0"
	.byte	0x1
	.uleb128 0x5
	.ascii "TARGET_ARCH_IS_host \0"
	.byte	0x4
	.byte	0x3
	.uleb128 0x9
	.uleb128 0xc
	.byte	0x1
	.uleb128 0x9
	.ascii "INCLUDE_MEMORYMANAGER_H_ \0"
	.byte	0x3
	.uleb128 0xb
	.uleb128 0x9
	.byte	0x1
	.uleb128 0x3
	.ascii "DEF_H__ \0"
	.byte	0x3
	.uleb128 0x8
	.uleb128 0x6
	.byte	0x1
	.uleb128 0x28
	.ascii "_GLIBCXX_CSTDDEF 1\0"
	.byte	0x2
	.uleb128 0x2c
	.ascii "__need_wchar_t\0"
	.byte	0x2
	.uleb128 0x2d
	.ascii "__need_ptrdiff_t\0"
	.byte	0x2
	.uleb128 0x2e
	.ascii "__need_size_t\0"
	.byte	0x2
	.uleb128 0x2f
	.ascii "__need_NULL\0"
	.byte	0x2
	.uleb128 0x30
	.ascii "__need_wint_t\0"
	.file 18 "/usr/lib/gcc/x86_64-pc-cygwin/6.4.0/include/c++/x86_64-pc-cygwin/bits/c++config.h"
	.byte	0x3
	.uleb128 0x31
	.uleb128 0x12
	.byte	0x1
	.uleb128 0x1f
	.ascii "_GLIBCXX_CXX_CONFIG_H 1\0"
	.byte	0x1
	.uleb128 0x22
	.ascii "__GLIBCXX__ 20170704\0"
	.byte	0x1
	.uleb128 0x2b
	.ascii "_GLIBCXX_PURE __attribute__ ((__pure__))\0"
	.byte	0x1
	.uleb128 0x2f
	.ascii "_GLIBCXX_CONST __attribute__ ((__const__))\0"
	.byte	0x1
	.uleb128 0x33
	.ascii "_GLIBCXX_NORETURN __attribute__ ((__noreturn__))\0"
	.byte	0x1
	.uleb128 0x40
	.ascii "_GLIBCXX_HAVE_ATTRIBUTE_VISIBILITY 0\0"
	.byte	0x1
	.uleb128 0x47
	.ascii "_GLIBCXX_VISIBILITY(V) _GLIBCXX_PSEUDO_VISIBILITY(V)\0"
	.byte	0x1
	.uleb128 0x4e
	.ascii "_GLIBCXX_USE_DEPRECATED 1\0"
	.byte	0x1
	.uleb128 0x52
	.ascii "_GLIBCXX_DEPRECATED __attribute__ ((__deprecated__))\0"
	.byte	0x1
	.uleb128 0x59
	.ascii "_GLIBCXX_ABI_TAG_CXX11 __attribute ((__abi_tag__ (\"cxx11\")))\0"
	.byte	0x1
	.uleb128 0x62
	.ascii "_GLIBCXX_CONSTEXPR constexpr\0"
	.byte	0x1
	.uleb128 0x63
	.ascii "_GLIBCXX_USE_CONSTEXPR constexpr\0"
	.byte	0x1
	.uleb128 0x6c
	.ascii "_GLIBCXX14_CONSTEXPR constexpr\0"
	.byte	0x1
	.uleb128 0x75
	.ascii "_GLIBCXX_NOEXCEPT noexcept\0"
	.byte	0x1
	.uleb128 0x76
	.ascii "_GLIBCXX_NOEXCEPT_IF(_COND) noexcept(_COND)\0"
	.byte	0x1
	.uleb128 0x77
	.ascii "_GLIBCXX_USE_NOEXCEPT noexcept\0"
	.byte	0x1
	.uleb128 0x78
	.ascii "_GLIBCXX_THROW(_EXC) \0"
	.byte	0x1
	.uleb128 0x82
	.ascii "_GLIBCXX_NOTHROW _GLIBCXX_USE_NOEXCEPT\0"
	.byte	0x1
	.uleb128 0x89
	.ascii "_GLIBCXX_THROW_OR_ABORT(_EXC) (__builtin_abort())\0"
	.byte	0x1
	.uleb128 0x97
	.ascii "_GLIBCXX_EXTERN_TEMPLATE 1\0"
	.byte	0x1
	.uleb128 0xd1
	.ascii "_GLIBCXX_USE_DUAL_ABI 1\0"
	.byte	0x1
	.uleb128 0xd9
	.ascii "_GLIBCXX_USE_CXX11_ABI 0\0"
	.byte	0x1
	.uleb128 0xea
	.ascii "_GLIBCXX_NAMESPACE_CXX11 \0"
	.byte	0x1
	.uleb128 0xeb
	.ascii "_GLIBCXX_BEGIN_NAMESPACE_CXX11 \0"
	.byte	0x1
	.uleb128 0xec
	.ascii "_GLIBCXX_END_NAMESPACE_CXX11 \0"
	.byte	0x1
	.uleb128 0xed
	.ascii "_GLIBCXX_DEFAULT_ABI_TAG \0"
	.byte	0x1
	.uleb128 0xf2
	.ascii "_GLIBCXX_INLINE_VERSION 0\0"
	.byte	0x1
	.uleb128 0x120
	.ascii "_GLIBCXX_BEGIN_NAMESPACE_VERSION \0"
	.byte	0x1
	.uleb128 0x121
	.ascii "_GLIBCXX_END_NAMESPACE_VERSION \0"
	.byte	0x1
	.uleb128 0x173
	.ascii "_GLIBCXX_STD_A std\0"
	.byte	0x1
	.uleb128 0x177
	.ascii "_GLIBCXX_STD_C std\0"
	.byte	0x1
	.uleb128 0x17b
	.ascii "_GLIBCXX_BEGIN_NAMESPACE_ALGO \0"
	.byte	0x1
	.uleb128 0x17f
	.ascii "_GLIBCXX_END_NAMESPACE_ALGO \0"
	.byte	0x1
	.uleb128 0x183
	.ascii "_GLIBCXX_BEGIN_NAMESPACE_CONTAINER \0"
	.byte	0x1
	.uleb128 0x187
	.ascii "_GLIBCXX_END_NAMESPACE_CONTAINER \0"
	.byte	0x2
	.uleb128 0x18c
	.ascii "_GLIBCXX_LONG_DOUBLE_COMPAT\0"
	.byte	0x1
	.uleb128 0x198
	.ascii "_GLIBCXX_NAMESPACE_LDBL \0"
	.byte	0x1
	.uleb128 0x199
	.ascii "_GLIBCXX_BEGIN_NAMESPACE_LDBL \0"
	.byte	0x1
	.uleb128 0x19a
	.ascii "_GLIBCXX_END_NAMESPACE_LDBL \0"
	.byte	0x1
	.uleb128 0x1a1
	.ascii "_GLIBCXX_NAMESPACE_LDBL_OR_CXX11 _GLIBCXX_NAMESPACE_LDBL\0"
	.byte	0x1
	.uleb128 0x1a2
	.ascii "_GLIBCXX_BEGIN_NAMESPACE_LDBL_OR_CXX11 _GLIBCXX_BEGIN_NAMESPACE_LDBL\0"
	.byte	0x1
	.uleb128 0x1a3
	.ascii "_GLIBCXX_END_NAMESPACE_LDBL_OR_CXX11 _GLIBCXX_END_NAMESPACE_LDBL\0"
	.byte	0x1
	.uleb128 0x1cd
	.ascii "__glibcxx_assert(_Condition) \0"
	.byte	0x1
	.uleb128 0x1e6
	.ascii "_GLIBCXX_SYNCHRONIZATION_HAPPENS_BEFORE(A) \0"
	.byte	0x1
	.uleb128 0x1e9
	.ascii "_GLIBCXX_SYNCHRONIZATION_HAPPENS_AFTER(A) \0"
	.byte	0x1
	.uleb128 0x1ed
	.ascii "_GLIBCXX_BEGIN_EXTERN_C extern \"C\" {\0"
	.byte	0x1
	.uleb128 0x1ee
	.ascii "_GLIBCXX_END_EXTERN_C }\0"
	.byte	0x1
	.uleb128 0x1f0
	.ascii "_GLIBCXX_USE_ALLOCATOR_NEW 1\0"
	.file 19 "/usr/lib/gcc/x86_64-pc-cygwin/6.4.0/include/c++/x86_64-pc-cygwin/bits/os_defines.h"
	.byte	0x3
	.uleb128 0x1fb
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x1f
	.ascii "_GLIBCXX_OS_DEFINES 1\0"
	.byte	0x1
	.uleb128 0x25
	.ascii "_GLIBCXX_GTHREAD_USE_WEAK 0\0"
	.byte	0x1
	.uleb128 0x2a
	.ascii "_GLIBCXX_PSEUDO_VISIBILITY_default \0"
	.byte	0x1
	.uleb128 0x2c
	.ascii "_GLIBCXX_PSEUDO_VISIBILITY_hidden \0"
	.byte	0x1
	.uleb128 0x2e
	.ascii "_GLIBCXX_PSEUDO_VISIBILITY(V) _GLIBCXX_PSEUDO_VISIBILITY_ ## V\0"
	.byte	0x1
	.uleb128 0x31
	.ascii "_GLIBCXX_HAVE_DOS_BASED_FILESYSTEM 1\0"
	.byte	0x1
	.uleb128 0x36
	.ascii "_GLIBCXX_THREAD_ATEXIT_WIN32 1\0"
	.byte	0x1
	.uleb128 0x39
	.ascii "_GLIBCXX_USE_WEAK_REF 0\0"
	.byte	0x4
	.file 20 "/usr/lib/gcc/x86_64-pc-cygwin/6.4.0/include/c++/x86_64-pc-cygwin/bits/cpu_defines.h"
	.byte	0x3
	.uleb128 0x1fe
	.uleb128 0x14
	.byte	0x1
	.uleb128 0x1f
	.ascii "_GLIBCXX_CPU_DEFINES 1\0"
	.byte	0x4
	.byte	0x1
	.uleb128 0x20a
	.ascii "_GLIBCXX_WEAK_DEFINITION \0"
	.byte	0x1
	.uleb128 0x21f
	.ascii "_GLIBCXX_TXN_SAFE \0"
	.byte	0x1
	.uleb128 0x220
	.ascii "_GLIBCXX_TXN_SAFE_DYN \0"
	.byte	0x1
	.uleb128 0x22b
	.ascii "_GLIBCXX_FAST_MATH 0\0"
	.byte	0x1
	.uleb128 0x232
	.ascii "__N(msgid) (msgid)\0"
	.byte	0x2
	.uleb128 0x235
	.ascii "min\0"
	.byte	0x2
	.uleb128 0x236
	.ascii "max\0"
	.byte	0x1
	.uleb128 0x23c
	.ascii "_GLIBCXX_USE_C99_MATH _GLIBCXX11_USE_C99_MATH\0"
	.byte	0x1
	.uleb128 0x23f
	.ascii "_GLIBCXX_USE_C99_COMPLEX _GLIBCXX11_USE_C99_COMPLEX\0"
	.byte	0x1
	.uleb128 0x242
	.ascii "_GLIBCXX_USE_C99_STDIO _GLIBCXX11_USE_C99_STDIO\0"
	.byte	0x1
	.uleb128 0x245
	.ascii "_GLIBCXX_USE_C99_STDLIB _GLIBCXX11_USE_C99_STDLIB\0"
	.byte	0x1
	.uleb128 0x248
	.ascii "_GLIBCXX_USE_C99_WCHAR _GLIBCXX11_USE_C99_WCHAR\0"
	.byte	0x1
	.uleb128 0x261
	.ascii "_GLIBCXX_HAVE_ACOSF 1\0"
	.byte	0x1
	.uleb128 0x264
	.ascii "_GLIBCXX_HAVE_ACOSL 1\0"
	.byte	0x1
	.uleb128 0x267
	.ascii "_GLIBCXX_HAVE_ASINF 1\0"
	.byte	0x1
	.uleb128 0x26a
	.ascii "_GLIBCXX_HAVE_ASINL 1\0"
	.byte	0x1
	.uleb128 0x270
	.ascii "_GLIBCXX_HAVE_ATAN2F 1\0"
	.byte	0x1
	.uleb128 0x273
	.ascii "_GLIBCXX_HAVE_ATAN2L 1\0"
	.byte	0x1
	.uleb128 0x276
	.ascii "_GLIBCXX_HAVE_ATANF 1\0"
	.byte	0x1
	.uleb128 0x279
	.ascii "_GLIBCXX_HAVE_ATANL 1\0"
	.byte	0x1
	.uleb128 0x27c
	.ascii "_GLIBCXX_HAVE_AT_QUICK_EXIT 1\0"
	.byte	0x1
	.uleb128 0x282
	.ascii "_GLIBCXX_HAVE_CEILF 1\0"
	.byte	0x1
	.uleb128 0x285
	.ascii "_GLIBCXX_HAVE_CEILL 1\0"
	.byte	0x1
	.uleb128 0x288
	.ascii "_GLIBCXX_HAVE_COMPLEX_H 1\0"
	.byte	0x1
	.uleb128 0x28b
	.ascii "_GLIBCXX_HAVE_COSF 1\0"
	.byte	0x1
	.uleb128 0x28e
	.ascii "_GLIBCXX_HAVE_COSHF 1\0"
	.byte	0x1
	.uleb128 0x291
	.ascii "_GLIBCXX_HAVE_COSHL 1\0"
	.byte	0x1
	.uleb128 0x294
	.ascii "_GLIBCXX_HAVE_COSL 1\0"
	.byte	0x1
	.uleb128 0x297
	.ascii "_GLIBCXX_HAVE_DIRENT_H 1\0"
	.byte	0x1
	.uleb128 0x29a
	.ascii "_GLIBCXX_HAVE_DLFCN_H 1\0"
	.byte	0x1
	.uleb128 0x29d
	.ascii "_GLIBCXX_HAVE_EBADMSG 1\0"
	.byte	0x1
	.uleb128 0x2a0
	.ascii "_GLIBCXX_HAVE_ECANCELED 1\0"
	.byte	0x1
	.uleb128 0x2a3
	.ascii "_GLIBCXX_HAVE_ECHILD 1\0"
	.byte	0x1
	.uleb128 0x2a6
	.ascii "_GLIBCXX_HAVE_EIDRM 1\0"
	.byte	0x1
	.uleb128 0x2a9
	.ascii "_GLIBCXX_HAVE_ENDIAN_H 1\0"
	.byte	0x1
	.uleb128 0x2ac
	.ascii "_GLIBCXX_HAVE_ENODATA 1\0"
	.byte	0x1
	.uleb128 0x2af
	.ascii "_GLIBCXX_HAVE_ENOLINK 1\0"
	.byte	0x1
	.uleb128 0x2b2
	.ascii "_GLIBCXX_HAVE_ENOSPC 1\0"
	.byte	0x1
	.uleb128 0x2b5
	.ascii "_GLIBCXX_HAVE_ENOSR 1\0"
	.byte	0x1
	.uleb128 0x2b8
	.ascii "_GLIBCXX_HAVE_ENOSTR 1\0"
	.byte	0x1
	.uleb128 0x2bb
	.ascii "_GLIBCXX_HAVE_ENOTRECOVERABLE 1\0"
	.byte	0x1
	.uleb128 0x2be
	.ascii "_GLIBCXX_HAVE_ENOTSUP 1\0"
	.byte	0x1
	.uleb128 0x2c1
	.ascii "_GLIBCXX_HAVE_EOVERFLOW 1\0"
	.byte	0x1
	.uleb128 0x2c4
	.ascii "_GLIBCXX_HAVE_EOWNERDEAD 1\0"
	.byte	0x1
	.uleb128 0x2c7
	.ascii "_GLIBCXX_HAVE_EPERM 1\0"
	.byte	0x1
	.uleb128 0x2ca
	.ascii "_GLIBCXX_HAVE_EPROTO 1\0"
	.byte	0x1
	.uleb128 0x2cd
	.ascii "_GLIBCXX_HAVE_ETIME 1\0"
	.byte	0x1
	.uleb128 0x2d0
	.ascii "_GLIBCXX_HAVE_ETIMEDOUT 1\0"
	.byte	0x1
	.uleb128 0x2d3
	.ascii "_GLIBCXX_HAVE_ETXTBSY 1\0"
	.byte	0x1
	.uleb128 0x2d6
	.ascii "_GLIBCXX_HAVE_EWOULDBLOCK 1\0"
	.byte	0x1
	.uleb128 0x2dc
	.ascii "_GLIBCXX_HAVE_EXPF 1\0"
	.byte	0x1
	.uleb128 0x2df
	.ascii "_GLIBCXX_HAVE_EXPL 1\0"
	.byte	0x1
	.uleb128 0x2e2
	.ascii "_GLIBCXX_HAVE_FABSF 1\0"
	.byte	0x1
	.uleb128 0x2e5
	.ascii "_GLIBCXX_HAVE_FABSL 1\0"
	.byte	0x1
	.uleb128 0x2e8
	.ascii "_GLIBCXX_HAVE_FCNTL_H 1\0"
	.byte	0x1
	.uleb128 0x2eb
	.ascii "_GLIBCXX_HAVE_FENV_H 1\0"
	.byte	0x1
	.uleb128 0x2ee
	.ascii "_GLIBCXX_HAVE_FINITE 1\0"
	.byte	0x1
	.uleb128 0x2f1
	.ascii "_GLIBCXX_HAVE_FINITEF 1\0"
	.byte	0x1
	.uleb128 0x2f4
	.ascii "_GLIBCXX_HAVE_FINITEL 1\0"
	.byte	0x1
	.uleb128 0x2f7
	.ascii "_GLIBCXX_HAVE_FLOAT_H 1\0"
	.byte	0x1
	.uleb128 0x2fa
	.ascii "_GLIBCXX_HAVE_FLOORF 1\0"
	.byte	0x1
	.uleb128 0x2fd
	.ascii "_GLIBCXX_HAVE_FLOORL 1\0"
	.byte	0x1
	.uleb128 0x300
	.ascii "_GLIBCXX_HAVE_FMODF 1\0"
	.byte	0x1
	.uleb128 0x303
	.ascii "_GLIBCXX_HAVE_FMODL 1\0"
	.byte	0x1
	.uleb128 0x30c
	.ascii "_GLIBCXX_HAVE_FREXPF 1\0"
	.byte	0x1
	.uleb128 0x30f
	.ascii "_GLIBCXX_HAVE_FREXPL 1\0"
	.byte	0x1
	.uleb128 0x312
	.ascii "_GLIBCXX_HAVE_GETIPINFO 1\0"
	.byte	0x1
	.uleb128 0x315
	.ascii "_GLIBCXX_HAVE_GETS 1\0"
	.byte	0x1
	.uleb128 0x318
	.ascii "_GLIBCXX_HAVE_HYPOT 1\0"
	.byte	0x1
	.uleb128 0x31b
	.ascii "_GLIBCXX_HAVE_HYPOTF 1\0"
	.byte	0x1
	.uleb128 0x31e
	.ascii "_GLIBCXX_HAVE_HYPOTL 1\0"
	.byte	0x1
	.uleb128 0x321
	.ascii "_GLIBCXX_HAVE_ICONV 1\0"
	.byte	0x1
	.uleb128 0x324
	.ascii "_GLIBCXX_HAVE_IEEEFP_H 1\0"
	.byte	0x1
	.uleb128 0x327
	.ascii "_GLIBCXX_HAVE_INT64_T 1\0"
	.byte	0x1
	.uleb128 0x32a
	.ascii "_GLIBCXX_HAVE_INT64_T_LONG 1\0"
	.byte	0x1
	.uleb128 0x330
	.ascii "_GLIBCXX_HAVE_INTTYPES_H 1\0"
	.byte	0x1
	.uleb128 0x336
	.ascii "_GLIBCXX_HAVE_ISINFF 1\0"
	.byte	0x1
	.uleb128 0x339
	.ascii "_GLIBCXX_HAVE_ISINFL 1\0"
	.byte	0x1
	.uleb128 0x33f
	.ascii "_GLIBCXX_HAVE_ISNANF 1\0"
	.byte	0x1
	.uleb128 0x342
	.ascii "_GLIBCXX_HAVE_ISNANL 1\0"
	.byte	0x1
	.uleb128 0x345
	.ascii "_GLIBCXX_HAVE_ISWBLANK 1\0"
	.byte	0x1
	.uleb128 0x348
	.ascii "_GLIBCXX_HAVE_LC_MESSAGES 1\0"
	.byte	0x1
	.uleb128 0x34b
	.ascii "_GLIBCXX_HAVE_LDEXPF 1\0"
	.byte	0x1
	.uleb128 0x34e
	.ascii "_GLIBCXX_HAVE_LDEXPL 1\0"
	.byte	0x1
	.uleb128 0x354
	.ascii "_GLIBCXX_HAVE_LIMIT_AS 1\0"
	.byte	0x1
	.uleb128 0x357
	.ascii "_GLIBCXX_HAVE_LIMIT_DATA 1\0"
	.byte	0x1
	.uleb128 0x35a
	.ascii "_GLIBCXX_HAVE_LIMIT_FSIZE 1\0"
	.byte	0x1
	.uleb128 0x35d
	.ascii "_GLIBCXX_HAVE_LIMIT_RSS 0\0"
	.byte	0x1
	.uleb128 0x360
	.ascii "_GLIBCXX_HAVE_LIMIT_VMEM 0\0"
	.byte	0x1
	.uleb128 0x366
	.ascii "_GLIBCXX_HAVE_LOCALE_H 1\0"
	.byte	0x1
	.uleb128 0x369
	.ascii "_GLIBCXX_HAVE_LOG10F 1\0"
	.byte	0x1
	.uleb128 0x36c
	.ascii "_GLIBCXX_HAVE_LOG10L 1\0"
	.byte	0x1
	.uleb128 0x36f
	.ascii "_GLIBCXX_HAVE_LOGF 1\0"
	.byte	0x1
	.uleb128 0x372
	.ascii "_GLIBCXX_HAVE_LOGL 1\0"
	.byte	0x1
	.uleb128 0x375
	.ascii "_GLIBCXX_HAVE_MACHINE_ENDIAN_H 1\0"
	.byte	0x1
	.uleb128 0x378
	.ascii "_GLIBCXX_HAVE_MACHINE_PARAM_H 1\0"
	.byte	0x1
	.uleb128 0x37b
	.ascii "_GLIBCXX_HAVE_MBSTATE_T 1\0"
	.byte	0x1
	.uleb128 0x37e
	.ascii "_GLIBCXX_HAVE_MEMORY_H 1\0"
	.byte	0x1
	.uleb128 0x381
	.ascii "_GLIBCXX_HAVE_MODF 1\0"
	.byte	0x1
	.uleb128 0x384
	.ascii "_GLIBCXX_HAVE_MODFF 1\0"
	.byte	0x1
	.uleb128 0x387
	.ascii "_GLIBCXX_HAVE_MODFL 1\0"
	.byte	0x1
	.uleb128 0x393
	.ascii "_GLIBCXX_HAVE_POLL 1\0"
	.byte	0x1
	.uleb128 0x396
	.ascii "_GLIBCXX_HAVE_POWF 1\0"
	.byte	0x1
	.uleb128 0x399
	.ascii "_GLIBCXX_HAVE_POWL 1\0"
	.byte	0x1
	.uleb128 0x39f
	.ascii "_GLIBCXX_HAVE_QUICK_EXIT 1\0"
	.byte	0x1
	.uleb128 0x3a2
	.ascii "_GLIBCXX_HAVE_SETENV 1\0"
	.byte	0x1
	.uleb128 0x3a5
	.ascii "_GLIBCXX_HAVE_SINCOS 1\0"
	.byte	0x1
	.uleb128 0x3a8
	.ascii "_GLIBCXX_HAVE_SINCOSF 1\0"
	.byte	0x1
	.uleb128 0x3ab
	.ascii "_GLIBCXX_HAVE_SINCOSL 1\0"
	.byte	0x1
	.uleb128 0x3ae
	.ascii "_GLIBCXX_HAVE_SINF 1\0"
	.byte	0x1
	.uleb128 0x3b1
	.ascii "_GLIBCXX_HAVE_SINHF 1\0"
	.byte	0x1
	.uleb128 0x3b4
	.ascii "_GLIBCXX_HAVE_SINHL 1\0"
	.byte	0x1
	.uleb128 0x3b7
	.ascii "_GLIBCXX_HAVE_SINL 1\0"
	.byte	0x1
	.uleb128 0x3bd
	.ascii "_GLIBCXX_HAVE_SQRTF 1\0"
	.byte	0x1
	.uleb128 0x3c0
	.ascii "_GLIBCXX_HAVE_SQRTL 1\0"
	.byte	0x1
	.uleb128 0x3c3
	.ascii "_GLIBCXX_HAVE_STDALIGN_H 1\0"
	.byte	0x1
	.uleb128 0x3c6
	.ascii "_GLIBCXX_HAVE_STDBOOL_H 1\0"
	.byte	0x1
	.uleb128 0x3c9
	.ascii "_GLIBCXX_HAVE_STDINT_H 1\0"
	.byte	0x1
	.uleb128 0x3cc
	.ascii "_GLIBCXX_HAVE_STDLIB_H 1\0"
	.byte	0x1
	.uleb128 0x3d2
	.ascii "_GLIBCXX_HAVE_STRERROR_R 1\0"
	.byte	0x1
	.uleb128 0x3d5
	.ascii "_GLIBCXX_HAVE_STRINGS_H 1\0"
	.byte	0x1
	.uleb128 0x3d8
	.ascii "_GLIBCXX_HAVE_STRING_H 1\0"
	.byte	0x1
	.uleb128 0x3db
	.ascii "_GLIBCXX_HAVE_STRTOF 1\0"
	.byte	0x1
	.uleb128 0x3de
	.ascii "_GLIBCXX_HAVE_STRTOLD 1\0"
	.byte	0x1
	.uleb128 0x3e1
	.ascii "_GLIBCXX_HAVE_STRUCT_DIRENT_D_TYPE 1\0"
	.byte	0x1
	.uleb128 0x3ee
	.ascii "_GLIBCXX_HAVE_SYS_IOCTL_H 1\0"
	.byte	0x1
	.uleb128 0x3f1
	.ascii "_GLIBCXX_HAVE_SYS_IPC_H 1\0"
	.byte	0x1
	.uleb128 0x3fa
	.ascii "_GLIBCXX_HAVE_SYS_PARAM_H 1\0"
	.byte	0x1
	.uleb128 0x3fd
	.ascii "_GLIBCXX_HAVE_SYS_RESOURCE_H 1\0"
	.byte	0x1
	.uleb128 0x403
	.ascii "_GLIBCXX_HAVE_SYS_SEM_H 1\0"
	.byte	0x1
	.uleb128 0x406
	.ascii "_GLIBCXX_HAVE_SYS_STATVFS_H 1\0"
	.byte	0x1
	.uleb128 0x409
	.ascii "_GLIBCXX_HAVE_SYS_STAT_H 1\0"
	.byte	0x1
	.uleb128 0x40c
	.ascii "_GLIBCXX_HAVE_SYS_SYSINFO_H 1\0"
	.byte	0x1
	.uleb128 0x40f
	.ascii "_GLIBCXX_HAVE_SYS_TIME_H 1\0"
	.byte	0x1
	.uleb128 0x412
	.ascii "_GLIBCXX_HAVE_SYS_TYPES_H 1\0"
	.byte	0x1
	.uleb128 0x415
	.ascii "_GLIBCXX_HAVE_SYS_UIO_H 1\0"
	.byte	0x1
	.uleb128 0x41b
	.ascii "_GLIBCXX_HAVE_S_ISREG 1\0"
	.byte	0x1
	.uleb128 0x41e
	.ascii "_GLIBCXX_HAVE_TANF 1\0"
	.byte	0x1
	.uleb128 0x421
	.ascii "_GLIBCXX_HAVE_TANHF 1\0"
	.byte	0x1
	.uleb128 0x424
	.ascii "_GLIBCXX_HAVE_TANHL 1\0"
	.byte	0x1
	.uleb128 0x427
	.ascii "_GLIBCXX_HAVE_TANL 1\0"
	.byte	0x1
	.uleb128 0x42a
	.ascii "_GLIBCXX_HAVE_TGMATH_H 1\0"
	.byte	0x1
	.uleb128 0x42d
	.ascii "_GLIBCXX_HAVE_TLS 1\0"
	.byte	0x1
	.uleb128 0x433
	.ascii "_GLIBCXX_HAVE_UNISTD_H 1\0"
	.byte	0x1
	.uleb128 0x439
	.ascii "_GLIBCXX_HAVE_UTIME_H 1\0"
	.byte	0x1
	.uleb128 0x43c
	.ascii "_GLIBCXX_HAVE_VFWSCANF 1\0"
	.byte	0x1
	.uleb128 0x43f
	.ascii "_GLIBCXX_HAVE_VSWSCANF 1\0"
	.byte	0x1
	.uleb128 0x442
	.ascii "_GLIBCXX_HAVE_VWSCANF 1\0"
	.byte	0x1
	.uleb128 0x445
	.ascii "_GLIBCXX_HAVE_WCHAR_H 1\0"
	.byte	0x1
	.uleb128 0x448
	.ascii "_GLIBCXX_HAVE_WCSTOF 1\0"
	.byte	0x1
	.uleb128 0x44b
	.ascii "_GLIBCXX_HAVE_WCTYPE_H 1\0"
	.byte	0x1
	.uleb128 0x451
	.ascii "_GLIBCXX_HAVE_WRITEV 1\0"
	.byte	0x1
	.uleb128 0x511
	.ascii "_GLIBCXX_ICONV_CONST \0"
	.byte	0x1
	.uleb128 0x515
	.ascii "LT_OBJDIR \".libs/\"\0"
	.byte	0x1
	.uleb128 0x51b
	.ascii "_GLIBCXX_PACKAGE_BUGREPORT \"\"\0"
	.byte	0x1
	.uleb128 0x51e
	.ascii "_GLIBCXX_PACKAGE_NAME \"package-unused\"\0"
	.byte	0x1
	.uleb128 0x521
	.ascii "_GLIBCXX_PACKAGE_STRING \"package-unused version-unused\"\0"
	.byte	0x1
	.uleb128 0x524
	.ascii "_GLIBCXX_PACKAGE_TARNAME \"libstdc++\"\0"
	.byte	0x1
	.uleb128 0x527
	.ascii "_GLIBCXX_PACKAGE_URL \"\"\0"
	.byte	0x1
	.uleb128 0x52a
	.ascii "_GLIBCXX_PACKAGE__GLIBCXX_VERSION \"version-unused\"\0"
	.byte	0x1
	.uleb128 0x53c
	.ascii "STDC_HEADERS 1\0"
	.byte	0x1
	.uleb128 0x544
	.ascii "_GLIBCXX11_USE_C99_COMPLEX 1\0"
	.byte	0x1
	.uleb128 0x548
	.ascii "_GLIBCXX11_USE_C99_MATH 1\0"
	.byte	0x1
	.uleb128 0x54c
	.ascii "_GLIBCXX11_USE_C99_STDIO 1\0"
	.byte	0x1
	.uleb128 0x550
	.ascii "_GLIBCXX11_USE_C99_STDLIB 1\0"
	.byte	0x1
	.uleb128 0x554
	.ascii "_GLIBCXX11_USE_C99_WCHAR 1\0"
	.byte	0x1
	.uleb128 0x559
	.ascii "_GLIBCXX98_USE_C99_COMPLEX 1\0"
	.byte	0x1
	.uleb128 0x55d
	.ascii "_GLIBCXX98_USE_C99_MATH 1\0"
	.byte	0x1
	.uleb128 0x561
	.ascii "_GLIBCXX98_USE_C99_STDIO 1\0"
	.byte	0x1
	.uleb128 0x565
	.ascii "_GLIBCXX98_USE_C99_STDLIB 1\0"
	.byte	0x1
	.uleb128 0x569
	.ascii "_GLIBCXX98_USE_C99_WCHAR 1\0"
	.byte	0x1
	.uleb128 0x56c
	.ascii "_GLIBCXX_ATOMIC_BUILTINS 1\0"
	.byte	0x1
	.uleb128 0x573
	.ascii "_GLIBCXX_FULLY_DYNAMIC_STRING 0\0"
	.byte	0x1
	.uleb128 0x576
	.ascii "_GLIBCXX_HAS_GTHREADS 1\0"
	.byte	0x1
	.uleb128 0x579
	.ascii "_GLIBCXX_HOSTED 1\0"
	.byte	0x1
	.uleb128 0x57e
	.ascii "_GLIBCXX_MANGLE_SIZE_T m\0"
	.byte	0x1
	.uleb128 0x584
	.ascii "_GLIBCXX_RES_LIMITS 1\0"
	.byte	0x1
	.uleb128 0x58a
	.ascii "_GLIBCXX_STDIO_EOF -1\0"
	.byte	0x1
	.uleb128 0x58d
	.ascii "_GLIBCXX_STDIO_SEEK_CUR 1\0"
	.byte	0x1
	.uleb128 0x590
	.ascii "_GLIBCXX_STDIO_SEEK_END 2\0"
	.byte	0x1
	.uleb128 0x5a7
	.ascii "_GLIBCXX_USE_C99 1\0"
	.byte	0x1
	.uleb128 0x5ac
	.ascii "_GLIBCXX_USE_C99_COMPLEX_TR1 1\0"
	.byte	0x1
	.uleb128 0x5b0
	.ascii "_GLIBCXX_USE_C99_CTYPE_TR1 1\0"
	.byte	0x1
	.uleb128 0x5b4
	.ascii "_GLIBCXX_USE_C99_FENV_TR1 1\0"
	.byte	0x1
	.uleb128 0x5b8
	.ascii "_GLIBCXX_USE_C99_INTTYPES_TR1 1\0"
	.byte	0x1
	.uleb128 0x5bc
	.ascii "_GLIBCXX_USE_C99_INTTYPES_WCHAR_T_TR1 1\0"
	.byte	0x1
	.uleb128 0x5c0
	.ascii "_GLIBCXX_USE_C99_MATH_TR1 1\0"
	.byte	0x1
	.uleb128 0x5c4
	.ascii "_GLIBCXX_USE_C99_STDINT_TR1 1\0"
	.byte	0x1
	.uleb128 0x5cb
	.ascii "_GLIBCXX_USE_CLOCK_MONOTONIC 1\0"
	.byte	0x1
	.uleb128 0x5ce
	.ascii "_GLIBCXX_USE_CLOCK_REALTIME 1\0"
	.byte	0x1
	.uleb128 0x5d2
	.ascii "_GLIBCXX_USE_DECIMAL_FLOAT 1\0"
	.byte	0x1
	.uleb128 0x5d5
	.ascii "_GLIBCXX_USE_FCHMOD 1\0"
	.byte	0x1
	.uleb128 0x5d8
	.ascii "_GLIBCXX_USE_FCHMODAT 1\0"
	.byte	0x1
	.uleb128 0x5db
	.ascii "_GLIBCXX_USE_FLOAT128 1\0"
	.byte	0x1
	.uleb128 0x5de
	.ascii "_GLIBCXX_USE_GETTIMEOFDAY 1\0"
	.byte	0x1
	.uleb128 0x5e1
	.ascii "_GLIBCXX_USE_GET_NPROCS 1\0"
	.byte	0x1
	.uleb128 0x5e4
	.ascii "_GLIBCXX_USE_INT128 1\0"
	.byte	0x1
	.uleb128 0x5ea
	.ascii "_GLIBCXX_USE_LONG_LONG 1\0"
	.byte	0x1
	.uleb128 0x5ed
	.ascii "_GLIBCXX_USE_NANOSLEEP 1\0"
	.byte	0x1
	.uleb128 0x5f6
	.ascii "_GLIBCXX_USE_PTHREAD_RWLOCK_T 1\0"
	.byte	0x1
	.uleb128 0x5fa
	.ascii "_GLIBCXX_USE_RANDOM_TR1 1\0"
	.byte	0x1
	.uleb128 0x5fd
	.ascii "_GLIBCXX_USE_REALPATH 1\0"
	.byte	0x1
	.uleb128 0x600
	.ascii "_GLIBCXX_USE_SCHED_YIELD 1\0"
	.byte	0x1
	.uleb128 0x603
	.ascii "_GLIBCXX_USE_SC_NPROCESSORS_ONLN 1\0"
	.byte	0x1
	.uleb128 0x60c
	.ascii "_GLIBCXX_USE_ST_MTIM 1\0"
	.byte	0x1
	.uleb128 0x612
	.ascii "_GLIBCXX_USE_TMPNAM 1\0"
	.byte	0x1
	.uleb128 0x616
	.ascii "_GLIBCXX_USE_UTIMENSAT 1\0"
	.byte	0x1
	.uleb128 0x619
	.ascii "_GLIBCXX_USE_WCHAR_T 1\0"
	.byte	0x1
	.uleb128 0x61c
	.ascii "_GLIBCXX_VERBOSE 1\0"
	.byte	0x1
	.uleb128 0x61f
	.ascii "_GLIBCXX_X86_RDRAND 1\0"
	.byte	0x1
	.uleb128 0x622
	.ascii "_GTHREAD_USE_MUTEX_TIMEDLOCK 0\0"
	.byte	0x4
	.byte	0x3
	.uleb128 0x32
	.uleb128 0x5
	.byte	0x1
	.uleb128 0x27
	.ascii "_STDDEF_H \0"
	.byte	0x1
	.uleb128 0x28
	.ascii "_STDDEF_H_ \0"
	.byte	0x1
	.uleb128 0x2a
	.ascii "_ANSI_STDDEF_H \0"
	.byte	0x1
	.uleb128 0x89
	.ascii "_PTRDIFF_T \0"
	.byte	0x1
	.uleb128 0x8a
	.ascii "_T_PTRDIFF_ \0"
	.byte	0x1
	.uleb128 0x8b
	.ascii "_T_PTRDIFF \0"
	.byte	0x1
	.uleb128 0x8c
	.ascii "__PTRDIFF_T \0"
	.byte	0x1
	.uleb128 0x8d
	.ascii "_PTRDIFF_T_ \0"
	.byte	0x1
	.uleb128 0x8e
	.ascii "_BSD_PTRDIFF_T_ \0"
	.byte	0x1
	.uleb128 0x8f
	.ascii "___int_ptrdiff_t_h \0"
	.byte	0x1
	.uleb128 0x90
	.ascii "_GCC_PTRDIFF_T \0"
	.byte	0x1
	.uleb128 0x91
	.ascii "_PTRDIFF_T_DECLARED \0"
	.byte	0x2
	.uleb128 0xa1
	.ascii "__need_ptrdiff_t\0"
	.byte	0x1
	.uleb128 0xbb
	.ascii "__size_t__ \0"
	.byte	0x1
	.uleb128 0xbc
	.ascii "__SIZE_T__ \0"
	.byte	0x1
	.uleb128 0xbd
	.ascii "_SIZE_T \0"
	.byte	0x1
	.uleb128 0xbe
	.ascii "_SYS_SIZE_T_H \0"
	.byte	0x1
	.uleb128 0xbf
	.ascii "_T_SIZE_ \0"
	.byte	0x1
	.uleb128 0xc0
	.ascii "_T_SIZE \0"
	.byte	0x1
	.uleb128 0xc1
	.ascii "__SIZE_T \0"
	.byte	0x1
	.uleb128 0xc2
	.ascii "_SIZE_T_ \0"
	.byte	0x1
	.uleb128 0xc3
	.ascii "_BSD_SIZE_T_ \0"
	.byte	0x1
	.uleb128 0xc4
	.ascii "_SIZE_T_DEFINED_ \0"
	.byte	0x1
	.uleb128 0xc5
	.ascii "_SIZE_T_DEFINED \0"
	.byte	0x1
	.uleb128 0xc6
	.ascii "_BSD_SIZE_T_DEFINED_ \0"
	.byte	0x1
	.uleb128 0xc7
	.ascii "_SIZE_T_DECLARED \0"
	.byte	0x1
	.uleb128 0xc8
	.ascii "___int_size_t_h \0"
	.byte	0x1
	.uleb128 0xc9
	.ascii "_GCC_SIZE_T \0"
	.byte	0x1
	.uleb128 0xca
	.ascii "_SIZET_ \0"
	.byte	0x1
	.uleb128 0xd2
	.ascii "__size_t \0"
	.byte	0x2
	.uleb128 0xee
	.ascii "__need_size_t\0"
	.byte	0x1
	.uleb128 0x10b
	.ascii "__wchar_t__ \0"
	.byte	0x1
	.uleb128 0x10c
	.ascii "__WCHAR_T__ \0"
	.byte	0x1
	.uleb128 0x10d
	.ascii "_WCHAR_T \0"
	.byte	0x1
	.uleb128 0x10e
	.ascii "_T_WCHAR_ \0"
	.byte	0x1
	.uleb128 0x10f
	.ascii "_T_WCHAR \0"
	.byte	0x1
	.uleb128 0x110
	.ascii "__WCHAR_T \0"
	.byte	0x1
	.uleb128 0x111
	.ascii "_WCHAR_T_ \0"
	.byte	0x1
	.uleb128 0x112
	.ascii "_BSD_WCHAR_T_ \0"
	.byte	0x1
	.uleb128 0x113
	.ascii "_WCHAR_T_DEFINED_ \0"
	.byte	0x1
	.uleb128 0x114
	.ascii "_WCHAR_T_DEFINED \0"
	.byte	0x1
	.uleb128 0x115
	.ascii "_WCHAR_T_H \0"
	.byte	0x1
	.uleb128 0x116
	.ascii "___int_wchar_t_h \0"
	.byte	0x1
	.uleb128 0x117
	.ascii "__INT_WCHAR_T_H \0"
	.byte	0x1
	.uleb128 0x118
	.ascii "_GCC_WCHAR_T \0"
	.byte	0x1
	.uleb128 0x119
	.ascii "_WCHAR_T_DECLARED \0"
	.byte	0x2
	.uleb128 0x126
	.ascii "_BSD_WCHAR_T_\0"
	.byte	0x2
	.uleb128 0x15b
	.ascii "__need_wchar_t\0"
	.byte	0x2
	.uleb128 0x191
	.ascii "NULL\0"
	.byte	0x1
	.uleb128 0x193
	.ascii "NULL __null\0"
	.byte	0x2
	.uleb128 0x19c
	.ascii "__need_NULL\0"
	.byte	0x1
	.uleb128 0x1a1
	.ascii "offsetof(TYPE,MEMBER) __builtin_offsetof (TYPE, MEMBER)\0"
	.byte	0x1
	.uleb128 0x1a6
	.ascii "_GCC_MAX_ALIGN_T \0"
	.byte	0x1
	.uleb128 0x1b3
	.ascii "_GXX_NULLPTR_T \0"
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0x9
	.uleb128 0x7
	.byte	0x1
	.uleb128 0x1e
	.ascii "_GLIBCXX_CSTDINT 1\0"
	.file 21 "/usr/lib/gcc/x86_64-pc-cygwin/6.4.0/include/stdint.h"
	.byte	0x3
	.uleb128 0x29
	.uleb128 0x15
	.byte	0x3
	.uleb128 0xb
	.uleb128 0x8
	.byte	0x1
	.uleb128 0x1d
	.ascii "_GCC_STDINT_H \0"
	.byte	0x2
	.uleb128 0x64
	.ascii "INT8_MAX\0"
	.byte	0x1
	.uleb128 0x65
	.ascii "INT8_MAX __INT8_MAX__\0"
	.byte	0x2
	.uleb128 0x66
	.ascii "INT8_MIN\0"
	.byte	0x1
	.uleb128 0x67
	.ascii "INT8_MIN (-INT8_MAX - 1)\0"
	.byte	0x2
	.uleb128 0x6a
	.ascii "UINT8_MAX\0"
	.byte	0x1
	.uleb128 0x6b
	.ascii "UINT8_MAX __UINT8_MAX__\0"
	.byte	0x2
	.uleb128 0x6e
	.ascii "INT16_MAX\0"
	.byte	0x1
	.uleb128 0x6f
	.ascii "INT16_MAX __INT16_MAX__\0"
	.byte	0x2
	.uleb128 0x70
	.ascii "INT16_MIN\0"
	.byte	0x1
	.uleb128 0x71
	.ascii "INT16_MIN (-INT16_MAX - 1)\0"
	.byte	0x2
	.uleb128 0x74
	.ascii "UINT16_MAX\0"
	.byte	0x1
	.uleb128 0x75
	.ascii "UINT16_MAX __UINT16_MAX__\0"
	.byte	0x2
	.uleb128 0x78
	.ascii "INT32_MAX\0"
	.byte	0x1
	.uleb128 0x79
	.ascii "INT32_MAX __INT32_MAX__\0"
	.byte	0x2
	.uleb128 0x7a
	.ascii "INT32_MIN\0"
	.byte	0x1
	.uleb128 0x7b
	.ascii "INT32_MIN (-INT32_MAX - 1)\0"
	.byte	0x2
	.uleb128 0x7e
	.ascii "UINT32_MAX\0"
	.byte	0x1
	.uleb128 0x7f
	.ascii "UINT32_MAX __UINT32_MAX__\0"
	.byte	0x2
	.uleb128 0x82
	.ascii "INT64_MAX\0"
	.byte	0x1
	.uleb128 0x83
	.ascii "INT64_MAX __INT64_MAX__\0"
	.byte	0x2
	.uleb128 0x84
	.ascii "INT64_MIN\0"
	.byte	0x1
	.uleb128 0x85
	.ascii "INT64_MIN (-INT64_MAX - 1)\0"
	.byte	0x2
	.uleb128 0x88
	.ascii "UINT64_MAX\0"
	.byte	0x1
	.uleb128 0x89
	.ascii "UINT64_MAX __UINT64_MAX__\0"
	.byte	0x2
	.uleb128 0x8c
	.ascii "INT_LEAST8_MAX\0"
	.byte	0x1
	.uleb128 0x8d
	.ascii "INT_LEAST8_MAX __INT_LEAST8_MAX__\0"
	.byte	0x2
	.uleb128 0x8e
	.ascii "INT_LEAST8_MIN\0"
	.byte	0x1
	.uleb128 0x8f
	.ascii "INT_LEAST8_MIN (-INT_LEAST8_MAX - 1)\0"
	.byte	0x2
	.uleb128 0x90
	.ascii "UINT_LEAST8_MAX\0"
	.byte	0x1
	.uleb128 0x91
	.ascii "UINT_LEAST8_MAX __UINT_LEAST8_MAX__\0"
	.byte	0x2
	.uleb128 0x92
	.ascii "INT_LEAST16_MAX\0"
	.byte	0x1
	.uleb128 0x93
	.ascii "INT_LEAST16_MAX __INT_LEAST16_MAX__\0"
	.byte	0x2
	.uleb128 0x94
	.ascii "INT_LEAST16_MIN\0"
	.byte	0x1
	.uleb128 0x95
	.ascii "INT_LEAST16_MIN (-INT_LEAST16_MAX - 1)\0"
	.byte	0x2
	.uleb128 0x96
	.ascii "UINT_LEAST16_MAX\0"
	.byte	0x1
	.uleb128 0x97
	.ascii "UINT_LEAST16_MAX __UINT_LEAST16_MAX__\0"
	.byte	0x2
	.uleb128 0x98
	.ascii "INT_LEAST32_MAX\0"
	.byte	0x1
	.uleb128 0x99
	.ascii "INT_LEAST32_MAX __INT_LEAST32_MAX__\0"
	.byte	0x2
	.uleb128 0x9a
	.ascii "INT_LEAST32_MIN\0"
	.byte	0x1
	.uleb128 0x9b
	.ascii "INT_LEAST32_MIN (-INT_LEAST32_MAX - 1)\0"
	.byte	0x2
	.uleb128 0x9c
	.ascii "UINT_LEAST32_MAX\0"
	.byte	0x1
	.uleb128 0x9d
	.ascii "UINT_LEAST32_MAX __UINT_LEAST32_MAX__\0"
	.byte	0x2
	.uleb128 0x9e
	.ascii "INT_LEAST64_MAX\0"
	.byte	0x1
	.uleb128 0x9f
	.ascii "INT_LEAST64_MAX __INT_LEAST64_MAX__\0"
	.byte	0x2
	.uleb128 0xa0
	.ascii "INT_LEAST64_MIN\0"
	.byte	0x1
	.uleb128 0xa1
	.ascii "INT_LEAST64_MIN (-INT_LEAST64_MAX - 1)\0"
	.byte	0x2
	.uleb128 0xa2
	.ascii "UINT_LEAST64_MAX\0"
	.byte	0x1
	.uleb128 0xa3
	.ascii "UINT_LEAST64_MAX __UINT_LEAST64_MAX__\0"
	.byte	0x2
	.uleb128 0xa5
	.ascii "INT_FAST8_MAX\0"
	.byte	0x1
	.uleb128 0xa6
	.ascii "INT_FAST8_MAX __INT_FAST8_MAX__\0"
	.byte	0x2
	.uleb128 0xa7
	.ascii "INT_FAST8_MIN\0"
	.byte	0x1
	.uleb128 0xa8
	.ascii "INT_FAST8_MIN (-INT_FAST8_MAX - 1)\0"
	.byte	0x2
	.uleb128 0xa9
	.ascii "UINT_FAST8_MAX\0"
	.byte	0x1
	.uleb128 0xaa
	.ascii "UINT_FAST8_MAX __UINT_FAST8_MAX__\0"
	.byte	0x2
	.uleb128 0xab
	.ascii "INT_FAST16_MAX\0"
	.byte	0x1
	.uleb128 0xac
	.ascii "INT_FAST16_MAX __INT_FAST16_MAX__\0"
	.byte	0x2
	.uleb128 0xad
	.ascii "INT_FAST16_MIN\0"
	.byte	0x1
	.uleb128 0xae
	.ascii "INT_FAST16_MIN (-INT_FAST16_MAX - 1)\0"
	.byte	0x2
	.uleb128 0xaf
	.ascii "UINT_FAST16_MAX\0"
	.byte	0x1
	.uleb128 0xb0
	.ascii "UINT_FAST16_MAX __UINT_FAST16_MAX__\0"
	.byte	0x2
	.uleb128 0xb1
	.ascii "INT_FAST32_MAX\0"
	.byte	0x1
	.uleb128 0xb2
	.ascii "INT_FAST32_MAX __INT_FAST32_MAX__\0"
	.byte	0x2
	.uleb128 0xb3
	.ascii "INT_FAST32_MIN\0"
	.byte	0x1
	.uleb128 0xb4
	.ascii "INT_FAST32_MIN (-INT_FAST32_MAX - 1)\0"
	.byte	0x2
	.uleb128 0xb5
	.ascii "UINT_FAST32_MAX\0"
	.byte	0x1
	.uleb128 0xb6
	.ascii "UINT_FAST32_MAX __UINT_FAST32_MAX__\0"
	.byte	0x2
	.uleb128 0xb7
	.ascii "INT_FAST64_MAX\0"
	.byte	0x1
	.uleb128 0xb8
	.ascii "INT_FAST64_MAX __INT_FAST64_MAX__\0"
	.byte	0x2
	.uleb128 0xb9
	.ascii "INT_FAST64_MIN\0"
	.byte	0x1
	.uleb128 0xba
	.ascii "INT_FAST64_MIN (-INT_FAST64_MAX - 1)\0"
	.byte	0x2
	.uleb128 0xbb
	.ascii "UINT_FAST64_MAX\0"
	.byte	0x1
	.uleb128 0xbc
	.ascii "UINT_FAST64_MAX __UINT_FAST64_MAX__\0"
	.byte	0x2
	.uleb128 0xbf
	.ascii "INTPTR_MAX\0"
	.byte	0x1
	.uleb128 0xc0
	.ascii "INTPTR_MAX __INTPTR_MAX__\0"
	.byte	0x2
	.uleb128 0xc1
	.ascii "INTPTR_MIN\0"
	.byte	0x1
	.uleb128 0xc2
	.ascii "INTPTR_MIN (-INTPTR_MAX - 1)\0"
	.byte	0x2
	.uleb128 0xc5
	.ascii "UINTPTR_MAX\0"
	.byte	0x1
	.uleb128 0xc6
	.ascii "UINTPTR_MAX __UINTPTR_MAX__\0"
	.byte	0x2
	.uleb128 0xc9
	.ascii "INTMAX_MAX\0"
	.byte	0x1
	.uleb128 0xca
	.ascii "INTMAX_MAX __INTMAX_MAX__\0"
	.byte	0x2
	.uleb128 0xcb
	.ascii "INTMAX_MIN\0"
	.byte	0x1
	.uleb128 0xcc
	.ascii "INTMAX_MIN (-INTMAX_MAX - 1)\0"
	.byte	0x2
	.uleb128 0xcd
	.ascii "UINTMAX_MAX\0"
	.byte	0x1
	.uleb128 0xce
	.ascii "UINTMAX_MAX __UINTMAX_MAX__\0"
	.byte	0x2
	.uleb128 0xd2
	.ascii "PTRDIFF_MAX\0"
	.byte	0x1
	.uleb128 0xd3
	.ascii "PTRDIFF_MAX __PTRDIFF_MAX__\0"
	.byte	0x2
	.uleb128 0xd4
	.ascii "PTRDIFF_MIN\0"
	.byte	0x1
	.uleb128 0xd5
	.ascii "PTRDIFF_MIN (-PTRDIFF_MAX - 1)\0"
	.byte	0x2
	.uleb128 0xd7
	.ascii "SIG_ATOMIC_MAX\0"
	.byte	0x1
	.uleb128 0xd8
	.ascii "SIG_ATOMIC_MAX __SIG_ATOMIC_MAX__\0"
	.byte	0x2
	.uleb128 0xd9
	.ascii "SIG_ATOMIC_MIN\0"
	.byte	0x1
	.uleb128 0xda
	.ascii "SIG_ATOMIC_MIN __SIG_ATOMIC_MIN__\0"
	.byte	0x2
	.uleb128 0xdc
	.ascii "SIZE_MAX\0"
	.byte	0x1
	.uleb128 0xdd
	.ascii "SIZE_MAX __SIZE_MAX__\0"
	.byte	0x2
	.uleb128 0xdf
	.ascii "WCHAR_MAX\0"
	.byte	0x1
	.uleb128 0xe0
	.ascii "WCHAR_MAX __WCHAR_MAX__\0"
	.byte	0x2
	.uleb128 0xe1
	.ascii "WCHAR_MIN\0"
	.byte	0x1
	.uleb128 0xe2
	.ascii "WCHAR_MIN __WCHAR_MIN__\0"
	.byte	0x2
	.uleb128 0xe4
	.ascii "WINT_MAX\0"
	.byte	0x1
	.uleb128 0xe5
	.ascii "WINT_MAX __WINT_MAX__\0"
	.byte	0x2
	.uleb128 0xe6
	.ascii "WINT_MIN\0"
	.byte	0x1
	.uleb128 0xe7
	.ascii "WINT_MIN __WINT_MIN__\0"
	.byte	0x2
	.uleb128 0xef
	.ascii "INT8_C\0"
	.byte	0x1
	.uleb128 0xf0
	.ascii "INT8_C(c) __INT8_C(c)\0"
	.byte	0x2
	.uleb128 0xf1
	.ascii "INT16_C\0"
	.byte	0x1
	.uleb128 0xf2
	.ascii "INT16_C(c) __INT16_C(c)\0"
	.byte	0x2
	.uleb128 0xf3
	.ascii "INT32_C\0"
	.byte	0x1
	.uleb128 0xf4
	.ascii "INT32_C(c) __INT32_C(c)\0"
	.byte	0x2
	.uleb128 0xf5
	.ascii "INT64_C\0"
	.byte	0x1
	.uleb128 0xf6
	.ascii "INT64_C(c) __INT64_C(c)\0"
	.byte	0x2
	.uleb128 0xf7
	.ascii "UINT8_C\0"
	.byte	0x1
	.uleb128 0xf8
	.ascii "UINT8_C(c) __UINT8_C(c)\0"
	.byte	0x2
	.uleb128 0xf9
	.ascii "UINT16_C\0"
	.byte	0x1
	.uleb128 0xfa
	.ascii "UINT16_C(c) __UINT16_C(c)\0"
	.byte	0x2
	.uleb128 0xfb
	.ascii "UINT32_C\0"
	.byte	0x1
	.uleb128 0xfc
	.ascii "UINT32_C(c) __UINT32_C(c)\0"
	.byte	0x2
	.uleb128 0xfd
	.ascii "UINT64_C\0"
	.byte	0x1
	.uleb128 0xfe
	.ascii "UINT64_C(c) __UINT64_C(c)\0"
	.byte	0x2
	.uleb128 0xff
	.ascii "INTMAX_C\0"
	.byte	0x1
	.uleb128 0x100
	.ascii "INTMAX_C(c) __INTMAX_C(c)\0"
	.byte	0x2
	.uleb128 0x101
	.ascii "UINTMAX_C\0"
	.byte	0x1
	.uleb128 0x102
	.ascii "UINTMAX_C(c) __UINTMAX_C(c)\0"
	.byte	0x4
	.byte	0x1
	.uleb128 0xd
	.ascii "_GCC_WRAP_STDINT_H \0"
	.byte	0x4
	.byte	0x4
	.byte	0x1
	.uleb128 0xb
	.ascii "AS_MACRO __attribute__((always_inline)) inline\0"
	.byte	0x1
	.uleb128 0xc
	.ascii "arrsizeof(arr) (sizeof(arr)/sizeof(arr[0]))\0"
	.byte	0x1
	.uleb128 0xd
	.ascii "NULL_CHAR '\\0'\0"
	.byte	0x1
	.uleb128 0x10
	.ascii "INFO \"[INFO] \"\0"
	.byte	0x1
	.uleb128 0x11
	.ascii "WARNING \"[WARNING] \"\0"
	.byte	0x1
	.uleb128 0x12
	.ascii "FATAL \"[FATAL] \"\0"
	.byte	0x1
	.uleb128 0x20
	.ascii "TIE2(t1,v1,t2,v2) t1 v1;t2 v2;std::tie((v1),(v2))\0"
	.byte	0x1
	.uleb128 0x25
	.ascii "__stringify_1(x) #x\0"
	.byte	0x1
	.uleb128 0x26
	.ascii "__stringify(x) __stringify_1(x)\0"
	.byte	0x1
	.uleb128 0x27
	.ascii "CALL_CONST_EQUIV(var,method) const_cast<std::remove_const<decltype(((var)->method))>>(reinterpret_cast<const decltype(var) *>(var)->method)\0"
	.byte	0x1
	.uleb128 0x2e
	.ascii "HEX32(a,b) 0x ##a ##b\0"
	.byte	0x1
	.uleb128 0x2f
	.ascii "HEX64(a,b,c,d) 0x ##a ##b ##c ##d\0"
	.byte	0x1
	.uleb128 0x32
	.ascii "BIN32(a,bb,c,d) 0b ##a ##bb ##c ##d\0"
	.byte	0x1
	.uleb128 0x33
	.ascii "BIN64(a,bb,c,d,e,f,g,h) 0b ##a ##bb ##c ##d ##e ##f ##g ##h\0"
	.byte	0x4
	.byte	0x3
	.uleb128 0xc
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x9
	.ascii "INCLUDE_MEMORYCHUNK_H_ \0"
	.byte	0x3
	.uleb128 0xb
	.uleb128 0xa
	.byte	0x1
	.uleb128 0x9
	.ascii "INCLUDE_GENERIC_UTIL_H_ \0"
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0x5d
	.uleb128 0x2
	.byte	0x1
	.uleb128 0x9
	.ascii "INCLUDE_TEMPLATES_IMPLEMENTATION_MEMORYMANAGER_H_ \0"
	.byte	0x3
	.uleb128 0xb
	.uleb128 0xc
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0xa
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x4
	.ascii "MEM_CONFIG_H__ \0"
	.byte	0x4
	.file 22 "D:\\Pool\\eclipse-workspace_aarch64\\newspace\\raspiOS\\include/kernel.h"
	.byte	0x3
	.uleb128 0xb
	.uleb128 0x16
	.byte	0x1
	.uleb128 0x9
	.ascii "INCLUDE_KERNEL_H_ \0"
	.byte	0x4
	.byte	0x3
	.uleb128 0xc
	.uleb128 0xe
	.byte	0x1
	.uleb128 0x9
	.ascii "INCLUDE_INTEGERINTEGERFORMATTER_H_ \0"
	.byte	0x3
	.uleb128 0xc
	.uleb128 0xd
	.byte	0x1
	.uleb128 0x9
	.ascii "INCLUDE_IO_OUTPUT_H_ \0"
	.file 23 "D:\\Pool\\eclipse-workspace_aarch64\\newspace\\raspiOS\\include/io/printk.h"
	.byte	0x3
	.uleb128 0xb
	.uleb128 0x17
	.byte	0x1
	.uleb128 0x9
	.ascii "INCLUDE_IO_PRINTK_H_ \0"
	.file 24 "D:\\Pool\\eclipse-workspace_aarch64\\newspace\\raspiOS\\include/templates_implementation/printk.h"
	.byte	0x3
	.uleb128 0x1b
	.uleb128 0x18
	.byte	0x1
	.uleb128 0x9
	.ascii "INCLUDE_TEMPLATES_IMPLEMENTATION_PRINTK_H_ \0"
	.byte	0x3
	.uleb128 0xb
	.uleb128 0x17
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0x23
	.uleb128 0x3
	.byte	0x1
	.uleb128 0x9
	.ascii "INCLUDE_TEMPLATES_IMPLEMENTATION_INTEGERFORMATTER_H_ \0"
	.byte	0x3
	.uleb128 0xb
	.uleb128 0xe
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.file 25 "D:\\Pool\\eclipse-workspace_aarch64\\newspace\\raspiOS\\include/test/test_base.h"
	.byte	0x3
	.uleb128 0xd
	.uleb128 0x19
	.byte	0x1
	.uleb128 0x9
	.ascii "INCLUDE_TEST_TEST_BASE_H_ \0"
	.file 26 "D:\\Pool\\eclipse-workspace_aarch64\\newspace\\raspiOS\\include/test/../io/printk.h"
	.byte	0x3
	.uleb128 0xc
	.uleb128 0x1a
	.byte	0x4
	.byte	0x1
	.uleb128 0xe
	.ascii "EXPECT_EXPR_EQUAL(expr,value) {do{ if((expr)!=(value)) kout << FATAL << #expr << \"!=\"<<value<<\",the real value is \" << expr << \"\\n\"; }while(false);}\0"
	.byte	0x1
	.uleb128 0x1a
	.ascii "RUN_TEST(testCallable) if(!(testCallable())) { kout << FATAL << \" [TEST] `\"<< #testCallable << \"` failed.\\n\";}\0"
	.byte	0x4
	.byte	0x3
	.uleb128 0xe
	.uleb128 0xf
	.byte	0x1
	.uleb128 0x9
	.ascii "INCLUDE_TEST_TESTMEMORYMANAGER_H_ \0"
	.byte	0x4
	.byte	0x4
	.byte	0
	.section	.debug_line,"dr"
.Ldebug_line0:
	.section	.debug_str,"dr"
.LASF3:
	.ascii "MemoryManager\0"
.LASF7:
	.ascii "IntegerFormatter\0"
.LASF2:
	.ascii "getDataEnd\0"
.LASF0:
	.ascii "MemoryChunk\0"
.LASF4:
	.ascii "base\0"
.LASF1:
	.ascii "getDataPtr\0"
.LASF10:
	.ascii "baseChunk\0"
.LASF9:
	.ascii "this\0"
.LASF5:
	.ascii "allocate\0"
.LASF8:
	.ascii "TestMemoryManager\0"
.LASF11:
	.ascii "p1Chunk\0"
.LASF12:
	.ascii "endChunk\0"
.LASF6:
	.ascii "operator<<\0"
	.ident	"GCC: (GNU) 6.4.0"
	.def	_ZN6OutputlsEPKc;	.scl	2;	.type	32;	.endef
	.def	_ZN11MemoryChunk12setAllocatedEb;	.scl	2;	.type	32;	.endef
	.def	_ZN11MemoryChunk18setNextBaseFromEndEm;	.scl	2;	.type	32;	.endef
	.def	_ZN11MemoryChunk7setSizeEm;	.scl	2;	.type	32;	.endef
	.def	_ZN11MemoryChunk23setNextValidChunkOffsetEm;	.scl	2;	.type	32;	.endef
	.def	_ZN11MemoryChunk6setEndEb;	.scl	2;	.type	32;	.endef
	.def	_ZNK11MemoryChunk7getSizeEv;	.scl	2;	.type	32;	.endef
	.def	_ZNK11MemoryChunk18getNextBaseFromEndEv;	.scl	2;	.type	32;	.endef
	.def	_ZN11MemoryChunk10getDataEndEv;	.scl	2;	.type	32;	.endef
	.def	_ZN11MemoryChunk25mergeTrailingsUnallocatedEv;	.scl	2;	.type	32;	.endef
	.def	_ZN6OutputlsEm;	.scl	2;	.type	32;	.endef
	.def	_ZN13MemoryManagerC1EPvmb;	.scl	2;	.type	32;	.endef
	.def	_ZNK11MemoryChunk11isAllocatedEv;	.scl	2;	.type	32;	.endef
	.def	_ZN13MemoryManager10deallocateEPv;	.scl	2;	.type	32;	.endef
	.def	_ZN11MemoryChunk9moveAheadEm;	.scl	2;	.type	32;	.endef
	.def	_ZN11MemoryChunk7getNextEv;	.scl	2;	.type	32;	.endef
	.def	_ZNK11MemoryChunk5isEndEv;	.scl	2;	.type	32;	.endef
	.def	_ZN13MemoryManager8allocateEm;	.scl	2;	.type	32;	.endef
	.def	_ZN13MemoryManager10reallocateEPvmm;	.scl	2;	.type	32;	.endef
	.def	_Z4itosmjPcm;	.scl	2;	.type	32;	.endef
	.def	__real__Znam;	.scl	2;	.type	32;	.endef
	.def	_Znam;	.scl	2;	.type	32;	.endef
	.section	.rdata$.refptr.koutBuf, "dr"
	.globl	.refptr.koutBuf
	.linkonce	discard
.refptr.koutBuf:
	.quad	koutBuf
	.section	.rdata$.refptr.kout, "dr"
	.globl	.refptr.kout
	.linkonce	discard
.refptr.kout:
	.quad	kout
