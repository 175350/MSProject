<%@ Page Language="C#" AutoEventWireup="true" Debug="true" CodeFile="fashionsearch.aspx.cs" Inherits="fashionsearch" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 94%;
            height: 321px;
        }
        .style2
        {
            height: 24px;
            text-align: center;
            width: 748px;
        }
        .style3
        {
            height: 34px;
            width: 748px;
        }
        .style4
        {
            text-align: center;
            width: 748px;
            height: 36px;
        }
        .style5
        {
            width: 748px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div style="width: 774px">
    
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
                </td>
            </tr>
            <tr>
                <td align="center" class="style2">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                        BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" 
                        CellPadding="3" GridLines="Horizontal" Height="204px" Width="718px" 
                        onpageindexchanging="GridView1_PageIndexChanging" onsorting="GridView1_Sorting" 
                        style="margin-bottom: 0px; margin-right: 0px;">
                        <AlternatingRowStyle BackColor="#F7F7F7" />
                        <Columns>
                            <asp:BoundField HeaderText="服装名" DataField="服装名" />
                            <asp:BoundField DataField="价格" HeaderText="价格" SortExpression="价格" />
                            <asp:HyperLinkField DataNavigateUrlFields="服装编号" HeaderText="详细信息" Text="详细信息" 
                                DataNavigateUrlFormatString="fashiondetails.aspx?fashionid={0}" />
                        </Columns>
                        <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                        <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                        <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
                        <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
                        <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                        <SortedAscendingCellStyle BackColor="#F4F4FD" />
                        <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
                        <SortedDescendingCellStyle BackColor="#D8D8F0" />
                        <SortedDescendingHeaderStyle BackColor="#3E3277" />
                    </asp:GridView>
                </td>
            </tr>
            <tr>
                <td class="style5">
                    &nbsp;</td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
