## QT

https://download.qt.io/archive/qt/5.15/
https://emscripten.org/docs/getting_started/Tutorial.html

https://doc.qt.io/qt-5/wasm.html

https://doc.qt.io/qt-5/wasm.html


ဒီနှစ်ခုသွင်းရမယ်ဗျာ။

6. Web Engine ပေါ်မှာ RUN လို့ရအောင် Compile လုပ်ပေးမယ့်ကောင်က တော့ emsdk ဘဲဖြစ်ပါတယ်။ 

```bash
sudo ln -s /usr/bin/python3 /usr/bin/python
```
```bash
emcc --version
```
emcc (Emscripten gcc/clang-like replacement) 1.39.8 (commit 539e4044b78c3f9ef9c0539b673e48a59ed54803)

```bash
em++ --version
```
emcc (Emscripten gcc/clang-like replacement) 1.39.8 (commit 539e4044b78c3f9ef9c0539b673e48a59ed54803)

7. Generate hello_world_emscripten_sdk.c to js file

```bash
emcc hello_world_emscripten_sdk.c 
```

```bash
bot@bot-Vostro-14-3468:~/Desktop/Qt/qt$ ls
a.out.js        CMakeLists.txt.user  hello_world_emscripten_sdk.c  mainwindow.h            README.md
a.out.wasm      db_web_pos.sql       main.cpp                      mainwindow.ui           sources
CMakeLists.txt  headers              mainwindow.cpp                mainwindow.ui.autosave  WebAssembly.md
bot@bot-Vostro-14-3468:~/Desktop/Qt/qt$ node a.out.js 
hello, world emscripten sdk .. see you soon again...!
bot@bot-Vostro-14-3468:~/Desktop/Qt/qt$ 
```

> blocked by CORS policy: Cross origin requests are only supported for protocol schemes: chrome, chrome-extension, chrome-untrusted, data, http, https, isolated-app.


### CROS Policy Error Browser when loading js files onto the browser by html.
```
How do I run a local webserver for testing / why does my program stall in “Downloading…” or “Preparing…”?

That error can happen when loading the page using a file:// URL, which works in some browsers but not in others. Instead, it’s best to use a local webserver. For example, Python has one built in, python -m http.server in Python 3 or python -m SimpleHTTPServer in Python 2. After doing that, you can visit http://localhost:8000/. You can also use emrun FILENAME.html (which will run a python webserver for you).

When doing quick local testing, another option than a local webserver is to bundle everything into a single file, using -sSINGLE_FILE (as then no XHRs will be made to file:// URLs).

Otherwise, to debug this, look for an error reported on the page itself, or in the browser devtools (web console and network tab), or in your webserver’s logging.
```

#### RUN this command in the emsdk-Tsuit/ dir. 
```bash
python -m http.server
```

And visit http://localhost:8000/. See the result images/6147644483748085933.jpg.

```bash
emcc hello_world_emscripten_sdk.c  -o hello_world_emscripten_sdk.html
```

```bash
emcc hello_sdl_test.c  -o hello_sdl_test.html
```
#### RUN this command in the emsdk-Tsuit/ dir. 
```bash
python -m http.server
```


And visit http://localhost:8000/. See the result images/6147644483748085945.jpg.
