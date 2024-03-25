<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="KoltukSecimi.aspx.cs" Inherits="EminYelaldi_210757029.KoltukSecimi" %>

<!DOCTYPE html>
<!-- KULLANILAN BOOSTRAP DOSYASI ! -->
<link href="Dosyalar1/bootstrap.min.css" rel="stylesheet" />
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

     <!-- KOLTUK SEÇİMİ HTML CSS BÖLÜMÜ -->

    <title></title>
    <style>
        .table1{

            margin-left:auto;
            margin-right:auto;
        }

    </style>
    <style type="text/css">
        .auto-style1 {
            width: 114%;
            margin-left: 412px;
            margin-top: 59px;
            height: 220px;
        }
        .auto-style2 {
            width: 64px;
        }
        .auto-style4 {
            width: 64px;
            height: 33px;
        }
        .auto-style6 {
            height: 33px;
        }
        .auto-style8 {
            width: 76px;
        }
        .auto-style9 {
            height: 33px;
            width: 76px;
        }
        .auto-style10 {
            width: 523px;
        }
        .auto-style11 {
            height: 33px;
            width: 523px;
        }
        .auto-style12 {
            width: 47px;
        }
        .auto-style13 {
            width: 47px;
            height: 33px;
        }
        .auto-style14 {
            text-align: center;
        }
        .auto-style15 {
            width: 64px;
            height: 44px;
        }
        .auto-style16 {
            width: 47px;
            height: 44px;
        }
        .auto-style17 {
            width: 523px;
            height: 44px;
        }
        .auto-style18 {
            height: 44px;
        }
        .auto-style19 {
            width: 76px;
            height: 44px;
        }
        .auto-style20 {
            width: 433px;
            margin-left: 313px;
        }
    </style>
</head>
<body style="width: 235px" class="section-center">
    <form id="form1" runat="server">
        <div class="section-center">
        <div class="auto-style20">
            <h2 class="text-center">Lütfen Koltuk Seçimi Yapınız</h2>
        </div>
        <div>
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        </div>
        <div class="auto-style14">
            <table class="auto-style1" cssclass="table1">
                <tr>
                    <td class="auto-style2" cssclass="table1">
                        
                        <asp:Button ID="Button1" runat="server" Height="40px" Text="A1" Width="51px" cssclass="btn btn-info" OnClick="Button1_Click"/>
                    </td>
                    <td class="auto-style12">
                        <asp:Button ID="Button2" runat="server" Height="40px" Text="A2" Width="51px" cssclass="btn btn-info" OnClick="Button2_Click" />
                    </td>
                    <td class="auto-style10">&nbsp;</td>
                    <td>
                        <asp:Button ID="Button3" runat="server" Height="40px" Text="A3" Width="51px" cssclass="btn btn-info" OnClick="Button3_Click"/>
                    </td>
                    <td class="auto-style8">
                        <asp:Button ID="Button4" runat="server" Height="40px" Text="A4" Width="51px" CssClass="btn btn-info" OnClick="Button4_Click" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2" cssclass="table1">
                        <asp:Button ID="Button5" runat="server" Height="40px" Text="B1" Width="51px" cssclass="btn btn-info" OnClick="Button5_Click"/>
                    </td>
                    <td class="auto-style12">
                        <asp:Button ID="Button6" runat="server" Height="40px" Text="B2" Width="51px" cssclass="btn btn-info" OnClick="Button6_Click"/>
                    </td>
                    <td class="auto-style10">&nbsp;</td>
                    <td>
                        <asp:Button ID="Button7" runat="server" Height="40px" Text="B3" Width="51px" cssclass="btn btn-info" OnClick="Button7_Click"/>
                    </td>
                    <td class="auto-style8">
                        <asp:Button ID="Button8" runat="server" Height="40px" Text="B4" Width="51px" CssClass="btn btn-info" OnClick="Button8_Click" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4" cssclass="table1">
                        <asp:Button ID="Button9" runat="server" Height="40px" Text="C1" Width="51px" cssclass="btn btn-info" OnClick="Button9_Click"/>
                    </td>
                    <td class="auto-style13">
                        <asp:Button ID="Button10" runat="server" Height="40px" Text="C2" Width="51px" cssclass="btn btn-info" OnClick="Button10_Click"/>
                    </td>
                    <td class="auto-style11"></td>
                    <td class="auto-style6">
                        <asp:Button ID="Button11" runat="server" Height="40px" Text="C3" Width="51px" cssclass="btn btn-info" OnClick="Button11_Click"/>
                    </td>
                    <td class="auto-style9">
                        <asp:Button ID="Button12" runat="server" Height="40px" Text="C4" Width="51px" cssclass="btn btn-info" OnClick="Button12_Click"/>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2" cssclass="table1">
                        <asp:Button ID="Button13" runat="server" Height="40px" Text="D1" Width="51px" cssclass="btn btn-info" OnClick="Button13_Click"/>
                    </td>
                    <td class="auto-style12">
                        <asp:Button ID="Button14" runat="server" Height="40px" Text="D2" Width="51px" cssclass="btn btn-info" OnClick="Button14_Click"/>
                    </td>
                    <td class="auto-style10">&nbsp;</td>
                    <td>
                        <asp:Button ID="Button15" runat="server" Height="40px" Text="D3" Width="51px" CssClass="btn btn-info" OnClick="Button15_Click" />
                    </td>
                    <td class="auto-style8" cssclass="table1">
                        <asp:Button ID="Button16" runat="server" Height="40px" Text="D4" Width="51px" cssclass="btn btn-info" OnClick="Button16_Click" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2" cssclass="table1">
                        <asp:Button ID="Button17" runat="server" Height="40px" Text="E1" Width="51px" cssclass="btn btn-info" OnClick="Button17_Click"/>
                    </td>
                    <td class="auto-style12" cssclass="table1">
                        <asp:Button ID="Button18" runat="server" Height="40px" Text="E2" Width="51px" cssclass="btn btn-info" OnClick="Button18_Click"/>
                    </td>
                    <td class="auto-style10" cssclass="table1">&nbsp;</td>
                    <td>
                        <asp:Button ID="Button19" runat="server" Height="40px" Text="E3" Width="51px" cssclass="btn btn-info" OnClick="Button19_Click"/>
                    </td>
                    <td class="auto-style8">
                        <asp:Button ID="Button20" runat="server" Height="40px" Text="E4" Width="51px" cssclass="btn btn-info" OnClick="Button20_Click"/>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style15" cssclass="table1">
                        <asp:Button ID="Button21" runat="server" Height="40px" Text="F1" Width="51px" cssclass="btn btn-info" style="margin-top: 0" OnClick="Button21_Click"/>
                    </td>
                    <td class="auto-style16" cssclass="table1">
                        <asp:Button ID="Button22" runat="server" Height="40px" Text="F2" Width="51px" cssclass="btn btn-info" OnClick="Button22_Click"/>
                    </td>
                    <td class="auto-style17" cssclass="table1"></td>
                    <td class="auto-style18">
                        <asp:Button ID="Button23" runat="server" Height="40px" Text="F3" Width="51px" cssclass="btn btn-info" OnClick="Button23_Click"/>
                    </td>
                    <td class="auto-style19" cssclass="table1">
                        <asp:Button ID="Button24" runat="server" Height="40px" Text="F4" Width="51px" cssclass="btn btn-info" OnClick="Button24_Click"/>
                       
                    </td>
                </tr>
            </table>
        </div>
        <br />
        <div>
            <asp:Button ID="Button25" runat="server" Text="Kaydet" CssClass="btn btn-danger" Width="264px" style="margin-left: 413px" OnClick="Button25_Click" />
        </div>
            </div>
    </form>
</body>
</html>
