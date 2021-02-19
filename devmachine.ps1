#####################
# PREREQUISITES
#####################

Set-ExplorerOptions -showHiddenFilesFoldersDrives -showProtectedOSFiles -showFileExtensions
Set-TaskbarSmall

# Console
cinst powershell.portable
cinst poshgit
cinst microsoft-windows-terminal

#####################
# SOFTWARE
#####################

# Some browsers
cinst GoogleChrome -y
cinst firefox -y
cinst microsoft-edge -y

#Plugins and Runtime
cinst javaruntime -y

# Dev Tools
cinst git.install -y
cinst git-fork -y
cinst nvm -y
cinst cascadiacode -y
cinst vscode -y
cinst postman -y
cinst fiddler -y
cinst azure-cli -y
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
cinst powertoys -y

# SQL Server - do this early to avoid issues with newer versions of VC++ 2015 redist
choco install sql-server-2019  --cacheLocation="c:\temp"
choco install sql-server-2019-cumulative-update  --cacheLocation="c:\temp"
choco install sql-server-management-studio  --cacheLocation="c:\temp"