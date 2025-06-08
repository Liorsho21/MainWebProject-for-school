<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="MainWebProject.SignUp.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>WEARING STYLE | SignUp</title>
    <link href="StyleSheet1.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
          <a href="../HomePage/WebForm1.aspx" class="back-button">← Back to Home</a>
        <div>
            <div class="main">
                <div class="second-main">
                    <div class="border">
                        <div class="border-title">
                            <img src="/images/logo wewb.png">
                                </div>
                                <hr style="width: 200%; margin-left: -135px;">
                                <div class="content-container">
                                    <div class="content">
                                        <div class="content-inputs">
                                            <div class="username-input">
                                                <li><span>create username:</span></li>
                                                <li>
                                                    <input id="Username" name="name" type="text" placeholder="username">
                                                    <span id="UsernameAlert" class="alert">Cannot be left blank</span>
                                                </li>
                                            </div>
                                            <div class="email-input">
                                                <li><span>enter your email:</span></li>
                                                <li>
                                                    <input id="email" name="email" type="email" placeholder="email">
                                                    <span class="alert" id="EmailAlert">please enter your email correctly</span>
                                                </li>
                            
                                            </div>
                        
                                            <div class="password-input">
                                                <li><span>enter your password:</span></li>
                                                <li>
                                                    <input id="PasswordInput" name="password" type="password" placeholder="• • • • • • •">
                                                    <span class="alert" id="PasswordAlert"></span>
                                                    <a class="a-link" href="../Login/WebForm1.aspx">already have an account</a>
                                                </li>
                                            </div>                          
                                            <div class="check-box">
                                                <label class="lable-check-box">
                                                    <input checked="" type="checkbox" id="CheckBox" name="check">
                                                    <span>The information you enter will be saved in the system and you can delete this information at any time.</span>
                                                </label>
                                            </div>
                                        </div>
                                        <button type="submit" value="send" onclick="return checkReg()" id="SignUpButton" class="submit-button">Sign-up</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
          <script src="JavaScript.js"></script>
        </div>
    </form>
</body>
</html>
