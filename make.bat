@echo off
set arg1=%1

IF "%arg1%"=="BW" (
  gcc -DBWTESTS main.c ./Bitwise/BWOperations.c -L. ./Bitwise/lib_BWTests.a -o MAIN.EXE
  @echo "Bitwise Build finieshed" 
)

IF "%arg1%"=="PTR" (
	gcc -DPTRTESTS main.c ./Pointers/PTROperations.c -L. ./Pointers/lib_PTRtests.a -o MAIN.EXE
  @echo "Pointer Build finieshed" 
)

IF "%arg1%"=="RUN" (
  @echo "Executing MAIN.EXE"
  MAIN.EXE
)
