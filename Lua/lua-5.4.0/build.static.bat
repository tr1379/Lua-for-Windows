@echo off
set ver=5.4.0
set op=build_static
rem out lua.exe luac.exe lua.lib 
md %op%
md %op%\include\
cd src
cl /MD /O2 /c  *.c
ren lua.obj lua.o
ren luac.obj luac.o
lib /OUT:lua.lib *.obj
link /OUT:lua.exe lua.o lua.lib
link /OUT:luac.exe luac.o lua.lib
move *.exe ..\%op%\
move *.lib ..\%op%\
move *.dll ..\%op%\
del /q *.obj
del /q *.o
del /q *.exp
copy lua.h ..\%op%\include\
copy lualib.h ..\%op%\include\
copy lauxlib.h ..\%op%\include\
copy lua.hpp ..\%op%\include\
copy luaconf.h    ..\%op%\include\
cd ..\