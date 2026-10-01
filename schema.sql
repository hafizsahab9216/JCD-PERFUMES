-- ==========================================================
-- JCD PERFUMES - Supabase Database Schema
-- Run this script in your Supabase Project SQL Editor
-- (Project: bcaklkzukfkhaxhvyjeb)
-- ==========================================================

-- 1. Consultations Table (VIP Atelier & Private Scent Appointments)
CREATE TABLE IF NOT EXISTS consultations (
    id BIGSERIAL PRIMARY KEY,
    created_at TIMESTAMP WITH TIME ZONE DEFAULT timezone('utc'::text, now()) NOT NULL,
    full_name TEXT NOT NULL,
    email TEXT NOT NULL,
    phone TEXT NOT NULL,
    preferred_date DATE NOT NULL,
    preferred_time TEXT NOT NULL,
    fragrance_family TEXT NOT NULL,
    experience_type TEXT DEFAULT 'Private Atelier Session',
    special_notes TEXT,
    status TEXT DEFAULT 'Pending'
);

-- 2. Scent Quizzes Table (Personalized Scent Formula Discoveries)
CREATE TABLE IF NOT EXISTS scent_quizzes (
    id BIGSERIAL PRIMARY KEY,
    created_at TIMESTAMP WITH TIME ZONE DEFAULT timezone('utc'::text, now()) NOT NULL,
    full_name TEXT NOT NULL,
    email TEXT NOT NULL,
    personality_vibe TEXT NOT NULL,
    preferred_season TEXT NOT NULL,
    intensity_preference TEXT NOT NULL,
    matched_fragrance TEXT NOT NULL,
    custom_formula_notes TEXT NOT NULL
);

-- 3. General Inquiries & VIP Sample Box Requests
CREATE TABLE IF NOT EXISTS inquiries (
    id BIGSERIAL PRIMARY KEY,
    created_at TIMESTAMP WITH TIME ZONE DEFAULT timezone('utc'::text, now()) NOT NULL,
    full_name TEXT NOT NULL,
    email TEXT NOT NULL,
    phone TEXT,
    inquiry_type TEXT DEFAULT 'General Inquiry',
    subject TEXT NOT NULL,
    message TEXT NOT NULL,
    status TEXT DEFAULT 'New'
);

-- 4. Client Testimonials & Reviews
CREATE TABLE IF NOT EXISTS reviews (
    id BIGSERIAL PRIMARY KEY,
    created_at TIMESTAMP WITH TIME ZONE DEFAULT timezone('utc'::text, now()) NOT NULL,
    full_name TEXT NOT NULL,
    city_country TEXT,
    rating INTEGER DEFAULT 5,
    favorite_scent TEXT,
    review_text TEXT NOT NULL,
    is_approved BOOLEAN DEFAULT true
);

-- 5. VIP Newsletter Subscribers
CREATE TABLE IF NOT EXISTS subscribers (
    id BIGSERIAL PRIMARY KEY,
    created_at TIMESTAMP WITH TIME ZONE DEFAULT timezone('utc'::text, now()) NOT NULL,
    email TEXT UNIQUE NOT NULL,
    source TEXT DEFAULT 'Website Footer'
);

-- Enable Row Level Security (RLS) on all tables
ALTER TABLE consultations ENABLE ROW LEVEL SECURITY;
ALTER TABLE scent_quizzes ENABLE ROW LEVEL SECURITY;
ALTER TABLE inquiries ENABLE ROW LEVEL SECURITY;
ALTER TABLE reviews ENABLE ROW LEVEL SECURITY;
ALTER TABLE subscribers ENABLE ROW LEVEL SECURITY;

-- Create policies allowing anon key full read and write access for the web app
DROP POLICY IF EXISTS "Allow public read access on consultations" ON consultations;
CREATE POLICY "Allow public read access on consultations" ON consultations FOR SELECT USING (true);

DROP POLICY IF EXISTS "Allow public insert access on consultations" ON consultations;
CREATE POLICY "Allow public insert access on consultations" ON consultations FOR INSERT WITH CHECK (true);

DROP POLICY IF EXISTS "Allow public update access on consultations" ON consultations;
CREATE POLICY "Allow public update access on consultations" ON consultations FOR UPDATE USING (true);

DROP POLICY IF EXISTS "Allow public delete access on consultations" ON consultations;
CREATE POLICY "Allow public delete access on consultations" ON consultations FOR DELETE USING (true);

-- Scent Quizzes Policies
DROP POLICY IF EXISTS "Allow public all access on scent_quizzes" ON scent_quizzes;
CREATE POLICY "Allow public all access on scent_quizzes" ON scent_quizzes FOR ALL USING (true) WITH CHECK (true);

-- Inquiries Policies
DROP POLICY IF EXISTS "Allow public all access on inquiries" ON inquiries;
CREATE POLICY "Allow public all access on inquiries" ON inquiries FOR ALL USING (true) WITH CHECK (true);

-- Reviews Policies
DROP POLICY IF EXISTS "Allow public all access on reviews" ON reviews;
CREATE POLICY "Allow public all access on reviews" ON reviews FOR ALL USING (true) WITH CHECK (true);

-- Subscribers Policies
DROP POLICY IF EXISTS "Allow public all access on subscribers" ON subscribers;
CREATE POLICY "Allow public all access on subscribers" ON subscribers FOR ALL USING (true) WITH CHECK (true);

-- Insert initial luxury testimonials for demonstration
INSERT INTO reviews (full_name, city_country, rating, favorite_scent, review_text, is_approved)
VALUES 
('Lord Alexander Sterling', 'London, UK', 5, 'Imperial Oud Royale', 'The bespoke olfactory consultation with JCD Perfumes was an exceptional experience. The depth and longevity of the Oud Royale formulation is truly royal.', true),
('Isabella De Luca', 'Milan, Italy', 5, 'Velvet Amber Noir', 'An enchanting symphony of Madagascan vanilla and smoky amber. JCD has redefined haute perfumery with unmatched artistry.', true),
('Sheikh Mansoor Al-Zahrani', 'Dubai, UAE', 5, 'Celestial Taif Rose', 'Sublime purity and timeless elegance. The custom flacon and personalized notes were crafted to perfection.', true)
ON CONFLICT DO NOTHING;
