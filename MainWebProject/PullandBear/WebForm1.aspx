<%@ Page Title="" Language="C#" MasterPageFile="~/master/Site1.Master" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="MainWebProject.Pull_Bear.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
        <link href="StyleSheet1.css" rel="stylesheet" />
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
            background: #2c3e50;
            margin-bottom: 0;
        }

        .banner-container img {
            width: 100%;
            height: 100%;
            object-fit: cover;
            display: block;
            opacity: 0.8;
        }

        .banner-overlay {
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

        .banner-content {
            text-align: center;
            color: white;
        }

        .banner-content h1 {
            font-family: "Anton SC", sans-serif;
            font-size: 5.5rem;
            margin-bottom: 20px;
            text-transform: uppercase;
            letter-spacing: 6px;
        }

        .banner-content p {
            font-size: 1.3rem;
            max-width: 600px;
            margin: 0 auto;
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
            background: #3498db;
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
            background: #3498db;
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
            background: #3498db;
            color: white;
            padding: 6px 12px;
            border-radius: 20px;
            font-size: 0.85rem;
            font-weight: bold;
        }

        .badge.hot {
            background: #e74c3c;
        }

        .badge.eco {
            background: #27ae60;
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

        .lifestyle-section {
            background: #2c3e50;
            color: white;
            width: 100%;
            margin: 0;
            padding: 60px 0;
        }
        
        .lifestyle-section .container {
            max-width: 1200px;
            margin: 0 auto;
            padding: 0 40px;
        }

        .lifestyle-section .section-title h1 {
            color: white;
        }

        .lifestyle-section .section-title h1:after {
            background: #3498db;
        }

        .lifestyle-section .product-box {
            background: rgba(255,255,255,0.05);
            border: 1px solid rgba(255,255,255,0.1);
        }

        .lifestyle-section .product-box:hover {
            background: rgba(255,255,255,0.1);
        }

        .lifestyle-section .product-box h2 {
            color: white;
        }

        .lifestyle-section .product-box label {
            color: rgba(255,255,255,0.8);
        }

        @media (max-width: 768px) {
            .banner-container {
                height: 400px;
            }
            
            .banner-content h1 {
                font-size: 3.5rem;
                letter-spacing: 3px;
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
        <img src="https://images.unsplash.com/photo-1523381210434-271e8be1f52b?w=1600&h=500&fit=crop" alt="Pull&Bear Banner">
        <div class="banner-overlay">
            <div class="banner-content">
                <h1>PULL&BEAR</h1>
                <p>Casual style for the young at heart</p>
            </div>
        </div>
    </div>

    <div class="highlight">
        <div class="highlight-content">
            <h1>PULL&BEAR</h1>
            <p>Founded in 1991, Pull&Bear captures the essence of youth culture with relaxed, comfortable fashion that doesn't compromise on style. Born from the spirit of independence and creativity, Pull&Bear offers accessible fashion that celebrates individuality, music, and the arts, making it a favorite among young people who value authenticity and self-expression.</p>
        </div>
    </div>

    <div class="content-container">
        <div class="container">
            <div class="section-title">
                <h1>Latest Drops</h1>
            </div>
            <div class="products">
                <a href="../PullandBear Casual Comfort Page/WebForm1.aspx" class="product-box">
                    <div class="product-image-wrapper">
                        <span class="badge hot">HOT</span>
                        <img src="https://images.unsplash.com/photo-1576566588028-4147f3842f27?w=400&h=350&fit=crop" alt="Casual Collection">
                    </div>
                    <div class="product-box-content">
                        <h2>Casual Comfort</h2>
                        <label>Relaxed fits and soft fabrics for everyday wear, featuring hoodies, tees, and joggers.</label>
                    </div>
                </a>
                <a href="../PullandBear Beach Vibes Page/WebForm1.aspx" class="product-box">
                    <div class="product-image-wrapper">
                        <span class="badge">NEW</span>
                        <img src="https://images.unsplash.com/photo-1434389677669-e08b4cac3105?w=400&h=350&fit=crop" alt="Beach Collection">
                    </div>
                    <div class="product-box-content">
                        <h2>Beach Vibes</h2>
                        <label>Summer essentials including swimwear, shorts, and tropical prints for your next adventure.</label>
                    </div>
                </a>
                <a href="../pullandpage Eco-Friendly Line Page/WebForm1.aspx" class="product-box">
                    <div class="product-image-wrapper">
                        <span class="badge eco">ECO</span>
                        <img src="https://images.unsplash.com/photo-1591047139829-d91aecb6caea?w=400&h=350&fit=crop" alt="Sustainable Collection">
                    </div>
                    <div class="product-box-content">
                        <h2>Eco-Friendly Line</h2>
                        <label>Sustainable fashion made from organic cotton and recycled materials for conscious consumers.</label>
                    </div>
                </a>
            </div>
        </div>

        <div class="lifestyle-section">
            <div class="container">
                <div class="section-title">
                    <h1>Lifestyle Collections</h1>
                </div>
                <div class="products">
                    <a href="../pullandbear%20Women's/WebForm1.aspx" class="product-box">
                        <div class="product-image-wrapper">
                            <img src="https://images.unsplash.com/photo-1503342217505-b0a15ec3261c?w=400&h=350&fit=crop" alt="Women's Collection">
                        </div>
                        <div class="product-box-content">
                            <h2>Women's Style</h2>
                            <label>Effortless fashion combining comfort and trends, perfect for the modern woman.</label>
                        </div>
                    </a>
                    <a href="../pullandbear%20%20Men's%20Essentials/WebForm1.aspx" class="product-box">
                        <div class="product-image-wrapper">
                            <img src="https://images.unsplash.com/photo-1480429370139-e0132c086e2a?w=400&h=350&fit=crop" alt="Men's Collection">
                        </div>
                        <div class="product-box-content">
                            <h2>Men's Essentials</h2>
                            <label>Laid-back menswear with an urban edge, from basics to statement pieces.</label>
                        </div>
                    </a>
                    <a href="../pullandbear Sneaker Culture/WebForm1.aspx" class="product-box">
                        <div class="product-image-wrapper">
                            <img src="https://images.unsplash.com/photo-1556906781-9a412961c28c?w=400&h=350&fit=crop" alt="Sneakers Collection">
                        </div>
                        <div class="product-box-content">
                            <h2>Sneaker Culture</h2>
                            <label>Fresh kicks and casual footwear that complete your street-ready look.</label>
                        </div>
                    </a>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
