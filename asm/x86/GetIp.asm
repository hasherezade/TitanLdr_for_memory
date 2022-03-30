;;
;; Reflective Loader
;;
;; GuidePoint Security LLC
;;
;; Threat and Attack Simulation
;;
[BITS 32]

;;
;; Export
;;
GLOBAL _GetIp
GLOBAL _Hooks
GLOBAL _BeaconConfig
GLOBAL _AllocAddress
GLOBAL _PEAddress
GLOBAL _dwPE
[SECTION .text$C]

_Hooks:
	;;
	;; Arbitrary symbol to reference as
	;; start of hook pages
	;;
	nop

[SECTION .text$F]
_AllocAddress:
	push ebp
	mov ebp, esp
	mov eax, 042424242h
	pop ebp
	retn
_BeaconConfig:
	push ebp
	mov ebp, esp
	mov eax, 041414141h
	pop ebp
	retn
_PEAddress:
	push ebp
	mov ebp, esp
	mov eax, 043434343h
	pop ebp
	retn
_dwPE:
	push ebp
	mov ebp, esp
	mov eax, 045454545h
	pop ebp
	retn
_GetIp:
	;;
	;; Execute next instruction
	;; 
	call	_get_ret_ptr

_get_ret_ptr:
	;;
	;; Pop address and sub diff
	;;
	pop	eax
	sub	eax, 5
	ret


_Leave:
	db 'E', 'N', 'D', 'O', 'F', 'C', 'O', 'D', 'E'
