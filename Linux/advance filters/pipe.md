# 🚦 Linux Pipe (`|`) Command Cheat Sheet

The **pipe (`|`)** in Linux is used to **connect the output of one command to the input of another command**. It allows combining multiple commands to create powerful command chains.

👉 General syntax:
```bash
command1 | command2 | command3 ...
```
- `command1` → generates output (stdout).
- `|` → sends that output as input (stdin) to the next command.
- `command2` → processes the input.

---

## 📖 Basic Examples

### 1. Combine `ls` with `more`/`less`
```bash
$ ls -l | more
```
Shows file list page by page.

```bash
$ ls -l | less
```
Better pager (can scroll forward & backward).

---

### 2. Search Inside Output with `grep`
```bash
$ ps aux | grep firefox
```
Shows only the processes containing `firefox`.

```bash
$ dmesg | grep error
```
Filters kernel logs for `error` messages.

---

### 3. Count Results with `wc`
```bash
$ ls | wc -l
```
Counts the number of files in the current directory.

```bash
$ cat file.txt | wc -w
```
Counts the number of words in a file.

---

### 4. Sort and Remove Duplicates
```bash
$ cat sample.txt | sort | uniq
```
Sorts the lines and removes duplicates.

---

### 5. Chain Multiple Commands
```bash
$ cat logfile.log | grep "ERROR" | sort | uniq -c | sort -nr
```
Step by step:
1. `cat logfile.log` → read log file.
2. `grep "ERROR"` → filter lines with `ERROR`.
3. `sort` → sort results.
4. `uniq -c` → count duplicate lines.
5. `sort -nr` → sort by number (descending).

Output → shows most frequent errors.

---

### 6. Monitor Logs in Real-Time
```bash
$ tail -f /var/log/syslog | grep "network"
```
Continuously prints log lines that contain `network`.

---

### 7. Disk Usage Example
```bash
$ du -sh * | sort -h
```
Shows size of each item in directory, sorted by size.

---

## 📊 Summary
- `|` connects commands together.
- Each command works on the output of the previous one.
- Useful for **filtering, counting, sorting, searching, and chaining multiple commands**.

---

✅ Pipes make Linux commands more powerful by allowing you to build **mini data-processing pipelines** on the fly.