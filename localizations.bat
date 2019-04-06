@echo off
for %%I in (.) do set CurrDirName=%%~nxI
::If the localization file is named incorrectly, it will error.
IF NOT EXIST "Localization.txt" goto errorfile
IF NOT EXIST "Localization - Quest.txt" goto errorfile
::If the file is not in the right location, it will error. Be sure to have your file in the correct location or change your localization path.
IF NOT EXIST "..\..\data\config\Localization.txt" goto errorlocation
IF EXIST "Localization.txt" goto fileconfirmed
:fileconfirmed
IF EXIST "Localization - Quest.txt" goto secondfileconfirmed
:secondfileconfirmed
IF EXIST "..\..\data\config\Localization.txt" goto confirmed
:errorlocation                                                                                                                                                                                                        
color 17
echo EEEEEEEEEEEEEEEEEEEEEERRRRRRRRRRRRRRRRR   RRRRRRRRRRRRRRRRR        OOOOOOOOO     RRRRRRRRRRRRRRRRR   
echo E::::::::::::::::::::ER::::::::::::::::R  R::::::::::::::::R     OO:::::::::OO   R::::::::::::::::R  
echo E::::::::::::::::::::ER::::::RRRRRR:::::R R::::::RRRRRR:::::R  OO:::::::::::::OO R::::::RRRRRR:::::R 
echo EE::::::EEEEEEEEE::::ERR:::::R     R:::::RRR:::::R     R:::::RO:::::::OOO:::::::ORR:::::R     R:::::R
echo   E:::::E       EEEEEE  R::::R     R:::::R  R::::R     R:::::RO::::::O   O::::::O  R::::R     R:::::R
echo   E:::::E               R::::R     R:::::R  R::::R     R:::::RO:::::O     O:::::O  R::::R     R:::::R
echo   E::::::EEEEEEEEEE     R::::RRRRRR:::::R   R::::RRRRRR:::::R O:::::O     O:::::O  R::::RRRRRR:::::R 
echo   E:::::::::::::::E     R:::::::::::::RR    R:::::::::::::RR  O:::::O     O:::::O  R:::::::::::::RR  
echo   E:::::::::::::::E     R::::RRRRRR:::::R   R::::RRRRRR:::::R O:::::O     O:::::O  R::::RRRRRR:::::R 
echo   E::::::EEEEEEEEEE     R::::R     R:::::R  R::::R     R:::::RO:::::O     O:::::O  R::::R     R:::::R
echo   E:::::E               R::::R     R:::::R  R::::R     R:::::RO:::::O     O:::::O  R::::R     R:::::R
echo   E:::::E       EEEEEE  R::::R     R:::::R  R::::R     R:::::RO::::::O   O::::::O  R::::R     R:::::R
echo EE::::::EEEEEEEE:::::ERR:::::R     R:::::RRR:::::R     R:::::RO:::::::OOO:::::::ORR:::::R     R:::::R
echo E::::::::::::::::::::ER::::::R     R:::::RR::::::R     R:::::R OO:::::::::::::OO R::::::R     R:::::R
echo E::::::::::::::::::::ER::::::R     R:::::RR::::::R     R:::::R   OO:::::::::OO   R::::::R     R:::::R
echo EEEEEEEEEEEEEEEEEEEEEERRRRRRRR     RRRRRRRRRRRRRRR     RRRRRRR     OOOOOOOOO     RRRRRRRR     RRRRRRR
echo.
echo.
echo It looks like you are trying to run the batch script from a different location. Make sure this mod in the correct location.
echo.
goto end
:errorfile                                                                                                                                                                                                      
color 17
echo EEEEEEEEEEEEEEEEEEEEEERRRRRRRRRRRRRRRRR   RRRRRRRRRRRRRRRRR        OOOOOOOOO     RRRRRRRRRRRRRRRRR   
echo E::::::::::::::::::::ER::::::::::::::::R  R::::::::::::::::R     OO:::::::::OO   R::::::::::::::::R  
echo E::::::::::::::::::::ER::::::RRRRRR:::::R R::::::RRRRRR:::::R  OO:::::::::::::OO R::::::RRRRRR:::::R 
echo EE::::::EEEEEEEEE::::ERR:::::R     R:::::RRR:::::R     R:::::RO:::::::OOO:::::::ORR:::::R     R:::::R
echo   E:::::E       EEEEEE  R::::R     R:::::R  R::::R     R:::::RO::::::O   O::::::O  R::::R     R:::::R
echo   E:::::E               R::::R     R:::::R  R::::R     R:::::RO:::::O     O:::::O  R::::R     R:::::R
echo   E::::::EEEEEEEEEE     R::::RRRRRR:::::R   R::::RRRRRR:::::R O:::::O     O:::::O  R::::RRRRRR:::::R 
echo   E:::::::::::::::E     R:::::::::::::RR    R:::::::::::::RR  O:::::O     O:::::O  R:::::::::::::RR  
echo   E:::::::::::::::E     R::::RRRRRR:::::R   R::::RRRRRR:::::R O:::::O     O:::::O  R::::RRRRRR:::::R 
echo   E::::::EEEEEEEEEE     R::::R     R:::::R  R::::R     R:::::RO:::::O     O:::::O  R::::R     R:::::R
echo   E:::::E               R::::R     R:::::R  R::::R     R:::::RO:::::O     O:::::O  R::::R     R:::::R
echo   E:::::E       EEEEEE  R::::R     R:::::R  R::::R     R:::::RO::::::O   O::::::O  R::::R     R:::::R
echo EE::::::EEEEEEEE:::::ERR:::::R     R:::::RRR:::::R     R:::::RO:::::::OOO:::::::ORR:::::R     R:::::R
echo E::::::::::::::::::::ER::::::R     R:::::RR::::::R     R:::::R OO:::::::::::::OO R::::::R     R:::::R
echo E::::::::::::::::::::ER::::::R     R:::::RR::::::R     R:::::R   OO:::::::::OO   R::::::R     R:::::R
echo EEEEEEEEEEEEEEEEEEEEEERRRRRRRR     RRRRRRRRRRRRRRR     RRRRRRR     OOOOOOOOO     RRRRRRRR     RRRRRRR
echo.
echo.
echo Well... it seems we are missing the follwoing files:
echo.
IF NOT EXIST "Localization.txt" echo Localization.txt
IF NOT EXIST "Localization - Quest.txt" echo Localization - Quest.txt
echo.
echo Make sure you have these files in the same place you are running this script.
echo Also make sure you haven't renamed them either.
echo.
goto end
:confirmed
color 0C 
echo Firearms 2 Modlet
echo Please ensure this file runs correctly before closing. It is very important to run. Otherwise
echo All Firearms assets will be named mayicgun/mayicammo/mayicblock.
echo.  
pause
echo.                                                                       
echo.
for %%I in (.) do set CurrDirName=%%~nxI
echo This will load up the localization data for the mod "Firearms".
echo.
echo Excellent, I see the localization files to append and I also see we are in the correct location.
echo.
echo This should be compatible with other batch scripts to append the data.
echo Please note the key word "SHOULD".
echo.
echo This script does make a backup of the file before it does anything. 
echo.
:start
echo.
echo Please type the number of your choice.
echo 1: Continue
echo 2: Quit
echo 3: Restore a backup if one exists
set /p choice=Option: 
if not '%choice%'=='' set choice=%choice:~0,1%
if '%choice%'=='1' goto install
if '%choice%'=='2' goto end
if '%choice%'=='3' goto restore
ECHO "%choice%" Choice is not valid, try again
ECHO.
goto start
:install
IF EXIST "Localization.txt" copy "..\..\data\config\Localization.txt" "..\..\data\config\Localization.txt.bak"
IF EXIST "Localization - Quest.txt" copy "..\..\data\config\Localization - Quest.txt" "..\..\data\config\Localization - Quest.txt.bak"
copy "..\..\data\config\Localization - Quest.txt" LocalizationQuestTEMP.txt
copy "..\..\data\config\Localization.txt" LocalizationTEMP.txt
del "..\..\data\config\Localization.txt"
del "..\..\data\config\Localization - Quest.txt"
::PUT the common name of all your keys in "". For example, "rdm". Space is the delimiter.
FINDSTR /v "mayic" LocalizationTEMP.txt > "../../data/config/Localization.txt"
FINDSTR /v "mayic" LocalizationQuestTEMP.txt > "../../data/config/Localization - Quest.txt"
type localization.txt >> "../../data/config/Localization.txt"
type "localization - Quest.txt" >> "../../data/config/Localization - Quest.txt"
del "LocalizationTEMP.txt"
del "LocalizationQuestTEMP.txt"
echo Finished
goto end
:restore
IF NOT EXIST ..\..\data\config\Localization.txt.bak echo Localization backup does not exist
IF EXIST ..\..\data\config\Localization.txt.bak echo Restoring backuped up file.
IF EXIST ..\..\data\config\Localization.txt.bak copy "..\..\data\config\Localization.txt.bak" "..\..\data\config\Localization.txt"
IF EXIST ..\..\data\config\Localization.txt.bak del "..\..\data\config\Localization.txt.bak"
IF NOT EXIST "..\..\data\config\Localization - Quest.txt.bak" echo Localization - Quest backup does not exist
IF EXIST "..\..\data\config\Localization - Quest.txt.bak" echo Restoring backuped up file.
IF EXIST "..\..\data\config\Localization - Quest.txt.bak" copy "..\..\data\config\Localization - Quest.txt.bak" "..\..\data\config\Localization - Quest.txt"
IF EXIST "..\..\data\config\Localization - Quest.txt.bak" del "..\..\data\config\Localization - Quest.txt.bak"
:end
pause

