@echo off
title Drum Hero
cd /d "%~dp0"
echo Iniciando Drum Hero en http://127.0.0.1:8765/
echo (dejá esta ventana abierta mientras jugás; cerrala para apagar el servidor)
echo.
start "" "http://127.0.0.1:8765/"
where py >nul 2>nul && (py -3 -m http.server 8765 --bind 127.0.0.1 & goto :fin)
where python >nul 2>nul && (python -m http.server 8765 --bind 127.0.0.1 & goto :fin)
where node >nul 2>nul && (node serve.js & goto :fin)
echo No encontre Python ni Node.js para levantar el servidor local.
echo Instala Python desde https://www.python.org/downloads/ (marcando "Add to PATH") y volve a abrir este archivo.
pause
:fin
