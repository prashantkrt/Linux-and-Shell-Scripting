# $0 → script name (./myscript.sh)
# $1 → first argument (a)
# $2 → second argument (b)
# $3 → third argument (c d) — quoting preserved when passed
# $last → last argument (k)
# $first → first argument (a)
# $# → number of arguments (3)
# $@ → all arguments as separate quoted words
# $* → all arguments as a single string

# $? → exit status of last command

# $$ → PID of the shell / script or PID of the current shell
# $! → PID of last background job
# $PPID → Parent Process ID


# $- → current shell flags/options
: << 'Example'
A flag (option) changes the shell’s behavior. 
We turn them on/off with the set builtin (or with shell invocation flags).

Shell options/flags in $-:

-e (errexit) → exit script on first non-zero command. Use for safer scripts (fail fast).
-u (nounset) → treat unset variables as error. Use to catch typos ($var not defined).
-x (xtrace) → print each command as it runs (debugging).
-v (verbose) → print shell input lines as they are read (less common).
set -o pipefail → causes pipeline to return failure if any stage fails (not just last).
i in $- → indicates interactive shell (when you’re at terminal).

Example

#-------------------------------------------------------------------
# PositionParameters.sh - demonstrate position parameters

#!/bin/bash
echo "script name: $0"
echo "1st:  $1"
echo "2nd:  $2"
echo "9th:  $9"
echo "10th: ${10}"
echo "all as separate: \"$@\""
echo "all as single: \"$*\""
echo "number of arguments: $#"
echo "first: $first"
echo "last:  $last"
echo "count: $#"


# ./PositionParameters.sh a b c d e f g h i j k

# output:
# script name: ./PositionParameters.sh
# 1st:  a
# 2nd:  b
# 9th:  i
# 10th: j   
# all as separate: "a" "b" "c d" "e" "f" "g" "h" "i" "j" "k"
# all as single: "a b c d e f g h i j k"
# number of arguments: 11
# first: a
# last:  k
# count: 11


#-------------------------------------------------------------------
#!/bin/bash
# check_file.sh - show using $? right after a command

ls /etc/passwd
rc=$?                     # save immediately if you need it later                   
if [ $rc -eq 0 ]; then    # $? values will 0 = success, non-zero = failure/error.
  echo "ls succeeded (exit $rc)"
else
  echo "ls failed (exit $rc)"
fi

# ----------------------------------------------------------------------
#!/bin/bash
# copy_file.sh - show using $? to check command success/failure
cp file1 /tmp/
rc=$?
if [ $rc -ne 0 ]; then
  echo "copy failed (code $rc)"
  exit $rc
fi

#---------------------------------------------------------------------------
#!/bin/bash
# pid_example.sh

echo "PID of last background job is $!"
echo "This script's PID is $$"
echo "Parent PID is $PPID"

# What is PID?
# PID (Process ID) is a unique identifier assigned to each running process in a Unix-like operating system.
# It is used by the system to manage processes and their resources.
#output:
# PID of last background job is 12344
# This script's PID is 12345
# Parent PID is 6789

# -------------------------------------------------------------------
# Example usage of shell options/flags
# -e (errexit) -> exit script on first non-zero command
# -u (nounset) -> treat unset variables as error
# -x (xtrace) -> print each command as it runs
# -v (verbose) -> print shell input lines as they are read
# set -o pipefail -> fail if any command in a pipeline fails
# -------------------------------------------------------------------
# -e (errexit) — fail fast
# What it does: makes the script exit immediately if any command returns a non-zero exit code (indicating failure).
# Why use it: helps catch errors early, preventing the script from continuing in an invalid state

#!/bin/bash
echo "Before error"
false            # returns exit code 1
echo "After false (this WILL run without set -e)"
set -e
echo "flag is: $-" # show current shell flags which is value is -e 
echo "Before error with -e"
false            # script will exit here because of set -e
echo "You WILL NOT see this"

# Output without set -e:
# Before error
# After false (this WILL run without set -e)
# flag is: hBe
# Before error with -e

# -------------------------------------------------------------------
# -u (nounset) — treat unset variables as error

#!/bin/bash
echo "Without set -u: value='$FOO'"
set -u
echo "With set -u: value='$FOO'"   # this will error and exit

# First echo prints value='' (empty).
# After set -u, the second line errors: unbound variable and script exits.

# -------------------------------------------------------------------
# -x (xtrace) — debug mode, print commands as they run
# What it does: prints each command (with arguments) before executing it — very handy for debugging.
# When we run it: we'll see each command printed prefixed with + (or similar), so we can see actual values & command forms.
#!/bin/bash
set -x
a=2
b=3
echo "sum=$((a+b))"
set +x
echo "done"

# Output:
# + a=2
# + b=3
# + echo 'sum=5'
# sum=5
# + set +x
# done

# -------------------------------------------------------------------
# -v (verbose) — print shell input lines as they are read
# What it does: prints the script lines as the shell reads them (less commonly used).

#!/bin/bash
set -v
echo "line 1"
echo "line 2"
set +v

# Output:
# echo "line 1"
# line 1
# echo "line 2"
# line 2

# -------------------------------------------------------------------
# set -o pipefail — fail if any command in a pipeline fails
# What it does: normally, a pipeline returns the exit status of the last command.
# With pipefail, it returns failure if any command fails.

#!/bin/bash
# without pipefail:
false | true
echo "exit without pipefail: $?"   # often 0 because last (true) succeeded

set -o pipefail
false | true
echo "exit with pipefail: $?"      # non-zero because 'false' failed

# -------------------------------------------------------------------
# Interactive shell check with $-
#!/bin/bash
echo "initial: $-"
set -e
echo "after set -e: $-"
set -u
echo "after set -u: $-"
set -x
echo "after set -x: $-"   # you'll also see xtrace output on the next lines
set +x                    # turn off xtrace

# Output:
# initial: hB
# after set -e: hBe
# after set -u: hBeu
# + echo 'after set -x: hBeux'
# after set -x: hBeux

: << 'Note':
In the output,
hB was the example initial flags.
After set -e the letter e appears → hBe.
After set -u the letter u appears → hBeu.
When set -x is enabled, the shell prints the command about to run (the traced line starting with +) and then the actual echo output. The traced line shows the command with the variable expanded.
Note