<%@ Control Language="C#" AutoEventWireup="true" CodeFile="nav.ascx.cs" Inherits="nav" %>
<style type="text/css">

    .style1
    {
        width: 100%;
    }
</style>

<table class="style1">
    <tr>
        <td>
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Default.aspx">首页</asp:HyperLink>
        </td>
        <td>
            |</td>
        <td>
            <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/zhuce.aspx">用户注册</asp:HyperLink>
        </td>
        <td>
            |</td>
        <td>
            <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/shopcar.aspx">购物车</asp:HyperLink>
        </td>
        <td>
            |</td>
        <td>
            <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/order.aspx">结算管理</asp:HyperLink>
        </td>
        <td>
            |</td>
        <td>
            <asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="~/order_search.aspx">订单查询</asp:HyperLink>
        </td>
    </tr>
</table>

