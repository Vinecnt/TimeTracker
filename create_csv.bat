@echo off

cd C:\Users\Vincent\AppData\Local\Finkit\ManicTime

type NUL > temp.txt
echo .header on>> temp.txt
echo .mode csv>> temp.txt
echo .output data.csv>> temp.txt
type get_daily_report.sql>>temp.txt
echo ; >>temp.txt
echo .quit >>temp.txt

sqlite3 ManicTimeReports.db < temp.txt

del temp.txt