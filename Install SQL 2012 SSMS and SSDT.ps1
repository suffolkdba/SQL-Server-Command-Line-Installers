
New-Item -ItemType directory -Path S:\Installers
#Move the following to S:\Installers
#Config File
#SSDT Iso
#SSMS Installer
#PowerShell Script






#Create Required Folders
Write-Host "Beggining Pre-Installation Folder Creation" -ForegroundColor Green
New-Item -ItemType directory -Path D:\SQLData
New-Item -ItemType directory -Path L:\SQLLogs
New-Item -ItemType directory -Path T:\SQLTempDB
New-Item -ItemType directory -Path S:\SQLBackups
Write-Host "Folders Created" -ForegroundColor Green

Write-Host "Beginning SQL Server Installation" -ForegroundColor Green
D:\Setup.exe /ConfigurationFile="C:\Installers\SQLServer2012.ini" /SAPWD="MyStr0ngPa$$word!"
Write-Host "SQL Server Installation Complete" -ForegroundColor Green


# Set file and folder path for SSMS installer .exe
$folderpath="S:\Installers"
$filepath="$folderpath\SSMS-Setup-ENU-2017.exe"

# start the SSMS installer
$a = Get-Date
write-host "Beginning SSMS install...Starting: " $a -ForegroundColor Green
$Parms = " /Install /Quiet /Norestart /Logs S:\Installers\log.txt"
$Prms = $Parms.Split(" ")
& "$filepath" $Prms | Out-Null
$b = Get-Date
Write-Host "SSMS installation completed at: " $b -ForegroundColor Green

#secpol.msc
#Local Polices
#User Rights Assignment
#Perform Volume Maintenance Tasks
#Add SQL Service Account
#Computer Configuration\Windows Settings\Local Policies\User Rights Assignment
#Perform volume maintenance tasks

New-Item -ItemType directory -Path S:\SQLBackups\Installers\SSDTInstall
$a = Get-Date
write-host "Beginning SSDT install...Starting: " $a -ForegroundColor Green
Mount-DiskImage -PassThru "S:\Installers\SSDTSetup 16.5.iso"
#Get-Volume
I:\SSDTSETUP.EXE INSTALLALL=1 /silent /log S:\Installers\SSDTInstall\SSDTInstall.log
$b = Get-Date
Write-Host "SSDT installation completed at: " $b -ForegroundColor Green


#Prepare to Move the System Databases
#Edit Config Service First then run the following
Stop-Service -DisplayName "SQL Server*" -Force
Get-Service *SQL*
Move-Item -Path "C:\Program Files\Microsoft SQL Server\MSSQL11.LIVE2012\MSSQL\DATA\Master.mdf" -Destination D:\SQLData\Master.mdf
Move-Item -Path "C:\Program Files\Microsoft SQL Server\MSSQL11.LIVE2012\MSSQL\DATA\mastlog.ldf" -Destination L:\SQLLogs\mastlog.ldf
Get-ChildItem "C:\Program Files\Microsoft SQL Server\MSSQL11.LIVE2012\MSSQL\DATA\"
Get-ChildItem D:\SQLData
Get-ChildItem L:\SQLLogs
Start-Service -DisplayName "SQL Server*"
Get-Service *SQL*


USE master;  
GO  
ALTER DATABASE MSDB 
MODIFY FILE (NAME = msdbdata, FILENAME = 'D:\SQLData\msdbdata.mdf');  
GO  
ALTER DATABASE MSDB   
MODIFY FILE (NAME = msdblog, FILENAME = 'L:\SQLLogs\msdblog.ldf');  
GO

ALTER DATABASE model
MODIFY FILE (NAME = modeldev, FILENAME = 'D:\SQLData\model.mdf');  
GO  
ALTER DATABASE MSDB   
MODIFY FILE (NAME = msdblog, FILENAME = 'L:\SQLLogs\modellog.ldf');  
GO  

Stop-Service -DisplayName "SQL Server*" -Force
Get-Service *SQL*

Move-Item -Path "C:\Program Files\Microsoft SQL Server\MSSQL11.LIVE2012\MSSQL\DATA\*.mdf" -Destination D:\SQLData\
Move-Item -Path "C:\Program Files\Microsoft SQL Server\MSSQL11.LIVE2012\MSSQL\DATA\*.ldf" -Destination L:\SQLLogs\
Get-ChildItem "C:\Program Files\Microsoft SQL Server\MSSQL11.LIVE2012\MSSQL\DATA\"
Get-ChildItem D:\SQLData
Get-ChildItem L:\SQLLogs
Start-Service -DisplayName "SQL Server*"
Get-Service *SQL*


