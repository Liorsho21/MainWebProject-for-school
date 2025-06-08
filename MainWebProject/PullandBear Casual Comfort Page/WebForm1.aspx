<%@ Page Title="" Language="C#" MasterPageFile="~/master/Site1.Master" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="MainWebProject.Pull_Bear_Casual_Comfort_Page.WebForm1" %>
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
            background: #2c3e50;
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
            background: linear-gradient(to bottom, rgba(44,62,80,0.3) 0%, rgba(44,62,80,0.6) 100%);
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

        .philosophy-section {
            background: white;
            padding: 60px;
            border-radius: 20px;
            box-shadow: 0 10px 30px rgba(0,0,0,0.08);
            margin-bottom: 80px;
        }

        .philosophy-content {
            max-width: 800px;
            margin: 0 auto;
            text-align: center;
        }

        .philosophy-content h3 {
            font-family: "Anton SC", sans-serif;
            font-size: 2.5rem;
            margin-bottom: 30px;
        }

        .philosophy-content p {
            font-size: 1.2rem;
            line-height: 1.8;
            color: #555;
            margin-bottom: 20px;
        }

        .elements-section {
            background: #2c3e50;
            color: white;
            padding: 80px 0;
            margin: 0;
        }

        .elements-grid {
            display: grid;
            grid-template-columns: repeat(3, 1fr);
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

        .element-title {
            font-family: "Anton SC", sans-serif;
            font-size: 1.8rem;
            margin-bottom: 15px;
        }

        .element-desc {
            opacity: 0.9;
            line-height: 1.6;
        }

        .lifestyle-section {
            padding: 80px 40px;
            background: #f5f5f5;
        }

        .lifestyle-grid {
            display: grid;
            grid-template-columns: 1fr 1fr;
            gap: 60px;
            align-items: center;
            margin-top: 40px;
        }

        .lifestyle-content h3 {
            font-family: "Anton SC", sans-serif;
            font-size: 2rem;
            margin-bottom: 20px;
        }

        .lifestyle-content p {
            line-height: 1.8;
            color: #555;
            margin-bottom: 20px;
        }

        .lifestyle-image {
            height: 400px;
            overflow: hidden;
            border-radius: 15px;
            box-shadow: 0 10px 30px rgba(0,0,0,0.1);
        }

        .lifestyle-image img {
            width: 100%;
            height: 100%;
            object-fit: cover;
        }

        .fabric-section {
            background: white;
            padding: 80px 40px;
        }

        .fabric-grid {
            display: grid;
            grid-template-columns: repeat(4, 1fr);
            gap: 30px;
            margin-top: 40px;
        }

        .fabric-card {
            text-align: center;
            padding: 30px;
            background: #f5f5f5;
            border-radius: 15px;
            transition: all 0.3s ease;
        }

        .fabric-card:hover {
            transform: translateY(-5px);
            box-shadow: 0 10px 30px rgba(0,0,0,0.1);
        }

        .fabric-icon {
            font-size: 2.5rem;
            margin-bottom: 15px;
        }

        .fabric-name {
            font-family: "Anton SC", sans-serif;
            font-size: 1.3rem;
            margin-bottom: 10px;
        }

        .fabric-desc {
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

            .elements-grid {
                grid-template-columns: 1fr;
            }

            .lifestyle-grid {
                grid-template-columns: 1fr;
            }

            .fabric-grid {
                grid-template-columns: repeat(2, 1fr);
            }
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="hero-section">
        <img src="https://images.unsplash.com/photo-1576566588028-4147f3842f27?w=1600&h=500&fit=crop" alt="Casual Comfort">
        <div class="hero-overlay">
            <div class="hero-content">
                <h1>Casual Comfort</h1>
                <p>Where relaxation meets style in perfect harmony</p>
            </div>
        </div>
    </div>

    <div class="content-section">
        <div class="section-header">
            <h2>The Comfort Philosophy</h2>
        </div>
        
        <div class="philosophy-section">
            <div class="philosophy-content">
                <h3>Comfort First, Style Always</h3>
                <p>In a world that never stops moving, comfort has become the ultimate luxury. Our Casual Comfort collection is designed for those who refuse to compromise between feeling good and looking great.</p>
                <p>From morning coffee runs to late-night hangouts with friends, these pieces move with you through every moment of your day. Because true style isn't about suffering for fashion—it's about feeling confident in your own skin.</p>
            </div>
        </div>
    </div>

    <div class="elements-section">
        <div class="section-header">
            <h2 style="color: white;">Elements of Comfort</h2>
        </div>
        
        <div class="elements-grid">
            <div class="element-card">
                <div class="element-icon">☁️</div>
                <div class="element-title">Soft Touch</div>
                <div class="element-desc">Premium cotton blends that feel like a gentle hug all day long</div>
            </div>
            <div class="element-card">
                <div class="element-icon">🌊</div>
                <div class="element-title">Easy Movement</div>
                <div class="element-desc">Relaxed fits that move with your body, never against it</div>
            </div>
            <div class="element-card">
                <div class="element-icon">🎯</div>
                <div class="element-title">Versatile Style</div>
                <div class="element-desc">Pieces that work from couch to café without missing a beat</div>
            </div>
        </div>
    </div>

    <div class="lifestyle-section">
        <div class="section-header">
            <h2>Living the Casual Life</h2>
        </div>
        
        <div class="lifestyle-grid">
            <div class="lifestyle-content">
                <h3>Your Everyday Uniform</h3>
                <p>The modern lifestyle demands clothing that can keep up. Whether you're working from home, meeting friends for brunch, or just enjoying a lazy Sunday, our casual comfort pieces are designed to be your go-to uniform.</p>
                <p>Think oversized hoodies that cocoon you in warmth, perfectly worn-in tees that get softer with every wash, and joggers that blur the line between loungewear and streetwear.</p>
            </div>
            <div class="lifestyle-image">
                <img src="https://images.unsplash.com/photo-1591047139829-d91aecb6caea?w=600&h=400&fit=crop" alt="Casual Lifestyle">
            </div>
        </div>

        <div class="lifestyle-grid" style="margin-top: 60px;">
            <div class="lifestyle-image">
                <img src="https://images.unsplash.com/photo-1564557287817-3785e38ec1f5?w=600&h=400&fit=crop" alt="Comfort Style">
            </div>
            <div class="lifestyle-content">
                <h3>The Art of Relaxed Dressing</h3>
                <p>Casual doesn't mean careless. It's about understanding that the best outfits are the ones that make you feel like yourself. Our collection celebrates the art of relaxed dressing—where comfort and style exist in perfect balance.</p>
                <p>From neutral tones that mix and match effortlessly to pops of color that brighten your mood, every piece is designed to make getting dressed the easiest part of your day.</p>
            </div>
        </div>
    </div>

    <div class="fabric-section">
        <div class="section-header">
            <h2>Fabric Technology</h2>
        </div>
        
        <div class="fabric-grid">
            <div class="fabric-card">
                <div class="fabric-icon">🌿</div>
                <div class="fabric-name">Organic Cotton</div>
                <div class="fabric-desc">Sustainably sourced for softness and peace of mind</div>
            </div>
            <div class="fabric-card">
                <div class="fabric-icon">💨</div>
                <div class="fabric-name">Breathable Blends</div>
                <div class="fabric-desc">Keep you cool and comfortable all day</div>
            </div>
            <div class="fabric-card">
                <div class="fabric-icon">🔄</div>
                <div class="fabric-name">Stretch Technology</div>
                <div class="fabric-desc">Moves with you for unrestricted comfort</div>
            </div>
            <div class="fabric-card">
                <div class="fabric-icon">🛡️</div>
                <div class="fabric-name">Durable Design</div>
                <div class="fabric-desc">Built to last through countless wears and washes</div>
            </div>
        </div>
    </div>

    <center>
        <a href="../PullandBear/WebForm1.aspx" class="back-link">← Back to Pull&amp;Bear Collections</a>
    </center>
</asp:Content>
