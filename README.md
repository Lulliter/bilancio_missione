# Input per Bilancio di missione 2025


Dati di input per bilancio di missione 2025


## Aggiornamento 

Progetto creato a Dicembre 2025 


## Workflow minimale

Qui invece che da `docs/` GH Pages pubblica direttamente da root, dove c'è solo il file `index.qmd`, che viene 1) pubblicato come `html` e 2) anche salvato in versione `2025_bil-missione.docx` su OneDrive.

```bash
# Esegue index.qmd in HTML + DOCX e copia su OneDrive
./_render_copy2onedrive.sh

# Commit e push su GitHub per GitHub Pages
git add index.html
git commit -m "Aggiorna report"
git push
```

## Output

- **index.html** - Pubblicato via GitHub Pages su: https://[username].github.io/bilancio_missione/
- **2025_bil-missione.docx** - Copiato nella cartella condivisa OneDrive
- **data_out/** e **data_in/** - Copiati nella cartella condivisa OneDrive
