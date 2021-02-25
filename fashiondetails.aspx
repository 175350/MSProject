<%@ Page Language="C#" AutoEventWireup="true" CodeFile="fashiondetails.aspx.cs" Inherits="fashiondetails" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 62%;
            height: 888px;
            margin-right: 290px;
        }
        .style2
        {
            width: 472px;
            text-align: left;
        }
        .style3
        {
            width: 472px;
            height: 24px;
        }
        .style4
        {
            font-size: xx-large;
            font-family: 方正舒体;
            text-align: center;
            color: #66FF99;
        }
        .style5
        {
            width: 472px;
            text-align: left;
            height: 71px;
            background-color: #FF9966;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="style1">
            <tr>
                <td class="style5">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class="style4">服装详细资料</span></td>
            </tr>
            <tr>
                <td class="style3">
                </td>
            </tr>
            <tr>
                <td class="style2">
    <asp:Repeater ID="Repeater1" runat="server">
    <ItemTemplate>
    <table>
    <tr><td colspan=3><%# DataBinder.Eval(Container.DataItem, "服装名")%></td></tr>
    <tr><td rowspan=5><img src="<%# DataBinder.Eval (Container.DataItem ,"图片") %>"width=80 height=110 /></td></tr>
    <tr><td>价    格：<%#Eval("价格") %></td></tr>
    <tr><td>服装大小：<%#Eval("服装大小") %></td></tr>
    <tr><td>颜    色：<%#Eval("服装颜色") %></td></tr>
    </table>
    </ItemTemplate>
    </asp:Repeater>
                    <br />
                    <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/image/buy.gif" 
                        onclick="ImageButton1_Click" />
                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
