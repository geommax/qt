## Docker Build 
```sh
em++ -std=c++17 -Wall -pedantic -I "C:/Qt/5.13.1/wasm_32/include" -I "C:/Qt/5.13.1/wasm_32/include/QtCore" -I "C:/Qt/5.13.1/wasm_32/include/QtPrintSupport" -I "C:/Qt/5.13.1/wasm_32/include/QtWidgets" -L "C:/Qt/5.13.1/wasm_32/lib" main.cpp notepad.cpp -s WASM=1 -s EXPORT_ALL=1 -o notepad.js
``




