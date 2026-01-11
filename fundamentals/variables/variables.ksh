#!/usr/bin/env ksh

################################################################################
# Name : Variables
#-------------------------------------------------------------------------------
# Description : Demonstrate variable Declaration, assignment,
#               expansion, and substitution
#-------------------------------------------------------------------------------
# Modification History:
# 01/09/26 Adrian - Initial Creation.
# 01/10/26 Adrian - Added Comments
################################################################################

# ---------------------------
# Variable Declaration
# ---------------------------

username="Adrian"
count=10
empty_var=

print "username = ${username}"
print "count    = ${count}"
print "empty    = '${empty_var}'"

# ---------------------------
# Case Sensitivity
# ---------------------------

var="Hello"
Var="World"

print "var = ${var}"
print "Var = ${Var}"

# ---------------------------
# Variable Expansion
# ---------------------------

print "Hello ${username}_user"

# ---------------------------
# Default Value Substitution
# ---------------------------

unset city

print ${city:-"Unknown City"}    # Does NOT assign
print "city = '${city}'"

print ${city:="Manila"}          # Assigns default
print "city = '${city}'"

# ---------------------------
# Length of Variable
# ---------------------------

print "Length of username: ${#username}"

# ---------------------------
# Substring Extraction
# ---------------------------

word="HelloWorld"

print "Substring (0:5): ${word:0:5}"
print "Substring (5:5): ${word:5:5}"

# ---------------------------
# Pattern Removal
# ---------------------------

file="/root/dir/sub/file.txt"

print "Shortest front removal : ${file#*/}"
print "Longest  front removal : ${file##*/}"
print "Shortest rear removal  : ${file%/*}"
print "Longest  rear removal  : ${file%%/*}"

# ---------------------------
# Search and Replace
# ---------------------------

text="Hello"

print "Replace first l -> L: ${text/l/L}"

# ---------------------------
# Arithmetic Expansion
# ---------------------------

num=5
print "5 + 3 = $((num + 3))"

# ---------------------------
# Command Substitution
# ---------------------------

today=$(date)
print "Today is: ${today}"

# ---------------------------
# End of Script
# ---------------------------
# exit 0


