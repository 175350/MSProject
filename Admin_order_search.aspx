<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Admin_order_search.aspx.cs" Inherits="Admin_order_search" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 100%;
            height: 377px;
        }
        .style2
        {
            height: 61px;
            font-size: xx-large;
            font-family: 华文彩云;
        }
        .style3
        {
            height: 36px;
        }
        .style4
        {
            width: 100%;
        }
        .style5
        {
            height: 25px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="style1">
            <tr>
                <td class="style2" 
                    style="text-align: center; color: #FF00FF; background-color: #CCFFCC">
                    订单查询</td>
            </tr>
            <tr>
                <td class="style3">
                    请输入要查询的订单编号：<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    <asp:Button ID="Button1" runat="server" Text="订单查询" onclick="Button1_Click" />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:DataList ID="DataList1" runat="server" Height="243px" Width="750px" 
                        BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" 
                        CellPadding="4" GridLines="Horizontal">
                        <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
                        <HeaderTemplate>
                            <table class="style4" style="border:black 1px solid">
                                <tr>
                                    <td style="border: 1px solid #00FF00">
                                        订单编号</td>
                                    <td style="border: 1px solid #00FF00">
                                        订单日期</td>
                                    <td style="border: 1px solid #00FF00">
                                        购物会员</td>
                                    <td style="border: 1px solid #00FF00">
                                        发货方式</td>
                                    <td style="border: 1px solid #00FF00">
                                        付款方式</td>
                                    <td style="border: 1px solid #00FF00">
                                        总金额</td>
                                    <td style="border: 1px solid #00FF00">
                                        是否发货</td>
                                    <td style="border: 1px solid #00FF00">
                                        备注</td>
                                </tr>
                        </HeaderTemplate>
                        <ItemStyle BackColor="White" ForeColor="#333333" />
                        <ItemTemplate>
                                <tr>
                                    <td>
                                       <%# DataBinder.Eval(Container.DataItem,"订单编号") %></td>
                                    <td>
                                        <%# DataBinder.Eval(Container.DataItem,"订单日期") %></td>
                                    <td>
                                        <%# DataBinder.Eval(Container.DataItem,"会员名") %></td>
                                    <td>
                                        <%# DataBinder.Eval(Container.DataItem,"发货方式") %></td>
                                    <td>
                                        <%# DataBinder.Eval(Container.DataItem,"付款方式") %></td>
                                    <td>
                                        <%# DataBinder.Eval(Container.DataItem,"总金额") %></td>
                                    <td>
                                        <%# DataBinder.Eval(Container.DataItem,"是否发货") %></td>
                                    <td>
                                        <%# DataBinder.Eval(Container.DataItem,"备注") %></td>
                                </tr>
                        </ItemTemplate>
                        <FooterStyle BackColor="White" ForeColor="#333333" />
                        <FooterTemplate></table></FooterTemplate>
                        <SelectedItemStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
                    </asp:DataList>
                </td>
            </tr>
            <tr>
                <td class="style5">
                    </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
