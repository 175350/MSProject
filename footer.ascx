<%@ Control Language="C#" AutoEventWireup="true" CodeFile="footer.ascx.cs" Inherits="footer" %>
<style type="text/css">
    .style1
    {
        width: 100%;
        height:20%;
    }
</style>

<table class="style1" align="center">
    <tr>
        <td >
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Default.aspx">首页</asp:HyperLink>
        </td>
        <td >
        </td>
        <td >
            <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/shopcar.aspx">我的购物车</asp:HyperLink>
        </td>
        <td >
        </td>
        <td >
            <asp:HyperLink ID="HyperLink3" runat="server">联系管理员</asp:HyperLink>
        </td>
        <td >
        </td>
        <td >
            <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/AdminLogin.aspx">后台管理</asp:HyperLink>
        </td>
    </tr>
    <tr>
        <td colspan="7" align="center">
            Copyright © 2016～2018 绵羊网上服装店版权所有</td>
    </tr>
    </table>

