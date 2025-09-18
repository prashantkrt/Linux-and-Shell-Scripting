# 🐧 Linux Basic Commands Cheat Sheet

This file contains commonly used Linux commands with examples and sample outputs.

---

## 1. pwd — Print Working Directory
```bash
$ pwd
/home/user
```

---

## 2. ls — List Directory Contents
```bash
$ ls
Documents  Downloads  file.txt
```

---

## 3. cd — Change Directory
```bash
$ cd Documents
$ pwd
/home/user/Documents
```

---

## 4. mkdir — Make Directories
```bash
$ mkdir myfolder
$ ls
Documents  Downloads  file.txt  myfolder
```

---

## 5. rmdir — Remove Empty Directories
```bash
$ rmdir myfolder
```

---

## 6. rm — Remove Files or Directories
```bash
$ rm file.txt
$ rm -r myfolder   # remove directory with contents
```

---

## 7. cp — Copy Files and Directories
```bash
$ cp file.txt copy.txt
$ cp -r dir1 dir2
```

---

## 8. mv — Move or Rename Files and Directories
```bash
$ mv file.txt newfile.txt
$ mv file.txt Documents/
```

---

## 9. touch — Create Empty Files or Update File Timestamps
```bash
$ touch new.txt
$ ls
new.txt
```

---

## 10. cat — Concatenate and Display File Contents
```bash
$ cat file.txt
Hello World
```

---

## 11. head — Display the First Lines of a File
```bash
$ head file.txt
Hello World
This is Linux
```

---

## 12. tail — Display the Last Lines of a File
```bash
$ tail file.txt
Line 9
Line 10
```

---

## 13. grep — Search Text Using Patterns
```bash
$ grep "Hello" file.txt
Hello World
```

---

## 14. find — Search for Files in a Directory Hierarchy
```bash
$ find . -name "*.txt"
./file.txt
```

---

## 15. clear — Clear the Terminal Screen
```bash
$ clear
```

---

## 16. date — Show Current Date and Time
```bash
$ date
Tue Sep 17 20:35:21 IST 2025
```

---

## 17. cal — Display Calendar of Current Month
```bash
$ cal
   September 2025
Su Mo Tu We Th Fr Sa
    1  2  3  4  5  6
 7  8  9 10 11 12 13
14 15 16 17 18 19 20
21 22 23 24 25 26 27
28 29 30
```

---

## 18. uname — Show System Information
```bash
$ uname -a
Linux ubuntu 5.15.0-56-generic #62-Ubuntu SMP x86_64 GNU/Linux
```

---

## 19. hostnamectl — View or Change Hostname
```bash
$ hostnamectl
   Static hostname: mypc
         Icon name: computer-laptop
           Chassis: laptop
        Machine ID: abcd1234
```

---

## 20. who — Show Who is Logged In
```bash
$ who
user   tty7   2025-09-17 08:12 (:0)
```

---

## 21. uptime — Show How Long the System Has Been Running
```bash
$ uptime
20:40:35 up  2:15,  2 users,  load average: 0.15, 0.12, 0.09
```

---

## 22. free — Show Memory Usage
```bash
$ free -h
              total        used        free      shared  buff/cache   available
Mem:           15Gi       2.0Gi       8.0Gi       200Mi       5.0Gi        12Gi
Swap:         2.0Gi       0.0Gi       2.0Gi
```

---

## 23. df — Show Disk Space Usage
```bash
$ df -h
Filesystem      Size  Used Avail Use% Mounted on
/dev/sda1        50G   20G   28G  42% /
```

---

## 24. du — Show Directory Space Usage
```bash
$ du -h /var | head
4.0K    /var/tmp
8.0K    /var/log
...
```

---

## 25. whoami — Show Current Logged-in User
```bash
$ whoami
user
```

---

## 26. which — Show Path of a Command
```bash
$ which python3
/usr/bin/python3
```

---

## 27. man — Show Manual for a Command
```bash
$ man ls
```

---

## 28. history — Show Command History
```bash
$ history | tail -5
  100  pwd
  101  ls
  102  cd /etc
```

---

## 29. ps — Show Running Processes
```bash
$ ps aux | head
USER   PID  %CPU %MEM    VSZ   RSS TTY      STAT START   TIME COMMAND
root     1  0.0  0.1 225368  9280 ?        Ss   10:00   0:01 /sbin/init
```

---

## 30. top — Real-time Process Monitoring
```bash
$ top
top - 20:50:42 up 2:25,  2 users,  load average: 0.00, 0.01, 0.05
Tasks: 200 total,   1 running, 199 sleeping
```

---

## 31. tar — Create and Extract Archives
```bash
$ tar -cvf archive.tar file.txt
$ tar -xvf archive.tar
```

---

## 32. ping — Check Network Connectivity
```bash
$ ping google.com
PING google.com (142.250.183.174): 56 data bytes
64 bytes from 142.250.183.174: icmp_seq=0 ttl=118 time=10.2 ms
```

---

## 33. curl — Fetch Data from URL
```bash
$ curl https://example.com
<!doctype html>
<html>
<head><title>Example Domain</title></head>
<body>Example Domain</body>
</html>
```

---

## 34. ssh — Connect to Remote Server
```bash
$ ssh user@192.168.1.10
user@192.168.1.10's password:
```

---

## 35. exit — Logout from Current Session
```bash
$ exit
logout
```

---

✅ This cheat sheet covers the most commonly used Linux commands with examples and outputs.
