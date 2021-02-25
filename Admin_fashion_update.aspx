<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Admin_fashion_update.aspx.cs" Inherits="Admin_fashion_update" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">

        .style3
        {
            width: 361px;
            text-align: right;
        }
        .style4
        {
            height: 24px;
            text-align: center;
        }
        .style5
        {
            height: 134px;
            text-align: center;
            width: 592px;
        }
        .style6
        {
            height: 21px;
            width: 592px;
        }
        .style7
        {
            width: 592px;
        }
        .style8
        {
            height: 24px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table style="width: 592px; border-right: #ffcc99 thin ridge; border-top: #ffcc99 thin ridge; border-left: #ffcc99 thin ridge; border-bottom: #ffcc99 thin ridge; font-size:9pt">
            <tr>
                <td align="center" colspan="7" class="style6">
                    <asp:Label ID="Lab_title2" runat="server" SkinID="font_XXLarge" Text="服装信息一览" />
                </td>
            </tr>
            <tr>
                <td class="style5">
                    <asp:DataList ID="DataList1" runat="server" DataKeyField="服装编号" 
                        OnUpdateCommand="DataList1_UpdateCommand" Width="344px" BackColor="White" 
                        BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" 
                        CellSpacing="1">
                        <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
                        <HeaderTemplate>
                            <table border="1">
                                <tr>
                                    <th>
                                        服装编号</th>
                                    <th>
                                        服装名</th>
                                    <th>
                                        价格</th>
                                    <th>
                                        类型名</th>
                                    <th>
                                        修改</th>
                                </tr>
                        </HeaderTemplate>
                        <ItemStyle BackColor="#DEDFDE" ForeColor="Black" />
                        <ItemTemplate>
                            <tr>
                                <td>
            <%# DataBinder .Eval (Container.DataItem ,"服装编号") %>
                                </td>
                                <td>
            <%# DataBinder .Eval (Container.DataItem ,"服装名") %>
                                </td>
                                <td>
            <%# DataBinder .Eval (Container.DataItem ,"价格") %>
                                </td>
                                <td>
            <%# DataBinder.Eval(Container.DataItem, "服装类型")%>
                                </td>
                                <td>
                                    <asp:LinkButton ID="update_fashion" runat="server" CommandName="update" Text="修改" 
                                        ToolTip='<%# DataBinder .Eval (Container.DataItem ,"服装编号") %>' />
                                </td>
                            </tr>
                        </ItemTemplate>
                        <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
                        <FooterTemplate>
                            </table>
                        </FooterTemplate>
                        <SelectedItemStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
                    </asp:DataList>
                </td>
            </tr>
            <tr>
                <td align="center" colspan="7" class="style7">
                    <asp:LinkButton ID="FirstLB" runat="server" CommandName="first" 
                        OnCommand="LinkButton_Click">第一页</asp:LinkButton>
                    <asp:LinkButton ID="PreviousLB" runat="server" CommandName="prev" 
                        OnCommand="LinkButton_Click">上一页</asp:LinkButton>
                    <asp:LinkButton ID="NextLB" runat="server" CommandName="next" 
                        OnCommand="LinkButton_Click">下一页</asp:LinkButton>
                    <asp:LinkButton ID="EndLB" runat="server" CommandName="end" 
                        OnCommand="LinkButton_Click">最后一页</asp:LinkButton>
                    总<asp:Label ID="total" runat="server" ForeColor="Red"></asp:Label>
                    页 当前第<asp:Label ID="current" runat="server" ForeColor="Red"></asp:Label>
                    页 
                    <asp:LinkButton ID="JumpLB" runat="server" CommandName="jump" 
                        OnCommand="LinkButton_Click">跳到</asp:LinkButton>
                    第 
                    <asp:TextBox ID="TextBox1" runat="server" Width="60px"></asp:TextBox>
                    页 
                    <table border="1" cellpadding="0" cellspacing="0" 
                        style="width: 592px; border-right: #ffcc99 thin ridge; border-top: #ffcc99 thin ridge; border-left: #ffcc99 thin ridge; border-bottom: #ffcc99 thin ridge; font-size:9pt">
                        <tr>
                            <td align="center" colspan="2" style="height: 24px;">
                                <asp:Label ID="lab_title" runat="server" SkinID="font_XXLarge" Text="服装修改"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                <td class="style3">
                    请选择服装类型：</td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server">
                    </asp:DropDownList>
                </td>
                        </tr>
                        <tr>
                <td class="style3">
                    服装名：</td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                </td>
                        </tr>
                        <tr>
                <td class="style3">
                    价格：</td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                </td>
                        </tr>
                        <tr>
                <td class="style3">
                    服装大小：</td>
                <td>
                    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                </td>
                        </tr>
                        <tr>
                <td class="style3">
                    服装颜色：</td>
                <td>
                    <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                </td>
                        </tr>
                        <tr>
                            <td align="left" colspan="2" class="style8">
                                <asp:Label ID="Label12" runat="server" Text="图片："></asp:Label>
                                <asp:TextBox ID="txb_image" runat="server" Width="110px"></asp:TextBox>
                                修改图片路径： 
                                <asp:FileUpload ID="FileUpload_Image" runat="server" Width="290px" />
                            </td>
                        </tr>
                        <tr>
                            <td align="left" class="style4" colspan="2">
                                <asp:Button ID="Button1" runat="server" Text="确定" onclick="Button1_Click" />
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
        </div>
        </form>
</body>
</html>
