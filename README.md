<div align="center">

# 🧠 HolyBrain

A lightweight, efficient **Brainfuck interpreter** written natively in **HolyC** for the TempleOS environment.

</div>

---

## 📖 Description

**HolyBrain** is a minimalist interpreter designed to execute standard Brainfuck code directly within TempleOS. Leveraging HolyC's direct memory management and fast execution speed, this project provides a seamless way to run esoteric programs on the TempleOS platform.

---

## 📁 Folder Structure

```text
.
└── HolyBrain.HC
```

---

## ⚙️ Dependencies

*   **TempleOS** (or a compatible environment like Shrine).
*   **HolyC Compiler** (included natively in TempleOS).

---

## 🚀 How to Compile

Because HolyC is a Just-In-Time (JIT) compiled language integrated into TempleOS, traditional compilation steps (like GCC or Make) are not required. 

To load and compile the program into your TempleOS environment:

1. Boot into TempleOS.
2. Open the Adam shell or your preferred HolyC environment.
3. Include the source file using the `#include` directive:
   ```haskel
   #include "HolyBrain.HC";
   ```

---

## 💻 How to Use

Once the file is loaded into your TempleOS session, you can execute Brainfuck code by passing a valid `U8*` string into the `HB()` function.

### Example Usage:

To run a classic "Hello, World!" program:

```haskel
// Define your Brainfuck code
U8 *hello_world = "[-]>++++[<+++++>-]<+.++++++[<+++++>-]<++.---.";

// Execute the interpreter
HB(hello_world);
```

### Supported Brainfuck Commands:

| Command | Description |
| :---: | :--- |
| `+` | Increment the byte at the data pointer. |
| `-` | Decrement the byte at the data pointer. |
| `>` | Move the data pointer to the right. |
| `<` | Move the data pointer to the left. |
| `.` | Output the byte at the data pointer as an ASCII character. |
| `,` | Accept one byte of input and store it at the data pointer. |
| `[` | If the byte at the data pointer is zero, jump forward to the matching `]`. |
| `]` | If the byte at the data pointer is nonzero, jump back to the matching `[`. |