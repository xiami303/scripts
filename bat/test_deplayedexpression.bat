setlocal enabledelayedexpansion

for %%a in (%*) do (
	set val=%%a
	echo !val!
	echo !val:~0,2!
)

pause
