<%@ Page Title="" Language="C#" MasterPageFile="~/Ucus.Master" AutoEventWireup="true" CodeBehind="AnaSayfa.aspx.cs" Inherits="EminYelaldi_210757029.AnaSayfa" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server"></asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <div style="margin: auto;margin-top:-20px; font-family: 'DejaVu Serif'; background-image: url('img/background.jpg');background-size:cover">
      
        <!-- ANASAYFANIN HTML KODLARI -->

        <h2 class="text-center">MERHABA NEREYE GİTMEK İSTERSİNİZ</h2>
       
        <br />
        <br />
        <br />
        <div>
            <center>
                <asp:Label ID="TxtNereden" runat="server" Text="Nereden"></asp:Label>
                <asp:DropDownList ID="DrpNereden" runat="server" CssClass="form-control" Width="250px">
                    <asp:ListItem Text="Erzurum" Value="Erzurum" />
                    <asp:ListItem Text="İstanbul" Value="İstanbul" />
                    <asp:ListItem Text="Ankara" Value="Ankara" />
                    <asp:ListItem Text="İzmir" Value="İzmir" />
                    <asp:ListItem Text="Bursa" Value="Bursa" />
                </asp:DropDownList>
            </center>
        </div>
        <div>
        </div>
        <br />

        <div>
            <center>
                <asp:Label ID="TxtNereye" runat="server" Text="Nereye"></asp:Label>
                <asp:DropDownList ID="DrpNereye" runat="server" CssClass="form-control" Width="250px">
                    <asp:ListItem Text="Erzurum" Value="Erzurum" />
                    <asp:ListItem Text="İstanbul" Value="İstanbul" />
                    <asp:ListItem Text="Ankara" Value="Ankara" />
                    <asp:ListItem Text="İzmir" Value="İzmir" />
                    <asp:ListItem Text="Bursa" Value="Bursa" />
                </asp:DropDownList>
            </center>
            <br />
            <br />
        </div>
        <div>
            <center>
                <asp:Label ID="Label1" runat="server" Text="Tarih"></asp:Label>
                <asp:TextBox ID="TxtTarih" runat="server" CssClass="form-control" Width="250px"></asp:TextBox>
                <asp:Button ID="Button2" runat="server" Text="..." CssClass="form-control" Width="50px" OnClick="Button2_Click" />
                <asp:Calendar ID="Calendar1" runat="server" Visible="false" BackColor="#FFFFCC" BorderColor="#FFCC66" BorderWidth="1px" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#663399" Height="200px" ShowGridLines="True" Width="220px" OnSelectionChanged="Calendar1_SelectionChanged">
                    <DayHeaderStyle BackColor="#FFCC66" Font-Bold="True" Height="1px" />
                    <NextPrevStyle Font-Size="9pt" ForeColor="#FFFFCC" />
                    <OtherMonthDayStyle ForeColor="#CC9966" />
                    <SelectedDayStyle BackColor="#CCCCFF" Font-Bold="True" />
                    <SelectorStyle BackColor="#FFCC66" />
                    <TitleStyle BackColor="#990000" Font-Bold="True" Font-Size="9pt" ForeColor="#FFFFCC" />
                    <TodayDayStyle BackColor="#FFCC66" ForeColor="White" />
                </asp:Calendar>
            </center>



        </div>
        <div>
            <br />
            <br />
            <center>
                <asp:Button ID="Button1" runat="server" Text="Uçuş Ara" CssClass="btn btn-danger" Width="500px" OnClick="Button1_Click" />
            </center>
        </div>
        <br />
        <br />
        <div>
            <center>
                <asp:GridView ID="GridView3" runat="server" ShowHeaderWhenEmpty="True"  EmptyDataText="No Records Found" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" Width="695px" CssClass="auto-style1" AutoGenerateColumns="False" OnSelectedIndexChanged="GridView3_SelectedIndexChanged">
                    <Columns>
                        <asp:BoundField DataField="UcusID" HeaderText="Uçuş ID" />
                        <asp:BoundField DataField="UcusNereden" HeaderText="Nereden" />
                        <asp:BoundField DataField="UcusNereye" HeaderText="Nereye" />
                        <asp:BoundField DataField="UcusTarih" HeaderText="Tarih" DataFormatString="{0:yyyy/MM/dd}" />
                        <asp:BoundField DataField="UcusSaat" HeaderText="Kalkış Saati" />
                        <asp:BoundField DataField="VarisSaat" HeaderText="Varış Saati" />
                        <asp:BoundField DataField="UcusTutar" HeaderText="Tutar" />
                        <asp:CommandField ButtonType="Button" ShowSelectButton="True" />
                    </Columns>
                    <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
                    <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
                    <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
                    <RowStyle BackColor="White" ForeColor="#330099" />
                    <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
                    <SortedAscendingCellStyle BackColor="#FEFCEB" />
                    <SortedAscendingHeaderStyle BackColor="#AF0101" />
                    <SortedDescendingCellStyle BackColor="#F6F0C0" />
                    <SortedDescendingHeaderStyle BackColor="#7E0000" />
                </asp:GridView>
            </center>
        </div>
     
        

    </div>

</asp:Content>
