<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AdminLogin.aspx.cs" Inherits="AdminLogin" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 43%;
            margin-left: 214px;
            margin-right: 0px;
            height: 244px;
        }
        .style2
        {
            width: 86px;
            text-align: right;
        }
        .style4
        {
            text-align: left;
        }
        .style3
        {
            text-align: center;
        }
        .style5
        {
            width: 40%;
            margin-left: 236px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table class="style1">
            <tr>
                <td colspan="2" 
                    
                    style="text-align: center; color: #00FF00; font-weight: 700; font-family: 方正舒体; font-size: xx-large; background-color: #FF6600" 
                    align="center">
                    管理员登陆</td>
            </tr>
            <tr>
                <td class="style2" align="center">
                    <asp:Label ID="Label1" runat="server" Text="用户名："></asp:Label>
                </td>
                <td class="style4" align="center">
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style2" align="center">
                    <asp:Label ID="Label2" runat="server" Text="密 码："></asp:Label>
                </td>
                <td class="style4" align="center">
                    <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style3" colspan="2" align="center">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style3" colspan="2" align="center">
&nbsp;<asp:Button ID="Button1" runat="server" BackColor="#CCFFFF" ForeColor="#0066FF" Text="登陆" 
                        Width="89px" onclick="Button1_Click" Height="36px" />
                </td>
            </tr>
        </table>
        </div>
     </form>
</body>
</html>
