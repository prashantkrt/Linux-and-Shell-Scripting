# Linux Compression Tools Notes

Linux provides multiple tools for compressing and decompressing files. Below are the most common ones with commands and examples.

---

## 1. **gzip / gunzip**

### Compress a file
```bash
gzip file.txt
```
👉 Creates `file.txt.gz` and removes the original `file.txt`.

### Decompress a file
```bash
gunzip file.txt.gz
```
👉 Restores the original `file.txt`.

### Keep original file while compressing
```bash
gzip -c file.txt > file.txt.gz
```

**Example:**
```bash
echo "Hello Linux" > file.txt
gzip file.txt
ls
```
**Output:**
```
file.txt.gz
```

---

## 2. **bzip2 / bunzip2**

### Compress a file
```bash
bzip2 file.txt
```
👉 Creates `file.txt.bz2` and removes `file.txt`.

### Decompress a file
```bash
bunzip2 file.txt.bz2
```
👉 Restores the original `file.txt`.

### Keep original file while compressing
```bash
bzip2 -k file.txt
```
👉 Keeps both `file.txt` and `file.txt.bz2`.

**Example:**
```bash
echo "Linux Compression" > file.txt
bzip2 file.txt
ls
```
**Output:**
```
file.txt.bz2
```

---

## 3. **zip / unzip**

### Compress multiple files into a .zip
```bash
zip archive.zip file1 file2
```
👉 Creates `archive.zip` containing file1 and file2.

### Decompress (extract) files
```bash
unzip archive.zip
```
👉 Extracts all files inside the zip.

### List contents of zip without extracting
```bash
unzip -l archive.zip
```

**Example:**
```bash
echo "Hello" > file1.txt
echo "Linux" > file2.txt
zip archive.zip file1.txt file2.txt
ls
```
**Output:**
```
archive.zip  file1.txt  file2.txt
```

---

## 🔹 File Extensions
- `gzip` → `.gz`
- `bzip2` → `.bz2`
- `zip` → `.zip`

---

## 🔹 Quick Summary
| Tool   | Compress Command                  | Decompress Command       | Extension |
|--------|------------------------------------|--------------------------|------------|
| gzip   | `gzip file.txt`                   | `gunzip file.txt.gz`     | `.gz`      |
| bzip2  | `bzip2 file.txt`                  | `bunzip2 file.txt.bz2`   | `.bz2`     |
| zip    | `zip archive.zip file1 file2`     | `unzip archive.zip`      | `.zip`     |

---

✅ Use `gzip` and `bzip2` for single-file compression, and `zip` for multiple files packaged together.

