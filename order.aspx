<%@ Page Language="C#" AutoEventWireup="true" CodeFile="order.aspx.cs" Inherits="order" %>

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
            height: 21px;
        }
        .style3
        {
            height: 25px;
        }
        .style4
        {
            height: 20px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div style="text-align: center; color: #FF99FF; font-size: x-large; font-family: 方正舒体; background-color: #CCFFCC">
    
        结算中心</div>
    <table class="style1">
        <tr>
            <td class="style2">
                <center><asp:Label ID="Label4" runat="server" Font-Size="Small" ForeColor="#FF3300" 
                    Text="客户你好，你的结算订单如下"></asp:Label></center>
            </td>
        </tr>
        <tr>
            <td>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    CellPadding="4" ForeColor="#333333" GridLines="None" Height="292px" 
                    Width="749px">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="服装编号" HeaderText="服装编号" />
                        <asp:BoundField DataField="服装名" HeaderText="服装名称" />
                        <asp:BoundField DataField="价格" HeaderText="价格" />
                        <asp:BoundField DataField="数量" HeaderText="数量" />
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
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                金额总计：<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                元</td>
        </tr>
        <tr>
            <td>
                选择发货方式：<asp:DropDownList ID="DropDownList1" runat="server">
                    <asp:ListItem>平邮</asp:ListItem>
                    <asp:ListItem>快递</asp:ListItem>
                    <asp:ListItem>送货上门</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td>
                选择付款方式：<asp:DropDownList ID="DropDownList2" runat="server">
                    <asp:ListItem>汇款</asp:ListItem>
                    <asp:ListItem>转账</asp:ListItem>
                    <asp:ListItem>现金</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td>
                其他要求：</td>
        </tr>
        <tr>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" Height="91px" TextMode="MultiLine" 
                    Width="359px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="生成订单" />
            </td>
        </tr>
        <tr>
            <td class="style4">
                <asp:Label ID="Label5" runat="server" style="font-size: small; color: #FF6699" 
                    Text="请记住订单号，以便以后查询用。订单号为："></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
    </table>
    </form>
</body>
</html>
