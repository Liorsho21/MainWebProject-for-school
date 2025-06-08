<%@ Page Title="" Language="C#" MasterPageFile="~/master/Site1.Master" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="MainWebProject.Bershka_Footwear_Page.WebForm1" %>
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
            background: #000;
            overflow: hidden;
        }

        .hero-section img {
            width: 100%;
            height: 100%;
            object-fit: cover;
            opacity: 0.8;
        }

        .hero-overlay {
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: linear-gradient(to bottom, rgba(0,0,0,0.3) 0%, rgba(0,0,0,0.6) 100%);
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
            background: #000;
        }

        .journey-section {
            background: white;
            padding: 60px;
            border-radius: 20px;
            box-shadow: 0 10px 30px rgba(0,0,0,0.08);
            margin-bottom: 80px;
        }

        .journey-content {
            max-width: 800px;
            margin: 0 auto;
            text-align: center;
        }

        .journey-content h3 {
            font-family: "Anton SC", sans-serif;
            font-size: 2.5rem;
            margin-bottom: 30px;
        }

        .journey-content p {
            font-size: 1.2rem;
            line-height: 1.8;
            color: #555;
            margin-bottom: 20px;
        }

        .categories-section {
            background: #1a1a1a;
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
            transition: all 0.3s ease;
            border: 1px solid rgba(255,255,255,0.1);
        }

        .category-card:hover {
            background: rgba(255,255,255,0.1);
            transform: translateY(-5px);
            border-color: rgba(255,255,255,0.3);
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

        .innovation-section {
            padding: 80px 40px;
            background: #f5f5f5;
        }

        .innovation-grid {
            display: grid;
            grid-template-columns: 1fr 1fr;
            gap: 60px;
            align-items: center;
            margin-top: 40px;
        }

        .innovation-content h3 {
            font-family: "Anton SC", sans-serif;
            font-size: 2rem;
            margin-bottom: 20px;
        }

        .innovation-content p {
            line-height: 1.8;
            color: #555;
            margin-bottom: 20px;
        }

        .features-list {
            list-style: none;
            padding: 0;
            margin-top: 30px;
        }

        .features-list li {
            padding: 10px 0;
            color: #666;
        }

        .features-list li:before {
            content: "→";
            color: #000;
            font-weight: bold;
            margin-right: 10px;
        }

        .innovation-image {
            height: 400px;
            overflow: hidden;
            border-radius: 15px;
            box-shadow: 0 10px 30px rgba(0,0,0,0.1);
        }

        .innovation-image img {
            width: 100%;
            height: 100%;
            object-fit: cover;
        }

        .care-section {
            background: white;
            padding: 80px 40px;
        }

        .care-grid {
            display: grid;
            grid-template-columns: repeat(4, 1fr);
            gap: 30px;
            margin-top: 40px;
        }

        .care-card {
            text-align: center;
            padding: 30px;
            background: #f5f5f5;
            border-radius: 15px;
            transition: all 0.3s ease;
        }

        .care-card:hover {
            transform: translateY(-5px);
            box-shadow: 0 10px 30px rgba(0,0,0,0.1);
        }

        .care-icon {
            font-size: 2.5rem;
            margin-bottom: 15px;
        }

        .care-title {
            font-family: "Anton SC", sans-serif;
            font-size: 1.3rem;
            margin-bottom: 10px;
        }

        .care-desc {
            color: #666;
            font-size: 0.95rem;
        }

        .style-section {
            background: linear-gradient(135deg, #000 0%, #1a1a1a 100%);
            color: white;
            padding: 80px 40px;
            text-align: center;
        }

        .style-content {
            max-width: 800px;
            margin: 0 auto;
        }

        .style-content h3 {
            font-family: "Anton SC", sans-serif;
            font-size: 2.5rem;
            margin-bottom: 30px;
        }

        .style-content p {
            font-size: 1.2rem;
            line-height: 1.8;
            margin-bottom: 20px;
            opacity: 0.9;
        }

        .back-link {
            display: inline-block;
            margin: 40px;
            padding: 15px 30px;
            background: #000;
            color: white;
            text-decoration: none;
            border-radius: 30px;
            font-weight: bold;
            transition: all 0.3s ease;
        }

        .back-link:hover {
            background: #333;
            transform: translateY(-2px);
        }

        @media (max-width: 768px) {
            .hero-content h1 {
                font-size: 3rem;
            }

            .categories-grid {
                grid-template-columns: 1fr;
            }

            .innovation-grid {
                grid-template-columns: 1fr;
            }

            .care-grid {
                grid-template-columns: repeat(2, 1fr);
            }
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="hero-section">
        <img src="https://images.unsplash.com/photo-1460353581641-37baddab0fa2?w=1600&amp;h=500&amp;fit=crop" alt="Footwear Collection">
        <div class="hero-overlay">
            <div class="hero-content">
                <h1>Footwear</h1>
                <p>Every step tells your story</p>
            </div>
        </div>
    </div>


    <div class="content-section">
        <div class="section-header">
            <h2>The Footwear Journey</h2>
        </div>
        
        <div class="journey-section">
            <div class="journey-content">
                <h3>Where Fashion Meets Function</h3>
                <p>Shoes are more than just accessories—they're the foundation of every outfit and the companion to every journey. From the first step out your door to the last dance of the night, the right footwear empowers you to go further, stand taller, and express yourself with every stride.</p>
                <p>At Bershka, we understand that each pair of shoes represents a different facet of your life. That's why our collection spans from comfortable everyday sneakers to statement heels that command attention.</p>
            </div>
        </div>
    </div>


    <div class="categories-section">
        <div class="section-header">
            <h2 style="color: white;">Footwear Categories</h2>
        </div>
        
        <div class="categories-grid">
            <div class="category-card">
                <div class="category-icon">👟</div>
                <div class="category-title">Sneakers</div>
                <div class="category-desc">From classic canvas to cutting-edge designs, our sneakers blend comfort with street-ready style</div>
            </div>
            <div class="category-card">
                <div class="category-icon">👠</div>
                <div class="category-title">Heels & Sandals</div>
                <div class="category-desc">Elevate any outfit with our selection of heels, wedges, and strappy sandals</div>
            </div>
            <div class="category-card">
                <div class="category-icon">👢</div>
                <div class="category-title">Boots</div>
                <div class="category-desc">From ankle boots to knee-highs, perfect for making a statement in any season</div>
            </div>
        </div>
    </div>

    <div class="innovation-section">
        <div class="section-header">
            <h2>Innovation & Comfort</h2>
        </div>
        
        <div class="innovation-grid">
            <div class="innovation-content">
                <h3>Technology Meets Style</h3>
                <p>Modern footwear is a marvel of engineering and design. We incorporate the latest technologies to ensure every step is supported, cushioned, and comfortable.</p>
                <p>From memory foam insoles to flexible outsoles, our shoes are designed to move with you through your dynamic lifestyle.</p>
                <ul class="features-list">
                    <li>Breathable materials for all-day comfort</li>
                    <li>Ergonomic designs that support natural movement</li>
                    <li>Sustainable materials and ethical production</li>
                    <li>Weather-resistant options for every season</li>
                </ul>
            </div>
            <div class="innovation-image">
                <img src="https://images.unsplash.com/photo-1556906781-9a412961c28c?w=600&amp;h=400&amp;fit=crop" alt="Footwear Innovation">
            </div>
        </div>
    </div>


    <div class="care-section">
        <div class="section-header">
            <h2>Shoe Care Guide</h2>
        </div>
        
        <div class="care-grid">
            <div class="care-card">
                <div class="care-icon">🧽</div>
                <div class="care-title">Clean Regularly</div>
                <div class="care-desc">Keep your shoes fresh with proper cleaning techniques for each material</div>
            </div>
            <div class="care-card">
                <div class="care-icon">☀️</div>
                <div class="care-title">Dry Properly</div>
                <div class="care-desc">Always air dry away from direct heat to maintain shape and quality</div>
            </div>
            <div class="care-card">
                <div class="care-icon">🔄</div>
                <div class="care-title">Rotate Pairs</div>
                <div class="care-desc">Give your shoes time to breathe between wears for longer life</div>
            </div>
            <div class="care-card">
                <div class="care-icon">📦</div>
                <div class="care-title">Store Smart</div>
                <div class="care-desc">Use shoe trees and proper storage to maintain shape</div>
            </div>
        </div>
    </div>


    <div class="style-section">
        <div class="style-content">
            <h3>Your Style, Your Steps</h3>
            <p>Fashion is a journey, not a destination. Every pair of shoes in your collection represents a different chapter of your story—the places you've been, the moments you've lived, and the dreams you're chasing.</p>
            <p>Choose footwear that not only looks good but makes you feel unstoppable. Because when you're comfortable in your shoes, you're ready to conquer the world.</p>
        </div>
    </div>

    <center>
        <a href="../Bershka/WebForm1.aspx" class="back-link">← Back to Bershka Collections</a>
    </center>
</asp:Content>
