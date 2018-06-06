:: 循环100次，打印-\|/中的一个

@echo off
setlocal ENABLEDELAYEDEXPANSION
set "progress=-\|/"
for /l %%i in (0, 1, 100) do (
  set /a p=%%i %% 4
  cls
  call:fun !p!
)
>nul pause
exit

:fun
  set tmp=%1
  set "o=!progress:~%tmp%,1!"
  echo Print: ^%o%
goto:eof
