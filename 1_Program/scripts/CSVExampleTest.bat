@echo off

set var1="CSVExampleTest"
cd %~dp0\..\test_cases

@RD /S /Q C:\Users\GbitCorp\Desktop\Python\red\workspace\1_Program\reports_%var1%
start /wait robot --outputdir C:\Users\GbitCorp\Desktop\Python\red\workspace\1_Program\reports_%var1% %var1%.robot
xcopy /e /v C:\Users\GbitCorp\Desktop\Python\red\workspace\1_Program\reports_%var1% C:\Users\GbitCorp\Desktop\Python\red\workspace\1_Program\backups\reports_%var1%\