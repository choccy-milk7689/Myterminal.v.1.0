@echo off
::configurações da tela
mode 80,30
title MyTerminal
color 0d
::fim da configurações de tela
::interface
echo /-----------------------------------/
echo / para obter ajuda digite "?"       /
echo / para sair digite .sair            /
echo / para trocar de cor use .color_ch  /
echo /-----------------------------------/
::fim da interface
: chatloop
set /p input=#^> 
::começo dos comandos com voz
if %input%==.sair exit 
if %input%==? start comands.txt
if %input%==.github start https://www.github.com
if %input%==.cmd start 
if %input%==.calc start calc 
if %input%==.links start links.py 
if %input%==.cls cls 
if %input%==.ipconfig ipconfig
::fim dos comandos com voz 
::inicio dos comandos sem voz PS todo comando sem voz deve ser colocado nesse espaço
if %input%==.zoom_in mode 100,40
if %input%==.zoom_out mode 60,20
if %input%==.zoom_n mode 80,30
if %input%==.color_ch color a
if %input%==.color_n color 0d
::fim dos comandos se versão com voz
::meio entre comandos de voz e comandos de texto
::comandos com voz
if %input%==.sair* exit & start 1voice.vbs
if %input%==?* start comands.txt & start 2voice.vbs
if %input%==.github* start https://www.github.com & start 3voice.vbs
if %input%==.cmd* start & start 4voice.vbs
if %input%==.calc* start calc & start 5voice.vbs
if %input%==.links* start links.py & start 6voice.vbs
if %input%==.cls* cls & start 7voice.vbs
if %input%==.ipconfig* ipconfig & start 8voice.vbs
::fim dos comandos com voz
::sistema de verificação para se a palavra ou comando existe se quiser mudar vá em mod.txt e copie e cole de acordo com sua preferencia.
if exist %input%=="" (
goto chatloop
) else (
goto in2
)
:in2
start error.vbs & echo error:_404_this_comand_dont_exist & start errorpopup.vbs
goto chatloop
end