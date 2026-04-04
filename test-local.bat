@echo off
chcp 65001 >nul
title 测试猫咪族谱 - 本地服务器

echo.
echo ================================================
echo   🐱 猫咪族谱 - 本地服务器测试
echo ================================================
echo.
echo 请按以下步骤测试：
echo.
echo 1. 确保此窗口保持打开
echo 2. 本地浏览器访问：http://localhost:8888
echo 3. 手机同一Wi-Fi访问：http://%COMPUTERNAME%:8888
echo.
echo 或访问：http://你的电脑IP地址:8888
echo.
echo 要获取电脑IP地址：
echo   Win+R 输入 cmd
echo   输入 ipconfig
echo   查看 IPv4 地址（如 192.168.1.100）
echo.
echo ================================================
echo.

echo 正在启动本地服务器...
python -m http.server 8888 --bind 0.0.0.0

pause