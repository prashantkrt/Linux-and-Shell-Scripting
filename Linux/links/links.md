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

### Example
```bash
# Create a file
echo "Hello Linux" > original.txt

# Create hard link
ln original.txt hardlink.txt

# List with inode numbers
ls -li
```

**Output:**
```
12345 -rw-r--r-- 2 prashant users 12 Sep 22 20:10 hardlink.txt
12345 -rw-r--r-- 2 prashant users 12 Sep 22 20:10 original.txt
```

👉 Both files have the **same inode number (12345)** and **link count = 2**.  

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

✅ Changes made in one file are reflected in the other because they share the same inode (same data).  

---

### Delete Original File
```bash
rm original.txt
cat hardlink.txt
```

**Output:**
```
Hello Linux
New Line Added
```

✅ File data is still available because **hardlink.txt** still points to the inode (data remains until all links are deleted).  

---

## 📌 2. Soft Link (Symbolic Link)  

### Create a Soft Link
```bash
ln -s original.txt softlink.txt
```

### Example
```bash
# Create a file
echo "Linux World" > original.txt

# Create symlink
ln -s original.txt softlink.txt

# List files
ls -l
```

**Output:**
```
lrwxrwxrwx 1 prashant users 12 Sep 22 20:15 softlink.txt -> original.txt
-rw-r--r-- 1 prashant users 12 Sep 22 20:15 original.txt
```

👉 `l` at the beginning shows it’s a symlink.  
👉 Symlink points to the **path** of the original file.  

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

✅ Editing the symlink edits the original file (because it points to it).  

---

### Delete Original File
```bash
rm original.txt
cat softlink.txt
```

**Output:**
```
cat: softlink.txt: No such file or directory
```

❌ The soft link is now **broken** because it only stored the path.  

---

## 📌 3. Difference Between Hard Link and Soft Link  

| Feature              | Hard Link                        | Soft Link (Symlink)            |
|----------------------|----------------------------------|--------------------------------|
| Inode Number         | Same as original                 | Different (points to path)     |
| Works if file deleted? | ✅ Yes, data stays alive         | ❌ No, becomes broken          |
| Across filesystems   | ❌ Not allowed                    | ✅ Allowed                     |
| Points to            | Actual data (inode)              | File path                      |

---

## 📌 4. Useful Commands for Links  

- **List inode numbers**  
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
- Use `ln file linkname` → Hard link  
- Use `ln -s file linkname` → Soft (symbolic) link  
