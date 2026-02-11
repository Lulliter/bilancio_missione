# Input per Bilancio di missione 2025


Dati di input per bilancio di missione 2025


## Aggiornamento 

Progetto creato a Genaio/Febbraio 2026. 

La struttura è pensata per restituire sia un documento sintetico che i dati di input e gli artefatti di output. Per questo le 2 cartelle sono strutturate con le stesse sotto cartelle. 

+ `data_in/` per i dati di input (es. dati di bilancio, dati di attività, ecc.) e
+ `data_out/` per i dati di output (es. grafici, tabelle, ecc.) che vengono poi copiati su OneDrive.


## Workflow minimale

1. Il file `index.qmd` è il file principale che contiene il codice per generare sia l'output HTML che il documento Word. 
  + Qui invece che da `docs/` GH Pages pubblica direttamente da root, dove c'è solo il file `index.qmd`, che viene 1) pubblicato come `html` e 2) anche salvato in versione `2025_bil-missione.docx` su OneDrive.
  
2. Il file `_render_copy2onedrive.sh` è uno script bash che esegue `index.qmd` per generare sia `index.html` che `2025_bil-missione.docx`, e poi copia questi file (insieme a `data_out/` e `data_in/`) nella cartella condivisa OneDrive.


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
