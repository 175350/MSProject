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

public partial class zhuce : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        for (int Year = 1930; Year <= 2020; Year++)
        {
            this.DDL_Year.Items.Add(Convert.ToString(Year));
        }
        for (int Month = 1; Month <= 12; Month++)
        {
            this.DDl_Month.Items.Add(Convert.ToString(Month));
        }
        for (int Day = 1; Day <= 31; Day++)
        {
            this.DDL_Day.Items.Add(Convert.ToString(Day));
        }

        this.DDL_Year.Text = "1990";
    }
    protected void Button2_Click(object sender, EventArgs e)
    {

        this.txt_user_name.Focus();
        this.txt_pwd.Text = "";
        this.txt_repwd.Text = "";
        this.txt_idcard.Text = "";
        this.txt_mobile.Text = "";
        this.txt_address.Text = "";
        this.txt_relname.Text = "";

    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        SqlConnection con = new SqlConnection();
        con.ConnectionString = "server=.;database=网上服装店;user id=sa;pwd=123";
        SqlCommand com = new SqlCommand();
        com.Connection = con;

        string md5_pwd = FormsAuthentication.HashPasswordForStoringInConfigFile(txt_pwd.Text, "md5");
        string birthday = DDL_Year.SelectedItem + "-" + DDl_Month.SelectedItem + "-" + DDL_Day.SelectedItem;
        com.CommandText = "insert into 会员表 values('" + txt_user_name.Text + "','" + md5_pwd + "','" + txt_relname.Text + "','" + DDL_sex.SelectedItem + "','" + birthday + "','"+ txt_idcard.Text +  "','"+ txt_mobile.Text +  "','" + txt_address.Text + "')";
        con.Open();
        int count;
        count = com.ExecuteNonQuery();
        if (count >0)

            Response.Redirect("default.aspx");
        else
            Response.Write("注册失败！");
           

    }
}