# 🔍 Linux `find` Command Cheat Sheet

The `find` command is a **powerful search tool** in Linux to locate files and directories based on name, type, size, time, and other attributes. It can also **execute commands** on the matched files.

---

## 📌 Basic Syntax
```bash
find [path] [options] [expression]
```
- **path** → where to search (e.g., `/`, `.`, `..`)
- **options** → conditions like `-name`, `-type`, `-size`
- **expression** → action to perform (default is print)

---

## 📂 Search by Name
```bash
$ find / -name "filename"
```
Search for `filename` starting at root `/`.

```bash
$ find /path/to/search -name "filename"
/path/to/search/filename
/path/to/search/dir/filename
```
👉 Matches both files and directories.

---

## 📁 Search Only Files or Only Directories
```bash
$ find /path/to/search -type f -name "filename"   # Only files
$ find /path/to/search -type d -name "dirname"   # Only directories
```

---

## 📑 Search by Extension
```bash
$ find /path/to/search -type f -name "*.txt"     # All .txt files
$ find /path/to/search -type f -iname "*.jpg"   # Case-insensitive
```

---

## 📭 Empty Files
```bash
$ find /path/to/search -type f -empty            # Empty files
```

---

## 🔠 Case-Insensitive Search
```bash
$ find /path/to/search -type f -iname "filename"
```

---

## 🗑️ Delete Files
```bash
$ find /path/to/search -type f -empty -delete
$ find /path/to/search -type f -name "*.log" -delete
```

Alternative with `-exec`:
```bash
$ find /path/to/search -type f -empty -exec rm {} \;
$ find /path/to/search -type f -name "*.log" -exec rm {} \;
```
👉 `{}` = placeholder for current file, `\;` = end of command.

---

## 📏 Search by File Size
```bash
$ find /path/to/search -type f -size +10M   # Larger than 10MB
$ find /path/to/search -type f -size -100k  # Smaller than 100KB
$ find /path/to/search -type f -size 1G     # Exactly 1GB
```

---

## ⏰ Search by File Timestamps

### Created Time (`ctime`)
```bash
$ find /path/to/search -type f -ctime -7    # Created in last 7 days
$ find /path/to/search -type f -ctime +30   # Created more than 30 days ago
$ find /path/to/search -type f -ctime 10    # Created exactly 10 days ago
```

### Modified Time (`mtime`)
```bash
$ find /path/to/search -type f -mtime -7    # Modified in last 7 days
$ find /path/to/search -type f -mtime +30   # Modified more than 30 days ago
```

### Accessed Time (`atime`)
```bash
$ find /path/to/search -type f -atime -7    # Accessed in last 7 days
$ find /path/to/search -type f -atime +30   # Accessed more than 30 days ago
```

### Minutes (`mmin`)
```bash
$ find /path/to/search -type f -mmin -60    # Modified in last 60 mins
$ find /path/to/search -type f -mmin +120   # Modified more than 2 hours ago
```

---

## ⚡ Execute Commands with `-exec`
```bash
find <path> <conditions> -exec <command> {} \;
```
- `{}` → placeholder for matched file
- `\;` → end of command
- `+` → run command on multiple files at once (faster)

### Examples:

#### 1. Delete Files
```bash
$ find /path -type f -name "*.tmp" -exec rm {} \;
```

#### 2. Count Lines in Files
```bash
$ find /path -type f -name "*.txt" -exec wc -l {} \;
```
Output:
```
10 /path/file1.txt
25 /path/file2.txt
```

#### 3. Change Permissions
```bash
$ find /path -type f -name "*.sh" -exec chmod +x {} \;
```

#### 4. Search Text in Files
```bash
$ find . -type f -name "*.java" -exec grep -H "main" {} \;
```

#### 5. Move Files
```bash
$ find /path -type f -name "*.bak" -exec mv {} /backup/ \;
```

---

## 🌳 Search Starting Points
```bash
find .     # current directory
find ..    # parent directory
find /     # entire filesystem
```

---

✅ This section now covers **file/directory search, filtering, size/time conditions, and executing commands with `find`**.

