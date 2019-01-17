<%@ Page Title="" Language="C#" MasterPageFile="~/Twitter.Master" AutoEventWireup="true" CodeBehind="Signup.aspx.cs" Inherits="Joint_Segmentation.Signup" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">


        *
{ margin: 0;
  padding: 0;}

        .style8
        {
            height: 31px;
            width: 32px;
        }
        .style16
        {
            width: 329px;
        }
        .style17
        {
            height: 50px;
            width: 284px;
        }
        .style18
        {
            height: 29px;
            width: 284px;
        }
        .style22
        {
            height: 25px;
            width: 284px;
        }

        .style23
        {
            height: 32px;
            width: 32px;
        }
        .style24
        {
            height: 29px;
            width: 32px;
        }
        .style25
        {
            width: 32px;
        }
        .style26
        {
            height: 32px;
            width: 329px;
        }
        .style27
        {
            height: 29px;
            width: 329px;
        }
        .style28
        {
            height: 50px;
            width: 329px;
        }
        .style29
        {
            height: 50px;
            width: 32px;
        }

    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server" BackColor="White" Height="422px" 
        Width="657px">
    <table align="left" class="style1">
        <tr>
            <td class="style17">
            </td>
            <td class="style28" 
            
                
                
                style="font-family: 'Malgun Gothic'; font-size: x-large; color: #0000FF; font-weight: bolder;">
                SignUp Here!!!!</td>
            <td class="style29" 
                
                style="font-family: 'Malgun Gothic'; font-size: x-large; color: #0000FF; font-weight: bolder;">
                </td>
        </tr>
        <tr>
            <td class="style18">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label2" 
                runat="server" Font-Bold="True" 
                Font-Names="Times New Roman" Font-Size="Large" Text="Name" ForeColor="#FF3300"></asp:Label>
            </td>
            <td class="style27">
                <asp:TextBox ID="name_tb" runat="server" 
                Font-Names="Lucida Fax" Font-Size="Medium"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="name_tb" ErrorMessage="*" 
                ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td class="style24">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style18">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label3" 
                runat="server" Font-Bold="True" 
                Font-Names="Times New Roman" Font-Size="Large" Text="User Name" 
                    ForeColor="#FF3300"></asp:Label>
            </td>
            <td class="style27">
                <asp:TextBox ID="username_tb" runat="server" 
                Font-Names="Lucida Fax" Font-Size="Medium"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="username_tb" ErrorMessage="*" 
                ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td class="style24">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style18">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label4" 
                runat="server" Font-Bold="True" 
                Font-Names="Times New Roman" Font-Size="Large" Text="Password" 
                    ForeColor="#FF3300"></asp:Label>
            </td>
            <td class="style27">
                <asp:TextBox ID="pwd_tb" runat="server" 
                Font-Names="Lucida Fax" Font-Size="Medium" Height="22px" TextMode="Password"></asp:TextBox>
            </td>
            <td class="style24">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style18">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:Label ID="Label8" 
                runat="server" Font-Bold="True" 
                Font-Names="Times New Roman" Font-Size="Large" Text="Repeat Password" 
                    ForeColor="#FF3300"></asp:Label>
                <%--&nbsp; &nbsp;&nbsp;--%>
            </td>
            <td class="style27">
                <asp:TextBox ID="repeat_pwd_tb" runat="server" 
                Font-Names="Lucida Fax" Font-Size="Medium"></asp:TextBox>
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="pwd_tb" 
                ControlToValidate="repeat_pwd_tb" ErrorMessage="Password does not match" 
                ForeColor="Red"></asp:CompareValidator>
            </td>
            <td class="style24">
            </td>
        </tr>
        <tr>
            <td class="style18">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="Label5" 
                runat="server" Font-Bold="True" 
                Font-Names="Times New Roman" Font-Size="Large" Text="E-Mail id" 
                    ForeColor="#FF3300"></asp:Label>
                </td>
            <td class="style27">
                <asp:TextBox ID="email_tb" runat="server" 
                Font-Names="Lucida Fax" Font-Size="Medium"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="email_tb" 
                ErrorMessage="E-Mail id is invalid" ForeColor="Red" 
                ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
            <td class="style24">
                </td>
        </tr>
        <tr>
            <td class="style18">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label6" 
                runat="server" Font-Bold="True" 
                Font-Names="Times New Roman" Font-Size="Large" Text="Phone" 
                    ForeColor="#FF3300"></asp:Label>
                </td>
            <td class="style27">
                <asp:TextBox ID="phno_tb" runat="server" 
                Font-Names="Lucida Fax" Font-Size="Medium" Height="20px"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="phno_tb" 
                ErrorMessage="Enter the Phone number" ForeColor="Red" 
                ValidationExpression="\d{10}"></asp:RegularExpressionValidator>
            </td>
            <td class="style24">
                </td>
        </tr>
        <tr>
            <td class="style18">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label7" 
                runat="server" Font-Bold="True" 
                Font-Names="Times New Roman" Font-Size="Large" Text="Address" 
                    ForeColor="#FF3300"></asp:Label>
                </td>
            <td class="style27">
                <asp:TextBox ID="address_tb" runat="server" Font-Names="Lucida Fax" 
                    Font-Size="Medium"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="address_tb" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td class="style24">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style18">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label9" runat="server" Font-Bold="True" 
                    Font-Names="Times New Roman" Font-Size="Large" ForeColor="#FF3300" Text="Photo"></asp:Label>
            </td>
            <td class="style27">
                <asp:FileUpload ID="photo_FileUpload1" runat="server" ForeColor="Black" />
            </td>
            <td class="style24">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style18">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
            <td class="style27">
                <asp:Button ID="create_button" runat="server" BackColor="#3366FF" 
                    Font-Bold="True" Font-Size="Medium" ForeColor="White" Height="29px" 
                    onclick="create_button_Click" Text="Create" Width="73px" />
            </td>
            <td class="style8">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style22">
                &nbsp;</td>
            <td class="style16">
                &nbsp;</td>
            <td class="style25">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style22">
                &nbsp;</td>
            <td class="style26">
                &nbsp;</td>
            <td class="style23">
                &nbsp;</td>
        </tr>
    </table>
</asp:Panel>
</asp:Content>
