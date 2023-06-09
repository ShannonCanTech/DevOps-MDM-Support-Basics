# Bypass PC Security Protocols To Install Any Software 
Utilzing chocolatey to install any software you'd like and byapss system security protocols.

## How?
Install chocolatey as a non-admin from PowerShell ISE.

Set execution policy to bypass.
Make new directory in C:/ drive.

`makdir D:\ProgramData\chocoportable`

Change directory to newly created directory.

`cd C:\ProgramData\chocoportable`

In PowerShell ISE, create and save file where you can define and set global variables. In the file, put:

 	# Set directory for installation - Chocolatey does not lock
	# down the directory if not the default
	$InstallDir='C:\ProgramData\chocoportable'
	$env:ChocolateyInstall="$InstallDir"
	
	# If your PowerShell Execution policy is restrictive, you may
	# not be able to get around that. Try setting your session to
	# Bypass.
	Set-ExecutionPolicy Bypass -Scope Process -Force;
	
	# All install options - offline, proxy, etc at
	# https://chocolatey.org/install 
	iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))
  
Save file as ChocolateyInstallNonAdmin.ps1 to C:\ProgramData\chocolatey

Run file in PowerShell ISE  or use command:
	powershell.exe -File C:\ProgramData\chocoportable\ChocolateyInstallNonAdmin.ps1

## Aside
Upgrade Chocolatey by running
	`choco -upgrade`

If "choco keyword noot found" error occurs, follow steps bellow:

- Search C drive for chocolatey
- Locate folder with acrive chocolatey app installed
- Open PowerShell ISE
- Set execution policy to bypass
- Manually type folder where chocolatey app is installed (Note: check under c:\users\[currentuser]\AppData\Local\Temp\chocolatey\chocoinstall\tools after deleting the original folder in ProgramData)
- Double click on the choco app that was already installed and see if a command prompt pops up
- In PowerShell ISE, open the chocolateyinstall.ps1 file and run it. (C:\Users\[CurrentUser]\AppData\Local\Temp\chocolatey\chocoinstall\tools\chocolateyinstall.ps1
- Run `choco -upgrade` to test and see if use of the choco command now works
- Close and reopen the shell after major changes
