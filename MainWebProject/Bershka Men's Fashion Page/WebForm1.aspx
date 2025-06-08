<%@ Page Title="" Language="C#" MasterPageFile="~/master/Site1.Master" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="MainWebProject.Bershka_Men_s_Fashion_Page.WebForm1" %>
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
            background: #1a1a1a;
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

        .modern-content {
            background: white;
            padding: 60px;
            border-radius: 20px;
            box-shadow: 0 10px 30px rgba(0,0,0,0.08);
            margin-bottom: 80px;
            text-align: center;
        }

        .modern-content h3 {
            font-family: "Anton SC", sans-serif;
            font-size: 2.5rem;
            margin-bottom: 30px;
        }

        .modern-content p {
            font-size: 1.2rem;
            line-height: 1.8;
            color: #555;
            max-width: 800px;
            margin: 0 auto 20px;
        }

        .evolution-section {
            background: #111;
            color: white;
            padding: 80px 0;
            margin: 0;
        }

        .evolution-grid {
            display: grid;
            grid-template-columns: repeat(3, 1fr);
            gap: 40px;
            max-width: 1200px;
            margin: 0 auto;
            padding: 0 40px;
        }

        .era-card {
            text-align: center;
            padding: 40px;
            background: rgba(255,255,255,0.05);
            border-radius: 15px;
            transition: all 0.3s ease;
        }

        .era-card:hover {
            background: rgba(255,255,255,0.1);
            transform: translateY(-5px);
        }

        .era-icon {
            font-size: 3rem;
            margin-bottom: 20px;
        }

        .era-title {
            font-family: "Anton SC", sans-serif;
            font-size: 1.8rem;
            margin-bottom: 15px;
        }

        .era-desc {
            opacity: 0.9;
            line-height: 1.6;
        }

        .essentials-section {
            padding: 80px 40px;
            background: #f5f5f5;
        }

        .essentials-grid {
            display: grid;
            grid-template-columns: 1fr 1fr;
            gap: 60px;
            align-items: center;
            margin-top: 40px;
        }

        .essentials-content h3 {
            font-family: "Anton SC", sans-serif;
            font-size: 2rem;
            margin-bottom: 20px;
        }

        .essentials-list {
            list-style: none;
            padding: 0;
        }

        .essentials-list li {
            padding: 12px 0;
            border-bottom: 1px solid #ddd;
            font-size: 1.1rem;
        }

        .essentials-list li:before {
            content: "✓";
            color: #000;
            font-weight: bold;
            margin-right: 10px;
        }

        .essentials-image {
            height: 400px;
            overflow: hidden;
            border-radius: 15px;
            box-shadow: 0 10px 30px rgba(0,0,0,0.1);
        }

        .essentials-image img {
            width: 100%;
            height: 100%;
            object-fit: cover;
        }

        .lifestyle-section {
            padding: 80px 40px;
            background: white;
        }

        .lifestyle-grid {
            display: grid;
            grid-template-columns: repeat(4, 1fr);
            gap: 30px;
            margin-top: 40px;
        }

        .lifestyle-card {
            text-align: center;
            padding: 30px;
            background: #f5f5f5;
            border-radius: 15px;
            transition: all 0.3s ease;
        }

        .lifestyle-card:hover {
            transform: translateY(-5px);
            box-shadow: 0 10px 30px rgba(0,0,0,0.1);
        }

        .lifestyle-icon {
            font-size: 2.5rem;
            margin-bottom: 15px;
        }

        .lifestyle-title {
            font-family: "Anton SC", sans-serif;
            font-size: 1.3rem;
            margin-bottom: 10px;
        }

        .lifestyle-desc {
            color: #666;
            font-size: 0.95rem;
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

            .evolution-grid {
                grid-template-columns: 1fr;
            }

            .essentials-grid {
                grid-template-columns: 1fr;
            }

            .lifestyle-grid {
                grid-template-columns: repeat(2, 1fr);
            }
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <div class="hero-section">
        <img src="https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?w=1600&h=500&fit=crop" alt="Men's Fashion">
        <div class="hero-overlay">
            <div class="hero-content">
                <h1>Men's Fashion</h1>
                <p>Contemporary style for the modern gentleman</p>
            </div>
        </div>
    </div>

    <div class="content-section">
        <div class="section-header">
            <h2>The Modern Man</h2>
        </div>
        
        <div class="modern-content">
            <h3>Redefining Masculinity Through Style</h3>
            <p>Today's man isn't confined by traditional fashion rules. He mixes streetwear with tailoring, values comfort as much as style, and isn't afraid to express himself through his wardrobe choices.</p>
            <p>At Bershka, we understand that modern masculinity is about authenticity, confidence, and the freedom to dress for the life you lead—whether that's in the office, on the streets, or anywhere in between.</p>
        </div>
    </div>

    <div class="evolution-section">
        <div class="section-header">
            <h2 style="color: white;">Style Evolution</h2>
        </div>
        
        <div class="evolution-grid">
            <div class="era-card">
                <div class="era-icon">🎩</div>
                <div class="era-title">Classic Heritage</div>
                <div class="era-desc">Timeless pieces that never go out of style, updated with modern fits and fabrics</div>
            </div>
            <div class="era-card">
                <div class="era-icon">🏃</div>
                <div class="era-title">Athleisure Rise</div>
                <div class="era-desc">Performance meets style in clothing that moves from gym to street seamlessly</div>
            </div>
            <div class="era-card">
                <div class="era-icon">🌍</div>
                <div class="era-title">Global Influence</div>
                <div class="era-desc">Inspired by cultures worldwide, creating a unique fusion of styles</div>
            </div>
        </div>
    </div>

    <div class="essentials-section">
        <div class="section-header">
            <h2>Wardrobe Essentials</h2>
        </div>
        
        <div class="essentials-grid">
            <div class="essentials-content">
                <h3>Building Your Foundation</h3>
                <ul class="essentials-list">
                    <li>Well-fitted denim in classic and black washes</li>
                    <li>Quality basic tees in neutral colors</li>
                    <li>Versatile outerwear for layering</li>
                    <li>Comfortable sneakers and dress shoes</li>
                    <li>Statement pieces that show personality</li>
                    <li>Accessories that complete the look</li>
                </ul>
            </div>
            <div class="essentials-image">
                <img src="https://images.unsplash.com/photo-1480429370139-e0132c086e2a?w=600&h=400&fit=crop" alt="Men's Essentials">
            </div>
        </div>
    </div>

    <div class="lifestyle-section">
        <div class="section-header">
            <h2>Live Your Style</h2>
        </div>
        
        <div class="lifestyle-grid">
            <div class="lifestyle-card">
                <div class="lifestyle-icon">💼</div>
                <div class="lifestyle-title">Work Ready</div>
                <div class="lifestyle-desc">Smart casual pieces perfect for modern office</div>
            </div>
            <div class="lifestyle-card">
                <div class="lifestyle-icon">🌃</div>
                <div class="lifestyle-title">Urban Explorer</div>
                <div class="lifestyle-desc">Street-smart style for city adventures</div>
            </div>
            <div class="lifestyle-card">
                <div class="lifestyle-icon">🏖️</div>
                <div class="lifestyle-title">Weekend Vibes</div>
                <div class="lifestyle-desc">Relaxed fits for downtime and leisure</div>
            </div>
            <div class="lifestyle-card">
                <div class="lifestyle-icon">🎉</div>
                <div class="lifestyle-title">Night Out</div>
                <div class="lifestyle-desc">Statement pieces for memorable evenings</div>
            </div>
        </div>
    </div>

    <center>
        <a href="../Bershka/WebForm1.aspx" class="back-link">← Back to Bershka Collections</a>
    </center>
</asp:Content>
