<%@ Page Title="" Language="C#" MasterPageFile="~/Ucus.Master" AutoEventWireup="true" CodeBehind="BiletTablosu.aspx.cs" Inherits="EminYelaldi_210757029.BiletTablosu" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <!-- BİLET TABLOSU HTML CSS BÖLÜMÜ -->

    <style type="text/css">
    .auto-style1 {
        margin-left: 195px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div>
        <asp:Label ID="Label1" runat="server" Visible="false"  Text="Label"></asp:Label>
    </div>
    <div class="section-center" >
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" CssClass="auto-style1">
        <Columns>
            <asp:BoundField DataField="BiletID" HeaderText="Bilet ID" >
            <HeaderStyle BackColor="#3B3B3B" />
            </asp:BoundField>
            <asp:BoundField DataField="D_UcusID" HeaderText="Uçuş ID" >
            <HeaderStyle BackColor="#3B3B3B" />
            </asp:BoundField>
            <asp:BoundField DataField="D_KullaniciAdi" HeaderText="Kullanıcı Adı" />
            <asp:BoundField DataField="D_GidilenSehir" HeaderText="Nereden" >
            <HeaderStyle BackColor="#3B3B3B" />
            </asp:BoundField>
            <asp:BoundField DataField="D_DonulenSehir" HeaderText="Nereye" >
            <FooterStyle BackColor="#3B3B3B" />
            <HeaderStyle BackColor="#3B3B3B" />
            </asp:BoundField>
            <asp:BoundField DataField="D_UcusTarih" DataFormatString="{0:yyyy/MM/dd}" HeaderText="Uçuş Tarih" >
            <HeaderStyle BackColor="#3B3B3B" />
            </asp:BoundField>
            <asp:BoundField DataField="D_UcusSaat" HeaderText="Kalkış Saati" >
            <HeaderStyle BackColor="#3B3B3B" />
            </asp:BoundField>
            <asp:BoundField DataField="D_VarisSaat" HeaderText="Varış Saati" >
            <HeaderStyle BackColor="#3B3B3B" />
            </asp:BoundField>
            <asp:BoundField DataField="D_UcusKoltuk" HeaderText="Koltuk No" >
            <HeaderStyle BackColor="#3B3B3B" />
            </asp:BoundField>
            <asp:BoundField DataField="D_UcusTutar" HeaderText="Tutar" >
            <HeaderStyle BackColor="#3B3B3B" />
            </asp:BoundField>
            <asp:CommandField ButtonType="Button" SelectText="Seç" ShowSelectButton="True" >
            <HeaderStyle BackColor="#3B3B3B" />
            </asp:CommandField>
        </Columns>
        <FooterStyle BackColor="#CCCCCC" />
        <HeaderStyle BackColor="#3B3B3B" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
        <RowStyle BackColor="White" />
        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="Gray" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#383838" />
    </asp:GridView>
        </div>
</asp:Content>
