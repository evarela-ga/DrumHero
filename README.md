# Drum Hero

Juego para aprender batería sobre canciones reales, estilo Guitar Hero: elegís un tema, suena desde YouTube o Spotify, y las notas caen por pista indicando qué tocar (hi-hat, caja, toms, crash y bombo). Con micrófono detecta el momento de cada golpe y puntúa; también se puede jugar con teclado o pads táctiles, o usarlo como partitura animada.

Es un solo archivo (`index.html`), sin dependencias ni backend. El progreso (XP, estrellas, calibraciones, temas propios) queda en el navegador.

## Publicar en GitHub Pages

1. Subí el repo a GitHub.
2. Settings → Pages → Source: "Deploy from a branch", rama `main`, carpeta `/ (root)`.
3. En un minuto queda en `https://TU-USUARIO.github.io/NOMBRE-DEL-REPO/`.

Servirlo por https es necesario: abierto directamente desde el disco (`file://`) YouTube rechaza el reproductor, y ni el micrófono ni Spotify funcionan.

## Correrlo local sin publicar

Doble clic en `Iniciar DrumHero.bat` (Windows) o `iniciar-drumhero.command` (Mac/Linux). Levanta un servidor en `http://127.0.0.1:8765/` con Python (o Node con `serve.js`) y abre el navegador.

## YouTube

Funciona sin configurar nada. Cada tema tiene "Cambiar video": si un video no se reproduce porque el canal bloquea el embebido, elegí otro (audio oficial, lyric video o en vivo suelen andar). Opcionalmente, con una clave gratuita de la YouTube Data API v3 el buscador muestra resultados dentro del juego filtrando solo videos reproducibles.

## Spotify (Premium)

1. Entrá a https://developer.spotify.com/dashboard y creá una app.
2. En "Redirect URIs" agregá la dirección exacta del juego (el juego te la muestra en Fuente del audio → Spotify → Configurar, con botón para copiar). Para GitHub Pages es `https://TU-USUARIO.github.io/NOMBRE-DEL-REPO/`; en local, `http://127.0.0.1:8765/`.
3. Marcá "Web Playback SDK" y "Web API", copiá el Client ID y pegalo en el juego.

Después iniciás sesión una vez, y desde cualquier tema podés buscar y elegir la canción en Spotify. El audio se reproduce dentro del juego (aparece como dispositivo "Drum Hero" en Spotify). Con Spotify no se puede bajar la velocidad; la práctica lenta queda para YouTube.

## Cómo se usa

1. Elegí un tema o agregá uno (link de YouTube o canción de Spotify, BPM y, si querés, estructura por secciones).
2. Calibrá: reproducí la canción y apretá "Marcar el 1" en el primer golpe de batería. Se guarda por tema.
3. Elegí modo (micrófono / teclado / guía), dificultad (Fácil: bombo y caja; Normal: groove completo; Pro: con fills) y velocidad.
4. Tocá. Puntos por golpe a tiempo, combos, 1 a 3 estrellas, XP, niveles, racha diaria, logros y desafío del día.

Los charts de la biblioteca son versiones simplificadas para practicar, no transcripciones exactas.
