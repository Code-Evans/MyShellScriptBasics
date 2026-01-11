# Functions in Shell Scripting

## 📌 Overview

A function is a **block of code** that performs a specific task.  
When multiple commands share the same activity, they can be grouped into a function and reused whenever needed.

Functions help:
- Break scripts into **smaller, logical parts**
- Improve **readability and maintainability**
- Make scripts easier to **test and debug**
- Avoid **code duplication**

---

## 🧠 Functions in Shell

Unlike many programming languages, a shell function **does not return a value** in the traditional sense.  
While workarounds exist, for this course we will use **shared variables** to store and retrieve results.

This approach is:
- Safer
- Easier to follow
- Easier to maintain in production scripts

---

## 🧱 Function Syntax

- Follow the same **naming conventions** used for variables when declaring functions.

### Syntax
```ksh
# Description of your function
function_name() {
    command(s)
}
'''
