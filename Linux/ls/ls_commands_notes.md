# Linux `ls` Command Notes

The `ls` command is used to list files and directories in Linux. It has multiple options to display details in different formats.

---

## 1. Basic `ls`
```bash
ls
```
**Description:** Lists directory contents (files and folders).

**Example:**
```bash
ls
```
**Output:**
```
Documents  Downloads  file.txt  script.sh
```

---

## 2. Long Format `ls -l`
```bash
ls -l
```
**Description:** Displays files with details like permissions, owner, group, size, and modification date.

**Example:**
```bash
ls -l
```
**Output:**
```
-rw-r--r-- 1 prashant users  1024 Sep 15 21:00 file.txt
drwxr-xr-x 2 prashant users  4096 Sep 15 20:50 Documents
```

---

## 3. Show Hidden Files `ls -a`
```bash
ls -a
```
**Description:** Shows all files including hidden files (those starting with `.`).

**Example:**
```bash
ls -a
```
**Output:**
```
.  ..  .bashrc  .profile  Documents  file.txt
```

---

## 4. Long Format + Hidden `ls -la`
```bash
ls -la
```
**Description:** Combines `-l` and `-a` to show details of hidden and visible files.

**Example:**
```bash
ls -la
```
**Output:**
```
drwxr-xr-x  5 prashant users  4096 Sep 15 21:10 .
drwxr-xr-x 20 prashant users  4096 Sep 10 10:00 ..
-rw-r--r--  1 prashant users  1024 Sep 15 21:00 file.txt
```

---

## 5. Human-Readable Sizes `ls -lh`
```bash
ls -lh
```
**Description:** Displays file sizes in KB, MB, GB instead of raw bytes.

**Example:**
```bash
ls -lh
```
**Output:**
```
-rw-r--r-- 1 prashant users 1.0K Sep 15 21:00 file.txt
drwxr-xr-x 2 prashant users 4.0K Sep 15 20:50 Documents
```

---

## 6. Sort by Modification Time `ls -lt`
```bash
ls -lt
```
**Description:** Lists files sorted by time, newest first.

**Example:**
```bash
ls -lt
```
**Output:**
```
-rw-r--r-- 1 prashant users 1024 Sep 15 21:00 file.txt
drwxr-xr-x 2 prashant users 4096 Sep 15 20:50 Documents
```

---

## 7. Sort by Size `ls -lS`
```bash
ls -lS
```
**Description:** Lists files sorted by size (largest first).

**Example:**
```bash
ls -lS
```
**Output:**
```
-rw-r--r-- 1 prashant users 2048 Sep 15 21:00 bigfile.log
-rw-r--r-- 1 prashant users 1024 Sep 15 21:00 file.txt
drwxr-xr-x 2 prashant users 4096 Sep 15 20:50 Documents
```

### Show File Sizes in Blocks
```bash
ls -s
```
**Output:**
```
4 file.txt
8 Documents
```

---

## 8. Reverse Sorting `ls -lr` / `ls -ltr`
```bash
ls -lr   # Reverse alphabetical
ls -ltr  # Oldest files first
```
**Example (ls -ltr):**
```
drwxr-xr-x 2 prashant users 4096 Sep 10 10:00 OldFolder
-rw-r--r-- 1 prashant users 1024 Sep 15 21:00 file.txt
```

---

## 9. List Only Directories `ls -d */`
```bash
ls -d */
```
**Description:** Shows only directories.

**Examples:**
```bash
ls -d */
```
**Output:**
```
Documents/  Downloads/
```

```bash
ls -d /var
```
**Output:**
```
/var
```

```bash
ls -d .*   # hidden directories
```
**Output:**
```
.bashrc  .profile  .notes
```

---

## 10. Recursive Listing `ls -R`
```bash
ls -R
```
**Description:** Lists files recursively, including subdirectories.

**Example:**
```bash
ls -R
```
**Output:**
```
.:
Documents  Downloads  file.txt

./Documents:
doc1.txt  doc2.txt

./Downloads:
setup.exe
```

---

## 11. Combine Multiple Options
```bash
ls -alhtr
```
**Meaning:**
- `-a` → Show hidden files
- `-l` → Long format
- `-h` → Human-readable size
- `-t` → Sort by time
- `-r` → Reverse order

**Example:**
```bash
ls -alhtr
```
**Output:**
```
-rw-r--r-- 1 prashant users 1.0K Sep 10 10:00 oldfile.txt
drwxr-xr-x 2 prashant users 4.0K Sep 15 20:50 Documents
-rw-r--r-- 1 prashant users 1.0K Sep 15 21:00 file.txt
```

---

## 12. Enable Colorized Output
```bash
ls --color
```
**Description:** Displays files with color-coded output.

**Example:**
```bash
ls --color
```
**Output:**
```
Documents  Downloads  file.txt  script.sh
```
*(with colors depending on file type)*

---

## 13. Pattern Matching with `ls`
```bash
ls *.txt     # all files ending with .txt
ls file*     # all files starting with "file"
```
**Output:**
```
file.txt  file1.txt
```

---

## Special Entries in `ls`
- `.` → Current directory
- `..` → Parent directory

Example:
```bash
ls -a
```
**Output (if no hidden files exist):**
```
.   ..   file1.txt   file2.txt   Projects/
```

**Output (if hidden files exist):**
```
.  ..  .bashrc  .profile  .notes  file1.txt  file2.txt  Projects/
```

---

## Quick Summary of Common Commands
```bash
ls          # List files
ls -a       # Show hidden files
ls -l       # Long listing
ls -la      # Long + hidden
ls -lh      # Human-readable sizes
ls -lt      # Sort by time (newest first)
ls -lS      # Sort by size (largest first)
ls -lr      # Reverse sort
ls -d */    # List only directories
ls -R       # Recursive listing
ls -alhtr   # Combined options
ls --color  # Colored output
ls *.txt    # Match files by pattern
ls file*    # Match starting with 'file'
```

---

✅ These are the **most useful `ls` command variations** with explanations and examples.

