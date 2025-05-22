@echo off
:start
cls
REM Show title
echo.
echo  ==============================================
echo  =        WINDOWS ACTIVATE BY ALCAARON        =
echo  ==============================================
echo.

REM Show menu
echo Select your windows edition:
echo.
echo 1. Home: TX9XD-98N7V-6WMQ6-BX7FG-H8Q99
echo 2. Home N: 3KHY7-WNT83-DGQKR-F7HPR-844BM
echo 3. Home Single Language: 7HNRX-D7KGG-3K4RQ-4WPJ4-YTDFH
echo 4. Home Country Specific: PVMJN-6DFY6-9CCP6-7BKTT-D3WVR
echo 5. Professional: W269N-WFGWX-YVC9B-4J6C9-T83GX
echo 6. Professional N: MH37W-N47XK-V7XM9-C7227-GCQG9
echo 7. Education: NW6C2-QMPVW-D7KKK-3GKT6-VCFB2
echo 8. Education N: 2WH4N-8QGBV-H22JP-CT43Q-MDWWJ
echo 9. Enterprise: NPPR9-FWDCX-D2C8J-H872K-2YT43
echo 10. Enterprise N: DPH2V-TTNVB-4X9Q3-TJR4H-KHJW4
echo.

set /p option=Introduce an option (1-10): 

REM Evaluate the option
if "%option%"=="1" set license=TX9XD-98N7V-6WMQ6-BX7FG-H8Q99
if "%option%"=="2" set license=3KHY7-WNT83-DGQKR-F7HPR-844BM
if "%option%"=="3" set license=7HNRX-D7KGG-3K4RQ-4WPJ4-YTDFH
if "%option%"=="4" set license=PVMJN-6DFY6-9CCP6-7BKTT-D3WVR
if "%option%"=="5" set license=W269N-WFGWX-YVC9B-4J6C9-T83GX
if "%option%"=="6" set license=MH37W-N47XK-V7XM9-C7227-GCQG9
if "%option%"=="7" set license=NW6C2-QMPVW-D7KKK-3GKT6-VCFB2
if "%option%"=="8" set license=2WH4N-8QGBV-H22JP-CT43Q-MDWWJ
if "%option%"=="9" set license=NPPR9-FWDCX-D2C8J-H872K-2YT43
if "%option%"=="10" set license=DPH2V-TTNVB-4X9Q3-TJR4H-KHJW4

REM Verify option
if not defined license (
    echo.
    echo Invalid option. Try Again.
    pause
    goto start
)

REM Show License
echo.
echo Thank you! Activating your Windows License...
slmgr /ipk %license%
slmgr /skms kms8.msguides.com
slmgr /ato
echo.
pause
exit