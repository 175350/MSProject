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

public partial class Admin_fashion_add : System.Web.UI.Page
{ 
    String SqlStr;
    DB db = new DB();
    DataSet ds = new DataSet();
    String full_name;

    void FashionType_DataBind()
    {
        SqlStr = "select * from 服装类型表";
        ds = db.GetDataTableBySql(SqlStr);
        try
        {
            string fashiontype_name;
            for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
            {
                fashiontype_name = ds.Tables[0].Rows[i][1].ToString();
                DropDownList1.Items.Add(fashiontype_name);
            }
        }
        catch (Exception)
        {
            Response.Write("<script>alert('没有获得数据！')</script>");
        }
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false)
        {
            if (Session["Admin_UserName"] != null)
            {
                FashionType_DataBind();
            }
            else
            {
                Response.Redirect("Error.aspx");
            }
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (Session["Admin_UserName"] != null)
        {
            try
            {
                string path_file = FileUpload1.PostedFile.FileName.ToString();
                string file_type = path_file.Substring(path_file.LastIndexOf("."));
                string file_name = DateTime.Now.Year.ToString() + DateTime.Now.Month.ToString() + DateTime.Now.Day.ToString() + DateTime.Now.Hour.ToString() + DateTime.Now.Minute.ToString() + DateTime.Now.Second.ToString();
                full_name = file_name + file_type;
                string path = Server.MapPath("image\\") + full_name;
                FileUpload1.SaveAs(path);
            }
            catch (Exception)
            {
                Response.Write("<script>alert('上传文件失败！')</script>");
            }
            SqlStr = "select * from 服装类型表 where 服装类型='" + DropDownList1.Text.Trim() + "'";
            ds = db.GetDataTableBySql(SqlStr);
            string type_id =ds.Tables[0].Rows[0][0].ToString();
            string image_path = "image\\" + full_name;
            SqlStr = "insert into 服装表 (类型编号,服装名,价格,服装大小,服装颜色,图片)"
                + "values('" + type_id + "','" + TextBox1.Text + "','" + TextBox2.Text + "',"
                + "'" + TextBox3.Text + "','" + TextBox4.Text + "','" + image_path + "')";
            try
            {
                if (db.UpdateDataBySql(SqlStr))
                {
                    Response.Write("<script>alert('服装新增成功！')</script>");
                }
                else
                {
                    Response.Write("<script>alert('服装新增失败！')</script>");
                }
            }
            catch (Exception)
            {
                Response.Write("<script>alert('服装新增失败')</script>");
            }
        }
        else
        {
            Response.Redirect("Error.aspx");
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        this.TextBox1.Text = "";
        this.TextBox2.Text = "";
        this.TextBox3.Text = "";
        this.TextBox4.Text = "";
    }
}