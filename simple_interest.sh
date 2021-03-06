#! /bin/sh
#
# Testing various shell script invocations.

#----------------------------------------------------------------------------
# Shell scripts that should fail
#----------------------------------------------------------------------------
LC_ALL=C
echo "Execute a directory"
./x86/

echo "Execute a non-executable file"
./shell.vgtest

echo "Execute a script with a bad interpreter name"
./shell_badinterp

echo "Execute a binary file"
./shell_binaryfile

echo "Execute a non-existent file"
./shell_nosuchfile

echo "Execute a non-existent file (2)"
shell_nosuchfile

#----------------------------------------------------------------------------
# Shell scripts that should pass
#----------------------------------------------------------------------------
echo "Execute a valid script with a #! line"
./shell_valid1

echo "Execute a valid script without a #! line"
./shell_valid2

echo "Execute a valid script with #! but no interpname"
./shell_valid3

echo "Execute a zero-length file"
./shell_zerolength
