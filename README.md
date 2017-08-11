# SQL-Server-Command-Line-Installers




### Config File Setup
Add                     IACCEPTSQLSERVERLICENSETERMS="True"

Amend to                QUIET="True"

Remove or Comment out   UIMODE="Normal"


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

4 x TempDB Files Pre-Grown to 1GB with Autogrowth set to 200MB

TempDb Log Pre-Grown to 500MB with AutoGrowth set to 100MB

Folder Settings in ini = C:\SQLServerDev2016

Filestream Enabled

IFI Enabled

D:\Setup.exe /ConfigurationFile="C:\Installers\SQLServerDev2016.ini" /SAPWD="My Password"


### SQL Server Development 2017 CTP2

4 x TempDB Files Pre-Grown to 1GB with Autogrowth set to 200MB

TempDb Log Pre-Grown to 500MB with AutoGrowth set to 100MB

Filestream Enabled

IFI Enabled

Folder Settings in ini = C:\SQLServerDev2017CTP2

D:\Setup.exe /ConfigurationFile="C:\Installers\SQLServerDev2017CTP2.ini" /SAPWD="My Password"

### SQL Server Development 2017 RC1

4 x TempDB Files Pre-Grown to 1GB with Autogrowth set to 200MB

TempDb Log Pre-Grown to 500MB with AutoGrowth set to 100MB

Filestream Enabled

IFI Enabled

Folder Settings in ini = C:\SQLServerDev2017RC1

D:\Setup.exe /ConfigurationFile="C:\Installers\SQLServerDev2017RC1.ini" /SAPWD="My Password"

### SQL Server Development 2017 RC2

4 x TempDB Files Pre-Grown to 1GB with Autogrowth set to 200MB

TempDb Log Pre-Grown to 500MB with AutoGrowth set to 100MB

Filestream Enabled

IFI Enabled

Folder Settings in ini = C:\SQLServerDev2017RC2

D:\Setup.exe /ConfigurationFile="C:\Installers\SQLServerDev2017RC2.ini" /SAPWD="My Password"
