# Struktur für MDS-Projekte

Ja, absolut sinnvoll! Bei 200+ Tags und mehreren Aufgaben pro Thema ist es besser, Inhalte und Aufgaben strikt zu trennen – sowohl organisatorisch als auch technisch. Damit wird dein Wiki:

- übersichtlich und skalierbar
- pflegeleicht (je Thema 1 Ort)
- leicht automatisierbar (z. B. Suche, Aufgabenverlinkung)

---

## Empfohlene Projektstruktur

Du kannst diese Struktur direkt im VSCode-Terminal mit `bash` anlegen:

```bash
# AP1
mkdir -p docs/09-katalog/ap1/projektmanagement
mkdir -p docs/09-katalog/ap1/wirtschaftlichkeit

# AP2 - Teil 1
mkdir -p docs/09-katalog/ap2/01-informieren-und-beraten/kundenbeziehung
mkdir -p docs/09-katalog/ap2/01-informieren-und-beraten/praesentation
mkdir -p docs/09-katalog/ap2/02-it-loesungen/fehleranalyse
mkdir -p docs/09-katalog/ap2/02-it-loesungen/algorithmen
mkdir -p docs/09-katalog/ap2/02-it-loesungen/datenbanken
mkdir -p docs/09-katalog/ap2/03-qualitaetssicherung/qualitaetslenkung
mkdir -p docs/09-katalog/ap2/03-qualitaetssicherung/zielerreichung

# AP2 - Teil 2
mkdir -p docs/09-katalog/ap2/04-it-sicherheit/schaedenspotenziale
mkdir -p docs/09-katalog/ap2/04-it-sicherheit/praevention
mkdir -p docs/09-katalog/ap2/04-it-sicherheit/beratung
mkdir -p docs/09-katalog/ap2/04-it-sicherheit/tools
mkdir -p docs/09-katalog/ap2/04-it-sicherheit/wirksamkeit

# AP2 - Teil 3
mkdir -p docs/09-katalog/ap2/05-it-systeme/netzwerke
mkdir -p docs/09-katalog/ap2/05-it-systeme/kommunikation
mkdir -p docs/09-katalog/ap2/05-it-systeme/monitoring
mkdir -p docs/09-katalog/ap2/06-speicherloesungen/tom
mkdir -p docs/09-katalog/ap2/06-speicherloesungen/absicherung
mkdir -p docs/09-katalog/ap2/06-speicherloesungen/protokolle
mkdir -p docs/09-katalog/ap2/07-softwareentwicklung/anforderungen
mkdir -p docs/09-katalog/ap2/07-softwareentwicklung/algorithmen
mkdir -p docs/09-katalog/ap2/07-softwareentwicklung/tests
mkdir -p docs/09-katalog/ap2/08-softwareanwendungen/konzepte
mkdir -p docs/09-katalog/ap2/08-softwareanwendungen/diagramme
mkdir -p docs/09-katalog/ap2/08-softwareanwendungen/oberflaeche
mkdir -p docs/09-katalog/ap2/09-softwarequalitaet/datenschutz
mkdir -p docs/09-katalog/ap2/09-softwarequalitaet/testverfahren
mkdir -p docs/09-katalog/ap2/09-softwarequalitaet/versionsverwaltung

mkdir -p docs/09-katalog/bwl-recht-sicherheit/arbeitsrecht
mkdir -p docs/09-katalog/bwl-recht-sicherheit/datenschutz

mkdir -p docs/10-aufgaben/ap1/projektmanagement
mkdir -p docs/10-aufgaben/ap2/versionsverwaltung
mkdir -p docs/10-aufgaben/bwl-recht-sicherheit/datenschutz
```

Alternativ: Lege dir ein Initialisierungsskript unter `scripts/init-structure.sh` an:

```bash
#!/bin/bash
for base in ap1 ap2 bwl-recht-sicherheit; do
  mkdir -p docs/09-katalog/$base
  mkdir -p docs/10-aufgaben/$base
done
```

Danach einfach ausführbar mit:

```bash
bash scripts/init-structure.sh
```

---

## 📋 Vorteile

| Punkt | Erklärung |
| :--- | :--- |
| Klar getrennt | Theorie (/09-katalog) und Praxis (/10-aufgaben) |
| Skalierbar | Du kannst pro Tag/Thema beliebig viele Aufgaben oder Varianten anlegen |
| Wiederverwendbar | Aufgaben lassen sich unabhängig versionieren oder referenzieren |
| Tagbasiert | Du kannst die Aufgaben mit frontmatter automatisch auf Thema mappen |
| Filterbar & sortierbar | Z. B. via difficulty, tag, ap, category etc. |

---

## 🧪 Beispiel aufgabe-1.mdx mit Frontmatter

```mdx
---
title: "Versionskontrolle mit Git – Branching"
relatedTo: "versionsverwaltung"
ap: "ap2"
tags: [git, branching, versionierung]
difficulty: "mittel"
aufgabentyp: "verständnisfrage"
---
```

---

## 👉 Empfehlung

- Führe /09-katalog/ für alle Wissensinhalte nach Prüfungskatalog
- Führe /10-aufgaben/ für prüfungsnahe Aufgaben je Thema.
- Nutze ein zentrales Mapping via relatedTo in der frontmatter, um automatisiert Aufgaben im Thema anzuzeigen oder zu verlinken.
