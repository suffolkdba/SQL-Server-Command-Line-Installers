# SQL-Server-Command-Line-Installers


Config File Setup
Add                     IACCEPTSQLSERVERLICENSETERMS="True"
Amend to                QUIET="True"
Remove or Comment out   UIMODE="Normal"

SQL Server Express 2008R2

Temp Directory needs adding for the setup files:
C:\Temp\PCUSource
C:\Installers>SQLServer2008R2Express64Bit.exe /ConfigurationFile="C:\Installers\SQLServerExpress2008R2.ini" /SAPWD="My Password"

SQL Server Express 2012

C:\Installers>SQLServer2012Express64Bit.exe /ConfigurationFile="C:\Installers\SQLServerExpress2012.ini" /SAPWD="My Password"




