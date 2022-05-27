-- Attach
CREATE DATABASE Assets
ON (FILENAME = 'G:\University\Karshenasi\term 4\SQL\Assets.mdf'),
(FILENAME = 'G:\University\Karshenasi\term 4\SQL\Assets_log.ldf')
FOR ATTACH ;

-- Backup
BACKUP DATABASE Assets
TO DISK = 'G:\University\Karshenasi\term 4\SQL\Assets.bak' ;

-- Detach
EXEC sp_detach_db 'Assets' , true;

RESTORE DATABASE Assets
FROM DISK = 'G:\University\Karshenasi\term 4\SQL\Assets.bak ';