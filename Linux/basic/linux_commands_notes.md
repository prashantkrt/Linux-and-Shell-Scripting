# 🐧 Linux Commands Cheat Sheet (with Examples & Explanations)

This document contains a **well-structured and detailed reference guide** for commonly used Linux commands. Each command includes **syntax, explanation, input, and output examples**.

---

## 📂 File & Directory Management

### 1. `pwd` – Print Working Directory
```bash
$ pwd
/home/prashant/Documents
```
Shows the current directory path.

---

### 2. `ls` – List Directory Contents
```bash
$ ls
Documents  Downloads  file.txt  script.sh
```

#### Options:
- `ls -l` → Long format with details.
- `ls -a` → Show hidden files.
- `ls -lh` → Human-readable sizes.
- `ls -lt` → Sort by modification time.

```bash
$ ls -la
.  ..  .hiddenfile  file.txt  Documents
```

---

### 3. `cd` – Change Directory
```bash
$ cd /var/log
$ pwd
/var/log

$ cd ..   # Move one level up
$ cd ~    # Go to home directory
$ cd -    # Switch to previous directory
```

---

### 4. `mkdir` – Create Directory
```bash
$ mkdir projects
$ mkdir -p parent/child/grandchild
```

---

### 5. `rmdir` – Remove Empty Directory
```bash
$ rmdir oldfolder
```

---

### 6. `rm` – Remove Files or Directories
```bash
$ rm file.txt
$ rm -r folder   # remove directory recursively
```

⚠️ Use with caution.

---

### 7. `touch` – Create or Update Files
```bash
$ touch newfile.txt
$ touch file1 file2 file3   # multiple files
$ touch -c file.txt         # update timestamp if file exists
```

---

### 8. `cat` – Display File Content
```bash
$ cat file.txt
Hello World

$ cat > notes.txt   # create new file
This is notes file.
<Ctrl+D>

$ cat file1 file2 > combined.txt
```

---

### 9. `head` – Show First Lines
```bash
$ head file.txt
Line1
Line2
...
Line10

$ head -n 5 file.txt   # first 5 lines
```

---

### 10. `tail` – Show Last Lines
```bash
$ tail file.txt
Line91
...
Line100

$ tail -n 5 file.txt
Line96
...
Line100

$ tail -f logfile.log   # follow logs in real-time
```

---

## 🔎 Searching & Filtering

### 11. `grep` – Search Text Patterns
```bash
$ grep "error" logfile.log
Error at line 23
```

#### Common Options:
- `-i` → case insensitive
- `-n` → show line numbers
- `-v` → invert match
- `-c` → count matches
- `-r` → recursive search
- `-A/-B/-C n` → show context

```bash
$ grep -n "fail" app.log
45: login fail
```

---

### 12. `find` – Search Files
```bash
$ find /home -name "*.txt"
/home/user/file.txt

$ find /var -type f -size +10M
```

---

### 13. `cut` – Extract Fields
File `emp`:
```
1 Rajat Manager 50000
2 Priya Developer 45000
```

```bash
$ cut -d " " -f2 emp
Rajat
Priya
```

---

### 14. `sort` – Sort File Lines
```bash
$ sort numbers.txt
1
2
3
...

$ sort -r numbers.txt   # reverse
$ sort -u numbers.txt   # unique
```

---

### 15. `uniq` – Remove Duplicates
```bash
$ sort sample.txt | uniq -c
3 apple
3 banana
3 orange
```

---

### 16. `sed` – Stream Editor
```bash
$ sed 's/old/new/g' file.txt
```
Replaces all `old` with `new`.

---

## 📊 File Info & Statistics

### 17. `wc` – Word, Line, Byte Count
```bash
$ wc myfile.txt
10 50 300 myfile.txt
```
- **10** → lines
- **50** → words
- **300** → bytes

```bash
$ wc -l myfile.txt   # lines
$ wc -w myfile.txt   # words
$ wc -c myfile.txt   # bytes
```

---

### 18. `file` – File Type
```bash
$ file myfile.txt
myfile.txt: ASCII text
```

---

### 19. `stat` – File Details
```bash
$ stat file.txt
Size: 1024  Blocks: 8  IO Block: 4096
Access: (0644/-rw-r--r--)
Modify: 2025-09-22 09:58:45
```

---

## 📖 Viewing Large Files

### 20. `more` – Page Viewer
```bash
$ more /var/log/syslog
```
Keys:
- `space` → next page
- `enter` → next line
- `q` → quit

---

### 21. `less` – Advanced Pager
```bash
$ less /var/log/syslog
```
Keys:
- `f` → forward page
- `b` → backward page
- `/word` → search
- `n/N` → next/previous match
- `g/G` → start/end
- `q` → quit

---

## 🔤 Text Manipulation

### 22. `tr` – Translate Characters
```bash
$ echo "hello" | tr 'a-z' 'A-Z'
HELLO

$ echo "apple banana" | tr ' ' '\n'
apple
banana
```

- `-d` → delete characters
- `-s` → squeeze repeats

Example file:
```
This   is   jaaava
JAVA IS GREAT
```

```bash
$ tr -s 'a' < java
This   is   java
JAVA IS GREAT

$ tr -s ' ' < java
This is jaaava
JAVA IS GREAT
```

---

### 23. `paste` – Merge Files Line by Line
```bash
$ paste states capitals
Punjab Chandigarh
Haryana Chandigarh
Gujrat Ahmedabad

$ paste -d ":" states capitals
Punjab:Chandigarh
```

---

### 24. `echo` – Print Text
```bash
$ echo "Hello, World!"
Hello, World!

$ echo $USER
prashant

$ echo -e "Line1\nLine2"
Line1
Line2
```

---

## 🔁 Comparing Files

### 25. `diff` – Compare Line by Line
File1:
```
Hello
World
Linux
```
File2:
```
Hello
Word
Linux OS
```
```bash
$ diff file1 file2
2c2
< World
---
> Word
3c3
< Linux
---
> Linux OS
```
👉 `2c2` means line 2 in file1 should be **changed** to match line 2 in file2.

---

### 26. `cmp` – Compare Byte by Byte
File1: `Hello`
File2: `Hella`
```bash
$ cmp file1 file2
file1 file2 differ: byte 5, line 1
```
👉 At byte 5, `o` vs `a`.

---

## 🖥️ System Information & Monitoring

### 27. `date` – Current Date/Time
```bash
$ date
Mon Oct  1 10:15:30 UTC 2024
```

### 28. `cal` – Calendar
```bash
$ cal
 October 2024
Su Mo Tu We Th Fr Sa
       1  2  3  4  5
 6  7  8  9 10 11 12
```

### 29. `uname` – System Info
```bash
$ uname -a
Linux mypc 5.15.0-86-generic x86_64 GNU/Linux
```

### 30. `hostnamectl` – Host Info
```bash
$ hostnamectl
Static hostname: mymachine
Operating System: Ubuntu 22.04 LTS
Kernel: Linux 5.15.0
Architecture: x86-64
```

### 31. `who` – Logged-in Users
```bash
$ who
prashant  pts/0  2024-10-01 09:00
```

### 32. `uptime` – System Uptime
```bash
$ uptime
10:15:30 up 2 days,  3:15,  2 users,  load average: 0.23, 0.18, 0.11
```

### 33. `free` – Memory Usage
```bash
$ free -h
total   used   free
8.0G    3.2G   4.8G
```

### 34. `df` – Disk Usage
```bash
$ df -h
Filesystem  Size  Used  Avail  Use%  Mounted on
/dev/sda1   100G   50G    50G   50%  /
```

### 35. `du` – Directory Usage
```bash
$ du -h /var
4.0K /var/log
16K  /var/cache
```

---

## 🔧 Permissions & Ownership

### 36. `chmod` – Change Permissions
```bash
$ chmod 755 script.sh   # rwxr-xr-x
$ chmod u+x script.sh   # add execute for user
```

### 37. `chown` – Change Owner
```bash
$ chown user:group file.txt
```

---

## ⚙️ Processes & System Control

### 38. `ps` – Show Processes
```bash
$ ps aux | head -5
USER   PID %CPU %MEM COMMAND
root     1  0.0  0.1 systemd
```

### 39. `top` – Process Monitor
Interactive real-time CPU/memory usage.

### 40. `htop` – Advanced Process Viewer
(better UI, needs installation).

### 41. `kill` – Terminate Process
```bash
$ kill 1234
```

### 42. `killall` – Kill by Name
```bash
$ killall firefox
```

---

## 📦 Archiving & Compression

### 43. `tar` – Archive Files
```bash
$ tar -cvf archive.tar files/
$ tar -xvf archive.tar
```

### 44. `gzip` / `gunzip`
```bash
$ gzip file.txt   # compress
$ gunzip file.txt.gz   # decompress
```

---

## 🌐 Networking

### 45. `ping` – Check Connectivity
```bash
$ ping google.com
```

### 46. `curl` – Fetch Data
```bash
$ curl https://example.com
```

### 47. `wget` – Download Files
```bash
$ wget https://example.com/file.zip
```

### 48. `ssh` – Remote Login
```bash
$ ssh user@host
```

### 49. `scp` – Secure Copy
```bash
$ scp file.txt user@host:/path/
```

### 50. `ifconfig` / `ip addr` – Show IP
```bash
$ ip addr
```

### 51. `netstat` – Active Connections
```bash
$ netstat -tulnp
```

---

## 📑 Miscellaneous

### 52. `history` – Show Command History
```bash
$ history | tail -5
  501  ls
  502  cd /var
```

### 53. `man` – Manual Page
```bash
$ man ls
```

### 54. `clear` – Clear Screen
```bash
$ clear
```

### 55. `exit` – Logout
```bash
$ exit
```

---

✅ This cheat sheet now has **commands → explanation → input/output examples** for easy revision and practical use.

