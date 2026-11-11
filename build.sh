#!/bin/sh
# Enveloppe une page source (format artifact) en document HTML autonome.
# Usage : ./build.sh source.html sortie.html [préfixe-chemin-icône]
SRC="$1"; OUT="$2"; ICON="${3:-}assets/logo-lehayim.jpg"
{ printf '<!doctype html>\n<html lang="fr">\n<head>\n<meta charset="utf-8">\n<meta name="viewport" content="width=device-width,initial-scale=1,viewport-fit=cover">\n<link rel="icon" href="%s">\n<style>:root{padding:env(safe-area-inset-top,0px) 0 env(safe-area-inset-bottom,0px)}body{margin:0;font:14px system-ui,sans-serif}img{max-width:100%%}[hidden]{display:none!important}</style>\n</head>\n<body>\n' "$ICON"; cat "$SRC"; printf '\n</body>\n</html>\n'; } > "$OUT"
