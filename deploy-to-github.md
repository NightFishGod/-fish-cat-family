# 🐱 猫咪族谱 GitHub Pages 一键部署指南

## 📁 项目结构（已准备好）
```
猫咪族谱网页版/
├── index.html                 ← 主页面
├── 404.html                  ← 自定义404页面
├── CNAME                    ← 自定义域名（可选）
├── .nojekyll                ← 禁止Jekyll处理
├── README.md
└── ...
```

## 🚀 部署步骤（5分钟完成）

### 1️⃣ 注册 GitHub
- 访问 https://github.com
- 注册免费账号（如果已有账号跳过）

### 2️⃣ 创建新仓库
- 右上角 "+" → "New repository"
- **仓库名**：`cat-family`（或任意名字）
- **描述**：猫咪族谱网页版
- **Public**（公开，必须）
- **不要**勾选 "Add a README file"（我们已有）
- 点击 "Create repository"

### 3️⃣ 上传文件
#### 方法A：网页上传
1. 进入新建的仓库页面
2. 点击 "Add file" → "Upload files"
3. 拖拽 `D:\猫咪族谱网页版` 里**所有文件**到上传区域
4. 点击 "Commit changes"

#### 方法B：Git 命令行（推荐）
```bash
cd D:\猫咪族谱网页版
git init
git add .
git commit -m "Initial commit: 猫咪族谱"
git branch -M main
git remote add origin https://github.com/你的用户名/cat-family.git
git push -u origin main
```

### 4️⃣ 开启 GitHub Pages
1. 进入仓库页面 → **Settings**（设置）
2. 左侧菜单找到 **Pages**
3. **Source** 选择：**Deploy from a branch**
4. **Branch** 选择：**main**（或 master）→ 文件夹 `/ (root)`
5. 点击 **Save**

### 5️⃣ 等待部署（约1-3分钟）
刷新页面，出现：
```
Your site is live at https://你的用户名.github.io/cat-family/
```

## 📱 手机访问
- 直接打开：`https://你的用户名.github.io/cat-family/`
- 生成二维码分享给任何人

## 🔧 自定义设置
### 自定义域名（可选）
1. 购买域名（如 `cat-family.com`）
2. 在仓库根目录创建 `CNAME` 文件，内容：`cat-family.com`
3. 去域名服务商添加 CNAME 记录：
   ```
   类型：CNAME
   主机名：www
   指向：你的用户名.github.io
   ```

### 更新内容
```bash
cd D:\猫咪族谱网页版
git add .
git commit -m "更新猫咪信息"
git push
```

## 🎯 优势
✅ **永久免费** - 无需续费
✅ **全球 CDN** - 访问快
✅ **HTTPS 加密** - 安全
✅ **无审核** - 随时更新
✅ **自定义域名** - 更专业
✅ **手机电脑都可用**

## 🆘 常见问题
1. **页面显示 404？** - 等待 2-3 分钟再刷新
2. **样式丢失？** - 确保有 `.nojekyll` 文件
3. **访问慢？** - 首次加载后会被缓存

---

完成部署后，将链接分享给任何人，点开即用！