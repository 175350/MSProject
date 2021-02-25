<%@ Page Language="C#" AutoEventWireup="true" CodeFile="order_search.aspx.cs" Inherits="order_seach" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="text-align: left">
    
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label1" runat="server" 
            style="color: #99CCFF; font-family: 华文彩云; font-size: x-large" Text="订单查询"></asp:Label>
        <br />
        <asp:Label ID="Label2" runat="server" 
            
            
            style="Z-INDEX: 101; LEFT: 18px; POSITION: absolute; TOP: 52px; width: 124px; height: 19px; ">请输入订单号：</asp:Label>
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
&nbsp;
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" 
            style="Z-INDEX: 103; LEFT: 205px; POSITION: absolute; TOP: 71px" Text="查询" 
            Width="45px" />
        <br />
        <br />
        <asp:Panel ID="Panel1" runat="server" Height="27px" style="margin-left: 35px" 
            Width="199px">
            &nbsp;<asp:Label ID="Label3" runat="server">总金额：</asp:Label>
            <asp:TextBox ID="TextBox2" runat="server" Width="79px"></asp:TextBox>
            元</asp:Panel>
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" 
            CellPadding="3">
            <Columns>
                <asp:BoundField DataField="订单编号" HeaderText="订单编号" />
                <asp:BoundField DataField="会员名" HeaderText="会员名" />
                <asp:BoundField DataField="服装名" HeaderText="服装名" />
                <asp:BoundField DataField="价格" HeaderText="价格" />
                <asp:BoundField DataField="数量" HeaderText="数量" />
                <asp:BoundField DataField="发货方式" HeaderText="发货方式" />
                <asp:BoundField DataField="付款方式" HeaderText="付款方式" />
                <asp:BoundField DataField="是否发货" HeaderText="是否发货" />
                <asp:BoundField DataField="备注" HeaderText="备注" />
            </Columns>
            <FooterStyle BackColor="White" ForeColor="#000066" />
            <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
            <RowStyle ForeColor="#000066" />
            <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#007DBB" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#00547E" />
        </asp:GridView>
    
    </div>
    </form>
</body>
</html>
