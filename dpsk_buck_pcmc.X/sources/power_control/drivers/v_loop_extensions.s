; **********************************************************************************
;  SDK Version: PowerSmart(TM) Digital Control Library Designer v0.9.12.660
;  CGS Version: Code Generator Script v3.0.2 (01/05/2021)
;  Author:      M91406
;  Date/Time:   01/12/2021 21:22:33
; **********************************************************************************
;  Template for user extension functions extending functions of the common
;  control loop code using User Extension Hooks. These extensions allow user 
;  to tie in proprietary user code into the assembly routine of the main control
;  loop.
;
;  Please refer to the PS-DCLD User Guide for details about how to use this
;  feature.
;
; **********************************************************************************
    
;------------------------------------------------------------------------------
; file start
    .nolist                                 ; (no external dependencies)
    .list                                   ; list of all external dependencies
    
;------------------------------------------------------------------------------
; local inclusions.
    .section .data                          ; place constant data in the data section
    
;------------------------------------------------------------------------------
; include NPNZ16B_t data structure and global constants to allow access
; to the active control loop data object
 
    .include "./sources/power_control/drivers/npnz16b.inc" ; include NPNZ16b_t object data structure value offsets and status flag labels

;------------------------------------------------------------------------------
; source code section.
    .section .text                          ; place code in the text section
    
;------------------------------------------------------------------------------
; Global function call prototype declarations
; These global function calls are used to publish functions across the 
; application. Add a function call prototype to a C-header file to allow 
; calling this function from C-code.
;
;        extern void __attribute__((near)) buck_SyncRectControl(void);
;
;------------------------------------------------------------------------------

    .global _buck_SyncRectControl            ; provide global scope to routine
 
;------------------------------------------------------------------------------

;------------------------------------------------------------------------------
; User Functions
;------------------------------------------------------------------------------
    
;------------------------------------------------------------------------------
; Synchronous rectifier control sets and clears the current limit low-side
; bit of the synchronous rectifier switch drive PWM channel depending on 
; the most recent control output value. The sync rectifier control extension 
; data structure supports two thresholds to apply some hysteresis between the 
; turn-on and turn-off thresholds.
; 
; This function will be called from the standard control loop without 
; context management. 
; 
; The following working registers are reserved and must not be used:
; 
;   - WREG2
;   - WREG4
;
;------------------------------------------------------------------------------
; Start of routine
_buck_SyncRectControl:                      ; local function label (placeholder)
    
    nop                                     ; place your code here
    nop
    nop
    
    mov [w0 + usrParam0], w3
    
    ; Check turn-on threshold
    mov [w0 + #usrParam1], w6            ; load turn-on threshold value
    cpslt w4, w6                         ; compare turn-on threshold against most recent control output
    bset [w3], #4                        ; set current limit low-side bit preventing sync rectifier PWM drive signal from being generated

    ; Check turn-off threshold
    mov [w0 + #usrParam2], w6            ; load turn-off threshold value
    cpsgt w4, w6                         ; compare turn-off threshold against most recent control output
    bclr [w3], #4                        ; clear current limit low-side bit allowing sync rectifier PWM drive signal to be generated

    
    
;------------------------------------------------------------------------------
; End of routine
    return                                  ; end of function; return to caller
    
;------------------------------------------------------------------------------

    
;------------------------------------------------------------------------------
; End of file
    .end                                    ; end of file v_loop_extensions.s
    
;------------------------------------------------------------------------------

     
; **********************************************************************************
;  Download latest version of this tool here: https://microchip-pic-avr-tools.github.io/powersmart-dcld/
; **********************************************************************************
