@echo off
set "currentDir=%~dp0"

for /f "delims=: tokens=1,2" %%G in (%currentDir%settings.cfg) do set %%G=%currentDir%%%H

FOR %%s IN (%menuDir%*.lnk) DO del "%%s"

FOR /D %%s IN (%appDir%\*) DO (
    IF EXIST %%s\taskMenu.cfg (
        for /f "delims=: tokens=1,2" %%I in (%%s\taskMenu.cfg) do (
            %currentDir%nircmd.exe shortcut "%%s\%%J" "%menuDir%" "%%I" 
        )
    )
)
