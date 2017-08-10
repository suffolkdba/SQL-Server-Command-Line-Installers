# SQL-Server-Command-Line-Installers




Config File Setup
Add                     IACCEPTSQLSERVERLICENSETERMS="True"
Amend to                QUIET="True"
Remove or Comment out   UIMODE="Normal"

SQL Server Express 2008R2 - Bugged Atm
Temp Directory needs adding for the setup files:
C:\Temp\PCUSource
Folder Settings in ini = C:\SQLServer2008R2
C:\Installers>SQLServer2008R2Express64Bit.exe /ConfigurationFile="C:\Installers\SQLServerExpress2008R2.ini" /SAPWD="My Password"

### SQL Server Express 2012

Folder Settings in ini = C:\SQLServer2012

C:\Installers>SQLServer2012Express64Bit.exe /ConfigurationFile="C:\Installers\SQLServerExpress2012.ini" /SAPWD="My Password"

### SQL Server Evaluation 2012

Folder Settings in ini = C:\SQLServerEnterprise2012

D:\Setup.exe /ConfigurationFile="C:\Installers\SQLServerEvaluation2012.ini" /SAPWD="My Password"

### SQL Server Evaluation 2014

Folder Settings in ini = C:\SQLServerEvaluation2014

D:\Setup.exe /ConfigurationFile="C:\Installers\SQLServerEvaluation2014.ini" /SAPWD="My Password"

### SQL Server Development 2016

Folder Settings in ini = C:\SQLServerDev2016

D:\Setup.exe /ConfigurationFile="C:\Installers\SQLServerDev2016.ini" /SAPWD="My Password"


### SQL Server Development 2017 CTP2

Folder Settings in ini = C:\SQLServerDev2017CTP2

D:\Setup.exe /ConfigurationFile="C:\Installers\SQLServer2017CTP2.ini" /SAPWD="My Password"

### SQL Server Development 2017 RC1

Folder Settings in ini = C:\SQLServerDev2017RC1

D:\Setup.exe /ConfigurationFile="C:\Installers\SQLServer2017RC1.ini" /SAPWD="My Password"

### SQL Server Development 2017 RC2

Folder Settings in ini = C:\SQLServerDev2017RC2

D:\Setup.exe /ConfigurationFile="C:\Installers\SQLServer2017RC2.ini" /SAPWD="My Password"
