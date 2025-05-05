Perfekt! Dann bauen wir das System so, dass GitHub Issues automatisch in eine Ordnerstruktur einsortiert werden – basierend auf Labels, z. B.:

📌 Label:

ap1/01_planen_vorbereiten_durchfuehren/01_projektmanagement_methoden/01_kritischer_weg/03_aufgabe

➡️ wird zu:

01_ap1_einrichten_eines_it_gestuetzten_arbeitsplatzes/01_planen_vorbereiten_durchfuehren/01_projektmanagement_methoden/01_kritischer_weg/03_aufgabe/README.md



⸻

🛠️ GitHub Action: Issue mit Label automatisch in passende Struktur schreiben

📁 .github/workflows/export-label-issue.yml

name: 🏷️ Exportiere Issue nach Labelstruktur

on:
  issues:
    types: [opened]

jobs:
  exportieren:
    runs-on: ubuntu-latest
    permissions:
      contents: write
    steps:
      - name: 📥 Repository klonen
        uses: actions/checkout@v4

      - name: 🧠 Label-basierten Pfad ermitteln & Datei schreiben
        run: |
          ISSUE_TITLE="${{ github.event.issue.title }}"
          ISSUE_NUMBER=${{ github.event.issue.number }}"
          ISSUE_BODY="${{ github.event.issue.body }}"
          ISSUE_LABELS=$(echo '${{ toJson(github.event.issue.labels) }}' | jq -r '.[].name')

          for LABEL in $ISSUE_LABELS; do
            # Nur Labels mit "/" als Pfadangabe verwenden
            if [[ "$LABEL" == *"/"* ]]; then
              RELATIVE_PATH="$LABEL"
              DEST_DIR="01_ap1_einrichten_eines_it_gestuetzten_arbeitsplatzes/$RELATIVE_PATH"
              
              mkdir -p "$DEST_DIR"

              # Ziel-Dateiname: README.md
              FILE="$DEST_DIR/README.md"

              echo "# $ISSUE_TITLE" > "$FILE"
              echo "" >> "$FILE"
              echo "**Issue #$ISSUE_NUMBER**" >> "$FILE"
              echo "" >> "$FILE"
              echo "$ISSUE_BODY" >> "$FILE"
            fi
          done

      - name: ✅ Änderungen committen und pushen
        run: |
          git config user.name "github-actions"
          git config user.email "github-actions@github.com"
          git add .
          git commit -m "📁 Issue #${{ github.event.issue.number }} nach Label einsortiert"
          git push



⸻

🏷️ Label-Konvention (für euch im Team):

Verwendet Pfadlabels im Format:

ap1/01_planen_vorbereiten_durchfuehren/01_projektmanagement_methoden/01_kritischer_weg/03_aufgabe

➡️ Das ergibt:

01_ap1_einrichten_eines_it_gestuetzten_arbeitsplatzes/
└── 01_planen_vorbereiten_durchfuehren/
    └── 01_projektmanagement_methoden/
        └── 01_kritischer_weg/
            └── 03_aufgabe/
                └── README.md



⸻

💡 Bonus-Tipp (optional)

Du kannst zusätzlich eine eigene Label-Farbe + Kategorie für Pfadlabels definieren, z. B.:

Label-Name	Beschreibung	Farbe
pfad/...	Pfad-Zuweisung für automatische Sortierung	#1D76DB

Damit kannst du im Workflow gezielt nur pfad/…-Labels abfragen, wenn du keine Konflikte mit anderen Labels willst.

⸻

Möchtest du zusätzlich noch eine Version, bei der mehrere Issues als Einträge untereinander im selben README.md zusammengeführt werden?