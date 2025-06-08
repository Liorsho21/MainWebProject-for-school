<%@ Page Title="" Language="C#" MasterPageFile="~/master/Site1.Master" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="MainWebProject.NikePage.Nike_Air_Max.WebForm1" %>
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
            <h1>Nike Air Max</h1>
            <p>Revolutionary visible air cushioning that changed running footwear forever</p>
        </div>
        
        <div class="shoe-image">
            <img src="/images/airmax.png" alt="Nike Air Max">
        </div>
        
        <div class="facts-box">
            <div class="facts-title">Quick Facts</div>
            <div class="facts-grid">
                <div class="fact-item">
                    <div class="fact-label">Release Year</div>
                    <div>1987</div>
                </div>
                <div class="fact-item">
                    <div class="fact-label">Designer</div>
                    <div>Tinker Hatfield</div>
                </div>
                <div class="fact-item">
                    <div class="fact-label">Inspiration</div>
                    <div>Centre Pompidou</div>
                </div>
                <div class="fact-item">
                    <div class="fact-label">Innovation</div>
                    <div>Visible Air Unit</div>
                </div>
            </div>
        </div>
        
        <div class="info-section">
            <h2 class="section-title">The Innovation</h2>
            <div class="info-content">
                <p>The Nike Air Max was born in 1987 when designer Tinker Hatfield, inspired by the inside-out architecture of the Centre Pompidou in Paris, had the revolutionary idea to expose the Air cushioning technology in the midsole.</p>
                <p>Although Nike had been using Air technology since 1979, the Air Max 1 was the first shoe to make the cushioning visible, allowing athletes and consumers to see the technology at work. This blend of function and style would change athletic footwear design forever.</p>
            </div>
        </div>
        
        <div class="info-section">
            <h2 class="section-title">Evolution</h2>
            <div class="info-content">
                <p>Following the success of the Air Max 1, Nike continued to develop the line with new models every few years. The Air Max 90 (originally called Air Max III) introduced a larger air window and bolder aesthetic, while the Air Max 95 broke new ground with visible Air cushioning in the forefoot and a design inspired by the human body.</p>
                <p>The Air Max 97 featured the first full-length visible Air unit, and in 2006, the Air Max 360 created a cushioning system that wrapped entirely around the foot. Each new iteration has pushed the boundaries of what's possible in athletic footwear design.</p>
            </div>
        </div>
        
        <div class="info-section">
            <h2 class="section-title">Cultural Impact</h2>
            <div class="info-content">
                <p>Beyond its technical innovations, the Air Max became a cultural icon, particularly in European street and music scenes. In the UK, the shoes were adopted by dance music cultures like jungle and garage, becoming a staple of youth fashion.</p>
                <p>Since 2014, Nike has celebrated "Air Max Day" on March 26th (the original release date of the Air Max 1), with special releases and events worldwide. Rare and limited-edition Air Max models have become prized collectors' items, with some vintage pairs selling for thousands of dollars.</p>
            </div>
        </div>
        
        <a href="../NikePage/WebForm1.aspx" class="back-link">← Back to Nike Collection</a>
    </div>
</asp:Content>
