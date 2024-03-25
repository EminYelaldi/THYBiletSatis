<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="KayıtPanel.aspx.cs" Inherits="EminYelaldi_210757029.KayıtPanel" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <!-- KULLANILAN BOOSTRAP DOSYASI ! -->
    <link href="Dosyalar1/bootstrap.min.css" rel="stylesheet" /> 
    <title></title>  
    <style type="text/css">
        .auto-style1 {
            margin-left: 0px;
        }
    </style>

</head>
<body>

    <!-- KAYIT PANEL HTML CSS BÖLÜMÜ -->

    <form id="form1" runat="server">  
        <div style ="width: 500px; margin:auto">
         <div class="text-left">
             <h3 class="text-center">  
             <asp:Image ID="Image1" runat="server" Height="73px" Width="151px" ImageUrl="img/fe0e8d6e690501d2c42fba875eba2aca.jpeg" CssClass="auto-style1" />
                 <strong>KAYIT EKRANI</strong></h3>
            <br />
            <br />
            <br />
         <div>

             <strong>

            <asp:Label ID="txtAd" runat="server" Text="Ad"></asp:Label>
             </strong>
             <div class="text-center">
            <asp:TextBox ID="txtAd1" runat="server" CssClass="form-control" Width="500px" ></asp:TextBox>
             </div>
        </div>
       
         <div>

             <strong>

            <asp:Label ID="txtSoyad" runat="server" Text="Soyad"></asp:Label>
             </strong>
             <div class="text-center">
            <asp:TextBox ID="txtSoyad1" runat="server" CssClass="form-control" Width="500px" ></asp:TextBox>
             </div>
        </div>
             <div>

                 <strong>

            <asp:Label ID="txtNumara" runat="server" Text="Telefon Numarası"></asp:Label>
                 </strong>
            <asp:TextBox ID="txtNumara1" runat="server" CssClass="form-control" Width="500px" ></asp:TextBox>
        </div>
             <div>

                 <strong>

            <asp:Label ID="txtKullaniciAd" runat="server" Text="Kullanıcı Adı"></asp:Label>
                 </strong>
            <asp:TextBox ID="txtKullaniciAd1" runat="server" CssClass="form-control" Width="500px" ></asp:TextBox>
        </div>
             <div>

                 <strong>

            <asp:Label ID="txtMail" runat="server" Text="Mail"></asp:Label>
                 </strong>
            <asp:TextBox ID="txtMail1" runat="server" CssClass="form-control" Width="500px" TextMode="Email" ></asp:TextBox>
        </div>
             <div>
                 
                 <strong>
                 
                 <asp:Label ID="txtCinsiyet" runat="server" Text="Cinsiyet"></asp:Label>
                 </strong>
                 <asp:DropDownList ID="txtCinsiyet1" runat="server" CssClass ="form-control" Width="500px">
                     <asp:ListItem Text ="Cinsiyet Seçiniz" Value="Cinsiyet Seçiniz"></asp:ListItem>
                     <asp:ListItem Text ="Erkek" Value="Erkek"></asp:ListItem>
                     <asp:ListItem Text ="Kadın" Value="Kadın"></asp:ListItem> 
                 </asp:DropDownList>
        </div>
             
             <div>

                 <strong>

            <asp:Label ID="txtSifre" runat="server" Text="Şifre"></asp:Label>
                 </strong>
            <asp:TextBox ID="txtSifre1" runat="server" CssClass="form-control" Width="500px" TextMode="Password" ></asp:TextBox>
        </div>
             <br />
             <div>
                 <strong>
                 <asp:Button ID="btnKayıt" runat="server" CssClass="btn btn-danger" Width="500px" Text="Kayıt Ol" style="font-weight: bold" OnClick="btnKayıt_Click" />
                 </strong>
        </div>
             <div class="text-center">
        <br />

        </div>
         </div>
            </div>

    </form>
      
</body>
</html>
