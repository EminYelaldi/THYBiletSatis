<%@ Page Title="" Language="C#" MasterPageFile="~/Ucus.Master" AutoEventWireup="true" CodeBehind="BiletIptal.aspx.cs" Inherits="EminYelaldi_210757029.BiletIptal" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <link href="Dosyalar1/bootstrap.min.css" rel="stylesheet" />
    <center>
        <div>
            <asp:Label runat="server" Text="İptal etmek istediğiniz biletin numarasını giriniz."></asp:Label>
            <asp:TextBox ID="TxtIptal" runat="server" CssClass="form-control" Width="250px"></asp:TextBox>
        </div>
        <div>
            <asp:Button ID="Button1" runat="server" CssClass="btn btn-danger" Text="İptal Et" OnClick="Button1_Click" />
        </div>
    </center>
</asp:Content>
