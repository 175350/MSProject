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

public partial class fashionsearch : System.Web.UI.Page
{
    String SqlStr;
    DB db = new DB();
    DataSet ds = new DataSet();
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlStr = "select * from 服装表";
        ds = db.GetDataTableBySql(SqlStr);
        try
        {
            if (ds.Tables[0].Rows.Count != 0)
            {
                this.GridView1.DataSource =ds.Tables[0].DefaultView;
                this.GridView1.DataBind();
            }
        }
        catch (Exception)
        {
            Response.Write("<script>alert('没有获得任何数据，请检查！')</script>");
        }
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        SqlStr = "select * from 服装表 where 服装名 like '%" + this.TextBox1.Text + "%'";
        ds = db.GetDataTableBySql(SqlStr);
        try
        {
            if (ds.Tables[0].Rows.Count != 0)
            {
                this.GridView1.DataSource = ds.Tables[0].DefaultView;
                this.GridView1.DataBind();
            }
        }
        catch (Exception)
        {
            Response.Write("<script>alert('没有获得任何数据，请检查！')</script>");
        }
    }
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        if (this.TextBox1.Text == "")
        {
            SqlStr = "select * from 服装表";
            ds = db.GetDataTableBySql(SqlStr);
            try
            {
                if (ds.Tables[0].Rows.Count != 0)
                {
                    this.GridView1.DataSource = ds.Tables[0].DefaultView;
                    this.GridView1.PageIndex = e.NewPageIndex;
                    this.GridView1.DataBind();
                }
            }
            catch (Exception)
            {
                Response.Write("<script>alert('没有获得任何数据，请检查！')</script>");
            }
        }
        else
        {
            SqlStr = "select * from 服装表 where 服装名 like '%" + this.TextBox1.Text.ToString().Trim() + "%'";
            ds = db.GetDataTableBySql(SqlStr);
            try
            {
                if (ds.Tables[0].Rows.Count != 0)
                {
                    this.GridView1.DataSource = ds.Tables[0].DefaultView;
                    this.GridView1.PageIndex = e.NewPageIndex;
                    this.GridView1.DataBind();
                }
            }
            catch (Exception)
            {
                Response.Write("<script>alert('没有获得任何数据，请检查！')</script>");
            }
        }
    }
    protected void GridView1_Sorting(object sender, GridViewSortEventArgs e)
    {
        if (this.TextBox1.Text == "")
        {
            SqlStr = "select * from 服装表";
            ds = db.GetDataTableBySql(SqlStr);
            try
            {
                if (ds.Tables[0].Rows.Count != 0)
                {
                    DataTable Dtemp = new DataTable();
                    Dtemp = ds.Tables[0];
                    Dtemp.DefaultView.Sort = e.SortExpression;
                    this.GridView1.DataSource = Dtemp;
                    this.GridView1.DataBind();
                }
            }
            catch (Exception)
            {
                Response.Write("<script>alert('没有获得任何数据，请检查！')</script>");
            }
        }
        else
        {
            SqlStr = "select * from 服装表 where 服装名 like '%" + this.TextBox1.Text.ToString().Trim() + "%'";
            ds = db.GetDataTableBySql(SqlStr);
            try
            {
                if (ds.Tables[0].Rows.Count != 0)
                {
                    DataTable Dtemp = new DataTable();
                    Dtemp = ds.Tables[0];
                    Dtemp.DefaultView.Sort = e.SortExpression;
                    this.GridView1.DataSource = Dtemp;
                    this.GridView1.DataBind();
                }
            }
            catch (Exception)
            {
                Response.Write("<script>alert('没有获得任何数据，请检查！')</script>");
            }
        }       
    }
}