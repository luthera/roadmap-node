IF NOT EXISTS
   (
     SELECT name FROM master.dbo.sysdatabases
     WHERE name = N'local_roadmap'
    )
CREATE DATABASE [local_roadmap];

IF NOT EXISTS
   (
     SELECT name FROM master.dbo.sysdatabases
     WHERE name = N'test_roadmap'
    )
CREATE DATABASE [test_roadmap];
