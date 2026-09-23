#!/bin/bash
# Drum Hero: levanta un servidor local y abre el juego (Mac / Linux)
cd "$(dirname "$0")"
URL="http://127.0.0.1:8765/"
echo "Iniciando Drum Hero en $URL"
echo "(dejá esta ventana abierta mientras jugás; Ctrl+C para apagar el servidor)"
( sleep 1; open "$URL" 2>/dev/null || xdg-open "$URL" 2>/dev/null ) &
if command -v python3 >/dev/null 2>&1; then python3 -m http.server 8765 --bind 127.0.0.1
elif command -v python >/dev/null 2>&1; then python -m http.server 8765 --bind 127.0.0.1
elif command -v node >/dev/null 2>&1; then node serve.js
else echo "No encontré Python ni Node.js. Instalá Python 3 y volvé a abrir este archivo."; read -r; fi
