# Variables in KornShell (ksh)

## 📌 Variable Naming Rules

When naming variables in KornShell, follow these rules:

- A variable name can contain **only letters, numbers, and underscores**
- The **first character cannot be a number**
- Variable names **cannot be reserved words**, such as:
  - `if`, `elif`, `else`, `then`
  - `while`, `do`, `done`
  - `for`, `until`
  - `case`, `esac`
  - `continue`, `break`
  - `function`

### ✅ Valid Example

```ksh
 _var='Hello World!' 

```
---

## 📌 Declaring and Assigning Variables

- No spaces are allowed before or after the = sign

- To declare an empty variable, do not assign a value

- Variables are case-sensitive

```ksh
 username="Adrian"
 empty_var=

 var="Hello"
 Var="World"

```

---

## 📌 Variable Expansion

- The $ character is used for:

- Variable expansion

- Arithmetic expansion

- Command substitution

- sing built-in shell expansions avoids external commands and is much faster.

## 📌 Variable Substitution (MKS Toolkit Compatible)

KornShell supports several forms of variable substitution that work under MKS Toolkit, allowing you to manipulate variables efficiently within the shell.

| Variable Syntax                    | Description                                                                |
|------------------------------------|----------------------------------------------------------------------------|
| `${variable:-defaultValue}`        | Get default shell variable value                                           |
| `${variable:=defaultValue}`        | Set default shell variable value                                           |
| `${variable?"Error Message"}`      | Display an error message if parameter is not set and fail                  |
| `${variable:?"Error Message"}`     | Display an error message if parameter is not set or has no value and fail  |
| `${#variable}`                     | Display the length of the variable's value                                 |
| `${var%pattern}`                   | Remove shortest rear (end) pattern                                         |
| `${var%%pattern}`                  | Remove longest rear (end) pattern                                          |
| `${var#pattern}`                   | Remove shortest front pattern                                              |
| `${var##pattern}`                  | Remove longest front pattern                                               |
| `${variable/pattern/string}`       | Find and replace (only replaces first occurrence)                          |
| `${variable:position:length}`      | Substring                                                                  |


## 📊 Variable Substitution Examples

Assume the following variables are set:

```ksh
file=/root/dir/sub/file.txt
var= 
```

| Statement             | Result                  |           Explanation                                                                   |
| --------------------- | ----------------------- | --------------------------------------------------------------------------------------- |
| `print ${var:-Moon}`  | `Moon`                  | `var` is unset or empty, so the default value `Moon` is displayed. `var` remains unset. |
| `print ${var:=Hello}` | `Hello`                 | `var` is unset or empty, so it is assigned the value `Hello` and displayed.             |
| `${foo?"Undefined"}`  | `foo: Undefined`        | `foo` is unset; prints the error message and exits the script.                          |
| `${foo:?"Undefined"}` | `foo: Undefined`        | `foo` is unset or empty; prints the error message and exits the script.                 |
| `print ${#var}`       | `5`                     | Displays the number of characters in `var` (`Hello`).                                   |
| `print ${file#*/}`    | `root/dir/sub/file.txt` | Removes the shortest match from the front up to `/`.                                    |
| `print ${file##*/}`   | `file.txt`              | Removes the longest match from the front up to `/` (similar to `basename`).             |
| `print ${file%/*}`    | `/root/dir/sub`         | Removes the shortest match from the end (similar to `dirname`).                         |
| `print ${file%%/*}`   | *(empty)*               | Removes the longest match from the end.                                                 |
| `print ${var/l/L}`    | `HeLlo`                 | Replaces the first occurrence of `l` with `L`.                                          |
| `print ${var:2:2}`    | `ll`                    | Extracts 2 characters starting at position 2 (index starts at 0).                       |

---

## ⚙️ Command Substitution

`` ` ` `` or `$()` – **Command substitution** allows you to capture the output of any command as an argument to another command.

When you place a command line within backquotes (`` ` ` ``) or `$()`, the shell first runs the command or commands and then replaces the entire expression—including the backquotes or `$()`—with the output of the command.

### Examples

```sh
 var=`wc -l README.txt | cut -d ' ' -f 1`   # var=5
 var=$(wc -l README.txt | cut -d ' ' -f 1) # exactly the same as above
```

```sh 
 #/usr/bin/env ksh
 echo "current working directory"

 e for f in $ (ls [cgituw]*) ; do 
    echo -e "${f%%.*}\t${f##*.}"
    done

    echo 'All done!'
```
