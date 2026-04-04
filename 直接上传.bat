@echo off
chcp 65001 >nul
title 🚀 猫咪族谱一键部署到GitHub
color 0E
echo.
echo ================================================
echo       🐱 猫咪族谱 GitHub Pages 一键部署
echo ================================================
echo.

echo 步骤1/4：检查Git安装...
where git >nul 2>nul
if errorlevel 1 (
    echo ❌ 未检测到Git，请先安装Git
    echo 下载地址: https://git-scm.com/download/win
    echo.
    pause
    exit /b 1
)

echo ✅ Git已安装
echo.

set /p GITHUB_USERNAME="请输入你的GitHub用户名（不要包含@或邮箱）： "
echo.

echo 步骤2/4：初始化本地仓库...
echo.
git init
git add .
git commit -m "Initial commit: 猫咪族谱网页版"
echo ✅ 本地提交完成
echo.

echo 步骤3/4：创建GitHub仓库并上传...
echo.
echo 请按照以下步骤操作：
echo.
echo 1. 打开浏览器，访问：https://github.com/new
echo 2. 填写以下信息：
echo    - Repository name: cat-family
echo    - Description: 猫咪族谱网页版
echo    - Public（必须选公开）
echo    - 不要勾选"Initialize this repository..."
echo 3. 点击"Create repository"
echo 4. 复制页面上显示的远程仓库命令
echo.
pause

echo.
echo 请粘贴你复制的远程仓库命令（以 git remote add origin 开头）：
echo 示例: git remote add origin https://github.com/%GITHUB_USERNAME%/cat-family.git
echo.
set /p REMOTE_CMD="粘贴命令："

echo.
echo 正在设置远程仓库...
echo.
%REMOTE_CMD%
git push -u origin main

echo.
echo ================================================
echo 🎉 上传成功！
echo.
echo 接下来：
echo 1. 访问 https://github.com/%GITHUB_USERNAME%/cat-family
echo 2. 点击 Settings → Pages
echo 3. Branch 选择 main → 文件夹选择 / (root)
echo 4. 点击 Save
echo 5. 等待1-3分钟...
echo.
echo 你的永久链接将是：
echo https://%GITHUB_USERNAME%.github.io/cat-family/
echo.
echo 手机扫码二维码生成：https://qrcode.show/
echo ================================================
echo.
pause