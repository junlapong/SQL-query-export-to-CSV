@echo off

cls

set JAVA_EXEC=C:\Dev\Java\jdk8\bin\java.exe
rem set JAVA_EXEC=D:\PortableApps\Java\jdk8\bin\java.exe

set TODAY=%date:~0,4%%date:~5,2%%date:~8,2%
set OUTPUTDIR=.\data\%TODAY%
set SQLPATH=.\sql\query.sql


if not exist %OUTPUTDIR% mkdir %OUTPUTDIR%

%JAVA_EXEC% -jar target\sql-exporter.jar -o %OUTPUTDIR% -i %SQLPATH%

echo ...
echo ----- END -----

@echo on

pause
