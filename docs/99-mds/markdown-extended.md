# Markdown Extended

Ja, .mdx mit Frontmatter ist eine sehr gute Alternative – besonders wenn du strukturierte Inhalte, Tags und Filterbarkeit brauchst, ohne auf GitHub-Wiki oder Labels zurückzugreifen.

---

✅ Vorteile von .mdx mit Frontmatter

**Vorteil - Beschreibung ***

🏷 Tags & Metadaten - Du kannst Tags, Kategorien, Autoren u.v.m. in der Frontmatter definieren (YAML-Block oben).
🧠 Filterbar & auslesbar - Tools wie Astro, Next.js, Docusaurus oder ein Custom Parser können diese Frontmatter maschinell auswerten.
🔍 Volle Kontrolle - Keine GitHub-Suchlimitierung, du baust dein eigenes System für Suche, Filter, Sortierung etc.
🌐 Kompatibel mit Static Site Generators -Perfekt kombinierbar mit Astro, Eleventy, Hugo oder Next.js für eine moderne Dokumentation.
📄 MDX = Markdown + Komponenten: Du kannst React-Komponenten einbetten und z. B. TagBadge, DocWarning etc. verwenden.
🔄 Versionierbar - Du kannst die .mdx-Dateien in deinem Git-Repo versionieren und so Änderungen nachverfolgen

---

🧪 Beispiel .mdx mit Frontmatter

```mdx
---
title: "Code-Review bei GitHub"
tags: [github, code-review, workflow]
author: "Heiko"
date: "2025-05-07"
---
```

```tsx
import TagBadge from '@/components/TagBadge'
```

## Code-Review

```tsx
<TagBadge tag="code-review" />
```

Ein Code-Review ist die Überprüfung von Code durch andere Teammitglieder...

---

🔧 Was du dafür brauchst

- Ein Build-System (z. B. Astro, Docusaurus, Next.js)
- Frontmatter-Parser (z. B. gray-matter, bei Astro integriert)
- Tag-Komponente oder Seitenlogik, um nach Tags zu filtern oder aufzulisten

---

📌 Fazit

.mdx mit Frontmatter ist eine professionelle, zukunftssichere Lösung, wenn:

- du die Inhalte versionieren möchtest,
- GitHub-intern eingeschränkt suchbar ist,
- du langfristig eine Doku-Plattform aufbauen willst, z. B. mit Astro oder Next.js.
