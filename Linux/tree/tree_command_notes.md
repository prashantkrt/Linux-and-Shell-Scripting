# Linux `tree` Command Notes

The **`tree` command** is used to display directory structures in a **tree-like format**, making it easier to visualize files and folders compared to `ls -R`.

---

## 🔹 1. Basic Usage
```bash
tree
```
**Example Output:**
```
.
├── Documents
│   ├── file1.txt
│   └── file2.txt
├── Downloads
│   └── setup.exe
└── notes.txt

2 directories, 3 files
```
👉 Shows the hierarchy of the current directory.

---

## 🔹 2. Show Hidden Files
```bash
tree -a
```
**Example Output:**
```
.
├── .hiddenfile
├── Documents
│   └── file.txt
└── notes.txt
```
👉 Includes hidden files (starting with `.`).

---

## 🔹 3. Limit Directory Depth
```bash
tree -L 2
```
**Example Output:**
```
.
├── Documents
│   ├── file1.txt
│   └── Notes
├── Downloads
└── notes.txt
```
👉 Only shows up to 2 levels deep.

---

## 🔹 4. Show File Sizes
```bash
tree -s
```
**Example Output:**
```
[1024] file1.txt
[2048] file2.txt
```
👉 Displays file sizes in bytes.

---

## 🔹 5. Human-Readable Sizes
```bash
tree -h
```
**Example Output:**
```
[1.0K] file1.txt
[2.0K] file2.txt
```
👉 Sizes shown in KB, MB, GB.

---

## 🔹 6. Show Full Path of Files
```bash
tree -f
```
**Example Output:**
```
./Documents/file1.txt
./Documents/file2.txt
./Downloads/setup.exe
./notes.txt
```
👉 Prints full paths for each file.

---

## 🔹 7. Show Directories Only
```bash
tree -d
```
**Example Output:**
```
.
├── Documents
├── Downloads
└── Notes
```
👉 Only lists directories.

---

## 🔹 8. Sort by Modification Time
```bash
tree -t
```
👉 Lists files and directories sorted by modification time.

---

## 🔹 Installation
`tree` might not be installed by default.
```bash
sudo apt install tree     # Debian/Ubuntu
sudo yum install tree     # RHEL/CentOS
brew install tree         # macOS (Homebrew)
```

---

## 🔹 Comparison with `ls -R`
- `ls -R` → Recursive listing but flat, less readable.
- `tree` → Visual hierarchy, easy to understand.

---

## 🔹 Summary of Common Options
| Option | Meaning                        | Example          |
|--------|--------------------------------|------------------|
| `-a`   | Show hidden files              | `tree -a`        |
| `-L n` | Limit directory depth to *n*   | `tree -L 2`      |
| `-s`   | Show file sizes in bytes       | `tree -s`        |
| `-h`   | Human-readable file sizes      | `tree -h`        |
| `-f`   | Show full path for each file   | `tree -f`        |
| `-d`   | Show directories only          | `tree -d`        |
| `-t`   | Sort by last modification time | `tree -t`        |

---

✅ The **`tree` command** is a handy visual tool to explore directory structures in the terminal.

