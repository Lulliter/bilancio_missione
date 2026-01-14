#!/bin/bash

# Render + Copy files to OneDrive ----------------------------------------------

# 1) Set source and destination folders ----------------------------------------
SOURCE="/Users/luisamimmi/Github/bilancio_missione"
DEST="/Users/luisamimmi/Library/CloudStorage/OneDrive-FondazioneCassadiRisparmiodiParmaeMontediCreditosuPegnodiBusseto/Input_bil_missione_2025"
mkdir -p "$DEST"

# 2) Render index.qmd to both formats ------------------------------------------
quarto render index.qmd --to html
quarto render index.qmd --to docx

# 3.a) Copy DOCX file ----------------------------------------------------------
cp -v "$SOURCE/index.docx" "$DEST/2025_bil-missione.docx"

# 3.b) Copy data folders -------------------------------------------------------
cp -Rv "$SOURCE/data_out" "$DEST/"
cp -Rv "$SOURCE/data_in" "$DEST/"


# Make it executable (run only once) -------------------------------------------
# chmod +x /Users/luisamimmi/Github/bilancio_missione/_render_copy2onedrive.sh
# ------------------------------------------------------------------------------
# Then 
# ./_render_copy2onedrive.sh
# -------------------------------------------------------------------------------