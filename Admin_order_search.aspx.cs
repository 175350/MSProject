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

public partial class Admin_order_search : System.Web.UI.Page
{
    String SqlStr;
    DB db = new DB();
    DataSet ds= new DataSet();

    public void DatalistBind()
    {
        SqlStr = "select 订单编号,会员名,convert(varchar,订单日期,112) as 订单日期,发货方式,付款方式,总金额,是否发货,备注 from 订单表 order by 订单日期 Desc";
        ds = db.GetDataTableBySql(SqlStr);
        try
        {
            if (ds.Tables[0].Rows.Count != 0)
            {
                DataList1.DataSource = ds.Tables[0].DefaultView;
                DataList1.DataBind();
            }
            else
            {
                Response.Write("没有相关数据！");
            }
        }
        catch (Exception)
        {
            Response.Write("<script>alert('查询出现异常！')</script>");
        }
    }

    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack == false)
        {
            if (Session["Admin_UserName"] != null)
            {
                DatalistBind();
            }
            else
            {
                Response.Redirect("Error.aspx");
            }
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (this.TextBox1.Text != "")
        {
            SqlStr = "select 订单编号,会员名,convert(varchar,订单日期,112) as 订单日期,发货方式,付款方式,总金额,是否发货,备注 from 订单表 where 订单编号='" + this.TextBox1.Text.Trim() + "'";
            ds = db.GetDataTableBySql(SqlStr);
            try
            {
                if (ds.Tables[0].Rows.Count != 0)
                {
                    DataList1.DataSource = ds.Tables[0].DefaultView;
                    DataList1.DataBind();
                }
                else
                {
                    Response.Write("没有相关数据！");
                }
            }
            catch (Exception)
            {
                Response.Write("<script>alert('查询出现异常！')</script>");
            }
        }
        else
        {
            SqlStr = "select 订单编号,会员名,convert(varchar,订单日期,112) as 订单日期,发货方式,付款方式,总金额,是否发货,备注 from 订单表 order by 订单日期 Desc";
            ds = db.GetDataTableBySql(SqlStr);
            try
            {
                if (ds.Tables[0].Rows.Count != 0)
                {
                    DataList1.DataSource = ds.Tables[0].DefaultView;
                    DataList1.DataBind();
                }
                else
                {
                    Response.Write("没有相关数据！");
                }
            }
            catch (Exception)
            {
                Response.Write("<script>alert('查询出现异常！')</script>");
            }
        }
    }
}