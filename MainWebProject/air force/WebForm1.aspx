<%@ Page Title="" Language="C#" MasterPageFile="~/master/Site1.Master" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="MainWebProject.nikepage2.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
   <link href="StyleSheet1.css" rel="stylesheet" />
   <link href="../../master/StyleSheet1.css" rel="stylesheet" />
    <style>
        .shoe-container {
            max-width: 1200px;
            margin: 0 auto;
            padding: 40px 20px;
        }
        
        .shoe-header {
            text-align: center;
            margin-bottom: 40px;
        }
        
        .shoe-header h1 {
            font-family: "Anton SC", sans-serif;
            font-size: 3rem;
            margin-bottom: 15px;
        }
        
        .shoe-header p {
            color: #555;
            max-width: 800px;
            margin: 0 auto;
        }
        
        .shoe-image {
            text-align: center;
            margin-bottom: 30px;
        }
        
        .shoe-image img {
            max-width: 100%;
            border-radius: 15px;
            box-shadow: 0 8px 25px rgba(0,0,0,0.1);
        }
        
        .info-section {
            margin-bottom: 40px;
        }
        
        .section-title {
            font-family: "Anton SC", sans-serif;
            font-size: 2rem;
            margin-bottom: 20px;
        }
        
        .info-content {
            line-height: 1.6;
            color: #444;
        }
        
        .info-content p {
            margin-bottom: 15px;
        }
        
        .facts-box {
            background-color: #f8f8f8;
            border-radius: 10px;
            padding: 25px;
            margin-bottom: 40px;
        }
        
        .facts-title {
            font-weight: bold;
            margin-bottom: 15px;
            font-size: 1.2rem;
        }
        
        .facts-grid {
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(200px, 1fr));
            gap: 15px;
        }
        
        .fact-item {
            background-color: white;
            padding: 15px;
            border-radius: 8px;
            box-shadow: 0 3px 10px rgba(0,0,0,0.05);
        }
        
        .fact-label {
            font-weight: bold;
            color: #fa5400;
            margin-bottom: 5px;
            font-size: 0.9rem;
        }
        
        .back-link {
            display: inline-block;
            margin-top: 30px;
            color: #fa5400;
            text-decoration: none;
            font-weight: bold;
        }
        
        .back-link:hover {
            text-decoration: underline;
        }
        
        @media (max-width: 768px) {
            .shoe-header h1 {
                font-size: 2.5rem;
            }
            
            .section-title {
                font-size: 1.7rem;
            }
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   <div class="shoe-container">
        <div class="shoe-header">
            <h1>Nike Air Force 1</h1>
            <p>The iconic basketball shoe that revolutionized the game and became a streetwear legend</p>
        </div>
        
        <div class="shoe-image">
            <img src="/images/air foce.png" alt="Nike Air Force 1">
        </div>
        
        <div class="facts-box">
            <div class="facts-title">Quick Facts</div>
            <div class="facts-grid">
                <div class="fact-item">
                    <div class="fact-label">Release Year</div>
                    <div>1982</div>
                </div>
                <div class="fact-item">
                    <div class="fact-label">Designer</div>
                    <div>Bruce Kilgore</div>
                </div>
                <div class="fact-item">
                    <div class="fact-label">Original Price</div>
                    <div>$89.95</div>
                </div>
                <div class="fact-item">
                    <div class="fact-label">Nickname</div>
                    <div>"Uptowns"</div>
                </div>
            </div>
        </div>
        
        <div class="info-section">
            <h2 class="section-title">History</h2>
            <div class="info-content">
                <p>The Nike Air Force 1 first hit the courts in 1982, designed by Bruce Kilgore as Nike's first basketball shoe to feature "Air" technology in the sole. Named after the aircraft that carries the U.S. President, the shoe was initially introduced with the high-top design.</p>
                <p>Nike almost discontinued the shoe in 1984, but retailers in Baltimore loved the shoe so much they convinced Nike to keep producing it. This made the Air Force 1 Nike's first retro basketball shoe, setting the stage for sneaker culture as we know it today.</p>
            </div>
        </div>
        
        <div class="info-section">
            <h2 class="section-title">Design Features</h2>
            <div class="info-content">
                <p>The Air Force 1 features a full-length Nike Air midsole, providing lightweight cushioning and impact protection. The circular pattern on the outsole was designed to help basketball players pivot on the court.</p>
                <p>Available in low, mid, and high-top versions, the Air Force 1's clean, simple design has made it a canvas for countless colorways and collaborations over the years. The perforated toe box adds breathability while maintaining the shoe's clean lines.</p>
            </div>
        </div>
        
        <div class="info-section">
            <h2 class="section-title">Cultural Impact</h2>
            <div class="info-content">
                <p>Beyond basketball, the Air Force 1 found a home in hip-hop culture, especially in East Coast cities like New York, Philadelphia, and Baltimore. In Harlem, they gained the nickname "Uptowns" and became an essential part of street fashion.</p>
                <p>The white-on-white Air Force 1 Low became one of the best-selling sneakers of all time, with Nike reportedly selling over 10 million pairs in 2005 alone. Its simple, versatile design has allowed it to remain relevant through decades of changing fashion trends.</p>
            </div>
        </div>
        
        <a href="../NikePage/WebForm1.aspx" class="back-link">← Back to Nike Collection</a>
    </div>
</asp:Content>
