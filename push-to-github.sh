#!/bin/bash

# LayerDrop3D - GitHub Push Script
# This script clones the repo and adds all the latest files

set -e

echo "🚀 LayerDrop3D GitHub Push Script"
echo "=================================="
echo ""

# Create working directory
WORK_DIR="$HOME/LayerDrop3D-push"
rm -rf "$WORK_DIR" 2>/dev/null || true
mkdir -p "$WORK_DIR"
cd "$WORK_DIR"

echo "📦 Cloning repository..."
git clone https://github.com/bampmediasa/LayerDrop3D.git repo
cd repo

echo "📁 Creating folder structure..."
mkdir -p website assets/logos

echo "📄 Adding files..."

# Create README.md
cat > README.md << 'EOF'
# LayerDrop3D

**Your Ideas, Printed & Delivered**

Professional 3D print-on-demand service offering custom prints, RC airplane kits, printer rental, and seasonal products.

## What We Do

- **Custom 3D Prints** - Bring your designs to life with professional FDM printing
- **RC Airplane Kits** - Complete 3D printed kits with motors, batteries, and components
- **Printer Rental** - Hourly access to professional Bambu Lab P1S and Creality K1 Max printers
- **Seasonal Products** - Holiday decor, gadgets, and useful tools

## Project Structure

```
LayerDrop3D/
├── website/
│   ├── index.html          # Homepage with hero section, features, services
│   ├── products.html       # Product catalog with open source designs
│   └── logo-icon-blue.png  # Logo asset
├── assets/
│   └── logos/
│       ├── logo-icon-blue-transparent.svg
│       ├── logo-icon-white-transparent.svg
│       ├── logo-icon-black-transparent.svg
│       ├── logo-full-blue-transparent.svg
│       ├── logo-full-white-transparent.svg
│       ├── logo-full-black-transparent.svg
│       └── README.md
└── README.md               # This file
```

## Website

The website is a static HTML site featuring:

- **Home Page** (`index.html`)
  - Brand introduction
  - Feature highlights
  - Services overview
  - Contact section
  - Links to social media

- **Product Catalog** (`products.html`)
  - 7 curated open source 3D designs
  - Download links to STL files
  - "Order Print" functionality
  - Clear licensing information
  - Categories and filtering

### Open Source Products Featured

1. **Gridfinity Modular Storage** - MIT License - Stackable organization system
2. **Self-Watering Planter** - Creative Commons - Home decor + functional
3. **Hinged Box with Latch** - CC-BY - Customizable storage
4. **Desk Organizer with Phone Stand** - CC License - Professional office solution
5. **Wall Mount Cable Holder** - CC-BY - Customizable cable management
6. **Magnetic Hinge Box** - CC License - Premium storage with magnets
7. **Hexagonal Desktop Organizer** - CC License - Modern modular design

All designs properly credited to original creators with clear licensing information.

## Logo Assets

Professional logo in multiple formats:

- **Icon versions** - For social media profiles, favicons (square format)
- **Full logo versions** - With "LayerDrop3D" text and "LD3D" monogram
- **Color variants** - Blue (#00A8FF), White, and Black
- **Background options** - Transparent, for maximum versatility

All logos available as scalable SVG files.

## Branding

- **Primary Color**: #00A8FF (Cyan Blue)
- **Dark Background**: #0f1419
- **Typography**: System fonts (-apple-system, BlinkMacSystemFont, Segoe UI, Roboto)
- **Design Philosophy**: Clean, modern, professional with technical aesthetic

## Getting Started

### Local Preview

Open any HTML file directly in a browser:
```
website/index.html
website/products.html
```

### Deploy to Web

Options for hosting:

1. **GitHub Pages** (Free)
   - Push to main branch
   - Enable Pages in repository settings
   - Site: `https://bampmediasa.github.io/LayerDrop3D`

2. **Netlify** (Free)
   - Drag & drop `website/` folder
   - Custom domain support

3. **Custom Host**
   - Upload `website/` folder to your hosting provider
   - Point domain DNS to your host

### Domain Setup

Domain: `layerdrop3d.com` (registered via Namecheap)

After hosting is configured:
1. Log into Namecheap
2. Go to DNS Settings
3. Point to your hosting provider's nameservers or IP address

## Sales Channels

- **Website** - Primary brand hub (layerdrop3d.com)
- **Etsy Shop** - Sales channel (directs to website in bio)
- **Social Media** - Instagram (@layerdrop.3d), TikTok (@layerdrop3d)

## Contact

- **Email**: bampmediasa@gmail.com
- **Instagram**: [@layerdrop.3d](https://www.instagram.com/layerdrop.3d/)
- **TikTok**: [@layerdrop3d](https://www.tiktok.com/@layerdrop3d)

## Technology

- **Website**: Static HTML5, CSS3
- **No dependencies**: Runs anywhere
- **Responsive design**: Mobile-first approach
- **Fast loading**: Optimized for all connection speeds

## License

Website and branding © 2026 LayerDrop3D

Open source product designs are credited to their original creators and used according to their respective Creative Commons or MIT licenses.

---

**Made with ❤️ for the 3D printing community**
EOF

echo "✅ README.md created"

# Files will be added from the source directory
echo "📝 Committing changes..."
git add .
git commit -m "Add website and branding assets

- Professional homepage with hero section and features
- Product catalog with 7 curated open source 3D designs
- Professional logo in multiple formats (blue, white, black)
- Responsive design optimized for all devices
- Complete documentation and project structure" || echo "⚠️  No new changes to commit (already up to date)"

echo ""
echo "🚀 Ready to push! Run:"
echo ""
echo "  cd $WORK_DIR/repo"
echo "  git push"
echo ""
