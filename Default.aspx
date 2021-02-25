<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<%@ Register src="nav.ascx" tagname="nav" tagprefix="uc1" %>
<%@ Register src="login.ascx" tagname="login" tagprefix="uc2" %>

<%@ Register src="footer.ascx" tagname="footer" tagprefix="uc3" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style8
        {
            width: 100%;
            margin-bottom: 0px;
        }
        .style11
        {
            height: 33px;
        }
        .style13
        {
            width: 44px;
        }
        .style15
        {
            width: 394px;
        }
        .style17
        {
            height: 141px;
            width: 562px;
        }
        .style20
        {
            width: 4px;
        }
        .style21
        {
            width: 562px;
            height: 24px;
        }
        .style22
        {
            width: 562px;
        }
        .style23
        {
            width: 100%;
        }
        .style24
        {
            color: #CC33FF;
        }
        .style25
        {
            height: 37px;
            text-align: center;
        }
        .style27
        {
            width: 1374px;
        }
        .style28
        {
            height: 20px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="style1">
            <tr>
                <td class="style13">
                    <asp:Image ID="Image1" runat="server" Height="179px" ImageUrl="~/image/11.jpg" 
                        Width="362px" />
                </td>
                <td>
                    <asp:Image ID="Image2" runat="server" Height="182px" ImageUrl="~/image/12.jpg" 
                        Width="1079px" />
                </td>
            </tr>
            <tr>
                <td bgcolor="#CCCCCC"  colspan="2">
                </td>
            </tr>
            <tr>
                <td  colspan="2" class="style11">
                    <uc1:nav ID="nav1" runat="server" />
                </td>
            </tr>
            <tr>
                <td bgcolor="#CCCCCC"  colspan="2">
                </td>
            </tr>
        </table>
        <table class="style8">
            <tr>
                <td class="style15">
                    <table class="style8">
                        <tr>
                            <td class="style22">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style17">
                                <uc2:login ID="login1" runat="server" />
                            </td>
                        </tr>
                        <tr>
                            <td class="style21">
                            </td>
                        </tr>
                        <tr>
                            <td class="style22">
                                <table class="style23">
                                    <tr>
                                        <td class="style3">
&nbsp;<span class="style24">服装查找：</span></td>
                                    </tr>
                                    <tr>
                                        <td class="style3">
&nbsp;
                                            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="style25">
&nbsp;<asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/image/search.gif" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td>
                                            &nbsp;</td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td class="style22">
                                &nbsp;</td>
                        </tr>
                    </table>
                </td>
                <td class="style20">
                    &nbsp;</td>
                <td class="style27">
                    <iframe id="I1" height="500" width="100%"name="I1" 
                                    src="fashionshow.aspx">
                                </iframe>
                </td>
            </tr>
            <tr>
                <td bgcolor="#CCCCCC" colspan="3">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style28" colspan="3">
                    <uc3:footer ID="footer1" runat="server" />
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
