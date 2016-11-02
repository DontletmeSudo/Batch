reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Microsoft SQL Server\110\Machines" /v OriginalMachineName /t REG_SZ /d %computername% /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Microsoft SQL Server\Services\Report Server" /v GroupPrefix /t REG_SZ /d SQLServerReportServerUser$%computername%$ /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Microsoft SQL Server\Services\SSIS Server" /v GroupPrefix /t REG_SZ /d SQLServerDTSUser$%computername%$ /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\WOW6432Node\Microsoft\Microsoft SQL Server\110\Machines" /v OriginalMachineName /t REG_SZ /d %computername% /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\WOW6432Node\Microsoft\Microsoft SQL Server\90\Machines" /v OriginalMachineName /t REG_SZ /d %computername% /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\WOW6432Node\Microsoft\Microsoft SQL Server\Services\Report Server" /v GroupPrefix /t REG_SZ /d SQLServerReportServerUser$%computername%$ /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\WOW6432Node\Microsoft\Microsoft SQL Server\Services\SSIS Server" /v GroupPrefix /t REG_SZ /d SQLServerDTSUser$%computername%$ /f
sqlcmd -U sa -P ****** -i C:\FixSQL\Fix_SQL_Name.sql -o C:\FixSQL\Output1.txt
NET STOP MSSQLSERVER
NET START MSSQLSERVER
call C:\FixSQL\BRSService.bat
powershell.exe -noexit -File "C:\FixSQL\Fix_ServerName.ps1"
call C:\FixSQL\Tomcat\master.bat
