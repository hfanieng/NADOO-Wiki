# Struktur für MDS-Projekte

Ja, absolut sinnvoll! Bei 200+ Tags und mehreren Aufgaben pro Thema ist es besser, Inhalte und Aufgaben strikt zu trennen – sowohl organisatorisch als auch technisch. Damit wird dein Wiki:

- übersichtlich und skalierbar
- pflegeleicht (je Thema 1 Ort)
- leicht automatisierbar (z. B. Suche, Aufgabenverlinkung)

---

## Empfohlene Projektstruktur

```plaintext
/docs
├── 09-katalog
│   ├── ap1
│   │   ├── projektmanagement
│   │   │   └── README.mdx
│   │   ├── wirtschaftlichkeit
│   │   │   └── README.mdx
│   │   └── ...
│   ├── ap2
│   │   ├── versionsverwaltung
│   │   │   └── README.mdx
│   │   ├── programmierung
│   │   │   └── README.mdx
│   │   └── ...
│   └── bwl-recht-sicherheit
│       ├── arbeitsrecht
│       │   └── README.mdx
│       └── datenschutz
│           └── README.mdx

├── 10-aufgaben
│   ├── ap1
│   │   ├── projektmanagement
│   │   │   ├── aufgabe-1.mdx
│   │   │   ├── aufgabe-2.mdx
│   │   │   └── aufgabe-3.mdx
│   ├── ap2
│   │   ├── versionsverwaltung
│   │   │   ├── aufgabe-1.mdx
│   │   │   ├── aufgabe-2.mdx
│   │   │   └── aufgabe-3.mdx
│   └── bwl-recht-sicherheit
│       └── datenschutz
│           ├── aufgabe-1.mdx
│           ├── aufgabe-2.mdx
│           └── aufgabe-3.mdx
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
