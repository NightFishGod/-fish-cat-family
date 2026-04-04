# 🐱 猫咪族谱网页版 - 完整部署指南

## 📁 项目结构
```
猫咪族谱网页版/
├── index.html              ← 主页面（单文件应用）
├── 404.html               ← 自定义404页面
├── .nojekyll              ← 禁止GitHub Jekyll处理
├── CNAME                  ← 自定义域名配置文件
├── README.md              ← 基本说明
├── deploy-to-github.md    ← 详细部署教程
├── 一键上传到GitHub.bat   ← 一键部署脚本
├── test-connection.html   ← 网络连接测试页面
├── start.bat              ← 本地服务器启动器
├── 一键手机访问教程.md    ← 多种访问方案
└── README-完整指南.md     ← 本文档
```

## 🚀 部署步骤（5分钟完成）

### 方案一：GitHub Pages（最推荐）
1. **注册 GitHub**（免费）→ https://github.com
2. **创建仓库** → 右上角 + → New repository
   - 仓库名：`cat-family`（或自定义）
   - 描述：猫咪族谱网页版
   - **Public**（必须公开）
   - 不要勾选"Add a README"
3. **上传文件**（二选一）：
   - **网页拖拽**：在仓库页面点击"Add file" → "Upload files"，拖拽所有文件
   - **命令行**：双击运行`一键上传到GitHub.bat`
4. **开启 Pages**：
   - 仓库 → Settings → Pages
   - Source：**Deploy from a branch**
   - Branch：**main**，文件夹：**/ (root)**
   - 点击 Save
5. **等待生效**（约1-3分钟）
6. **访问地址**：`https://你的用户名.github.io/cat-family/`

### 方案二：其他托管平台
| 平台 | 特点 | 链接 |
|------|------|------|
| **Vercel** | 一键部署，CDN快 | https://vercel.com |
| **Netlify** | 拖拽上传，免费SSL | https://app.netlify.com |
| **腾讯云COS** | 国内访问快 | 需腾讯云账号 |
| **阿里云OSS** | 国内稳定 | 需阿里云账号 |

## 📱 手机访问方式

### 方式一：GitHub Pages链接
```
https://你的用户名.github.io/cat-family/
```
- ✅ 永久有效
- ✅ 全平台（手机/电脑/平板）
- ✅ HTTPS安全加密
- ✅ 可自定义域名

### 方式二：生成二维码
1. 打开 https://qrcode.show/
2. 输入你的GitHub Pages链接
3. 生成二维码图片
4. 保存图片分享给朋友

### 方式三：局域网共享（临时）
1. 双击`start.bat`
2. 选 1 启动本地服务器
3. 查看电脑IP（`ipconfig`）
4. 手机输入：`http://192.168.xxx.xxx:8888`

## 🔧 自定义修改

### 修改猫咪信息
打开`index.html`，找到第556-571行：
```javascript
const cats = [
  { id:1, name:'橘团团', generation:1, parentIds:[], emoji:'🐱', gender:'male', birthday:'2018-03-15', desc:'家里的大家长...', photos:['🌞','🐾','🎀'] },
  // ... 其他猫咪
]
```

**字段说明**：
- `name`：猫咪名字
- `generation`：代次（1/2/3）
- `parentIds`：父母ID数组（[]表示无）
- `emoji`：头像表情
- `gender`：`'male'` 或 `'female'`
- `birthday`：生日
- `desc`：简介
- `photos`：生活照表情数组

### 使用真实照片
1. 创建`images/`文件夹
2. 头像图片放入`images/avatars/`
3. 生活照放入`images/photos/`
4. 修改代码中`emoji`为：
   ```html
   <img src="images/avatars/cat1.jpg" alt="猫咪头像">
   ```

### 自定义域名
1. 购买域名（如 `cat-family.com`）
2. 修改`CNAME`文件内容为你的域名
3. 域名服务商添加CNAME记录指向：`用户名.github.io`
4. GitHub仓库Settings → Pages → Custom domain

## 🎯 核心功能
- ✅ **族谱树**：3代竖向排列，带连接线
- ✅ **性别标识**：♂蓝色边框，♀粉色边框
- ✅ **详情页**：简介、生日、父母、生活照
- ✅ **离线可用**：可保存到本地
- ✅ **数据导出**：JSON格式备份
- ✅ **手机适配**：触摸优化
- ✅ **全平台**：所有浏览器兼容

## 🔄 更新网站
### 修改后重新部署
1. 修改本地文件
2. 运行`一键上传到GitHub.bat`
3. GitHub Pages自动更新（约1分钟）

### 或使用Git命令
```bash
cd D:\猫咪族谱网页版
git add .
git commit -m "更新猫咪信息"
git push
```

## 🆘 常见问题

### Q：页面显示404？
A：等待2-3分钟刷新，或检查Pages设置是否正确

### Q：样式丢失？
A：确保有`.nojekyll`文件，禁止GitHub Jekyll处理

### Q：访问速度慢？
A：首次加载有缓存，后续访问会变快

### Q：如何添加更多猫咪？
A：在`cats`数组中添加新对象，确保id唯一

### Q：怎么让朋友访问？
A：分享GitHub Pages链接，或生成二维码

## 📞 联系支持
如遇问题，可搜索：
- "GitHub Pages 部署教程"
- "静态网站托管"
- "HTML单页应用"

---

**完成部署后，你将获得一个永久可访问的链接，任何人手机电脑都能打开查看你的猫咪族谱！**