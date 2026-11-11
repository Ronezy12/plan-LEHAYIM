#!/bin/sh
# Enveloppe une page source (format artifact) en document HTML autonome.
# Usage : ./build.sh source.html sortie.html [préfixe-chemin] [pwa]
SRC="$1"; OUT="$2"; PRE="${3:-}"; PWA="${4:-}"
EXTRA=""
[ "$PWA" = "pwa" ] && EXTRA='<link rel="manifest" href="manifest.webmanifest">\n<meta name="theme-color" content="#141416">\n<link rel="apple-touch-icon" href="assets/icon-192.png">\n<meta name="apple-mobile-web-app-capable" content="yes">\n<meta name="apple-mobile-web-app-title" content="DJ RON">\n'
{ printf '<!doctype html>\n<html lang="fr">\n<head>\n<meta charset="utf-8">\n<meta name="viewport" content="width=device-width,initial-scale=1,viewport-fit=cover">\n<link rel="icon" href="%sassets/icon-192.png">\n' "$PRE"; printf "$EXTRA"; printf '<style>:root{padding:env(safe-area-inset-top,0px) 0 env(safe-area-inset-bottom,0px)}body{margin:0;font:14px system-ui,sans-serif}img{max-width:100%%}[hidden]{display:none!important}</style>\n</head>\n<body>\n'; cat "$SRC"; printf '\n</body>\n</html>\n'; } > "$OUT"
