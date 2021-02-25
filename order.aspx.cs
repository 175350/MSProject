using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class order : System.Web.UI.Page
{
    DataSet ds = new DataSet();
    DB db = new DB();
    string sqlstr;

    public void total_money()
    {
        sqlstr = "select * from 购物车视图 where 会员名='" + Session["username"] + "'";
        ds = db.GetDataTableBySql(sqlstr);
        try
        {
            if (ds.Tables[0].Rows.Count != 0)
            {
                Double price, sum = 0;
                int count;
                for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
                {
                    price = Double.Parse(ds.Tables[0].Rows[i]["价格"].ToString());
                    count = int.Parse(ds.Tables[0].Rows[i]["数量"].ToString());
                    sum += price * count;
                }
                TextBox1.Text = sum.ToString();
            }
        }
        catch (Exception)
        {
            Response.Write("<script>alert('没有得到数据,请重试！')</script>");
        }
    }

    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack == false)
        {
            sqlstr = "select * from 购物车视图 where 会员名='" + Session["username"] + "'";
            ds = db.GetDataTableBySql(sqlstr);
            GridView1.DataSource = ds.Tables[0].DefaultView;
            GridView1.DataBind();


            total_money();
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        int max_order;
        sqlstr = "select max(订单编号) from 服装订单表";
        ds = db.GetDataTableBySql(sqlstr);
        if (ds.Tables[0].Rows[0][0].ToString() != "")
        {
            max_order = int.Parse(ds.Tables[0].Rows[0][0].ToString()) + 1;
        }
        else
        {
            max_order = 1;
        }
        sqlstr = "insert into 服装订单表(订单编号,会员名,发货方式,付款方式,总金额,是否发货,备注)"
        + "values('" + max_order.ToString() + "','" + Session["username"] + "','" + this.DropDownList1.SelectedItem.Text + "',"
        + "'" + this.DropDownList2.SelectedItem.Text + "','" + this.TextBox1.Text.ToString().Trim() + "',0,'" + this.TextBox2.Text + "')";
        if (db.UpdateDataBySql(sqlstr))
        {
            Boolean UpdateResult;
            sqlstr = "insert into 详细订单表(会员名,服装编号,数量) select 会员名,服装编号,数量 from 服装购物车表 where "
            + "会员名='" + Session["username"] + "'";
            UpdateResult = db.UpdateDataBySql(sqlstr);
            sqlstr = "update 详细订单表 set 订单编号='" + max_order.ToString() + "' where 订单编号 is null";
            UpdateResult = db.UpdateDataBySql(sqlstr);
            sqlstr = "delete from 服装购物车表 where 会员名='" + Session["username"] + "'";
            UpdateResult = db.UpdateDataBySql(sqlstr);
            this.Label5.Visible = true;
            this.Label5.Text += max_order.ToString();

        }        
    }
}