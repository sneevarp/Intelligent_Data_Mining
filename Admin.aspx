<%@ Page Title="" Language="C#" MasterPageFile="~/Twitter.Master" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="Joint_Segmentation.Admin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .style2
    {
        width: 100%;
    }
    .style3
    {
        width: 457px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server" Height="303px">
    <table class="style2">
        <tr>
            <td class="style3">
                <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Georgia" 
                    Font-Size="Medium" ForeColor="White" Text="Welcome To Administrator"></asp:Label>
            </td>
            <td>
                <asp:LinkButton ID="LinkButton3" runat="server" Font-Bold="True" 
                    Font-Size="Medium" ForeColor="Red" onclick="LinkButton3_Click">Logout</asp:LinkButton>
            </td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                <asp:Image ID="Image2" runat="server" Height="122px" 
                    ImageUrl="~/images/use.png" Width="183px" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Image ID="Image3" runat="server" Height="120px" 
                    ImageUrl="~/images/rep.jpg" Width="184px" />
            </td>
            <td>
                <asp:Image ID="Image4" runat="server" Height="123px" 
                    ImageUrl="~/images/adm-twit.jpg" Width="150px" />
            </td>
        </tr>
        <tr>
            <td class="style3">
                <asp:LinkButton ID="LinkButton4" runat="server" Font-Size="Medium" 
                    ForeColor="#00CC00" onclick="LinkButton4_Click">User Details</asp:LinkButton>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:LinkButton ID="LinkButton5" runat="server" Font-Size="Medium" 
                    ForeColor="#00CC00" onclick="LinkButton5_Click">User Graph Analysis</asp:LinkButton>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Panel>
</asp:Content>
