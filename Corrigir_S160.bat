@echo off

chcp 65001
echo .....................................................
echo .....................................................
echo ...Script para resolver problemas no Global Protect...
echo .........Criado por Gleriston Sampaio................
echo .....................................................
echo .....................................................
timeout 10 > NUL

IF EXIST %WinDir%\system\MCSiMenu.ocx goto ERRO
 

:MAIN

 

cls
echo Voce vai instalar MCSiMenu.ocx em seu sistema.
echo.
echo ATENÇÃO:
echo
echo
echo Pressione Ctrl+C para Cancelar, Enter para continuar
pause > Nul

 

echo.
echo Copiando arquivo...
copy MCSiMenu.ocx c:\windows\Downloaded Program Files

 


echo.
echo Registrando arquivo...
cd MCSiMenu.ocx c:\windows\Downloaded Program Files
regsvr32/s MCSiMenu.ocx

 

echo.
echo MCSiMenu.ocx foi instalado no seu computador!
echo.
echo Agora, abra o Nordeste Eletrônico
cd "C:\Arquivos de programas\Internet Explorer\"
start iexplorer.exe "http://d001wwv06/gerenciamentoNEE/">
 


goto END

 

:ERRO
echo.
echo.
echo.
echo MCSiMenu.ocx , ja encontra-se instalado no seu computador.





echo.

sleep 10 

goto END

 

:END
