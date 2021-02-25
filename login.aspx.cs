using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
using System.Web.Security;

public partial class login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        this.ImageButton1.ImageUrl = "yzm.aspx";
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string Code = Session["ValidateNum"].ToString().Trim();


        string Txtbox = this.TextBox3.Text.ToString().Trim();

        DB db = new DB();
        DataSet ds= new DataSet();
        string md5_pwd = FormsAuthentication.HashPasswordForStoringInConfigFile(TextBox2.Text, "md5");
        string selstr= "select * from 会员表 where 会员名='" + TextBox1.Text + "'and 密码='" + md5_pwd + "'";
        ds = db.GetDataTableBySql(selstr);
        try{
            if (ds.Tables[0].Rows.Count==0)
            {
                Response.Write("<script>alert('用户名或密码错误！')</script>");
                this.TextBox1.Focus();
            }
            else
            {
                Response.Write("<script>alert('登录成功！')</script>");
                Session["username"] = this.TextBox1.Text;

                Response.Redirect("Default.aspx");
            }  
        }
             catch (Exception)
                {
                    Response.Write("<script>alert('没有得到任何数据，请重试！')</script>");
                 }
            
    }
}