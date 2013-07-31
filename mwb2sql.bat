@echo off
REM generate sql from mwb
REM usage: mwb2sql.bat {.mwb file} {output file}

SET OUTPUT=%~f2
"C:\Program Files (x86)\MySQL\MySQL Workbench 5.2 CE\MySQLWorkbench.exe" ^
  -open %~f1 ^
  -run-python "import os;import grt;from grt.modules import DbMySQLFE as fe;c = grt.root.wb.doc.physicalModels[0].catalog;fe.generateSQLCreateStatements(c, c.version, {});fe.createScriptForCatalogObjects(os.getenv('OUTPUT'), c, {})" ^
  -nologo ^
  -quit-when-done
