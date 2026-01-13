# Loops in Shell Scripting

## 📌 Overview

 **shell scripting design patterns** are strategies for organizing and writing shell scripts so they are readable, maintainable, reusable, and safe. Instead of ad-hoc commands, these patterns promote structured approaches to common scripting problems.

------------------------------------------------------------------------

## 1. Main Pattern

### Concept

A script should have **one clear entry point**, similar to `main()` in
C, Java, or Go.

### Why it matters

-   Improves readability
-   Makes debugging easier
-   Encourages reusable functions

### Example

``` ksh
#!/usr/bin/ksh

init() {
  print "Initializing..."
}

process_data() {
  print "Processing data..."
}

cleanup() {
  print "Cleaning up..."
}

main() {
  init
  process_data
  cleanup
}

main "$@"
```

------------------------------------------------------------------------

## 2. Guard / Fail-Fast Pattern

### Concept

Validate conditions early and **exit immediately on failure**.

### Why it matters

-   Prevents corrupted data
-   Avoids cascading errors
-   Safer for production scripts

### Examples

#### Argument Guard

``` ksh
[[ $# -lt 1 ]] && {
  print "Usage: $0 <filename>"
  exit 1
}
```

#### File Guard

``` ksh
[[ ! -f "$1" ]] && {
  print "Error: File not found"
  exit 2
}
```

#### Command Guard

``` ksh
cp source.txt dest.txt || {
  print "Copy failed"
  exit 3
}
```

------------------------------------------------------------------------

## 3. Command Dispatcher Pattern

### Concept

One script supports multiple commands (like `git start`, `git stop`).

### Why it matters

-   Clean CLI-style tools
-   One script, many behaviors

### Example

``` ksh
start() {
  print "Starting service..."
}

stop() {
  print "Stopping service..."
}

status() {
  print "Service is running"
}

main() {
  case "$1" in
    start) start ;;
    stop) stop ;;
    status) status ;;
    *)
      print "Usage: $0 {start|stop|status}"
      exit 1
      ;;
  esac
}

main "$@"
```

------------------------------------------------------------------------

## 4. Logging Pattern

### Concept

Centralize all output into logging functions.

### Why it matters

-   Consistent logs
-   Easy redirection to files
-   Better debugging

### Example

``` ksh
LOG_FILE="/var/tmp/myscript.log"

log() {
  print "$(date '+%Y-%m-%d %H:%M:%S') | $1" >> "$LOG_FILE"
}

log_info()  { log "INFO  $1"; }
log_error() { log "ERROR $1"; }

main() {
  log_info "Script started"
  log_info "Doing work"
  log_info "Script finished"
}

main "$@"
```

------------------------------------------------------------------------

## 5. Configuration-as-Data Pattern

### Concept

Move configuration values **outside the script**.

### Why it matters

-   Same script for multiple environments
-   No code changes for config updates
-   Cleaner scripts

### Example Config File

`config.env`

``` ksh
INPUT_DIR="/data/input"
OUTPUT_DIR="/data/output"
MAX_RETRIES=3
```

### Script Usage

``` ksh
#!/usr/bin/ksh

CONFIG_FILE="./config.env"

[[ -f "$CONFIG_FILE" ]] || {
  print "Missing config file"
  exit 1
}

. "$CONFIG_FILE"

main() {
  print "Input Dir: $INPUT_DIR"
  print "Output Dir: $OUTPUT_DIR"
}

main "$@"
```

------------------------------------------------------------------------

## 6. Pipeline Pattern

### Concept

Chain small commands together, each doing **one job well**.

### Why it matters

-   Highly composable
-   Powerful data processing
-   Core Unix philosophy

### Example

``` ksh
cat access.log | grep "ERROR" | awk '{print $1, $5}' | sort | uniq -c
```

### Wrapped in a Function

``` ksh
extract_errors() {
  grep "ERROR" "$1" | awk '{print $1}'
}
```

------------------------------------------------------------------------

## Putting It All Together

``` ksh
#!/usr/bin/ksh

# Guards
[[ $# -eq 0 ]] && exit 1

# Config
. ./config.env

# Logging
log() { print "$(date) | $1"; }

process() {
  log "Processing started"
}

main() {
  case "$1" in
    process) process ;;
    *)
      print "Usage: $0 process"
      exit 1
      ;;
  esac
}

main "$@"
```

------------------------------------------------------------------------

## Summary

  |Pattern                | Purpose                |
  |-----------------------| -----------------------|
  |Main                   | Single entry point     | 
  |Guard / Fail-Fast      | Early error detection  |
  |Command Dispatcher     | CLI-style commands     |
  |Logging                | Centralized logging    |
  |Configuration-as-Data  | Flexible setup         |
  |Pipeline               | Composable data flow   |

------------------------------------------------------------------------


