# Fundamentals

This section provides an overview of **shell scripting fundamentals** using
**KornShell (.ksh)**. It focuses on the core concepts required to understand
how shell scripts work before moving on to control flow, functions, and
design patterns.

A shell script is a file containing a sequence of commands that are executed
by the shell program line by line. Shell scripting allows you to automate
repetitive tasks, process input, and orchestrate command-line tools through
a single executable script.

By saving commands in a script, the same sequence of steps can be executed
multiple times consistently and efficiently.

Although shell scripts can be saved as either `.sh` or `.ksh`, this repository
uses **`.ksh` exclusively**, as KornShell is the target shell used in the
production environment and throughout the training.

---

## 📂 Contents

| File | Description |
|------|-------------|
| `shebang.ksh` | Special line at the beginning of a script |
| `comment.ksh` | Define the usage of any code or function |
| `expressions.md` | Expression Overview and rules to follow |
| `variables.md` | Variable Overview and rules to follow |
| `variables.ksh` | Variable declaration, assignment, and usage |
| `input_output.ksh` | Reading input and producing output |
| `arithmetic.ksh` | Arithmetic operations and numeric evaluation |
| `quoting.ksh` | Proper quoting rules and common pitfalls |

---

## 📌 Scope of This Section

This folder focuses on:
- Understanding how shell scripts are structured
- Learning core syntax and behavior of KornShell
- Building a strong foundation for writing readable and reliable scripts

Advanced topics such as control flow, functions, design patterns, text
processing, and structured data handling are covered in later sections
of the repository.
