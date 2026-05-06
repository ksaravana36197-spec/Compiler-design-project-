# Mini Compiler using Flex and Bison

## 📌 Project Description
This project implements a simple mini compiler that performs lexical analysis and syntax analysis for arithmetic and assignment expressions.

The system checks whether a given input expression is valid based on predefined grammar rules.

---

## 🛠 Tools Used
- Flex (Lexical Analyzer Generator)
- Bison (Parser Generator)
- GCC Compiler
- C Programming Language

---

## ⚙️ Features
- Recognizes identifiers and numbers
- Supports arithmetic operations (+, -, *, /)
- Supports assignment expressions (a = b + c)
- Handles parentheses for grouping
- Detects valid and invalid expressions

---

## 🧠 Working Process

### 1. Lexical Analysis
The lexer scans the input and converts it into tokens such as:
- Identifiers (a, b, x)
- Numbers (10, 20)
- Operators (+, -, *, /, =)

---

### 2. Parsing
The parser checks whether the tokens follow valid grammar rules using Bison.

Grammar supports:
- Assignment expressions
- Arithmetic expressions
- Operator precedence

---

### 3. Output
The program prints:
- "Valid Assignment Expression"
- "Valid Arithmetic Expression"
- "Invalid Expression"

---

## ▶️ How to Run

Open terminal inside `src` folder and run:

```bash
bison -d parser.y
flex lexer.l
gcc lex.yy.c parser.tab.c -o compiler
./compiler
