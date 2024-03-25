<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AdminBilet.aspx.cs" Inherits="EminYelaldi_210757029.AdminBilet" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <!-- ADMİN BİLET HTML CSS BÖLÜMÜ -->

    <style>
       
.container {
            background: #303641;
            position: relative;
            width: 100%;
            height: 100vh;
        }
</style>
    
     <div class="container" style="margin-top:-20px">
         <center>
    <div>
         <asp:GridView ID="GridView1" runat="server" DataKeyNames="BiletID" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black"  CssClass="auto-style1" OnRowDeleting="GridView1_RowDeleting" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" style="margin-top: 60px" OnRowCancelingEdit="GridView1_RowCancelingEdit">
        <Columns>
            <asp:BoundField DataField="BiletID" HeaderText="Bilet ID" ReadOnly="True" >
            <HeaderStyle BackColor="#3B3B3B" />
            </asp:BoundField>
            <asp:BoundField DataField="D_GidilenSehir" HeaderText="Nereden" >
            <HeaderStyle BackColor="#3B3B3B" />
            </asp:BoundField>
            <asp:BoundField DataField="D_DonulenSehir" HeaderText="Nereye" >
            <FooterStyle BackColor="#3B3B3B" />
            <HeaderStyle BackColor="#3B3B3B" />
            </asp:BoundField>
            <asp:BoundField DataField="D_UcusTarih" HeaderText="Uçuş Tarih" DataFormatString="{0:yyyy/MM/dd}">
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
            <asp:CommandField ButtonType="Button" SelectText="Güncelle" EditText="Güncelle" ShowEditButton="True" >
            <ControlStyle BackColor="#58A222" ForeColor="White" />
            </asp:CommandField>
            <asp:CommandField ButtonType="Button" DeleteText="Sil" SelectText="Sil" ShowDeleteButton="True" >
            <ControlStyle BackColor="#D90000" ForeColor="White" />
            </asp:CommandField>
            <asp:CommandField ButtonType="Button" SelectText="İncele" ShowSelectButton="True" >
            <ControlStyle BackColor="#00A8DF" ForeColor="White" />
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
    </div>
             </center>
         </div>


</asp:Content>
