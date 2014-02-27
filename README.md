mwb2sql
=======

What is this ?
----------------

mwb2sql is a shell command utility to produce sql file from mwb file (file format of MySQL Workbench).


Usage
-------

### Windows

    mwb2sql.bat sample/test.mwb a.sql

### Linux (with GUI)

    sh mwb2sql.sh sample/test.mwb a.sql

### Linux (without GUI)

    Xvfb :1 &
    DISPLAY=:1 sh mwb2sql.sh sample/test.mwb a.sql


Known Issues
-------------

* MySQL Workbench application always displays a window even if a script option is specified.
* `generateSQLCreateStatements` function seems to have a option that control the behavior of dumping sql, but the option has no effect. (I can't find the way to enable the option)

