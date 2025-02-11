### **Fix: Missing `<limits>` Header in Qt Source Code**

The error **"‘numeric_limits’ is not a member of ‘std’"** means that the Qt source code is missing an `#include <limits>` directive.

---

### **1. Manually Fix the Qt Source Code**
```sh
cd qt-everywhere-source-5.15.3/
```
Edit the file:
```sh
nano qtbase/src/corelib/text/qbytearraymatcher.h
```
Find this line:
```cpp
#include <QtCore/qbytearray.h>
```
And add the following line **above** it:
```cpp
#include <limits>
```
Save the file (`CTRL + X`, then `Y`, then `Enter`).

---

### **2. Clean Previous Build**
Remove old compilation files to prevent conflicts:
```sh
rm -rf qtbase/lib/*
rm -rf qtbase/bin/*
rm -rf qtbase/src/corelib/text/*.o
```

---

### **3. Re-run Configuration and Build**
Now, retry configuring and compiling:
```sh
./configure -prefix $PWD/qtbase -opensource -nomake tests
make -j$(nproc)
make install
```

---

### **Alternative: Use GCC Compatibility Flag**
If you want a temporary fix without modifying the source code, try this during configuration:
```sh
CXXFLAGS="-include limits" ./configure -prefix $PWD/qtbase -opensource -nomake tests
```
This forces the compiler to include `<limits>` globally.

---

### **Root Cause**
Qt 5.15.3 was written for an older compiler version. Some newer compilers (like GCC 11+) need explicit `<limits>` inclusion, whereas older ones included it indirectly.

---

Try this fix and let me know if you hit another issue! 🚀