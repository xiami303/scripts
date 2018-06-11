setlocal enabledelayedexpansion

set build=0
for %%a in (%*) do (
	REM below check the parameters should start with -, if not goto eof
	set val=%%a
	if not "!val:~0,1!" == "-" (
		echo ERROR, you need to pass in parameters with format "-t" "-it"
		goto :eof
	) else ( 
		set build=1
	)
)

if %build%==1 (
	echo will start the build from here ~~
)

pause
