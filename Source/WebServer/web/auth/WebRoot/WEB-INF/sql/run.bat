
del *.bak
::java -cp ..\..\lib\hsqldb-1.8.0.7.jar org.hsqldb.util.SqlTool --help

java -cp ..\lib\hsqldb-1.8.0.7.jar org.hsqldb.util.SqlTool --noAutoFile --autoCommit --rcFile sqltool.rc contact import.sql

pause


