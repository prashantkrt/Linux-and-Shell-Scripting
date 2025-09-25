# ✍️ Mastering Vim: Command Notes & Examples

Vim (**Vi IMproved**) is a powerful text editor for Linux/Unix. It’s based on **vi (Visual Interface)** but with many improvements. Unlike typical editors, Vim works in **modes** (Normal, Insert, Command-line, Visual), and most editing is done using **keyboard shortcuts**, not the mouse.

This guide will help you **learn and master Vim** step by step with clear explanations, commands, and outputs.

---

## 📌 Starting Vim
```bash
$ vim filename.txt
```
- Opens `filename.txt` in Vim.
- Creates the file if it doesn’t exist.

---

## 📖 Vim Modes

1. **Normal Mode** (default)
   - Used for navigation, deleting, copying, pasting.
   - Press `Esc` to return here anytime.

2. **Insert Mode** (typing mode)
   - Used for entering text.
   - Enter using:
     - `i` → insert before cursor
     - `I` → insert at beginning of line
     - `a` → append after cursor
     - `A` → append at end of line
     - `o` → open new line below
     - `O` → open new line above
   - Exit Insert Mode: `Esc`.

3. **Command-line Mode**
   - Used for saving, quitting, searching, replacing.
   - Enter using `:` (colon) in Normal Mode.
   - Examples: `:w` (save), `:q` (quit).

4. **Visual Mode** (selection)
   - Used for selecting blocks of text.
   - Enter with `v` (character), `V` (line), `Ctrl+v` (block).
   - Then apply commands like delete (`d`) or copy (`y`).

---

## 🏃 Navigation in Normal Mode

| Key | Action |
|-----|--------|
| `h` | Move left |
| `l` | Move right |
| `j` | Move down |
| `k` | Move up |
| `0` | Move to beginning of line |
| `$` | Move to end of line |
| `w` | Jump forward one word |
| `b` | Jump backward one word |

👉 Think of `h j k l` like arrow keys under your right hand.

Example text:
```
Hello World
```
- Cursor on `H`, press `w` → jumps to `W`.
- Cursor on `H`, press `$` → jumps to `d` (end of line).

---

## ✍️ Insert Text

Example text:
```
Hello World
```

Commands:
```vim
i   → Insert before cursor
I   → Insert at beginning of line
a   → Insert after cursor
A   → Insert at end of line
o   → Open new line below and start insert
O   → Open new line above and start insert
```

👉 Cursor on `W`:
- Press `i` → you can type before `W`.
- Press `a` → you can type after `W`.
- Press `o` → new line opens below, ready to type.

---

## 💾 Save & Quit

In Normal Mode, press `:` to enter Command-line Mode:

| Command | Action |
|---------|--------|
| `:w`    | Save file |
| `:q`    | Quit |
| `:wq`   | Save and quit |
| `:q!`   | Quit without saving |
| `:wq!`  | Force save and quit |

Example:
```
:wq
```
Saves changes and exits Vim.

---

## ✂️ Deleting Text

| Command | Action |
|---------|--------|
| `x`     | Delete character under cursor |
| `dw`    | Delete word from cursor |
| `dd`    | Delete current line |
| `d$`    | Delete from cursor to end of line |

Example text:
```
Hello World
```
- Cursor on `W`, type `dw` → removes `World`.
- Cursor anywhere on line, type `dd` → removes whole line.

---

## 🔄 Undo & Redo

| Command  | Action |
|----------|--------|
| `u`      | Undo last change |
| `Ctrl+r` | Redo undone change |

---

## 📋 Copy, Cut & Paste

| Command | Action |
|---------|--------|
| `yy`    | Yank (copy) a line |
| `p`     | Paste after cursor |
| `P`     | Paste before cursor |
| `dd`    | Cut (delete) a line |

Example:
- Cursor on line → `yy` → copies it.
- Move elsewhere → `p` → pastes copy below.

---

## 🔍 Searching in Files

| Command   | Action |
|-----------|--------|
| `/word`   | Search forward |
| `?word`   | Search backward |
| `n`       | Next occurrence |
| `N`       | Previous occurrence |

Example:
```
/search
```
Highlights `search` moving forward.

---

## 🔁 Replacing Text

| Command | Action |
|---------|--------|
| `rX` | Replace character under cursor with `X` |
| `:%s/old/new/g` | Replace all `old` with `new` |
| `:%s/old/new/gc` | Replace all with confirmation |

Example text:
```
Hello World
Hello World
```
```vim
:%s/World/Linux/g
```
Output:
```
Hello Linux
Hello Linux
```

---

## 📂 Working with Multiple Files

```bash
$ vim file1.txt file2.txt
```
Switch files:
- `:next` → next file
- `:prev` → previous file

---

## 🪟 Splitting Windows

| Command | Action |
|---------|--------|
| `:split filename`  | Horizontal split |
| `:vsplit filename` | Vertical split |
| `Ctrl+w w`         | Switch between windows |

---

## 🛑 Force Quit
```vim
:q!
```
Quit without saving.

---

## 📊 Summary Cheatsheet

- **Modes**: Normal (Esc), Insert (i, a, o), Command-line (:), Visual (v)
- **Save/Quit**: `:w`, `:q`, `:wq`, `:q!`
- **Navigation**: `h j k l`, `w`, `b`, `0`, `$`
- **Edit**: `i`, `a`, `o`, `O`
- **Delete**: `x`, `dw`, `dd`, `d$`
- **Undo/Redo**: `u`, `Ctrl+r`
- **Copy/Paste**: `yy`, `p`, `P`
- **Search**: `/word`, `?word`, `n`, `N`
- **Replace**: `:%s/old/new/g`
- **Multiple Files**: `:next`, `:prev`
- **Windows**: `:split`, `:vsplit`, `Ctrl+w w`

---

✅ With these commands and examples, you’ll be able to **navigate, edit, search, and manage files in Vim efficiently**.