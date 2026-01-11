# Loops in Shell Scripting

## 📌 Overview

Loops allow us to take a series of commands and **re-run them repeatedly** until a particular condition is met.  
They are commonly used to **automate repetitive tasks** in shell scripting.

---

## 📂 Types of Loop Statements

There are **three basic loop statements** available in shell scripting:

- `while` loop
- `until` loop
- `for` loop

---

## 🧱 Basic Syntax

## While Loop

- The `while` loop executes commands **as long as the condition remains true**.

### Syntax
```ksh
while [ condition ]; do
    command(s)
done
```

## Until Loop

- The `until` loop executes commands **until the condition becomes true.**
It is essentially the opposite of the `while` loop.

### Syntax
```ksh
until [ condition ]; do
    command(s)
done
```

## For Loop

- The `for` loop iterates over a list of values and **executes commands for each item in the list**

### Syntax
```ksh
for var in <list>; do
    command(s)
done
```

## Break and Continue Statement

- Sometimes you may need to alter the flow of the loop and terminate the loop or only the current iteration,  This is done using break and continue.

# Break  
- Terminates the current loop and passes program control to the command that follows the terminated loop. 

### Example
```ksh
#!/usr/bin/env ksh

i=1
while [ $i -le 3 ]; do
    j=1
    while [ $j -le 3 ]; do
        if [ $j -eq 2 ]; then
            break 2
        fi
        echo "j: $j"
        j=$((j+1))
    done
    echo "i: $i"
    i=$((i+1))
done

echo "All done!"

```

### Output
```ksh
j: 1
All done!

```

# Continue 
- Skips the remaining commands inside the body of the enclosing loop for the current iteration and passes program control to the next iteration of the loop. 

### Example
```ksh
#!/usr/bin/env ksh

i=0

while [[ $i -lt 5 ]]; do
    ((i++))
    if [[ "$i" == "2" ]]; then
        continue
    fi
    echo "Number: $i"
done
```
### Output
```ksh
Number: 1
Number: 3
Number: 4
Number: 5

```

### Syntax
```ksh
#!usr/bin/env ksh

i=0

while [[ $i -lt 5 ]]; do
    ((i++))
    if [[ "$i" == "2" ]]; then
        continue
    fi
    echo "Number: $i"
done

```

## 📝 Notes

- `[ ]` is the traditional test command

- `[[ ]]` is preferred in KornShell for safer string handling

- Always close loop blocks with  `d6ne` 

- `Indentation` is not required but strongly recommended for readability

- Sometimes you may need to alter the flow of the loop and terminate the loop or only the current iteration,  This is done using break and continue.


