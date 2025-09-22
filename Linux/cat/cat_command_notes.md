# Linux `cat` Command Notes

The `cat` command (**concatenate**) is used to **view, create, merge, and append files** in Linux.

---

## 1. Display Contents of a File
```bash
cat file.txt
```
**Description:** Displays the contents of `file.txt`.

**Example:**
```bash
cat file.txt
```
**Output:**
```
Hello
This is a test file.
Welcome to Linux.
```

---

## 2. Display Multiple Files Together
```bash
cat file1.txt file2.txt
```
**Description:** Prints the contents of multiple files, one after another.

**Example:**
```bash
cat file1.txt file2.txt
```
**Output:**
```
Contents of file1.
Contents of file2.
```

---

## 3. Create or Overwrite a File with Input
```bash
cat > newfile.txt
```
**Description:** Creates a new file (or overwrites an existing one) with keyboard input.
- After running, type your content.
- Press **Ctrl+D** to save & exit.

**Example:**
```bash
cat > newfile.txt
Hello
This is a new file.
Ctrl+D

cat newfile.txt
```
**Output:**
```
Hello
This is a new file.
```

---

## 4. Append Input to a File
```bash
cat >> file.txt
```
**Description:** Appends text to the end of a file (creates it if missing).
- Press **Ctrl+D** to save & exit.

**Example:**
```bash
cat >> notes.txt
This is an additional line.
Ctrl+D

cat notes.txt
```
**Output:**
```
Hello
This is my first note.
This is an additional line.
```

---

## 5. Merge Multiple Files into One
```bash
cat file1.txt file2.txt > newfile.txt
```
**Description:** Concatenates two files and writes the result into a new file.

**Example:**
```bash
# file1.txt contains:
Apple

# file2.txt contains:
Banana

cat file1.txt file2.txt > newfile.txt
cat newfile.txt
```
**Output:**
```
Apple
Banana
```

⚠️ **Note:**
- `>` → Overwrites file (old content lost).
- `>>` → Appends to file (old content kept).

---

## 6. Show File with Line Numbers
```bash
cat -n file.txt
```
**Description:** Displays file contents with line numbers.

**Example:**
```bash
cat -n file.txt
```
**Output:**
```
     1  Hello
     2  This is a test file.
     3  Welcome to Linux.
```

---

## 7. Input Redirection with `<`
```bash
cat < file.txt
```
**Description:** Reads input from a file and sends it to `cat` (same as `cat file.txt`).

**Example:**
```bash
cat < myFile.txt
```
**Output:**
```
This is myFile content.
```

---

## Quick Summary
- `cat file.txt` → Show file contents
- `cat file1 file2` → Show multiple files
- `cat > file.txt` → Create/overwrite file with input
- `cat >> file.txt` → Append to file with input
- `cat file1 file2 > newfile.txt` → Merge files into another file
- `cat -n file.txt` → Show file with line numbers
- `cat < file.txt` → Same as `cat file.txt` (input redirection)

✅ `cat` is one of the most versatile commands for **file viewing, creating, and merging** in Linux.