use master;

go 
if not exists(
select name 
from sys.databases
where name=N'StudentDB'
)create database StudentDB
ON PRIMARY
  ( NAME='StudentDB_primary',
    FILENAME=
       'C:\DataBaseLogs\Student\Primary\StudentDB_Prm.mdf',
    SIZE=4MB,
    MAXSIZE=10MB,
    FILEGROWTH=1MB),
FILEGROUP MyDB_FG1
  ( NAME = 'StudentDB_FG1_Dat1',
    FILENAME =
       'C:\DataBaseLogs\Student\FileGroup\StudentDB_FG1_1.ndf',
    SIZE = 1MB,
    MAXSIZE=10MB,
    FILEGROWTH=1MB),
  ( NAME = 'StudentDB_FG1_Dat2',
    FILENAME =
       'C:\DataBaseLogs\Student\FileGroup\StudentDB_FG1_2.ndf',
    SIZE = 1MB,
    MAXSIZE=10MB,
    FILEGROWTH=1MB)
	LOG ON
  ( NAME='MyDB_log',
    FILENAME =
       'C:\DataBaseLogs\Student\StudentDB.ldf',
    SIZE=1MB,
    MAXSIZE=10MB,
    FILEGROWTH=1MB);