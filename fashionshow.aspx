<%@ Page Language="C#" AutoEventWireup="true" CodeFile="fashionshow.aspx.cs" Inherits="fashionshow" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        #form1
        {
            text-align: center;
            font-weight: 700;
            font-size: x-large;
        }
        .style1
        {
            width: 57%;
            height: 137px;
        }
        .style2
        {
            height: 92px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <p style="height: 44px; background-color: #00FF99">
        服装信息展示</p>
    <asp:DataList ID="DataList1" runat="server" RepeatColumns="4"  
        style="margin-right: 0px" Width="762px">
        <ItemTemplate>
            <table class="style1">
                <tr>
                    <td class="style2" width="110" valign="top" height="112">
                        <a href='fashiondetails.aspx?fashionid=<%# DataBinder.Eval(Container.DataItem,"服装编号")%>' >
                        <img height="110"  src='<%# DataBinder.Eval(Container.DataItem,"图片") %>' width="80" /></a>
                    </td>
                </tr>
                <tr>
                    <td width="110" valign="top" height="50">									
						<a href ='fashiondetails.aspx?fashionid=<%# DataBinder.Eval(Container.DataItem,"服装编号")%>'>
							<%# DataBinder.Eval(Container.DataItem,"服装名") %></a>								
					</td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
    </form>
</body>
</html>
