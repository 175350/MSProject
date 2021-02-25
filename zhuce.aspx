<%@ Page Language="C#" AutoEventWireup="true" CodeFile="zhuce.aspx.cs" Inherits="zhuce" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 95%;
            height: 41px;
        }
        .style3
        {
            background-color: #FF9933;
            text-align: right;
        }
        .style4
        {
            background-color: #FF9933;
            text-align: center;
            width: 469px;
        }
        .style5
        {
            background-color: #FF9933;
            width: 159px;
            height: 24px;
            text-align: right;
        }
        .style6
        {
            background-color: #FF9933;
            text-align: left;
            height: 24px;
            width: 568px;
        }
        .style7
        {
            background-color: #FF9933;
            text-align: left;
            width: 568px;
        }
        .style8
        {
            background-color: #FF9933;
            text-align: right;
            width: 159px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <table class="style1">
        <tr>
            <td style="text-align: center; font-family: 方正舒体; font-size: xx-large; color: #00FF00; background-color: #CCFFFF">
                用户注册</td>
        </tr>
    </table>
    <table class="style1">
        <tr>
            <td class="style8">
                <asp:Label ID="Label1" runat="server" Text="用户名："></asp:Label>
            </td>
            <td class="style7">
                <asp:TextBox ID="txt_user_name" runat="server"></asp:TextBox>
                *<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ErrorMessage="RequiredFieldValidator" style="color: #FF0000" 
                    ControlToValidate="txt_user_name" ForeColor="#FF3300">此项必填！</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style8">
                <asp:Label ID="Label2" runat="server" Text="密 码："></asp:Label>
            </td>
            <td class="style7">
                <asp:TextBox ID="txt_pwd" runat="server" TextMode="Password"></asp:TextBox>
                *<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ErrorMessage="RequiredFieldValidator" style="color: #FF0000" 
                    ControlToValidate="txt_pwd" ForeColor="#FF3300">此项必填！</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style8">
                <asp:Label ID="Label3" runat="server" Text="确认密码："></asp:Label>
            </td>
            <td class="style7">
                <asp:TextBox ID="txt_repwd" runat="server" TextMode="Password"></asp:TextBox>
                *<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ErrorMessage="RequiredFieldValidator" style="color: #FF0000" 
                    ControlToValidate="txt_repwd" ForeColor="#FF3300">此项必填！</asp:RequiredFieldValidator>
                <asp:CompareValidator ID="CompareValidator1" runat="server" 
                    ErrorMessage="CompareValidator" ControlToCompare="txt_pwd" 
                    ControlToValidate="txt_repwd">两次输入的密码不一致！</asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td class="style8">
                <asp:Label ID="Label8" runat="server" Text="真实姓名："></asp:Label>
            </td>
            <td class="style7">
                <asp:TextBox ID="txt_relname" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style8">
                <asp:Label ID="Label9" runat="server" Text="性  别："></asp:Label>
            </td>
            <td class="style7">
                <asp:DropDownList ID="DDL_sex" runat="server">
                    <asp:ListItem>男</asp:ListItem>
                    <asp:ListItem>女</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="style8">
                <asp:Label ID="Label7" runat="server" Text="出生日期："></asp:Label>
            </td>
            <td class="style7">
                <asp:DropDownList ID="DDL_Year" runat="server">
                </asp:DropDownList>
                年<asp:DropDownList ID="DDl_Month" runat="server">
                </asp:DropDownList>
                月<asp:DropDownList ID="DDL_Day" runat="server">
                </asp:DropDownList>
                日</td>
        </tr>
        <tr>
            <td class="style8">
                <asp:Label ID="Label4" runat="server" Text="身份证号："></asp:Label>
            </td>
            <td class="style7">
                <asp:TextBox ID="txt_idcard" runat="server"></asp:TextBox>
                *<asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ErrorMessage="RequiredFieldValidator" style="color: #FF0000" 
                    ControlToValidate="txt_idcard" ForeColor="#FF3300">此项必填！</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                    ErrorMessage="RegularExpressionValidator" ControlToValidate="txt_idcard" 
                    ValidationExpression="\d{17}[\d|X]|\d{15}">身份证号码格式不对！</asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;&nbsp;
                <asp:Label ID="Label5" runat="server" Text="手机号码："></asp:Label>
            </td>
            <td class="style6">
                <asp:TextBox ID="txt_mobile" runat="server"></asp:TextBox>
                *<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ErrorMessage="RequiredFieldValidator" style="color: #FF0000" 
                    ControlToValidate="txt_mobile" ForeColor="#FF3300">此项必填！</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style8">
                <asp:Label ID="Label6" runat="server" Text="联系地址："></asp:Label>
            </td>
            <td class="style7">
                <asp:TextBox ID="txt_address" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style3" colspan="2">
                &nbsp;</td>
        </tr>
        </table>
    <table class="style1">
        <tr>
            <td class="style4">
                <asp:Button ID="Button1" runat="server" BackColor="White" ForeColor="#666666" 
                    style="font-family: 黑体; color: #FF3300" Text="注册" 
                    onclick="Button1_Click" />
            </td>
            <td class="style4">
                <asp:Button ID="Button2" runat="server" BackColor="White" ForeColor="#666666" 
                    Text="重填" onclick="Button2_Click" />
            </td>
        </tr>
    </table>
    </form>
</body>
</html>
