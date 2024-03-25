<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SifremiUnuttum.aspx.cs" Inherits="EminYelaldi_210757029.SifremiUnuttum" %>

<!DOCTYPE html>
<!-- KULLANILAN BOOSTRAP DOSYASI ! -->
<link href="Dosyalar1/bootstrap.min.css" rel="stylesheet" />
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <!-- ŞİFREMİ UNUTTUM HTML CSS BÖLÜMÜ ! -->

    <title></title>
    <style type="text/css">
        .auto-style1 {
            display: block;
            width: 100%;
            height: 34px;
            padding: 6px 12px;
            font-size: 14px;
            line-height: 1.42857143;
            color: #555;
            background-color: #fff;
            background-image: none;
            border: 1px solid #ccc;
            border-radius: 4px;
            -webkit-box-shadow: inset 0 1px 1px rgba(0,0,0,.075);
            box-shadow: inset 0 1px 1px rgba(0,0,0,.075);
            -webkit-transition: border-color ease-in-out .15s,-webkit-box-shadow ease-in-out .15s;
            -o-transition: border-color ease-in-out .15s,box-shadow ease-in-out .15s;
            transition: border-color ease-in-out .15s,box-shadow ease-in-out .15s;
            margin-left: 254px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="text-left">
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <asp:Label ID="Label1" runat="server" Text="E-Mail adresinizi giriniz:" Style="margin-left: 254px"></asp:Label>
            <asp:TextBox ID="txtMail" runat="server" CssClass="auto-style1" Width="500px"></asp:TextBox>
        </div>
         <br />
            <br />
        <div>
            <asp:Label ID="Label2" runat="server" Text="Yeni Şifrenizi Giriniz" Style="margin-left: 254px"></asp:Label>
            <asp:TextBox ID="txtSifre" runat="server" CssClass="form-control" Width="500px" Style="margin-left: 254px"></asp:TextBox>
        </div>
        <br />
        <br />
        <div>
            <asp:Button ID="Button1" runat="server" Text="Gönder" CssClass="btn btn-danger" Width="254px" Style="margin-left: 257px" OnClick="Button1_Click" />
        </div>
    </form>
</body>
</html>
