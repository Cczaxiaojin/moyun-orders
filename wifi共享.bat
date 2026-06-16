@echo off
chcp 65001 >nul
cd /d "%~dp0"
echo.
echo   ========================================
echo     ✒️ 墨韵订单助手 — WiFi 共享
echo   ========================================
echo.
echo   正在启动共享服务...
echo.
python -c "import socket,http.server,os,threading,webbrowser;os.chdir(r'%~dp0');s=socket.socket(socket.AF_INET,socket.SOCK_DGRAM);s.connect(('8.8.8.8',80));ip=s.getsockname()[0];s.close();port=8899;print(f'\n  ✅ 服务已启动！\n');print(f'  📱 在手机浏览器中打开：\n');print(f'  ▶  http://{ip}:{port}');print(f'\n  按 Ctrl+C 停止服务\n');print(f'  ========================================\n');http.server.test(HandlerClass=http.server.SimpleHTTPRequestHandler,port=port,bind=ip)"
pause
