# JCD PERFUMES — Haute Parfumerie & Bespoke Olfactory Maison

A luxury, original, fully responsive web application and executive admin suite for **JCD PERFUMES**, powered by **HTML5, Modern CSS3, JavaScript, and Supabase Backend**.

---

## 🌟 Key Features

1. **Ultra-Luxury Responsive Design**:
   - Palette inspired by obsidian noir, 24k champagne gold, and amber glow.
   - Fluid typography (Cinzel, Cormorant Garamond, Montserrat).
   - Glassmorphism UI, atmospheric ambient glows, and mobile drawer navigation.

2. **Interactive Scent Profile Discovery Quiz**:
   - 4-step dynamic fragrance profiling questionnaire.
   - Dynamic formula generator calculating olfactory notes based on user vibe, season, and desired concentration.
   - Real-time submission directly to Supabase.

3. **VIP Bespoke Atelier Consultation Booking**:
   - High-end reservation system for private consultations.
   - Fields: Full name, direct phone/WhatsApp, preferred date, time slot, fragrance family, and special olfactory notes.
   - Modal confirmation and instant storage into Supabase.

4. **Olfactory Pyramid & Master Fragrance Families**:
   - Interactive breakdown of Head (Top), Heart (Middle), and Base (Dry-Down) notes.
   - Curated showcase for Woody Oud, Oriental Amber, Damask Floral, and Citrus Royale universes.

5. **Client Reveries & Review Submission**:
   - Dynamic testimonials with star ratings and preferred scents.
   - Interactive modal allowing clients to submit their fragrance experiences.

6. **Maison Concierge & Sample Box Inquiries**:
   - Direct contact form for VIP Discovery boxes, wedding fragrances, and corporate gifting.

7. **VIP Scent Club Newsletter**:
   - Seamless newsletter subscription with instant confirmation.

---

## 🔐 Executive Admin Suite

- **Access URL**: [`admin.html`](admin.html) or via the **Admin Suite** button in navigation/footer.
- **Master Admin Password**: `HAFIZ`
- **Admin Capabilities**:
  - Live Supabase connection indicator.
  - KPI Dashboard summary cards.
  - View, search, update status, and delete records for:
    - VIP Consultations
    - Scent Quiz Formula Submissions
    - Concierge Inquiries & Sample Requests
    - Client Testimonials & Reviews
    - Newsletter Subscribers
  - 1-Click Export to CSV for all tables.
  - Built-in Supabase SQL Schema viewer and copy tool.

---

## 🗄️ Supabase Configuration & Setup

### Supabase Project Details:
- **Project URL**: `https://bcaklkzukfkhaxhvyjeb.supabase.co`
- **Anon / Public Key**: Configured in [`js/supabase-config.js`](js/supabase-config.js)

### SQL Database Schema:
To set up all tables and policies in your Supabase project:
1. Open your [Supabase Dashboard](https://supabase.com/dashboard/project/bcaklkzukfkhaxhvyjeb).
2. Go to **SQL Editor**.
3. Copy and run the contents of [`schema.sql`](schema.sql).

---

## 🚀 Deployment Workflow (VS Code → GitHub → Live)

### 1. Initialize Git & Commit:
```bash
git init
git add .
git commit -m "Initial release of JCD Perfumes with Supabase integration and Admin Panel"
```

### 2. Push to GitHub:
```bash
git branch -M main
git remote add origin https://github.com/YOUR_USERNAME/jcd-perfumes.git
git push -u origin main
```

### 3. Deploy Live:
- **Vercel / Netlify / GitHub Pages**:
  - Simply connect your GitHub repository or drag and drop this project folder.
  - No build step required (Pure HTML/CSS/JS).

---

© 2026 **JCD PERFUMES**. Crafted with excellence.
