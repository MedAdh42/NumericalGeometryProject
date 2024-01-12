## About
The following project aims to deform a set of geological meshes by making faults vertical and horizons horizontal.
### Input
![input](/examples/ifp2.jpg)
### Output
![output](/examples/ifp2_param.jpg)

## Usage
### Prerequisites
Python 3.10, 3.11
### Linux
Ensure that python3-venv is installed : sudo apt install python3-venv
#### CLI mode
* create a virtual environment: python3 -m venv "env_name"
* activate the virtual environment: source path/to/env_name/bin/activate
* install dependencies : pip -r install requirements.txt 
* launch the script and provide arguments: python deformation.py ifp1 ifp1 100 100
#### Interactive mode
* open a terminal
* cd /path/to/NumericalGeometryProject/
* source launch_jupyter.sh
* open deformation_interactive.ipynb
* use Shift + Enter to run each cell  
### Windows
#### CLI mode
* create a virtual environment: python -m venv "env_name"
* activate the virtual environment: call \path\to\env_name\Scripts\activate
* install dependencies : pip install -r requirements.txt 
* launch the script and provide arguments: python deformation.py ifp1 ifp1 100 100
#### Interactive mode
* open Command Prompt
* cd \path\to\NumericalGeometryProject\
* launch_jupyter.bat + Enter
* open deformation_interactive.ipynb
* use Shift + Enter to run each cell 