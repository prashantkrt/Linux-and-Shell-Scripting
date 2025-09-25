# 📝 Linux `sed` Command Cheat Sheet

`sed` stands for **Stream Editor**. It is a powerful command-line tool used for **finding, replacing, inserting, deleting, and transforming text** in files or input streams.

- It works line by line (streaming).
- Reads → applies operations → prints result.

---

## 📌 Basic Syntax
```bash
sed [options] 'script' inputfile
```

---

## ⚙️ Common Options
- `-i` → Edit files in place (make changes directly in the file).
- `-n` → Suppress automatic printing of pattern space (only print what you explicitly choose).
- `-e` → Add multiple scripts to be executed.
- `-f` → Run commands from a script file.

---

## 📖 Printing with `sed`
```bash
$ sed -n 'p' file.txt        # Print all lines
$ sed -n '2,5p' file.txt     # Print lines 2 to 5
$ sed -n '3p' file.txt       # Print only line 3
$ sed -n '1p;3p;5p' file.txt # Print lines 1, 3, and 5
$ sed -n '1p' file.txt       # Print only line 1
```

---

## 🔄 Substitution (Find & Replace)
```bash
$ sed 's/old/new/' file.txt     # Replace first occurrence of 'old' with 'new' per line
$ sed 's/old/new/g' file.txt    # Replace all occurrences in each line
$ sed 's/old/new/gi' file.txt   # Case-insensitive replacement

$ sed -e 's/foo/bar/g' -e 's/test/check/g' file.txt   # Multiple replacements
```

With in-place editing:
```bash
$ sed -i 's/old/new/g' file.txt   # Replace directly in the file
$ sed -i.bak 's/old/new/g' file.txt   # Make backup as file.txt.bak
```

---

## 🗑️ Deleting Lines
```bash
$ sed '2d' file.txt        # Delete line 2
$ sed '2,4d' file.txt      # Delete lines 2 to 4
$ sed '/pattern/d' file.txt # Delete lines matching 'pattern'
```

---

## 📝 Insert & Append
```bash
$ sed '2i\Inserted line' file.txt   # Insert before line 2
$ sed '2a\Appended line' file.txt   # Append after line 2
```

---

## ✏️ Change Entire Line
```bash
$ sed '3c\This is new text' file.txt   # Replace line 3 with new text
```

---

## 🔤 Transliteration (y)
```bash
$ sed 'y/abc/ABC/' file.txt
```
👉 Converts all `a→A`, `b→B`, `c→C`.

---

## 📑 Examples
Input file (`sample.txt`):
```
apple
banana
cherry
```

1. Replace `apple` with `orange`:
```bash
$ sed 's/apple/orange/' sample.txt
orange
banana
cherry
```

2. Delete line 2:
```bash
$ sed '2d' sample.txt
apple
cherry
```

3. Insert text before line 1:
```bash
$ sed '1i\Fruits List:' sample.txt
Fruits List:
apple
banana
cherry
```

---

✅ This cheat sheet covers **printing, substitution, deletion, insertion, appending, changing lines, and transliteration with `sed`**, along with examples.

