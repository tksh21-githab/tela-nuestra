#!/bin/bash
# Obsidianのpublicacionesからコピーしてpush

SRC="$HOME/Library/Mobile Documents/iCloud~md~obsidian/Documents/Notas/*Personal/tela nuestra/publicaciones/"
DEST="$HOME/Documents/github/tela-nuestra/content/publicaciones/"

mkdir -p "$DEST"
rsync -av --delete "$SRC" "$DEST"

cd "$HOME/Documents/github/tela-nuestra"
git add .
git commit -m "update: $(date '+%Y-%m-%d %H:%M')"
git push
