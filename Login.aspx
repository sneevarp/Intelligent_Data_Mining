<%@ Page Title="" Language="C#" MasterPageFile="~/Twitter.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Joint_Segmentation.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">


*
{ margin: 0;
  padding: 0;}

    .style2
    {
        font-size: x-large;
        font-family: Georgia;
    }

</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server" Height="338px">
    <table align="center" class="style1">
        <tr>
            <td class="style5">
                &nbsp;&nbsp;&nbsp;
                <asp:Panel ID="Panel2" runat="server" Height="53px">
                    <strong><span class="style2">
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Login Here!!!</span></strong></asp:Panel>
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="username_tb" runat="server" 
                BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" 
                Font-Names="Times New Roman" Font-Size="Medium" ForeColor="Black" 
                    Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="pwd_tb" runat="server" 
                BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" Font-Bold="False" 
                Font-Names="Times New Roman" Font-Size="Medium" TextMode="Password" 
                Width="201px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="login_button" runat="server" 
                BackColor="#0099FF" BorderStyle="None" Font-Bold="True" Font-Size="Medium" 
                ForeColor="White" Height="33px" onclick="login_button_Click" Text="Log in" 
                Width="78px" />
            </td>
        </tr>
    </table>
</asp:Panel>
</asp:Content>
