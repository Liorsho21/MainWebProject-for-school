<%@ Page Title="" Language="C#" MasterPageFile="~/master/Site1.Master" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="MainWebProject.pullandbear_Sneaker_Culture.WebForm1" %>
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
            opacity: 0.7;
        }

        .hero-overlay {
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: linear-gradient(to bottom, rgba(26,26,26,0.4) 0%, rgba(26,26,26,0.7) 100%);
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
            text-shadow: 2px 2px 4px rgba(0,0,0,0.5);
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
            background: #ff6b6b;
        }

        .culture-intro {
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
            color: #1a1a1a;
        }

        .culture-content p {
            font-size: 1.2rem;
            line-height: 1.8;
            color: #555;
            margin-bottom: 20px;
        }

        .sneaker-showcase {
            background: #1a1a1a;
            color: white;
            padding: 80px 0;
            margin: 0;
        }

        .showcase-grid {
            display: grid;
            grid-template-columns: repeat(3, 1fr);
            gap: 40px;
            max-width: 1200px;
            margin: 0 auto;
            padding: 0 40px;
        }

        .sneaker-card {
            position: relative;
            overflow: hidden;
            border-radius: 15px;
            transition: all 0.3s ease;
            cursor: pointer;
        }

        .sneaker-card:hover {
            transform: translateY(-10px);
            box-shadow: 0 20px 40px rgba(255,107,107,0.3);
        }

        .sneaker-image {
            width: 100%;
            height: 300px;
            object-fit: cover;
        }

        .sneaker-info {
            position: absolute;
            bottom: 0;
            left: 0;
            right: 0;
            background: linear-gradient(to top, rgba(0,0,0,0.9) 0%, rgba(0,0,0,0) 100%);
            padding: 30px 20px 20px;
        }

        .sneaker-name {
            font-family: "Anton SC", sans-serif;
            font-size: 1.5rem;
            margin-bottom: 5px;
        }

        .sneaker-type {
            font-size: 0.9rem;
            opacity: 0.8;
        }

        .style-guide-section {
            padding: 80px 40px;
            background: #f5f5f5;
        }

        .guide-grid {
            display: grid;
            grid-template-columns: 1fr 1fr;
            gap: 60px;
            align-items: center;
            margin-top: 40px;
        }

        .guide-content h3 {
            font-family: "Anton SC", sans-serif;
            font-size: 2rem;
            margin-bottom: 20px;
        }

        .guide-content p {
            line-height: 1.8;
            color: #555;
            margin-bottom: 20px;
        }

        .style-rules {
            list-style: none;
            padding: 0;
            margin-top: 20px;
        }

        .style-rules li {
            padding: 12px 0;
            border-bottom: 1px solid #ddd;
            position: relative;
            padding-left: 30px;
        }

        .style-rules li:before {
            content: "👟";
            position: absolute;
            left: 0;
        }

        .guide-image {
            height: 400px;
            overflow: hidden;
            border-radius: 15px;
            box-shadow: 0 10px 30px rgba(0,0,0,0.1);
        }

        .guide-image img {
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
            background: #f8f8f8;
            border-radius: 15px;
            transition: all 0.3s ease;
        }

        .care-card:hover {
            transform: translateY(-5px);
            box-shadow: 0 10px 30px rgba(0,0,0,0.1);
            background: #ff6b6b;
            color: white;
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
            font-size: 0.95rem;
            transition: color 0.3s ease;
        }

        .care-card:hover .care-desc {
            color: white;
        }

        .trends-section {
            background: linear-gradient(135deg, #ff6b6b 0%, #ee5a6f 100%);
            color: white;
            padding: 80px 40px;
            margin-top: 80px;
        }

        .trends-content {
            max-width: 800px;
            margin: 0 auto;
            text-align: center;
        }

        .trends-content h3 {
            font-family: "Anton SC", sans-serif;
            font-size: 2.5rem;
            margin-bottom: 30px;
        }

        .trends-content p {
            font-size: 1.2rem;
            line-height: 1.8;
            margin-bottom: 30px;
        }

        .trend-tags {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            gap: 15px;
            margin-top: 30px;
        }

        .trend-tag {
            background: rgba(255,255,255,0.2);
            padding: 10px 20px;
            border-radius: 25px;
            backdrop-filter: blur(10px);
            transition: all 0.3s ease;
        }

        .trend-tag:hover {
            background: rgba(255,255,255,0.3);
            transform: scale(1.05);
        }

        .back-link {
            display: inline-block;
            margin: 40px;
            padding: 15px 30px;
            background: #ff6b6b;
            color: white;
            text-decoration: none;
            border-radius: 30px;
            font-weight: bold;
            transition: all 0.3s ease;
        }

        .back-link:hover {
            background: #ee5a6f;
            transform: translateY(-2px);
        }

        @media (max-width: 768px) {
            .hero-content h1 {
                font-size: 3rem;
            }

            .showcase-grid {
                grid-template-columns: 1fr;
            }

            .guide-grid {
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
        <img src="https://images.unsplash.com/photo-1552346154-21d32810aba3?w=1600&h=500&fit=crop" alt="Sneaker Culture">
        <div class="hero-overlay">
            <div class="hero-content">
                <h1>Sneaker Culture</h1>
                <p>Where street style meets sole expression</p>
            </div>
        </div>
    </div>

    <div class="content-section">
        <div class="section-header">
            <h2>The Culture</h2>
        </div>
        
        <div class="culture-intro">
            <div class="culture-content">
                <h3>More Than Just Footwear</h3>
                <p>Sneaker culture is a global phenomenon that transcends fashion. It's about community, self-expression, and the stories we tell with every step. At Pull&Bear, we celebrate the sneakerhead spirit with collections that honor both classic silhouettes and cutting-edge designs.</p>
                <p>From the basketball courts to the city streets, sneakers have evolved from athletic gear to cultural icons. Our curated selection brings you the best of both worlds—performance meets style in every pair.</p>
            </div>
        </div>
    </div>

    <div class="sneaker-showcase">
        <div class="section-header">
            <h2 style="color: white;">Featured Kicks</h2>
        </div>
        
        <div class="showcase-grid">
            <div class="sneaker-card">
                <img src="https://images.unsplash.com/photo-1595950653106-6c9ebd614d3a?w=400&h=300&fit=crop" alt="Classic White Sneaker" class="sneaker-image">
                <div class="sneaker-info">
                    <div class="sneaker-name">Classic White</div>
                    <div class="sneaker-type">Timeless Essential</div>
                </div>
            </div>
            <div class="sneaker-card">
                <img src="https://images.unsplash.com/photo-1606107557195-0e29a4b5b4aa?w=400&h=300&fit=crop" alt="Street Runner" class="sneaker-image">
                <div class="sneaker-info">
                    <div class="sneaker-name">Street Runner</div>
                    <div class="sneaker-type">Urban Performance</div>
                </div>
            </div>
            <div class="sneaker-card">
                <img src="https://images.unsplash.com/photo-1608231387042-66d1773070a5?w=400&h=300&fit=crop" alt="High-Top Heritage" class="sneaker-image">
                <div class="sneaker-info">
                    <div class="sneaker-name">High-Top Heritage</div>
                    <div class="sneaker-type">Basketball Inspired</div>
                </div>
            </div>
        </div>
    </div>

    <div class="style-guide-section">
        <div class="section-header">
            <h2>Styling Your Sneakers</h2>
        </div>
        
        <div class="guide-grid">
            <div class="guide-content">
                <h3>The Art of the Fit</h3>
                <p>Great sneaker style isn't just about the shoes—it's about how you wear them. Whether you're going for a sporty look or street-smart casual, the key is balance and confidence.</p>
                <ul class="style-rules">
                    <li>Let your sneakers be the statement piece</li>
                    <li>Match colors, not brands</li>
                    <li>Know when to go high-top vs low-top</li>
                    <li>Keep them clean—condition matters</li>
                    <li>Don't be afraid to mix athletic with casual</li>
                </ul>
            </div>
            <div class="guide-image">
                <img src="https://images.unsplash.com/photo-1515955656352-a1fa3ffcd111?w=600&h=400&fit=crop" alt="Sneaker Styling">
            </div>
        </div>
    </div>

    <div class="care-section">
        <div class="section-header">
            <h2>Sneaker Care 101</h2>
        </div>
        
        <div class="care-grid">
            <div class="care-card">
                <div class="care-icon">🧼</div>
                <div class="care-title">Clean Regularly</div>
                <div class="care-desc">Keep them fresh with proper cleaning techniques</div>
            </div>
            <div class="care-card">
                <div class="care-icon">💨</div>
                <div class="care-title">Air Dry</div>
                <div class="care-desc">Never use direct heat—patience preserves quality</div>
            </div>
            <div class="care-card">
                <div class="care-icon">🛡️</div>
                <div class="care-title">Protect</div>
                <div class="care-desc">Use sprays to guard against water and stains</div>
            </div>
            <div class="care-card">
                <div class="care-icon">🔄</div>
                <div class="care-title">Rotate</div>
                <div class="care-desc">Give your kicks a break between wears</div>
            </div>
        </div>
    </div>

    <div class="trends-section">
        <div class="trends-content">
            <h3>Trending Now</h3>
            <p>Stay ahead of the game with the latest sneaker trends making waves in street culture</p>
            
            <div class="trend-tags">
                <div class="trend-tag">#ChunkyDad</div>
                <div class="trend-tag">#MinimalWhite</div>
                <div class="trend-tag">#RetroRunner</div>
                <div class="trend-tag">#SustainableKicks</div>
                <div class="trend-tag">#HighTopRevival</div>
                <div class="trend-tag">#ColorBlock</div>
            </div>
        </div>
    </div>

    <center>
        <a href="../PullandBear/WebForm1.aspx" class="back-link">← Back to Pull&amp;Bear Collections</a>
    </center>
</asp:Content>
