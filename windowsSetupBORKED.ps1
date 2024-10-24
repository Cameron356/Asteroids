#Does not work yet!
# Install Python 3
winget install python3
#$pythonInstallPath = "C:\Python39\"  # adjust to your Python 3 installation path
#$pythonExe = Join-Path -Path $pythonInstallPath -ChildPath "python.exe"
#Start-Process -FilePath $pythonExe -ArgumentList "/quiet", "InstallAllUsers=1", "PrependPath=1" -Wait

$env:Path = [System.Environment]::GetEnvironmentVariable("Path", "Machine") + ";" + [System.Environment]::GetEnvironmentVariable("Path", "User")

# Create a virtual environment (venv)
& $pythonExe -m venv $pwd

# Activate the virtual environment
# PowerShell activation script got from online. is $venvDir something i need to set up?
. ($venvDir)\Scripts\Activate.ps1

$requirementsFile = "$pwd\requirements.txt"
pip install -r $requirementsFile
