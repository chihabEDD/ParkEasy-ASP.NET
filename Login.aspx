<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title></title>
    <link rel="stylesheet" type="text/css" href="bootstrap/css/bootstrap.min.css" />
    <link rel="stylesheet" type="text/css" href="font-awesome/css/font-awesome.min.css" />
    <link rel="stylesheet" type="text/css" href="css/local.css" />
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            font-size: small;
        }
        .auto-style2 {
            height: 23px;
        }
        .auto-style3 {
            font-family: gadugi;
            font-size: medium;
        }

         .btn {
            text-decoration: none;
            font-size: medium;
            color: rgb(255, 255, 255);
            background: rgb(00,99,33);
            padding: 5px 40px;
            border-radius: 40px;
            font-weight: bolder;
            outline:none;
            text-transform: uppercase;
            transition: all 0.2s ease-in-out;
            font-family: Candara;
        }
            .btn:hover {
                color: #fbe150;
                box-shadow: 0 5px 15px rgba(145, 92, 182, 0.2);
                border:solid 2px white;
            }
        
         .blur-bgimage {
            overflow: hidden;
        }

    .blur-bgimage:before {
    margin-left:375px;
    margin-top:0px;
    content:"";
    position: fixed;
    width : 45%;
    height: 70%;
    background:inherit;
    z-index: -1;
    -webkit-filter: blur(40px);
}

        .auto-style4 {
            font-family: gadugi;
            font-size: large;
        }

    </style>
</head>
<body>
    <form id="form1" runat="server">
        <center>
<div style="border: thin solid #C0C0C0; width:60%">
    <asp:Image ID="Image1" runat="server" Width="100%" ImageUrl="~/Images/Online Parking Booking Banner.jpg" />
    <br />
    <br />
        <table class="auto-style1">
            <tr>
                <td style="text-align: right; width:30%">
                    &nbsp;</td>
                <td style="text-align: center; border-bottom-style: solid; border-bottom-width: 2px; border-bottom-color: #808080;">
                    <asp:Label ID="Label1" runat="server" Font-Names="Gadugi" Font-Size="30pt" Text="Login" style="font-size: 40pt; color: #660033;"></asp:Label>
                </td>
                <td style="text-align: left; width:30%">
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="text-align: center" colspan="3">
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="text-align: center" colspan="3">
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="text-align: center" colspan="3">&nbsp;</td>
            </tr>
            <tr>
                <td align="center" colspan="3">
                    <asp:TextBox ID="TextBox1" Placeholder=" ID *" Required="" runat="server" Height="35px" Width="35%" BorderColor="#333333" CssClass="auto-style4" ></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="center" colspan="3">
                    <asp:Label ID="Label2" runat="server" CssClass="auto-style3" Visible="False"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                </td>
            </tr>
            <tr>
                <td align="center" colspan="3">
                    <asp:TextBox ID="TextBox2" Placeholder=" Password *" Required="" runat="server" Height="35px" Width="35%"  TextMode="Password" BorderColor="#333333" CssClass="auto-style4"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="center" colspan="3">
                    <asp:Label ID="Label3" runat="server" CssClass="auto-style3" Visible="False"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </td>
            </tr>
            <tr>
                <td style="text-align: center" class="auto-style2" colspan="3"></td>
            </tr>
            <tr>
                <td style="text-align: center" colspan="3">
                    <asp:Button ID="Button1" runat="server" Text="Login" Font-Size="Large" Height="35px" Width="20%" OnClick="Button1_Click" CssClass="btn" />
                </td>
            </tr>
            <tr>
                <td style="text-align: center" colspan="3">
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                </td>
            </tr>
        </table>
    <table class="auto-style1">
    <tr>
    <td colspan="2" style="background-color: #262523; color: #FFFFFF; font-family: Gadugi;" align="right">
        <asp:Label ID="Label4" runat="server" CssClass="auto-style1" Text="Online Parking Booking System "></asp:Label>
        <asp:Label ID="Label5" runat="server" CssClass="auto-style1" Text="|| Your Name&nbsp;&nbsp;&nbsp;"></asp:Label>
        &nbsp;&nbsp; 
    </td>
    </tr>
    </table>
    </div>
            </center>
    </form>
</body>
</html>
