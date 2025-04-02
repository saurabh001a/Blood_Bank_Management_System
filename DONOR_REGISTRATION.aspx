<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DONOR_REGISTRATION.aspx.cs" Inherits="BLOOD_BANK_MANAGEMENT_SYSTEM.WebForm9" %>

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
            margin-bottom: 1vw;
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

        #Button1, #Button2, #Button3 {
            cursor:pointer;
            border: none;
            border-radius: 15px;
            font-size: large;
            padding: .5vw 1vw;
            background-color: #fff;
            color: red;
            box-shadow: 2px 2px 15px rgba(0, 0, 0, 0.2);
        }

        a {
            text-decoration: none;
            font-weight: bolder;
        }

        #HyperLink1:visited, #HyperLink3:visited, #HyperLink4:visited {
            color: #0000FF;
        }

        .active {
            color: red;
        }

        .form_data {
            border-radius: 25px;
            padding: 1vw 1vw;
            margin-bottom: 2vw;
            background-color: #fff;
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

        #TextBox1, #TextBox2, #TextBox3, #TextBox4 {
            border: none;
            border-bottom: 1px solid black;
        }

            #TextBox1:focus, #TextBox2:focus, #TextBox3:focus, #TextBox4:focus, #TextBox4:focus {
                outline: none;
                border-bottom: 1px solid red;
            }

        table {
            margin: 0px 1vw;
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
                            <asp:HyperLink ID="HyperLink2" runat="server" href="DONOR_REGISTRATION.aspx" class="active">DONOR REGISTRATION</asp:HyperLink></li>
                        <li>
                            <asp:HyperLink ID="HyperLink3" runat="server" href="BLOOD_BANK.aspx">BLOOD BANK</asp:HyperLink>
                        </li>
                        <li>
                            <asp:HyperLink ID="HyperLink4" runat="server" href="ACCEPTOR_REGISTRATION.aspx">REQUEST BLOOD</asp:HyperLink>
                        </li>
                        <li>
                            <asp:Button ID="Button3" runat="server" Text="LOGOUT" OnClick="Button3_Click" />
                        </li>
                    </ul>
                </div>
                <div class="content2 hidden" id="content">
                    <div class="form">
                        <div class="form_data">
                            <div class="form_heading">
                                <h1 align="center">DONOR<br />
                                    REGISTRATION</h1>
                            </div>
                            <table cellpadding="10">
                                <tr>
                                    <td>
                                        <asp:Label ID="Label1" runat="server">NAME:</asp:Label>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="TextBox1" runat="server" MaxLength="50"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label ID="Label2" runat="server">AGE:</asp:Label>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label ID="Label6" runat="server" Text="Label">GENDER:</asp:Label>
                                    </td>
                                    <td>
                                        <asp:DropDownList ID="DropDownList2" runat="server">
                                            <asp:ListItem>SELECT GENDER</asp:ListItem>
                                            <asp:ListItem>MALE</asp:ListItem>
                                            <asp:ListItem>FEMALE</asp:ListItem>
                                            <asp:ListItem>OTHERS</asp:ListItem>
                                        </asp:DropDownList>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label ID="Label3" runat="server">BLOOD GROUP:</asp:Label>
                                    </td>
                                    <td>
                                        <asp:DropDownList ID="DropDownList1" runat="server">
                                            <asp:ListItem>SELECT BLOOD GROUP</asp:ListItem>
                                            <asp:ListItem>O+</asp:ListItem>
                                            <asp:ListItem>O-</asp:ListItem>
                                            <asp:ListItem>A+</asp:ListItem>
                                            <asp:ListItem>A-</asp:ListItem>
                                            <asp:ListItem>B+</asp:ListItem>
                                            <asp:ListItem>B-</asp:ListItem>
                                            <asp:ListItem>AB+</asp:ListItem>
                                            <asp:ListItem>AB-</asp:ListItem>
                                        </asp:DropDownList>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label ID="Label7" runat="server">PACK:</asp:Label>
                                    </td>
                                    <td>
                                        <asp:DropDownList ID="DropDownList3" runat="server">
                                            <asp:ListItem>SELECT PACK</asp:ListItem>
                                            <asp:ListItem>300ML</asp:ListItem>
                                            <asp:ListItem>500ML</asp:ListItem>
                                        </asp:DropDownList>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label ID="Label4" runat="server">CONTACT:</asp:Label>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label ID="Label5" runat="server">ADDRESS:</asp:Label>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr style="text-align: center;">
                                    <td>
                                        <asp:Button ID="Button1" runat="server" Text="SUBMIT" OnClick="Button1_Click" />
                                    </td>
                                    <td>
                                        <asp:Button ID="Button2" runat="server" Text="CANCEL" />
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

