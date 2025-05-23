# Markdown

Markdown ist eine einfache Auszeichnungssprache, mit der du Texte schnell und leicht lesbar formatieren kannst – zum Beispiel fett, kursiv, Listen, Überschriften oder Code-Blöcke.

Auf GitHub wird Markdown häufig in Dateien wie README.md verwendet, um Projektbeschreibungen, Anleitungen oder Dokumentationen zu erstellen. GitHub rendert Markdown automatisch als schön formatierten Text.

---

## Markdown-Syntax

Willkommen zu meinem Projekt! 🎉

## Was ist das hier?

Dies ist ein Beispiel, das zeigt, wie man Markdown in einer `README.md`-Datei auf GitHub nutzt.

## Grundlagen von Markdown

- `#` = Überschrift (eine Ebene)
- `##` = Unterüberschrift (zwei Ebenen)
- `*kursiv*` oder `_kursiv_` → *kursiv*
- `**fett**` oder `__fett__` → **fett**
- `-` oder `*` → Liste
- `` `Code` `` → Code im Text
- Drei Backticks für Codeblöcke:

```plaintext
print("Hallo Welt")
```

## Tipp für GitHub

Wenn Du deine Datei `README.md` nennst und ins Projektverzeichnis legst, wird sie auf der Startseite Deines Repositories automatisch angezeigt.

---

## GitHub flavored Markdown

GitHub hat einige Erweiterungen zu Markdown hinzugefügt, die dir helfen, Deine Dokumentation noch besser zu gestalten. Hier sind einige Beispiele:
### `<details>` und  `<summary>`

🔎 Was sind `<details>` und `<summary>`?

`<details>` ist ein HTML-Tag, mit dem du Inhalte ausklappbar machen kannst – ähnlich wie ein Akkordeon.
`<summary>` definiert die Überschrift, auf die geklickt wird, um den versteckten Inhalt anzuzeigen.

---

💡 Warum ist das nützlich?

- Du kannst lange Inhalte wie To-do-Listen, FAQs, Begründungen, Screenshots oder Changelogs einklappen.
- Das macht Issues, Pull Requests oder Wikis übersichtlicher und strukturierter.
- Wird von GitHub Flavored Markdown vollständig unterstützt (aber nicht von allen Markdown-Editoren!).

---

🧪 Beispiel:

```plaintext
<details>
  <summary>Was ist das Launchpad?</summary>

  Das Launchpad ist unser zentrales Dashboard zur Verwaltung von Onboarding, Tokens und internen Tools.  
  Hier finden neue Mitarbeitende alle nötigen Informationen und Zugangsdaten.

</details>
```

➡️ Ergebnis:

<details>
  <summary>Was ist das Launchpad?</summary>

Das Launchpad ist unser zentrales Dashboard zur Verwaltung von Onboarding, Tokens und internen Tools.
Hier finden neue Mitarbeitende alle nötigen Informationen und Zugangsdaten.

</details>

---

[Mehr dazu (englisch)](https://github.github.com/gfm/#what-is-github-flavored-markdown-)

---

Viel Spaß beim Markdown-Schreiben! 😊
