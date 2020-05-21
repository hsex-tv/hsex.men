@echo off
color 0F
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:::::::::::::::::::::::ADMIN POWER(start)::::::::::::::::::::::
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
>nul 2>&1 "%SYSTEMROOT%\system32\cacls.exe" "%SYSTEMROOT%\system32\config\system"
if '%errorlevel%' NEQ '0' (
goto UACPrompt
) else ( goto gotAdmin )
:UACPrompt
echo Set UAC = CreateObject^("Shell.Application"^) > "%temp%\getadmin.vbs"
echo UAC.ShellExecute "%~s0", "", "", "runas", 1 >> "%temp%\getadmin.vbs"
"%temp%\getadmin.vbs"
exit /B
:gotAdmin
if exist "%temp%\getadmin.vbs" ( del "%temp%\getadmin.vbs" )
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
::::::::::::::::::::::::ADMIN POWER(end):::::::::::::::::::::::
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
findstr "104.31.66.212" "%windir%\system32\drivers\etc\hosts">nul
if %errorlevel% NEQ 0 (
@attrib -r "%windir%\system32\drivers\etc\hosts"
@echo 104.31.66.212	hsex.men >>"%windir%\system32\drivers\etc\hosts" 
@echo 104.31.67.212	hsex.men >>"%windir%\system32\drivers\etc\hosts"
@echo 104.31.66.212	v.hsex.men >>"%windir%\system32\drivers\etc\hosts"
@echo 104.31.67.212	v.hsex.men >>"%windir%\system32\drivers\etc\hosts"
@attrib +r "%windir%\system32\drivers\etc\hosts"
)

echo 写入成功...5秒后退出窗口
choice /t 5 /d y /n >nul
::pause
exit