#!/usr/bin/env bash
set -euo pipefail

echo "📁 Erzeuge Verzeichnisse und .mdx-Dateien…"

BEREICHE=("ap1" "ap2" "bwl-recht-sicherheit")

THEMEN_ap1=("projektmanagement" "wirtschaftlichkeit")
THEMEN_ap2=("kundenberatung" "entwicklung-it-loesungen" "qualitaetssicherung" "it-sicherheit" "betrieb-it-systeme" "speicherloesungen" "softwareloesungen" "kundenspezifische-anwendungen" "softwarequalitaet" "arbeitsrecht" "ausbildungsbetrieb" "arbeitsschutz" "umweltschutz" "digitales-zusammenarbeiten")
THEMEN_bwl_recht_sicherheit=("arbeitsrecht" "datenschutz")

for bereich in "${BEREICHE[@]}"; do
  varname="THEMEN_${bereich//-/_}"
  eval "themen=(\"\${${varname}[@]}\")"

  for thema in "${themen[@]}"; do
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

echo "✅ Struktur wurde erstellt."