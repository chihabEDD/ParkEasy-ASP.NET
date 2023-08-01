<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ViewBooking.aspx.cs" Inherits="ViewBooking" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style2 {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style2">
        <tr>
         <td align="center" style="width: 80%; background-color: #CCCCCC;">
                    <asp:Label ID="Label8" runat="server" style="font-family: gadugi; font-size: xx-large" Text="Booking Details"></asp:Label>
                </td>
             </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td align="center">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" CellPadding="4" ForeColor="#333333" GridLines="None" style="font-family: gadugi; font-size: large" Width="100%">
        <AlternatingRowStyle BackColor="White" />
        <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
        <RowStyle BackColor="#FFFBD6" HorizontalAlign="Center" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
        <SortedAscendingCellStyle BackColor="#FDF5AC" />
        <SortedAscendingHeaderStyle BackColor="#4D0000" />
        <SortedDescendingCellStyle BackColor="#FCF6C0" />
        <SortedDescendingHeaderStyle BackColor="#820000" />
        <Columns>
                <asp:BoundField HeaderText="Section" DataField="Section"/>
                <asp:BoundField HeaderText="Slot" DataField="Slot"/>
                <asp:BoundField HeaderText="Date" DataField="Date" />
                <asp:BoundField HeaderText="Start Time" DataField="st" />
                <asp:BoundField HeaderText="End Time" DataField="et" />
                <asp:BoundField HeaderText="Total Hours" DataField="hrs" />
                </Columns>

    </asp:GridView>
                <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="false" CellPadding="4" ForeColor="#333333" GridLines="None" style="font-family: gadugi; font-size: large" Width="100%">
                    <AlternatingRowStyle BackColor="White" />
                    <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                    <RowStyle BackColor="#FFFBD6" HorizontalAlign="Center" ForeColor="#333333" />
                    <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                    <SortedAscendingCellStyle BackColor="#FDF5AC" />
                    <SortedAscendingHeaderStyle BackColor="#4D0000" />
                    <SortedDescendingCellStyle BackColor="#FCF6C0" />
                    <SortedDescendingHeaderStyle BackColor="#820000" />
                     <Columns>
                         <asp:BoundField HeaderText="Student Name" DataField="Sname"/>
                         <asp:BoundField HeaderText="Class" DataField="Sclass"/>
                <asp:BoundField HeaderText="Section" DataField="Section"/>
                <asp:BoundField HeaderText="Slot" DataField="Slot"/>
                <asp:BoundField HeaderText="Date" DataField="Date" />
                <asp:BoundField HeaderText="Start Time" DataField="st" />
                <asp:BoundField HeaderText="End Time" DataField="et" />
                <asp:BoundField HeaderText="Total Hours" DataField="hrs" />
                </Columns>
                </asp:GridView>
            </td>
        </tr>
    </table>
                <asp:Label ID="LabelSid" runat="server" Visible="False"></asp:Label>
    <br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
    <br />
    </asp:Content>

