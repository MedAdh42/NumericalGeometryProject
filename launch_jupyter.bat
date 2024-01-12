@echo off

rem Set the path to your project directory
set PROJECT_DIR=%CD%

rem Set the name of your virtual environment
set VENV_NAME=numerical_geometry

rem Check if the virtual environment exists
if not exist "%PROJECT_DIR%\%VENV_NAME%" (
    rem Creating virtual environment...
    python -m venv "%PROJECT_DIR%\%VENV_NAME%"
    rem Activate the virtual environment
    call "%PROJECT_DIR%\%VENV_NAME%\Scripts\activate"
    rem Install dependencies from requirements.txt
    pip install -r "%PROJECT_DIR%\requirements.txt"
) else (
    rem Virtual environment already exists
    call "%PROJECT_DIR%\%VENV_NAME%\Scripts\activate"
)

rem Launching jupyter ...
jupyter-notebook --NotebookApp.port=4289 --NotebookApp.notebook_dir="%PROJECT_DIR"

pause

rem Deactivate the virtual environment when done (optional)
deactivate

