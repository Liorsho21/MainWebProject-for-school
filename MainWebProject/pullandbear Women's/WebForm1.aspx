<%@ Page Title="" Language="C#" MasterPageFile="~/master/Site1.Master" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="MainWebProject.pullandbear_Women_s.WebForm1" %>
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
            background: #e91e63;
            overflow: hidden;
        }

        .hero-section img {
            width: 100%;
            height: 100%;
            object-fit: cover;
            opacity: 0.9;
        }

        .hero-overlay {
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: linear-gradient(to bottom, rgba(233,30,99,0.2) 0%, rgba(233,30,99,0.4) 100%);
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
            background: #e91e63;
        }

        .style-philosophy {
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
            color: #e91e63;
        }

        .philosophy-content p {
            font-size: 1.2rem;
            line-height: 1.8;
            color: #555;
            margin-bottom: 20px;
        }

        .categories-section {
            background: linear-gradient(135deg, #e91e63 0%, #c2185b 100%);
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
            background: rgba(255,255,255,0.1);
            border-radius: 15px;
            backdrop-filter: blur(10px);
            transition: all 0.3s ease;
        }

        .category-card:hover {
            background: rgba(255,255,255,0.2);
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

        .trends-section {
            padding: 80px 40px;
            background: #f5f5f5;
        }

        .trends-grid {
            display: grid;
            grid-template-columns: 1fr 1fr;
            gap: 60px;
            align-items: center;
            margin-top: 40px;
        }

        .trends-content h3 {
            font-family: "Anton SC", sans-serif;
            font-size: 2rem;
            margin-bottom: 20px;
        }

        .trends-content p {
            line-height: 1.8;
            color: #555;
            margin-bottom: 20px;
        }

        .trend-list {
            list-style: none;
            padding: 0;
            margin-top: 20px;
        }

        .trend-list li {
            padding: 10px 0;
            border-bottom: 1px solid #ddd;
        }

        .trend-list li:before {
            content: "💖";
            margin-right: 10px;
        }

        .trends-image {
            height: 400px;
            overflow: hidden;
            border-radius: 15px;
            box-shadow: 0 10px 30px rgba(0,0,0,0.1);
        }

        .trends-image img {
            width: 100%;
            height: 100%;
            object-fit: cover;
        }

        .essentials-section {
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
            background: #fce4ec;
            border-radius: 15px;
            transition: all 0.3s ease;
        }

        .essential-card:hover {
            transform: translateY(-5px);
            box-shadow: 0 10px 30px rgba(0,0,0,0.1);
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

        .back-link {
            display: inline-block;
            margin: 40px;
            padding: 15px 30px;
            background: #e91e63;
            color: white;
            text-decoration: none;
            border-radius: 30px;
            font-weight: bold;
            transition: all 0.3s ease;
        }

        .back-link:hover {
            background: #c2185b;
            transform: translateY(-2px);
        }

        @media (max-width: 768px) {
            .hero-content h1 {
                font-size: 3rem;
            }

            .categories-grid {
                grid-template-columns: 1fr;
            }

            .trends-grid {
                grid-template-columns: 1fr;
            }

            .essentials-grid {
                grid-template-columns: repeat(2, 1fr);
            }
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="hero-section">
        <img src="https://images.unsplash.com/photo-1503342217505-b0a15ec3261c?w=1600&h=500&fit=crop" alt="Women's Fashion">
        <div class="hero-overlay">
            <div class="hero-content">
                <h1>Women's Style</h1>
                <p>Express yourself with confidence and grace</p>
            </div>
        </div>
    </div>

    <div class="content-section">
        <div class="section-header">
            <h2>Fashion Philosophy</h2>
        </div>
        
        <div class="style-philosophy">
            <div class="philosophy-content">
                <h3>Empowering Every Woman</h3>
                <p>Pull&Bear's Women's collection is designed for the modern woman who values both style and substance. Our pieces reflect the diverse lives of women today—from power meetings to weekend adventures, from creative pursuits to quiet moments of self-care.</p>
                <p>We believe fashion should empower, not constrain. That's why our collection focuses on versatile pieces that mix and match effortlessly, allowing you to create looks that are uniquely yours.</p>
            </div>
        </div>
    </div>

    <div class="categories-section">
        <div class="section-header">
            <h2 style="color: white;">Style Categories</h2>
        </div>
        
        <div class="categories-grid">
            <div class="category-card">
                <div class="category-icon">👗</div>
                <div class="category-title">Everyday Essentials</div>
                <div class="category-desc">Timeless basics that form the foundation of any wardrobe</div>
            </div>
            <div class="category-card">
                <div class="category-icon">✨</div>
                <div class="category-title">Weekend Vibes</div>
                <div class="category-desc">Relaxed pieces perfect for brunch dates and city strolls</div>
            </div>
            <div class="category-card">
                <div class="category-icon">🌙</div>
                <div class="category-title">Night Out</div>
                <div class="category-desc">Statement pieces for when you want to turn heads</div>
            </div>
        </div>
    </div>

    <div class="trends-section">
        <div class="section-header">
            <h2>Trending Now</h2>
        </div>
        
        <div class="trends-grid">
            <div class="trends-content">
                <h3>This Season's Must-Haves</h3>
                <p>Stay ahead of the curve with our carefully curated selection of this season's hottest trends. From oversized blazers to feminine florals, we've got everything you need to refresh your wardrobe.</p>
                <ul class="trend-list">
                    <li>Pastel Power - Soft hues for a fresh look</li>
                    <li>Denim Renaissance - New takes on classic jeans</li>
                    <li>Print Play - Mix and match patterns like a pro</li>
                    <li>Comfort Chic - Loungewear goes street-style</li>
                    <li>Sustainable Style - Eco-friendly fashion forward</li>
                </ul>
            </div>
            <div class="trends-image">
                <img src="https://images.unsplash.com/photo-1490481651871-ab68de25d43d?w=600&h=400&fit=crop" alt="Fashion Trends">
            </div>
        </div>
    </div>

    <div class="essentials-section">
        <div class="section-header">
            <h2>Wardrobe Essentials</h2>
        </div>
        
        <div class="essentials-grid">
            <div class="essential-card">
                <div class="essential-icon">👚</div>
                <div class="essential-name">Perfect Tees</div>
                <div class="essential-desc">Soft, versatile basics in every color</div>
            </div>
            <div class="essential-card">
                <div class="essential-icon">👖</div>
                <div class="essential-name">Denim Dreams</div>
                <div class="essential-desc">From skinny to wide-leg, find your perfect fit</div>
            </div>
            <div class="essential-card">
                <div class="essential-icon">🧥</div>
                <div class="essential-name">Layer Love</div>
                <div class="essential-desc">Jackets and cardigans for every season</div>
            </div>
            <div class="essential-card">
                <div class="essential-icon">👟</div>
                <div class="essential-name">Shoe Game</div>
                <div class="essential-desc">From sneakers to heels, complete your look</div>
            </div>
        </div>
    </div>

    <center>
        <a href="../PullandBear/WebForm1.aspx" class="back-link">← Back to Pull&amp;Bear Collections</a>
    </center>
</asp:Content>
