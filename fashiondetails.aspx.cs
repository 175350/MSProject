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

public partial class fashiondetails : System.Web.UI.Page
{
    String SqlStr;
    DataSet ds = new DataSet();
    DB db = new DB();
    String fashion_ID;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false)
        {
            fashion_ID = Request.QueryString.Get(0).ToString().Trim();
            SqlStr = "select * from 服装表 where 服装编号='" + fashion_ID+"'";
            ds = db.GetDataTableBySql(SqlStr);
            try
            {
                if (ds.Tables[0].Rows.Count != 0)
                {
                    this.Repeater1.DataSource = ds.Tables[0].DefaultView;
                    this.Repeater1.DataBind();
                    Session["fashion_id"] = fashion_ID;
                }
            }
            catch (Exception)
            {
                Response.Write("<script>alert('没有获得任何数据，请检查！')</script>");
            }
        }
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("shopcar.aspx");
    }
}