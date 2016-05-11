<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>网络客服部</title>
    <!-- Custom Theme files -->
    <link href="~/css/style.css" rel="stylesheet" type="text/css" media="all" />
    <link href="~/bootstrap/css/bootstrap-responsive.css" rel="stylesheet">
    <link href="~/bootstrap/css/bootstrap.css" rel="stylesheet">
    <!-- Custom Theme files -->
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="keywords" content="Login form web template, Sign up Web Templates, Flat Web Templates, Login signup Responsive web template, Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
    <!--Google Fonts-->
    <link href='http://fonts.useso.com/css?family=Roboto:500,900italic,900,400italic,100,700italic,300,700,500italic,100italic,300italic,400'
        rel='stylesheet' type='text/css'>
    <link href='http://fonts.useso.com/css?family=Droid+Serif:400,700,400italic,700italic'
        rel='stylesheet' type='text/css'>
    <!--Google Fonts-->
</head>
<body>
    <form id="form1" runat="server">
    <div class="login">
        
        <h2>
            网络客服部后台管理系统</h2>
        <div class="login-top">
            <h1>
                管理员登陆</h1>
            <input type="text" id="username" name="username" value="User Name" onfocus="this.value = '';"
                onblur="if (this.value == '') {this.value = '';}">
            <input type="password" id="pass" name="pass" value="password" onfocus="this.value = '';"
                onblur="if (this.value == '') {this.value = '';}">
            <div class="forgot">
                <p>
                    Please keep your password</p>
            </div>
        </div>
        <div class="login-bottom">
            <p>
                <asp:Button type="submit" CssClass="btn btn-large" ID="Button1" runat="server" Text="登陆"
                    OnClick="Button1_Click" /></p>
            </h3>
        </div>
    </div>
    <div class="copyright">
        <p>
            <font color="#ff0000">成都文理学院党校办公室</font></p>
        <p>
            <font color="#ff0000">地址：成都市金堂学府大道278号 &nbsp;&nbsp;&nbsp;联系电话： 028-61566000 61565000
                61565148 传真：028-61565128</font></p>
    </div>
    </form>
</body>
</html>
