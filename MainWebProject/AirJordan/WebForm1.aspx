<%@ Page Title="" Language="C#" MasterPageFile="~/master/Site1.Master" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="MainWebProject.NikePage.AirJordan.WebForm1" %>
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
            <h1>Nike Air Jordan</h1>
            <p>The legendary basketball shoe that transcended sports to become a global cultural phenomenon</p>
        </div>
        
        <div class="shoe-image">
            <img src="/images/Air jorden image.png" alt="Nike Air Jordan">
        </div>
        
        <div class="facts-box">
            <div class="facts-title">Quick Facts</div>
            <div class="facts-grid">
                <div class="fact-item">
                    <div class="fact-label">Release Year</div>
                    <div>1985</div>
                </div>
                <div class="fact-item">
                    <div class="fact-label">Designer</div>
                    <div>Peter Moore</div>
                </div>
                <div class="fact-item">
                    <div class="fact-label">Original Price</div>
                    <div>$65</div>
                </div>
                <div class="fact-item">
                    <div class="fact-label">Signature Feature</div>
                    <div>Jumpman Logo</div>
                </div>
            </div>
        </div>
        
        <div class="info-section">
            <h2 class="section-title">History</h2>
            <div class="info-content">
                <p>Michael Jordan, a rookie for the Chicago Bulls, signed with Nike in 1984 and the first Air Jordan was created for him by designer Peter Moore. When Jordan wore the red and black colorway on court, the NBA fined him $5,000 per game for breaking uniform rules.</p>
                <p>Nike happily paid the fines, recognizing the marketing potential of the controversy. The shoe was released to the public in 1985 and sold out rapidly, beginning what would become the most successful athlete-endorsed sneaker line of all time.</p>
            </div>
        </div>
        
        <div class="info-section">
            <h2 class="section-title">Iconic Design</h2>
            <div class="info-content">
                <p>The original Air Jordan featured the Nike Wings logo on the ankle and a basketball-inspired silhouette. With the Air Jordan III in 1988, designer Tinker Hatfield introduced the Jumpman logo - the silhouette of Jordan mid-dunk that would become one of the most recognizable logos in the world.</p>
                <p>Each new model in the Jordan line represented an evolution in design, often reflecting Michael Jordan's playing style, personal tastes, and career milestones. From the patent leather of the Air Jordan XI to the Ferrari-inspired Air Jordan XIV, each design has a unique story.</p>
            </div>
        </div>
        
        <div class="info-section">
            <h2 class="section-title">Cultural Impact</h2>
            <div class="info-content">
                <p>The Air Jordan transcended basketball to become a cornerstone of sneaker collecting culture. The shoes have been featured in countless music videos, movies, and fashion moments, becoming symbols of status and style.</p>
                <p>Even decades after Jordan's retirement from basketball, new Air Jordan releases continue to sell out instantly. Vintage pairs can fetch thousands of dollars on the resale market, and limited editions and collaborations have made the Jordan brand a cornerstone of "hype" culture.</p>
            </div>
        </div>
        
        <a href="../NikePage/WebForm1.aspx" class="back-link">← Back to Nike Collection</a>
    </div>
</asp:Content>
