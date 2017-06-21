# Lua-binary

    Lua-binary build with Visual Studio

### Building Steps
1. Download lua's source code from it's [official website](https://www.lua.org) and then uncompress it or clone from [github website](https://www.github.com/lua/lua).
2. Create a Visual Studio Win32 project named "lua53" with application type setted as Static library and without any other Additional options selected.Then add all of the *.c files as well as *.h files in the source code into "lua53" project except these three files:"lua.c" "luac.c" "lua.hpp", choose your own building types(release or debug,32 bits or 64 bits),klick build button to generate library file named "lua53.lib".
![alt img1][/resource/img1.jpg "project"]
3. Add a new Visual Studio Win32 Console Application to the solution named "lua" with application type setted as Console Application and Additional options setted as Empty project, then add all of the *.c files and *.h files in the source code into it except file "luac.c", right click project "lua" to choose project "lua53" as its Build Dependencies, run it and you will get the "lua.exe".
4. Add a new project like Step 3 named "luac" and add all of the *.c files as well as *.h files into it except file "lua.c", build it to generate the "luac.exe" file.
5. write a test.lua file int the project's release folder just like:

```lua
	print("Hello World!")
```

open the cmd console and enter into "release" folder to run "luac test.lua" then you will see a file named "lua.out" generated.
