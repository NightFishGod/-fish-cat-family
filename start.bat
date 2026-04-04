@echo off
chcp 65001 >nul
title 猫咪族谱网页版 - 启动器
color 0A

echo.
echo ============================================
echo   🐱 猫咪族谱网页版 - 手机一键访问启动器
echo ============================================
echo.
echo 请选择启动模式：
echo.
echo [1] 启动本地服务器 (局域网访问)
echo [2] 生成 ngrok 公网链接 (手机随时访问)
echo [3] 打开浏览器预览
echo [4] 查看手机访问教程
echo [5] 退出
echo.

set /p choice="请输入选择 (1-5): "

if "%choice%"=="1" goto start_local
if "%choice%"=="2" goto start_ngrok
if "%choice%"=="3" goto open_browser
if "%choice%"=="4" goto open_guide
if "%choice%"=="5" goto exit
echo 无效选择，请重新运行
pause
goto :eof

:start_local
echo.
echo 正在启动本地服务器...
echo 服务器将在 8000 端口运行
echo.
echo 电脑IP地址获取方式：
echo 1. 按下 Win + R，输入 cmd
echo 2. 输入 ipconfig 查看 IPv4 地址
echo 3. 手机浏览器输入：http://你的IP:8000
echo.
echo 例如：http://192.168.1.100:8000
echo.
python -m http.server 8000 --bind 0.0.0.0 -d "%~dp0"
goto :eof

:start_ngrok
echo.
echo ngrok 使用方法：
echo.
echo 1. 访问 https://ngrok.com/download 下载
echo 2. 注册账号，获得认证 token
echo 3. 运行以下命令：
echo    ngrok config add-authtoken 你的token
echo    ngrok http 8000
echo.
echo 4. 先在另一个窗口启动本地服务器 (选项1)
echo 5. 再运行 ngrok 命令
echo 6. 获得类似 https://abc-123.ngrok.io 的链接
echo 7. 手机直接访问该链接
echo.
pause
goto :eof

:open_browser
start index.html
echo 已在默认浏览器打开猫咪族谱
pause
goto :eof

:open_guide
start 一键手机访问教程.md
echo 已打开教程文档
pause
goto :eof

:exit
echo 再见！
pause
