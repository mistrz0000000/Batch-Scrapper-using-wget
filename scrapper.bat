@echo off
:start
cls
if not exist "Sites" md Sites
cd Sites
echo Wprowadz nazwe katalogu dla strony:
set /P folder=
md %folder%
cls
cd ..
echo Wprowadz link strony do pobrania:
set /P site=
wget -r -c --progress=bar %site% -P Sites\%folder%
cls
echo Strona zostala pobrana. Co chcesz zrobic dalej?
echo 1 - Pobierzmy kolejna!
echo 2 - Tyle wystarczy, wylacz program.
set /P choose=
if %choose%==1 GOTO start
if %choose%==2 exit

