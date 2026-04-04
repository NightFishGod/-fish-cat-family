@echo off
chcp 65001 >nul
title 猫咪族谱一键上传到GitHub
color 0A
echo.
echo ================================================
echo          🐱 猫咪族谱 GitHub 部署助手
echo ================================================
echo.

set /p GITHUB_USERNAME="请输入你的 GitHub 用户名: "
set /p REPO_NAME="请输入仓库名（默认: cat-family）: "
if "%REPO_NAME%"=="" set REPO_NAME=cat-family

echo.
echo 正在准备文件...
echo.

REM 检查是否安装了 git
where git >nul 2>nul
if errorlevel 1 (
    echo ❌ 未检测到 Git，请先安装 Git 并配置环境变量
    echo 下载地址: https://git-scm.com/download/win
    pause
    exit /b 1
)

REM 检查当前目录
if not exist "index.html" (
    echo ❌ 请在项目根目录（包含 index.html 的文件夹）运行此脚本
    echo 当前目录: %CD%
    pause
    exit /b 1
)

echo.
echo 步骤 1/4: 初始化 Git 仓库
echo.
git init
if errorlevel 1 goto git_error

echo.
echo 步骤 2/4: 添加所有文件
echo.
git add .
if errorlevel 1 goto git_error

echo.
echo 步骤 3/4: 提交更改
echo.
git commit -m "初始提交：猫咪族谱网页版"
if errorlevel 1 goto git_error

echo.
echo 步骤 4/4: 连接到 GitHub 并推送
echo.
git branch -M main
git remote add origin https://github.com/%GITHUB_USERNAME%/%REPO_NAME%.git
git push -u origin main
if errorlevel 1 goto git_error

echo.
echo ================================================
echo 🎉 上传成功！
echo.
echo 你的网站地址：
echo https://%GITHUB_USERNAME%.github.io/%REPO_NAME%/
echo.
echo 下一步：
echo 1. 打开 https://github.com/%GITHUB_USERNAME%/%REPO_NAME%
echo 2. 点击 Settings → Pages
echo 3. Branch 选择 main → 文件夹选择 / (root)
echo 4. 等待 1-3 分钟生效
echo ================================================
echo.
pause
exit /b 0

:git_error
echo.
echo ❌ Git 操作出错！
echo 请检查：
echo 1. Git 是否正确安装和配置
echo 2. 网络连接是否正常
echo 3. GitHub 账户权限
echo.
pause
exit /b 1