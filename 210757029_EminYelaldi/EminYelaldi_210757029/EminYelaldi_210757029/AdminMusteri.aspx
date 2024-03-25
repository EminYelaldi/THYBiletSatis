<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AdminMusteri.aspx.cs" Inherits="EminYelaldi_210757029.AdminMusteri" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <!-- ADMİN MÜŞTERİ HTML CSS BÖLÜMÜ -->
    <style>
        .container {
            background: #303641;
            position: relative;
            width: 100%;
            height: 100vh;
        }
    </style>

     <div class="container" style="margin-top: -20px" >
         <center>
                <asp:GridView ID="GridView1" runat="server" DataKeyNames="MusteriID" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black" CssClass="auto-style1" OnRowDeleting="GridView1_RowDeleting" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating" Style="margin-top: 60px" OnRowCancelingEdit="GridView1_RowCancelingEdit">
                    <Columns>
                        <asp:BoundField DataField="MusteriID" HeaderText="Müşteri ID" >
                        <HeaderStyle BackColor="#3B3B3B" />
                        </asp:BoundField>
                        <asp:BoundField DataField="MusteriAd" HeaderText="Müşteri Adı">
                            <HeaderStyle BackColor="#3B3B3B" />
                        </asp:BoundField>
                        <asp:BoundField DataField="MusteriSoyad" HeaderText="Müşteri Soyadı">
                            <HeaderStyle BackColor="#3B3B3B" />
                        </asp:BoundField>
                        <asp:BoundField DataField="MusteriKullaniciAd" HeaderText="Kullanıcı Adı">
                            <FooterStyle BackColor="#3B3B3B" />
                            <HeaderStyle BackColor="#3B3B3B" />
                        </asp:BoundField>
                        <asp:BoundField DataField="MusteriMail" HeaderText="Mail">
                        <HeaderStyle BackColor="#3B3B3B" />
                        </asp:BoundField>
                        <asp:BoundField DataField="MusteriTelefon" HeaderText="Telefon No">
                            <HeaderStyle BackColor="#3B3B3B" />
                        </asp:BoundField>
                        <asp:BoundField DataField="MusteriSifre" HeaderText="Şifre">
                        <HeaderStyle BackColor="#3B3B3B" />
                        </asp:BoundField>
                        <asp:BoundField DataField="MusteriCinsiyet" HeaderText="Cinsiyet">
                        <HeaderStyle BackColor="#3B3B3B" />
                        </asp:BoundField>
                        <asp:CommandField ButtonType="Button" SelectText="Güncelle" EditText="Güncelle" ShowEditButton="True">
                            <ControlStyle BackColor="#58A222" ForeColor="White" />
                        <HeaderStyle BackColor="#3B3B3B" />
                        </asp:CommandField>
                        <asp:CommandField ButtonType="Button" DeleteText="Sil" SelectText="Sil" ShowDeleteButton="True">
                            <ControlStyle BackColor="#D90000" ForeColor="White" />
                        <HeaderStyle BackColor="#3B3B3B" />
                        </asp:CommandField>
                    </Columns>
                    <FooterStyle BackColor="#CCCCCC" />
                    <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                    <RowStyle BackColor="White" />
                    <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                    <SortedAscendingHeaderStyle BackColor="Gray" />
                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                    <SortedDescendingHeaderStyle BackColor="#383838" />
                </asp:GridView>
             </center>
            </div>
</asp:Content>
