@echo off
rem out lua.exe luac.exe lua.lib lua.dll
set ver=5.4.0
set op=build_dll
md %op%
md %op%\include\
cd src
cl /MD /O2 /c /DLUA_BUILD_AS_DLL *.c
ren lua.obj lua.o
ren luac.obj luac.o
link /DLL /IMPLIB:lua.lib /OUT:lua.dll *.obj 
link /OUT:lua.exe lua.o lua.lib
link /OUT:luac.exe luac.o *.obj
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