# Linux File Permissions & `chmod`

In Linux, file permissions control **who can read, write, or execute** a file or directory.

Each file/directory has three types of permissions and three categories of users.

---

## 🔹 Types of Permissions
- **Read (r)**
  - Files → allows reading the contents.
  - Directories → allows listing its contents.

- **Write (w)**
  - Files → allows modifying or deleting contents.
  - Directories → allows creating, deleting, or renaming files inside.

- **Execute (x)**
  - Files → allows running it as a program/script.
  - Directories → allows entering (`cd`) into it.

---

## 🔹 Permission Groups
- **Owner (u)** → The user who owns the file.
- **Group (g)** → Users in the file’s group.
- **Others (o)** → Everyone else.

Permissions are represented in a 10-character string:
```
-rwxr-xr--
```
- First char → type (`-` = file, `d` = directory).
- Next 3 → owner permissions.
- Next 3 → group permissions.
- Last 3 → others permissions.

---

## 🔹 Example Breakdown
```bash
$ ls -l script.sh
-rwxr-xr--  1 prashant users  1024 Sep 25 19:00 script.sh
```
- `-` → regular file
- `rwx` → owner has **read, write, execute**
- `r-x` → group has **read, execute**
- `r--` → others have **read only**

---

## 🔹 Numeric Representation
Permissions can also be set using numbers (octal):

| Value | Permission | Meaning |
|-------|------------|---------|
| 7     | rwx        | full access |
| 6     | rw-        | read + write |
| 5     | r-x        | read + execute |
| 4     | r--        | read only |
| 3     | -wx        | write + execute |
| 2     | -w-        | write only |
| 1     | --x        | execute only |
| 0     | ---        | no access |

Example:
- `chmod 777 file` → everyone can do anything (⚠️ unsafe).
- `chmod 644 file` → owner can edit, others can read.
- `chmod 755 dir` → owner full, others can list/enter.

---

## 🔹 Common Use Cases

### 1. Check Current Permissions
```bash
$ ls -l notes.txt
-rw-r--r--  1 prashant users  1024 Sep 25 19:00 notes.txt
```
- Owner → `rw-`
- Group → `r--`
- Others → `r--`
👉 Only the owner can edit; others can just read.

---

### 2. Give Execute Permission
```bash
$ echo "echo Hello World" > hello.sh
$ ls -l hello.sh
-rw-r--r--  hello.sh

$ chmod +x hello.sh
$ ls -l hello.sh
-rwxr-xr-x  hello.sh

$ ./hello.sh
Hello World
```
👉 Now the script is executable.

---

### 3. Restrict Access (Make Private)
```bash
$ ls -l secrets.txt
-rw-r--r--  secrets.txt

$ chmod 600 secrets.txt
$ ls -l secrets.txt
-rw-------  secrets.txt
```
👉 Only owner can read/write; no one else has access.

---

### 4. Share Executable with Others
```bash
$ chmod 755 app.sh
$ ls -l app.sh
-rwxr-xr-x  app.sh
```
👉 Owner has full control, others can run it.

---

### 5. Allow Group Members to Edit
```bash
$ chmod 664 notes.txt
$ ls -l notes.txt
-rw-rw-r--  notes.txt
```
👉 Owner and group can read/write; others can only read.

---

## 🔹 Useful `chmod` Examples
```bash
$ chmod +x file.sh          # Add execute permission
$ chmod -x file.sh          # Remove execute permission
$ chmod 755 script.sh       # Owner: rwx, Group: r-x, Others: r-x
$ chmod 644 document.txt    # Owner: rw-, Group: r--, Others: r--
$ chmod 600 private.txt     # Owner: rw-, Group: ---, Others: ---
$ chmod 777 public.txt      # Everyone: rwx (not safe)
$ chmod 400 read-only.txt   # Owner: r-- only
$ chmod 200 write-only.txt  # Owner: -w- only
$ chmod 111 exec-only.sh    # Everyone execute only

$ chmod u+x file.sh         # Add execute for owner
$ chmod g+w file.txt        # Add write for group
$ chmod o-r file.txt        # Remove read for others
$ chmod u=rwx,g=rx,o=r file.txt  # Set specific perms

$ chmod ugo-rwx file.txt    # Remove all permissions
$ chmod ugo+rwx file.txt    # Give all permissions
$ chmod -R 755 /path/dir    # Recursive for all inside dir
$ chmod --reference php java  # Copy perms from php → java
```

---

## 🔹 Default Permissions & `umask`
When a new file/directory is created, Linux applies **default permissions** filtered by `umask`.

- Default for files: `666` → `rw-rw-rw-`
- Default for directories: `777` → `rwxrwxrwx`

Formula: **Default - umask = actual permissions**

### Check `umask`
```bash
$ umask
0022
```
👉 Means: remove write from group & others.

### Example
- File: `666 - 022 = 644` → `rw-r--r--`
- Dir: `777 - 022 = 755` → `rwxr-xr-x`

### Set `umask`
```bash
$ umask 0077
```
👉 New files → `600`, dirs → `700`. Only owner has access.

---

## ✅ Summary
- **`ls -l`** shows permissions.
- **`chmod`** changes permissions.
- **`umask`** defines default permissions.
- Use numeric (`755`, `644`) or symbolic (`u+x`, `g-w`) modes.
- Be careful with `777` (full access to everyone).