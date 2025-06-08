<%@ Page Title="" Language="C#" MasterPageFile="~/master/Site1.Master" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="MainWebProject.Bershka_Women_s_Fashion_Page.WebForm1" %>
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
            background: linear-gradient(to bottom, rgba(0,0,0,0.2) 0%, rgba(0,0,0,0.5) 100%);
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

        .philosophy-grid {
            display: grid;
            grid-template-columns: 1fr 1fr;
            gap: 60px;
            align-items: center;
            margin-bottom: 80px;
        }

        .philosophy-content h3 {
            font-family: "Anton SC", sans-serif;
            font-size: 2rem;
            margin-bottom: 20px;
        }

        .philosophy-content p {
            line-height: 1.8;
            color: #555;
            margin-bottom: 20px;
        }

        .philosophy-image {
            height: 400px;
            overflow: hidden;
            border-radius: 15px;
            box-shadow: 0 10px 30px rgba(0,0,0,0.1);
        }

        .philosophy-image img {
            width: 100%;
            height: 100%;
            object-fit: cover;
        }

        .trends-section {
            background: white;
            padding: 80px 40px;
            margin: 0;
        }

        .trends-grid {
            display: grid;
            grid-template-columns: repeat(4, 1fr);
            gap: 30px;
            margin-top: 40px;
        }

        .trend-card {
            text-align: center;
            padding: 30px;
            background: #f5f5f5;
            border-radius: 15px;
            transition: all 0.3s ease;
        }

        .trend-card:hover {
            transform: translateY(-5px);
            box-shadow: 0 10px 30px rgba(0,0,0,0.1);
        }

        .trend-icon {
            font-size: 2.5rem;
            margin-bottom: 15px;
        }

        .trend-title {
            font-family: "Anton SC", sans-serif;
            font-size: 1.3rem;
            margin-bottom: 10px;
        }

        .trend-desc {
            color: #666;
            font-size: 0.95rem;
        }

        .empowerment-section {
            background: #000;
            color: white;
            padding: 80px 0;
            margin: 0;
        }

        .empowerment-content {
            max-width: 800px;
            margin: 0 auto;
            text-align: center;
            padding: 0 40px;
        }

        .empowerment-content h3 {
            font-family: "Anton SC", sans-serif;
            font-size: 2.5rem;
            margin-bottom: 30px;
        }

        .empowerment-content p {
            font-size: 1.2rem;
            line-height: 1.8;
            margin-bottom: 20px;
            opacity: 0.9;
        }

        .quotes-grid {
            display: grid;
            grid-template-columns: repeat(3, 1fr);
            gap: 30px;
            margin-top: 50px;
        }

        .quote-card {
            padding: 30px;
            background: rgba(255,255,255,0.05);
            border-radius: 10px;
            border: 1px solid rgba(255,255,255,0.1);
        }

        .quote-text {
            font-style: italic;
            margin-bottom: 15px;
            opacity: 0.9;
        }

        .quote-author {
            font-weight: bold;
            color: #888;
        }

        .style-guide {
            padding: 80px 40px;
            background: #f5f5f5;
        }

        .guide-grid {
            display: grid;
            grid-template-columns: repeat(2, 1fr);
            gap: 60px;
            margin-top: 40px;
        }

        .guide-section {
            background: white;
            padding: 40px;
            border-radius: 15px;
            box-shadow: 0 5px 20px rgba(0,0,0,0.08);
        }

        .guide-section h3 {
            font-family: "Anton SC", sans-serif;
            font-size: 1.8rem;
            margin-bottom: 20px;
        }

        .guide-section ul {
            list-style: none;
            padding: 0;
        }

        .guide-section li {
            padding: 10px 0;
            border-bottom: 1px solid #f0f0f0;
        }

        .guide-section li:before {
            content: "→";
            color: #000;
            margin-right: 10px;
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

            .philosophy-grid {
                grid-template-columns: 1fr;
            }

            .trends-grid {
                grid-template-columns: repeat(2, 1fr);
            }

            .quotes-grid {
                grid-template-columns: 1fr;
            }

            .guide-grid {
                grid-template-columns: 1fr;
            }
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="hero-section">
        <img src="https://images.unsplash.com/photo-1483985988355-763728e1935b?w=1600&h=500&fit=crop" alt="Women's Fashion">
        <div class="hero-overlay">
            <div class="hero-content">
                <h1>Women's Fashion</h1>
                <p>Express yourself through style that empowers</p>
            </div>
        </div>
    </div>

    <div class="content-section">
        <div class="section-header">
            <h2>Fashion Philosophy</h2>
        </div>
        
        <div class="philosophy-grid">
            <div class="philosophy-content">
                <h3>More Than Just Clothes</h3>
                <p>Fashion is a form of self-expression and autonomy at a particular period and place. For the modern woman, it's about finding pieces that reflect her personality, lifestyle, and ambitions.</p>
                <p>At Bershka, we believe every woman deserves to feel confident and stylish, whether she's conquering the boardroom, exploring the city, or dancing until dawn. Our collections are designed to move with you through every moment of your dynamic life.</p>
            </div>
            <div class="philosophy-image">
                <img src="https://images.unsplash.com/photo-1485968579580-b6d095142e6e?w=600&h=400&fit=crop" alt="Fashion Philosophy">
            </div>
        </div>
    </div>

    <div class="trends-section">
        <div class="section-header">
            <h2>Current Trends</h2>
        </div>
        
        <div class="trends-grid">
            <div class="trend-card">
                <div class="trend-icon">🌸</div>
                <div class="trend-title">Romantic Revival</div>
                <div class="trend-desc">Soft fabrics, floral prints, and feminine silhouettes</div>
            </div>
            <div class="trend-card">
                <div class="trend-icon">⚡</div>
                <div class="trend-title">Power Dressing</div>
                <div class="trend-desc">Bold shoulders, tailored fits, confidence-boosting pieces</div>
            </div>
            <div class="trend-card">
                <div class="trend-icon">🌿</div>
                <div class="trend-title">Eco-Conscious</div>
                <div class="trend-desc">Sustainable materials and timeless designs</div>
            </div>
            <div class="trend-card">
                <div class="trend-icon">✨</div>
                <div class="trend-title">Y2K Revival</div>
                <div class="trend-desc">Low-rise, metallics, and nostalgic accessories</div>
            </div>
        </div>
    </div>

    <div class="empowerment-section">
        <div class="empowerment-content">
            <h3>Empowered Women Empower Women</h3>
            <p>Fashion has always been a tool for women to express their strength, creativity, and individuality. From Coco Chanel liberating women from corsets to today's diverse representation on runways, fashion continues to be a force for change.</p>
            
            <div class="quotes-grid">
                <div class="quote-card">
                    <div class="quote-text">"Fashion is what you're offered four times a year. Style is what you choose."</div>
                    <div class="quote-author">- Lauren Hutton</div>
                </div>
                <div class="quote-card">
                    <div class="quote-text">"Style is a way to say who you are without having to speak."</div>
                    <div class="quote-author">- Rachel Zoe</div>
                </div>
                <div class="quote-card">
                    <div class="quote-text">"Fashion is about dreaming and making other people dream."</div>
                    <div class="quote-author">- Donatella Versace</div>
                </div>
            </div>
        </div>
    </div>

    <div class="style-guide">
        <div class="section-header">
            <h2>Style Guide</h2>
        </div>
        
        <div class="guide-grid">
            <div class="guide-section">
                <h3>Building Your Wardrobe</h3>
                <ul>
                    <li>Start with versatile basics in neutral colors</li>
                    <li>Invest in quality denim that fits perfectly</li>
                    <li>Add statement pieces that reflect your personality</li>
                    <li>Don't forget the power of accessories</li>
                    <li>Choose comfort without sacrificing style</li>
                </ul>
            </div>
            <div class="guide-section">
                <h3>Styling Tips</h3>
                <ul>
                    <li>Mix high-end pieces with affordable finds</li>
                    <li>Play with proportions - oversized top, fitted bottom</li>
                    <li>Layer textures for visual interest</li>
                    <li>Use color to express your mood</li>
                    <li>Confidence is your best accessory</li>
                </ul>
            </div>
        </div>
    </div>

    <center>
        <a href="../Bershka/WebForm1.aspx" class="back-link">← Back to Bershka Collections</a>
    </center>
</asp:Content>
