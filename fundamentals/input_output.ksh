#!/usr/bin/env ksh

################################################################################
# Name : Input_Output
#-------------------------------------------------------------------------------
# Description : Demonstrates basic input and output operations in KornShell.
#-------------------------------------------------------------------------------
# Modification History:
# 01/10/26 Adrian - Initial Creation.
################################################################################

# ---------------------------
# Output
# ---------------------------

# Print a simple message to standard output
print "Hello from KornShell"

# Print without a trailing newline (-n)
print -n "Enter your name: "

# ---------------------------
# Input
# ---------------------------

# Read user input from standard input
read user_name

print "Hello, ${user_name}!"

# ---------------------------
# Command-Line Arguments
# ---------------------------

# $0 -> script name
# $1 -> first argument
# $2 -> second argument

print "Script name: $0"
print "First argument: $1"
print "Second argument: $2"

# Number of arguments passed
print "Total arguments: $#"

# ---------------------------
# Exit Status
# ---------------------------

# Every command returns an exit status
# 0   -> success
# non-zero -> failure

ls /tmp >/dev/null 2>&1

print "Exit status of last command: $?"

# ---------------------------
# Read input with prompt
# ---------------------------

# Using read with a prompt (-p)
read -p "Enter your age: " age

print "You are ${age} years old"

# ---------------------------
# End of script
# ---------------------------
# exit 0
