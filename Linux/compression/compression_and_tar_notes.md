# Linux Compression & Archiving Tools Notes

Linux provides multiple tools for **compression** (reducing file size) and **archiving** (bundling files). Below are detailed notes with examples.

---

## 🔹 Compression Tools

### 1. **gzip / gunzip** (used for files)
- **Extension**: `.gz`
- **Commands:**
  ```bash
  gzip file.txt        # compress → file.txt.gz (original deleted)
  gunzip file.txt.gz   # decompress → restores file.txt
  ```

- **Keep original while compressing:**
  ```bash
  gzip -k file.txt                     # creates file.txt.gz and keeps file.txt
  gzip -c file.txt > file.txt.gz       # compresses and redirects output
  ```

📌 **Difference between `-k` and `-c`:**
- `-k` → gzip itself keeps original file.
- `-c >` → write compressed data to stdout, redirect manually.

---

### 2. **bzip2 / bunzip2** (used for files)
- **Extension**: `.bz2`
- **Commands:**
  ```bash
  bzip2 file.txt        # compress → file.txt.bz2 (original deleted)
  bunzip2 file.txt.bz2  # decompress → restores file.txt
  ```

- **Keep original while compressing:**
  ```bash
  bzip2 -k file.txt
  bzip2 -c file.txt > file.txt.bz2
  ```

📌 **Note**: Slower than gzip, but better compression.

---

### 3. **xz / unxz** (used for files)
- **Extension**: `.xz`
- **Commands:**
  ```bash
  xz file.txt         # compress → file.txt.xz (original deleted)
  unxz file.txt.xz    # decompress → restores file.txt
  ```

- **Keep original:**
  ```bash
  xz -k file.txt
  ```

📌 **Note**: Highest compression ratio but slowest.

---

### 4. **zip / unzip** (used for files and directories)
- **Extension**: `.zip`
- **Commands:**
  ```bash
  zip archive.zip file1 file2     # compress files
  unzip archive.zip               # extract files
  ```

- **Compress a directory:**
  ```bash
  zip -r archive.zip mydir/
  ```

- **List contents of zip:**
  ```bash
  unzip -l archive.zip
  ```

📌 **Pros:** Cross-platform (Linux, Windows, macOS).
📌 **Cons:** Compression ratio lower than xz/bzip2.

---

## 🔹 Comparison Table

| Tool   | Compress Command                  | Decompress Command         | Extension | Use Case                  |
|--------|-----------------------------------|----------------------------|-----------|---------------------------|
| gzip   | `gzip file.txt`                   | `gunzip file.txt.gz`       | .gz       | Fast, common compression |
| bzip2  | `bzip2 file.txt`                  | `bunzip2 file.txt.bz2`     | .bz2      | Better compression, slower|
| xz     | `xz file.txt`                     | `unxz file.txt.xz`         | .xz       | Best compression, slowest |
| zip    | `zip archive.zip file1 file2`     | `unzip archive.zip`        | .zip      | Cross-platform archives   |

📌 **Note:** gzip, bzip2, and xz only compress **one file** at a time. For multiple files, use **tar + compression**.

---

# 📦 Tape Archive (`tar`)

`tar` is an **archiving tool** that bundles multiple files/folders into one file (called a *tarball*). It can optionally compress using gzip, bzip2, or xz.

---

## 🔹 Common Options
| Option | Meaning |
|--------|---------|
| `-c`   | Create archive |
| `-x`   | Extract archive |
| `-t`   | List contents |
| `-f`   | File name |
| `-v`   | Verbose (show files as they are processed) |
| `-z`   | Use gzip compression |
| `-j`   | Use bzip2 compression |
| `-J`   | Use xz compression |

---

## 🔹 Creating Archives

1. **Plain tar (no compression)**
```bash
tar -cvf archive.tar file1.txt file2.txt dir/
```
👉 Creates `archive.tar` containing the files.

---

2. **With gzip compression**
```bash
tar -czvf archive.tar.gz file1.txt file2.txt dir/
```
👉 Creates `archive.tar.gz` (fast, common).

---

3. **With bzip2 compression**
```bash
tar -cjvf archive.tar.bz2 file1.txt file2.txt dir/
```
👉 Creates `archive.tar.bz2` (better compression, slower).

---

4. **With xz compression**
```bash
tar -cJvf archive.tar.xz file1.txt file2.txt dir/
```
👉 Creates `archive.tar.xz` (best compression ratio).

---

## 🔹 Extracting Archives

1. **Plain tar**
```bash
tar -xvf archive.tar
```

2. **.tar.gz**
```bash
tar -xzvf archive.tar.gz
```

3. **.tar.bz2**
```bash
tar -xjvf archive.tar.bz2
```

4. **.tar.xz**
```bash
tar -xJvf archive.tar.xz
```

---

## 🔹 Listing Contents
```bash
tar -tvf archive.tar
```
👉 Shows list of files inside without extracting.

---

## 🔹 Extract to Specific Directory
```bash
tar -xzvf archive.tar.gz -C /tmp/myfolder
```
👉 Extracts into `/tmp/myfolder`.

---

## 🔹 Summary of Formats
| Format      | Command Example           | Extension | Best For |
|-------------|---------------------------|-----------|----------|
| Plain tar   | `tar -cvf archive.tar`    | .tar      | Archiving only |
| Gzip tar    | `tar -czvf archive.tar.gz`| .tar.gz   | Fast, common |
| Bzip2 tar   | `tar -cjvf archive.tar.bz2`| .tar.bz2 | Better compression |
| XZ tar      | `tar -cJvf archive.tar.xz`| .tar.xz   | Best compression |

---

## 🔹 Why Compress with tar?
- **tar** alone just bundles files.
- Compression (gzip, bzip2, xz) makes the archive smaller.
- Different methods offer trade-offs between **speed** and **compression ratio**.

---

## 🔹 Example Workflow

### Compress multiple files into one compressed archive
```bash
tar -cvf archive.tar file1.txt file2.txt dir/
gzip archive.tar
```
👉 Creates `archive.tar.gz`.

Or directly:
```bash
tar -czvf archive.tar.gz file1.txt file2.txt dir/
```
👉 Creates compressed tarball in one step.

---

✅ **In short:**
- Use `gzip`, `bzip2`, `xz` for single files.
- Use `tar` for multiple files/folders.
- Combine `tar + compression` for efficient backups.
- Use `zip` for cross-pla