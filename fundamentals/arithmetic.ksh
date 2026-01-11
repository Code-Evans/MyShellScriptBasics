#!/usr/bin/env ksh

################################################################################
# Name : Arithmetic
#-------------------------------------------------------------------------------
# Description : Demonstrates arithmetic operations in KornShell.
#-------------------------------------------------------------------------------
# Modification History:
# 01/10/26 Adrian - Initial Creation.
################################################################################

# ---------------------------
# Integer Variables
# ---------------------------

# In ksh, variables can be treated as integers
count=10
value=3

print "count = ${count}"
print "value = ${value}"

# ---------------------------
# Arithmetic Expansion
# ---------------------------

print "--- Arithmetic Expansion ---"
print "Addition       : $((count + value))"
print "Subtraction    : $((count - value))"
print "Multiplication : $((count * value))"
print "Division       : $((count / value))"
print "Modulo         : $((count % value))"

# ---------------------------
# let Builtin
# ---------------------------

print "--- let builtin ---"
let result=count+value
print "Result using let: ${result}"

let count+=1
print "Incremented count: ${count}"

# ---------------------------
# Arithmetic in Assignments
# ---------------------------

total=$((count * value))
print "Total = ${total}"

# ---------------------------
# Numeric Comparisons
# ---------------------------

print "--- Numeric Comparisons ---"

if (( count > value ))
then
    print "count is greater than value"
fi

if (( count == value ))
then
    print "count is equal to value"
else
    print "count is not equal to value"
fi

# ---------------------------
# Arithmetic with read Input
# ---------------------------

print -n "Enter a number: "
read num

# Ensure numeric input (basic check)
if [[ $num == +([0-9]) ]]
then
    print "Double the number: $((num * 2))"
else
    print "Invalid number"
fi

# ---------------------------
# Common Pitfalls
# ---------------------------

print "--- Common Pitfalls ---"

# Strings in arithmetic become 0
str="abc"
print "String in arithmetic: $((str + 5))"

# Division by zero (will error)
zero=0
# Uncomment to test (will cause runtime error)
# print $((count / zero))

# ---------------------------
# End of Script
# ---------------------------
# exit 0
