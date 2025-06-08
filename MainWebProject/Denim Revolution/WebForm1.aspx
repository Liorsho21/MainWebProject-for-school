<%@ Page Title="" Language="C#" MasterPageFile="~/master/Site1.Master" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="MainWebProject.Denim_Revolution.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
       <link href="../../master/StyleSheet1.css" rel="stylesheet" />
    <link href="https://fonts.googleapis.com/css2?family=Anton&display=swap" rel="stylesheet">
    <style>
        body {
            background-color: #f5f5f5;
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

  
        .history-content {
            background: white;
            padding: 60px;
            border-radius: 20px;
            box-shadow: 0 10px 30px rgba(0,0,0,0.08);
            margin-bottom: 80px;
        }

        .history-content h3 {
            font-family: "Anton SC", sans-serif;
            font-size: 2.5rem;
            margin-bottom: 30px;
            text-align: center;
        }

        .history-timeline {
            display: grid;
            grid-template-columns: 1fr;
            gap: 40px;
            margin-top: 40px;
        }

        .timeline-item {
            display: flex;
            align-items: center;
            gap: 40px;
        }

        .timeline-year {
            font-family: "Anton SC", sans-serif;
            font-size: 3rem;
            color: #000;
            min-width: 150px;
        }

        .timeline-content {
            flex: 1;
        }

        .timeline-content h4 {
            font-size: 1.5rem;
            margin-bottom: 10px;
            color: #1a1a1a;
        }

        .timeline-content p {
            line-height: 1.8;
            color: #555;
        }

        .innovation-section {
            background: #000;
            color: white;
            padding: 80px 0;
            margin: 0 -40px;
        }

        .innovation-content {
            max-width: 1200px;
            margin: 0 auto;
            padding: 0 40px;
        }

        .innovation-grid {
            display: grid;
            grid-template-columns: 1fr 1fr;
            gap: 60px;
            align-items: center;
            margin-top: 40px;
        }

        .innovation-text h3 {
            font-family: "Anton SC", sans-serif;
            font-size: 2rem;
            margin-bottom: 20px;
        }

        .innovation-text p {
            line-height: 1.8;
            opacity: 0.9;
            margin-bottom: 20px;
        }

        .innovation-image {
            height: 400px;
            overflow: hidden;
            border-radius: 15px;
        }

        .innovation-image img {
            width: 100%;
            height: 100%;
            object-fit: cover;
        }


        .sustainability-section {
            padding: 80px 40px;
            background: white;
        }

        .sustainability-content {
            max-width: 800px;
            margin: 0 auto;
            text-align: center;
        }

        .sustainability-content h3 {
            font-family: "Anton SC", sans-serif;
            font-size: 2.5rem;
            margin-bottom: 30px;
        }

        .sustainability-content p {
            font-size: 1.2rem;
            line-height: 1.8;
            color: #555;
            margin-bottom: 30px;
        }

        .eco-stats {
            display: grid;
            grid-template-columns: repeat(3, 1fr);
            gap: 30px;
            margin-top: 50px;
        }

        .stat-card {
            padding: 30px;
            background: #f5f5f5;
            border-radius: 15px;
        }

        .stat-number {
            font-family: "Anton SC", sans-serif;
            font-size: 3rem;
            color: #000;
            margin-bottom: 10px;
        }

        .stat-label {
            font-size: 1.1rem;
            color: #666;
        }


        .style-guide {
            padding: 80px 40px;
            background: #f5f5f5;
        }

        .fits-grid {
            display: grid;
            grid-template-columns: repeat(4, 1fr);
            gap: 30px;
            margin-top: 40px;
        }

        .fit-card {
            background: white;
            padding: 30px;
            border-radius: 15px;
            text-align: center;
            transition: all 0.3s ease;
        }

        .fit-card:hover {
            transform: translateY(-5px);
            box-shadow: 0 10px 30px rgba(0,0,0,0.1);
        }

        .fit-icon {
            font-size: 2.5rem;
            margin-bottom: 15px;
        }

        .fit-name {
            font-family: "Anton SC", sans-serif;
            font-size: 1.5rem;
            margin-bottom: 10px;
        }

        .fit-desc {
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

            .timeline-item {
                flex-direction: column;
                text-align: center;
            }

            .innovation-grid {
                grid-template-columns: 1fr;
            }

            .eco-stats {
                grid-template-columns: 1fr;
            }

            .fits-grid {
                grid-template-columns: 1fr;
            }
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <div class="hero-section">
        <img src="https://images.unsplash.com/photo-1541099649105-f69ad21f3246?w=1600&amp;h=500&amp;fit=crop" alt="Denim Collection">
        <div class="hero-overlay">
            <div class="hero-content">
                <h1>Denim Revolution</h1>
                <p>Redefining the classic with sustainable innovation</p>
            </div>
        </div>
    </div>


    <div class="content-section">
        <div class="section-header">
            <h2>The Denim Story</h2>
        </div>
        
        <div class="history-content">
            <h3>From Workwear to Icon</h3>
            <div class="history-timeline">
                <div class="timeline-item">
                    <div class="timeline-year">1873</div>
                    <div class="timeline-content">
                        <h4>The Birth of Denim</h4>
                        <p>Jacob Davis and Levi Strauss patent the first riveted denim work pants, creating what would become the most iconic piece of clothing in history.</p>
                    </div>
                </div>
                <div class="timeline-item">
                    <div class="timeline-year">1950s</div>
                    <div class="timeline-content">
                        <h4>Rebel Without a Cause</h4>
                        <p>James Dean transforms denim from workwear to symbol of youth rebellion, forever changing its cultural significance.</p>
                    </div>
                </div>
                <div class="timeline-item">
                    <div class="timeline-year">1980s</div>
                    <div class="timeline-content">
                        <h4>Designer Denim Era</h4>
                        <p>High fashion embraces denim, with designer brands creating premium jeans that blur the line between casual and luxury.</p>
                    </div>
                </div>
                <div class="timeline-item">
                    <div class="timeline-year">Today</div>
                    <div class="timeline-content">
                        <h4>Sustainable Future</h4>
                        <p>Modern denim focuses on eco-friendly production, innovative washes, and inclusive fits for every body type.</p>
                    </div>
                </div>
            </div>
        </div>
    </div>


    <div class="innovation-section">
        <div class="innovation-content">
            <div class="section-header">
                <h2 style="color: white;">Innovation in Every Thread</h2>
            </div>
            
            <div class="innovation-grid">
                <div class="innovation-text">
                    <h3>Revolutionary Techniques</h3>
                    <p>Our denim revolution isn't just about style—it's about reimagining how jeans are made. Using laser technology and ozone treatments, we create unique washes and distressing without harmful chemicals.</p>
                    <p>Each pair is crafted with precision, combining traditional craftsmanship with cutting-edge technology to achieve the perfect balance of authenticity and innovation.</p>
                </div>
                <div class="innovation-image">
                    <img src="https://images.unsplash.com/photo-1542272604-787c3835535d?w=600&amp;h=400&amp;fit=crop" alt="Denim Innovation">
                </div>
            </div>
        </div>
    </div>


    <div class="sustainability-section">
        <div class="sustainability-content">
            <h3>Sustainability at Heart</h3>
            <p>Fashion shouldn't cost the earth. That's why we've revolutionized our denim production to minimize environmental impact while maximizing style and quality.</p>
            
            <div class="eco-stats">
                <div class="stat-card">
                    <div class="stat-number">70%</div>
                    <div class="stat-label">Less Water Used</div>
                </div>
                <div class="stat-card">
                    <div class="stat-number">95%</div>
                    <div class="stat-label">Chemical Reduction</div>
                </div>
                <div class="stat-card">
                    <div class="stat-number">100%</div>
                    <div class="stat-label">Sustainable Cotton</div>
                </div>
            </div>
        </div>
    </div>


    <div class="style-guide">
        <div class="section-header">
            <h2>Find Your Perfect Fit</h2>
        </div>
        
        <div class="fits-grid">
            <div class="fit-card">
                <div class="fit-icon">👖</div>
                <div class="fit-name">Skinny</div>
                <div class="fit-desc">Hugs every curve from hip to ankle</div>
            </div>
            <div class="fit-card">
                <div class="fit-icon">👖</div>
                <div class="fit-name">Straight</div>
                <div class="fit-desc">Classic cut that never goes out of style</div>
            </div>
            <div class="fit-card">
                <div class="fit-icon">👖</div>
                <div class="fit-name">Wide Leg</div>
                <div class="fit-desc">Relaxed fit with statement silhouette</div>
            </div>
            <div class="fit-card">
                <div class="fit-icon">👖</div>
                <div class="fit-name">Mom Jeans</div>
                <div class="fit-desc">High-waisted vintage inspired comfort</div>
            </div>
        </div>
    </div>

    <center>
        <a href="../Bershka/WebForm1.aspx" class="back-link">← Back to Bershka Collections</a>
    </center>
</asp:Content>
