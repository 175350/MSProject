using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

public partial class AdminLogin : System.Web.UI.Page
{
    String SqlStr;
    DB db = new DB();
    DataSet ds = new DataSet();
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void Button1_Click(object sender, EventArgs e)
    {      
        SqlStr = "select * from 服装店管理员表 where 用户名='" + this.TextBox1.Text + "' and 密码='" + this.TextBox2.Text + "'";
        ds = db.data_chaxun(SqlStr);
        try
        {
            if (ds.Tables[0].Rows.Count == 0)
            {
                Response.Write("<script>alert( '用户名或密码错误，请重试！')</script>");
                this.TextBox1.Focus();
            }
            else
            {
                Session["Admin_UserName"] = this.TextBox1.Text;
                Response.Write("<script>window.location.href='Admin_index.aspx';</script>");
            }
        }
        catch (Exception)
        {
            Response.Write("<script>alert( '没有得到任何数据，请重试！')</script>");
        }
    }
}