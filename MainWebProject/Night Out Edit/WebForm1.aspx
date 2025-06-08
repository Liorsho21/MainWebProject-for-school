<%@ Page Title="" Language="C#" MasterPageFile="~/master/Site1.Master" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="MainWebProject.Night_Out_Edit.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../../master/StyleSheet1.css" rel="stylesheet" />
    <link href="https://fonts.googleapis.com/css2?family=Anton&display=swap" rel="stylesheet">
    <style>
        body {
            background-color: #000;
            overflow-x: hidden;
        }

        .glamour-section {
            background: #111;
            padding: 80px 40px;
            margin: 0; 
        }

        .icons-section {
            background: linear-gradient(135deg, #1a1a1a 0%, #000 100%);
            padding: 80px 40px;
            margin: 0; 
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
            opacity: 0.6;
        }

        .hero-overlay {
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: linear-gradient(to bottom, rgba(0,0,0,0.3) 0%, rgba(0,0,0,0.7) 100%);
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
            font-style: italic;
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
            color: white;
        }

        .section-header h2:after {
            content: "";
            position: absolute;
            bottom: -15px;
            left: 50%;
            transform: translateX(-50%);
            width: 80px;
            height: 4px;
            background: gold;
        }

        .glamour-section {
            background: #111;
            padding: 80px 40px;
            margin: 0 -40px;
        }

        .glamour-content {
            max-width: 800px;
            margin: 0 auto;
            text-align: center;
            color: white;
        }

        .glamour-content h3 {
            font-family: "Anton SC", sans-serif;
            font-size: 2.5rem;
            margin-bottom: 30px;
            color: gold;
        }

        .glamour-content p {
            font-size: 1.2rem;
            line-height: 1.8;
            margin-bottom: 20px;
            opacity: 0.9;
        }

        .occasions-grid {
            display: grid;
            grid-template-columns: repeat(3, 1fr);
            gap: 40px;
            margin-top: 60px;
        }

        .occasion-card {
            background: rgba(255,255,255,0.05);
            padding: 40px;
            border-radius: 15px;
            text-align: center;
            border: 1px solid rgba(255,215,0,0.2);
            transition: all 0.3s ease;
        }

        .occasion-card:hover {
            background: rgba(255,255,255,0.1);
            transform: translateY(-5px);
            border-color: gold;
        }

        .occasion-icon {
            font-size: 3rem;
            margin-bottom: 20px;
        }

        .occasion-card h3 {
            font-family: "Anton SC", sans-serif;
            font-size: 1.8rem;
            margin-bottom: 15px;
            color: white;
        }

        .occasion-card p {
            color: rgba(255,255,255,0.8);
            line-height: 1.6;
        }

        .tips-section {
            padding: 80px 40px;
            background: #000;
        }

        .tips-grid {
            display: grid;
            grid-template-columns: 1fr 1fr;
            gap: 60px;
            align-items: center;
            margin-top: 40px;
        }

        .tips-content {
            color: white;
        }

        .tips-content h3 {
            font-family: "Anton SC", sans-serif;
            font-size: 2rem;
            margin-bottom: 20px;
            color: gold;
        }

        .tips-list {
            list-style: none;
            padding: 0;
        }

        .tips-list li {
            padding: 15px 0;
            border-bottom: 1px solid rgba(255,255,255,0.1);
            font-size: 1.1rem;
            opacity: 0.9;
        }

        .tips-list li:before {
            content: "✨";
            margin-right: 10px;
        }

        .tips-image {
            height: 500px;
            overflow: hidden;
            border-radius: 15px;
            box-shadow: 0 20px 40px rgba(255,215,0,0.2);
        }

        .tips-image img {
            width: 100%;
            height: 100%;
            object-fit: cover;
        }

        .icons-section {
            background: linear-gradient(135deg, #1a1a1a 0%, #000 100%);
            padding: 80px 40px;
            margin: 0 -40px;
        }

        .icons-content {
            max-width: 1000px;
            margin: 0 auto;
            text-align: center;
            color: white;
        }

        .icons-content h3 {
            font-family: "Anton SC", sans-serif;
            font-size: 2.5rem;
            margin-bottom: 30px;
        }

        .icons-content p {
            font-size: 1.2rem;
            line-height: 1.8;
            margin-bottom: 40px;
            opacity: 0.9;
        }

        .decades-grid {
            display: grid;
            grid-template-columns: repeat(4, 1fr);
            gap: 30px;
            margin-top: 40px;
        }

        .decade-card {
            padding: 30px;
            background: rgba(255,255,255,0.05);
            border-radius: 10px;
            transition: all 0.3s ease;
        }

        .decade-card:hover {
            background: rgba(255,255,255,0.1);
            transform: scale(1.05);
        }

        .decade-year {
            font-family: "Anton SC", sans-serif;
            font-size: 2rem;
            color: gold;
            margin-bottom: 10px;
        }

        .decade-style {
            font-size: 1rem;
            opacity: 0.8;
        }

        .philosophy-section {
            padding: 80px 40px;
            background: #111;
        }

        .philosophy-content {
            max-width: 800px;
            margin: 0 auto;
            text-align: center;
            color: white;
        }

        .philosophy-content h3 {
            font-family: "Anton SC", sans-serif;
            font-size: 2.5rem;
            margin-bottom: 30px;
            color: gold;
        }

        .philosophy-content p {
            font-size: 1.3rem;
            line-height: 1.8;
            margin-bottom: 20px;
            font-style: italic;
            opacity: 0.9;
        }


        .back-link {
            display: inline-block;
            margin: 40px;
            padding: 15px 30px;
            background: gold;
            color: black;
            text-decoration: none;
            border-radius: 30px;
            font-weight: bold;
            transition: all 0.3s ease;
        }

        .back-link:hover {
            background: white;
            transform: translateY(-2px);
        }

        @media (max-width: 768px) {
            .hero-content h1 {
                font-size: 3rem;
            }

            .occasions-grid {
                grid-template-columns: 1fr;
            }

            .tips-grid {
                grid-template-columns: 1fr;
                gap: 40px;
            }

            .decades-grid {
                grid-template-columns: repeat(2, 1fr);
            }
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="hero-section">
        <img src="https://images.unsplash.com/photo-1470225620780-dba8ba36b745?w=1600&h=500&fit=crop" alt="Night Out Collection">
        <div class="hero-overlay">
            <div class="hero-content">
                <h1>Night Out Edit</h1>
                <p>Where confidence meets glamour</p>
            </div>
        </div>
    </div>

    <div class="glamour-section">
        <div class="glamour-content">
            <h3>The Art of Evening Glamour</h3>
            <p>When the sun sets, a different kind of magic begins. Our Night Out Edit collection is designed for those moments when you want to feel extraordinary—when every detail matters and confidence is your best accessory.</p>
            <p>From intimate dinner parties to grand celebrations, each piece in this collection is crafted to make you the center of attention, combining luxurious materials with contemporary design.</p>
        </div>
    </div>

    <div class="content-section">
        <div class="section-header">
            <h2>Perfect for Every Occasion</h2>
        </div>
        
        <div class="occasions-grid">
            <div class="occasion-card">
                <div class="occasion-icon">🥂</div>
                <h3>Cocktail Parties</h3>
                <p>Sophisticated pieces that strike the perfect balance between elegant and edgy</p>
            </div>
            <div class="occasion-card">
                <div class="occasion-icon">💃</div>
                <h3>Club Nights</h3>
                <p>Dance-ready designs that move with you and catch the light</p>
            </div>
            <div class="occasion-card">
                <div class="occasion-icon">🌟</div>
                <h3>Special Events</h3>
                <p>Show-stopping outfits for those once-in-a-lifetime moments</p>
            </div>
        </div>
    </div>

    <div class="tips-section">
        <div class="section-header">
            <h2>Styling Your Night</h2>
        </div>
        
        <div class="tips-grid">
            <div class="tips-content">
                <h3>Expert Tips</h3>
                <ul class="tips-list">
                    <li>Layer textures for depth - mix sequins with satin or leather</li>
                    <li>Choose one statement piece and build your outfit around it</li>
                    <li>Don't forget the power of the perfect accessories</li>
                    <li>Confidence is your best accessory - wear what makes you feel amazing</li>
                    <li>Mix high-end pieces with affordable finds for a unique look</li>
                </ul>
            </div>
            <div class="tips-image">
                <img src="https://images.unsplash.com/photo-1539109136881-3be0616acf4b?w=600&amp;h=500&amp;fit=crop" alt="Night Out Style">
            </div>
        </div>
    </div>

    <div class="icons-section">
        <div class="icons-content">
            <h3>Night Out Through the Decades</h3>
            <p>Evening fashion has always been about making a statement. From the glamorous Hollywood nights of the past to today's diverse party scene, each era has contributed to our understanding of after-dark style.</p>
            
            <div class="decades-grid">
                <div class="decade-card">
                    <div class="decade-year">1920s</div>
                    <div class="decade-style">Flapper dresses & Art Deco glamour</div>
                </div>
                <div class="decade-card">
                    <div class="decade-year">1970s</div>
                    <div class="decade-style">Disco fever & metallic magic</div>
                </div>
                <div class="decade-card">
                    <div class="decade-year">1990s</div>
                    <div class="decade-style">Minimalist chic & slip dresses</div>
                </div>
                <div class="decade-card">
                    <div class="decade-year">Today</div>
                    <div class="decade-style">Eclectic mix & personal expression</div>
                </div>
            </div>
        </div>
    </div>

    <div class="philosophy-section">
        <div class="philosophy-content">
            <h3>Our Philosophy</h3>
            <p>"Fashion is about dreaming and making other people dream."</p>
            <p>Every piece in our Night Out Edit is designed to transform not just how you look, but how you feel. Because when you feel extraordinary, you become unforgettable.</p>
        </div>
    </div>

    <center>
        <a href="../Bershka/WebForm1.aspx" class="back-link">← Back to Bershka Collections</a>
    </center>
</asp:Content>
