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
using System.Data.SqlClient;

public partial class Admin_fashion_update : System.Web.UI.Page
{
    String SqlStr;
    DB db = new DB();
    DataSet ds = new DataSet();
    String full_name;
    int PageSize;
    int RecordCount;
    int PageCount;
    int CurrentPage;
    
    public void FashionType_DataBind()
    {
        SqlStr = "select * from 服装类型表";
         ds= db.GetDataTableBySql(SqlStr);
        try
        {
            for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
            {
                DropDownList1.Items.Add(ds.Tables[0].Rows[i][1].ToString());
            }
        }
        catch (Exception)
        {
            Response.Write("<script>alert('没在获得任何数据！')</script>");
        }
    }

    public void DataListBind()
    {
        try
        {
            int StartIndex = CurrentPage * PageSize;
            String SqlStr = "select * from 服装信息视图";
            DataSet ds = new DataSet();
            SqlConnection con = new SqlConnection();
            con.ConnectionString = db.constr();
            con.Open();
            SqlDataAdapter da = new SqlDataAdapter(SqlStr, con);
            da.Fill(ds, StartIndex, PageSize, "服装信息视图");
            this.DataList1.DataSource = ds.Tables["服装信息视图"].DefaultView;
            this.DataList1.DataBind();
            this.PreviousLB.Enabled = true;
            this.NextLB.Enabled = true;
            if (CurrentPage == (PageCount - 1))
                this.NextLB.Enabled = false;
            if (CurrentPage == 0)
                this.PreviousLB.Enabled = false;
            this.current.Text = (CurrentPage + 1).ToString();

        }
        catch (Exception ex)
        {
            throw new Exception(ex.Message);
        }
    }

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false)
        {
            if (Session["Admin_UserName"] != null)
            {
                PageSize = 10;
                if (!Page.IsPostBack)
                {
                    CurrentPage = 0;            
                    ViewState["PageIndex"] = 0;
                    SqlStr = "select count(*) as count from 服装表";
                    ds = db.GetDataTableBySql(SqlStr);
                    if (ds.Tables[0].Rows.Count != 0)
                    {
                        RecordCount = int.Parse(ds.Tables[0].Rows[0]["count"].ToString());
                    }
                    else
                    {
                        RecordCount = 0;
                    }
                    if (RecordCount % PageSize == 0)
                    {
                        PageCount = RecordCount / PageSize;
                    }
                    else
                    {
                        PageCount = RecordCount / PageSize + 1;
                    }
                    this.total.Text = PageCount.ToString();
                    ViewState["PageCount"] = PageCount;
                    FashionType_DataBind();
                    DataListBind(); 
                }
            }
        }
    }
    protected void LinkButton_Click(object sender, CommandEventArgs e)
    {
        CurrentPage = (int)ViewState["PageIndex"];
        PageCount = (int)ViewState["PageCount"];
        string cmd = e.CommandName;
        switch (cmd)
        {
            case "prev":
                if (CurrentPage > 0)
                    CurrentPage--;
                break;

            case "next":
                if (CurrentPage < (PageCount - 1))
                    CurrentPage++;
                break;

            case "first":
                CurrentPage = 0;
                break;

            case "end":
                CurrentPage = PageCount - 1;
                break;

            case "jump":
                if (this.TextBox1.Text.Trim() == "" || Int32.Parse(this.TextBox1.Text.Trim()) > PageCount)
                {
                    return;
                }
                else
                {
                    CurrentPage = Int32.Parse(this.TextBox1.Text.ToString()) - 1;
                    break;
                }
        }
        ViewState["PageIndex"] = CurrentPage;    
        this.DataListBind();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        String image_path;
        if (FileUpload_Image.PostedFile.ContentLength != 0)
        {
            try
            {
                String path_file = FileUpload_Image.PostedFile.FileName.ToString();
                String file_type = path_file.Substring(path_file.LastIndexOf("."));
                String file_name = DateTime.Now.Year.ToString() + DateTime.Now.Month.ToString() + DateTime.Now.Day.ToString() + DateTime.Now.Hour.ToString() + DateTime.Now.Minute.ToString() + DateTime.Now.Second.ToString();
                full_name = file_name + file_type;
                String path = Server.MapPath("image\\") + full_name;
                FileUpload_Image.SaveAs(path);
            }
            catch (Exception)
            {
                Response.Write("<script>alert('上传文件失败！')</script>");
            }
            image_path = "image\\" + full_name;
        }
        else
            image_path = txb_image.Text.Trim();
        SqlStr = "select * from 服装类型表 where 服装类型='" + DropDownList1.Text + "'";
        ds = db.GetDataTableBySql(SqlStr);
        if (ds.Tables[0].Rows.Count != 0)
        {
            Session["fashiontype_id"] = ds.Tables[0].Rows[0]["类型编号"].ToString();
        }
        else
        {
            return;
        }
        SqlStr = "update 服装表 set 类型编号='" + Session["fashiontype_id"] + "',服装名='" + TextBox2.Text.Trim() + "'"
            + ",价格='" + TextBox3.Text.Trim() + "',服装大小='"+TextBox4.Text.Trim()+"',服装颜色='"+TextBox5.Text.Trim()+"',图片='" + image_path.Trim() + "' where 服装编号='" + Session["fashion_id"] + "'";
        if (db.UpdateDataBySql(SqlStr))
        {
             Response.Write("<script>alert('修改数据成功！！')</script>");
        }
        else
        {
           Response.Write("<script>alert('修改数据失败！！')</script>");
            return;
        }
        DataListBind();
    }
    protected void DataList1_UpdateCommand(object source, DataListCommandEventArgs e)
    {
         LinkButton btn = (LinkButton)DataList1.Items[e.Item.ItemIndex].FindControl("update_fashion");
        Session["fashion_id"] = btn.ToolTip;
        SqlStr = "select * from 服装表 where 服装编号='" + Session["fashion_id"] + "'";
        ds = db.GetDataTableBySql(SqlStr);
        if (ds.Tables[0].Rows.Count != 0)
        {
            this.TextBox2.Text = ds.Tables[0].Rows[0][2].ToString();
            this.TextBox3.Text = ds.Tables[0].Rows[0][3].ToString();
            this.TextBox4.Text = ds.Tables[0].Rows[0][4].ToString();
            this.TextBox5.Text = ds.Tables[0].Rows[0][5].ToString();
            Session["fashiontype_id"] = ds.Tables[0].Rows[0][1].ToString();
        }
        SqlStr = "select * from 服装类型表 where 类型编号='" + Session["fashiontype_id"] + "'";
        ds = db.GetDataTableBySql(SqlStr);
        if (ds.Tables[0].Rows.Count != 0)
        {
            DropDownList1.Items.Insert(0, ds.Tables[0].Rows[0]["服装类型"].ToString().Trim());
        }
        else
        {
            Response.Write("<script>alert('没有这种服装类型，请重新输入!!')</script>");
            return;
        }
    }
    }