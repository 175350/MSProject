using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Admin_fashion_delete : System.Web.UI.Page
{
    String SqlStr;
    DB db = new DB();
    DataSet ds = new DataSet();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        SqlStr = "select * from 服装表 where 服装名 like '%" + this.TextBox1.Text + "%'";
        ds = db.GetDataTableBySql(SqlStr);
        try
        {
            if (ds.Tables[0].Rows.Count != 0)
            {
                this.DataList1.DataSource = ds.Tables[0].DefaultView;
                this.DataList1.DataBind();
            }
        }
        catch (Exception)
        {
            Response.Write("<script>alert('没有获得任何数据，请检查！')</script>");
        }
    }
}