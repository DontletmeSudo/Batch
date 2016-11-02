DECLARE @var1 nvarchar(50)
DECLARE @var2 nvarchar(50)
SET @var1 = convert(nvarchar(50),@@SERVERNAME)
SET @var2 = convert(nvarchar(50),SERVERPROPERTY('MachineName'))
EXEC sp_dropserver @var1
EXEC sp_addserver @var2, 'local'
;