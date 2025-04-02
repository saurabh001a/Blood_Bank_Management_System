<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BLOOD_BANK.aspx.cs" Inherits="BLOOD_BANK_MANAGEMENT_SYSTEM.WebForm7" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>BLOOD BANK MANAGEMENT SYSTEM</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css" />
    <style>
        html {
            scroll-behavior: smooth;
        }

        body {
            overflow-y: scroll;
            margin: 0px;
            background-color: #f5f5f5;
        }

        .navbar {
            height: 15vw;
            width: 100%;
        }

            .navbar img {
                filter: saturate(150%);
                height: 15vw;
                width: 100%;
            }

        .main {
            height: 100%;
            width: 100%;
        }

        .content {
            display: flex;
            flex-direction: column;
            padding: .5vw;
        }

        .content1 {
            margin-top: 2vw;
        }


        .form {
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
        }

        .menu {
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
        }

        #Button1 {
            cursor: pointer;
            border: none;
            border-radius: 15px;
            font-size: large;
            padding: .5vw 1vw;
            background-color: #fff;
            color: red;
            box-shadow: 2px 2px 15px rgba(0, 0, 0, 0.2);
        }

        #HyperLink1:visited, #HyperLink2:visited, #HyperLink4:visited {
            color: #0000FF;
        }

        .active {
            color: red;
        }

        a {
            text-decoration: none;
            font-weight: bolder;
        }

        .content2 {
            margin-bottom: 2vw;
            display: flex;
            justify-content: center;
            align-items: center;
            flex-direction: column;
        }

        .hidden {
            opacity: 0;
            visibility: hidden;
            transition: opacity 1s ease, visibility 0s linear 1s;
        }

        .visible {
            opacity: 1;
            visibility: visible;
            transition: opacity 1s ease;
        }


        .cards {
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(12vw, 1fr));
            gap: 1.8vw;
            width: 65%;
            margin: 0 auto;
        }


        .card {
            display: flex;
            flex-direction: column;
            justify-content: space-around;
            align-items: center;
            background-color: #fff;
            padding: 1.5vw 1vw;
            border-radius: 25px;
            transition: transform 0.3s ease;
        }


            .card:hover {
                transform: scale(1.05);
                cursor: pointer;
            }

        .label {
            color: red;
            font-size: x-large;
            font-weight: bolder;
            text-align: center;
        }

        .footer {
            display: flex;
            flex-direction: row;
            justify-content: center;
            align-items: center;
            text-align: center;
            gap: 1vw;
        }
    </style>
    <script>
        window.onload = function () {
            var content = document.getElementById('content');
            content.classList.remove('hidden');
            content.classList.add('visible');
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div class="main">
            <div class="navbar">
                <img src="IMAGES/thankublooddonors.png" />
            </div>
            <div class="content">
                <div class="content1">
                    <ul style="display: flex; align-items: center; justify-content: space-evenly; padding: 0; margin: 0; list-style-type: none;">
                        <li>
                            <div class="menu">
                                <div style="font-size: 3vw; font-weight: 900;">WELCOME</div>
                                <div style="font-size: 2vw; font-weight: 900; color: red; margin-left: 10px;">MENU</div>
                            </div>
                        </li>
                        <li>
                            <asp:HyperLink ID="HyperLink1" runat="server" href="SEARCH_DONOR.aspx">SEARCH DONAR</asp:HyperLink></li>
                        <li>
                            <asp:HyperLink ID="HyperLink2" runat="server" href="DONOR_REGISTRATION.aspx">DONOR REGISTRATION</asp:HyperLink></li>
                        <li>
                            <asp:HyperLink ID="HyperLink3" runat="server" href="BLOOD_BANK.aspx" class="active">BLOOD BANK</asp:HyperLink>
                        </li>
                        <li>
                            <asp:HyperLink ID="HyperLink4" runat="server" href="ACCEPTOR_REGISTRATION.aspx">REQUEST BLOOD</asp:HyperLink>
                        </li>
                        <li>
                            <asp:Button ID="Button1" runat="server" Text="LOGOUT" OnClick="Button1_Click" />
                        </li>
                    </ul>
                </div>

                <div class="content2 hidden" id="content">
                    <div class="heading" style="text-align: center">
                        <h1>AVAILABLE<br />
                            DONERS</h1>
                    </div>
                    <div class="cards">
                        <div class="card" id="card1">
                            <div class="header">
                                <h1>O+</h1>
                            </div>
                            <div class="footer">
                                <div class="f_text">
                                    AVAILABLE<br />
                                    DONERS:
                                </div>
                                <asp:Label ID="Label1" runat="server" class="label"></asp:Label>
                            </div>
                        </div>
                        <div class="card" id="card2">
                            <div class="header">
                                <h1>O-</h1>
                            </div>
                            <div class="footer">
                                <div class="f_text">
                                    AVAILABLE<br />
                                    DONERS:
                                </div>
                                <asp:Label ID="Label2" runat="server" class="label"></asp:Label>
                            </div>
                        </div>
                        <div class="card" id="card3">
                            <div class="header">
                                <h1>A+</h1>
                            </div>
                            <div class="footer">
                                <div class="f_text">
                                    AVAILABLE<br />
                                    DONERS:
                                </div>
                                <asp:Label ID="Label3" runat="server" class="label"></asp:Label>
                            </div>
                        </div>
                        <div class="card" id="card4">
                            <div class="header">
                                <h1>A-</h1>
                            </div>
                            <div class="footer">
                                <div class="f_text">
                                    AVAILABLE<br />
                                    DONERS:
                                </div>
                                <asp:Label ID="Label4" runat="server" class="label"></asp:Label>
                            </div>
                        </div>
                        <div class="card" id="card5">
                            <div class="header">
                                <h1>B+</h1>
                            </div>
                            <div class="footer">
                                <div class="f_text">
                                    AVAILABLE<br />
                                    DONERS:
                                </div>
                                <asp:Label ID="Label5" runat="server" class="label"></asp:Label>
                            </div>
                        </div>
                        <div class="card" id="card6">
                            <div class="header">
                                <h1>B-</h1>
                            </div>
                            <div class="footer">
                                <div class="f_text">
                                    AVAILABLE<br />
                                    DONERS:
                                </div>
                                <asp:Label ID="Label6" runat="server" class="label"></asp:Label>
                            </div>
                        </div>
                        <div class="card" id="card7">
                            <div class="header">
                                <h1>AB+</h1>
                            </div>
                            <div class="footer">
                                <div class="f_text">
                                    AVAILABLE<br />
                                    DONERS:
                                </div>
                                <asp:Label ID="Label7" runat="server" class="label"></asp:Label>
                            </div>
                        </div>
                        <div class="card" id="card8">
                            <div class="header">
                                <h1>AB-</h1>
                            </div>
                            <div class="footer">
                                <div class="f_text">
                                    AVAILABLE<br />
                                    DONERS:
                                </div>
                                <asp:Label ID="Label8" runat="server" class="label"></asp:Label>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="website" style="color: red; padding: 1vw; font-family: 'Times New Roman', Times, serif; font-size: large; position: fixed; bottom: 0px;">
            <i class="fa-solid fa-droplet" style="margin-right: .5vw;"></i>BloodHub.Org
        </div>
    </form>
</body>
</html>
