#!/usr/bin/env ksh

################################################################################
# Name : Quoting
#-------------------------------------------------------------------------------
# Description: Demonstrates quoting rules in KornShell and how
#              they affect variable expansion, command substitution,
#              and word splitting.
#-------------------------------------------------------------------------------
# Modification History:
# 01/09/26 Adrian - Initial Creation.
################################################################################

# ---------------------------
# Setup Variables
# ---------------------------

name="Adrian"
greeting="Hello World"
path="/root/[dir with space]/file.txt"

# ---------------------------
# Unquoted Variables
# ---------------------------

print "--- Unquoted Expansion ---"
print $greeting        # Word splitting occurs
print $path             # Will break due to spaces

# ---------------------------
# Double Quotes
# ---------------------------

print "--- Double Quotes ---"
print "$greeting"       # Preserves spaces, expands variables
print "$path"

# Command substitution inside double quotes
today=$(date)
print "Today is: $today"

# ---------------------------
# Single Quotes
# ---------------------------

print "--- Single Quotes ---"
print '$greeting'       # No variable expansion
print '$today'

# ---------------------------
# Mixed Quoting
# ---------------------------

print "--- Mixed Quotes ---"
print "User: $name's home directory"

# ---------------------------
# Escaping Characters
# ---------------------------

print "--- Escaping ---"
print "He said \"Hello\""
print "Dollar sign: \$100"

# ---------------------------
# Backticks vs $()
# ---------------------------

print "--- Command Substitution ---"
print "Using backticks: `date`"
print "Using \$(): $(date)"

# ---------------------------
# Globbing vs Quoting
# ---------------------------

print "--- Globbing ---"
print *.ksh             # Expands filenames
print "*.ksh"           # Literal string

# ---------------------------
# Here Strings
# ---------------------------

print "--- Here String ---"
wc -w <<< "$greeting"

# ---------------------------
# Common Mistake
# ---------------------------

print "--- Common Mistake ---"
files=$(ls *.ksh)
print "$files"          # Dangerous: word splitting

# Correct way
print --- Correct Way ---
ls *.ksh | while read file
do
    print "$file"
done

# ---------------------------
# End of Script
# ---------------------------
# exit 0
