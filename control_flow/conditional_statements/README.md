# Conditional Statements (Control Flow)

## 📌 Overview

Conditional statements, also known as **branching**, are used in programming to perform **decision-making tasks**.  
In shell scripting, conditional statements allow a script to execute different commands based on whether a condition evaluates to true or false.

---

## 📂 Types of Conditional Statements in Shell

The following conditional statements are supported in KornShell (`ksh`):

- `if` statement
- `if-else` statement
- `if-elif-else` statement
- Nested `if` statement
- `case` statement

---

## 🧱 Basic Syntax

### `if` Statement
```ksh
if [ condition ]; then      # You can also use [[ condition ]]
    command(s)
fi
```

### `if-else` Statement

```ksh
if [ condition ]; then      # You can also use [[ condition ]]
    command(s)
else
    command(s)
fi
```
### `if-elif-else` Statement

```ksh
if [ condition ]; then      # You can also use [[ condition ]]
    command(s)
elif [ condition ]; then
    command(s)
# You can also add an else block
else
    command(s)
fi

```

### `Nested if` Statement

```ksh
if [ condition ]; then
    if [ condition ]; then
        command(s)
    fi
fi

```

### `case` Statement
```ksh
case X in
    pattern_a)
        command(s)
        ;;
    pattern_b)
        command(s)
        ;;
    *)
        command(s)
        ;;
esac

```

## 📝 Notes

- `[ ]` is the traditional test command

- `[[ ]]` is preferred in KornShell for safer string handling

- Always close conditional blocks with  `fi` or  `esac` 

- `Indentation` is not required but strongly recommended for readability