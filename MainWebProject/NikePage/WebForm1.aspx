<%@ Page Title="" Language="C#" MasterPageFile="~/master/Site1.Master" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="MainWebProject.NikePage.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <link href="StyleSheet1.css" rel="stylesheet" />
    <link href="../master/StyleSheet1.css" rel="stylesheet" />
    <link href="https://fonts.googleapis.com/css2?family=Anton&display=swap" rel="stylesheet">
    <style>
        body {
            background-color: #f5f5f5;
        }

        /* Hero Banner Section */
        .banner-container {
            position: relative;
            overflow: hidden;
            height: 500px;
            background: #1a1a1a;
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
            background: linear-gradient(to bottom, rgba(0,0,0,0.3) 0%, rgba(0,0,0,0.6) 100%);
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
        }

        /* Highlight Section */
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
            background: #fa5400;
        }

        .highlight p {
            font-size: 1.2rem;
            line-height: 1.8;
            color: #555;
            margin-top: 40px;
        }

        /* Content Container */
        .content-container {
            background: #f5f5f5;
        }

        .container {
            padding: 60px 40px;
            margin: 0 auto;
            max-width: 1200px;
        }

        /* Section Titles */
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
            background: #fa5400;
        }

        /* Products Grid */
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
            height: 300px;
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
            background: #fa5400;
            color: white;
            padding: 6px 12px;
            border-radius: 20px;
            font-size: 0.85rem;
            font-weight: bold;
        }

        .badge.classic {
            background: #000;
        }

        .badge.innovation {
            background: #fa5400;
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


        .history-section {
            background: #1a1a1a;
            color: white;
            width: 100%;
            margin: 0;
            padding: 60px 0;
        }
        
        .history-section .container {
            max-width: 1200px;
            margin: 0 auto;
            padding: 0 40px;
        }

        .history-section .section-title h1 {
            color: white;
        }

        .history-section .product-box {
            background: rgba(255,255,255,0.05);
            border: 1px solid rgba(255,255,255,0.1);
        }

        .history-section .product-box:hover {
            background: rgba(255,255,255,0.1);
        }

        .history-section .product-box h2 {
            color: white;
        }

        .history-section .product-box label {
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
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

        <div class="banner-container">
        <img src="https://images.unsplash.com/photo-1556906781-9a412961c28c?w=1600&amp;h=500&amp;fit=crop" alt="Nike Banner">
        <div class="banner-overlay">
            <div class="banner-content">
                <h1>JUST DO IT</h1>
                <p>Inspiring the athlete in everyone since 1964</p>
            </div>
        </div>
    </div>


    <div class="highlight">
        <div class="highlight-content">
            <h1>NIKE</h1>
            <p>Founded in 1964 as Blue Ribbon Sports, Nike has grown to become the world's largest athletic footwear and apparel brand. With innovations like Nike Air technology and iconic designs, Nike continues to inspire athletes around the globe with its "Just Do It" philosophy.</p>
        </div>
    </div>


    <div class="content-container">

        <div class="container">
            <div class="section-title">
                <h1>Iconic Shoes</h1>
            </div>
            <div class="products">
                <a href="../air force/WebForm1.aspx" class="product-box">
                    <div class="product-image-wrapper">
                        <span class="badge">1982</span>
                        <img src="https://images.unsplash.com/photo-1600269452121-4f2416e55c28?w=400&amp;h=300&amp;fit=crop" alt="Air Force">
                    </div>
                    <div class="product-box-content">
                        <h2>Air Force 1</h2>
                        <label>The first basketball shoe with Nike Air technology, revolutionizing the game forever.</label>
                    </div>
                </a>
                <a href="../AirJordan/WebForm1.aspx" class="product-box">
                    <div class="product-image-wrapper">
                        <span class="badge">1985</span>
                        <img src="https://images.unsplash.com/photo-1571601035754-5c927f2d7edc?w=400&amp;h=300&amp;fit=crop" alt="Air Jordan">
                    </div>
                    <div class="product-box-content">
                        <h2>Air Jordan</h2>
                        <label>Created for Michael Jordan, it became a cultural icon transcending basketball.</label>
                    </div>
                </a>
                <a href="../Nike%20Air%20Max/WebForm1.aspx" class="product-box">
                    <div class="product-image-wrapper">
                        <span class="badge">1987</span>
                        <img src="https://images.unsplash.com/photo-1514989940723-e8e51635b782?w=400&amp;h=300&amp;fit=crop" alt="Air Max">
                    </div>
                    <div class="product-box-content">
                        <h2>Air Max</h2>
                        <label>Featuring visible Air cushioning, it changed running shoes forever.</label>
                    </div>
                </a>
            </div>
        </div>

        <!-- Nike History Section -->
        <div class="history-section">
            <div class="container">
                <div class="section-title">
                    <h1>Nike History</h1>
                </div>
                <div class="products">
                    <a href="../nike1964- 1971/WebForm1.aspx" class="product-box">
                        <div class="product-image-wrapper">
                            <img src="https://images.unsplash.com/photo-1542291026-7eec264c27ff?w=400&amp;h=300&amp;fit=crop" alt="Nike Origins">
                        </div>
                        <div class="product-box-content">
                            <h2>1964-1971</h2>
                            <label>From Blue Ribbon Sports to Nike: The early years and birth of the Swoosh.</label>
                        </div>
                    </a>
                    <a href="../nike1972-1990/WebForm1.aspx" class="product-box">
                        <div class="product-image-wrapper">
                            <img src="https://images.unsplash.com/photo-1595950653106-6c9ebd614d3a?w=400&amp;h=300&amp;fit=crop" alt="Nike Innovation">
                        </div>
                        <div class="product-box-content">
                            <h2>1972-1990</h2>
                            <label>Revolutionary technologies and global expansion during Nike's golden era.</label>
                        </div>
                    </a>
                    <a href="../nike1991-today/WebForm1.aspx" class="product-box">
                        <div class="product-image-wrapper">
                            <img src="https://images.unsplash.com/photo-1606107557195-0e29a4b5b4aa?w=400&amp;h=300&amp;fit=crop" alt="Nike Today">
                        </div>
                        <div class="product-box-content">
                            <h2>1991-Today</h2>
                            <label>Digital transformation and sustainability initiatives of modern Nike.</label>
                        </div>
                    </a>
                </div>
            </div>
        </div>
    </div>
</asp:Content>