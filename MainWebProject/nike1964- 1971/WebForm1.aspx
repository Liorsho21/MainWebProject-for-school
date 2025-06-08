<%@ Page Title="" Language="C#" MasterPageFile="~/master/Site1.Master" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="MainWebProject.nike1964__1971.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <title>Nike Origins: 1964-1971</title>
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
            height: 500px;
            background: linear-gradient(135deg, #1a1a1a 0%, #2d2d2d 100%);
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
        }

        .hero-content h1 {
            font-family: "Anton SC", sans-serif;
            font-size: 5rem;
            margin-bottom: 20px;
            text-shadow: 2px 2px 4px rgba(0,0,0,0.5);
        }

        .hero-content p {
            font-size: 1.3rem;
            opacity: 0.9;
        }

        .hero-image {
            position: absolute;
            right: -100px;
            top: 50%;
            transform: translateY(-50%);
            opacity: 0.3;
        }

        .hero-image img {
            width: 600px;
            height: auto;
        }

        .timeline-section {
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

        .timeline {
            position: relative;
            padding: 20px 0;
        }

        .timeline:before {
            content: "";
            position: absolute;
            left: 50%;
            top: 0;
            bottom: 0;
            width: 2px;
            background: #ddd;
            transform: translateX(-50%);
        }

        .timeline-item {
            position: relative;
            margin-bottom: 50px;
            display: flex;
            align-items: center;
        }

        .timeline-item:nth-child(odd) {
            justify-content: flex-start;
        }

        .timeline-item:nth-child(even) {
            justify-content: flex-end;
        }

        .timeline-content {
            width: 45%;
            background: white;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 5px 20px rgba(0,0,0,0.1);
            position: relative;
            transition: transform 0.3s ease;
        }

        .timeline-content:hover {
            transform: translateY(-5px);
            box-shadow: 0 8px 30px rgba(0,0,0,0.15);
        }

        .timeline-date {
            position: absolute;
            top: 30px;
            font-weight: bold;
            color: #fa5400;
            font-size: 1.2rem;
        }

        .timeline-item:nth-child(odd) .timeline-date {
            right: -120px;
        }

        .timeline-item:nth-child(even) .timeline-date {
            left: -120px;
        }

        .timeline-content h3 {
            font-family: "Anton SC", sans-serif;
            font-size: 1.8rem;
            margin-bottom: 15px;
            color: #1a1a1a;
        }

        .timeline-content p {
            line-height: 1.6;
            color: #666;
        }

        .founders-section {
            background: #1a1a1a;
            color: white;
            padding: 80px 0;
            margin-top: 80px;
        }

        .founders-grid {
            max-width: 1200px;
            margin: 0 auto;
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
            gap: 40px;
            padding: 0 20px;
        }

        .founder-card {
            text-align: center;
            padding: 40px;
            background: rgba(255,255,255,0.05);
            border-radius: 15px;
            transition: all 0.3s ease;
        }

        .founder-card:hover {
            background: rgba(255,255,255,0.1);
            transform: translateY(-10px);
        }

        .founder-card h3 {
            font-family: "Anton SC", sans-serif;
            font-size: 2rem;
            margin-bottom: 10px;
            color: #fa5400;
        }

        .founder-card h4 {
            font-size: 1.1rem;
            margin-bottom: 20px;
            opacity: 0.8;
        }

        .founder-card p {
            line-height: 1.6;
            opacity: 0.9;
        }

        .facts-section {
            max-width: 1200px;
            margin: 80px auto;
            padding: 0 20px;
        }

        .facts-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
            gap: 30px;
            margin-top: 40px;
        }

        .fact-card {
            background: white;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 5px 20px rgba(0,0,0,0.1);
            text-align: center;
            transition: all 0.3s ease;
            border-top: 4px solid #fa5400;
        }

        .fact-card:hover {
            transform: translateY(-5px);
            box-shadow: 0 8px 30px rgba(0,0,0,0.15);
        }

        .fact-number {
            font-family: "Anton SC", sans-serif;
            font-size: 3rem;
            color: #fa5400;
            margin-bottom: 10px;
        }

        .fact-label {
            font-size: 1.1rem;
            color: #666;
        }

        .cta-section {
            text-align: center;
            padding: 80px 20px;
            background: linear-gradient(135deg, #fa5400 0%, #ff7700 100%);
            color: white;
        }

        .cta-section h2 {
            font-family: "Anton SC", sans-serif;
            font-size: 3rem;
            margin-bottom: 20px;
        }

        .cta-section p {
            font-size: 1.2rem;
            margin-bottom: 30px;
            max-width: 600px;
            margin-left: auto;
            margin-right: auto;
        }

        .cta-button {
            display: inline-block;
            padding: 15px 40px;
            background: white;
            color: #fa5400;
            text-decoration: none;
            border-radius: 30px;
            font-weight: bold;
            transition: all 0.3s ease;
        }

        .cta-button:hover {
            transform: translateY(-3px);
            box-shadow: 0 5px 20px rgba(0,0,0,0.2);
        }

        @media (max-width: 768px) {
            .hero-content h1 {
                font-size: 3rem;
            }

            .timeline:before {
                left: 30px;
            }

            .timeline-item {
                justify-content: flex-start !important;
                margin-left: 60px;
            }

            .timeline-content {
                width: calc(100% - 60px);
            }

            .timeline-date {
                position: static !important;
                margin-bottom: 10px;
            }

            .hero-image {
                display: none;
            }
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="hero-section">
        <div class="hero-content">
            <h1>THE BEGINNING</h1>
            <p>From Blue Ribbon Sports to Nike: The Foundation Years</p>
        </div>
        <div class="hero-image">
            <img src="/images/vintage-shoe-silhouette.png" alt="Vintage Shoe">
        </div>
    </div>

    <div class="timeline-section">
        <h2 class="section-title">THE JOURNEY BEGINS</h2>
        <div class="timeline">
            <div class="timeline-item">
                <div class="timeline-content">
                    <span class="timeline-date">1964</span>
                    <h3>Blue Ribbon Sports</h3>
                    <p>Phil Knight and Bill Bowerman shake hands to form Blue Ribbon Sports, investing $500 each. Their first year sees $8,000 in sales of Japanese Onitsuka Tiger shoes.</p>
                </div>
            </div>
            <div class="timeline-item">
                <div class="timeline-content">
                    <span class="timeline-date">1966</span>
                    <h3>First Employee</h3>
                    <p>Jeff Johnson becomes the first full-time employee, opening the company's first retail store in Santa Monica, California.</p>
                </div>
            </div>
            <div class="timeline-item">
                <div class="timeline-content">
                    <span class="timeline-date">1967</span>
                    <h3>The Waffle Iron</h3>
                    <p>Bill Bowerman experiments with his wife's waffle iron, pouring rubber into it to create a new sole pattern that would revolutionize running shoes.</p>
                </div>
            </div>
            <div class="timeline-item">
                <div class="timeline-content">
                    <span class="timeline-date">1971</span>
                    <h3>The Swoosh is Born</h3>
                    <p>Carolyn Davidson, a graphic design student, creates the iconic Swoosh logo for just $35. The Nike name, inspired by the Greek goddess of victory, is chosen.</p>
                </div>
            </div>
        </div>
    </div>

    <div class="founders-section">
        <h2 class="section-title" style="color: white;">THE FOUNDERS</h2>
        <div class="founders-grid">
            <div class="founder-card">
                <h3>Phil Knight</h3>
                <h4>Co-Founder & CEO</h4>
                <p>A middle-distance runner at the University of Oregon, Knight had the vision to import high-quality, low-cost running shoes from Japan. His business acumen and competitive spirit drove Nike's early growth.</p>
            </div>
            <div class="founder-card">
                <h3>Bill Bowerman</h3>
                <h4>Co-Founder & Innovator</h4>
                <p>The legendary Oregon track coach was obsessed with making his runners faster. His relentless experimentation with shoe design laid the foundation for Nike's culture of innovation.</p>
            </div>
        </div>
    </div>

    <div class="facts-section">
        <h2 class="section-title">FOUNDATION FACTS</h2>
        <div class="facts-grid">
            <div class="fact-card">
                <div class="fact-number">$500</div>
                <div class="fact-label">Each founder's initial investment</div>
            </div>
            <div class="fact-card">
                <div class="fact-number">$35</div>
                <div class="fact-label">Cost of the Swoosh logo</div>
            </div>
            <div class="fact-card">
                <div class="fact-number">1,000</div>
                <div class="fact-label">Pairs sold in first year</div>
            </div>
            <div class="fact-card">
                <div class="fact-number">7</div>
                <div class="fact-label">Years as Blue Ribbon Sports</div>
            </div>
        </div>
    </div>

    <div class="cta-section">
        <h2>THE STORY CONTINUES</h2>
        <p>See how Nike revolutionized athletic footwear and became a global phenomenon</p>
        <a href="../nike1972-1990/WebForm1.aspx" class="cta-button">Explore 1972-1990 →</a>
    </div>
</asp:Content>
