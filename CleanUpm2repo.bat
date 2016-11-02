@ECHO OFF 

Set dir=C:\m2repo 

Echo Deleting all files form %dir% 

del %dir%\* /F /Q 



Echo Deleting all folders form %dir% 

for /d %%p in (%dir%\*) Do rd /Q /S "%%p" 

@echo Folder deleted 



exit
