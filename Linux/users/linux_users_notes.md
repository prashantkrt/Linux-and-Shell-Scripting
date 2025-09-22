# Linux Users: Root vs Normal User

In Linux, the shell prompt symbol helps you identify whether you are logged in as a **root user** or a **normal user**:

- `#` → **Root user (superuser)**
- `$` → **Normal user**

---

## 🔹 Root User
- The **administrative (superuser)** in Linux.
- Has **full privileges**: can install software, modify system files, manage users, and configure the system.
- **Prompt:** `#`

### Common Commands for Root
```bash
# pwd       # Print working directory (shows where you are)
# ls        # List files and directories
# uname     # Show system information (e.g., kernel name)
# whoami    # Show current logged-in user
# id        # Show user ID (UID) and group ID (GID)
```

### Switch to Root User
```bash
su -        # Switch to root user (requires root password)
sudo -i     # Switch to root user (requires current user's password, if in sudoers group)
```

---

## 🔹 Normal User
- A **regular user** with limited permissions.
- Cannot modify system files or install software without `sudo`.
- **Typical usernames:** `prashant`, `raj`, `john`, `doe`
- **Prompt:** `$`

### Common Commands for Normal User
```bash
$ pwd       # Print working directory
$ ls        # List files and directories
$ whoami    # Show current logged-in user
$ id        # Show UID and GID
```

---

## 🔹 Switching Between Users

### From `$` (Normal User) → `#` (Root User)
```bash
$ su -       # Prompts for root password, switches to root
$ sudo -i    # Prompts for your own password (if in sudoers group)
```

### From `#` (Root User) → `$` (Normal User)
1. Exit root session:
```bash
# exit
```
Or press **Ctrl+D**.

2. Switch to a specific user:
```bash
# su - prashant
```
Prompt changes back to `$`.

---

## Quick Summary
- **Root user (`#`)** → Full access, can modify system files.
- **Normal user (`$`)** → Limited access, safe for everyday use.
- **Switching users:**
  - `$ su -` → Normal → Root (asks for root password)
  - `$ sudo -i` → Normal → Root (asks for your password if allowed)
  - `# exit` → Root → Normal (end root session)
  - `# su - username` → Root → Specific normal user

✅ Use root (`#`) only when needed; stay as a normal user (`$`) for safety.