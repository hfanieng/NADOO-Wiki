# Merge-Konflikte

---

## Merge-Konflikte nach einem Pull-Request auflösen (Best Practice)

Wenn nach einem erfolgreichen Pull-Request Merge-Konflikte entstehen, solltest Du wie folgt vorgehen:

### 🔄 Schritt 1: Hole die neuesten Änderungen aus dem Haupt-Repository

```bash
git checkout main
git pull origin main
```

Wenn Du mit einem anderen Branch wie `develop` arbeitest, ersetze `main` durch den entsprechenden Namen.

### 🌿 Schritt 2: Wechsle in Deinen Feature-Branch und merge den Haupt-Branch hinein

```bash
git checkout dein-feature-branch
git merge main
```

Nun zeigt Dir Git die betroffenen Dateien mit Konflikten an. Öffne diese im Editor.

### 🛠️ Schritt 3: Bearbeite die Konfliktstellen

Git markiert die Konfliktstellen so:

```text
<<<<<<< HEAD
Dein Code
=======
Code aus dem Main-Branch
>>>>>>> main
```

Entferne alle `<<<<<<<`, `=======`, `>>>>>>>` und entscheide, welche Codezeilen übernommen werden sollen. Kombiniere ggf. beide Änderungen sinnvoll.

### ✅ Schritt 4: Markiere die Konflikte als gelöst

```bash
git add <konfliktdatei>
```

Wiederhole diesen Schritt für alle betroffenen Dateien.

### 💾 Schritt 5: Commit der Auflösung

```bash
git commit -m "Merge-Konflikte gelöst"
```

### ⬆️ Schritt 6: Push in Deinen Branch

```bash
git push origin dein-feature-branch
```

### 📸 Beispielbild

![Merge-Konflikt im VS Code](/images/github_merge_konflikt.png)

Das Bild zeigt, wie ein Merge-Konflikt im Visual Studio Code aussieht. Du kannst hier bequem beide Seiten vergleichen und die gewünschten Änderungen übernehmen.

---

Damit ist Dein Branch bereit für einen erneuten Merge ohne Konflikte.
