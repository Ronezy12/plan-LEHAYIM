#!/bin/sh
# Régénère index.html depuis la page source (artifact) en document autonome
SRC="${1:-page.html}"
{ printf '<!doctype html>\n<html lang="fr">\n<head>\n<meta charset="utf-8">\n<meta name="viewport" content="width=device-width,initial-scale=1,viewport-fit=cover">\n<meta name="description" content="Plan LEHAYIM : implantation son, lumière et booth DJ du Bal du Nouvel An, en 3D, plan 2D et vue de face.">\n<link rel="icon" href="assets/logo-lehayim.jpg">\n<style>:root{padding:env(safe-area-inset-top,0px) 0 env(safe-area-inset-bottom,0px)}body{margin:0;font:14px system-ui,sans-serif}img{max-width:100%%}[hidden]{display:none!important}</style>\n</head>\n<body>\n'; cat "$SRC"; printf '\n</body>\n</html>\n'; } > index.html
