# Nano8

Welcome to the Nano8 General-Purpose Computer Project. The goal of this project is to create a general-purpose computer that is simple enough for beginners to understand while maintaining strong performance. Currently, the project is still in its early stages, so there isn't really much to see.
The project aims to encompass a wide range of components, including:

- A custom 8bit CPU core
- Various computer designs built around the core
- A fully functional operating system
- An assembler and assembly language
- A simple programming language providing some assembly abstractions
- Multiple OS programs and applications
- A simple GPU for graphical applications

It will be implemented as an FPGA soft-core SoC, an emulator, as an logisim simulation and using TTL logic chips.
Ultimately, this project aims to be both an educational resource and just an enjoyable experience.

## Nano8 Computer

The Computer aims to be as simple as possible while achiving a tolarable performance. As there will be multiple versions with slightly different specs and also multiple different implementations, the exact specification vary a lot, but here are some guidelines:

| Feature             | Specification                                           |
|---------------------|---------------------------------------------------------|
| **CPU**             | Nano 8 (8-bit, custom ISA)                              |
| **BUS size**       | 8-bit Data, 16-bit Address                              |
| **Clock Speed**     | 4 MHz - 150 MHz (depending on implementation)           |
| **RAM**             | 24 KB - 1 MB (depending on version)                     |
| **File Storage**    | >= 32 KB (depending on version)                         |
| **Communication**   | USART, SPI                                              |
| **Display**         | VGA, 40 pin Display, SPI display (depending on version) |

## Implementations

The Computer will be implemented in 4 different enviroments, the first will be a logisim evolution simulation, to develop the architecture. After that I will create an FPGA design to be able to test the computer in real hardware. Once that is achived I will start to create an Emulator and a PCB using TTL logic ICs and some memory chips.
