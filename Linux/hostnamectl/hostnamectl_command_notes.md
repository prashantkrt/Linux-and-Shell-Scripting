# Linux `hostnamectl` Command Notes

The `hostnamectl` command is used to **view and change the system’s hostname** and related settings on Linux systems that use `systemd`.

---

## 1. Show Hostname Information
```bash
hostnamectl
```
**Description:** Displays the current hostname and related system details.

**Example Output:**
```
   Static hostname: prashant-laptop
         Icon name: computer-laptop
           Chassis: laptop
        Machine ID: abcd1234efgh5678
           Boot ID: 9876abcd5432efgh
  Operating System: Ubuntu 22.04 LTS
            Kernel: Linux 5.15.0-58-generic
      Architecture: x86-64
```

---

## 2. Set a Static Hostname
```bash
sudo hostnamectl set-hostname newname
```
**Description:** Changes the system’s static hostname permanently.

**Example:**
```bash
sudo hostnamectl set-hostname myserver
```
After running, the prompt and hostname will update.

---

## 3. Show Only the Hostname
```bash
hostnamectl --static
```
**Description:** Shows only the static hostname.

**Example:**
```
myserver
```

---

## 4. Show Transient Hostname
```bash
hostnamectl --transient
```
**Description:** Shows the temporary hostname (set at runtime, may reset after reboot).

**Example:**
```
mytemp-host
```

---

## 5. Show Pretty Hostname
```bash
hostnamectl --pretty
```
**Description:** Shows a descriptive, user-friendly hostname if set.

**Example:**
```
Prashant’s Workstation
```

---

## 6. Use Cases
- Checking system hostname and OS info.
- Changing hostname for easier identification on a network.
- Viewing architecture and kernel version.
- System administration in multi-server environments.

---

# Quick Summary
| Option                  | Meaning                                  | Example Command                           |
|-------------------------|------------------------------------------|-------------------------------------------|
| `hostnamectl`           | Show all hostname/system info            | `hostnamectl`                             |
| `set-hostname`          | Set a new static hostname                | `sudo hostnamectl set-hostname myserver`  |
| `--static`              | Show static hostname                     | `hostnamectl --static`                    |
| `--transient`           | Show temporary hostname                  | `hostnamectl --transient`                 |
| `--pretty`              | Show pretty (descriptive) hostname       | `hostnamectl --pretty`                    |

---

✅ `hostnamectl` is the modern replacement for `hostname` when managing hostnames on **systemd-based Linux systems** (like Ubuntu, CentOS, Fedora, Debian).

