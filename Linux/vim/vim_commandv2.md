# 📘 Vim / Vi Command Notes

Vim (**Vi IMproved**) is a powerful text editor commonly used in Linux/Unix systems. It extends the original **vi** editor with more features. Vim is **mode-based**, meaning the same key can behave differently depending on the current mode.

This guide gives a **comprehensive summary of Vim commands**, with explanations and examples.

---

## 🔹 Vim Modes

1. **Normal Mode (default)**
   - Used for navigation, editing, deleting, copying, and pasting.
   - Press `Esc` from any mode to return to Normal Mode.

2. **Insert Mode**
   - Used for typing text like a regular editor.
   - Entered from Normal Mode using:
     | Command | Action |
     |---------|------------------------------------------------|
     | `i`     | Insert before cursor |
     | `I`     | Insert at beginning of line |
     | `a`     | Append (insert after cursor) |
     | `A`     | Append at end of line |
     | `o`     | Open new line **below** and insert |
     | `O`     | Open new line **above** and insert |
     | `cw`    | Change word (delete + enter insert mode) |
   - Exit Insert Mode → Press `Esc`.

3. **Command-line Mode**
   - Used for saving, quitting, searching, and replacing.
   - Entered from Normal Mode with `:` (colon).
   - Examples: `:w`, `:q!`, `:wq`, `:%s/old/new/g`

---

## 🔹 Basic Navigation (Normal Mode)
- `h` → move left
- `l` → move right
- `j` → move down
- `k` → move up

👉 Think of them as arrow keys under your right hand.

**Examples:**
```
Hello World
```
- `h` moves cursor left
- `l` moves cursor right
- `j` moves cursor down
- `k` moves cursor up

---

## 🔹 Insert Mode Editing (special shortcuts)
While in Insert Mode:
- `Backspace` → delete character left
- `Ctrl-h` → same as Backspace
- `Ctrl-w` → delete previous word
- `Ctrl-u` → delete from cursor to beginning of line
- `Enter` → new line below

⚡ Movement keys like `h`, `j`, `k`, `l`, `w`, `b` **do not work** in Insert Mode. You must return to Normal Mode.

---

## 🔹 Save and Quit (Command-line Mode)
First press `Esc` to enter Normal Mode, then type:
- `:w` → Save file
- `:q` → Quit
- `:wq` → Save and quit
- `:q!` → Quit without saving
- `:wq!` → Force save and quit

---

## 🔹 Delete / Cut (Normal Mode)
- `x` → delete character under cursor
- `dw` → delete word after cursor
- `db` → delete word before cursor
- `dd` → delete current line
- `d$` or `D` → delete to end of line
- `d0` → delete to beginning of line
- `dG` → delete from cursor to end of file
- `dgg` → delete from cursor to beginning of file

**Examples:**

1. `x` (delete character)
```
Text: hello |world
Press: x
Result: hello orld
```

2. `dw` (delete word)
```
Text: hello |world again
Press: dw
Result: hello again
```

3. `dd` (delete line)
```
line one
|line two
line three

Press: dd
Result:
line one
line three
```

4. `d$` (delete to end of line)
```
Text: hello |world again
Press: d$
Result: hello
```

---

## 🔹 Undo and Redo
- `u` → undo last change
- `Ctrl+r` → redo last undone change

---

## 🔹 Copy (Yank) and Paste (Normal Mode)
- `yy` → copy current line
- `yw` → copy word from cursor
- `y$` → copy to end of line
- `yG` → copy to end of file
- `ygg` → copy to beginning of file

- `p` → paste after cursor (or below line if line was yanked)
- `P` → paste before cursor (or above line)

**Cut is just Delete (`d`) + Paste:**
- `dd` → cut line
- `dw` → cut word
- `d$` → cut to end of line
- Paste with `p` or `P`

---

## 🔹 Search
- `/word` → search forward (down) for word
- `?word` → search backward (up) for word
- `n` → next occurrence
- `N` → previous occurrence

**Example:**
```
hello there
hello world
```
Type `/hello` + Enter → jumps to first "hello"
Press `n` → jumps to next "hello"

---

## 🔹 Replace
- `rX` → replace character under cursor with `X`
- `:%s/old/new/g` → replace all `old` with `new`
- `:%s/old/new/gc` → replace all `old` with `new` (with confirmation)

---

## 🔹 Jump to Lines
- `G` (Shift + g) → last line of file
- `gg` → first line of file
- `:$` → last line (Command-line mode)
- `:1` → first line (Command-line mode)
- `:500` → jump to line 500
- `500G` → jump to line 500

---

## 🔹 Open Multiple Files
```bash
vim file1.txt file2.txt file3.txt
```

- `:next` → go to next file
- `:prev` → go to previous file
- `:args` → list files opened
- `:first` → go to first file
- `:last` → go to last file

⚠️ If unsaved changes exist, Vim warns you. Use `:next!` or `:prev!` to force.

---

## 🔹 Split Windows
- `:split filename` → open file in horizontal split
- `:vsplit filename` → open file in vertical split
- `Ctrl+w w` → switch between splits

---

## 🔹 Quick Reference / Summary
- **Insert Mode** → `i`, `I`, `a`, `A`, `o`, `O`
- **Save/Quit** → `:w`, `:q`, `:wq`, `:q!`
- **Navigation** → `h`, `j`, `k`, `l`, `gg`, `G`
- **Delete** → `dd`, `dw`, `d$`, `d0`
- **Undo/Redo** → `u`, `Ctrl+r`
- **Search** → `/word`, `?word`, `n`, `N`
- **Replace** → `:%s/old/new/g`
- **Copy/Paste** → `yy`, `yw`, `y$`, `p`, `P`

---

✅ **Golden Rule:**
- `Esc` → Always return to **Normal Mode**
- `:` → Enter **Command-line Mode**
- `i`, `a`, `o` → Enter **Insert Mode**

