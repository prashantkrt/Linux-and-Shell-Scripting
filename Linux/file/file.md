# 📂 Linux `file` Command Cheat Sheet

The **`file` command** in Linux is used to determine the **type of a file**. It checks the file content (not just the extension) and tells you if it’s text, binary, executable, image, compressed file, etc.

👉 General syntax:
```bash
file [options] filename
```

---

## 📖 Basic Usage

### 1. Identify File Type
```bash
$ file myfile.txt
myfile.txt: ASCII text
```
👉 Detects plain text file.

### 2. Multiple Files
```bash
$ file file1.txt file2.jpg script.sh
file1.txt: ASCII text
file2.jpg: JPEG image data
script.sh: Bourne-Again shell script, ASCII text executable
```

---

## ⚙️ Common Options

### 1. `-b` → Brief output (no filename)
```bash
$ file -b myfile.txt
ASCII text
```

### 2. `-i` → MIME type
```bash
$ file -i myfile.txt
myfile.txt: text/plain; charset=us-ascii

$ file -i image.png
image.png: image/png; charset=binary
```

### 3. Detect Executables
```bash
$ file /bin/ls
/bin/ls: ELF 64-bit LSB executable, x86-64, dynamically linked
```

### 4. Detect Compressed Files
```bash
$ file archive.tar.gz
archive.tar.gz: gzip compressed data, from Unix, original size modulo 2^32 10240
```

### 5. Detect Scripts
```bash
$ file script.sh
script.sh: Bourne-Again shell script, ASCII text executable

$ file script.py
script.py: Python script, ASCII text executable
```

### 6. Detect Images
```bash
$ file photo.jpg
photo.jpg: JPEG image data, EXIF standard

$ file diagram.png
diagram.png: PNG image data, 800 x 600, 8-bit colormap
```

---

## 📊 Summary
- `file` looks **inside the file** (not just extension).
- Can identify **text, binary, executables, scripts, compressed files, images, etc.**
- Useful when dealing with unknown files or verifying formats.

---

✅ The `file` command is a quick way to identify **what kind of file you are dealing with** before opening or processing it.

