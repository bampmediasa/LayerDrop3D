# Domain Setup - layerdrop3d.com → GitHub Pages

Your website files are ready. Now we need to:
1. Enable GitHub Pages
2. Point your domain DNS to GitHub Pages

---

## Step 1: Enable GitHub Pages (in GitHub)

1. Go to https://github.com/bampmediasa/LayerDrop3D
2. Click **Settings** (gear icon, top right)
3. Scroll down to **Pages** (left sidebar)
4. Under "Source":
   - Branch: `main`
   - Folder: `/website`
5. Click **Save**

✅ GitHub will deploy your site in a few minutes

---

## Step 2: Point Domain to GitHub Pages (in Namecheap)

1. Log into https://www.namecheap.com
2. Go to **Domain List** → Click **layerdrop3d.com**
3. Click **Manage**
4. Click **Advanced DNS** tab
5. Under "Host Records", find the **A Record** section

**Delete old records and add these:**

| Type | Host | Value |
|------|------|-------|
| A | @ | 185.199.108.153 |
| A | @ | 185.199.109.153 |
| A | @ | 185.199.110.153 |
| A | @ | 185.199.111.153 |
| CNAME | www | bampmediasa.github.io |

6. Click **Save**

---

## Verification

After 5-15 minutes, visit:
- https://layerdrop3d.com
- https://www.layerdrop3d.com

Both should load your website! 🎉

---

## Troubleshooting

**If it's not working after 30 minutes:**
1. Check DNS propagation: https://www.whatsmydns.net/
2. Clear your browser cache (Cmd+Shift+R on Mac, Ctrl+Shift+R on Windows)
3. Check GitHub Pages settings show "Your site is published at https://layerdrop3d.com"

---

**Your website is ready!**
Next: Publish Etsy listings
