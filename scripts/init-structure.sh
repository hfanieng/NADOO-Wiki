


#!/bin/bash

echo "📁 Erzeuge Verzeichnisstruktur und README.mdx-Dateien für Katalog und Aufgaben"

# Struktur für Themen (Katalog)
declare -A katalog=(
  ["ap1"]="projektmanagement wirtschaftlichkeit"
  ["ap2"]="versionsverwaltung programmierung"
  ["bwl-recht-sicherheit"]="arbeitsrecht datenschutz"
)

for bereich in "${!katalog[@]}"; do
  for thema in ${katalog[$bereich]}; do
    pfad="docs/09-katalog/$bereich/$thema"
    mkdir -p "$pfad"
    cat <<EOF > "$pfad/README.mdx"
---
title: "${thema^}"
ap: "$bereich"
tags: [$thema]
draft: true
---

## Thema: ${thema^}

> Diese Datei dient als Ausgangspunkt für Inhalte zum Thema **$thema** im Bereich **$bereich**.

EOF
  done
done

# Struktur für Aufgaben
for bereich in "${!katalog[@]}"; do
  for thema in ${katalog[$bereich]}; do
    aufgabenpfad="docs/10-aufgaben/$bereich/$thema"
    mkdir -p "$aufgabenpfad"
    for i in {1..3}; do
      cat <<EOF > "$aufgabenpfad/aufgabe-$i.mdx"
---
title: "Aufgabe $i zu ${thema^}"
ap: "$bereich"
tags: [$thema]
difficulty: "mittel"
draft: true
---

## Aufgabe $i: ${thema^}

*Beschreibung der Aufgabe folgt …*

EOF
    done
  done
done

echo "✅ Struktur und Beispiel-Dateien wurden erstellt."