# NEOcore for the 68020

## What is NEOcore

NEOcore is a bootloader for the system020 minicomputer. It is bassed on the idea of the old bios020 but with a tighter goal.

## What does it do

NEOcore can load one of multiple binary files from a ROM filesystem into RAM and then executes them. It can also update itself and the files in the ROM filesystem over serial. When multiple choices for roms to load exist it lets the user choose which to boot.

## How far it the project

Not very far yet

### TODOs

[ ] ROMFS support
    [ ] allocation of space
    [ ] reading of files
    [ ] writing of files
[ ] Serial bootloader
    [ ] enter via button press
    [ ] enter via UI
    [ ] enter as failsafe
    [ ] self update
    [ ] ROMFS interaction
        [ ] read files
        [ ] create files
        [ ] delete files
[ ] UI
    [ ] boot choice selection
    [ ] basic system info
    [ ] configuration UI
[ ] Configuration
    [ ] reading of config file
    [ ] updating of config file via UI
[ ] Peripherals
    [ ] serial
    [ ] timer
    [ ] (maybe PATA mass storage)

## License

The entire code base is licensed under GPL3.

Feel free to use and adapt the code as you see fit, if you keep it under the same license.

No waranty included

Batteries sold seperatly