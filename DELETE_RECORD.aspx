<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DELETE_RECORD.aspx.cs" Inherits="BLOOD_BANK_MANAGEMENT_SYSTEM.WebForm8" %>

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
            margin: 0px;
            background-color: #f5f5f5;
            overflow-y: scroll;
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

        .menu {
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
        }

        #Button1, #Button2, #Button3 {
            cursor: pointer;
            border: none;
            border-radius: 15px;
            font-size: large;
            padding: .5vw 1vw;
            background-color: #fff;
            color: red;
            box-shadow: 2px 2px 15px rgba(0, 0, 0, 0.2);
        }

        #HyperLink1:visited, #HyperLink2:visited {
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

        #TextBox1, #TextBox2 {
            border: none;
            padding: 1vw 5vw;
            border-radius: 25px;
            text-align: center;
            box-shadow: 0px 0px 15px rgba(0, 0, 0, 0.2);
        }

            #TextBox1:focus, #TextBox2:focus {
                outline: none;
            }

        .search {
            margin-top: 5vw;
            display: flex;
            text-align: center;
            flex-direction: row;
            gap: 5vw;
        }

        .donor, .acceptor {
            display: flex;
            flex-direction: column;
            gap: 5vw;
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
                                <div style="font-size: 3vw; font-weight: 900;">ADMIN</div>
                                <div style="font-size: 2vw; font-weight: 900; color: red; margin-left: 10px;">MENU</div>
                            </div>
                        </li>
                        <li>
                            <asp:HyperLink ID="HyperLink1" runat="server" href="ADMIN_SEARCH.aspx">SEARCH DONOR</asp:HyperLink>
                        </li>
                        <li>
                            <asp:HyperLink ID="HyperLink2" runat="server" href="VIEW_ENQUIRY.aspx">VIEW ENQUIRY</asp:HyperLink>
                        </li>
                        <li>
                            <asp:HyperLink ID="HyperLink3" runat="server" href="DELETE_RECORD.aspx" class="active">DELETE RECORD</asp:HyperLink>
                        </li>
                        <li>
                            <asp:Button ID="Button1" runat="server" Text="LOGOUT" OnClick="Button1_Click" />
                        </li>
                    </ul>
                </div>

                <div class="content2 hidden" id="content" style="margin-top: 10px;">
                    <div class="search">
                        <div class="donor">
                            <div class="TextBox">
                                <asp:TextBox ID="TextBox1" runat="server" placeholder="ENTER DONER ID"></asp:TextBox>
                            </div>
                            <div class="Button">
                                <asp:Button ID="Button2" runat="server" Text="DELETE" OnClick="Button2_Click1" />
                            </div>
                        </div>
                        <div class="acceptor">
                            <div class="TextBox">
                                <asp:TextBox ID="TextBox2" runat="server" placeholder="ENTER ACCEPTOR ID"></asp:TextBox>
                            </div>
                            <div class="Button">
                                <asp:Button ID="Button3" runat="server" Text="DELETE" OnClick="Button3_Click" />
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="website" style="color: red; padding: 1vw; font-family: 'Times New Roman', Times, serif; font-size: large; position: fixed; bottom: 0px;">
            <i class="fa-solid fa-droplet" style="margin-right:.5vw;"></i>BloodHub.Org
        </div>
    </form>
</body>
</html>

