@echo click to delete files
pause
#del *.doc

md newdes
copy new\*.* newdes\

#copy directory
@echo off
echo source directory ?
set /p source=
echo destination directory ?
set /p dest=
xcopy %source% %dest%\


Sorry, my mistake, try again using the below fixed version
#delete directory
@echo off
del "Your_Folder\*.*" /Q
for /f "tokens=* delims=" %%j in ('dir "Your_Folder" /B /AD') do (
RD "Your_Folder\%%j" /S /Q)

try a trailing backslash to final destination.


#copy directory
Instead of xcopy C:\myfile1 F:\myfile2
try xcopy C:\myfile1 F:\myfile2\


xcopy c:\files d:\test\