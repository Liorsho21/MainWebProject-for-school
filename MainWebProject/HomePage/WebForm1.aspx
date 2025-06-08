<%@ Page Title="HOME" Language="C#" MasterPageFile="~/master/Site1.Master" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="MainWebProject.HomePage.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="StyleSheet1.css" rel="stylesheet" />
    <link href="../master/StyleSheet1.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="banner-container">
    <img src="/images/anther iamge.png" alt="Banner">
</div>
<div class="content-container">
    <div class="brand-section">
        <div class="brand-content">
            <h1>NIKE:</h1>
            <p>
                Nike, founded in 1964 by Bill Bowerman and Phil Knight, is a global leader in sportswear, known for its commitment to innovation, quality, and performance. The brand offers a wide range of athletic footwear, apparel, and equipment, designed to support athletes in their pursuit of excellence.
            </p>
            <p>
                With its iconic "Swoosh" logo and the powerful "Just Do It" slogan, Nike has inspired millions to push their limits. Whether through groundbreaking technology or stylish designs, Nike continues to set trends in the sportswear industry.
            </p>
            <p>
                The brand's focus on sustainability and performance ensures its products are not only functional but also eco-friendly, making them a favorite among athletes and casual wearers alike.
            </p>
        </div>
        <a href="../NikePage/WebForm1.aspx" id="redirect-link">
            <div class="image-animation-div">
                <span style="bottom:calc(7vw - 100px);">NIKE</span>
                <img class="brand-shoes-image" src="/images/domino-164_6wVEHfI-unsplash-scaled.jpg" alt="Nike Shoes">
            </div>
        </a>     
    </div>

    <div class="brand-section">
        <a href="../Bershka/WebForm1.aspx">
            <div class="image-animation-div">
                <span style="color: black; font-size: calc(4.5rem + 3.5vw); bottom:calc(7vw - 100px);" >BERSHKA</span>
                <img class="brand-shoes-image" src="/images/gfnbvn.png" alt="Nike Shoes">
            </div>
        </a>
        <div class="brand-content">
            <h1>BERSHKA</h1>
            <p>
                Bershka, established in 1998 as part of the Inditex group, is a fashion-forward brand known for its edgy and youthful style. Catering to trend-conscious individuals, Bershka blends bold designs with the latest global trends, offering a wide range of clothing, accessories, and footwear.
            </p>
            <p>
                The brand stands out for its vibrant collections that combine modern aesthetics with affordable pricing. Bershka stores are designed as interactive spaces, creating a shopping experience that reflects the dynamic spirit of its target audience.
            </p>
            <p>
                With a commitment to sustainability, Bershka has introduced eco-friendly initiatives, incorporating organic materials and sustainable production practices in its collections. This makes Bershka a favorite among young fashion enthusiasts who value both style and environmental consciousness.
            </p>
        </div>
    </div>

    <div class="brand-section">
        <div class="brand-content">
            <h1>PULL&BEAR:</h1>
            <p>
                Nike, founded in 1964 by Bill Bowerman and Phil Knight, is a global leader in sportswear, known for its commitment to innovation, quality, and performance. The brand offers a wide range of athletic footwear, apparel, and equipment, designed to support athletes in their pursuit of excellence.
            </p>
            <p>
                With its iconic "Swoosh" logo and the powerful "Just Do It" slogan, Nike has inspired millions to push their limits. Whether through groundbreaking technology or stylish designs, Nike continues to set trends in the sportswear industry.
            </p>
            <p>
                The brand's focus on sustainability and performance ensures its products are not only functional but also eco-friendly, making them a favorite among athletes and casual wearers alike.
            </p>
        </div>
        <a href="../PullandBear/WebForm1.aspx" >
            <div class="image-animation-div">
                <span style="color: black; font-size: calc(3.8rem + 2.8vw); bottom:calc(7vw - 80px);">PULL&BEAR</span>
                <img class="brand-shoes-image" src="/images/afdfcv.png" alt="Nike Shoes">
            </div>
        </a>
    </div>
</div>
    <script src="JavaScript.js"></script>
</asp:Content>
