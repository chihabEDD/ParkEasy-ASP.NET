<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="AddStud.aspx.cs" Inherits="AddStud" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <center>
     <table width="100%">
         <tr>
         <td align="center" style="width: 80%; background-color: #CCCCCC;" colspan="4">
                    <asp:Label ID="Label8" runat="server" style="font-family: gadugi; font-size: xx-large" Text="Register Student"></asp:Label>
                </td>
             </tr>
        <tr>
            <td colspan="4">&nbsp;</td>
        </tr>
             </table>
        <table width="90%">
        <tr>
            <td style="text-align: right; width: 15%;">
                <asp:Label ID="Label1" runat="server" style="font-family: gadugi; font-size: large" Text="Student ID :"></asp:Label>
            </td>
            <td style="text-align: center; width: 25%;">
                <asp:TextBox ID="TextBox1" runat="server" Height="35px" style="font-size: large; font-family: gadugi" Width="100%"></asp:TextBox>
            </td>
            <td style="text-align: right; width: 25%;">
                <asp:Label ID="Label2" runat="server" style="font-family: gadugi; font-size: large" Text="Student Name :"></asp:Label>
            </td>
            <td style="text-align: center; width: 25%;">
                <asp:TextBox ID="TextBox2" Required="" runat="server" Height="35px" style="font-size: large; font-family: gadugi" Width="100%"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="text-align: right">&nbsp;</td>
            <td style="text-align: center">&nbsp;</td>
            <td style="text-align: right">&nbsp;</td>
            <td style="text-align: center">&nbsp;</td>
        </tr>
        <tr>
            <td style="text-align: right; width: 15%;">
                <asp:Label ID="Label3" runat="server" style="font-family: gadugi; font-size: large" Text="Mobile No. :"></asp:Label>
            </td>
            <td style="text-align: center">
                <asp:TextBox ID="TextBox3" Required="" runat="server" Height="35px" style="font-size: large; font-family: gadugi" Width="100%"></asp:TextBox>
            </td>
            <td style="text-align: right; width: 25%;">
                <asp:Label ID="Label4" runat="server" style="font-family: gadugi; font-size: large" Text="Email :"></asp:Label>
            </td>
            <td style="text-align: center">
                <asp:TextBox ID="TextBox4" Required="" runat="server" Height="35px" style="font-size: large; font-family: gadugi" Width="100%"></asp:TextBox>
            </td>
        </tr>
         <tr>
            <td style="text-align: right">&nbsp;</td>
            <td style="text-align: center">
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox3" CssClass="auto-style4" ErrorMessage="Invalid Contact No." style="font-family: gadugi; color: #990033" ValidationExpression="^[7-9]\d{9}$"></asp:RegularExpressionValidator>
             </td>
            <td style="text-align: right">&nbsp;</td>
            <td style="text-align: center">
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox4" CssClass="auto-style4" ErrorMessage="Invalid Email Id" style="font-family: gadugi; color: #990033;" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
             </td>
        </tr>
        <tr>
            <td style="text-align: right; width: 15%;">
                <asp:Label ID="Label5" runat="server" style="font-family: gadugi; font-size: large" Text="Class :"></asp:Label>
            </td>
            <td style="text-align: center">
                <asp:TextBox ID="TextBox5" Required="" runat="server" Height="35px" style="font-size: large; font-family: gadugi" Width="100%"></asp:TextBox>
            </td>
            <td style="text-align: right; width: 25%;">
                <asp:Label ID="Label6" runat="server" style="font-family: gadugi; font-size: large" Text="DOB :"></asp:Label>
            </td>
            <td style="text-align: center">
                <asp:TextBox ID="TextBox6" Required="" Type="Date" runat="server" Height="35px" style="font-size: large; font-family: gadugi" Width="100%"></asp:TextBox>
            </td>
        </tr>
         <tr>
            <td style="text-align: right">&nbsp;</td>
            <td style="text-align: center">&nbsp;</td>
            <td style="text-align: right">&nbsp;</td>
            <td style="text-align: center">&nbsp;</td>
        </tr>
        <tr>
            <td style="text-align: right; " colspan="2">
                <asp:Label ID="Label7" runat="server" style="font-family: gadugi; font-size: large" Text="Gender :"></asp:Label>
            </td>
            <td style="text-align: right; " colspan="2">
                <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal" style="font-family: gadugi; font-size: large; font-weight: 700" Width="50%">
                    <asp:ListItem>Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                </asp:RadioButtonList>
            </td>
        </tr>
        <tr>
            <td style="text-align: right; " colspan="2">
                &nbsp;</td>
            <td colspan="2" align="left">
                <asp:Label ID="LabelErr" runat="server" style="color: #990033; font-family: gadugi" Text="Select any one option" Visible="False"></asp:Label>
            </td>
        </tr>
    </table>
        <br />
        <asp:Button ID="Button1" runat="server" Height="35px" OnClick="Button1_Click" style="font-family: gadugi; font-size: large" Text="Submit" Width="20%" />
        <br />
&nbsp;&nbsp;<br />
        </center>
</asp:Content>

