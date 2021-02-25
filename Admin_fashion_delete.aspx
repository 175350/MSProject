<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Admin_fashion_delete.aspx.cs" Inherits="Admin_fashion_delete" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">

        .style3
        {
            height: 33px;
            width: 748px;
        }
        .style4
        {
            text-align: center;
            width: 748px;
            height: 36px;
        }
        .style1
        {
            width: 93%;
            height: 84px;
        }
        .style5
        {
            width: 100%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="style1" bgcolor="#CCFF66">
            <tr>
                <td class="style3" 
                    style="text-align: center; font-weight: 700; font-size: x-large; color: #CC99FF">
                    服装查询</td>
            </tr>
            <tr>
                <td class="style4">
                    请输入您要查询的服装：<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
&nbsp;<asp:ImageButton ID="ImageButton1" runat="server" Height="19px" ImageUrl="~/image/search.gif" 
                        onclick="ImageButton1_Click" Width="54px" />
                    <br />
                    <asp:DataList ID="DataList1" runat="server" CellPadding="4" ForeColor="#333333" 
                        Height="166px" Width="654px">
                        <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                        <HeaderTemplate>
                            <table class="style5">
                                <tr>
                                    <td>
                                        服装名</td>
                                    <td>
                                        服装编号</td>
                                    <td>
                                        服装删除</td>
                                </tr>
                            
                        </HeaderTemplate>
                        <ItemStyle BackColor="#E3EAEB" />
                        <ItemTemplate>
                        <tr>
                            <td><%# DataBinder.Eval(Container.DataItem,"服装名") %></td>
                            <td><%# DataBinder.Eval(Container.DataItem,"服装编号") %></td>
                            <td><asp:Button ID="Button1" runat="server" Text="删除" /></td></tr>
                        </ItemTemplate>
                        <AlternatingItemStyle BackColor="White" />
                        <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                        <FooterTemplate></table></FooterTemplate>
                        
                        <SelectedItemStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                        
                    </asp:DataList>
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
