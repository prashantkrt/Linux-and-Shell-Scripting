# 🐧 Linux Commands with Examples and Outputs

This file contains a list of basic Linux commands, their usage, and sample outputs.

---

## 1. pwd — Print Working Directory
```bash
$ pwd
/home/user
```

## 2. ls — List Directory Contents
```bash
$ ls
Documents  Downloads  file.txt
```

## 3. cd — Change Directory
```bash
$ cd Documents
$ pwd
/home/user/Documents
```

## 4. mkdir — Make Directories
```bash
$ mkdir myfolder
$ ls
Documents  Downloads  file.txt  myfolder
```

## 5. rmdir — Remove Empty Directories
```bash
$ rmdir myfolder
```

## 6. rm — Remove Files or Directories
```bash
$ rm file.txt
$ rm -r myfolder   # remove directory with contents
```

## 7. cp — Copy Files and Directories
```bash
$ cp file.txt copy.txt
$ cp -r dir1 dir2
```

## 8. mv — Move or Rename Files and Directories
```bash
$ mv file.txt newfile.txt
$ mv file.txt Documents/
```

## 9. touch — Create Empty Files or Update File Timestamps
```bash
$ touch new.txt
$ ls
new.txt
```

## 10. cat — Concatenate and Display File Contents
```bash
$ cat file.txt
Hello World
This is Linux
```

## 11. head — Display the First Lines of a File
```bash
$ head file.txt
Hello World
This is Linux
```

## 12. tail — Display the Last Lines of a File
```bash
$ tail file.txt
Line 9
Line 10
```

## 13. grep — Search Text Using Patterns
```bash
$ grep "Hello" file.txt
Hello World
```

## 14. find — Search for Files in a Directory Hierarchy
```bash
$ find . -name "*.txt"
./file.txt
```

## 15. clear — Clear the Terminal Screen
```bash
$ clear
```

## 16. date — Show Current Date and Time
```bash
$ date
Tue Sep 17 20:35:21 IST 2025
```

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

## 18. time — Show Current Time
```bash
$ time date
Tue Sep 17 20:40:21 IST 2025

real    0m0.002s
user    0m0.000s
sys     0m0.002s
```

## 19. uname — Show System Information
```bash
$ uname -a
Linux ubuntu 5.15.0-56-generic #62-Ubuntu SMP x86_64 GNU/Linux
```

## 20. hostnamectl — View or Change Hostname
```bash
$ hostnamectl
   Static hostname: mypc
         Icon name: computer-laptop
           Chassis: laptop
        Machine ID: abcd1234
```

## 21. who — Show Who is Logged In
```bash
$ who
user   tty7   2025-09-17 08:12 (:0)
```

## 22. who -b — Show Last Boot Time
```bash
$ who -b
system boot  2025-09-16 09:35
```

## 23. w — Show Who is Logged In and What They Are Doing
```bash
$ w
 20:50:12 up 2:15,  2 users,  load average: 0.15, 0.12, 0.09
USER     TTY      FROM             LOGIN@   IDLE   JCPU   PCPU WHAT
user     :0       :0               08:12   ?xdm?  0.10s  0.01s gnome-session
```

## 24. uptime — Show How Long the System Has Been Running
```bash
$ uptime
20:40:35 up  2:15,  2 users,  load average: 0.15, 0.12, 0.09
```

## 25-28. free — Show Memory Usage
```bash
$ free
              total        used        free      shared  buff/cache   available
Mem:        16300840     2000000     8000000      200000     6000000    12000000

$ free -m
              total        used        free      shared  buff/cache   available
Mem:          15920        1950        7812         195        6000       11715

$ free -g
              total        used        free      shared  buff/cache   available
Mem:             15           1           7           0           5          11

$ free -h
              total        used        free      shared  buff/cache   available
Mem:            15Gi       2.0Gi       7.8Gi       195Mi       5.8Gi        11Gi
```

## 29-30. df — Show Disk Space Usage
```bash
$ df
Filesystem     1K-blocks    Used Available Use% Mounted on
/dev/sda1       51200000 2048000  30720000  42% /

$ df -h
Filesystem      Size  Used Avail Use% Mounted on
/dev/sda1        50G   20G   28G  42% /
```

## 31-33. du — Show Directory Space Usage
```bash
$ du
4       ./Documents
8       ./Downloads
20      .

$ du -h
4.0K    ./Documents
8.0K    ./Downloads
20K     .

$ du -h /var | head
4.0K    /var/tmp
8.0K    /var/log
```

## 34. whoami — Show Current User
```bash
$ whoami
user
```

## 35. which — Show Path of a Command
```bash
$ which python3
/usr/bin/python3
```

## 36. whereis — Show All Locations of a Command
```bash
$ whereis ls
ls: /bin/ls /usr/share/man/man1/ls.1.gz
```

## 37. su — Switch User
```bash
$ su - john
Password:
```

## 38. logname — Show Login Name
```bash
$ logname
user
```

## 39. man — Show Manual Page
```bash
$ man ls
```

## 40. history — Show Command History
```bash
$ history | tail -3
  100  pwd
  101  ls
  102  cd /etc
```

## 41. echo — Print Text
```bash
$ echo "Hello Linux"
Hello Linux
```

## 42. chmod — Change File Permissions
```bash
$ chmod 755 script.sh
```

## 43. chown — Change File Owner
```bash
$ chown user:group file.txt
```

## 44-45. ps — Show Running Processes
```bash
$ ps
  PID TTY          TIME CMD
 1234 pts/0    00:00:00 bash

$ ps aux | head
USER   PID  %CPU %MEM    VSZ   RSS TTY      STAT START   TIME COMMAND
root     1  0.0  0.1 225368  9280 ?        Ss   10:00   0:01 /sbin/init
```

## 46. top — Show Real-time Processes
```bash
$ top
top - 20:50:42 up 2:25,  2 users,  load average: 0.00, 0.01, 0.05
```

## 47. htop — Interactive Process Viewer
```bash
$ htop
```

## 48. kill — Kill Process by PID
```bash
$ kill 1234
```

## 49. killall — Kill Processes by Name
```bash
$ killall firefox
```

## 50-51. tar — Archive/Extract Files
```bash
$ tar -cvf archive.tar file.txt
$ tar -xvf archive.tar
```

## 52-53. gzip/gunzip — Compress/Decompress Files
```bash
$ gzip file.txt
$ gunzip file.txt.gz
```

## 54. ping — Check Network Connectivity
```bash
$ ping google.com
PING google.com (142.250.183.174): 56 data bytes
64 bytes from 142.250.183.174: icmp_seq=0 ttl=118 time=10.2 ms
```

## 55. curl — Fetch Data from URL
```bash
$ curl https://example.com
<!doctype html>
<html>
<head><title>Example Domain</title></head>
<body>Example Domain</body>
</html>
```

## 56. wget — Download File
```bash
$ wget https://example.com/file.zip
```

## 57. nano — Open File in Nano
```bash
$ nano file.txt
```

## 58. vi/vim — Open File in Vi/Vim
```bash
$ vi file.txt
```

## 59. less — View File Page by Page
```bash
$ less file.txt
```

## 60. wc — Word Count
```bash
$ wc file.txt
  10   20   150 file.txt
```

## 61. sort — Sort File Lines
```bash
$ sort file.txt
```

## 62. uniq — Filter Duplicate Lines
```bash
$ uniq file.txt
```

## 63. df -Th — Disk Usage with Filesystem Type
```bash
$ df -Th
Filesystem     Type   Size  Used Avail Use% Mounted on
/dev/sda1      ext4    50G   20G   28G  42% /
```

## 64. mount — Show Mounted Filesystems
```bash
$ mount | head -2
/dev/sda1 on / type ext4 (rw,relatime)
```

## 65. umount — Unmount Filesystem
```bash
$ umount /mnt/usb
```

## 66. ifconfig / ip addr — Show Network Info
```bash
$ ifconfig
eth0: flags=4163<UP,BROADCAST,RUNNING,MULTICAST>  mtu 1500
        inet 192.168.1.5  netmask 255.255.255.0  broadcast 192.168.1.255
```

## 67. netstat — Show Active Network Connections
```bash
$ netstat -tulnp | head
Proto Recv-Q Send-Q Local Address           Foreign Address         State       PID/Program name
tcp        0      0 0.0.0.0:22              0.0.0.0:*               LISTEN      1234/sshd
```

## 68. ssh — Connect to Remote System
```bash
$ ssh user@192.168.1.10
user@192.168.1.10's password:
```

## 69. scp — Copy Files Between Systems
```bash
$ scp file.txt user@192.168.1.10:/home/user/
```

## 70. exit — Logout
```bash
$ exit
logout
```

---

✅ This Markdown file contains **70 Linux commands with examples and outputs**.
