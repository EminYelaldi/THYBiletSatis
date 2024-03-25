<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminLogin.aspx.cs" Inherits="EminYelaldi_210757029.AdminLogin" %>

<!DOCTYPE html>
<!-- KULLANILAN CSS DOSYASI ! -->
<link href="AdminLogin/main.css" rel="stylesheet" />
<html>

<head>

    <!-- ADMİN LOGİN HTML CSS BÖLÜMÜ! -->


    <meta charset="UTF-8">
    <title>Login</title>
    <meta name="description" content="Login - Register Template">
    <meta name="author" content="Lorenzo Angelino aka MrLolok">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <link rel="stylesheet" href="main.css">
    <style>
        body {
            background-color: #303641;
        }

        .auto-style1 {
            color: #FFFFFF;
        }
    </style>
</head>

<body>
    <form id="form1" runat="server">
        <div id="container-login">
            <div id="title">
                <i class="material-icons lock">lock</i>Admin Login
            </div>

            <br />
            <br />

            <div class="input">
                <div class="input-addon">
                    <i class="material-icons">face</i>
                </div>
                <asp:TextBox ID="TxtAdminAd" runat="server" class="validate" autocomplete="off"></asp:TextBox>
            </div>

            <div class="clearfix"></div>

            <div class="input">
                <div class="input-addon">
                    <i class="material-icons">vpn_key</i>
                </div>
                <asp:TextBox ID="TxtAdminSifre" runat="server" placeholder="Password" type="password" class="validate" autocomplete="off"></asp:TextBox>
            </div>
            <br />
            <div>
                <asp:Label ID="Label1" runat="server" ForeColor="#CC0000"></asp:Label>
            </div>
            <asp:Button ID="Button1" runat="server" type="submit" Text="Giriş Yap" OnClick="Button1_Click" />

            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/LoginPanel.aspx" CssClass="auto-style1">Müşteri loginine gitmek için tıkla</asp:HyperLink>
        </div>
    </form>
</body>

</html>

