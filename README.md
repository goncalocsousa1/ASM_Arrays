# Arrays in x86 Assembly

This project is a simple implementation to demonstrate how to work with arrays in x86 Assembly, based on the article [Arrays in x86 Assembly](https://dev.to/leandronsp/construindo-um-web-server-em-assembly-x86-parte-i-introducao-14p5) by Leandro Nascimento.
The goal is to explore basic concepts of array manipulation in Assembly language, including array creation, manipulation, and iteration over integer arrays.

## Features
  - Definition of arrays in memory.
  - Iteration over arrays using Assembly loop instructions.
  - Manipulation of array elements.
  - Output of results to the terminal using system calls.

## Running the Project
1. **Clone the repository:**
   ```
   git clone https://github.com/goncalocsousa1/ASM_Arrays.git
   cd ASM_Arrays/Code
   ```
2. **Choose an example to run (e.g., dynamic_array.asm)**
3. **Compile the Assembly code:**
   ```
   nasm -f elf64 dynamic_array.asm -o dynamic_array.o
   ```
4. **Link the compiled code:**
   ```
   ld dynamic_array.o -o dynamic_array
   ```
5. **Run the program:**
  ```
  ./dynamic_array
  ```
You can replace dynamic_array.asm with any other .asm file from the Code directory to run a different example.

## Credits

As mentioned above, this project is based on the article [Arrays in x86 Assembly](https://dev.to/leandronsp/construindo-um-web-server-em-assembly-x86-parte-i-introducao-14p5), written by Leandro Nascimento, which provides an excellent introduction to array manipulation in Assembly.
