@echo off
%1 start "" mshta vbscript:CreateObject("Shell.Application").ShellExecute("cmd.exe","/c ""%~s0"" ::","","runas",1)(window.close)&&exit

@findstr "104.31.66.212" "%windir%\system32\drivers\etc\hosts">nul
if %errorlevel% NEQ 0 (
@attrib -r "%windir%\system32\drivers\etc\hosts"
@echo 104.31.66.212	hsex.men >>"%windir%\system32\drivers\etc\hosts" 
@echo 104.31.67.212	hsex.men >>"%windir%\system32\drivers\etc\hosts"
@echo 104.31.66.212	v.hsex.men >>"%windir%\system32\drivers\etc\hosts"
@echo 104.31.67.212	v.hsex.men >>"%windir%\system32\drivers\etc\hosts"
@attrib +r "%windir%\system32\drivers\etc\hosts"
)

echo д��ɹ�...3������վ��
choice /t 3 /d y /n >nul
explorer.exe open=https://hsex.men
::pause
exit