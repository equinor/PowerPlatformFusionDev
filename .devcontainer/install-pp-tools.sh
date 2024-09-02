#!/bin/bash
# Exit immediately if a command exits with a non-zero status.
set -e

# Project directory
WORKSPACE_DIR="/workspaces/PowerPlatformFusionDev"

git config --global --add safe.directory $WORKSPACE_DIR

# Toolkit repository
TOOLS_REPOSITORY="equinor/powerplatform"

# Define the location where the tools will be installed temporarily
TEMP_TOOLS_DIR="$WORKSPACE_DIR/tools-install-tmp"

if [ -d $TEMP_TOOLS_DIR ]; then
    rm -rf "$TEMP_TOOLS_DIR"
fi

# Clone the specific 'tools' folder from the '$TOOLS_REPOSITORY' repository
echo "Cloning 'tools' folder from the '$TOOLS_REPOSITORY' repository..."
git clone --filter=blob:none --no-checkout https://github.com/$TOOLS_REPOSITORY.git "$TEMP_TOOLS_DIR"
cd "$TEMP_TOOLS_DIR"
git sparse-checkout init --no-cone
git sparse-checkout set /tools/
git sparse-checkout add '!tools/eppdev_config'
git sparse-checkout add '!tools/eppdev.md'
# Uncomment the following line if you wish to include a template for adding your own extending the eppdev tool.
git sparse-checkout add '!tools/eppdev_actions_template' 
git read-tree -mu HEAD
cd "$WORKSPACE_DIR"


# Move the 'tools' folder to the desired location and clean up
mv -f $TEMP_TOOLS_DIR/tools/* $WORKSPACE_DIR/tools/
rm -rf "$TEMP_TOOLS_DIR"

echo "'tools' folder from '$TOOLS_REPOSITORY' has been successfully cloned into the tools folder."

# Autocomplete and automatic  for eppdev tool
echo "export WORKSPACE_DIR=$WORKSPACE_DIR" >> $HOME/.bashrc
echo "source $WORKSPACE_DIR/tools/_eppdev_autocomplete" >> $HOME/.bashrc
