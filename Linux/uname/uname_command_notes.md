# Linux/macOS `uname` Command Notes

The `uname` command is used to display **system information** such as kernel name, version, architecture, and hostname.

---

## 1. `uname` (or `uname -s`)
**Meaning:** Prints the **kernel name**.

- **Linux Example:**
```bash
$ uname
Linux
```
- **macOS Example:**
```bash
$ uname
Darwin
```

👉 Shows whether you are running Linux (`Linux`) or macOS (`Darwin`).

---

## 2. `uname -r`
**Meaning:** Prints the **kernel release version**.

- **Linux Example:**
```bash
$ uname -r
5.15.0-58-generic
```
- **macOS Example:**
```bash
$ uname -r
23.0.0
```

👉 Useful for checking your **kernel release** (e.g., to match drivers or kernel modules).

---

## 3. `uname -v`
**Meaning:** Prints the **kernel build version** (extra build info).

- **Linux Example:**
```bash
$ uname -v
#64-Ubuntu SMP Thu Jan 5 11:00:00 UTC 2023
```
- **macOS Example:**
```bash
$ uname -v
Darwin Kernel Version 23.0.0: Mon Aug 14 2023; root:xnu-10002.1.13~1/RELEASE_ARM64_T8103
```

👉 Shows **detailed build info**, often used by developers or sysadmins.

---

## 4. `uname -m`
**Meaning:** Prints the **machine hardware name (architecture)**.

- **Linux Example:**
```bash
$ uname -m
x86_64
```
- **macOS Example (Apple Silicon):**
```bash
$ uname -m
arm64
```

👉 Useful to know whether your system is **64-bit (x86_64)** or **ARM-based (arm64, M1/M2/M3/M4 Macs)**.

---

## 5. `uname -p`
**Meaning:** Prints the **processor type** (may show `unknown` on some systems).

- **Linux Example:**
```bash
$ uname -p
x86_64
```
- **macOS Example:**
```bash
$ uname -p
arm
```

👉 Sometimes unreliable. Prefer `uname -m` for architecture.

---

## 6. `uname -i`
**Meaning:** Prints the **hardware platform** (may be unknown).

- **Linux Example:**
```bash
$ uname -i
x86_64
```
- **macOS Example:**
```bash
$ uname -i
unknown
```

👉 Works mostly on Linux, not reliable on macOS.

---

## 7. `uname -o`
**Meaning:** Prints the **operating system** (Linux only).

- **Linux Example:**
```bash
$ uname -o
GNU/Linux
```
- **macOS Example:**
```bash
$ uname -o
uname: illegal option -- o
usage: uname [-amnprsv]
```
👉 **Not supported on macOS.**

---

## 8. `uname -n`
**Meaning:** Prints the **node name (hostname)** of your system.

- **Linux Example:**
```bash
$ uname -n
prashant-laptop
```
- **macOS Example:**
```bash
$ uname -n
MacBook-Pro.local
```

👉 When to use:
- To check your **system hostname** quickly.
- Useful when working with **networks, servers, and SSH sessions** to know which machine you are on.

🔹 Alternative commands for hostname:
```bash
$ hostname
$ cat /etc/hostname   # Linux only
```

---

## 9. `uname -a`
**Meaning:** Prints **all system information** in one line.

- **Linux Example:**
```bash
$ uname -a
Linux prashant 5.15.0-58-generic #64-Ubuntu SMP Thu Jan 5 11:00:00 UTC 2023 x86_64 x86_64 x86_64 GNU/Linux
```
- **macOS Example:**
```bash
$ uname -a
Darwin MacBook-Pro.local 23.0.0 Darwin Kernel Version 23.0.0: Mon Aug 14 2023; root:xnu-10002.1.13~1/RELEASE_ARM64_T8103 arm64
```

👉 Best for a **quick overview**: kernel, version, architecture, hostname, OS.

---

# Summary Table

| Command   | Meaning                                 | Linux Example             | macOS Example                 |
|-----------|-----------------------------------------|---------------------------|-------------------------------|
| `uname`   | Kernel name                             | Linux                     | Darwin                        |
| `uname -s`| Same as `uname` (kernel name)           | Linux                     | Darwin                        |
| `uname -r`| Kernel release version                  | 5.15.0-58-generic         | 23.0.0                        |
| `uname -v`| Kernel version (build info)             | #64-Ubuntu SMP ...        | Darwin Kernel Version 23.0.0  |
| `uname -m`| Machine hardware (architecture)         | x86_64                    | arm64                         |
| `uname -p`| Processor type                          | x86_64                    | arm                           |
| `uname -i`| Hardware platform                       | x86_64                    | unknown                       |
| `uname -o`| Operating system                        | GNU/Linux                 | ❌ Not supported              |
| `uname -n`| Node name (hostname)                    | prashant-laptop           | MacBook-Pro.local             |
| `uname -a`| All system information                  | Linux prashant 5.15...    | Darwin MacBook-Pro...         |

---

✅ `uname` is a **system info command**:
- Developers use it for checking architecture before installing software.
- Sysadmins use it to identify kernel version and hostname on servers.
- `uname -a` is the quickest way to get a **full snapshot** of system details.

