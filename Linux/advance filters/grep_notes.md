# 📘 `grep` Command in Linux

👉 `grep` = **Global Regular Expression Print**  
👉 It is used to **search text patterns** inside files or command outputs.

---

## 🔹 Basic Usage

### 1. Search for a word in a file
```bash
grep "word" file.txt
```
**Example:**
```
file.txt:
This is a sample text file.
It contains multiple lines.
We are searching for a specific word.
```
```bash
grep "word" file.txt
```
**Output:**
```
We are searching for a specific word.
```

---

### 2. Case-insensitive search
```bash
grep -i "word" file.txt
```
**Example:**
```
file.txt:
Hello World
This is Linux
welcome to GREP
```
```bash
grep -i "grep" file.txt
```
**Output:**
```
welcome to GREP
```

---

### 3. Show line numbers with matches
```bash
grep -n "word" file.txt
```
**Example:**
```
file.txt:
1: Error: File not found
2: Warning: Low disk space
3: Error: Access denied
```
```bash
grep -n "Error" file.txt
```
**Output:**
```
1:Error: File not found
3:Error: Access denied
```

---

### 4. Invert match (show non-matching lines)
```bash
grep -v "word" file.txt
```
**Example:**
```
file.txt:
Success: Operation completed
Error: File not found
Warning: Low disk space
```
```bash
grep -v "Error" file.txt
```
**Output:**
```
Success: Operation completed
Warning: Low disk space
```

---

### 5. Count number of matches
```bash
grep -c "word" file.txt
```
**Example:**
```
file.txt:
fail
success
fail
fail
```
**Output:**
```
3
```

---

### 6. Show filenames with matches
```bash
grep -l "word" *.txt
```
**Example:**
```
file1.txt: Hello World
file2.txt: Hello Universe
```
```bash
grep -l "Universe" *.txt
```
**Output:**
```
file2.txt
```

---

### 7. Recursive search in directories
```bash
grep -r "word" /path/to/dir
```
**Example:**
```
/project/src/app.java:    public static void main(String[] args) {
/project/src/utils.java:  public static void main(String[] args) {
```

---

### 8. Match whole words only
```bash
grep -w "word" file.txt
```
**Example:**
```
file.txt:
The cat is on the roof.
The category is important.
```
```bash
grep -w "cat" file.txt
```
**Output:**
```
The cat is on the roof.
```

---

### 9. Print only the matching part
```bash
grep -o "pattern" file.txt
```
**Example:**
```
file.txt:
foo1 bar2 foo3 baz4
```
```bash
grep -o "foo[0-9]" file.txt
```
**Output:**
```
foo1
foo3
```

---

### 10. Show `n` lines **after** match
```bash
grep -A n "word" file.txt
```
**Example:**
```
Error occurred here
Line 3
Line 4
```

---

### 11. Show `n` lines **before** match
```bash
grep -B n "word" file.txt
```
**Example:**
```
Line 1
Line 2
Error occurred here
```

---

### 12. Show `n` lines **around** match
```bash
grep -C n "word" file.txt
```
**Example:**
```
Line 1
Line 2
Error occurred here
Line 4
Line 5
```

---

## 📌 Summary Table

| Option | Meaning                                | Example |
|--------|----------------------------------------|---------|
| `-i`   | Case-insensitive search                | `grep -i "hello" file.txt` |
| `-n`   | Show line numbers                      | `grep -n "error" logfile.log` |
| `-v`   | Invert match (show non-matching lines) | `grep -v "success" file.txt` |
| `-c`   | Count number of matches                | `grep -c "fail" file.txt` |
| `-l`   | Show filenames with matches            | `grep -l "TODO" *.java` |
| `-r`   | Recursive search in directories        | `grep -r "main" ./src` |
| `-w`   | Match whole words only                 | `grep -w "cat" file.txt` |
| `-o`   | Print only the matching part           | `grep -o "foo[0-9]" file.txt` |
| `-A n` | Show `n` lines After match             | `grep -A 2 "Error" logfile.log` |
| `-B n` | Show `n` lines Before match            | `grep -B 2 "Error" logfile.log` |
| `-C n` | Show `n` lines Around match            | `grep -C 2 "Error" logfile.log` |

---

## 🔹 Quick Examples

```bash
grep "error" logfile.log       # search for "error"
grep -i "hello" file.txt       # case insensitive
grep -n "error" logfile.log    # show line numbers
grep -v "success" file.txt     # show lines without "success"
grep -c "fail" file.txt        # count matches
grep -l "TODO" *.java          # show filenames
grep -r "main" ./src           # search recursively
grep -w "cat" file.txt         # whole word match
grep -o "foo[0-9]" file.txt    # only matching part
grep -A 2 "Error" logfile.log  # 2 lines after match
grep -B 2 "Error" logfile.log  # 2 lines before match
grep -C 2 "Error" logfile.log  # 2 lines around match
```
