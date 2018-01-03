@echo off & setlocal
set batchPath=%~dp0
powershell.exe -noexit -file "%batchPath%calsize.ps1" "MY-PC"
