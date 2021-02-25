using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;
using System.Data;
using System.Configuration;
using System.Collections;

public partial class shopcar : System.Web.UI.Page
{
    String SqlStr;
    DB db = new DB();
    DataSet ds = new DataSet();
    DataSet ds2 = new DataSet();
   

    public void DataListBind()
    {
        SqlStr = "select * from 购物车视图 where 会员名='" + Session["username"] + "'";
        ds= db.GetDataTableBySql(SqlStr);
        try
        {
            this.DataList1.DataSource = ds.Tables[0].DefaultView;
            this.DataList1.DataBind();
        }
        catch (Exception)
        {
            Response.Write("<script>alert('没有得到数据,请重试！')</script>");
        }
    }

    public void total_money()
    {
        SqlStr = "select * from 购物车视图 where 会员名='" + Session["username"] + "'";
        ds = db.GetDataTableBySql(SqlStr);
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
                this.total_money_txt.Text = sum.ToString();
            }
        }
        catch (Exception)
        {
            Response.Write("<script>alert('没有得到数据,请重试！')</script>");
        }
    }

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false)
        {
            if (Session["username"] != null)
            {
                if (Session["fashion_id"] != null)
                {

                    SqlStr = "select * from  服装购物车表 where 会员名='" + Session["username"] + "' and 服装编号='" + Session["fashion_id"] + "'";
                    ds = db.data_chaxun(SqlStr);
                    try
                    {
                        if (ds.Tables[0].Rows.Count != 0)
                        {
                            Response.Write("<script>alert('你已经购买了此产品，只要更改数量就行！')</script>");
                        }
                        else
                        {
                            SqlStr = "insert into 服装购物车表 (会员名,服装编号,数量) values('" + Session["username"] + "','" + Session["fashion_id"] + "',1)";
                            Boolean Insert_Result;
                            Insert_Result = db.updatedata(SqlStr);
                        }

                    }
                    catch (Exception)
                    {
                        Response.Write("<script>alert('没有得到数据，请重试！')</script>");
                    }
                }
                DataListBind();
                total_money();
            }
            else
            {
                Response.Redirect("Error.aspx");
            }
        }
    }
    protected void shoppingbtn_Click(object sender, EventArgs e)
    {
        Response.Redirect("fashionsearch.aspx");
    }
    protected void delallbtn_Click(object sender, EventArgs e)
    {
        string sqlstr = "delete  from  服装购物车表";
        if (db.updatedata(sqlstr))
        {
            Response.Write("<script>alert('购物车已清空！')</script>");
            DataListBind();
            total_money();
        }
        else
            Response.Write("<script>alert('购物车清空失败！')</script>");
    }

    protected void orderbtn_Click(object sender, EventArgs e)
    {
        Response.Redirect("order.aspx");
    }

    protected void DataList1_UpdateCommand(object source, DataListCommandEventArgs e)
    {
        string fashion_id;
        fashion_id = DataList1.DataKeys[e.Item.ItemIndex].ToString();
        TextBox shuliang = (TextBox)DataList1.Items[e.Item.ItemIndex].FindControl("TextBox1");
        string sqlstr = "update 服装购物车表 set 数量='" + shuliang.Text + "' where 服装编号='" + fashion_id + "'";
        if (db.updatedata(sqlstr))
            Response.Write("<script>alert('数量修改成功！')</script>");
        else
            Response.Write("<script>alert('数量修改失败！')</script>");

    }

    protected void DataList1_DeleteCommand(object source, DataListCommandEventArgs e)
    {
        string fashion_id;
        fashion_id = DataList1.DataKeys[e.Item.ItemIndex].ToString();
        string sqlstr = "delete  from  服装购物车表 where 服装编号='" + fashion_id + "'";
        if (db.updatedata(sqlstr))
        {
            Response.Write("<script>alert('该服装删除成功！')</script>");
            DataListBind();
            total_money();
        }
        else
            Response.Write("<script>alert('该服装删除失败！')</script>");
    }
    
}