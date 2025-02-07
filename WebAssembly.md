To extract and set up the **Qt5** source code, you can download it from several sources, including the official Qt repository or through Git. Below are the steps to obtain the source code and extract it.

### 1. **Download Qt5 Source from the Official Qt Repository**

You can download the Qt5 source code directly from the official Qt repository or the mirror:

- **Official Qt repository**: You can find the Qt5 source code in the [Qt5 Git repository](https://code.qt.io/qt/qt5.git). You can either clone the repository or download a tarball.

#### Option 1: Clone the Qt5 Git Repository
1. Open a terminal and run the following command to clone the repository:
   ```bash
   git clone --recursive https://code.qt.io/qt/qt5.git
   ```
2. After cloning the repository, navigate to the `qt5` directory:
   ```bash
   cd qt5
   ```

   This will clone the latest version of Qt5. The `--recursive` flag ensures all submodules (such as the Qt modules) are cloned.

#### Option 2: Download a Tarball of Qt5 Source
1. Go to the [Qt5 download page](https://download.qt.io/archive/qt/) or find the Qt5 version you need.
2. Download the `.tar.xz` or `.tar.gz` file of the specific version (e.g., `qt-everywhere-src-5.x.x.tar.xz`).
3. Once the file is downloaded, extract it:
   ```bash
   tar -xf qt-everywhere-src-5.x.x.tar.xz
   ```
   Replace `5.x.x` with the version number you've downloaded.

### 2. **Build Qt5 from the Source Code**

After extracting the source code, you can proceed with the configuration and building steps.

1. **Navigate to the Source Directory**:
   ```bash
   cd qt5  # or the directory where you extracted the tarball
   ```

2. **Create a Build Directory**:
   It’s a good practice to create a separate build directory to keep things clean:
   ```bash
   mkdir build
   cd build
   ```

3. **Configure Qt for WebAssembly**:
   Run the configuration command to set up Qt for building WebAssembly. You will need to have the **Emscripten SDK** activated as discussed earlier:
   ```bash
   ../configure -xplatform wasm32-emscripten -prefix /path/to/qt/wasm
   ```

4. **Build Qt**:
   Now, build Qt using `make`:
   ```bash
   make -j$(nproc)
   make install
   ```

   Replace `/path/to/qt/wasm` with the desired installation path for Qt.

### 3. **Verifying the Qt5 Build**

Once the build is complete, you can verify that the installation contains WebAssembly support:

1. Check the Qt version by running:
   ```bash
   /path/to/qt/wasm/bin/qmake --version
   ```

2. You should see that the build is configured for WebAssembly with the `wasm32-emscripten` target.

---

[Web Assembly ](https://doc.qt.io/qt-5/wasm.html)
[Emscripten  ](https://emscripten.org/docs/introducing_emscripten/index.html)