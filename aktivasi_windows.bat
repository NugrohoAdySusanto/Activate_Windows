@echo off

net session >nul 2>&1
if %errorLevel% neq 0 (
    echo Harap jalankan skrip ini sebagai Administrator.
    pause
    exit /b
)

set ProductKey=VK7JG-NPHTM-C97JM-9MPGT-3V66T

echo Memasukkan Product Key...
slmgr /ipk %ProductKey%

echo Mengaktifkan Windows...
slmgr /ato

echo Proses aktivasi selesai.
pause
