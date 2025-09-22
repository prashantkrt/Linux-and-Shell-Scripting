# Linux Basic Commands (Cheat Sheet with Examples)

Here’s a quick reference list of common Linux commands with **brief notes and examples**.

---

### File & Directory Management
```bash
pwd               # Print working directory
ls                # List files and directories
cd /path/to/dir   # Change directory
mkdir newfolder   # Create a new directory
rmdir emptydir    # Remove empty directory
rm file.txt       # Remove a file
rm -r folder/     # Remove a directory and contents
cp file1 file2    # Copy file1 → file2
cp -r dir1 dir2   # Copy directory recursively
mv old new        # Rename/move files or directories
touch file.txt    # Create empty file or update timestamp
```

---

### File Viewing
```bash
cat file.txt      # Show contents of a file
head file.txt     # Show first 10 lines
head -n 5 file.txt  # Show first 5 lines
tail file.txt     # Show last 10 lines
tail -n 20 file.txt # Show last 20 lines
less file.txt     # View file with scroll
wc file.txt       # Count lines, words, characters
sort file.txt     # Sort lines in file
uniq file.txt     # Remove duplicate lines
```

---

### Searching
```bash
grep "word" file.txt      # Search for a word
grep -i "word" file.txt   # Case-insensitive search
grep -n "word" file.txt   # Show line numbers
grep -r "main" ./src      # Recursive search in directory
find / -name file.txt     # Find file by name
```

---

### System Information
```bash
clear              # Clear screen
date               # Show current date & time
cal                # Show calendar of current month
uname              # Show kernel name
uname -a           # Show all system info
hostnamectl        # Show/change hostname
who                # Show logged-in users
who -b             # Show last boot time
w                  # Show logged-in users + activity
uptime             # Show system running time
free               # Show memory usage
free -h            # Show memory in human-readable format
df -h              # Show disk usage
df -Th             # Show disk usage with filesystem type
du -h              # Show space used by files/dirs
du -h /var         # Show space usage of /var
```

---

### User Information
```bash
whoami             # Show current user
logname            # Show login username
su - user          # Switch to another user
```

---

### Command Help
```bash
man ls             # Manual page for command
history            # Show command history
echo "Hello"       # Print text to terminal
```

---

### Permissions & Ownership
```bash
chmod 755 file.sh          # Change file permissions
chown user:group file.txt  # Change owner & group
```

---

### Process Management
```bash
ps                 # Show running processes
ps aux             # Show all processes
top                # Real-time process monitor
htop               # Interactive monitor (if installed)
kill 1234          # Kill process by PID
killall firefox    # Kill process by name
```

---

### Archiving & Compression
```bash
tar -cvf archive.tar files/   # Create tar archive
tar -xvf archive.tar          # Extract tar archive
gzip file.txt                 # Compress file
gunzip file.txt.gz            # Decompress file
```

---

### Networking
```bash
ping google.com              # Check network connectivity
curl https://example.com     # Fetch data from URL
wget https://file.com/file   # Download file
ifconfig (or ip addr)        # Show network interfaces
netstat -tulnp               # Show active connections
ssh user@host                # Connect to remote server
scp file user@host:/path/    # Copy file to remote server
```

---

### Text Editors
```bash
nano file.txt    # Open file in nano editor
vi file.txt      # Open file in vi editor
vim file.txt     # Open file in vim editor
```

---

### Exit Session
```bash
exit             # Exit shell / logout
```

---

✅ These are the **70 most common Linux commands** with quick examples. Perfect for beginners and daily use.

