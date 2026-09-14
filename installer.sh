#!/bin/bash

# Configuration
SOURCE_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
TARGET_DIR="$HOME/.local/share/nemo/actions"
FILES=(
    "MakeAll@Mahmud.nemo_action"
    "MakeClean@Mahmud.nemo_action"
    "MakeRun@Mahmud.nemo_action"
)

echo "------------------------------------------"
echo "  Cinnamon Nemo Actions Installer"
echo "------------------------------------------"

# 1. Create target directory if it doesn't exist
if [ ! -d "$TARGET_DIR" ]; then
    echo "Creating actions directory: $TARGET_DIR"
    mkdir -p "$TARGET_DIR"
fi

# 2. Copy files
for file in "${FILES[@]}"; do
    source_path="$SOURCE_DIR/$file"
    
    if [ -f "$source_path" ]; then
        echo "Installing: $file ..."
        cp "$source_path" "$TARGET_DIR/"
        # Ensure the file has read permissions for the user
        chmod 644 "$TARGET_DIR/$file"
    else
        echo "WARNING: File not found: $source_path"
    fi
done

# 3. Restart Nemo to apply changes
echo ""
echo "Restarting Nemo file manager..."
nemo -q

echo ""
echo "Installation complete!"
echo "Please right-click a folder to see your new actions."
echo "------------------------------------------"