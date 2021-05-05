#####################
# PREREQUISITES
#####################

Set-ExplorerOptions -showHiddenFilesFoldersDrives -showProtectedOSFiles -showFileExtensions
Set-TaskbarSmall

# Console
choco install powershell.portable
choco install poshgit
choco install microsoft-windows-terminal

#####################
# SOFTWARE
#####################

# Some browsers
choco install GoogleChrome -y
choco install firefox -y
choco install microsoft-edge -y

#Plugins and Runtime
choco install javaruntime -y

# Dev Tools
choco install git.install -y
choco install git-fork -y
choco install cascadiacode -y
choco install vscode -y
choco install postman -y
choco install fiddler -y
choco install azure-cli -y
choco install microsoftazurestorageexplorer -y
choco install servicebusexplorer -y
choco install ssms -y

New-Item -Path "c:\temp" -ItemType directory -Force | Out-Null

# Visual Studio 2019
choco install visualstudio2019enterprise --cacheLocation="c:\temp"
choco install visualstudio2019-workload-manageddesktop --cacheLocation="c:\temp"
choco install visualstudio2019-workload-netcoretools  --cacheLocation="c:\temp"
choco install visualstudio2019-workload-netweb  --cacheLocation="c:\temp"
choco install visualstudio2019-workload-node --cacheLocation="c:\temp"
choco install visualstudio2019-workload-visualstudioextension --cacheLocation="c:\temp"

# Tools
choco install powertoys -y

# SQL Server - do this early to avoid issues with newer versions of VC++ 2015 redist
choco install sql-server-2019  --cacheLocation="c:\temp"
choco install sql-server-2019-cumulative-update  --cacheLocation="c:\temp"
choco install sql-server-management-studio  --cacheLocation="c:\temp"

# Node
choco install nodejs-lts -y
choco install python2 -y
choco install visualstudio2017-workload-vctools -y
