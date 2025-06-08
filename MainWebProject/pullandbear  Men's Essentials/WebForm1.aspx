<%@ Page Title="" Language="C#" MasterPageFile="~/master/Site1.Master" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="MainWebProject.pullandbear__Men_s_Essentials.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="StyleSheet1.css" rel="stylesheet" />
    <link href="../../master/StyleSheet1.css" rel="stylesheet" />
    <link href="https://fonts.googleapis.com/css2?family=Anton&display=swap" rel="stylesheet">
    <style>
        body {
            background-color: #f5f5f5;
            overflow-x: hidden;
        }

        .hero-section {
            position: relative;
            height: 500px;
            background: #34495e;
            overflow: hidden;
        }

        .hero-section img {
            width: 100%;
            height: 100%;
            object-fit: cover;
            opacity: 0.85;
        }

        .hero-overlay {
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: linear-gradient(to bottom, rgba(52,73,94,0.3) 0%, rgba(52,73,94,0.5) 100%);
            display: flex;
            align-items: center;
            justify-content: center;
        }

        .hero-content {
            text-align: center;
            color: white;
        }

        .hero-content h1 {
            font-family: "Anton SC", sans-serif;
            font-size: 5rem;
            margin-bottom: 20px;
            text-transform: uppercase;
            letter-spacing: 5px;
        }

        .hero-content p {
            font-size: 1.3rem;
            max-width: 600px;
            margin: 0 auto;
        }

        .content-section {
            padding: 80px 40px;
            max-width: 1200px;
            margin: 0 auto;
        }

        .section-header {
            text-align: center;
            margin-bottom: 60px;
        }

        .section-header h2 {
            font-family: "Anton SC", sans-serif;
            font-size: 3rem;
            position: relative;
            display: inline-block;
        }

        .section-header h2:after {
            content: "";
            position: absolute;
            bottom: -15px;
            left: 50%;
            transform: translateX(-50%);
            width: 80px;
            height: 4px;
            background: #3498db;
        }

        .philosophy-section {
            background: white;
            padding: 60px;
            border-radius: 20px;
            box-shadow: 0 10px 30px rgba(0,0,0,0.08);
            margin-bottom: 80px;
        }

        .philosophy-content {
            max-width: 800px;
            margin: 0 auto;
            text-align: center;
        }

        .philosophy-content h3 {
            font-family: "Anton SC", sans-serif;
            font-size: 2.5rem;
            margin-bottom: 30px;
            color: #34495e;
        }

        .philosophy-content p {
            font-size: 1.2rem;
            line-height: 1.8;
            color: #555;
            margin-bottom: 20px;
        }

        .style-categories {
            background: #34495e;
            color: white;
            padding: 80px 0;
            margin: 0;
        }

        .categories-grid {
            display: grid;
            grid-template-columns: repeat(3, 1fr);
            gap: 40px;
            max-width: 1200px;
            margin: 0 auto;
            padding: 0 40px;
        }

        .category-card {
            text-align: center;
            padding: 40px;
            background: rgba(255,255,255,0.05);
            border-radius: 15px;
            backdrop-filter: blur(10px);
            transition: all 0.3s ease;
        }

        .category-card:hover {
            background: rgba(255,255,255,0.1);
            transform: translateY(-5px);
        }

        .category-icon {
            font-size: 3rem;
            margin-bottom: 20px;
        }

        .category-title {
            font-family: "Anton SC", sans-serif;
            font-size: 1.8rem;
            margin-bottom: 15px;
        }

        .category-desc {
            opacity: 0.9;
            line-height: 1.6;
        }

        .lookbook-section {
            padding: 80px 40px;
            background: #f5f5f5;
        }

        .lookbook-grid {
            display: grid;
            grid-template-columns: 1fr 1fr;
            gap: 60px;
            align-items: center;
            margin-top: 40px;
        }

        .lookbook-content h3 {
            font-family: "Anton SC", sans-serif;
            font-size: 2rem;
            margin-bottom: 20px;
        }

        .lookbook-content p {
            line-height: 1.8;
            color: #555;
            margin-bottom: 20px;
        }

        .style-tips {
            list-style: none;
            padding: 0;
            margin-top: 20px;
        }

        .style-tips li {
            padding: 10px 0;
            border-bottom: 1px solid #ddd;
        }

        .style-tips li:before {
            content: "▸";
            margin-right: 10px;
            color: #3498db;
            font-weight: bold;
        }

        .lookbook-image {
            height: 400px;
            overflow: hidden;
            border-radius: 15px;
            box-shadow: 0 10px 30px rgba(0,0,0,0.1);
        }

        .lookbook-image img {
            width: 100%;
            height: 100%;
            object-fit: cover;
        }

        .essentials-grid-section {
            background: white;
            padding: 80px 40px;
        }

        .essentials-grid {
            display: grid;
            grid-template-columns: repeat(4, 1fr);
            gap: 30px;
            margin-top: 40px;
        }

        .essential-card {
            text-align: center;
            padding: 30px;
            background: #ecf0f1;
            border-radius: 15px;
            transition: all 0.3s ease;
        }

        .essential-card:hover {
            transform: translateY(-5px);
            box-shadow: 0 10px 30px rgba(0,0,0,0.1);
            background: #e8edef;
        }

        .essential-icon {
            font-size: 2.5rem;
            margin-bottom: 15px;
        }

        .essential-name {
            font-family: "Anton SC", sans-serif;
            font-size: 1.3rem;
            margin-bottom: 10px;
        }

        .essential-desc {
            color: #666;
            font-size: 0.95rem;
        }

        .outfit-builder {
            background: linear-gradient(135deg, #3498db 0%, #2980b9 100%);
            color: white;
            padding: 80px 40px;
            margin-top: 80px;
        }

        .outfit-content {
            max-width: 800px;
            margin: 0 auto;
            text-align: center;
        }

        .outfit-content h3 {
            font-family: "Anton SC", sans-serif;
            font-size: 2.5rem;
            margin-bottom: 30px;
        }

        .outfit-content p {
            font-size: 1.2rem;
            line-height: 1.8;
            margin-bottom: 30px;
        }

        .outfit-grid {
            display: grid;
            grid-template-columns: repeat(3, 1fr);
            gap: 30px;
            margin-top: 40px;
        }

        .outfit-card {
            background: rgba(255,255,255,0.1);
            padding: 30px;
            border-radius: 15px;
            backdrop-filter: blur(10px);
        }

        .outfit-card h4 {
            font-family: "Anton SC", sans-serif;
            font-size: 1.5rem;
            margin-bottom: 15px;
        }

        .outfit-card p {
            font-size: 1rem;
            line-height: 1.6;
        }

        .back-link {
            display: inline-block;
            margin: 40px;
            padding: 15px 30px;
            background: #3498db;
            color: white;
            text-decoration: none;
            border-radius: 30px;
            font-weight: bold;
            transition: all 0.3s ease;
        }

        .back-link:hover {
            background: #2980b9;
            transform: translateY(-2px);
        }

        @media (max-width: 768px) {
            .hero-content h1 {
                font-size: 3rem;
            }

            .categories-grid {
                grid-template-columns: 1fr;
            }

            .lookbook-grid {
                grid-template-columns: 1fr;
            }

            .essentials-grid {
                grid-template-columns: repeat(2, 1fr);
            }

            .outfit-grid {
                grid-template-columns: 1fr;
            }
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="hero-section">
        <img src="https://images.unsplash.com/photo-1480429370139-e0132c086e2a?w=1600&h=500&fit=crop" alt="Men's Fashion">
        <div class="hero-overlay">
            <div class="hero-content">
                <h1>Men's Essentials</h1>
                <p>Elevate your everyday with urban style</p>
            </div>
        </div>
    </div>

    <div class="content-section">
        <div class="section-header">
            <h2>Modern Masculinity</h2>
        </div>
        
        <div class="philosophy-section">
            <div class="philosophy-content">
                <h3>Redefining Men's Style</h3>
                <p>Pull&Bear Men's Essentials celebrates the modern man who values both comfort and style. Our collection is built on the foundation of versatility—pieces that work as hard as you do, transitioning seamlessly from work to weekend.</p>
                <p>We understand that today's man wants clothing that reflects his dynamic lifestyle. Whether you're hitting the gym, meeting friends, or exploring the city, our essentials have you covered with style that doesn't try too hard.</p>
            </div>
        </div>
    </div>

    <div class="style-categories">
        <div class="section-header">
            <h2 style="color: white;">Style DNA</h2>
        </div>
        
        <div class="categories-grid">
            <div class="category-card">
                <div class="category-icon">🏙️</div>
                <div class="category-title">Urban Explorer</div>
                <div class="category-desc">Street-smart pieces for the city dweller</div>
            </div>
            <div class="category-card">
                <div class="category-icon">🎯</div>
                <div class="category-title">Minimalist</div>
                <div class="category-desc">Clean lines and neutral tones for effortless style</div>
            </div>
            <div class="category-card">
                <div class="category-icon">🌊</div>
                <div class="category-title">Relaxed Fit</div>
                <div class="category-desc">Comfortable pieces that never compromise on style</div>
            </div>
        </div>
    </div>

    <div class="lookbook-section">
        <div class="section-header">
            <h2>Style Guide</h2>
        </div>
        
        <div class="lookbook-grid">
            <div class="lookbook-content">
                <h3>Building Your Wardrobe</h3>
                <p>A great wardrobe starts with the essentials. Our guide helps you build a collection that works for every occasion, focusing on quality pieces that stand the test of time.</p>
                <ul class="style-tips">
                    <li>Start with neutral basics that mix and match easily</li>
                    <li>Invest in quality denim - it's the foundation of casual style</li>
                    <li>Layer smartly with hoodies, jackets, and overshirts</li>
                    <li>Choose versatile footwear that goes from day to night</li>
                    <li>Add personality with accessories and statement pieces</li>
                </ul>
            </div>
            <div class="lookbook-image">
                <img src="https://images.unsplash.com/photo-1516257984-b1b4d707412e?w=600&h=400&fit=crop" alt="Men's Style Guide">
            </div>
        </div>

        <div class="lookbook-grid" style="margin-top: 60px;">
            <div class="lookbook-image">
                <img src="https://images.unsplash.com/photo-1506794778202-cad84cf45f1d?w=600&h=400&fit=crop" alt="Urban Style">
            </div>
            <div class="lookbook-content">
                <h3>Urban Uniform</h3>
                <p>Master the art of city dressing with our urban essentials. Think comfortable joggers paired with sleek sneakers, oversized tees layered under denim jackets, and accessories that add edge to any outfit.</p>
                <p>The key is finding pieces that reflect your personality while maintaining practicality. Our collection makes it easy to look put-together without overthinking it.</p>
            </div>
        </div>
    </div>

    <div class="essentials-grid-section">
        <div class="section-header">
            <h2>Core Essentials</h2>
        </div>
        
        <div class="essentials-grid">
            <div class="essential-card">
                <div class="essential-icon">👔</div>
                <div class="essential-name">Essential Tees</div>
                <div class="essential-desc">Premium cotton basics in classic and bold colors</div>
            </div>
            <div class="essential-card">
                <div class="essential-icon">👖</div>
                <div class="essential-name">Denim Collection</div>
                <div class="essential-desc">From slim to relaxed, find your perfect fit</div>
            </div>
            <div class="essential-card">
                <div class="essential-icon">🧥</div>
                <div class="essential-name">Outerwear</div>
                <div class="essential-desc">Jackets and hoodies for every season</div>
            </div>
            <div class="essential-card">
                <div class="essential-icon">👟</div>
                <div class="essential-name">Footwear</div>
                <div class="essential-desc">Sneakers and boots to complete any look</div>
            </div>
        </div>
    </div>

    <div class="outfit-builder">
        <div class="outfit-content">
            <h3>Build Your Look</h3>
            <p>Mix and match our essentials to create outfits that work for any occasion</p>
            
            <div class="outfit-grid">
                <div class="outfit-card">
                    <h4>Casual Friday</h4>
                    <p>Dark denim + White tee + Bomber jacket + White sneakers</p>
                </div>
                <div class="outfit-card">
                    <h4>Weekend Vibes</h4>
                    <p>Joggers + Graphic hoodie + Denim overshirt + High-tops</p>
                </div>
                <div class="outfit-card">
                    <h4>Night Out</h4>
                    <p>Black jeans + Plain shirt + Leather jacket + Chelsea boots</p>
                </div>
            </div>
        </div>
    </div>

    <center>
        <a href="../PullandBear/WebForm1.aspx" class="back-link">← Back to Pull&amp;Bear Collections</a>
    </center>
</asp:Content>
