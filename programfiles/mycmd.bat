@echo off
mode 80,30
title MyCmd
color 0d
echo /-----------------------------------/
echo / para obter ajuda digite "?"       /
echo / para sair digite .sair            /
echo /-----------------------------------/
: chatloop
set /p input=#^> 
if %input%==.sair exit 
if %input%==? start comands.txt
if %input%==.github start https://www.github.com
if %input%==.cmd start 
if %input%==.calc start calc 
if %input%==.links start links.py 
if %input%==.cls cls 
if %input%==.zoom_in mode 100,40
if %input%==.zoom_out mode 60,20
if %input%==.sair* exit & start 1voice.vbs
if %input%==?* start comands.txt & start 2voice.vbs
if %input%==.github* start https://www.github.com & start 3voice.vbs
if %input%==.cmd* start & start 4voice.vbs
if %input%==.calc* start calc & start 5voice.vbs
if %input%==.links* start links.py & start 6voice.vbs
if %input%==.cls* cls & start 7voice.vbs
if exist %input%=="" (
goto chatloop
) else (
goto in2
)
:in2
start error.vbs & echo error:_404_this_comand_dont_exists & start errorpopup.vbs
goto chatloop
end