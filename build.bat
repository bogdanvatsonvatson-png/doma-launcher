@echo off
setlocal
cd /d "%~dp0"
py -m pip install --upgrade pip
if errorlevel 1 goto error
py -m pip install -r requirements.txt
if errorlevel 1 goto error
py -m PyInstaller --noconfirm --clean --onefile --windowed --name doma_launcher app.py
if errorlevel 1 goto error
echo.
echo Build complete: dist\doma_launcher.exe
pause
exit /b 0
:error
echo.
echo Build failed. Check the error messages above.
pause
exit /b 1
