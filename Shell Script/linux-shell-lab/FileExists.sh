#!/bin/bash
# Check if a file or directory exists

# Special Variables in Shell Scripting:
# $? — Exit status of the last command
# $# — Check if exactly one argument is provided
# $1, $2, $3, … — Positional arguments
# $0 — Name of the script
# $$ — Process ID of the current script
# $@ — All arguments passed to the script
# $* — All arguments as a single string

# Replace <input_file> with your actual input filename.
# Replace <output_file> with your desired output filename.

if [ $# -ne 1 ]; then
  echo "Usage: $0 with argument $1"
  exit 1
fi

path="$1"

if [ -e "$path" ]; then
  echo " $path exists."
else
  echo "$path does not exist."
fi

#----------------------------------------------------------------
# Approach 2 - Using double parentheses for arithmetic evaluation
#!/bin/bash
if(( $# != 1 )); then
  echo "Usage: $0 <path>"
  exit 1
fi
path="$1"
if [[ -e "$path" ]]; then
  echo "$path exists."
else
  echo "$path does not exist."
fi
#----------------------------------------------------------------


# understanding 
# $# → number of arguments passed to the script
# -ne → means “not equal to”
# So [ $# -ne 1 ] means “if the number of arguments is not equal to 1…”
# then:
# echo "Usage: $0 <path>" → prints how to use the script
# $0 → name of the script itself (like ./test_exists.sh)
# exit 1 → stops the script right there (with error code 1)
# Purpose: make sure the user passes exactly one argument.
# If not, show usage and stop.

# now, if the user did pass exactly one
# $1 = the first argument passed to the script
# So if you ran ./test_exists.sh myfile.txt,
# then $1 = myfile.txt.
# -e → checks if a file or directory exists
# So [ -e "$path" ] means “if the file or directory at $path exists…”
# then:
# echo "$path exists." → prints that it exists
# else:
# echo "$path does not exist." → prints that it doesn’t exist


# Checks for file attributes:
# -e → checks if a file or directory exists
# -f → checks if a regular file exists
# -d → checks if a directory exists
# -r → checks if a file is readable
# -w → checks if a file is writable
# -x → checks if a file is executable
# -s → checks if a file is not empty (has size greater than zero)
# -c → checks if a file is a character device file
# -b → checks if a file is a block device file


for string 
case 
esac 