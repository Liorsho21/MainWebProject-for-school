<%@ Page Title="" Language="C#" MasterPageFile="~/master/Site1.Master" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="MainWebProject.nike1972_1990.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Nike Innovation Era: 1972-1990</title>
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
            background: linear-gradient(45deg, #fa5400 0%, #ff8800 100%);
            overflow: hidden;
        }

        .hero-content {
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            text-align: center;
            color: white;
            z-index: 2;
            width: 90%;
            max-width: 800px;
        }

        .hero-content h1 {
            font-family: "Anton SC", sans-serif;
            font-size: 5rem;
            margin-bottom: 20px;
            text-transform: uppercase;
            letter-spacing: 3px;
        }

        .hero-content p {
            font-size: 1.4rem;
            opacity: 0.95;
            margin-bottom: 30px;
        }

        .hero-pattern {
            position: absolute;
            width: 200%;
            height: 200%;
            top: -50%;
            left: -50%;
            background-image: repeating-linear-gradient(45deg, transparent, transparent 35px, rgba(255,255,255,.05) 35px, rgba(255,255,255,.05) 70px);
            animation: slide 20s linear infinite;
        }

        @keyframes slide {
            0% { transform: translate(0, 0); }
            100% { transform: translate(70px, 70px); }
        }

        .innovations-section {
            max-width: 1200px;
            margin: 80px auto;
            padding: 0 20px;
        }

        .section-header {
            text-align: center;
            margin-bottom: 60px;
        }

        .section-header h2 {
            font-family: "Anton SC", sans-serif;
            font-size: 3.5rem;
            margin-bottom: 20px;
            position: relative;
            display: inline-block;
        }

        .section-header h2:after {
            content: "";
            position: absolute;
            bottom: -10px;
            left: 0;
            width: 100%;
            height: 4px;
            background: #fa5400;
        }

        .innovation-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(350px, 1fr));
            gap: 40px;
            margin-top: 50px;
        }

        .innovation-card {
            background: white;
            border-radius: 15px;
            overflow: hidden;
            box-shadow: 0 10px 30px rgba(0,0,0,0.1);
            transition: all 0.4s ease;
            position: relative;
        }

        .innovation-card:hover {
            transform: translateY(-10px);
            box-shadow: 0 20px 40px rgba(0,0,0,0.15);
        }

        .innovation-year {
            position: absolute;
            top: 20px;
            right: 20px;
            background: #fa5400;
            color: white;
            padding: 8px 15px;
            border-radius: 20px;
            font-weight: bold;
            z-index: 1;
        }

        .innovation-image {
            width: 100%;
            height: 250px;
            background: linear-gradient(135deg, #f0f0f0 0%, #e0e0e0 100%);
            display: flex;
            align-items: center;
            justify-content: center;
            font-size: 3rem;
            color: #ccc;
        }

        .innovation-content {
            padding: 30px;
        }

        .innovation-content h3 {
            font-family: "Anton SC", sans-serif;
            font-size: 2rem;
            margin-bottom: 15px;
            color: #1a1a1a;
        }

        .innovation-content p {
            line-height: 1.6;
            color: #666;
            margin-bottom: 20px;
        }

        .tech-tag {
            display: inline-block;
            background: #f0f0f0;
            padding: 5px 12px;
            border-radius: 15px;
            font-size: 0.85rem;
            margin-right: 8px;
            margin-bottom: 8px;
        }

        .milestones-section {
            background: #1a1a1a;
            color: white;
            padding: 80px 0;
            position: relative;
            overflow: hidden;
        }

        .milestones-container {
            max-width: 1200px;
            margin: 0 auto;
            padding: 0 20px;
        }

        .milestone-item {
            display: flex;
            align-items: center;
            margin-bottom: 60px;
            position: relative;
        }

        .milestone-item:nth-child(even) {
            flex-direction: row-reverse;
        }

        .milestone-content {
            flex: 1;
            padding: 0 40px;
        }

        .milestone-content h3 {
            font-family: "Anton SC", sans-serif;
            font-size: 2.5rem;
            margin-bottom: 15px;
            color: #fa5400;
        }

        .milestone-content p {
            line-height: 1.6;
            opacity: 0.9;
            font-size: 1.1rem;
        }

        .milestone-icon {
            width: 120px;
            height: 120px;
            background: #fa5400;
            border-radius: 50%;
            display: flex;
            align-items: center;
            justify-content: center;
            font-size: 3rem;
            flex-shrink: 0;
        }

        .stats-section {
            max-width: 1200px;
            margin: 80px auto;
            padding: 0 20px;
            text-align: center;
        }

        .stats-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
            gap: 40px;
            margin-top: 50px;
        }

        .stat-card {
            background: linear-gradient(135deg, #fa5400 0%, #ff8800 100%);
            color: white;
            padding: 40px;
            border-radius: 15px;
            position: relative;
            overflow: hidden;
            transition: transform 0.3s ease;
        }

        .stat-card:hover {
            transform: scale(1.05);
        }

        .stat-card:before {
            content: "";
            position: absolute;
            top: -50%;
            right: -50%;
            width: 200%;
            height: 200%;
            background: rgba(255,255,255,0.1);
            transform: rotate(45deg);
        }

        .stat-number {
            font-family: "Anton SC", sans-serif;
            font-size: 4rem;
            margin-bottom: 10px;
            position: relative;
        }

        .stat-label {
            font-size: 1.2rem;
            position: relative;
        }

        .athletes-section {
            background: #f8f8f8;
            padding: 80px 0;
        }

        .athletes-container {
            max-width: 1200px;
            margin: 0 auto;
            padding: 0 20px;
        }

        .athletes-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
            gap: 40px;
            margin-top: 50px;
        }

        .athlete-card {
            background: white;
            border-radius: 15px;
            padding: 30px;
            text-align: center;
            box-shadow: 0 5px 20px rgba(0,0,0,0.1);
            transition: all 0.3s ease;
        }

        .athlete-card:hover {
            transform: translateY(-5px);
            box-shadow: 0 10px 30px rgba(0,0,0,0.15);
        }

        .athlete-icon {
            width: 80px;
            height: 80px;
            background: #fa5400;
            border-radius: 50%;
            margin: 0 auto 20px;
            display: flex;
            align-items: center;
            justify-content: center;
            font-size: 2rem;
            color: white;
        }

        .athlete-card h4 {
            font-family: "Anton SC", sans-serif;
            font-size: 1.8rem;
            margin-bottom: 10px;
        }

        .athlete-card p {
            color: #666;
            line-height: 1.6;
        }

        .cta-section {
            text-align: center;
            padding: 100px 20px;
            background: #1a1a1a;
            color: white;
            position: relative;
        }

        .cta-section h2 {
            font-family: "Anton SC", sans-serif;
            font-size: 3.5rem;
            margin-bottom: 20px;
        }

        .cta-section p {
            font-size: 1.3rem;
            margin-bottom: 40px;
            max-width: 600px;
            margin-left: auto;
            margin-right: auto;
            opacity: 0.9;
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
            box-shadow: 0 5px 20px rgba(250,84,0,0.4);
        }

        .cta-button.secondary {
            background: transparent;
            border: 2px solid white;
        }

        .cta-button.secondary:hover {
            background: white;
            color: #1a1a1a;
        }

        @media (max-width: 768px) {
            .hero-content h1 {
                font-size: 3rem;
            }

            .milestone-item {
                flex-direction: column !important;
                text-align: center;
            }

            .milestone-content {
                padding: 20px 0;
            }

            .section-header h2 {
                font-size: 2.5rem;
            }

            .stat-number {
                font-size: 3rem;
            }
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
       <div class="hero-section">
        <div class="hero-pattern"></div>
        <div class="hero-content">
            <h1>THE INNOVATION ERA</h1>
            <p>Revolutionary technologies and global expansion define Nike's golden years</p>
        </div>
    </div>

    <div class="innovations-section">
        <div class="section-header">
            <h2>GAME-CHANGING INNOVATIONS</h2>
        </div>
        <div class="innovation-grid">
            <div class="innovation-card">
                <span class="innovation-year">1972</span>
                <div class="innovation-image">🏃</div>
                <div class="innovation-content">
                    <h3>Nike Cortez</h3>
                    <p>The first shoe designed by Nike featured a revolutionary foam midsole for superior cushioning. It became an instant classic and remains popular today.</p>
                    <div>
                        <span class="tech-tag">Full-length foam</span>
                        <span class="tech-tag">Herringbone outsole</span>
                    </div>
                </div>
            </div>
            <div class="innovation-card">
                <span class="innovation-year">1979</span>
                <div class="innovation-image">💨</div>
                <div class="innovation-content">
                    <h3>Air Technology</h3>
                    <p>Nike Air cushioning technology debuts in the Tailwind running shoe, forever changing how athletic shoes are designed and manufactured.</p>
                    <div>
                        <span class="tech-tag">Pressurized air</span>
                        <span class="tech-tag">Impact protection</span>
                    </div>
                </div>
            </div>
            <div class="innovation-card">
                <span class="innovation-year">1982</span>
                <div class="innovation-image">🏀</div>
                <div class="innovation-content">
                    <h3>Air Force 1</h3>
                    <p>The first basketball shoe with Air technology revolutionizes the court and becomes a cultural icon that transcends sports.</p>
                    <div>
                        <span class="tech-tag">Air-Sole unit</span>
                        <span class="tech-tag">Ankle strap</span>
                    </div>
                </div>
            </div>
            <div class="innovation-card">
                <span class="innovation-year">1985</span>
                <div class="innovation-image">👟</div>
                <div class="innovation-content">
                    <h3>Air Jordan</h3>
                    <p>Michael Jordan's signature shoe launches, creating the template for athlete endorsements and sneaker culture as we know it.</p>
                    <div>
                        <span class="tech-tag">Wings logo</span>
                        <span class="tech-tag">NBA controversy</span>
                    </div>
                </div>
            </div>
            <div class="innovation-card">
                <span class="innovation-year">1987</span>
                <div class="innovation-image">👁️</div>
                <div class="innovation-content">
                    <h3>Visible Air</h3>
                    <p>The Air Max 1 introduces visible Air cushioning, allowing consumers to see the technology at work for the first time.</p>
                    <div>
                        <span class="tech-tag">Air window</span>
                        <span class="tech-tag">Tinker Hatfield</span>
                    </div>
                </div>
            </div>
            <div class="innovation-card">
                <span class="innovation-year">1988</span>
                <div class="innovation-image">✓</div>
                <div class="innovation-content">
                    <h3>Just Do It</h3>
                    <p>Nike launches its iconic "Just Do It" campaign, creating one of the most recognizable slogans in advertising history.</p>
                    <div>
                        <span class="tech-tag">Global campaign</span>
                        <span class="tech-tag">Cultural impact</span>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="milestones-section">
        <div class="milestones-container">
            <div class="section-header">
                <h2 style="color: white;">DEFINING MOMENTS</h2>
            </div>
            <div class="milestone-item">
                <div class="milestone-icon">📈</div>
                <div class="milestone-content">
                    <h3>Going Public</h3>
                    <p>In 1980, Nike completes its Initial Public Offering, becoming a publicly traded company. The IPO raises $4.5 million and values the company at $178 million, setting the stage for unprecedented growth.</p>
                </div>
            </div>
            <div class="milestone-item">
                <div class="milestone-icon">🌍</div>
                <div class="milestone-content">
                    <h3>Global Expansion</h3>
                    <p>Throughout the 1980s, Nike aggressively expands internationally, opening offices in Europe and Asia. By 1990, international sales account for over 40% of total revenue.</p>
                </div>
            </div>
            <div class="milestone-item">
                <div class="milestone-icon">🏆</div>
                <div class="milestone-content">
                    <h3>Athlete Partnerships</h3>
                    <p>Nike revolutionizes sports marketing by signing top athletes like Michael Jordan, Bo Jackson, and John McEnroe, turning them into global brand ambassadors and cultural icons.</p>
                </div>
            </div>
        </div>
    </div>

    <div class="stats-section">
        <div class="section-header">
            <h2>ERA BY THE NUMBERS</h2>
        </div>
        <div class="stats-grid">
            <div class="stat-card">
                <div class="stat-number">$2B</div>
                <div class="stat-label">Revenue by 1990</div>
            </div>
            <div class="stat-card">
                <div class="stat-number">40+</div>
                <div class="stat-label">Countries Reached</div>
            </div>
            <div class="stat-card">
                <div class="stat-number">5,000+</div>
                <div class="stat-label">Employees Worldwide</div>
            </div>
            <div class="stat-card">
                <div class="stat-number">#1</div>
                <div class="stat-label">US Athletic Footwear</div>
            </div>
        </div>
    </div>

    <div class="athletes-section">
        <div class="athletes-container">
            <div class="section-header">
                <h2>LEGENDARY PARTNERSHIPS</h2>
            </div>
            <div class="athletes-grid">
                <div class="athlete-card">
                    <div class="athlete-icon">🏀</div>
                    <h4>Michael Jordan</h4>
                    <p>The partnership that changed everything. Air Jordan became the most successful athlete endorsement in history.</p>
                </div>
                <div class="athlete-card">
                    <div class="athlete-icon">🏈</div>
                    <h4>Bo Jackson</h4>
                    <p>"Bo Knows" campaign showcased the first true crossover athlete, elevating Nike's cross-training category.</p>
                </div>
                <div class="athlete-card">
                    <div class="athlete-icon">🎾</div>
                    <h4>John McEnroe</h4>
                    <p>The rebellious tennis star perfectly embodied Nike's edgy, anti-establishment brand personality.</p>
                </div>
                <div class="athlete-card">
                    <div class="athlete-icon">🏃‍♀️</div>
                    <h4>Joan Benoit</h4>
                    <p>Olympic marathon champion who helped establish Nike's credibility in women's athletics.</p>
                </div>
                <div class="athlete-card">
                    <div class="athlete-icon">🏀</div>
                    <h4>Charles Barkley</h4>
                    <p>The outspoken NBA star brought attitude and performance to Nike Basketball's growing roster.</p>
                </div>
                <div class="athlete-card">
                    <div class="athlete-icon">🎾</div>
                    <h4>Andre Agassi</h4>
                    <p>Young tennis phenom who brought style and flair to Nike's tennis division in the late 80s.</p>
                </div>
            </div>
        </div>
    </div>

    <div class="cta-section">
        <h2>THE EVOLUTION CONTINUES</h2>
        <p>From innovation leader to global powerhouse, see how Nike transformed in the modern era</p>
        <div class="cta-buttons">
            <a href="../nike1964-1971/WebForm1.aspx" class="cta-button secondary">← The Beginning</a>
            <a href="../nike1991-Today/WebForm1.aspx" class="cta-button">Modern Nike →</a>
        </div>
    </div>
</asp:Content>
