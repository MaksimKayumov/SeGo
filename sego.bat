@echo off
set v=%%
echo @echo off>%1.bat
FOR /F "delims=; tokens=1,2,3,4,5" %%a in (%1) do (
	echo :%%a>>%1.bat
	echo set %%b=%%c>>%1.bat
	echo if %v%%%b%v% == false goto %%d>>%1.bat

)
echo Program Compiled.
