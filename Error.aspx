<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Error.aspx.cs" Inherits="Error" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="Form1" runat="server" method="post">
    <table id="Table1" border="0" cellpadding="0" cellspacing="0" 
        style="Z-INDEX: 101; LEFT: 8px; POSITION: absolute; TOP: 8px" width="432">
        <tr>
            <td>
                <font face="宋体">
                <asp:Image ID="Image1" runat="server" ImageUrl="~/image/err_1.gif" />
                </font>
            </td>
        </tr>
        <tr>
            <td bgcolor="#eff0f0">
                <font face="宋体">
                <asp:Label ID="Label1" runat="server" Font-Size="Medium" ForeColor="Red" 
                    Width="176px">您还没有登录,请登录</asp:Label>
                </font>
            </td>
        </tr>
        <tr>
            <td bgcolor="#eff0f0">
                &nbsp;</td>
        </tr>
    </table>
    </form>
</body>
</html>
