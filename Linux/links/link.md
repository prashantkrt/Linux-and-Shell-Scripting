# 🔗 Links in Linux – Hard Link & Soft Link  

Linux supports two types of links:  

1. **Hard Link** – another name for the same file (points to inode).  
2. **Soft Link (Symbolic Link / symlink)** – a shortcut that points to the path of another file.  

---

## 📌 1. Hard Link  

### Create a Hard Link
```bash
ln original.txt hardlink.txt
```

### Example with Inode Numbers
```bash
echo "Hello Linux" > original.txt
ln original.txt hardlink.txt
ls -i
```

**Output:**
```
12345 hardlink.txt  12345 original.txt
```

👉 Both files have the **same inode number (12345)**.  

```bash
ls -li
```
**Output:**
```
12345 -rw-r--r-- 2 prashant users 12 Sep 22 20:10 hardlink.txt
12345 -rw-r--r-- 2 prashant users 12 Sep 22 20:10 original.txt
```

👉 Link count is `2`, meaning two names point to the same inode.  

---

### Edit Through Hard Link
```bash
echo "New Line Added" >> hardlink.txt
cat original.txt
```

**Output:**
```
Hello Linux
New Line Added
```

✅ Both files show updated data because they share the same inode.  

---

### Delete Original File
```bash
rm original.txt
ls -i
cat hardlink.txt
```

**Output:**
```
12345 hardlink.txt
Hello Linux
New Line Added
```

✅ Data still exists because the hard link keeps the inode alive.  

---

## 📌 2. Soft Link (Symbolic Link)  

### Create a Soft Link
```bash
ln -s original.txt softlink.txt
```

### Example with Inode Numbers
```bash
echo "Linux World" > original.txt
ln -s original.txt softlink.txt
ls -i
```

**Output:**
```
12346 original.txt   12347 softlink.txt
```

👉 Different inodes: `softlink.txt` just points to the **path**.  

```bash
ls -li
```
**Output:**
```
12346 -rw-r--r-- 1 prashant users 12 Sep 22 20:15 original.txt
12347 lrwxrwxrwx 1 prashant users 20 Sep 22 20:15 softlink.txt -> original.txt
```

👉 Notice `l` at the start → it’s a symlink.  

```bash
readlink softlink.txt
```
**Output:**
```
original.txt
```

👉 `readlink` shows the **target path** of the symlink.  

---

### Edit Through Soft Link
```bash
echo "Appended Line" >> softlink.txt
cat original.txt
```

**Output:**
```
Linux World
Appended Line
```

✅ Editing via symlink edits the original file.  

---

### Delete Original File
```bash
rm original.txt
ls -li
cat softlink.txt
```

**Output:**
```
12347 lrwxrwxrwx 1 prashant users 20 Sep 22 20:20 softlink.txt -> original.txt
cat: softlink.txt: No such file or directory
```

❌ The symlink is **broken** because it points to a deleted path.  

---

## 📌 3. Difference Between Hard Link and Soft Link  

| Feature              | Hard Link                        | Soft Link (Symlink)            |
|----------------------|----------------------------------|--------------------------------|
| Inode Number         | Same as original                 | Different (points to path)     |
| Works if file deleted? | ✅ Yes, data stays alive         | ❌ No, becomes broken          |
| Across filesystems   | ❌ Not allowed                    | ✅ Allowed                     |
| Points to            | Actual data (inode)              | File path                      |
| Command to verify    | `ls -i`, `ls -li`                | `ls -li`, `readlink`           |

---

## 📌 4. Useful Commands for Links  

- **List inode numbers**  
```bash
ls -i
```

- **Detailed list with inode numbers**  
```bash
ls -li
```

- **Follow symlink to target**  
```bash
readlink softlink.txt
```

- **Remove a link**  
```bash
rm hardlink.txt
rm softlink.txt
```

---

✅ **Summary**  
- `ln file linkname` → Hard link (same inode)  
- `ln -s file linkname` → Soft link (new inode, points to path)  
- Use `ls -i` / `ls -li` to verify inode numbers  
- Use `readlink` for symlink target  
