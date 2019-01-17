<%@ Page Title="" Language="C#" MasterPageFile="~/Twitter.Master" AutoEventWireup="true" CodeBehind="User_Home.aspx.cs" Inherits="Joint_Segmentation.User_Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        *
{ margin: 0;
  padding: 0;}

.sidebar
{ float: left;
  width: 129px;
  padding-left: 10px;
  margin-bottom: 10px;
}

.sidebar_item
{ font: normal 100% Arial, Helvetica, sans-serif;
  width: 117px;
    height: 135px;
}

        .style2
        {
            color: #1A6FFD;
        }
        .style5
    {
        width: 194px;
    }
    .style6
    {
        height: 24px;
    }
        .style7
        {
            color: #1A6FFD;
            width: 363px;
        }
        .style8
        {
            width: 363px;
        }
        .style9
        {
            width: 153px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server" BackColor="White" Height="706px" 
    BorderColor="Black" BorderStyle="Groove" Width="650px">
        <table align="left" class="style1">
            <tr>
                <td class="style6" colspan="2">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:LinkButton ID="LinkButton2" runat="server" Font-Bold="True" 
                        ForeColor="Red" onclick="LinkButton2_Click">Logout</asp:LinkButton>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </td>
            </tr>
            <tr>
                <td class="style9">
                    &nbsp;
                    <%--<div class="sidebar">--%>
                        <div class="sidebar_item">
                            <br />
                            <asp:Image ID="user_image" runat="server" Height="76px" 
                        Width="75px" />
                            <span class="style2"><strong><em>
                            <br />
                            </em>Hi</strong></span>
                            <asp:Label ID="userlogin_lbl" runat="server" 
                        Font-Bold="True" Font-Names="Lucida Fax" Font-Size="Small" ForeColor="Red"></asp:Label>
                        <%--</div>--%>
                    </div>
                </td>
                <td class="style7">
                    <asp:ScriptManager ID="ScriptManager1" runat="server">
                    </asp:ScriptManager>
                    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                        <ContentTemplate>
                            <asp:Image ID="username_image" runat="server" Height="53px" Width="53px" />
                            <asp:DropDownList ID="username_DropDownList" runat="server" AutoPostBack="True" 
                                Height="29px" 
                                onselectedindexchanged="username_DropDownList_SelectedIndexChanged" 
                                Width="128px">
                            </asp:DropDownList>
                            <br />
                        </ContentTemplate>
                    </asp:UpdatePanel>
                    <asp:TextBox ID="msg_tb" runat="server" Height="61px" TextMode="MultiLine" 
                        Width="187px"></asp:TextBox>
                    <asp:Button ID="tweet_btn1" runat="server" onclick="tweet_btn_Click" Text="Post" />
                    <asp:Label ID="label11" runat="server"></asp:Label>
                    &nbsp;&nbsp;&nbsp;<asp:ImageButton ID="ImageButton1" runat="server" Height="31px" 
                        ImageUrl="~/images/refresh.png" onclick="ImageButton1_Click" Width="36px" />
                    <br />
                    &nbsp;<asp:LinkButton ID="LinkButton3" runat="server" Font-Bold="True" 
                        ForeColor="Red" onclick="LinkButton1_Click">Graph Analysis</asp:LinkButton>
                    &nbsp;&nbsp;&nbsp;
                </td>
            </tr>
            <tr>
                <td class="style9">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                <td class="style8">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Panel ID="Panel4" runat="server" 
                BorderStyle="None" Height="349px" ScrollBars="Auto" Width="439px">
                        <asp:Label ID="Label14" runat="server" 
                    ForeColor="#6600FF" Text="Friends Tweets" Font-Size="Small"></asp:Label>
                        <br />
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                            CellPadding="3" ForeColor="#333333" GridLines="None" Height="94px" 
                            Width="344px">
                            <AlternatingRowStyle BackColor="White" />
                            <Columns>
                                <asp:TemplateField HeaderText="Profile Pic">
                                    <ItemTemplate>
                                        <asp:Image ID="Image6" runat="server" Height="50px" Width="50px" 
                                            ImageUrl='<%# Eval("user_photo") %>' />
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:BoundField DataField="sender_id">
                                <FooterStyle HorizontalAlign="Left" VerticalAlign="Bottom" />
                                <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" Font-Bold="True" />
                                </asp:BoundField>
                                <asp:BoundField DataField="msg" HeaderText="Tweets" >
                                <ItemStyle Font-Size="Small" HorizontalAlign="Right" />
                                </asp:BoundField>
                            </Columns>
                            <EditRowStyle BackColor="#2461BF" />
                            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                            <RowStyle BackColor="#EFF3FB" />
                            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                            <SortedAscendingCellStyle BackColor="#F5F7FB" />
                            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                            <SortedDescendingCellStyle BackColor="#E9EBEF" />
                            <SortedDescendingHeaderStyle BackColor="#4870BE" />
                        </asp:GridView>
                        <br />
                    </asp:Panel>
                    &nbsp;&nbsp;
                </td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>
