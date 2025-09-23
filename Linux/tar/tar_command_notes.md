# Linux `tar` Command Notes

A **TAR file** is a collection of several files and directories in one file. This is a good way to create backups and archives.

---

## 🔹 Syntax
```bash
tar [options] [archive-file] [file or directories to be archived]
```

---

## 🔹 Options

| Option | Description |
|--------|-------------|
| `-c`   | Create a new archive |
| `-f`   | Specify archive file name |
| `-t`   | Show the list of files in the tar file |
| `-v`   | Show the progress (verbose mode) while creating or extracting |
| `-r`   | Append files to the end of an archive |
| `-x`   | Extract files from an archive |
| `-z`   | Compress the tar file with **gzip** → creates `.tar.gz` |
| `-j`   | Compress the tar file with **bzip2** → creates `.tar.bz2` |

---

## 🔹 Examples

### 1. Create a new archive
```bash
tar -cvf archive.tar file1.txt file2.txt dir/
```
👉 Creates `archive.tar` containing `file1.txt`, `file2.txt`, and `dir/`.

---

### 2. List files inside an archive
```bash
tar -tvf archive.tar
```
👉 Displays the list of files inside `archive.tar` without extracting.

**Example Output:**
```
-rw-r--r-- user/group  1024 2025-09-22 10:00 file1.txt
-rw-r--r-- user/group  2048 2025-09-22 10:05 file2.txt
drwxr-xr-x user/group     0 2025-09-22 10:10 dir/
```

---

### 3. Extract files from an archive
```bash
tar -xvf archive.tar
```
👉 Extracts all files from `archive.tar`.

---

### 4. Append files to an existing archive
```bash
tar -rvf archive.tar newfile.txt
```
👉 Adds `newfile.txt` to the existing `archive.tar`.

---

### 5. Create gzip compressed tarball
```bash
tar -czvf archive.tar.gz file1.txt dir/
```
👉 Creates `archive.tar.gz` using **gzip**.

---

### 6. Create bzip2 compressed tarball
```bash
tar -cjvf archive.tar.bz2 file1.txt dir/
```
👉 Creates `archive.tar.bz2` using **bzip2**.

---

### 7. Extract compressed archives
- **Extract gzip (.tar.gz)**
```bash
tar -xzvf archive.tar.gz
```

- **Extract bzip2 (.tar.bz2)**
```bash
tar -xjvf archive.tar.bz2
```

---

## 🔹 Summary
- `tar` bundles multiple files/folders into a single archive.
- Use `-c` to create, `-x` to extract, `-t` to list.
- Use `-f` to specify filename.
- Use `-v` for verbose output.
- Use `-r` to append.
- Use `-z` for gzip compression (`.tar.gz`).
- Use `-j` for bzip2 compression (`.tar.bz2`).

---

✅ **Remember:**
- `tar` alone = just archives (no compression).
- `tar + -z / -j` = archive + compress.

