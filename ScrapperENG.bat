@echo off
:start
cls
if not exist "Sites" md Sites
cd Sites
echo Input folder name for site you want to download:
set /P folder=
md %folder%
cls
cd ..
echo Input linkt to the site you want to download:
set /P site=
wget -r -c --no-host-directories %site% -P Sites\%folder%
cls
echo Site downloaded. What do you want to do now?
echo 1 - Let's download another!
echo 2 - That's enough, close the program.
set /P choose=
if %choose%==1 GOTO start
if %choose%==2 exit

