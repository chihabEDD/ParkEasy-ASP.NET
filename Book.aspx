<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Book.aspx.cs" Inherits="Book" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
        <link rel="stylesheet" href="style.css" type="text/css" />
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            font-size: small;
        }
        .auto-style2 {
            font-family: gadugi;
            font-size: large;
        }
        .auto-style3 {
            width: 100%;
        }
        .auto-style4 {
            font-size: medium;
        }
        </style>
</head>
<body background="Images/BG.png">
    <form id="form1" runat="server">
        <center>
    <div style="border: thin solid #C0C0C0; width:60%">
     <table style="width:100%">
            <tr>
                <td align="center" colspan="3">
                    <asp:Image ID="Image1" runat="server" Width="100%" ImageUrl="~/Images/Online Parking Booking Banner.jpg" />
                </td>
            </tr>
         <tr>
    <td colspan="3">
    <asp:Panel ID="Panel2" runat="server">
        <ul id="css3menu1" class="topmenu">
	        <li class="topfirst"><a href="Lay.aspx" style="height:13px;line-height:13px;">View Parking</a></li>
	        <li class="topmenu"><a href="Book.aspx" style="height:13px;line-height:13px;">Book Parking</a></li>
	        <li class="topmenu"><a href="ViewBooking.aspx" style="height:13px;line-height:13px;">View Booking</a></li>
                        <li class="topmenu"><a href="Feedback.aspx" style="height:13px;line-height:13px;">Feedback</a></li>
	        <li class="toplast"><a href="Logout.aspx" style="height:13px;line-height:13px;">Logout</a></li>
        </ul>
    </asp:Panel>
    </td>
    </tr>
            <tr>
                <td align="right" style="width: 10%">
                    &nbsp;<asp:ImageButton ID="ImageButton1" runat="server" style="outline:none" ImageUrl="~/images/back.png" Width="45%" PostBackUrl="~/Lay.aspx" />
                </td>
                <td align="center" style="width: 80%; background-color: #CCCCCC;">
                    <asp:Label ID="Label1" runat="server" style="font-family: gadugi; font-size: xx-large" Text="Book a Slot"></asp:Label>
                </td>
                <td align="center" style="width: 10%">
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="center" colspan="3">
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="center" colspan="3">
                    &nbsp;</td>
            </tr>
            </table>
    <table width="100%">
        <tr>
            <td align="center" colspan="4">
                <asp:Label ID="Label2" runat="server" style="font-family: gadugi; font-size: large" Text="Select Date :"></asp:Label>
                <asp:TextBox ID="TextBox1" Type="date" runat="server" style="font-family: gadugi; font-size: large"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="center" width="50%" colspan="4" style="width: 100%">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="LabelErr0" runat="server" style="font-family: gadugi; color: #CC0000; " Visible="False" CssClass="auto-style4"></asp:Label>
                </td>
        </tr>
        <tr>
            <td align="center" width="50%" colspan="4" style="width: 100%">
                &nbsp;</td>
        </tr>
        <tr>
            <td align="right" width="30%">
                <asp:Label ID="Label3" runat="server" style="font-family: gadugi; font-size: large" Text="Start Time :"></asp:Label>
            </td>
            <td align="left" width="15%">
                <asp:DropDownList ID="DropDownList1" runat="server" style="font-family: gadugi; font-size: large" Width="100%">
                    <asp:ListItem>--Select--</asp:ListItem>
                    <asp:ListItem>06:00</asp:ListItem>
                    <asp:ListItem>07:00</asp:ListItem>
                    <asp:ListItem>08:00</asp:ListItem>
                    <asp:ListItem>09:00</asp:ListItem>
                    <asp:ListItem>10:00</asp:ListItem>
                    <asp:ListItem>11:00</asp:ListItem>
                    <asp:ListItem>12:00</asp:ListItem>
                    <asp:ListItem>13:00</asp:ListItem>
                    <asp:ListItem>14:00</asp:ListItem>
                    <asp:ListItem>15:00</asp:ListItem>
                    <asp:ListItem>16:00</asp:ListItem>
                    <asp:ListItem>17:00</asp:ListItem>
                    <asp:ListItem>18:00</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td align="right" width="20%">
                <asp:Label ID="Label4" runat="server" style="font-family: gadugi; font-size: large" Text="Select Hours :"></asp:Label>
            </td>
            <td align="left">
                <asp:DropDownList ID="DropDownList2" runat="server" style="font-family: gadugi; font-size: large" Width="40%">
                    <asp:ListItem>--Select--</asp:ListItem>
                    <asp:ListItem>1 hr</asp:ListItem>
                    <asp:ListItem>2 hrs</asp:ListItem>
                    <asp:ListItem>3 hrs</asp:ListItem>
                    <asp:ListItem>4 hrs</asp:ListItem>
                    <asp:ListItem>5 hrs</asp:ListItem>
                    <asp:ListItem>6 hrs</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td colspan="2" align="right">
                <asp:Label ID="LabelErr" runat="server" style="font-family: gadugi; color: #CC0000; " Visible="False" CssClass="auto-style4"></asp:Label>
                </td>
            <td colspan="2" align="center">
                <asp:Label ID="LabelErr1" runat="server" style="font-family: gadugi; color: #CC0000; " Visible="False" CssClass="auto-style4"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </td>
        </tr>
        <tr>
            <td align="center" colspan="4">
                <asp:Button ID="Button284" runat="server" style="font-family: gadugi; font-size: x-large" Text="Select Slot" OnClick="Button284_Click" Width="20%" />
            </td>
        </tr>
        <tr>
            <td align="center" colspan="4">
                <asp:Label ID="LabelSlot" runat="server" Visible="False"></asp:Label>
                <asp:Label ID="LabelSec" runat="server" Visible="False"></asp:Label>
                <asp:Label ID="LabelTime" runat="server" Visible="False"></asp:Label>
                <asp:Label ID="LabelSid" runat="server" Visible="False"></asp:Label>
                <asp:Label ID="LabelSname" runat="server" Visible="False"></asp:Label>
                <asp:Label ID="LabelSclass" runat="server" Visible="False"></asp:Label>
            </td>
        </tr>
        <tr>
            <td align="center" colspan="4">
                <asp:Label ID="LabelErr2" runat="server" style="font-family: gadugi; font-size: large; color: #CC0000" Visible="False"></asp:Label>
                </td>
        </tr>
    </table>
        <table class="auto-style1">
            <tr>
                <td>&nbsp;</td>
            </tr>
            </table>
        <asp:Panel ID="Panel1" runat="server" Visible="False">
        <table class="auto-style1" style="background-image: url('images/Road.png')">
             <tr>
                  <td style="background-position: center; text-align: center; background-image: url('images/Grass.png');" class="auto-style2" colspan="5">&nbsp;&nbsp;</td>
            </tr>
            <tr>
                <td style="text-align: center; width: 20%; border-right-style: solid; border-right-width: thin; border-right-color: #FFFFFF;">
                    <asp:Button ID="Button1" runat="server" Text="Slot 1" Width="50%" CssClass="auto-style2" OnClick="Button1_Click" />
                </td>
                <td style="text-align: center; width: 20%; border-right-style: solid; border-right-width: thin; border-right-color: #FFFFFF;">
                    <asp:Button ID="Button2" runat="server" Text="Slot 2" Width="50%" CssClass="auto-style2" OnClick="Button2_Click" />
                </td>
                <td style="text-align: center; width: 20%; border-right-style: solid; border-right-width: thin; border-right-color: #FFFFFF;">
                    <asp:Button ID="Button3" runat="server" Text="Slot 3" Width="50%" CssClass="auto-style2" OnClick="Button3_Click" />
                </td>
                <td style="text-align: center; width: 20%; border-right-style: solid; border-right-width: thin; border-right-color: #FFFFFF;">
                    <asp:Button ID="Button4" runat="server" Text="Slot 4" Width="50%" CssClass="auto-style2" OnClick="Button4_Click" />
                </td>
                <td style="text-align: center; width: 20%;">
                    <asp:Button ID="Button5" runat="server" Text="Slot 5" Width="50%" CssClass="auto-style2" OnClick="Button5_Click" />
                </td>
            </tr>
            
              <tr>
                  <td style="text-align: center; color: #FFFFFF; border-top-style: double; border-top-width: 2px; border-top-color: #FFFFFF;" class="auto-style2" colspan="5">
                      &nbsp;</td>
            </tr>
             
             <tr>
                 <td class="auto-style2" colspan="5" style="text-align: left; color: #FFFFFF; font-weight: 700;">&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;--------&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; --------&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; --------&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; --------&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; --------&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; --------&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -------</td>
             </tr>
             <tr>
                 <td class="auto-style2" colspan="5" style="text-align: center; color: #FFFFFF; border-bottom-style: double; border-bottom-width: 2px; border-bottom-color: #FFFFFF;">&nbsp;</td>
             </tr>
             
            <tr>
                <td style="text-align: center; width: 20%; border-right-style: solid; border-right-width: thin; border-right-color: #FFFFFF;">
                    <asp:Button ID="Button6" runat="server" Text="Slot 6" Width="50%" CssClass="auto-style2" OnClick="Button6_Click" />
                </td>
                <td style="text-align: center; width: 20%; border-right-style: solid; border-right-width: thin; border-right-color: #FFFFFF;">
                    <asp:Button ID="Button7" runat="server" Text="Slot 7" Width="50%" CssClass="auto-style2" OnClick="Button7_Click" />
                </td>
                <td style="text-align: center; width: 20%; border-right-style: solid; border-right-width: thin; border-right-color: #FFFFFF;">
                    <asp:Button ID="Button8" runat="server" Text="Slot 8" Width="50%" CssClass="auto-style2" OnClick="Button8_Click" />
                </td>
                <td style="text-align: center; width: 20%; border-right-style: solid; border-right-width: thin; border-right-color: #FFFFFF;">
                    <asp:Button ID="Button9" runat="server" Text="Slot 9" Width="50%" CssClass="auto-style2" OnClick="Button9_Click" />
                </td>
                <td style="text-align: center">
                    <asp:Button ID="Button10" runat="server" Text="Slot 10" Width="50%" CssClass="auto-style2" OnClick="Button10_Click" />
                </td>
            </tr>
            <tr>
                  <td style="text-align: center; color: #FFFFFF; border-top-style: double; border-top-width: 2px; border-top-color: #FFFFFF;" class="auto-style2" colspan="5">
                      &nbsp;</td>
            </tr>
             
             <tr>
                 <td class="auto-style2" colspan="5" style="text-align: left; color: #FFFFFF; font-weight: 700;">&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;--------&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; --------&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; --------&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; --------&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; --------&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; --------&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -------</td>
             </tr>
             <tr>
                 <td class="auto-style2" colspan="5" style="text-align: center; color: #FFFFFF; border-bottom-style: double; border-bottom-width: 2px; border-bottom-color: #FFFFFF;">&nbsp;</td>
             </tr>
             
            <tr>
                <td style="text-align: center; width: 20%; border-right-style: solid; border-right-width: thin; border-right-color: #FFFFFF;">
                    <asp:Button ID="Button11" runat="server" Text="Slot 11" Width="50%" CssClass="auto-style2" OnClick="Button11_Click" />
                </td>
                <td style="text-align: center; width: 20%; border-right-style: solid; border-right-width: thin; border-right-color: #FFFFFF;">
                    <asp:Button ID="Button12" runat="server" Text="Slot 12" Width="50%" CssClass="auto-style2" OnClick="Button12_Click" />
                </td>
                <td style="text-align: center; width: 20%; border-right-style: solid; border-right-width: thin; border-right-color: #FFFFFF;">
                    <asp:Button ID="Button13" runat="server" Text="Slot 13" Width="50%" CssClass="auto-style2" OnClick="Button13_Click" />
                </td>
                <td style="text-align: center; width: 20%; border-right-style: solid; border-right-width: thin; border-right-color: #FFFFFF;">
                    <asp:Button ID="Button14" runat="server" Text="Slot 14" Width="50%" CssClass="auto-style2" OnClick="Button14_Click" />
                </td>
                <td style="text-align: center">
                    <asp:Button ID="Button15" runat="server" Text="Slot 15" Width="50%" CssClass="auto-style2" OnClick="Button15_Click" />
                </td>
            </tr>
             <tr>
                  <td style="text-align: center; color: #FFFFFF; border-top-style: double; border-top-width: 2px; border-top-color: #FFFFFF;" class="auto-style2" colspan="5">
                      &nbsp;</td>
            </tr>
             
             <tr>
                 <td class="auto-style2" colspan="5" style="text-align: left; color: #FFFFFF; font-weight: 700;">&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;--------&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; --------&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; --------&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; --------&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; --------&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; --------&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -------</td>
             </tr>
             <tr>
                 <td class="auto-style2" colspan="5" style="text-align: center; color: #FFFFFF; border-bottom-style: double; border-bottom-width: 2px; border-bottom-color: #FFFFFF;">&nbsp;</td>
             </tr>
             
            <tr>
                <td style="text-align: center; width: 20%; border-right-style: solid; border-right-width: thin; border-right-color: #FFFFFF;">
                    <asp:Button ID="Button16" runat="server" Text="Slot 16" Width="50%" CssClass="auto-style2" OnClick="Button16_Click" />
                </td>
                <td style="text-align: center; width: 20%; border-right-style: solid; border-right-width: thin; border-right-color: #FFFFFF;">
                    <asp:Button ID="Button17" runat="server" Text="Slot 17" Width="50%" CssClass="auto-style2" OnClick="Button17_Click" />
                </td>
                <td style="background-position: center; text-align: center; background-image: url('images/Grass.png');"; class="auto-style2" colspan="3">
                    &nbsp;</td>
            </tr>
             <tr>
                  <td style="background-position: center; text-align: center; background-image: url('images/Grass.png'); background-repeat: repeat;" class="auto-style2" colspan="5">&nbsp;</td>
            </tr>
              </table>
            </asp:Panel>
        <asp:Panel ID="Panel3" runat="server" Visible="False">
             <table class="auto-style1" style="background-image: url('images/Road.png')">
                  <tr>
                  <td style="background-position: center; text-align: center; background-image: url('images/Grass.png');" class="auto-style2" colspan="5">&nbsp;&nbsp;</td>
            </tr>
            <tr>
                <td style="text-align: center; width: 20%; border-right-style: solid; border-right-width: thin; border-right-color: #FFFFFF;">
                    <asp:Button ID="Button35" runat="server" Text="Slot 1" Width="50%" CssClass="auto-style2" OnClick="Button35_Click" />
                </td>
                <td style="text-align: center; width: 20%; border-right-style: solid; border-right-width: thin; border-right-color: #FFFFFF;">
                    <asp:Button ID="Button36" runat="server" Text="Slot 2" Width="50%" CssClass="auto-style2" OnClick="Button36_Click" />
                </td>
                <td style="text-align: center; width: 20%; border-right-style: solid; border-right-width: thin; border-right-color: #FFFFFF;">
                    <asp:Button ID="Button37" runat="server" Text="Slot 3" Width="50%" CssClass="auto-style2" OnClick="Button37_Click" />
                </td>
                <td style="text-align: center; width: 20%; border-right-style: solid; border-right-width: thin; border-right-color: #FFFFFF;">
                    <asp:Button ID="Button38" runat="server" Text="Slot 4" Width="50%" CssClass="auto-style2" OnClick="Button38_Click" />
                </td>
                <td style="text-align: center; width: 20%;">
                    <asp:Button ID="Button39" runat="server" Text="Slot 5" Width="50%" CssClass="auto-style2" OnClick="Button39_Click" />
                </td>
            </tr>
              <tr>
                  <td style="text-align: center; color: #FFFFFF; border-top-style: double; border-top-width: 2px; border-top-color: #FFFFFF;" class="auto-style2" colspan="5">
                      &nbsp;</td>
            </tr>
             
             <tr>
                 <td class="auto-style2" colspan="5" style="text-align: left; color: #FFFFFF; font-weight: 700;">&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;--------&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; --------&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; --------&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; --------&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; --------&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; --------&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -------</td>
             </tr>
             <tr>
                 <td class="auto-style2" colspan="5" style="text-align: center; color: #FFFFFF; border-bottom-style: double; border-bottom-width: 2px; border-bottom-color: #FFFFFF;">&nbsp;</td>
             </tr>
            <tr>
                <td style="text-align: center; width: 20%; border-right-style: solid; border-right-width: thin; border-right-color: #FFFFFF;">
                    <asp:Button ID="Button40" runat="server" Text="Slot 6" Width="50%" CssClass="auto-style2" OnClick="Button40_Click" />
                </td>
                <td style="text-align: center; width: 20%; border-right-style: solid; border-right-width: thin; border-right-color: #FFFFFF;">
                    <asp:Button ID="Button41" runat="server" Text="Slot 7" Width="50%" CssClass="auto-style2" OnClick="Button41_Click" />
                </td>
                <td style="text-align: center; width: 20%; border-right-style: solid; border-right-width: thin; border-right-color: #FFFFFF;">
                    <asp:Button ID="Button42" runat="server" Text="Slot 8" Width="50%" CssClass="auto-style2" OnClick="Button42_Click" />
                </td>
                <td style="text-align: center; width: 20%; border-right-style: solid; border-right-width: thin; border-right-color: #FFFFFF;">
                    <asp:Button ID="Button43" runat="server" Text="Slot 9" Width="50%" CssClass="auto-style2" OnClick="Button43_Click" />
                </td>
                <td style="text-align: center; width: 20%;">
                    <asp:Button ID="Button44" runat="server" Text="Slot 10" Width="50%" CssClass="auto-style2" OnClick="Button44_Click" />
                </td>
            </tr>
                 <tr>
                  <td style="text-align: center; color: #FFFFFF; border-top-style: double; border-top-width: 2px; border-top-color: #FFFFFF;" class="auto-style2" colspan="5">
                      &nbsp;</td>
            </tr>
             
             <tr>
                 <td class="auto-style2" colspan="5" style="text-align: left; color: #FFFFFF; font-weight: 700;">&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;--------&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; --------&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; --------&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; --------&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; --------&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; --------&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -------</td>
             </tr>
             <tr>
                 <td class="auto-style2" colspan="5" style="text-align: center; color: #FFFFFF; border-bottom-style: double; border-bottom-width: 2px; border-bottom-color: #FFFFFF;">&nbsp;</td>
             </tr>
            <tr>
                <td style="text-align: center; width: 20%; border-right-style: solid; border-right-width: thin; border-right-color: #FFFFFF;">
                    <asp:Button ID="Button45" runat="server" Text="Slot 11" Width="50%" CssClass="auto-style2" OnClick="Button45_Click" />
                </td>
                <td style="text-align: center; width: 20%; border-right-style: solid; border-right-width: thin; border-right-color: #FFFFFF;">
                    <asp:Button ID="Button46" runat="server" Text="Slot 12" Width="50%" CssClass="auto-style2" OnClick="Button46_Click" />
                </td>
                <td style="text-align: center; width: 20%; border-right-style: solid; border-right-width: thin; border-right-color: #FFFFFF;">
                    <asp:Button ID="Button47" runat="server" Text="Slot 13" Width="50%" CssClass="auto-style2" OnClick="Button47_Click" />
                </td>
                <td style="text-align: center; width: 20%; border-right-style: solid; border-right-width: thin; border-right-color: #FFFFFF;">
                    <asp:Button ID="Button48" runat="server" Text="Slot 14" Width="50%" CssClass="auto-style2" OnClick="Button48_Click" />
                </td>
                <td style="text-align: center">
                    <asp:Button ID="Button49" runat="server" Text="Slot 15" Width="50%" CssClass="auto-style2" OnClick="Button49_Click" />
                </td>
            </tr>
                  <tr>
                  <td style="text-align: center; color: #FFFFFF; border-top-style: double; border-top-width: 2px; border-top-color: #FFFFFF;" class="auto-style2" colspan="5">
                      &nbsp;</td>
            </tr>
             
             <tr>
                 <td class="auto-style2" colspan="5" style="text-align: left; color: #FFFFFF; font-weight: 700;">&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;--------&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; --------&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; --------&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; --------&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; --------&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; --------&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -------</td>
             </tr>
             <tr>
                 <td class="auto-style2" colspan="5" style="text-align: center; color: #FFFFFF; border-bottom-style: double; border-bottom-width: 2px; border-bottom-color: #FFFFFF;">&nbsp;</td>
             </tr>
                 <tr>
                     <td style="text-align: center; width: 20%; border-right-style: solid; border-right-width: thin; border-right-color: #FFFFFF;">
                         <asp:Button ID="Button50" runat="server" Text="Slot 16" Width="50%" CssClass="auto-style2" OnClick="Button50_Click" />
                     </td>
                     <td style="text-align: center; width: 20%; border-right-style: solid; border-right-width: thin; border-right-color: #FFFFFF;">
                         <asp:Button ID="Button51" runat="server" Text="Slot 17" Width="50%" CssClass="auto-style2" OnClick="Button51_Click" />
                     </td>
                     <td style="text-align: center; width: 20%; border-right-style: solid; border-right-width: thin; border-right-color: #FFFFFF;">
                         <asp:Button ID="Button52" runat="server" Text="Slot 18" Width="50%" CssClass="auto-style2" OnClick="Button52_Click" />
                     </td>
                     <td style="text-align: center">
                         <asp:Button ID="Button53" runat="server" Text="Slot 19" Width="50%" CssClass="auto-style2" OnClick="Button53_Click" />
                     </td>
                     <td style="background-position: center; text-align: center; background-image: url('images/Grass.png');" class="auto-style2">&nbsp;</td>
                 </tr>
                 <tr>
                     <td colspan="5" style="background-position: center; text-align: center; background-image: url('images/Grass.png');">&nbsp;</td>
                 </tr>
              </table>
            </asp:Panel>
        <asp:Panel ID="Panel4" runat="server" Visible="False">
            <table class="auto-style1" style="background-image: url('images/Road.png')">
                 <tr>
                  <td style="background-position: center; text-align: center; background-image: url('images/Grass.png');" class="auto-style2" colspan="5">&nbsp;&nbsp;</td>
            </tr>
            <tr>
                <td style="text-align: center; width: 20%; border-right-style: solid; border-right-width: thin; border-right-color: #FFFFFF;">
                    <asp:Button ID="Button54" runat="server" Text="Slot 1" Width="50%" CssClass="auto-style2" OnClick="Button54_Click" />
                </td>
                <td style="text-align: center; width: 20%; border-right-style: solid; border-right-width: thin; border-right-color: #FFFFFF;">
                    <asp:Button ID="Button55" runat="server" Text="Slot 2" Width="50%" CssClass="auto-style2" OnClick="Button55_Click" />
                </td>
                <td style="text-align: center; width: 20%; border-right-style: solid; border-right-width: thin; border-right-color: #FFFFFF;">
                    <asp:Button ID="Button56" runat="server" Text="Slot 3" Width="50%" CssClass="auto-style2" OnClick="Button56_Click" />
                </td>
                <td style="text-align: center; width: 20%; border-right-style: solid; border-right-width: thin; border-right-color: #FFFFFF;">
                    <asp:Button ID="Button57" runat="server" Text="Slot 4" Width="50%" CssClass="auto-style2" OnClick="Button57_Click" />
                </td>
                <td style="text-align: center; width: 20%;">
                    <asp:Button ID="Button58" runat="server" Text="Slot 5" Width="50%" CssClass="auto-style2" OnClick="Button58_Click" />
                </td>
            </tr>
               <tr>
                  <td style="text-align: center; color: #FFFFFF; border-top-style: double; border-top-width: 2px; border-top-color: #FFFFFF;" class="auto-style2" colspan="5">
                      &nbsp;</td>
            </tr>
             
             <tr>
                 <td class="auto-style2" colspan="5" style="text-align: left; color: #FFFFFF; font-weight: 700;">&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;--------&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; --------&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; --------&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; --------&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; --------&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; --------&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -------</td>
             </tr>
             <tr>
                 <td class="auto-style2" colspan="5" style="text-align: center; color: #FFFFFF; border-bottom-style: double; border-bottom-width: 2px; border-bottom-color: #FFFFFF;">&nbsp;</td>
             </tr>
            <tr>
                <td style="text-align: center; width: 20%; border-right-style: solid; border-right-width: thin; border-right-color: #FFFFFF;">
                    <asp:Button ID="Button59" runat="server" Text="Slot 6" Width="50%" CssClass="auto-style2" OnClick="Button59_Click" />
                </td>
                <td style="text-align: center; width: 20%; border-right-style: solid; border-right-width: thin; border-right-color: #FFFFFF;">
                    <asp:Button ID="Button60" runat="server" Text="Slot 7" Width="50%" CssClass="auto-style2" OnClick="Button60_Click" />
                </td>
                <td style="text-align: center; width: 20%; border-right-style: solid; border-right-width: thin; border-right-color: #FFFFFF;">
                    <asp:Button ID="Button61" runat="server" Text="Slot 8" Width="50%" CssClass="auto-style2" OnClick="Button61_Click" />
                </td>
                <td style="text-align: center; width: 20%; border-right-style: solid; border-right-width: thin; border-right-color: #FFFFFF;">
                    <asp:Button ID="Button62" runat="server" Text="Slot 9" Width="50%" CssClass="auto-style2" OnClick="Button62_Click" />
                </td>
                <td style="text-align: center">
                    <asp:Button ID="Button63" runat="server" Text="Slot 10" Width="50%" CssClass="auto-style2" OnClick="Button63_Click" />
                </td>
            </tr>
                 <tr>
                  <td style="text-align: center; color: #FFFFFF; border-top-style: double; border-top-width: 2px; border-top-color: #FFFFFF;" class="auto-style2" colspan="5">
                      &nbsp;</td>
            </tr>
             
             <tr>
                 <td class="auto-style2" colspan="5" style="text-align: left; color: #FFFFFF; font-weight: 700;">&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;--------&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; --------&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; --------&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; --------&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; --------&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; --------&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -------</td>
             </tr>
             <tr>
                 <td class="auto-style2" colspan="5" style="text-align: center; color: #FFFFFF; border-bottom-style: double; border-bottom-width: 2px; border-bottom-color: #FFFFFF;">&nbsp;</td>
             </tr>
            <tr>
                <td style="text-align: center; width: 20%; border-right-style: solid; border-right-width: thin; border-right-color: #FFFFFF;">
                    <asp:Button ID="Button64" runat="server" Text="Slot 11" Width="50%" CssClass="auto-style2" OnClick="Button64_Click" />
                </td>
                <td style="text-align: center; width: 20%; border-right-style: solid; border-right-width: thin; border-right-color: #FFFFFF;">
                    <asp:Button ID="Button65" runat="server" Text="Slot 12" Width="50%" CssClass="auto-style2" OnClick="Button65_Click" />
                </td>
                <td style="text-align: center; width: 20%; border-right-style: solid; border-right-width: thin; border-right-color: #FFFFFF;">
                    <asp:Button ID="Button66" runat="server" Text="Slot 13" Width="50%" CssClass="auto-style2" OnClick="Button66_Click" />
                </td>
                <td style="text-align: center; width: 20%; border-right-style: solid; border-right-width: thin; border-right-color: #FFFFFF;">
                    <asp:Button ID="Button67" runat="server" Text="Slot 14" Width="50%" CssClass="auto-style2" OnClick="Button67_Click" />
                </td>
                <td style="text-align: center">
                    <asp:Button ID="Button68" runat="server" Text="Slot 15" Width="50%" CssClass="auto-style2" OnClick="Button68_Click" />
                </td>
            </tr>
                 <tr>
                  <td style="text-align: center; color: #FFFFFF; border-top-style: double; border-top-width: 2px; border-top-color: #FFFFFF;" class="auto-style2" colspan="5">
                      &nbsp;</td>
            </tr>
             
             <tr>
                 <td class="auto-style2" colspan="5" style="text-align: left; color: #FFFFFF; font-weight: 700;">&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;--------&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; --------&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; --------&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; --------&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; --------&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; --------&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -------</td>
             </tr>
             <tr>
                 <td class="auto-style2" colspan="5" style="text-align: center; color: #FFFFFF; border-bottom-style: double; border-bottom-width: 2px; border-bottom-color: #FFFFFF;">&nbsp;</td>
             </tr>
                <tr>
                    <td style="text-align: center; width: 20%; border-right-style: solid; border-right-width: thin; border-right-color: #FFFFFF;">
                        <asp:Button ID="Button69" runat="server" Text="Slot 16" Width="50%" CssClass="auto-style2" OnClick="Button69_Click" />
                    </td>
                    <td style="text-align: center; width: 20%; border-right-style: solid; border-right-width: thin; border-right-color: #FFFFFF;">
                        <asp:Button ID="Button70" runat="server" Text="Slot 17" Width="50%" CssClass="auto-style2" OnClick="Button70_Click" />
                    </td>
                    <td style="text-align: center; width: 20%; border-right-style: solid; border-right-width: thin; border-right-color: #FFFFFF;">
                        <asp:Button ID="Button71" runat="server" Text="Slot 18" Width="50%" CssClass="auto-style2" OnClick="Button71_Click" />
                    </td>
                    <td style="text-align: center; width: 20%; border-right-style: solid; border-right-width: thin; border-right-color: #FFFFFF;">
                        <asp:Button ID="Button72" runat="server" Text="Slot 19" Width="50%" CssClass="auto-style2" OnClick="Button72_Click" />
                    </td>
                    <td style="text-align: center">
                        <asp:Button ID="Button73" runat="server" Text="Slot 20" Width="50%" CssClass="auto-style2" OnClick="Button73_Click" />
                    </td>
                </tr>
                <tr>
                  <td style="text-align: center; color: #FFFFFF; border-top-style: double; border-top-width: 2px; border-top-color: #FFFFFF;" class="auto-style2" colspan="5">
                      &nbsp;</td>
            </tr>
             
             <tr>
                 <td class="auto-style2" colspan="5" style="text-align: left; color: #FFFFFF; font-weight: 700;">&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;--------&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; --------&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; --------&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; --------&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; --------&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; --------&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -------</td>
             </tr>
             <tr>
                 <td class="auto-style2" colspan="5" style="text-align: center; color: #FFFFFF; border-bottom-style: double; border-bottom-width: 2px; border-bottom-color: #FFFFFF;">&nbsp;</td>
             </tr>
                <tr>
                    <td style="text-align: center; width: 20%; border-right-style: solid; border-right-width: thin; border-right-color: #FFFFFF;">
                        <asp:Button ID="Button74" runat="server" Text="Slot 21" Width="50%" CssClass="auto-style2" OnClick="Button74_Click" />
                    </td>
                    <td style="text-align: center; width: 20%; border-right-style: solid; border-right-width: thin; border-right-color: #FFFFFF;">
                        <asp:Button ID="Button75" runat="server" Text="Slot 22" Width="50%" CssClass="auto-style2" OnClick="Button75_Click" />
                    </td>
                    <td style="text-align: center; width: 20%; border-right-style: solid; border-right-width: thin; border-right-color: #FFFFFF;">
                        <asp:Button ID="Button76" runat="server" Text="Slot 23" Width="50%" CssClass="auto-style2" OnClick="Button76_Click" />
                    </td>
                    <td style="text-align: center; width: 20%; border-right-style: solid; border-right-width: thin; border-right-color: #FFFFFF;">
                        <asp:Button ID="Button77" runat="server" Text="Slot 24" Width="50%" CssClass="auto-style2" OnClick="Button77_Click" />
                    </td>
                    <td style="text-align: center">
                        <asp:Button ID="Button78" runat="server" Text="Slot 25" Width="50%" CssClass="auto-style2" OnClick="Button78_Click" />
                    </td>
                </tr>
                 <tr>
                  <td style="text-align: center; color: #FFFFFF; border-top-style: double; border-top-width: 2px; border-top-color: #FFFFFF;" class="auto-style2" colspan="5">
                      &nbsp;</td>
            </tr>
             
             <tr>
                 <td class="auto-style2" colspan="5" style="text-align: left; color: #FFFFFF; font-weight: 700;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;--------&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; --------&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; --------&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; --------&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; --------&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; --------&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -------</td>
             </tr>
             <tr>
                 <td class="auto-style2" colspan="5" style="text-align: center; color: #FFFFFF; border-bottom-style: double; border-bottom-width: 2px; border-bottom-color: #FFFFFF;">&nbsp;</td>
             </tr>
                <tr>
                    <td style="text-align: center; width: 20%; border-right-style: solid; border-right-width: thin; border-right-color: #FFFFFF;">
                        <asp:Button ID="Button79" runat="server" Text="Slot 26" Width="50%" CssClass="auto-style2" OnClick="Button79_Click" />
                    </td>
                    <td style="text-align: center; width: 20%; border-right-style: solid; border-right-width: thin; border-right-color: #FFFFFF;">
                        <asp:Button ID="Button80" runat="server" Text="Slot 27" Width="50%" CssClass="auto-style2" OnClick="Button80_Click" />
                    </td>
                    <td style="text-align: center; width: 20%; border-right-style: solid; border-right-width: thin; border-right-color: #FFFFFF;">
                        <asp:Button ID="Button81" runat="server" Text="Slot 28" Width="50%" CssClass="auto-style2" OnClick="Button81_Click" />
                    </td>
                    <td style="text-align: center; width: 20%; border-right-style: solid; border-right-width: thin; border-right-color: #FFFFFF;">
                        <asp:Button ID="Button82" runat="server" Text="Slot 29" Width="50%" CssClass="auto-style2" OnClick="Button82_Click" />
                    </td>
                    <td style="text-align: center">
                        <asp:Button ID="Button83" runat="server" Text="Slot 30" Width="50%" CssClass="auto-style2" OnClick="Button83_Click" />
                    </td>
                </tr>
                <tr>
                  <td style="text-align: center; color: #FFFFFF; border-top-style: double; border-top-width: 2px; border-top-color: #FFFFFF;" class="auto-style2" colspan="5">
                      &nbsp;</td>
            </tr>
             
             <tr>
                 <td class="auto-style2" colspan="5" style="text-align: left; color: #FFFFFF; font-weight: 700;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;--------&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; --------&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; --------&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; --------&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; --------&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; --------&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -------</td>
             </tr>
             <tr>
                 <td class="auto-style2" colspan="5" style="text-align: center; color: #FFFFFF; border-bottom-style: double; border-bottom-width: 2px; border-bottom-color: #FFFFFF;">&nbsp;</td>
             </tr>
                <tr>
                    <td style="text-align: center; width: 20%; border-right-style: solid; border-right-width: thin; border-right-color: #FFFFFF;">
                        <asp:Button ID="Button84" runat="server" Text="Slot 31" Width="50%" CssClass="auto-style2" OnClick="Button84_Click" />
                    </td>
                    <td style="text-align: center; width: 20%; border-right-style: solid; border-right-width: thin; border-right-color: #FFFFFF;">
                        <asp:Button ID="Button85" runat="server" Text="Slot 32" Width="50%" CssClass="auto-style2" OnClick="Button85_Click" />
                    </td>
                    <td style="text-align: center; width: 20%; border-right-style: solid; border-right-width: thin; border-right-color: #FFFFFF;">
                        <asp:Button ID="Button86" runat="server" Text="Slot 33" Width="50%" CssClass="auto-style2" OnClick="Button86_Click" />
                    </td>
                    <td style="text-align: center; width: 20%; border-right-style: solid; border-right-width: thin; border-right-color: #FFFFFF;">
                        <asp:Button ID="Button87" runat="server" Text="Slot 34" Width="50%" CssClass="auto-style2" OnClick="Button87_Click" />
                    </td>
                    <td style="text-align: center">
                        <asp:Button ID="Button88" runat="server" Text="Slot 35" Width="50%" CssClass="auto-style2" OnClick="Button88_Click" />
                    </td>
                </tr>
                <tr>
                  <td style="text-align: center; color: #FFFFFF; border-top-style: double; border-top-width: 2px; border-top-color: #FFFFFF;" class="auto-style2" colspan="5">
                      &nbsp;</td>
            </tr>
             
             <tr>
                 <td class="auto-style2" colspan="5" style="text-align: left; color: #FFFFFF; font-weight: 700;">&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;--------&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; --------&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; --------&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; --------&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; --------&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; --------&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -------</td>
             </tr>
             <tr>
                 <td class="auto-style2" colspan="5" style="text-align: center; color: #FFFFFF; border-bottom-style: double; border-bottom-width: 2px; border-bottom-color: #FFFFFF;">&nbsp;</td>
             </tr>
                <tr>
                    <td style="text-align: center; width: 20%; border-right-style: solid; border-right-width: thin; border-right-color: #FFFFFF;">
                        <asp:Button ID="Button89" runat="server" Text="Slot 36" Width="50%" CssClass="auto-style2" OnClick="Button89_Click" />
                    </td>
                    <td style="text-align: center; width: 20%; border-right-style: solid; border-right-width: thin; border-right-color: #FFFFFF;">
                        <asp:Button ID="Button90" runat="server" Text="Slot 37" Width="50%" CssClass="auto-style2" OnClick="Button90_Click" />
                    </td>
                    <td style="text-align: center; width: 20%; border-right-style: solid; border-right-width: thin; border-right-color: #FFFFFF;">
                        <asp:Button ID="Button91" runat="server" Text="Slot 38" Width="50%" CssClass="auto-style2" OnClick="Button91_Click" />
                    </td>
                    <td style="text-align: center; width: 20%; border-right-style: solid; border-right-width: thin; border-right-color: #FFFFFF;">
                        <asp:Button ID="Button92" runat="server" Text="Slot 39" Width="50%" CssClass="auto-style2" OnClick="Button92_Click" />
                    </td>
                    <td style="text-align: center">
                        <asp:Button ID="Button93" runat="server" Text="Slot 40" Width="50%" CssClass="auto-style2" OnClick="Button93_Click" />
                    </td>
                </tr>
               <tr>
                  <td style="text-align: center; color: #FFFFFF; border-top-style: double; border-top-width: 2px; border-top-color: #FFFFFF;" class="auto-style2" colspan="5">
                      &nbsp;</td>
            </tr>
             
             <tr>
                 <td class="auto-style2" colspan="5" style="text-align: left; color: #FFFFFF; font-weight: 700;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;--------&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; --------&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; --------&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; --------&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; --------&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; --------&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -------</td>
             </tr>
             <tr>
                 <td class="auto-style2" colspan="5" style="text-align: center; color: #FFFFFF; border-bottom-style: double; border-bottom-width: 2px; border-bottom-color: #FFFFFF;">&nbsp;</td>
             </tr>
                <tr>
                    <td style="text-align: center; width: 20%; border-right-style: solid; border-right-width: thin; border-right-color: #FFFFFF;">
                        <asp:Button ID="Button94" runat="server" Text="Slot 41" Width="50%" CssClass="auto-style2" OnClick="Button94_Click" />
                    </td>
                    <td style="text-align: center; width: 20%; border-right-style: solid; border-right-width: thin; border-right-color: #FFFFFF;">
                        <asp:Button ID="Button95" runat="server" Text="Slot 42" Width="50%" CssClass="auto-style2" OnClick="Button95_Click" />
                    </td>
                    <td style="text-align: center; width: 20%; border-right-style: solid; border-right-width: thin; border-right-color: #FFFFFF;">
                        <asp:Button ID="Button96" runat="server" Text="Slot 43" Width="50%" CssClass="auto-style2" OnClick="Button96_Click" />
                    </td>
                    <td style="text-align: center; width: 20%; border-right-style: solid; border-right-width: thin; border-right-color: #FFFFFF;">
                        <asp:Button ID="Button97" runat="server" Text="Slot 44" Width="50%" CssClass="auto-style2" OnClick="Button97_Click" />
                    </td>
                    <td style="text-align: center">
                        <asp:Button ID="Button98" runat="server" Text="Slot 45" Width="50%" CssClass="auto-style2" OnClick="Button98_Click" />
                    </td>
                </tr>
                 <tr>
                  <td style="text-align: center; color: #FFFFFF; border-top-style: double; border-top-width: 2px; border-top-color: #FFFFFF;" class="auto-style2" colspan="5">
                      &nbsp;</td>
            </tr>
             
             <tr>
                 <td class="auto-style2" colspan="5" style="text-align: left; color: #FFFFFF; font-weight: 700;">&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;--------&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; --------&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; --------&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; --------&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; --------&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; --------&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -------</td>
             </tr>
             <tr>
                 <td class="auto-style2" colspan="5" style="text-align: center; color: #FFFFFF; border-bottom-style: double; border-bottom-width: 2px; border-bottom-color: #FFFFFF;">&nbsp;</td>
             </tr>
                <tr>
                    <td style="text-align: center; width: 20%; border-right-style: solid; border-right-width: thin; border-right-color: #FFFFFF;">
                        <asp:Button ID="Button99" runat="server" Text="Slot 46" Width="50%" CssClass="auto-style2" OnClick="Button99_Click" />
                    </td>
                    <td style="text-align: center; width: 20%; border-right-style: solid; border-right-width: thin; border-right-color: #FFFFFF;">
                        <asp:Button ID="Button100" runat="server" Text="Slot 47" Width="50%" CssClass="auto-style2" OnClick="Button100_Click" />
                    </td>
                    <td style="text-align: center; width: 20%; border-right-style: solid; border-right-width: thin; border-right-color: #FFFFFF;">
                        <asp:Button ID="Button101" runat="server" Text="Slot 48" Width="50%" CssClass="auto-style2" OnClick="Button101_Click" />
                    </td>
                    <td style="text-align: center; width: 20%; border-right-style: solid; border-right-width: thin; border-right-color: #FFFFFF;">
                        <asp:Button ID="Button102" runat="server" Text="Slot 49" Width="50%" CssClass="auto-style2" OnClick="Button102_Click" />
                    </td>
                    <td style="text-align: center">
                        <asp:Button ID="Button103" runat="server" Text="Slot 50" Width="50%" CssClass="auto-style2" OnClick="Button103_Click" />
                    </td>
                </tr>
                <tr>
                  <td style="background-position: center; text-align: center; background-image: url('images/Grass.png');" class="auto-style2" colspan="5">&nbsp;&nbsp;</td>
            </tr>
             </table>
            </asp:Panel>
        <asp:Panel ID="Panel5" runat="server" Visible="False">
            <table class="auto-style1" style="background-image: url('images/Road.png')">
                 <tr>
                  <td style="background-position: center; text-align: center; background-image: url('images/Grass.png');" class="auto-style2" colspan="5">&nbsp;&nbsp;</td>
            </tr>
              <tr>
                <td style="text-align: center; width: 20%; border-right-style: solid; border-right-width: thin; border-right-color: #FFFFFF;">
                    <asp:Button ID="Button104" runat="server" Text="Slot 1" Width="50%" CssClass="auto-style2" OnClick="Button104_Click" />
                </td>
                <td style="text-align: center; width: 20%; border-right-style: solid; border-right-width: thin; border-right-color: #FFFFFF;">
                    <asp:Button ID="Button105" runat="server" Text="Slot 2" Width="50%" CssClass="auto-style2" OnClick="Button105_Click" />
                </td>
                <td style="text-align: center; width: 20%; border-right-style: solid; border-right-width: thin; border-right-color: #FFFFFF;">
                    <asp:Button ID="Button106" runat="server" Text="Slot 3" Width="50%" CssClass="auto-style2" OnClick="Button106_Click" />
                </td>
                <td style="text-align: center; width: 20%; border-right-style: solid; border-right-width: thin; border-right-color: #FFFFFF;">
                    <asp:Button ID="Button107" runat="server" Text="Slot 4" Width="50%" CssClass="auto-style2" OnClick="Button107_Click" />
                </td>
                <td style="text-align: center; width: 20%;">
                    <asp:Button ID="Button108" runat="server" Text="Slot 5" Width="50%" CssClass="auto-style2" OnClick="Button108_Click" />
                </td>
            </tr>
              <tr>
                  <td style="text-align: center; color: #FFFFFF; border-top-style: double; border-top-width: 2px; border-top-color: #FFFFFF;" class="auto-style2" colspan="5">
                      &nbsp;</td>
            </tr>
             
             <tr>
                 <td class="auto-style2" colspan="5" style="text-align: left; color: #FFFFFF; font-weight: 700;">&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;--------&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; --------&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; --------&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; --------&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; --------&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; --------&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -------</td>
             </tr>
             <tr>
                 <td class="auto-style2" colspan="5" style="text-align: center; color: #FFFFFF; border-bottom-style: double; border-bottom-width: 2px; border-bottom-color: #FFFFFF;">&nbsp;</td>
             </tr>
            <tr>
                <td style="text-align: center; width: 20%; border-right-style: solid; border-right-width: thin; border-right-color: #FFFFFF;">
                    <asp:Button ID="Button109" runat="server" Text="Slot 6" Width="50%" CssClass="auto-style2" OnClick="Button109_Click" />
                </td>
                <td style="text-align: center; width: 20%; border-right-style: solid; border-right-width: thin; border-right-color: #FFFFFF;">
                    <asp:Button ID="Button110" runat="server" Text="Slot 7" Width="50%" CssClass="auto-style2" OnClick="Button110_Click" />
                </td>
                <td style="text-align: center; width: 20%; border-right-style: solid; border-right-width: thin; border-right-color: #FFFFFF;">
                    <asp:Button ID="Button111" runat="server" Text="Slot 8" Width="50%" CssClass="auto-style2" OnClick="Button111_Click" />
                </td>
                <td style="text-align: center; width: 20%; border-right-style: solid; border-right-width: thin; border-right-color: #FFFFFF;">
                    <asp:Button ID="Button112" runat="server" Text="Slot 9" Width="50%" CssClass="auto-style2" OnClick="Button112_Click" />
                </td>
                <td style="text-align: center">
                    <asp:Button ID="Button113" runat="server" Text="Slot 10" Width="50%" CssClass="auto-style2" OnClick="Button113_Click" />
                </td>
            </tr>
               <tr>
                  <td style="text-align: center; color: #FFFFFF; border-top-style: double; border-top-width: 2px; border-top-color: #FFFFFF;" class="auto-style2" colspan="5">
                      &nbsp;</td>
            </tr>
             
             <tr>
                 <td class="auto-style2" colspan="5" style="text-align: left; color: #FFFFFF; font-weight: 700;">&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;--------&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; --------&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; --------&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; --------&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; --------&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; --------&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -------</td>
             </tr>
             <tr>
                 <td class="auto-style2" colspan="5" style="text-align: center; color: #FFFFFF; border-bottom-style: double; border-bottom-width: 2px; border-bottom-color: #FFFFFF;">&nbsp;</td>
             </tr>
            <tr>
                <td style="text-align: center; width: 20%; border-right-style: solid; border-right-width: thin; border-right-color: #FFFFFF;">
                    <asp:Button ID="Button114" runat="server" Text="Slot 11" Width="50%" CssClass="auto-style2" OnClick="Button114_Click" />
                </td>
                <td style="text-align: center; width: 20%; border-right-style: solid; border-right-width: thin; border-right-color: #FFFFFF;">
                    <asp:Button ID="Button115" runat="server" Text="Slot 12" Width="50%" CssClass="auto-style2" OnClick="Button115_Click" />
                </td>
                <td style="text-align: center; width: 20%; border-right-style: solid; border-right-width: thin; border-right-color: #FFFFFF;">
                    <asp:Button ID="Button116" runat="server" Text="Slot 13" Width="50%" CssClass="auto-style2" OnClick="Button116_Click" />
                </td>
                <td style="text-align: center; width: 20%; border-right-style: solid; border-right-width: thin; border-right-color: #FFFFFF;">
                    <asp:Button ID="Button117" runat="server" Text="Slot 14" Width="50%" CssClass="auto-style2" OnClick="Button117_Click" />
                </td>
                <td style="text-align: center">
                    <asp:Button ID="Button118" runat="server" Text="Slot 15" Width="50%" CssClass="auto-style2" OnClick="Button118_Click" />
                </td>
            </tr>
                 <tr>
                  <td style="text-align: center; color: #FFFFFF; border-top-style: double; border-top-width: 2px; border-top-color: #FFFFFF;" class="auto-style2" colspan="5">
                      &nbsp;</td>
            </tr>
             
             <tr>
                 <td class="auto-style2" colspan="5" style="text-align: left; color: #FFFFFF; font-weight: 700;">&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;--------&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; --------&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; --------&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; --------&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; --------&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; --------&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -------</td>
             </tr>
             <tr>
                 <td class="auto-style2" colspan="5" style="text-align: center; color: #FFFFFF; border-bottom-style: double; border-bottom-width: 2px; border-bottom-color: #FFFFFF;">&nbsp;</td>
             </tr>
                <tr>
                    <td style="text-align: center; width: 20%; border-right-style: solid; border-right-width: thin; border-right-color: #FFFFFF;">
                        <asp:Button ID="Button119" runat="server" Text="Slot 16" Width="50%" CssClass="auto-style2" OnClick="Button119_Click" />
                    </td>
                    <td style="text-align: center; width: 20%; border-right-style: solid; border-right-width: thin; border-right-color: #FFFFFF;">
                        <asp:Button ID="Button120" runat="server" Text="Slot 17" Width="50%" CssClass="auto-style2" OnClick="Button120_Click" />
                    </td>
                    <td style="text-align: center; width: 20%; border-right-style: solid; border-right-width: thin; border-right-color: #FFFFFF;">
                        <asp:Button ID="Button121" runat="server" Text="Slot 18" Width="50%" CssClass="auto-style2" OnClick="Button121_Click" />
                    </td>
                    <td style="text-align: center; width: 20%; border-right-style: solid; border-right-width: thin; border-right-color: #FFFFFF;">
                        <asp:Button ID="Button122" runat="server" Text="Slot 19" Width="50%" CssClass="auto-style2" OnClick="Button122_Click" />
                    </td>
                    <td style="text-align: center">
                        <asp:Button ID="Button123" runat="server" Text="Slot 20" Width="50%" CssClass="auto-style2" OnClick="Button123_Click" />
                    </td>
                </tr>
                <tr>
                  <td style="text-align: center; color: #FFFFFF; border-top-style: double; border-top-width: 2px; border-top-color: #FFFFFF;" class="auto-style2" colspan="5">
                      &nbsp;</td>
            </tr>
             
             <tr>
                 <td class="auto-style2" colspan="5" style="text-align: left; color: #FFFFFF; font-weight: 700;">&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;--------&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; --------&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; --------&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; --------&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; --------&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; --------&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -------</td>
             </tr>
             <tr>
                 <td class="auto-style2" colspan="5" style="text-align: center; color: #FFFFFF; border-bottom-style: double; border-bottom-width: 2px; border-bottom-color: #FFFFFF;">&nbsp;</td>
             </tr>
                <tr>
                    <td style="text-align: center; width: 20%; border-right-style: solid; border-right-width: thin; border-right-color: #FFFFFF;">
                        <asp:Button ID="Button124" runat="server" Text="Slot 21" Width="50%" CssClass="auto-style2" OnClick="Button124_Click" />
                    </td>
                    <td style="text-align: center; width: 20%; border-right-style: solid; border-right-width: thin; border-right-color: #FFFFFF;">
                        <asp:Button ID="Button125" runat="server" Text="Slot 22" Width="50%" CssClass="auto-style2" OnClick="Button125_Click" />
                    </td>
                    <td style="text-align: center; width: 20%; border-right-style: solid; border-right-width: thin; border-right-color: #FFFFFF;">
                        <asp:Button ID="Button126" runat="server" Text="Slot 23" Width="50%" CssClass="auto-style2" OnClick="Button126_Click" />
                    </td>
                    <td style="text-align: center; width: 20%; border-right-style: solid; border-right-width: thin; border-right-color: #FFFFFF;">
                        <asp:Button ID="Button127" runat="server" Text="Slot 24" Width="50%" CssClass="auto-style2" OnClick="Button127_Click" />
                    </td>
                    <td style="text-align: center">
                        <asp:Button ID="Button128" runat="server" Text="Slot 25" Width="50%" CssClass="auto-style2" OnClick="Button128_Click" />
                    </td>
                </tr>
               <tr>
                  <td style="text-align: center; color: #FFFFFF; border-top-style: double; border-top-width: 2px; border-top-color: #FFFFFF;" class="auto-style2" colspan="5">
                      &nbsp;</td>
            </tr>
             
             <tr>
                 <td class="auto-style2" colspan="5" style="text-align: left; color: #FFFFFF; font-weight: 700;">&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;--------&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; --------&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; --------&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; --------&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; --------&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; --------&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -------</td>
             </tr>
             <tr>
                 <td class="auto-style2" colspan="5" style="text-align: center; color: #FFFFFF; border-bottom-style: double; border-bottom-width: 2px; border-bottom-color: #FFFFFF;">&nbsp;</td>
             </tr>
                <tr>
                    <td style="text-align: center; width: 20%; border-right-style: solid; border-right-width: thin; border-right-color: #FFFFFF;">
                        <asp:Button ID="Button129" runat="server" Text="Slot 26" Width="50%" CssClass="auto-style2" OnClick="Button129_Click" />
                    </td>
                    <td style="text-align: center; width: 20%; border-right-style: solid; border-right-width: thin; border-right-color: #FFFFFF;">
                        <asp:Button ID="Button130" runat="server" Text="Slot 27" Width="50%" CssClass="auto-style2" OnClick="Button130_Click" />
                    </td>
                    <td style="text-align: center; width: 20%; border-right-style: solid; border-right-width: thin; border-right-color: #FFFFFF;">
                        <asp:Button ID="Button131" runat="server" Text="Slot 28" Width="50%" CssClass="auto-style2" OnClick="Button131_Click" />
                    </td>
                    <td style="text-align: center; width: 20%; border-right-style: solid; border-right-width: thin; border-right-color: #FFFFFF;">
                        <asp:Button ID="Button132" runat="server" Text="Slot 29" Width="50%" CssClass="auto-style2" OnClick="Button132_Click" />
                    </td>
                    <td style="text-align: center">
                        <asp:Button ID="Button133" runat="server" Text="Slot 30" Width="50%" CssClass="auto-style2" OnClick="Button133_Click" />
                    </td>
                </tr>
                 <tr>
                  <td style="background-position: center; text-align: center; background-image: url('images/Grass.png');" class="auto-style2" colspan="5">&nbsp;&nbsp;</td>
            </tr>
             </table>
            </asp:Panel>
   
            
        <br />
&nbsp;<br />
        <table class="auto-style3">
            <tr>
                <td align="center">
             <asp:Button ID="Button285" runat="server" style="font-family: gadugi; font-size: x-large" Text="Book" OnClick="Button285_Click" BorderColor="#009933" Height="45px" Visible="False" Width="20%" />
                    <br />
                    <br />
                    <br />
                    <br />
                </td>
            </tr>
        </table>
        <table class="auto-style1">
    <tr>
    <td colspan="2" style="background-color: #262523; color: #FFFFFF; font-family:Gadugi;" align="right">
        <asp:Label ID="Label5" runat="server" CssClass="auto-style1" Text="Project Name "></asp:Label>
        <asp:Label ID="Label6" runat="server" CssClass="auto-style1" Text="|| Your Name&nbsp;&nbsp;&nbsp;"></asp:Label>
        &nbsp;&nbsp; 
    </td>
    </tr>
    </table>
        </div>
        </center>
    </form>
    </body>
</html>
