@echo off

set var1="simple_program_2"
cd %~dp0\..\test_cases

start robot --outputdir C:\Users\GbitCorp\Desktop\Python\red\workspace\1_Program\reports_%var1% %var1%.robot

