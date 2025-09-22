# Linux `find` Command Notes

The `find` command is used to **search for files and directories** in a directory hierarchy based on different conditions like name, type, size, permissions, and more.

---

## 1. Basic Search by Name
```bash
find /path -name "file.txt"
```
**Description:** Searches for `file.txt` inside `/path` and its subdirectories.

**Example:**
```bash
find /home -name "notes.txt"
```
**Output:**
```
/home/prashant/Documents/notes.txt
```

---

## 2. Case-Insensitive Search
```bash
find /path -iname "file.txt"
```
**Description:** Finds files ignoring case (e.g., matches `File.txt`, `FILE.TXT`).

**Example:**
```bash
find /home -iname "notes.txt"
```
**Output:**
```
/home/prashant/notes.txt
/home/prashant/Notes.TXT
```

---

## 3. Search by File Type
```bash
find /path -type f   # Search for files
find /path -type d   # Search for directories
```
**Example:**
```bash
find /etc -type d -name "nginx"
```
**Output:**
```
/etc/nginx
```

---

## 4. Search by Size
```bash
find /path -size +10M   # Files larger than 10MB
find /path -size -100k  # Files smaller than 100KB
```
**Example:**
```bash
find /var/log -size +50M
```
**Output:**
```
/var/log/syslog.1
```

---

## 5. Search by Modified Time
```bash
find /path -mtime -7   # Modified in the last 7 days
find /path -mtime +30  # Modified more than 30 days ago
```
**Example:**
```bash
find /home -mtime -1
```
**Output:**
```
/home/prashant/report.txt
```

---

## 6. Search by Permissions
```bash
find /path -perm 644   # Files with exact 644 permissions
find /path -perm /111  # Files executable by someone
```
**Example:**
```bash
find /usr/bin -perm /111
```
**Output:**
```
/usr/bin/ls
/usr/bin/cp
```

---

## 7. Execute Command on Found Files
```bash
find /path -name "*.log" -exec rm {} \;
```
**Description:** Deletes all `.log` files under `/path`.

**Example:**
```bash
find /tmp -name "*.tmp" -exec rm {} \;
```

---

## 8. Find Empty Files or Directories
```bash
find /path -type f -empty   # Empty files
find /path -type d -empty   # Empty directories
```
**Example:**
```bash
find /home/prashant -type f -empty
```
**Output:**
```
/home/prashant/empty.txt
```

---

## 9. Combine Multiple Conditions
```bash
find /path -type f -name "*.txt" -size +1M
```
**Description:** Finds `.txt` files larger than 1MB.

**Example:**
```bash
find /home -type f -name "*.log" -mtime -2
```
**Output:**
```
/home/prashant/app.log
```

---

## 10. Limit Search Depth
```bash
find /path -maxdepth 1 -name "*.txt"
```
**Description:** Searches only in the current directory, not subdirectories.

**Example:**
```bash
find /home/prashant -maxdepth 1 -name "*.txt"
```
**Output:**
```
/home/prashant/todo.txt
```

---

# Quick Summary of Common Options
| Option     | Meaning                                 |
|------------|-----------------------------------------|
| `-name`    | Search by file name (case-sensitive)    |
| `-iname`   | Case-insensitive search                 |
| `-type`    | File type (f=file, d=dir, l=link, etc.) |
| `-size`    | File size (+ = greater, - = smaller)    |
| `-mtime`   | File modified time                      |
| `-perm`    | File permissions                        |
| `-exec`    | Run a command on each match             |
| `-empty`   | Find empty files or directories         |
| `-maxdepth`| Limit directory depth                   |

---

✅ The `find` command is a **powerful search tool** in Linux for locating files and automating tasks on them.

