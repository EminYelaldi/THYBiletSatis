<%@ Page Title="" Language="C#" MasterPageFile="~/Ucus.Master" AutoEventWireup="true" CodeBehind="Biletlerim.aspx.cs" Inherits="EminYelaldi_210757029.Biletlerim" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <!-- BİLETLERİM PANEL HTML CSS BÖLÜMÜ -->
    <style>
        @import url("https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;700&display=swap");

        body,
        p,
        h1 {
            margin: 0;
            padding: 0;
            font-family: "Open Sans", sans-serif;
        }

        .container {
            background: #e0e2e8;
            position: relative;
            width: 100%;
            height: 100vh;
        }

            .container .ticket {
                position: absolute;
                top: 50%;
                left: 50%;
                transform: translate(-50%, -50%);
            }

            .container .basic {
                display: none;
            }

        .airline {
            display: block;
            height: 575px;
            width: 270px;
            box-shadow: 5px 5px 30px rgba(0, 0, 0, 0.3);
            border-radius: 25px;
            z-index: 3;
        }

            .airline .top {
                height: 220px;
                background: #d10606;
                border-top-right-radius: 25px;
                border-top-left-radius: 25px;
            }

                .airline .top h1 {
                    text-transform: uppercase;
                    font-size: 12px;
                    letter-spacing: 2px;
                    text-align: center;
                    position: absolute;
                    top: 30px;
                    left: 50%;
                    transform: translateX(-50%);
                }

            .airline .bottom {
                height: 355px;
                background: #fff;
                border-bottom-right-radius: 25px;
                border-bottom-left-radius: 25px;
            }

        .top .big {
            position: absolute;
            top: 100px;
            font-size: 65px;
            font-weight: 700;
            line-height: 0.8;
            color: #fff;
        }

            .top .big .from {
                color: #fff;
                text-shadow: -1px 0 #000, 0 1px #000, 1px 0 #000, 0 -1px #000;
            }

            .top .big .to {
                position: absolute;
                left: 32px;
                font-size: 35px;
                display: flex;
                flex-direction: row;
                align-items: center;
            }

                .top .big .to i {
                    margin-top: 5px;
                    margin-right: 10px;
                    font-size: 15px;
                    color: #fff;
                }

        .top--side {
            position: absolute;
            right: 35px;
            top: 110px;
            text-align: right;
            color: #fff;
        }

            .top--side i {
                font-size: 25px;
                margin-bottom: 18px;
            }

            .top--side p {
                font-size: 10px;
                font-weight: 700;
            }

                .top--side p + p {
                    margin-bottom: 8px;
                }

        .bottom p {
            display: flex;
            flex-direction: column;
            font-size: 13px;
            font-weight: 700;
        }

            .bottom p span {
                font-weight: 400;
                font-size: 11px;
            }

        .bottom .column {
            margin: 0 auto;
            width: 80%;
            padding: 2rem 0;
        }

        .bottom .row {
            display: flex;
            justify-content: space-between;
        }

        .bottom .row--right {
            text-align: right;
        }

        .bottom .row--center {
            text-align: center;
        }

        .bottom .row-2 {
            margin: 30px 0 60px 0;
            position: relative;
        }

            .bottom .row-2::after {
                content: "";
                position: absolute;
                width: 100%;
                bottom: -30px;
                left: 0;
                background: #000;
                height: 1px;
            }

        .bottom .bar--code {
            height: 50px;
            width: 80%;
            margin: 0 auto;
            position: relative;
        }

            .bottom .bar--code::after {
                content: "";
                position: absolute;
                width: 6px;
                height: 100%;
                background: #000;
                top: 0;
                left: 0;
                box-shadow: 10px 0 #000, 30px 0 #000, 40px 0 #000, 67px 0 #000, 90px 0 #000, 100px 0 #000, 180px 0 #000, 165px 0 #000, 200px 0 #000, 210px 0 #000, 135px 0 #000, 120px 0 #000;
            }

            .bottom .bar--code::before {
                content: "";
                position: absolute;
                width: 3px;
                height: 100%;
                background: #000;
                top: 0;
                left: 11px;
                box-shadow: 12px 0 #000, -4px 0 #000, 45px 0 #000, 65px 0 #000, 72px 0 #000, 78px 0 #000, 97px 0 #000, 150px 0 #000, 165px 0 #000, 180px 0 #000, 135px 0 #000, 120px 0 #000;
            }
      
        .auto-style1 {
            height: 100px;
            margin-bottom: 50px;
            margin-left:10px;
        }
        .auto-style2 {
            width: 283px;
            margin-left: 8px;
        }
        .auto-style3 {
            font-size: large;
        }
    </style>
    <div class="container">

        <div class="ticket basic">
            <p>Admit One</p>
        </div>

        <div class="ticket airline">
            <div class="top">
                <h1 style="color: #FFFFFF" class="auto-style3">Bilet Bilgileri</h1>
                <div class="big" style="left: 0px; top: 100px; width: 333px">
                    <p> <img src="img/THY-LOGOkck.png" class="auto-style1"></p>


                </div>
                <div class="top--side">
                    <i class="fas fa-plane"></i>
                    <p>
                        <span>
                            <asp:Label ID="LblNereden" runat="server" Text="label" Font-Size="Small"></asp:Label> -
                            <asp:Label ID="LblNereye" runat="server" Text="label" Font-Size="Small"></asp:Label>
                        </span>
                    </p>
                    <p>
                        <span>
                            <asp:Label ID="LblTarih" runat="server" Text="label" Font-Size="Small"></asp:Label> 
                        </span>
                    </p>
                </div>

            </div>
            <div class="bottom">
                <div class="column">
                    <div class="row row-1">
                        <p class="auto-style2">
                            <strong>
                            <asp:Label ID="Label1" runat="server" Text="Bilet No" Font-Size="Small"></asp:Label></strong><span>
                            <asp:Label ID="LblBiletID" runat="server" Text="Label" Font-Size="Small"></asp:Label></span>
                        </p>
                        <p class="row--right" style="width: 272px; margin-right: 17px;">
                            <span>
                            <strong>
                            <asp:Label ID="Label3" runat="server" Text="Tutar" Font-Size="Small"></asp:Label>

                            </strong>

                            </span>
                            <asp:Label ID="LblTutar" runat="server" Text="label" Font-Size="Small"></asp:Label>
                        </p>
                    </div>
                    <div class="row row-2">

                        <p class="row--left" style="text-align: left">
                            <span>
                             <strong>
                             <asp:Label ID="Label5" runat="server" Text="Kalkış" Font-Size="Small"></asp:Label>

                            </strong>

                            </span>
                            <asp:Label ID="LblKalkis" runat="server" Text="label" Font-Size="Small"></asp:Label>
                        </p>
                        <p class="row--right" style="width: 267px" margin-right: 17px;>
                            <span>
                            <strong>
                            <asp:Label ID="Label7" runat="server" Text="Varış" Font-Size="Small"></asp:Label>

                            </strong>

                            </span>
                            <asp:Label ID="LblVaris" runat="server" Text="label" Font-Size="Small"></asp:Label>
                        </p>
                    </div>
                    <div class="row row-3">
                        <p class="auto-style2">
                            <span>
                                <strong>
                                <asp:Label ID="Label9" runat="server" Text="Kullanıcı Adı:" Font-Size="Small"></asp:Label>
                                </strong>
                                <asp:Label ID="LblKullanici" runat="server" Text="label" Font-Size="Small"></asp:Label>
                            </span>
                        </p>
                        <p class="row--right" style="width: 280px">
                            <span>
                                <strong>
                                <asp:Label ID="Label13" runat="server" Text="Koltuk No:" Font-Size="Small" style="margin-right: 17px;"></asp:Label>

                            </strong>

                            </span>
                            <asp:Label ID="LblKoltuk" runat="server" Text="label" Font-Size="Small" style="margin-right: 17px;"></asp:Label>
                        </p>

                    </div>
                </div>
                <div class="bar--code"></div>
            </div>
        </div>



    </div>
</asp:Content>
