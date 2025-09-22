# Linux `grep` Command

The `grep` command stands for **Global Regular Expression Print**.\
It is used to **search for text patterns inside files or command
outputs**.\
`grep` is extremely powerful for filtering and searching text.

------------------------------------------------------------------------

## Basic Syntax

``` bash
grep [options] "pattern" filename
```

-   `"pattern"` → the word or regular expression you are searching for.
-   `filename` → file(s) where the search will be performed.

------------------------------------------------------------------------

## Examples

### 1. Search for a word in a file

``` bash
grep "word" file.txt
```

**Example:**

    file.txt content:
    This is a sample text file.
    It contains multiple lines.
    We are searching for a specific word.

    Command:
    grep "word" file.txt

    Output:
    We are searching for a specific word.

------------------------------------------------------------------------

### 2. Case-insensitive search

``` bash
grep -i "word" file.txt
```

**Example:**

    file.txt content:
    Hello World
    This is Linux
    welcome to GREP

    Command:
    grep -i "grep" file.txt

    Output:
    welcome to GREP

------------------------------------------------------------------------

### 3. Show line numbers with matches

``` bash
grep -n "Error" file.txt
```

**Example:**

    file.txt content:
    Error: File not found
    Warning: Low disk space
    Error: Access denied

    Command:
    grep -n "Error" file.txt

    Output:
    1:Error: File not found
    3:Error: Access denied

------------------------------------------------------------------------

### 4. Invert match (show non-matching lines)

``` bash
grep -v "Error" file.txt
```

**Example:**

    file.txt content:
    Success: Operation completed
    Error: File not found
    Warning: Low disk space

    Output:
    Success: Operation completed
    Warning: Low disk space

------------------------------------------------------------------------

### 5. Count number of matches

``` bash
grep -c "fail" file.txt
```

**Example:**

    file.txt content:
    fail
    success
    fail
    fail

    Output:
    3

------------------------------------------------------------------------

### 6. Show filenames with matches

``` bash
grep -l "word" *.txt
```

**Example:**

    file1.txt content:
    Hello World

    file2.txt content:
    Hello Universe

    Command:
    grep -l "Universe" *.txt

    Output:
    file2.txt

------------------------------------------------------------------------

### 7. Recursive search in directories

``` bash
grep -r "main" /project/src
```

**Example:**

    /project/src/app.java:
    public static void main(String[] args) {
        System.out.println("Hello from App");
    }

    /project/src/utils.java:
    public class Utils {
        public static void main(String[] args) {
            System.out.println("Hello from Utils");
        }
    }

    Command:
    grep -r "main" /project/src

    Output:
    /project/src/app.java:public static void main(String[] args) {
    /project/src/utils.java:public static void main(String[] args) {

------------------------------------------------------------------------

### 8. Match whole words only

``` bash
grep -w "cat" file.txt
```

**Example:**

    file.txt content:
    The cat is on the roof.
    The category is important.

    Output:
    The cat is on the roof.

------------------------------------------------------------------------

### 9. Print only the matching part

``` bash
grep -o "pattern" file.txt
```

**Example 1:**

    file.txt content:
    foo1 bar2 foo3 baz4

    Command:
    grep -o "foo[0-9]" file.txt

    Output:
    foo1
    foo3

**Example 2:**

    log.txt content:
    User1 ID=101
    User2 ID=202
    User3 ID=303

    Command:
    grep -o "ID=[0-9]\+" log.txt

    Output:
    ID=101
    ID=202
    ID=303

------------------------------------------------------------------------

### 10. Show n lines **After** match

``` bash
grep -A 2 "Error" file.txt
```

**Example:**

    file.txt content:
    Line 1
    Error occurred here
    Line 3
    Line 4
    Line 5

    Output:
    Error occurred here
    Line 3
    Line 4

------------------------------------------------------------------------

### 11. Show n lines **Before** match

``` bash
grep -B 2 "Error" file.txt
```

**Example:**

    file.txt content:
    Line 1
    Line 2
    Error occurred here
    Line 4
    Line 5

    Output:
    Line 1
    Line 2
    Error occurred here

------------------------------------------------------------------------

### 12. Show n lines **Around** match

``` bash
grep -C 2 "Error" file.txt
```

**Example:**

    file.txt content:
    Line 1
    Line 2
    Error occurred here
    Line 4
    Line 5

    Output:
    Line 1
    Line 2
    Error occurred here
    Line 4
    Line 5

------------------------------------------------------------------------

## Summary Table

  --------------------------------------------------------------------------------------
  Option   Meaning                                     Use Case Example
  -------- ------------------------------------------- ---------------------------------
  `-i`     Case-insensitive search                     `grep -i "hello" file.txt`

  `-n`     Show line numbers                           `grep -n "error" logfile.log`

  `-v`     Invert match (non-matching lines)           `grep -v "success" file.txt`

  `-c`     Count matches                               `grep -c "fail" file.txt`

  `-l`     Show filenames with matches                 `grep -l "TODO" *.java`

  `-r`     Recursive search in directories             `grep -r "main" ./src`

  `-w`     Match whole words only                      `grep -w "cat" file.txt`

  `-o`     Print only matching part                    `grep -o "foo[0-9]" file.txt`

  `-A n`   Show n lines After match                    `grep -A 2 "Error" logfile.log`

  `-B n`   Show n lines Before match                   `grep -B 2 "Error" logfile.log`

  `-C n`   Show n lines Around match                   `grep -C 2 "Error" logfile.log`
  --------------------------------------------------------------------------------------

------------------------------------------------------------------------

## Quick Examples

``` bash
grep "error" logfile.log      # search for "error" in logfile.log
grep -i "hello" file.txt      # case insensitive
grep -n "error" logfile.log   # show line numbers with matches
grep -v "success" file.txt    # show lines without "success"
grep -c "fail" file.txt       # count number of matches
grep -l "TODO" *.java         # show filenames with matches
grep -r "main" ./src          # recursive search in directories
grep -w "cat" file.txt        # match whole words only
grep -o "foo[0-9]" file.txt   # print only the matching part
grep -A 2 "Error" logfile.log # show 2 lines after each match
grep -B 2 "Error" logfile.log # show 2 lines before each match
grep -C 2 "Error" logfile.log # show 2 lines around each match
```

------------------------------------------------------------------------

✅ `grep` is one of the most powerful text search tools in Linux!
