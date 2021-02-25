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

public partial class Admin_order_deal : System.Web.UI.Page
{
    String SqlStr;
    DB db = new DB();
    DataSet ds= new DataSet();

    public void DatalistBind()
    {
        SqlStr = "select 订单编号,会员名,convert(varchar,订单日期,112) as 订单日期,发货方式,付款方式,总金额,是否发货,备注 from 订单表 where 是否发货='false'";
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
    protected void Button2_Click(object sender, EventArgs e)
    {
        for (int i = 0; i < DataList1.Items.Count; i++)
        {
            CheckBox checkbox = (CheckBox)DataList1.Items[i].FindControl("deal_order");
            if (checkbox.Checked == true)
            {
                SqlStr = "update 订单表 set 是否发货='true' where 订单编号='" + checkbox.ToolTip + "'";
                bool updateResult = db.UpdateDataBySql(SqlStr);
            }
        }
        DatalistBind();
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
            SqlStr = "select 订单编号,会员名,convert(varchar,订单日期,112) as 订单日期,发货方式,付款方式,总金额,是否发货,备注 from 订单表 where 是否发货='false' order by 订单日期 ";
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