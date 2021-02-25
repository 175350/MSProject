<%@ Page Language="C#" AutoEventWireup="true" CodeFile="shopcar.aspx.cs" Inherits="shopcar" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div style="color: #CC66FF; font-weight: 700; font-size: xx-large; font-family: 方正舒体; text-align: center; background-color: #33CCFF; width: 1045px;">
    
        购物车</div>
    <asp:DataList ID="DataList1" runat="server" Height="218px" Width="1047px" 
        CellPadding="4" ForeColor="#333333" DataKeyField="服装编号" 
        ondeletecommand="DataList1_DeleteCommand" 
        onupdatecommand="DataList1_UpdateCommand">
        <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <HeaderTemplate>
            <table class="style1" border="1">
                <tr>
                    <td>
                        服装编号</td>
                    <td>
                        服装名称</td>
                    <td>
                        价格</td>
                    <td>
                        数量</td>
                    <td>
                        修改数量</td>
                    <td>
                        删除</td>
                </tr>
        </HeaderTemplate>
        <ItemStyle BackColor="#E3EAEB" />
        <ItemTemplate>
                <tr>
                    <td>
                        <%# DataBinder.Eval(Container.DataItem ,"服装编号") %></td>
                    <td>
                        <%# DataBinder.Eval(Container.DataItem ,"服装名") %></td>
                    <td>
                        <%# DataBinder.Eval(Container.DataItem ,"价格") %></td>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server" Text ='<%# DataBinder.Eval(Container.DataItem ,"数量") %>' Height="23px" Width="60px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:Button ID="Button1" runat="server" Text="修改数量" CommandName ="Update"/>
                    </td>
                    <td>
                        <asp:Button ID="Button2" runat="server" Text="删除" CommandName= "Delete"/>
                    </td>
                </tr>
        </ItemTemplate>
        <AlternatingItemStyle BackColor="White" />
        <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <FooterTemplate></table></FooterTemplate> 
        <SelectedItemStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
    </asp:DataList>
    <center style="width: 1159px; margin-left: 0px">
    总金额： 
    <asp:TextBox ID="total_money_txt" runat="server" Width="82px"></asp:TextBox>
    &nbsp;
    <asp:Button ID="shoppingbtn" runat="server" OnClick="shoppingbtn_Click" 
        Text="继续购物" />
    &nbsp;
    <asp:Button ID="delallbtn" runat="server" OnClick="delallbtn_Click" 
        Text="清空购物车" />
    &nbsp;
    <asp:Button ID="orderbtn" runat="server" OnClick="orderbtn_Click" Text="结算中心" />
    </center>
    </form>
</body>
</html>
