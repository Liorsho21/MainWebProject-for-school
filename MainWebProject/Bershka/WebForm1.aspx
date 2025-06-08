<%@ Page Title="" Language="C#" MasterPageFile="~/master/Site1.Master" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="MainWebProject.Bershka.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../master/StyleSheet1.css" rel="stylesheet" />
    <link href="https://fonts.googleapis.com/css2?family=Anton&display=swap" rel="stylesheet">
    <style>
        body {
            background-color: #f5f5f5;
        }

        .banner-container {
            position: relative;
            overflow: hidden;
            height: 500px;
            background: #000;
            margin-bottom: 0;
        }

        .banner-container img {
            width: 100%;
            height: 100%;
            object-fit: cover;
            display: block;
            opacity: 0.7;
        }

        .banner-overlay {
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: linear-gradient(to bottom, rgba(0,0,0,0.4) 0%, rgba(0,0,0,0.7) 100%);
            display: flex;
            align-items: center;
            justify-content: center;
        }

        .banner-content {
            text-align: center;
            color: white;
        }

        .banner-content h1 {
            font-family: "Anton SC", sans-serif;
            font-size: 6rem;
            margin-bottom: 20px;
            text-transform: uppercase;
            letter-spacing: 8px;
        }

        .banner-content p {
            font-size: 1.3rem;
            max-width: 600px;
            margin: 0 auto;
            font-style: italic;
        }

        .highlight {
            text-align: center;
            padding: 80px 20px;
            background: white;
        }

        .highlight-content {
            max-width: 900px;
            margin: 0 auto;
        }

        .highlight h1 {
            font-size: 3.5rem;
            margin-bottom: 30px;
            font-family: "Anton SC", sans-serif;
            letter-spacing: 2px;
            position: relative;
            display: inline-block;
        }

        .highlight h1:after {
            content: "";
            position: absolute;
            bottom: -15px;
            left: 50%;
            transform: translateX(-50%);
            width: 80px;
            height: 4px;
            background: #000;
        }

        .highlight p {
            font-size: 1.2rem;
            line-height: 1.8;
            color: #555;
            margin-top: 40px;
        }

        .content-container {
            background: #f5f5f5;
        }

        .container {
            padding: 60px 40px;
            margin: 0 auto;
            max-width: 1200px;
        }

        .section-title {
            text-align: center;
            margin-bottom: 50px;
        }

        .section-title h1 {
            font-family: "Anton SC", sans-serif;
            font-size: 3rem;
            position: relative;
            display: inline-block;
            color: #1a1a1a;
        }

        .section-title h1:after {
            content: "";
            position: absolute;
            bottom: -10px;
            left: 50%;
            transform: translateX(-50%);
            width: 60px;
            height: 4px;
            background: #000;
        }

        .products {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
            gap: 30px;
        }

        .product-box {
            position: relative;
            border-radius: 15px;
            overflow: hidden;
            cursor: pointer;
            transition: all 0.3s ease;
            text-decoration: none;
            color: #111;
            display: block;
            background: white;
            box-shadow: 0 5px 15px rgba(0, 0, 0, 0.1);
        }

        .product-box:hover {
            transform: translateY(-10px);
            box-shadow: 0 15px 30px rgba(0, 0, 0, 0.15);
        }

        .product-image-wrapper {
            position: relative;
            height: 350px;
            overflow: hidden;
            background: #f0f0f0;
        }

        .product-box img {
            width: 100%;
            height: 100%;
            object-fit: cover;
            transition: transform 0.3s ease;
        }

        .product-box:hover img {
            transform: scale(1.08);
        }

        .badge {
            position: absolute;
            top: 15px;
            right: 15px;
            background: #000;
            color: white;
            padding: 6px 12px;
            border-radius: 20px;
            font-size: 0.85rem;
            font-weight: bold;
        }

        .badge.new {
            background: #ff0000;
        }

        .product-box-content {
            padding: 25px;
        }

        .product-box h2 {
            font-family: "Anton SC", sans-serif;
            font-weight: 400;
            margin-bottom: 10px;
            font-size: 1.6rem;
            color: #1a1a1a;
        }

        .product-box label {
            font-size: 1rem;
            color: #666;
            display: block;
            line-height: 1.5;
        }

        .trends-section {
            background: #000;
            color: white;
            width: 100%;
            margin: 0;
            padding: 60px 0;
        }
        
        .trends-section .container {
            max-width: 1200px;
            margin: 0 auto;
            padding: 0 40px;
        }

        .trends-section .section-title h1 {
            color: white;
        }

        .trends-section .section-title h1:after {
            background: #fff;
        }

        .trends-section .product-box {
            background: rgba(255,255,255,0.05);
            border: 1px solid rgba(255,255,255,0.1);
        }

        .trends-section .product-box:hover {
            background: rgba(255,255,255,0.1);
        }

        .trends-section .product-box h2 {
            color: white;
        }

        .trends-section .product-box label {
            color: rgba(255,255,255,0.8);
        }

        @media (max-width: 768px) {
            .banner-container {
                height: 400px;
            }
            
            .banner-content h1 {
                font-size: 3.5rem;
                letter-spacing: 4px;
            }
            
            .banner-content p {
                font-size: 1.1rem;
            }
            
            .highlight {
                padding: 50px 20px;
            }
            
            .highlight h1 {
                font-size: 2.5rem;
            }
            
            .section-title h1 {
                font-size: 2.2rem;
            }
            
            .products {
                grid-template-columns: 1fr;
                gap: 25px;
            }
            
            .container {
                padding: 40px 20px;
            }

            .product-image-wrapper {
                height: 300px;
            }
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <div class="banner-container">
        <img src="https://images.unsplash.com/photo-1558769132-cb1aea458c5e?w=1600&h=500&fit=crop" alt="Bershka Banner">
        <div class="banner-overlay">
            <div class="banner-content">
                <h1>BERSHKA</h1>
                <p>Fashion that speaks your language</p>
            </div>
        </div>
    </div>

    <div class="highlight">
        <div class="highlight-content">
            <h1>BERSHKA</h1>
            <p>Born in 1998 as part of the Inditex group, Bershka has become the go-to destination for young fashion enthusiasts seeking bold, trend-driven designs. With a perfect blend of street style and high fashion influences, Bershka creates collections that resonate with the digital generation's desire for self-expression and individuality.</p>
        </div>
    </div>

    <div class="content-container">
        <div class="container">
            <div class="section-title">
                <h1>Current Collections</h1>
            </div>
            <div class="products">
                <a href="../Streetwear Essentials/WebForm1.aspx" class="product-box">
                    <div class="product-image-wrapper">
                        <span class="badge new">NEW</span>
                        <img src="https://images.unsplash.com/photo-1552374196-1ab2a1c593e8?w=400&h=350&fit=crop" alt="Streetwear Collection">
                    </div>
                    <div class="product-box-content">
                        <h2>Streetwear Essentials</h2>
                        <label>Urban-inspired pieces featuring oversized fits, bold graphics, and contemporary silhouettes.</label>
                    </div>
                </a>
                <a href="../Denim Revolution/WebForm1.aspx" class="product-box">
                    <div class="product-image-wrapper">
                        <span class="badge">TRENDING</span>
                        <img src="https://images.unsplash.com/photo-1542272604-787c3835535d?w=400&h=350&fit=crop" alt="Denim Collection">
                    </div>
                    <div class="product-box-content">
                        <h2>Denim Revolution</h2>
                        <label>Reimagined classics with distressed details, unique washes, and innovative cuts.</label>
                    </div>
                </a>
                <a href="../Night Out Edit/WebForm1.aspx" class="product-box">
                    <div class="product-image-wrapper">
                        <span class="badge">LIMITED</span>
                        <img src="https://images.unsplash.com/photo-1539109136881-3be0616acf4b?w=400&h=350&fit=crop" alt="Party Collection">
                    </div>
                    <div class="product-box-content">
                        <h2>Night Out Edit</h2>
                        <label>Statement pieces designed to turn heads, featuring metallics, sequins, and bold cuts.</label>
                    </div>
                </a>
            </div>
        </div>

        <div class="trends-section">
            <div class="container">
                <div class="section-title">
                    <h1>Shop by Category</h1>
                </div>
                <div class="products">
                    <a href="../Bershka Women's Fashion Page/WebForm1.aspx" class="product-box">
                        <div class="product-image-wrapper">
                            <img src="https://images.unsplash.com/photo-1485968579580-b6d095142e6e?w=400&h=350&fit=crop" alt="Women's Fashion">
                        </div>
                        <div class="product-box-content">
                            <h2>Women's Fashion</h2>
                            <label>From casual everyday wear to glamorous evening outfits, discover your perfect style.</label>
                        </div>
                    </a>
                    <a href="../Bershka Men's Fashion Page/WebForm1.aspx" class="product-box">
                        <div class="product-image-wrapper">
                            <img src="https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?w=400&h=350&fit=crop" alt="Men's Fashion">
                        </div>
                        <div class="product-box-content">
                            <h2>Men's Fashion</h2>
                            <label>Contemporary menswear combining comfort with cutting-edge street style.</label>
                        </div>
                    </a>
                    <a href="../Bershka Footwear Page/WebForm1.aspx" class="product-box">
                        <div class="product-image-wrapper">
                            <img src="https://images.unsplash.com/photo-1460353581641-37baddab0fa2?w=400&h=350&fit=crop" alt="Footwear">
                        </div>
                        <div class="product-box-content">
                            <h2>Footwear</h2>
                            <label>Step up your shoe game with sneakers, boots, and sandals for every occasion.</label>
                        </div>
                    </a>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
