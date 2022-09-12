abs RAM_BASE

__SystemInfo:           ;basic system informations
        ds.b 256
__MasterStack:          ;main stack
        dc.b 3840
__MasterStackTop:
__InterruptStack:       ;interrupt stack
        dc.b 4096
__InterruptStackTop:
__BootstrapROMFSWrite:   ;location for romfs write bootstrap code
        dc.b 1024
__FreeRAM: