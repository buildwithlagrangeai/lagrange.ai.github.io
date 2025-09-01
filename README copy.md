# Lagrange.AI User Guide

Professional, interactive user documentation for Lagrange.AI - a supply chain analytics platform.

## 🌐 Live Demo

Once deployed, the documentation will be available at: `https://[your-username].github.io/[repository-name]/`

## 📁 Project Structure

```
manual_2/
├── index.html          # Main documentation webpage
├── media/              # Images and assets
│   ├── Lagrange.AI.svg # Logo
│   └── image*.png      # Documentation screenshots
├── _config.yml        # GitHub Pages configuration
├── .nojekyll          # Bypass Jekyll processing
├── CNAME.example      # Custom domain example (rename to CNAME if needed)
├── deploy.sh          # Deployment helper script
├── .github/
│   └── workflows/
│       └── deploy.yml # GitHub Actions workflow
└── README.md          # This file
```

## 🚀 Deployment to GitHub Pages

### Method 1: Direct Repository Setup

1. **Create a new GitHub repository**
   - Go to GitHub and create a new repository
   - Name it as desired (e.g., `lagrange-docs`)
   - Make it public (required for free GitHub Pages hosting)

2. **Upload the files**
   ```bash
   git init
   git add .
   git commit -m "Initial commit - Lagrange.AI documentation"
   git branch -M main
   git remote add origin https://github.com/[your-username]/[repository-name].git
   git push -u origin main
   ```

3. **Enable GitHub Pages**
   - Go to your repository on GitHub
   - Click on "Settings" tab
   - Scroll down to "Pages" section in the left sidebar
   - Under "Source", select "Deploy from a branch"
   - Select "main" branch and "/ (root)" folder
   - Click "Save"

4. **Access your documentation**
   - Wait 2-5 minutes for deployment
   - Visit: `https://[your-username].github.io/[repository-name]/`

### Method 2: Using github.io Repository

If you want to host at `https://[your-username].github.io/`:

1. **Create a special repository**
   - Create a repository named exactly: `[your-username].github.io`
   - This will be your main GitHub Pages site

2. **Upload files to the repository**
   ```bash
   git init
   git add .
   git commit -m "Lagrange.AI documentation"
   git branch -M main
   git remote add origin https://github.com/[your-username]/[your-username].github.io.git
   git push -u origin main
   ```

3. **Access at root domain**
   - Your site will be available at: `https://[your-username].github.io/`

## 🔧 Local Development

To test the documentation locally:

### Using Python (recommended)
```bash
# Python 3
python -m http.server 8000

# Python 2
python -m SimpleHTTPServer 8000
```
Then visit: `http://localhost:8000`

### Using Node.js
```bash
# Install http-server globally
npm install -g http-server

# Run server
http-server -p 8000
```
Then visit: `http://localhost:8000`

### Using VS Code Live Server
1. Install the "Live Server" extension
2. Right-click on `index.html`
3. Select "Open with Live Server"

## 📝 Features

- **Responsive Design**: Works on desktop, tablet, and mobile devices
- **Interactive Navigation**: Collapsible sidebar with section organization
- **Smart Search**: Real-time search with highlighting and keyboard navigation
- **Professional UI**: Clean, modern design following best practices
- **Fast Loading**: No external dependencies, optimized for performance
- **Print Friendly**: Optimized styles for printing documentation
- **Keyboard Shortcuts**: 
  - `/` to focus search
  - `↑/↓` to navigate search results
  - `Enter` to select result
  - `Escape` to close search

## ⚙️ Configuration Files

### `_config.yml`
GitHub Pages configuration file that:
- Sets site metadata (title, description)
- Configures build settings
- Excludes unnecessary files from deployment
- Optimizes performance

**Important fields to update:**
- `baseurl`: Set to `/repository-name` if not using a custom domain
- `url`: Set to `https://[username].github.io` or your custom domain

### `.nojekyll`
Empty file that tells GitHub Pages to serve the site exactly as-is without Jekyll processing. Keep this file even with `_config.yml` present.

### Custom Domain (Optional)
To use a custom domain:
1. Rename `CNAME.example` to `CNAME`
2. Edit the file to contain your domain (e.g., `docs.lagrange.ai`)
3. Configure your domain's DNS settings to point to GitHub Pages

## 🎨 Customization

### Updating Content
- Edit `index.html` to modify documentation content
- Add new sections following the existing HTML structure
- Images go in the `media/` folder

### Styling Changes
- CSS is embedded in `index.html` for performance
- Color scheme uses CSS variables for easy theming
- Modify the `:root` section to change colors

### Adding Images
1. Place images in the `media/` folder
2. Reference them in HTML:
   ```html
   <div class="image-container">
       <img src="media/your-image.png" alt="Description">
   </div>
   ```

## 🛠️ Maintenance

### Updating Documentation
1. Make changes locally
2. Test thoroughly
3. Commit and push to GitHub:
   ```bash
   git add .
   git commit -m "Update documentation"
   git push
   ```
4. GitHub Pages will automatically update within minutes

### Adding New Sections
1. Add navigation item in sidebar
2. Create corresponding section in content
3. Ensure IDs match for navigation

## 📄 License

This documentation is part of the Lagrange.AI platform.

## 🤝 Support

For issues or questions about the documentation, please contact the Lagrange.AI team.

---

**Note**: The `.nojekyll` file is required to prevent GitHub Pages from processing the site with Jekyll, which would interfere with the custom HTML/CSS/JavaScript.