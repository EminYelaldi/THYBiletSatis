<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AdminUcus.aspx.cs" Inherits="EminYelaldi_210757029.AdminUcus" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <!-- ADMİN UCUŞ HTML CSS BÖLÜMÜ -->

    <style>
        .container {
            background: #303641;
            position: relative;
            width: 100%;
            height: 100vh;
        }

        .auto-style1 {
            color: #FFFFFF;
        }
    </style>

    <div class="container" style="margin-top: -20px">
        <center>
            <div>
                <h2 class="auto-style1">Uçuş Ekleme Bölümü</h2>
                <strong>
                    <asp:Label ID="Label7" runat="server" Text="Uçuş ID" CssClass="auto-style1"></asp:Label>
                </strong>
                <div class="section-center">
                    <asp:TextBox ID="TxtUcusID" runat="server" CssClass="form-control" Width="500px"></asp:TextBox>
                </div>
            </div>


            <div>
                <strong>
                    <asp:Label ID="txtAd" runat="server" Text="Nereden" CssClass="auto-style1"></asp:Label>
                </strong>
                <div class="section-center">
                    <asp:TextBox ID="TxtNereden" runat="server" CssClass="form-control" Style="text-align: center" Width="500px"></asp:TextBox>
                </div>
            </div>
            <div>
                <strong>
                    <asp:Label ID="Label1" runat="server" Text="Nereye" CssClass="auto-style1"></asp:Label>
                </strong>
                <div class="section-center">
                    <asp:TextBox ID="TxtNereye" runat="server" CssClass="form-control" Width="500px"></asp:TextBox>
                </div>
            </div>
            <div>
                <strong>
                    <asp:Label ID="Label2" runat="server" Text="Tarih" CssClass="auto-style1"></asp:Label>
                </strong>
                <asp:TextBox ID="TxtTarih" runat="server" CssClass="form-control" Width="250px"></asp:TextBox>
                <br />
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
            </div>
            <div>
                <strong>
                    <asp:Label ID="Label3" runat="server" Text="Kalkış Saati" CssClass="auto-style1"></asp:Label>
                </strong>
                <div class="section-center">
                    <asp:TextBox ID="TxtKalkis" runat="server" CssClass="form-control" Width="500px"></asp:TextBox>
                </div>
            </div>
            <div>
                <strong>
                    <asp:Label ID="Label4" runat="server" Text="Varış Saati" CssClass="auto-style1"></asp:Label>
                </strong>
                <div class="section-center">
                    <asp:TextBox ID="TxtVaris" runat="server" CssClass="form-control" Width="500px"></asp:TextBox>
                </div>
            </div>
            <div>
                <strong>
                    <asp:Label ID="Label6" runat="server" Text="Tutar" CssClass="auto-style1"></asp:Label>
                </strong>
                <div class="section-center">
                    <asp:TextBox ID="TxtTutar" runat="server" CssClass="form-control" Width="500px"></asp:TextBox>
                </div>
            </div>
            <br />
            <div class="section-center">
                <asp:Button ID="Button1" runat="server" CssClass="btn btn-danger" Text="Tabloya Ekle" OnClick="Button1_Click" />
            </div>

            <div>
                <asp:GridView ID="GridView1" runat="server" DataKeyNames="UcusID" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black" CssClass="auto-style1" OnRowDeleting="GridView1_RowDeleting" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating" Style="margin-top: 60px" OnRowCancelingEdit="GridView1_RowCancelingEdit">
                    <Columns>
                        <asp:BoundField DataField="UcusID" HeaderText="Uçuş ID">
                            <HeaderStyle BackColor="#3B3B3B" />
                        </asp:BoundField>
                        <asp:BoundField DataField="UcusNereden" HeaderText="Nereden">
                            <HeaderStyle BackColor="#3B3B3B" />
                        </asp:BoundField>
                        <asp:BoundField DataField="UcusNereye" HeaderText="Nereye">
                            <FooterStyle BackColor="#3B3B3B" />
                            <HeaderStyle BackColor="#3B3B3B" />
                        </asp:BoundField>
                        <asp:BoundField DataField="UcusTarih" HeaderText="Uçuş Tarih" DataFormatString="{0:yyyy/MM/dd}">
                            <HeaderStyle BackColor="#3B3B3B" />
                        </asp:BoundField>
                        <asp:BoundField DataField="UcusSaat" HeaderText="Kalkış Saati" HtmlEncode="false" DataFormatString="{0:hh\:mm}">
                            <HeaderStyle BackColor="#3B3B3B" />
                        </asp:BoundField>
                        <asp:BoundField DataField="VarisSaat" HeaderText="Varış Saati" HtmlEncode="false" DataFormatString="{0:hh\:mm}">
                            <HeaderStyle BackColor="#3B3B3B" />
                        </asp:BoundField>
                        <asp:BoundField DataField="UcusTutar" HeaderText="Tutar">
                            <HeaderStyle BackColor="#3B3B3B" />
                        </asp:BoundField>
                        <asp:CommandField ButtonType="Button" SelectText="Güncelle" EditText="Güncelle" ShowEditButton="True">
                            <ControlStyle BackColor="#58A222" ForeColor="White" />
                        </asp:CommandField>
                        <asp:CommandField ButtonType="Button" DeleteText="Sil" SelectText="Sil" ShowDeleteButton="True">
                            <ControlStyle BackColor="#D90000" ForeColor="White" />
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
