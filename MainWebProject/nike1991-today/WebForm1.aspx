<%@ Page Title="" Language="C#" MasterPageFile="~/master/Site1.Master" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="MainWebProject.nike1991_today.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <title>Nike Modern Era: 1991-Today</title>
    <link href="../master/StyleSheet1.css" rel="stylesheet" />
    <link href="https://fonts.googleapis.com/css2?family=Anton&display=swap" rel="stylesheet">
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: Arial, sans-serif;
            background-color: #f5f5f5;
            color: #333;
        }

        .hero-section {
            position: relative;
            height: 600px;
            background: linear-gradient(135deg, #2d2d2d 0%, #1a1a1a 100%);
            overflow: hidden;
            display: flex;
            align-items: center;
            justify-content: center;
        }

        .hero-content {
            text-align: center;
            color: white;
            z-index: 2;
            max-width: 900px;
            padding: 0 20px;
        }

        .hero-content h1 {
            font-family: "Anton SC", sans-serif;
            font-size: 5rem;
            margin-bottom: 20px;
            text-transform: uppercase;
            letter-spacing: 3px;
            position: relative;
        }

        .hero-content h1:after {
            content: "";
            position: absolute;
            bottom: -15px;
            left: 50%;
            transform: translateX(-50%);
            width: 100px;
            height: 4px;
            background: #fa5400;
        }

        .hero-content p {
            font-size: 1.4rem;
            opacity: 0.9;
            margin-top: 30px;
        }

        .hero-graphic {
            position: absolute;
            right: -200px;
            top: 50%;
            transform: translateY(-50%);
            width: 800px;
            height: 800px;
            background: radial-gradient(circle, rgba(250,84,0,0.1) 0%, transparent 70%);
            border-radius: 50%;
        }

        .main-content {
            max-width: 1200px;
            margin: 80px auto;
            padding: 0 20px;
        }

        .section-title {
            font-family: "Anton SC", sans-serif;
            font-size: 3rem;
            text-align: center;
            margin-bottom: 60px;
            position: relative;
            color: #1a1a1a;
        }

        .section-title:after {
            content: "";
            position: absolute;
            bottom: -15px;
            left: 50%;
            transform: translateX(-50%);
            width: 80px;
            height: 4px;
            background: #fa5400;
        }

        .digital-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(350px, 1fr));
            gap: 30px;
            margin-bottom: 80px;
        }

        .digital-card {
            background: white;
            border-radius: 15px;
            padding: 40px;
            box-shadow: 0 8px 20px rgba(0,0,0,0.1);
            transition: all 0.3s ease;
            position: relative;
            overflow: hidden;
        }

        .digital-card:before {
            content: "";
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 4px;
            background: #fa5400;
            transform: translateX(-100%);
            transition: transform 0.3s ease;
        }

        .digital-card:hover:before {
            transform: translateX(0);
        }

        .digital-card:hover {
            transform: translateY(-5px);
            box-shadow: 0 12px 30px rgba(0,0,0,0.15);
        }

        .digital-icon {
            width: 60px;
            height: 60px;
            background: linear-gradient(135deg, #fa5400, #ff8800);
            border-radius: 50%;
            display: flex;
            align-items: center;
            justify-content: center;
            font-size: 1.8rem;
            margin-bottom: 20px;
        }

        .digital-card h3 {
            font-family: "Anton SC", sans-serif;
            font-size: 1.8rem;
            margin-bottom: 15px;
            color: #1a1a1a;
        }

        .digital-card p {
            line-height: 1.6;
            color: #666;
        }

        .timeline-section {
            background: #fff;
            padding: 80px 0;
            margin-top: 80px;
        }

        .timeline-container {
            max-width: 1200px;
            margin: 0 auto;
            padding: 0 20px;
            position: relative;
        }

        .timeline-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
            gap: 30px;
            margin-top: 50px;
        }

        .timeline-card {
            background: #f8f8f8;
            border-radius: 15px;
            padding: 30px;
            position: relative;
            transition: all 0.3s ease;
            border: 2px solid transparent;
        }

        .timeline-card:hover {
            border-color: #fa5400;
            transform: translateY(-5px);
            box-shadow: 0 10px 25px rgba(0,0,0,0.1);
        }

        .timeline-year {
            font-family: "Anton SC", sans-serif;
            font-size: 2.5rem;
            color: #fa5400;
            margin-bottom: 10px;
        }

        .timeline-card h3 {
            font-size: 1.4rem;
            margin-bottom: 10px;
            color: #1a1a1a;
        }

        .timeline-card p {
            line-height: 1.6;
            color: #666;
            font-size: 0.95rem;
        }

        .achievements-section {
            background: linear-gradient(135deg, #fa5400, #ff8800);
            color: white;
            padding: 80px 0;
            margin-top: 80px;
        }

        .achievements-grid {
            max-width: 1200px;
            margin: 0 auto;
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
            gap: 40px;
            padding: 0 20px;
            margin-top: 50px;
        }

        .achievement-card {
            text-align: center;
            padding: 30px;
            background: rgba(255,255,255,0.1);
            border-radius: 15px;
            backdrop-filter: blur(10px);
            transition: all 0.3s ease;
        }

        .achievement-card:hover {
            background: rgba(255,255,255,0.2);
            transform: translateY(-5px);
        }

        .achievement-number {
            font-family: "Anton SC", sans-serif;
            font-size: 3.5rem;
            margin-bottom: 10px;
        }

        .achievement-label {
            font-size: 1.1rem;
            opacity: 0.95;
        }

        .sustainability-section {
            max-width: 1200px;
            margin: 80px auto;
            padding: 0 20px;
        }

        .sustainability-content {
            background: #f8f8f8;
            border-radius: 20px;
            padding: 60px;
            margin-top: 50px;
            position: relative;
            overflow: hidden;
        }

        .sustainability-content:before {
            content: "";
            position: absolute;
            top: 0;
            right: 0;
            width: 300px;
            height: 300px;
            background: radial-gradient(circle, rgba(250,84,0,0.1) 0%, transparent 70%);
            border-radius: 50%;
        }

        .sustainability-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
            gap: 40px;
            margin-top: 40px;
            position: relative;
        }

        .sustainability-item {
            position: relative;
        }

        .sustainability-item h3 {
            font-family: "Anton SC", sans-serif;
            font-size: 1.6rem;
            margin-bottom: 15px;
            color: #1a1a1a;
        }

        .sustainability-item h3:before {
            content: "→";
            color: #fa5400;
            margin-right: 10px;
        }

        .sustainability-item p {
            line-height: 1.6;
            color: #666;
            padding-left: 30px;
        }

        .innovation-showcase {
            background: #1a1a1a;
            color: white;
            padding: 80px 0;
            margin-top: 80px;
        }

        .innovation-container {
            max-width: 1200px;
            margin: 0 auto;
            padding: 0 20px;
        }

        .innovation-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(350px, 1fr));
            gap: 40px;
            margin-top: 50px;
        }

        .innovation-item {
            background: rgba(255,255,255,0.05);
            border-radius: 15px;
            overflow: hidden;
            transition: all 0.3s ease;
        }

        .innovation-item:hover {
            background: rgba(255,255,255,0.1);
            transform: translateY(-5px);
        }

        .innovation-image {
            width: 100%;
            height: 200px;
            background: linear-gradient(135deg, #2d2d2d, #3d3d3d);
            display: flex;
            align-items: center;
            justify-content: center;
            font-size: 3rem;
            color: #555;
        }

        .innovation-info {
            padding: 30px;
        }

        .innovation-info h3 {
            font-family: "Anton SC", sans-serif;
            font-size: 1.8rem;
            margin-bottom: 15px;
            color: #fa5400;
        }

        .innovation-info p {
            line-height: 1.6;
            opacity: 0.9;
        }

        .cta-section {
            text-align: center;
            padding: 100px 20px;
            background: linear-gradient(135deg, #f5f5f5, #fff);
            margin-top: 80px;
        }

        .cta-section h2 {
            font-family: "Anton SC", sans-serif;
            font-size: 3.5rem;
            margin-bottom: 20px;
            color: #1a1a1a;
        }

        .cta-section p {
            font-size: 1.2rem;
            color: #666;
            max-width: 700px;
            margin: 0 auto 40px;
            line-height: 1.8;
        }

        .cta-buttons {
            display: flex;
            gap: 20px;
            justify-content: center;
            flex-wrap: wrap;
        }

        .cta-button {
            display: inline-block;
            padding: 15px 40px;
            background: #fa5400;
            color: white;
            text-decoration: none;
            border-radius: 30px;
            font-weight: bold;
            transition: all 0.3s ease;
        }

        .cta-button:hover {
            background: #ff8800;
            transform: translateY(-3px);
            box-shadow: 0 5px 20px rgba(250,84,0,0.3);
        }

        .cta-button.secondary {
            background: white;
            color: #fa5400;
            border: 2px solid #fa5400;
        }

        .cta-button.secondary:hover {
            background: #fa5400;
            color: white;
        }

        @media (max-width: 768px) {
            .hero-content h1 {
                font-size: 3rem;
            }

            .section-title {
                font-size: 2.5rem;
            }

            .achievement-number {
                font-size: 2.5rem;
            }

            .sustainability-content {
                padding: 40px 20px;
            }

            .cta-section h2 {
                font-size: 2.5rem;
            }
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <div class="hero-section">
        <div class="hero-graphic"></div>
        <div class="hero-content">
            <h1>MODERN NIKE</h1>
            <p>Three decades of digital innovation, sustainable practices, and athletic excellence</p>
        </div>
    </div>

    <div class="main-content">
        <h2 class="section-title">DIGITAL TRANSFORMATION</h2>
        <div class="digital-grid">
            <div class="digital-card">
                <div class="digital-icon">📱</div>
                <h3>Nike+ Revolution</h3>
                <p>Starting in 2006, Nike+ connected shoes to technology, creating a global community of runners tracking their progress and competing virtually.</p>
            </div>
            <div class="digital-card">
                <div class="digital-icon">🛍️</div>
                <h3>Direct to Consumer</h3>
                <p>The SNKRS app and Nike.com transformed how sneakers are bought and sold, creating a direct connection between Nike and its customers.</p>
            </div>
            <div class="digital-card">
                <div class="digital-icon">🎯</div>
                <h3>Personalization</h3>
                <p>Nike By You allows customers to design their own shoes, while AI-powered recommendations create unique shopping experiences for each athlete.</p>
            </div>
            <div class="digital-card">
                <div class="digital-icon">🏃</div>
                <h3>Nike Run Club</h3>
                <p>Free coaching, training plans, and a global community of millions of runners, all accessible through Nike's digital ecosystem.</p>
            </div>
            <div class="digital-card">
                <div class="digital-icon">💪</div>
                <h3>Training Club</h3>
                <p>Professional workouts and training programs delivered digitally, democratizing access to world-class fitness coaching.</p>
            </div>
            <div class="digital-card">
                <div class="digital-icon">🌐</div>
                <h3>Virtual Experiences</h3>
                <p>From AR shoe fitting to virtual stores in gaming platforms, Nike continues to blur the lines between physical and digital retail.</p>
            </div>
        </div>
    </div>

    <div class="timeline-section">
        <div class="timeline-container">
            <h2 class="section-title">KEY MILESTONES</h2>
            <div class="timeline-grid">
                <div class="timeline-card">
                    <div class="timeline-year">1991</div>
                    <h3>Nike Town Portland</h3>
                    <p>The first Nike Town opens, creating an immersive retail experience that becomes the blueprint for flagship stores worldwide.</p>
                </div>
                <div class="timeline-card">
                    <div class="timeline-year">2000</div>
                    <h3>Nike Shox</h3>
                    <p>Revolutionary column cushioning technology debuts, offering a new approach to impact protection and energy return.</p>
                </div>
                <div class="timeline-card">
                    <div class="timeline-year">2008</div>
                    <h3>Flyknit Technology</h3>
                    <p>Precision-engineered knit uppers reduce waste by 60% while creating lighter, more comfortable shoes.</p>
                </div>
                <div class="timeline-card">
                    <div class="timeline-year">2012</div>
                    <h3>FuelBand</h3>
                    <p>Nike enters wearable technology, tracking daily activity and pioneering the quantified self movement.</p>
                </div>
                <div class="timeline-card">
                    <div class="timeline-year">2016</div>
                    <h3>HyperAdapt</h3>
                    <p>Self-lacing shoes become reality, bringing adaptive fit technology from science fiction to the basketball court.</p>
                </div>
                <div class="timeline-card">
                    <div class="timeline-year">2023</div>
                    <h3>.SWOOSH Platform</h3>
                    <p>Nike embraces Web3 with a platform for virtual creations and digital collectibles, co-creating the future with its community.</p>
                </div>
            </div>
        </div>
    </div>

    <div class="achievements-section">
        <div class="section-header">
            <h2 class="section-title" style="color: white;">NIKE BY THE NUMBERS</h2>
        </div>
        <div class="achievements-grid">
            <div class="achievement-card">
                <div class="achievement-number">$51B</div>
                <div class="achievement-label">Annual Revenue (2023)</div>
            </div>
            <div class="achievement-card">
                <div class="achievement-number">170+</div>
                <div class="achievement-label">Countries Served</div>
            </div>
            <div class="achievement-card">
                <div class="achievement-number">79,000+</div>
                <div class="achievement-label">Global Employees</div>
            </div>
            <div class="achievement-card">
                <div class="achievement-number">#1</div>
                <div class="achievement-label">Global Sports Brand</div>
            </div>
        </div>
    </div>

    <div class="sustainability-section">
        <h2 class="section-title">SUSTAINABLE FUTURE</h2>
        <div class="sustainability-content">
            <p style="font-size: 1.2rem; margin-bottom: 30px; color: #444;">Nike's commitment to sustainability drives innovation across every aspect of the business.</p>
            <div class="sustainability-grid">
                <div class="sustainability-item">
                    <h3>Move to Zero</h3>
                    <p>Nike's journey toward zero carbon and zero waste, including 100% renewable energy in owned facilities and recycled materials in products.</p>
                </div>
                <div class="sustainability-item">
                    <h3>Circular Design</h3>
                    <p>Products designed for their next life, with Nike Grind turning old shoes into playgrounds, tracks, and new products.</p>
                </div>
                <div class="sustainability-item">
                    <h3>Sustainable Materials</h3>
                    <p>From recycled polyester to plant-based leather alternatives, Nike continues to innovate with eco-friendly materials.</p>
                </div>
            </div>
        </div>
    </div>

    <div class="innovation-showcase">
        <div class="innovation-container">
            <h2 class="section-title" style="color: white;">BREAKTHROUGH INNOVATIONS</h2>
            <div class="innovation-grid">
                <div class="innovation-item">
                    <div class="innovation-image">⚡</div>
                    <div class="innovation-info">
                        <h3>Nike React</h3>
                        <p>Foam technology delivering exceptional cushioning, energy return, and durability for runners seeking the perfect ride.</p>
                    </div>
                </div>
                <div class="innovation-item">
                    <div class="innovation-image">🏃‍♂️</div>
                    <div class="innovation-info">
                        <h3>Vaporfly Series</h3>
                        <p>Marathon shoes that sparked a revolution in distance running, helping athletes break records worldwide.</p>
                    </div>
                </div>
                <div class="innovation-item">
                    <div class="innovation-image">🌟</div>
                    <div class="innovation-info">
                        <h3>Air Max Day</h3>
                        <p>Annual celebration of Air Max culture, bringing together sneakerheads and athletes globally since 2014.</p>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="cta-section">
        <h2>THE JOURNEY CONTINUES</h2>
        <p>From a handshake deal in 1964 to the world's leading sports brand, Nike's story is one of relentless innovation, athletic excellence, and cultural impact. As we look to the future, one thing remains constant: If you have a body, you are an athlete.</p>
        <div class="cta-buttons">
            <a href="../nike1972-1990/WebForm1.aspx" class="cta-button secondary">← Innovation Era</a>
            <a href="../NikePage/WebForm1.aspx" class="cta-button">Back to Collection</a>
        </div>
    </div>
</asp:Content>
