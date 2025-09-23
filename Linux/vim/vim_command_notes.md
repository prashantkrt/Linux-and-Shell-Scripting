# Linux `vim` Command Notes

The **`vim` editor** (Vi IMproved) is a powerful text editor available in most Linux systems. It is an enhanced version of the older `vi` editor and is widely used for editing code and configuration files.

---

## 🔹 Starting Vim
```bash
vim filename
```
- Opens `filename` in vim.
- If the file does not exist, vim creates it.

**Example:**
```bash
vim notes.txt
```
👉 Opens (or creates) `notes.txt`.

---

## 🔹 Vim Modes
Vim has multiple modes, the most important are:

1. **Normal mode** (default) → For navigation & commands.
2. **Insert mode** → For editing text.
3. **Command mode** → For saving, quitting, and executing commands.

---

## 🔹 Switching Between Modes
- `i` → Enter Insert mode (before cursor)
- `a` → Enter Insert mode (after cursor)
- `o` → Open new line below and enter Insert mode
- `Esc` → Back to Normal mode

**Example:**
```text
(Press i)
Hello, this is my text.
(Press Esc to return to Normal mode)
```

---

## 🔹 Saving and Quitting
- `:w` → Save file
- `:q` → Quit vim
- `:wq` → Save and quit
- `:q!` → Quit without saving

**Example:**
```bash
:wq
```
👉 Saves the file and exits.

---

## 🔹 Basic Editing
- `x` → Delete character under cursor
- `dd` → Delete whole line
- `yy` → Copy (yank) a line
- `p` → Paste after cursor
- `u` → Undo last change
- `Ctrl + r` → Redo undone change

**Example:**
```
File Content:
Hello World
This is Linux

Action:
Place cursor on "Hello World" and press dd

Result:
This is Linux
```

---

## 🔹 Navigation
- `h` → Move left
- `l` → Move right
- `k` → Move up
- `j` → Move down
- `0` → Move to beginning of line
- `$` → Move to end of line
- `gg` → Go to first line
- `G` → Go to last line

**Example:**
```
File Content:
Line 1
Line 2
Line 3

Command: gg
👉 Cursor moves to "Line 1"

Command: G
👉 Cursor moves to "Line 3"
```

---

## 🔹 Search and Replace
- `/word` → Search for "word"
- `n` → Go to next match
- `:%s/old/new/g` → Replace all occurrences of "old" with "new"

**Example:**
```
File Content:
Hello Linux
Hello World

Command: :%s/Hello/Hi/g

Result:
Hi Linux
Hi World
```

---

## 🔹 Working with Multiple Files
```bash
vim file1.txt file2.txt
```
- `:n` → Open next file
- `:prev` → Open previous file

**Example:**
```bash
vim file1.txt file2.txt
```
👉 Opens both files in vim.

---

## 🔹 Visual Mode
- `v` → Start visual selection
- `V` → Select whole line
- `y` → Yank (copy) selection
- `d` → Delete selection

**Example:**
```
File Content:
Line A
Line B
Line C

Action: Place cursor on "Line A", press V, move down, press y
👉 Copies Line A and Line B
```

---

## 🔹 Split Windows
- `:split file2.txt` → Horizontal split
- `:vsplit file2.txt` → Vertical split
- `Ctrl + w, w` → Switch between windows

**Example:**
```bash
:split file2.txt
```
👉 Opens file2.txt in a split window.

---

## 🔹 Exit Vim
- Save and quit: `:wq`
- Quit without saving: `:q!`
- Quit all files: `:qa`

---

# Quick Summary of Commands
| Action                | Command |
|-----------------------|---------|
| Enter insert mode     | `i`, `a`, `o` |
| Save file             | `:w` |
| Quit                  | `:q` |
| Save & quit           | `:wq` |
| Quit without saving   | `:q!` |
| Delete line           | `dd` |
| Copy (yank) line      | `yy` |
| Paste                 | `p` |
| Undo                  | `u` |
| Redo                  | `Ctrl+r` |
| Search word           | `/word` |
| Replace all           | `:%s/old/new/g` |
| First line            | `gg` |
| Last line             | `G` |

---

✅ Vim is a **powerful editor**: learn the basics (`i`, `Esc`, `:wq`, `dd`, `yy`, `/search`) first, then explore advanced features like visual mode and splits.