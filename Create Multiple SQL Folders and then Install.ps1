
# Powershell Script to Create Directories to support a demo of  Central Management Server
# Used in Conjunction with CLI scripts to silent install additional instances
# 5 Instances Installed, 15-20mins

New-Item -ItemType directory -Path C:\SQLServer2017-01
New-Item -ItemType directory -Path C:\SQLServer2017-02
New-Item -ItemType directory -Path C:\SQLServer2017-03
New-Item -ItemType directory -Path C:\SQLServer2017-04
New-Item -ItemType directory -Path C:\SQLServer2017-05

New-Item -ItemType directory -Path C:\SQLServer2017-01\SQLBackups
New-Item -ItemType directory -Path C:\SQLServer2017-01\SQLData
New-Item -ItemType directory -Path C:\SQLServer2017-01\SQLLogs
New-Item -ItemType directory -Path C:\SQLServer2017-01\SQLTempdb

New-Item -ItemType directory -Path C:\SQLServer2017-02\SQLBackups
New-Item -ItemType directory -Path C:\SQLServer2017-02\SQLData
New-Item -ItemType directory -Path C:\SQLServer2017-02\SQLLogs
New-Item -ItemType directory -Path C:\SQLServer2017-02\SQLTempdb

New-Item -ItemType directory -Path C:\SQLServer2017-03\SQLBackups
New-Item -ItemType directory -Path C:\SQLServer2017-03\SQLData
New-Item -ItemType directory -Path C:\SQLServer2017-03\SQLLogs
New-Item -ItemType directory -Path C:\SQLServer2017-03\SQLTempdb

New-Item -ItemType directory -Path C:\SQLServer2017-04\SQLBackups
New-Item -ItemType directory -Path C:\SQLServer2017-04\SQLData
New-Item -ItemType directory -Path C:\SQLServer2017-04\SQLLogs
New-Item -ItemType directory -Path C:\SQLServer2017-04\SQLTempdb

New-Item -ItemType directory -Path C:\SQLServer2017-05\SQLBackups
New-Item -ItemType directory -Path C:\SQLServer2017-05\SQLData
New-Item -ItemType directory -Path C:\SQLServer2017-05\SQLLogs
New-Item -ItemType directory -Path C:\SQLServer2017-05\SQLTempdb



D:\Setup.exe /ConfigurationFile="C:\Installers\SQLServerDev2017RC2-01.ini" /SAPWD="MyStr0ngPa$$word!"
D:\Setup.exe /ConfigurationFile="C:\Installers\SQLServerDev2017RC2-02.ini" /SAPWD="MyStr0ngPa$$word!"
D:\Setup.exe /ConfigurationFile="C:\Installers\SQLServerDev2017RC2-03.ini" /SAPWD="MyStr0ngPa$$word!"
D:\Setup.exe /ConfigurationFile="C:\Installers\SQLServerDev2017RC2-04.ini" /SAPWD="MyStr0ngPa$$word!"
D:\Setup.exe /ConfigurationFile="C:\Installers\SQLServerDev2017RC2-05.ini" /SAPWD="MyStr0ngPa$$word!"