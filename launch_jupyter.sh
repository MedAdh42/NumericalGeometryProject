#!/bin/bash

# the path to your project directory
# shellcheck disable=SC2088
PROJECT_DIR=$(pwd)

# Set the name of your virtual environment
VENV_NAME="numerical_geometry"

# Check if the virtual environment exists
if [ ! -d "$PROJECT_DIR/$VENV_NAME" ]; then
    echo "Creating virtual environment..."
    python3 -m venv "$PROJECT_DIR/$VENV_NAME"
    # Activate the virtual environment
    source $PROJECT_DIR/$VENV_NAME/bin/activate
    # Install dependencies from requirements.txt
    pip install -r "$PROJECT_DIR/requirements.txt"

else
  echo "Virtual environment already exists"
  # Activate the virtual environment
  source "$PROJECT_DIR/$VENV_NAME/bin/activate"
fi

# Launch JupyterLab
echo "Launching jupyter ..."
jupyter-notebook --NotebookApp.port=4289 --NotebookApp.notebook_dir="$PROJECT_DIR"

# Deactivate the virtual environment when done (optional)
deactivate