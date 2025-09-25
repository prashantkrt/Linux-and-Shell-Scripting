# 🔍 Linux `grep` Command Cheat Sheet

`grep` = **Global Regular Expression Print**

👉 Used to **search text patterns** inside files or command outputs.

---

## 📌 Basic Usage
```bash
grep "word" file.txt   # Search for a word in a file
```

### Example 1
File (`file.txt`):
```
This is a sample text file.
It contains multiple lines.
We are searching for a specific word.
```
```bash
$ grep "word" file.txt
We are searching for a specific word.
```

### Example 2
File (`file.txt`):
```
Hello World
This is Linux
Welcome to grep
```
```bash
$ grep "Linux" file.txt
This is Linux
```

---

## ⚙️ Common Options with Examples

### 1. Case-insensitive (`-i`)
```bash
$ grep -i "grep" file.txt
welcome to GREP
```

### 2. Show Line Numbers (`-n`)
```bash
$ grep -n "Error" file.txt
1:Error: File not found
3:Error: Access denied
```

### 3. Invert Match (`-v`)
```bash
$ grep -v "Error" file.txt
Success: Operation completed
Warning: Low disk space
```

### 4. Count Matches (`-c`)
```bash
$ grep -c "fail" file.txt
3
```

### 5. Show Filenames with Matches (`-l`)
```bash
$ grep -l "Universe" *.txt
file2.txt
```

### 6. Recursive Search (`-r`)
```bash
$ grep -r "main" /project/src
/project/src/app.java: public static void main(String[] args) {
/project/src/utils.java: public static void main(String[] args) {
```

### 7. Match Whole Words Only (`-w`)
```bash
$ grep -w "cat" file.txt
The cat is on the roof.
```

### 8. Print Only Matches (`-o`)
```bash
$ grep -o "foo[0-9]" file.txt
foo1
foo3
```

### 9. Show Context (`-A`, `-B`, `-C`)
```bash
$ grep -A 2 "Error" file.txt   # After
Error occurred here
Line 3
Line 4

$ grep -B 2 "Error" file.txt   # Before
Line 1
Line 2
Error occurred here

$ grep -C 2 "Error" file.txt   # Context (before+after)
Line 1
Line 2
Error occurred here
Line 4
Line 5
```

---

## 📖 Regex Examples with `grep`

### 1. Match Lines Starting or Ending
```bash
$ grep ^"Start" file.txt   # Lines starting with "Start"
Start the process now
Start again

$ grep "End$" file.txt     # Lines ending with "End"
Ending soon
```

### 2. Match Pattern (e.g., SSN format)
```bash
$ grep "[0-9]\{3\}-[0-9]\{2\}-[0-9]\{4\}" file.txt
My SSN is 123-45-6789
Another one: 987-65-4321
```

### 3. Extended Regex (`-E`)
```bash
$ grep -E "cat|dog" file.txt
I have a cat.
You have a dog.
```

### 4. Fixed String (`-F`)
```bash
$ grep -F "exact string" file.txt
This line contains exact string
```
👉 `-F` treats text as a **literal string**, not regex.

---

## 📊 Summary Table

| Option | Meaning | Example |
|--------|---------|---------|
| `-i` | Case-insensitive | `grep -i "hello" file.txt` |
| `-n` | Show line numbers | `grep -n "error" logfile.log` |
| `-v` | Invert match | `grep -v "success" file.txt` |
| `-c` | Count matches | `grep -c "fail" file.txt` |
| `-l` | Show filenames with matches | `grep -l "TODO" *.java` |
| `-r` | Recursive search | `grep -r "main" ./src` |
| `-w` | Match whole words | `grep -w "cat" file.txt` |
| `-o` | Show only matches | `grep -o "foo[0-9]" file.txt` |
| `-A n` | Show n lines after match | `grep -A 2 "Error" file.txt` |
| `-B n` | Show n lines before match | `grep -B 2 "Error" file.txt` |
| `-C n` | Show n lines around match | `grep -C 2 "Error" file.txt` |

---

✅ This cheat sheet covers **basic searching, options, regex, and real examples** for `grep`.

