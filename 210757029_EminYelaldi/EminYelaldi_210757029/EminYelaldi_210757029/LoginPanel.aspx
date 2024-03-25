<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginPanel.aspx.cs" Inherits="EminYelaldi_210757029.Login" %>

<!doctype html>
<html lang="en">
<head>
    
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link href="https://fonts.googleapis.com/css?family=Roboto:300,400&display=swap" rel="stylesheet">
    <!-- KULLANILAN CSS DOSYASI -->
    <link rel="stylesheet" href="fonts/icomoon/style.css">
    <!-- KULLANILAN CSS DOSYASI -->
    <link href="login-form-09/login-form-09/css/owl.carousel.min.css" rel="stylesheet" />

    <!-- KULLANILAN BOOSTRAP DOSYASI -->
    <link href="login-form-09/login-form-09/css/bootstrap.min.css" rel="stylesheet" />

    <!-- KULLANILAN CSS DOSYASI -->
    <link href="login-form-09/login-form-09/css/style.css" rel="stylesheet" />

    <title>Login #8</title>
    <style type="text/css">
        .auto-style1 {
            font-size: medium;
        }
    </style>
</head>

<body>

     <!-- LOGİN PANELİ HTML VE CSS KODLARI -->

    <form id="form1" runat="server">


        <div class="content">
            <div class="container">
                <div class="row">
                    <div class="col-md-6 order-md-2">
                        <img src="img/vectorHarita.svg" alt="Image" class="img-fluid">
                    </div>
                    <div class="col-md-6 contents">
                        <div class="row justify-content-center">
                            <div class="col-md-8">
                                <div class="mb-4">
                                    <h3>Müşteri Login <strong></strong></h3>

                                </div>

                                <div class="form-group first">
                                    <asp:Label ID="Label2" runat="server" Text="Kullanıcı Adı:"></asp:Label>
                                    <asp:TextBox ID="TxtKullaniciAdi1" runat="server" class="form-control"></asp:TextBox>

                                </div>
                                <div class="form-group last mb-4">
                                    <asp:Label ID="Label1" runat="server" Text="Şifre:"></asp:Label>
                                    <asp:TextBox ID="TxtSifre1" runat="server" class="form-control" TextMode="Password"></asp:TextBox>

                                </div>

                                <div class="d-flex mb-5 align-items-center">

                                    <asp:HyperLink ID="HyperLink1" runat="server" class="forgot-pass" CssClass="forgot-pass" NavigateUrl="~/SifremiUnuttum.aspx" Style="font-size: medium">Şifremi Unuttum</asp:HyperLink>
                                </div>
                                <div>
                                    <asp:Label ID="Label4" runat="server" ForeColor="#CC0000"></asp:Label>
                                </div>

                                <asp:Button ID="Button1" runat="server" class="btn text-white btn-block btn-danger" Text="Giriş Yap" OnClick="Button1_Click" />
                                <br />
                                <asp:Label ID="Label3" runat="server" Text="Hesabınız yok mu?"></asp:Label>
                                <br />
                                <asp:HyperLink ID="HyperLink2" runat="server" class="d-block text-left my-4 text-muted" NavigateUrl="~/KayıtPanel.aspx" CssClass="auto-style1">Kayıt Olun</asp:HyperLink>


                            </div>
                        </div>

                    </div>

                </div>
            </div>
        </div>


        <script src="js/jquery-3.3.1.min.js"></script>
        <script src="js/popper.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/main.js"></script>
    </form>
</body>
</html>
