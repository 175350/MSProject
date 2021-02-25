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

public partial class fashionshow : System.Web.UI.Page
{
    String SqlStr;
    DataSet ds = new DataSet();
    DB db = new DB();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false)
        {
            SqlStr = "select * from 服装表";
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
}