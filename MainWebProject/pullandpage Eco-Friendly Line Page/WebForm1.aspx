<%@ Page Title="" Language="C#" MasterPageFile="~/master/Site1.Master" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="MainWebProject.pullandpage_Eco_Friendly_Line_Page.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="StyleSheet1.css" rel="stylesheet" />
    <link href="../../master/StyleSheet1.css" rel="stylesheet" />
    <link href="https://fonts.googleapis.com/css2?family=Anton&display=swap" rel="stylesheet">
    <script src="js_folder/eco_gallery_script.js"></script>
    <style>
        body {
            background-color: #f5f5f5;
            overflow-x: hidden;
        }

        .hero-section {
            position: relative;
            height: 500px;
            background: #27ae60;
            overflow: hidden;
        }

        .hero-section img {
            width: 100%;
            height: 100%;
            object-fit: cover;
            opacity: 0.9;
        }

        .hero-overlay {
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: linear-gradient(to bottom, rgba(39,174,96,0.3) 0%, rgba(39,174,96,0.5) 100%);
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
            background: #27ae60;
        }

        .sustainability-section {
            background: white;
            padding: 60px;
            border-radius: 20px;
            box-shadow: 0 10px 30px rgba(0,0,0,0.08);
            margin-bottom: 80px;
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
            color: #27ae60;
        }

        .sustainability-content p {
            font-size: 1.2rem;
            line-height: 1.8;
            color: #555;
            margin-bottom: 20px;
        }

        /* Gallery Section */
        .gallery-section {
            background: #f0f9f4;
            padding: 80px 40px;
            margin: 0;
        }

        .gallery-container {
            max-width: 800px;
            margin: 0 auto;
            text-align: center;
        }

        .gallery-controls {
            margin-bottom: 30px;
        }

        .gallery-button {
            background: #27ae60;
            color: white;
            border: none;
            padding: 12px 30px;
            font-size: 1.1rem;
            border-radius: 30px;
            cursor: pointer;
            transition: all 0.3s ease;
            font-family: 'Quicksand', sans-serif;
            font-weight: bold;
        }

        .gallery-button:hover {
            background: #229954;
            transform: translateY(-2px);
        }

        .gallery-image-container {
            position: relative;
            max-width: 100%;
            margin: 0 auto;
            border-radius: 20px;
            overflow: hidden;
            box-shadow: 0 15px 40px rgba(0,0,0,0.1);
        }

        .gallery-image {
            width: 100%;
            height: 500px;
            object-fit: cover;
            display: block;
        }

        .gallery-caption {
            margin-top: 20px;
            font-size: 1.1rem;
            color: #555;
        }

        .initiatives-section {
            background: #27ae60;
            color: white;
            padding: 80px 0;
        }

        .initiatives-grid {
            display: grid;
            grid-template-columns: repeat(3, 1fr);
            gap: 40px;
            max-width: 1200px;
            margin: 0 auto;
            padding: 0 40px;
        }

        .initiative-card {
            text-align: center;
            padding: 40px;
            background: rgba(255,255,255,0.1);
            border-radius: 15px;
            backdrop-filter: blur(10px);
            transition: all 0.3s ease;
        }

        .initiative-card:hover {
            background: rgba(255,255,255,0.2);
            transform: translateY(-5px);
        }

        .initiative-icon {
            font-size: 3rem;
            margin-bottom: 20px;
        }

        .initiative-title {
            font-family: "Anton SC", sans-serif;
            font-size: 1.8rem;
            margin-bottom: 15px;
        }

        .initiative-desc {
            opacity: 0.9;
            line-height: 1.6;
        }

        .materials-section {
            padding: 80px 40px;
            background: white;
        }

        .materials-grid {
            display: grid;
            grid-template-columns: repeat(4, 1fr);
            gap: 30px;
            margin-top: 40px;
        }

        .material-card {
            text-align: center;
            padding: 30px;
            background: #f5f5f5;
            border-radius: 15px;
            transition: all 0.3s ease;
            border: 2px solid transparent;
        }

        .material-card:hover {
            transform: translateY(-5px);
            box-shadow: 0 10px 30px rgba(0,0,0,0.1);
            border-color: #27ae60;
        }

        .material-icon {
            font-size: 2.5rem;
            margin-bottom: 15px;
        }

        .material-name {
            font-family: "Anton SC", sans-serif;
            font-size: 1.3rem;
            margin-bottom: 10px;
        }

        .material-desc {
            color: #666;
            font-size: 0.95rem;
        }

        .back-link {
            display: inline-block;
            margin: 40px;
            padding: 15px 30px;
            background: #27ae60;
            color: white;
            text-decoration: none;
            border-radius: 30px;
            font-weight: bold;
            transition: all 0.3s ease;
        }

        .back-link:hover {
            background: #229954;
            transform: translateY(-2px);
        }

        @media (max-width: 768px) {
            .hero-content h1 {
                font-size: 3rem;
            }

            .initiatives-grid {
                grid-template-columns: 1fr;
            }

            .materials-grid {
                grid-template-columns: repeat(2, 1fr);
            }

            .gallery-image {
                height: 300px;
            }
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="hero-section">
        <img src="https://images.unsplash.com/photo-1532996122724-e3c354a0b15b?w=1600&h=500&fit=crop" alt="Eco-Friendly Fashion">
        <div class="hero-overlay">
            <div class="hero-content">
                <h1>Eco-Friendly Line</h1>
                <p>Fashion with a conscience for a better tomorrow</p>
            </div>
        </div>
    </div>

    <div class="content-section">
        <div class="section-header">
            <h2>Sustainable Fashion</h2>
        </div>
        
        <div class="sustainability-section">
            <div class="sustainability-content">
                <h3>Our Green Revolution</h3>
                <p>At Pull&Bear, we believe that great style shouldn't come at the cost of our planet. Our Eco-Friendly Line represents our commitment to sustainable fashion, featuring clothing made from organic materials, recycled fabrics, and innovative eco-conscious production methods.</p>
                <p>Every piece in this collection is designed with both you and the environment in mind. From the organic cotton in our t-shirts to the recycled polyester in our outerwear, we're proving that sustainable can be stylish, comfortable, and affordable.</p>
            </div>
        </div>
    </div>

    <div class="gallery-section">
        <div class="section-header">
            <h2>Collection Gallery</h2>
        </div>
        
        <div class="gallery-container">
            <div class="gallery-controls">
                <input type="button" value="Next Image" onclick="Show()" class="gallery-button" />
            </div>
            <div class="gallery-image-container">
                <img name="galleryPic" src="/images/eco1.jpeg" alt="Eco Collection" class="gallery-image" />
            </div>
            <div class="gallery-caption">
                <p id="galleryCaption">Organic Cotton Essential Tee - Made from 100% organic cotton</p>
            </div>
        </div>
    </div>

    <div class="initiatives-section">
        <div class="section-header">
            <h2 style="color: white;">Our Green Initiatives</h2>
        </div>
        
        <div class="initiatives-grid">
            <div class="initiative-card">
                <div class="initiative-icon">♻️</div>
                <div class="initiative-title">Recycled Materials</div>
                <div class="initiative-desc">Using recycled polyester and regenerated cotton to reduce waste</div>
            </div>
            <div class="initiative-card">
                <div class="initiative-icon">💧</div>
                <div class="initiative-title">Water Conservation</div>
                <div class="initiative-desc">Innovative dyeing techniques that use 50% less water</div>
            </div>
            <div class="initiative-card">
                <div class="initiative-icon">🌱</div>
                <div class="initiative-title">Zero Waste Goal</div>
                <div class="initiative-desc">Working towards zero waste production by 2030</div>
            </div>
        </div>
    </div>

    <div class="materials-section">
        <div class="section-header">
            <h2>Sustainable Materials</h2>
        </div>
        
        <div class="materials-grid">
            <div class="material-card">
                <div class="material-icon">🌿</div>
                <div class="material-name">Organic Cotton</div>
                <div class="material-desc">Grown without harmful pesticides or chemicals</div>
            </div>
            <div class="material-card">
                <div class="material-icon">♻️</div>
                <div class="material-name">Recycled Polyester</div>
                <div class="material-desc">Made from recycled plastic bottles</div>
            </div>
            <div class="material-card">
                <div class="material-icon">🎋</div>
                <div class="material-name">Bamboo Fiber</div>
                <div class="material-desc">Natural, renewable, and biodegradable</div>
            </div>
            <div class="material-card">
                <div class="material-icon">🌾</div>
                <div class="material-name">Hemp Blend</div>
                <div class="material-desc">Durable and requires minimal water to grow</div>
            </div>
        </div>
    </div>

    <center>
        <a href="../PullandBear/WebForm1.aspx" class="back-link">← Back to Pull&amp;Bear Collections</a>
    </center>
    <script>


        var index = 1;

        function Show() {
            if (index == 4)
                index = 0;
            index++;
            galleryPic.src = "../images/eco" + index + ".jpeg";
        }

    </script>
</asp:Content>
