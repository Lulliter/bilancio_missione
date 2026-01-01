#!/bin/bash

# Copy files to OneDrive - Run each line manually

# Set source and destination
SOURCE="/Users/luisamimmi/Github/bilancio_missione"
DEST="/Users/luisamimmi/Library/CloudStorage/OneDrive-FondazioneCassadiRisparmiodiParmaeMontediCreditosuPegnodiBusseto/Input_bil_missione_2025"

# Create destination folder
mkdir -p "$DEST"

# Copy DOCX file
cp -v "$SOURCE/2025-12-22-bil-miss.docx" "$DEST/"

# Copy data folders
cp -Rv "$SOURCE/data_out" "$DEST/"
cp -Rv "$SOURCE/data_in" "$DEST/"

# Make it executable (run only once)
#chmod +x /Users/luisamimmi/Github/bilancio_missione/_copy2onedrive.sh