@echo off
chcp 65001 >nul
cd /d "%~dp0"
echo.
echo   ========================================
echo     📤 更新云端版本
echo   ========================================
echo.
git add -A
git commit -m "更新 %date% %time%"
git push origin main
echo.
echo   ✅ 云端已更新！稍后刷新手机页面即可看到最新数据。
echo.
pause
