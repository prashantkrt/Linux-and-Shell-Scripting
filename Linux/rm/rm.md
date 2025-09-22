# 🗑️ `rm` Command in Linux  

The `rm` command is used to **remove (delete) files and directories** in Linux.  
⚠️ Unlike GUI-based systems, files deleted with `rm` are **not moved to Trash/Recycle Bin**. Once removed, they are gone permanently.  

---

## 🔹 Syntax  
```bash
rm [options] file_name
```

- `file_name` → File or directory you want to delete  
- `options` → Modify how the deletion works (interactive, recursive, force, verbose, etc.)  

---

## 🔹 Options with Examples  

### 1. Remove a File  
```bash
rm file.txt
```
📌 Deletes `file.txt` from the current directory.  
👉 If the file does not exist, you’ll get an error.  

---

### 2. Remove Multiple Files  
```bash
rm file1.txt file2.txt file3.txt
```
📌 Deletes `file1.txt`, `file2.txt`, and `file3.txt` at once.  

---

### 3. Remove Files with a Pattern (Wildcard `*`)  
```bash
rm *.log
```
📌 Deletes **all files ending with `.log`** in the current directory.  
👉 Useful for cleaning log files.  

---

### 4. Interactive Delete (`-i`)  
```bash
rm -i file.txt
```
📌 Asks for confirmation before deleting `file.txt`.  

```bash
rm: remove regular file 'file.txt'? y
```
👉 Good for safety when you don’t want to delete files accidentally.  

---

### 5. Verbose Delete (`-v`)  
```bash
rm -v file.txt
```
📌 Shows a message when deleting files.  

Output:
```
removed 'file.txt'
```

---

### 6. Force Delete (`-f`)  
```bash
rm -f file.txt
```
📌 Deletes `file.txt` **without asking** and **without showing errors** if the file doesn’t exist.  

👉 Useful in scripts to avoid interruption.  

---

### 7. Recursive Delete (`-r` or `-R`)  
```bash
rm -r my_folder/
```
📌 Deletes the directory `my_folder` **and all its files/subdirectories**.  

👉 Without `-r`, `rm` cannot delete directories.  

---

### 8. Recursive + Force (`-rf`)  
```bash
rm -rf my_folder/
```
📌 Deletes `my_folder` and all contents **forcefully and without confirmation**.  

👉 Most commonly used, but ⚠️ **very dangerous**.  

---

### 9. Recursive + Verbose (`-rv`)  
```bash
rm -rv my_folder/
```
📌 Deletes the folder and prints the name of each file being removed.  

Output:
```
removed 'my_folder/file1.txt'
removed directory 'my_folder'
```

---

### 10. Delete Multiple Directories  
```bash
rm -rf folder1/ folder2/
```
📌 Deletes both `folder1` and `folder2` with all their contents.  

---

## ⚠️ Dangerous Example (Never Run!)  
```bash
rm -rf /
```
📌 This will attempt to delete **everything from the root directory**, making your system unusable.  

---

## 🔹 Pro Safety Tip  
You can make `rm` safer by adding an **alias** in your `.bashrc` or `.zshrc`:  

```bash
alias rm='rm -i'
```

📌 This makes `rm` always **ask before deleting**.  
👉 To bypass, you can still run `\rm file.txt`.  

---

✅ **Summary:**  
- Use `rm file` → delete a file  
- Use `rm -i` → safe delete (asks confirmation)  
- Use `rm -r` → delete a directory  
- Use `rm -rf` → delete directory forcefully (⚠️ careful!)  
- Use `rm -v` → show what’s being deleted  
