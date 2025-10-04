@echo off
REM Build installer and create admin.json in user's Documents with default password and firstLogin true.
setlocal
echo Creating MathLogicGameData directory in Documents...
set DATA_DIR=%USERPROFILE%\Documents\MathLogicGameData
if not exist "%DATA_DIR%" mkdir "%DATA_DIR%"
echo Creating admin.json with default credentials...
set ADMIN_FILE=%DATA_DIR%\admin.json
echo { > "%ADMIN_FILE%"
echo   "username": "admin", >> "%ADMIN_FILE%"
echo   "password": "Administrator", >> "%ADMIN_FILE%"
echo   "firstLogin": true >> "%ADMIN_FILE%"
echo } >> "%ADMIN_FILE%"
echo admin.json created at %ADMIN_FILE%
echo You can now run electron-builder to build installers.
pause
endlocal
