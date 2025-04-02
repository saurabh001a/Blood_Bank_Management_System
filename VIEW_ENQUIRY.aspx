<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="VIEW_ENQUIRY.aspx.cs" Inherits="BLOOD_BANK_MANAGEMENT_SYSTEM.WebForm10" %>

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
            border-radius: 10px;
            padding: 1vw 1vw;
            margin-bottom: 2vw;
            background-color: #fff;
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

        #HyperLink1:visited, #HyperLink3:visited {
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

        #GridView1 tr {
            border-bottom: .1vw solid #a9a9a9;
        }

        #GridView1 th, #GridView1 td {
            border: none;
            padding: 1.5vw;
            text-align: center;
        }

        .hidden {
            opacity: 0;
            visibility: hidden; /* Ensure the element is hidden initially */
            transition: opacity 1s ease, visibility 0s linear 1s; /* Ensure visibility changes after the transition */
        }

        .visible {
            opacity: 1;
            visibility: visible; /* Make the element visible */
            transition: opacity 1s ease; /* Only apply opacity transition */
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
                            <asp:HyperLink ID="HyperLink1" runat="server" href="ADMIN_SEARCH.aspx">SEARCH DONAR</asp:HyperLink>
                        </li>
                        <li>
                            <asp:HyperLink ID="HyperLink2" runat="server" href="VIEW_ENQUIRY.aspx" class="active">VIEW ENQUIRY</asp:HyperLink>
                        </li>
                        <li>
                            <asp:HyperLink ID="HyperLink3" runat="server" href="DELETE_RECORD.aspx">DELETE RECORD</asp:HyperLink>
                        </li>
                        <li>
                            <asp:Button ID="Button1" runat="server" Text="LOGOUT" OnClick="Button1_Click" />
                        </li>
                    </ul>
                </div>

                <div class="content2 hidden" id="content" style="margin-top: 10px;">
                    <div class="form">
                        <div class="form_data">
                            <div class="form_heading">
                                <h1 align="center">ACCEPTORS<br />
                                    LIST</h1>
                            </div>
                        </div>
                        <asp:GridView ID="GridView1" runat="server" border="0"></asp:GridView>
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

