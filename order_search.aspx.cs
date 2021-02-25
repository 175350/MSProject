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

public partial class order_seach : System.Web.UI.Page
{
    String sqlstr;
    DB db = new DB();
    DataSet ds = new DataSet();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["username"] == null)
            {
                Response.Redirect("Error.aspx");
            }
            this.TextBox1.Focus();
        }

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (this.TextBox1.Text != "")
        {
            sqlstr = "select * from 详细订单视图 where 会员名='" + Session["username"] + "' and 订单编号='" + this.TextBox1.Text + "'";
            ds = db.GetDataTableBySql(sqlstr);
            if (ds.Tables[0].Rows.Count != 0)
            {
                this.GridView1.DataSource =ds.Tables[0].DefaultView;
                this.GridView1.DataBind();
                this.Panel1.Visible = true;
                this.GridView1.Visible = true;
                int i, count;
                Double price, sum = 0;
                for (i = 0; i < ds.Tables[0].Rows.Count; i++)
                {
                    price = Double.Parse(ds.Tables[0].Rows[i]["价格"].ToString());
                    count = int.Parse(ds.Tables[0].Rows[i]["数量"].ToString());
                    sum += price * count;
                }
                this.TextBox2.Text = sum.ToString();
            }
            else
            {
                this.GridView1.Visible = false;
                this.Panel1.Visible = false;
                Response.Write("<script>alert('此订单编号不存在！')</script>");
                this.TextBox1.Focus();
            }
        }
        else
        {
            this.GridView1.Visible = false;
            this.Panel1.Visible = false;
            Response.Write("<script>alert('请输入要查询的订单编号！')</script>");
            this.TextBox1.Focus();
        }
    }
}