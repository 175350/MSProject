<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Admin_order_deal.aspx.cs" Inherits="Admin_order_deal" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            height: 53px;
            text-align: center;
            color: #CC33FF;
            font-family: 华文彩云;
            font-size: x-large;
            font-weight: 700;
            background-color: #99FFCC;
        }
        .style3
        {
            height: 36px;
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="style1">
            <tr>
                <td class="style2">
                    订单处理</td>
            </tr>
            <tr>
                <td class="style3">
                    请输入要查询的订单编号：<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    <asp:Button ID="Button1" runat="server" Text="订单查询" onclick="Button1_Click" />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:DataList ID="DataList1" runat="server" Height="199px" Width="770px">
                        <HeaderTemplate>
                            <table class="style1" style="border:black 1px solid">
                                <tr>
                                    <td>
                                        订单编号</td>
                                    <td>
                                        订单日期</td>
                                    <td>
                                        购物会员</td>
                                    <td>
                                        发货方式</td>
                                    <td>
                                        付款方式</td>
                                    <td>
                                        总金额</td>
                                    <td>
                                        是否发货</td>
                                    <td>
                                        备注</td>
                                    <td>
                                        发货处理</td>
                                </tr>
                        </HeaderTemplate>
                        <ItemTemplate>
                        <tr>
                            <td><%# DataBinder.Eval(Container.DataItem,"订单编号") %></td>
                            <td><%# DataBinder.Eval(Container.DataItem,"订单日期") %></td>
                            <td><%# DataBinder.Eval(Container.DataItem,"会员名") %></td>
                            <td><%# DataBinder.Eval(Container.DataItem,"发货方式") %></td>
                            <td><%# DataBinder.Eval(Container.DataItem,"付款方式") %></td>
                            <td><%# DataBinder.Eval(Container.DataItem,"总金额") %></td>
                            <td><%# DataBinder.Eval(Container.DataItem,"是否发货") %></td>
                            <td><%# DataBinder.Eval(Container.DataItem,"备注") %></td>
                            <td><asp:CheckBox ID="CheckBox1" runat="server" Text="发货" ToolTip ='<%# DataBinder.Eval(Container.DataItem,"订单编号") %>' /></td>
                        </tr>
                        </ItemTemplate>
                        <FooterTemplate></table></FooterTemplate>
                    </asp:DataList>
                </td>
            </tr>
            <tr>
                <td style="text-align: center">
                    <asp:Button ID="Button2" runat="server" style="font-weight: 700" Text="发货处理" 
                        onclick="Button2_Click" />
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
