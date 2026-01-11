# 📌 Expression Evaluation in Shell

We can evaluate expressions such as **conditions** and **arithmetic** in Shell using `expr`, `let`, `$(( ))`, `[ ]`, and `[[ ]]`.

---

## Using `expr`

`expr` evaluates a given expression and displays its corresponding output.

### 📌 Arithmetic operations

Supported operators: `+`, `-`, `*`, `/`, `%`

```sh
expr 1 + $b
result=`expr 1 + $b`
```

### 📌 Numeric / String comparisons

Supported operators: `\<`, `\<=`, `\>`, `\>=`, `!=`, `==`

```sh
expr $a \< $b
result=$(expr $a \< $b)
```

> **Note:**
> - Spaces **before and after** operators are required.
> - `<` and `>` must be **escaped**.

---

## Using `$(( ))`

POSIX-compliant arithmetic expansion. Similar to `expr` but:
- Spaces are **not required**
- `<` and `>` are **not escaped**
- Variables are used **without `$`**

### 📌 Arithmetic operations

```sh
$((1 + b))
result=$((1 + b))
```

### 📌 Numeric / String comparisons

```sh
$(( a < b ))
result=$(( a < b ))
```

---

## Using `[ ]` and `[[ ]]`

We can also evaluate expressions using test commands. These **do not produce output**, so results **cannot be stored**, but they return:
- `0` → true
- `1` → false

`[ ]` is POSIX-compliant.

---

## 📌 Numeric Operations

| Operator | Meaning |
|--------|--------|
| `-lt` | Less than |
| `-le` | Less than or equal |
| `-gt` | Greater than |
| `-ge` | Greater than or equal |
| `-ne` | Not equal |
| `-eq` | Equal |

---

## 📌 String Operations

| Operator | Meaning |
|--------|--------|
| `=` | Equal |
| `!=` | Not equal |
| `-n string` | String length is non-zero |
| `-z string` | String length is zero |

---

## 📌 File Operations

| Operator | Meaning |
|--------|--------|
| `-d file` | File is a directory |
| `-e file` | File exists |
| `-f file` | File is an ordinary file |
| `-s file` | File size is non-zero |
| `-w file` | File is writable |
| `file1 -nt file2` | file1 is newer than file2 |
| `file1 -ot file2` | file1 is older than file2 |

---

## 📌 Multiple Conditions

| Operator | Meaning | Example |
|--------|--------|--------|
| `-a` | Logical AND | `[ $rc -eq 0 -a $rc -eq 12 ]` |
| `-o` | Logical OR | `[ $rc -eq 0 -o $rc -eq 12 ]` |

