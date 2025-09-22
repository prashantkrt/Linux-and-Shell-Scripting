# Linux Directory Structure Notes

Linux organizes everything under the **root directory `/`**. Below are the most important system directories, their purpose, and equivalent locations in Windows and Mac.

---

## 1️⃣ `/` – Root Directory
- **What it is:** The “top folder” where everything starts.
- **Windows/Mac equivalent:** `C:\` on Windows, `/` on Mac.
- **What you do here:** Usually nothing directly; all other directories are inside this.
- **Example contents:** `/bin`, `/home`, `/usr`, `/etc`

---

## 2️⃣ `/bin` – Essential Commands
- **What it is:** Holds essential user commands.
- **Examples:** `ls`, `cp`, `mv`, `cat`
- **Windows/Mac equivalent:** `C:\Windows\System32`, `/usr/bin`
- **Layman:** Basic tools you always need.

---

## 3️⃣ `/sbin` – Admin/System Commands
- **What it is:** Commands for system administration, usually requiring root.
- **Examples:** `reboot`, `ifconfig`, `iptables`
- **Windows/Mac equivalent:** Windows admin tools, `/usr/sbin`
- **Layman:** Tools for IT admins, not regular users.

---

## 4️⃣ `/lib` – System Libraries
- **What it is:** Libraries (shared code) used by programs in `/bin` and `/sbin`.
- **Windows/Mac equivalent:** Windows DLLs (`C:\Windows\System32`), `/usr/lib`
- **Layman:** Ingredients needed for system programs to run.

---

## 5️⃣ `/boot` – Boot Files
- **What it is:** Contains files needed to boot Linux.
- **Examples:** `vmlinuz` (kernel), `initrd.img`, `grub/`
- **Windows/Mac equivalent:** `C:\Windows\Boot`, Mac boot partition
- **Layman:** Don’t touch unless you know about booting Linux.

---

## 6️⃣ `/etc` – Configuration Files
- **What it is:** System-wide configuration settings.
- **Examples:**
  - `/etc/passwd` → user accounts
  - `/etc/hostname` → system hostname
  - `/etc/nginx/nginx.conf` → Nginx config
- **Windows/Mac equivalent:** Windows Registry/config files, `/Library/Preferences`
- **Layman:** The “settings folder” for your system and apps.

---

## 7️⃣ `/dev` – Device Files
- **What it is:** Represents devices as files.
- **Examples:**
  - `/dev/sda` → hard disk
  - `/dev/tty` → terminal
- **Windows/Mac equivalent:** Device Manager (Windows), `/dev` (Mac)
- **Layman:** Your hardware appears as files here.

---

## 8️⃣ `/proc` – Process & System Info
- **What it is:** Virtual directory providing info about processes and system.
- **Examples:**
  - `/proc/cpuinfo` → CPU details
  - `/proc/meminfo` → memory usage
- **Windows/Mac equivalent:** Task Manager (Windows), Activity Monitor (Mac)
- **Layman:** “System info files.”

---

## 9️⃣ `/tmp` – Temporary Files
- **What it is:** Stores temporary files created by applications.
- **Windows/Mac equivalent:** `C:\Windows\Temp`, `/tmp`
- **Layman:** Safe to delete; cleared on reboot.

---

## 🔟 `/var` – Variable Data
- **What it is:** Data that changes frequently.
- **Examples:**
  - `/var/log` → logs (`syslog`, `auth.log`)
  - `/var/spool` → queues (mail, print jobs)
  - `/var/tmp` → temporary files (survive reboot)
- **Windows/Mac equivalent:** Event Viewer logs, temp folders
- **Layman:** “Dynamic data folder.”

---

## 1️⃣1️⃣ `/usr` – User Programs & Data
- **What it is:** Contains user applications, libraries, documentation.
- **Subfolders:**
  - `/usr/bin` → apps (python3, gcc)
  - `/usr/sbin` → admin apps (apache2)
  - `/usr/lib` → libraries
  - `/usr/local` → manually installed apps
- **Windows/Mac equivalent:** `C:\Program Files`, `/Applications`
- **Layman:** Where installed programs live.

---

## 1️⃣2️⃣ `/home` – User Home Directories
- **What it is:** Each user’s personal space.
- **Example:** `/home/prashant`, `/home/user1`
- **Windows/Mac equivalent:** `C:\Users\username`, `/Users/username`
- **Layman:** Your “My Documents” on Linux.

---

## 1️⃣3️⃣ `/media` & `/mnt` – Mount Points
- **What it is:** For removable and temporary mounted filesystems.
- **Examples:** `/media/usb`, `/mnt/disk`
- **Windows/Mac equivalent:** `D:\`, `E:\` drives, `/Volumes/USB`
- **Layman:** Where USB drives, CDs, or external disks show up.

---

## 1️⃣4️⃣ `/opt` – Optional Software
- **What it is:** Stores optional or third-party applications.
- **Examples:** `/opt/google/chrome`, `/opt/eclipse`
- **Windows/Mac equivalent:** Custom apps in `C:\Program Files`, `/Applications`
- **Layman:** “Extra apps folder.”

---

## 1️⃣5️⃣ `/run` – Runtime Data
- **What it is:** Stores runtime information such as process IDs (PID files), sockets, and lock files.
- **Layman:** Programs leave their “currently running” status here.

---

## 1️⃣6️⃣ `/srv` – Service Data
- **What it is:** Contains service-related files.
- **Examples:** `/srv/www` → website data
- **Windows/Mac equivalent:** `C:\inetpub\wwwroot`, `/srv`
- **Layman:** Only used by servers (web, FTP, etc.).

---

# Summary Table

| Directory | Purpose                          | Windows Equivalent       | Mac Equivalent            |
|-----------|----------------------------------|--------------------------|---------------------------|
| `/`       | Root directory                   | `C:\`                   | `/`                       |
| `/bin`    | Essential commands               | `C:\Windows\System32`   | `/usr/bin`                |
| `/sbin`   | Admin commands                   | Admin tools              | `/usr/sbin`               |
| `/lib`    | System libraries                 | DLL files                | `/usr/lib`                |
| `/boot`   | Boot files                       | `C:\Windows\Boot`       | Boot partition            |
| `/etc`    | Configuration files              | Registry/config files    | `/Library/Preferences`    |
| `/dev`    | Device files                     | Device Manager           | `/dev`                    |
| `/proc`   | Process/system info              | Task Manager             | Activity Monitor          |
| `/tmp`    | Temporary files                  | `C:\Windows\Temp`       | `/tmp`                    |
| `/var`    | Variable data (logs, queues)     | Event Viewer/Temp        | `/var`                    |
| `/usr`    | User programs, libraries         | `C:\Program Files`      | `/Applications`           |
| `/home`   | User personal files              | `C:\Users\username`    | `/Users/username`         |
| `/media`  | Removable drives                 | `D:\`, `E:\`           | `/Volumes/USB`            |
| `/mnt`    | Temporary mount points           | `D:\`, `E:\`           | `/Volumes/USB`            |
| `/opt`    | Optional software                | `C:\Program Files`      | `/Applications`           |
| `/run`    | Runtime data                     | N/A                      | `/var/run`                |
| `/srv`    | Service data                     | `C:\inetpub\wwwroot`   | `/srv`                    |

---

✅ This breakdown shows how Linux directories map to equivalents in Windows and Mac, with practical examples.

