<%@ Page Title="" Language="C#" MasterPageFile="~/master/Site1.Master" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="MainWebProject.Streetwear_Essentials.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <link href="StyleSheet1.css" rel="stylesheet" />
    <link href="../../master/StyleSheet1.css" rel="stylesheet" />
    <link href="https://fonts.googleapis.com/css2?family=Anton&display=swap" rel="stylesheet">
    <style>
        body {
            background-color: #f5f5f5;
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
            opacity: 0.7;
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

        .culture-grid {
            display: grid;
            grid-template-columns: 1fr 1fr;
            gap: 60px;
            align-items: center;
            margin-bottom: 80px;
        }

        .culture-content h3 {
            font-family: "Anton SC", sans-serif;
            font-size: 2rem;
            margin-bottom: 20px;
        }

        .culture-content p {
            line-height: 1.8;
            color: #555;
            margin-bottom: 20px;
        }

        .culture-image {
            height: 400px;
            overflow: hidden;
            border-radius: 15px;
            box-shadow: 0 10px 30px rgba(0,0,0,0.1);
        }

        .culture-image img {
            width: 100%;
            height: 100%;
            object-fit: cover;
        }

        .elements-section {
            background: #1a1a1a;
            color: white;
            padding: 80px 0;
            margin: 0 -40px;
        }

        .elements-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
            gap: 40px;
            max-width: 1200px;
            margin: 0 auto;
            padding: 0 40px;
        }

        .element-card {
            text-align: center;
            padding: 40px;
            background: rgba(255,255,255,0.05);
            border-radius: 15px;
            transition: all 0.3s ease;
        }

        .element-card:hover {
            background: rgba(255,255,255,0.1);
            transform: translateY(-5px);
        }

        .element-icon {
            font-size: 3rem;
            margin-bottom: 20px;
        }

        .element-card h3 {
            font-family: "Anton SC", sans-serif;
            font-size: 1.8rem;
            margin-bottom: 15px;
        }

        .element-card p {
            opacity: 0.9;
            line-height: 1.6;
        }


        .influence-section {
            padding: 80px 40px;
            background: white;
        }

        .influence-content {
            max-width: 800px;
            margin: 0 auto;
            text-align: center;
        }

        .influence-content h3 {
            font-family: "Anton SC", sans-serif;
            font-size: 2.5rem;
            margin-bottom: 30px;
        }

        .influence-content p {
            font-size: 1.2rem;
            line-height: 1.8;
            color: #555;
            margin-bottom: 20px;
        }


        .gallery-section {
            padding: 80px 40px;
            background: #f5f5f5;
        }

        .gallery-grid {
            display: grid;
            grid-template-columns: repeat(3, 1fr);
            gap: 20px;
            margin-top: 40px;
        }

        .gallery-item {
            height: 300px;
            overflow: hidden;
            border-radius: 10px;
            position: relative;
            cursor: pointer;
            transition: all 0.3s ease;
        }

        .gallery-item:hover {
            transform: scale(1.02);
            box-shadow: 0 10px 30px rgba(0,0,0,0.2);
        }

        .gallery-item img {
            width: 100%;
            height: 100%;
            object-fit: cover;
        }

        .gallery-overlay {
            position: absolute;
            bottom: 0;
            left: 0;
            right: 0;
            background: linear-gradient(to top, rgba(0,0,0,0.8) 0%, transparent 100%);
            padding: 20px;
            color: white;
            opacity: 0;
            transition: opacity 0.3s ease;
        }

        .gallery-item:hover .gallery-overlay {
            opacity: 1;
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

            .culture-grid {
                grid-template-columns: 1fr;
                gap: 40px;
            }

            .gallery-grid {
                grid-template-columns: 1fr;
            }

            .elements-grid {
                grid-template-columns: 1fr;
            }
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <div class="hero-section">
        <img src="https://images.unsplash.com/photo-1523398002811-999ca8dec234?w=1600&amp;h=500&amp;fit=crop" alt="Streetwear Culture">
        <div class="hero-overlay">
            <div class="hero-content">
                <h1>Streetwear Essentials</h1>
                <p>Where urban culture meets contemporary fashion</p>
            </div>
        </div>
    </div>


    <div class="content-section">
        <div class="section-header">
            <h2>The Street Culture</h2>
        </div>
        
        <div class="culture-grid">
            <div class="culture-content">
                <h3>Born from the Streets</h3>
                <p>Streetwear isn't just fashion—it's a movement that emerged from the underground scenes of skateboarding, hip-hop, and urban art. What started in the streets of New York, Los Angeles, and Tokyo has evolved into a global phenomenon.</p>
                <p>Our Streetwear Essentials collection captures this rebellious spirit while embracing modern comfort and style. Each piece tells a story of self-expression, creativity, and the fearless attitude of youth culture.</p>
            </div>
            <div class="culture-image">
                <img src="https://images.unsplash.com/photo-1552374196-1ab2a1c593e8?w=600&amp;h=400&amp;fit=crop" alt="Street Fashion">
            </div>
        </div>

        <div class="culture-grid" style="margin-top: 60px;">
            <div class="culture-image">
                <img src="https://images.unsplash.com/photo-1556906781-9a412961c28c?w=600&amp;h=400&amp;fit=crop" alt="Urban Style">
            </div>
            <div class="culture-content">
                <h3>The Evolution Continues</h3>
                <p>From baggy jeans and oversized tees to technical fabrics and sustainable materials, streetwear has continuously evolved while maintaining its core identity. It's about breaking rules, mixing high and low fashion, and creating your own unique style.</p>
                <p>Today's streetwear combines comfort with cutting-edge design, incorporating elements from sportswear, workwear, and high fashion to create something entirely new.</p>
            </div>
        </div>
    </div>


    <div class="elements-section">
        <div class="section-header">
            <h2 style="color: white;">Key Style Elements</h2>
        </div>
        
        <div class="elements-grid">
            <div class="element-card">
                <div class="element-icon">👕</div>
                <h3>Oversized Silhouettes</h3>
                <p>Loose fits and relaxed proportions define modern streetwear, offering comfort without sacrificing style.</p>
            </div>
            <div class="element-card">
                <div class="element-icon">🎨</div>
                <h3>Bold Graphics</h3>
                <p>Statement prints, logos, and artwork that express individuality and connect with urban art culture.</p>
            </div>
            <div class="element-card">
                <div class="element-icon">🔄</div>
                <h3>Mix & Match</h3>
                <p>Layering different textures, patterns, and styles to create unique, personalized looks.</p>
            </div>
        </div>
    </div>


    <div class="influence-section">
        <div class="influence-content">
            <h3>Global Influence</h3>
            <p>Streetwear has transcended its origins to influence high fashion runways, music videos, and social media. It's a universal language spoken by youth across continents, united by a shared appreciation for authenticity and self-expression.</p>
            <p>From Seoul to São Paulo, London to Lagos, street style continues to evolve, incorporating local cultures and traditions while maintaining its global appeal.</p>
        </div>
    </div>


    <div class="gallery-section">
        <div class="section-header">
            <h2>Street Style Gallery</h2>
        </div>
        
        <div class="gallery-grid">
            <div class="gallery-item">
                <img src="https://images.unsplash.com/photo-1576566588028-4147f3842f27?w=400&amp;h=300&amp;fit=crop" alt="Street Style 1">
                <div class="gallery-overlay">
                    <p>Urban Comfort</p>
                </div>
            </div>
            <div class="gallery-item">
                <img src="https://images.unsplash.com/photo-1620799140408-edc6dcb6d633?w=400&amp;h=300&amp;fit=crop" alt="Street Style 2">
                <div class="gallery-overlay">
                    <p>Layered Looks</p>
                </div>
            </div>
            <div class="gallery-item">
                <img src="https://images.unsplash.com/photo-1564557287817-3785e38ec1f5?w=400&amp;h=300&amp;fit=crop" alt="Street Style 3">
                <div class="gallery-overlay">
                    <p>Graphic Expression</p>
                </div>
            </div>
        </div>
    </div>

    <center>
        <a href="../Bershka/WebForm1.aspx" class="back-link">← Back to Bershka Collections</a>
    </center>
</asp:Content>
