<%@ Page Title="" Language="C#" MasterPageFile="~/master/Site1.Master" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="MainWebProject.PullandBear_Beach_Vibes_Page.WebForm1" %>
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
            background: #3498db;
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
            background: linear-gradient(to bottom, rgba(52,152,219,0.2) 0%, rgba(52,152,219,0.4) 100%);
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

        .culture-section {
            background: white;
            padding: 60px;
            border-radius: 20px;
            box-shadow: 0 10px 30px rgba(0,0,0,0.08);
            margin-bottom: 80px;
        }

        .culture-content {
            max-width: 800px;
            margin: 0 auto;
            text-align: center;
        }

        .culture-content h3 {
            font-family: "Anton SC", sans-serif;
            font-size: 2.5rem;
            margin-bottom: 30px;
            color: #3498db;
        }

        .culture-content p {
            font-size: 1.2rem;
            line-height: 1.8;
            color: #555;
            margin-bottom: 20px;
        }

        .destinations-section {
            background: linear-gradient(135deg, #3498db 0%, #2980b9 100%);
            color: white;
            padding: 80px 0;
            margin: 0;
        }

        .destinations-grid {
            display: grid;
            grid-template-columns: repeat(3, 1fr);
            gap: 40px;
            max-width: 1200px;
            margin: 0 auto;
            padding: 0 40px;
        }

        .destination-card {
            text-align: center;
            padding: 40px;
            background: rgba(255,255,255,0.1);
            border-radius: 15px;
            backdrop-filter: blur(10px);
            transition: all 0.3s ease;
        }

        .destination-card:hover {
            background: rgba(255,255,255,0.2);
            transform: translateY(-5px);
        }

        .destination-icon {
            font-size: 3rem;
            margin-bottom: 20px;
        }

        .destination-title {
            font-family: "Anton SC", sans-serif;
            font-size: 1.8rem;
            margin-bottom: 15px;
        }

        .destination-desc {
            opacity: 0.9;
            line-height: 1.6;
        }

        .style-section {
            padding: 80px 40px;
            background: #f5f5f5;
        }

        .style-grid {
            display: grid;
            grid-template-columns: 1fr 1fr;
            gap: 60px;
            align-items: center;
            margin-top: 40px;
        }

        .style-content h3 {
            font-family: "Anton SC", sans-serif;
            font-size: 2rem;
            margin-bottom: 20px;
        }

        .style-content p {
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
            content: "🌊";
            margin-right: 10px;
        }

        .style-image {
            height: 400px;
            overflow: hidden;
            border-radius: 15px;
            box-shadow: 0 10px 30px rgba(0,0,0,0.1);
        }

        .style-image img {
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
            background: #f5f5f5;
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

            .destinations-grid {
                grid-template-columns: 1fr;
            }

            .style-grid {
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
        <img src="https://images.unsplash.com/photo-1507525428034-b723cf961d3e?w=1600&h=500&fit=crop" alt="Beach Vibes">
        <div class="hero-overlay">
            <div class="hero-content">
                <h1>Beach Vibes</h1>
                <p>Where summer never ends and adventure begins</p>
            </div>
        </div>
    </div>

    <div class="content-section">
        <div class="section-header">
            <h2>Beach Culture</h2>
        </div>
        
        <div class="culture-section">
            <div class="culture-content">
                <h3>Living the Coastal Dream</h3>
                <p>Beach culture is more than just sun and sand—it's a lifestyle that celebrates freedom, adventure, and the simple joy of living in the moment. From sunrise surf sessions to sunset beach parties, it's about embracing the laid-back spirit of coastal living.</p>
                <p>Our Beach Vibes collection captures this essence with pieces designed for those who hear the ocean calling. Whether you're a weekend warrior or a full-time beach dweller, we've got everything you need to live your best beach life.</p>
            </div>
        </div>
    </div>

    <div class="destinations-section">
        <div class="section-header">
            <h2 style="color: white;">Dream Destinations</h2>
        </div>
        
        <div class="destinations-grid">
            <div class="destination-card">
                <div class="destination-icon">🏄</div>
                <div class="destination-title">Surf Paradise</div>
                <div class="destination-desc">From Bali to Byron Bay, gear up for the perfect wave</div>
            </div>
            <div class="destination-card">
                <div class="destination-icon">🏝️</div>
                <div class="destination-title">Island Escape</div>
                <div class="destination-desc">Tropical prints and breezy fabrics for island hopping</div>
            </div>
            <div class="destination-card">
                <div class="destination-icon">🌅</div>
                <div class="destination-title">Beach Town</div>
                <div class="destination-desc">Casual coastal style for everyday beach living</div>
            </div>
        </div>
    </div>

    <div class="style-section">
        <div class="section-header">
            <h2>Beach Style Guide</h2>
        </div>
        
        <div class="style-grid">
            <div class="style-content">
                <h3>Mastering Beach Fashion</h3>
                <p>Beach style is all about effortless cool. It's the art of looking put-together while embracing the relaxed vibe of coastal living. The key is choosing pieces that transition seamlessly from beach to bar.</p>
                <ul class="style-tips">
                    <li>Layer lightweight pieces for versatile looks</li>
                    <li>Mix prints and textures for visual interest</li>
                    <li>Choose quick-dry fabrics for convenience</li>
                    <li>Don't forget sun protection with style</li>
                    <li>Accessorize with beach-ready essentials</li>
                </ul>
            </div>
            <div class="style-image">
                <img src="https://images.unsplash.com/photo-1519046904884-53103b34b206?w=600&h=400&fit=crop" alt="Beach Style">
            </div>
        </div>
    </div>

    <div class="essentials-section">
        <div class="section-header">
            <h2>Beach Essentials</h2>
        </div>
        
        <div class="essentials-grid">
            <div class="essential-card">
                <div class="essential-icon">🩱</div>
                <div class="essential-name">Swimwear</div>
                <div class="essential-desc">Board shorts and swim trunks for every water adventure</div>
            </div>
            <div class="essential-card">
                <div class="essential-icon">👕</div>
                <div class="essential-name">Tank Tops</div>
                <div class="essential-desc">Breathable tanks perfect for hot summer days</div>
            </div>
            <div class="essential-card">
                <div class="essential-icon">🩳</div>
                <div class="essential-name">Beach Shorts</div>
                <div class="essential-desc">Comfortable shorts that go from beach to street</div>
            </div>
            <div class="essential-card">
                <div class="essential-icon">🩴</div>
                <div class="essential-name">Flip Flops</div>
                <div class="essential-desc">Essential footwear for sandy adventures</div>
            </div>
        </div>
    </div>

    <center>
        <a href="../PullandBear/WebForm1.aspx" class="back-link">← Back to Pull&amp;Bear Collections</a>
    </center>
</asp:Content>
