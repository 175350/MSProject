<%@ Control Language="C#" AutoEventWireup="true" CodeFile="login.ascx.cs" Inherits="login" %>
<style type="text/css">
    .style1
    {
        width: 56%;
        margin-left: 1px;
        margin-right: 0px;
        height: 219px;
    }
    .style2
    {
        width: 86px;
        text-align: right;
    }
    .style4
    {
        text-align: left;
    }
    .style3
    {
        text-align: center;
    }
    .style5
    {
        width: 55%;
        margin-left: 3px;
        height: 26px;
    }
    .style6
    {
        width: 86px;
        text-align: right;
        height: 32px;
    }
    .style7
    {
        text-align: left;
        height: 32px;
    }
</style>

<table class="style1">
    <tr>
        <td colspan="2" 
            style="text-align: center; color: #00FF00; font-weight: 700; font-family: 方正舒体; font-size: xx-large; background-color: #FF6600">
            用户登陆</td>
    </tr>
    <tr>
        <td class="style6">
            <asp:Label ID="Label1" runat="server" Text="用户名："></asp:Label>
        </td>
        <td class="style7">
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="style2">
            <asp:Label ID="Label2" runat="server" Text="密 码："></asp:Label>
        </td>
        <td class="style4">
            <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="style2">
            <asp:Label ID="Label3" runat="server" Text="验证码："></asp:Label>
        </td>
        <td class="style4">
            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            <asp:ImageButton ID="ImageButton1" runat="server" />
        </td>
    </tr>
    <tr>
        <td class="style3" colspan="2">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style3" colspan="2">
&nbsp;<asp:Button ID="Button1" runat="server" BackColor="#CCFFFF" ForeColor="#0066FF" 
                Text="登陆" Width="87px" onclick="Button1_Click" />
        </td>
    </tr>
</table>
<table class="style5">
    <tr>
        <td style="text-align: right">
            <asp:HyperLink ID="HyperLink1" runat="server" ForeColor="#FF3300" 
                style="font-family: 黑体">用户注册</asp:HyperLink>
        </td>
    </tr>
</table>

