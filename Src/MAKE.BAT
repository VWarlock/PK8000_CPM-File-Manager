@echo off
del ..\fm\fm.com
del fm.rel
cls

..\Bin\ma80.exe fm,fm=fm
if errorlevel == 1 goto error

..\Bin\mlink fm
if errorlevel == 1 goto error

if not exist fm.com goto error

copy /b fm.com ..\fm\fm.com

del fm.com
del fm.rel
del fm.prn

echo =============================================
echo = Yeehaw! FM.COM created! No Errors! Ready! =
echo =============================================

goto end

:error
echo ######################################
echo ######### AN ERROR OCCURED! ##########
echo ######################################

:end
pause
