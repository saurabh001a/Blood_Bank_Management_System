<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ADMIN.aspx.cs" Inherits="BLOOD_BANK_MANAGEMENT_SYSTEM.WebForm5" %>

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
            margin-top: 2.5vw;
            display: flex;
            justify-content: space-evenly;
            align-items: center;
            flex-direction: column;
        }

        .content1 {
            margin-bottom: 2.5vw;
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
        }

        .form {
            border-radius: 25px;
            padding: 1vw 0vw;
            background-color: #fff;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            margin-bottom: 3.5vw;
        }

        #Button1 {
            cursor:pointer;
            border: none;
            border-radius: 15px;
            font-size: large;
            padding: .5vw 1vw;
            background-color: #fff;
            color: red;
            box-shadow: 2px 2px 15px rgba(0, 0, 0, 0.2);
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

        #TextBox1, #TextBox2 {
            border: none;
            border-bottom: 1px solid black;
        }

            #TextBox1:focus, #TextBox2:focus {
                outline: none;
                border-bottom: 1px solid red;
            }

        #HyperLink2:visited {
            color: #0000FF;
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
                    <span style="font-size: 2vw; font-weight: 900;">ADMIN</span>
                    <br />
                    <span style="font-size: 3vw; font-weight: 900; color: red;">MENU</span>
                </div>
                <div class="content2 hidden" id="content">

                    <div class="form">
                        <div class="form_heading">
                            <h1>LOGIN</h1>
                        </div>
                        <div class="form_data">

                            <table cellpadding="15">
                                <tr>
                                    <td>
                                        <asp:Label ID="Label1" runat="server">USER NAME:</asp:Label>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label ID="Label2" runat="server">PASSWORD:</asp:Label>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2" align="center">
                                        <asp:Button ID="Button1" runat="server" Text="LOGIN HERE" OnClick="Button1_Click" />
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2" align="center">
                                        <asp:HyperLink ID="HyperLink2" runat="server" href="LOGIN_PAGE.aspx">LOG IN AS A USER</asp:HyperLink>
                                    </td>
                                </tr>
                            </table>
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

