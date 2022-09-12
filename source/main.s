;-------------------------------------------------
;spatial important includes
;DO NOT MOVE
;defines vital system informations
;and the initial vector table that is used after a reset
;moving these includes will keep the system from booting
.include "system.s"
.include "vector.s"
;-------------------------------------------------
;DO NOT MOVE
;ROMFS root is exspected to be at ROM_BASE + $0400
;FAT is exspected to be at ROM_BASE + $0800
ROMFS:
        ;ROMFS root
        ds.b 1024
        ;ROMFS FAT
        ds.w ROMFS_PAGES
    
    .ROMFS_END:
        ;alignment hack to make shure that the romfs ends on a 512 byte boudry
        if ((.ROMFS_END & $1ff) != 0)
            ds.b 512 - (.ROMFS_END & $1ff)    
;-------------------------------------------------
;code
main:
        move #__MasterStackTop, A0
        movec A0, MSP
        move #__InterruptStackTop, A0
        movec A0, ISP


;-------------------------------------------------
;spatial important include
;do not move
;defines volatile variables in ram
.include "volatile.s"