# Batch
Some Batch/SQL scripts
CleanUpm2repo is a batch script designed to go check a directory "m2repo" and delete everything inside including sub-directories and files but leave the parent directory "m2repo"

Config.bat is part of a master script used to edit the registry / files+folders / services for cloned machines using vRealize. Due to cloning process many things are stored with the old hostname.

Fix_SQL_Name.sql this script is called via Config.bat and is used to go into MSSQL Server 2012 and update the @@servername since it is wrong due to cloning.

Stop_Expiration.cmd is just a basic cmd script to stop the Admin password from expiring.
