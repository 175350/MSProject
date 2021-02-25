using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;
using System.Web.Security;
using System.Configuration;

/// <summary>
///DB 的摘要说明
/// </summary>
public class DB
{

	public DB()
	{
		//
		//TODO: 在此处添加构造函数逻辑
		//
	}
        SqlConnection con = new SqlConnection();
        SqlCommand com = new SqlCommand();
        DataSet ds = new DataSet();
        SqlDataAdapter da = new SqlDataAdapter();

   public string constr()
        {
            string constring2 = ConfigurationManager.ConnectionStrings["con"].ToString();
            return constring2;
            
        }
    
    public bool chaxun(string  selstr )
    {

        con.ConnectionString = constr();
       
        com.Connection = con;
        com.CommandText = selstr;
        
        da.SelectCommand = com;
       
     

        con.Open();
        da.Fill(ds);
        con.Close();
        if (ds.Tables[0].Rows.Count > 0)
            return true;

        else
            return false;
            
    
    }

    public DataSet data_chaxun(string selstr)
    {
        con.ConnectionString = constr();
        com.Connection = con;
        com.CommandText = selstr;
        da.SelectCommand = com;
        con.Open();
        da.Fill(ds);
        con.Close();
        return ds;
    
    }
    public DataSet GetDataTableBySql(String SqlStr)
    {
        con.ConnectionString = constr();
        com.Connection = con;
        com.CommandText = SqlStr;
        da.SelectCommand = com;
        try
        {
            ds.Clear();
            con.Open();
            da.Fill(ds);
            con.Close();
        }
        catch (SqlException)
        {
            con.Close();
        }
        return ds;
    }

    public bool GetBoolBySql(String SqlStr)
    {
        con.ConnectionString = constr();
        com.Connection = con;
        com.CommandText = SqlStr;
        da.SelectCommand =com;
        try
        {
            ds.Clear();
            con.Open();
            da.Fill(ds);
            con.Close();
        }
        catch (SqlException)
        {
            con.Close();
        }
        if (ds.Tables[0].Rows.Count != 0)
            return true;
        else
            return false;
    }

    public  bool updatedata(string str)
    {

        con.ConnectionString = constr();
      
        com.Connection = con;
     
        
        com.CommandText = str;
        con.Open();
        int  count;
        count = com.ExecuteNonQuery();
        con.Close();

        if (count > 0)
            return true;
        else
            return false;
    
    }

    public Boolean UpdateDataBySql(String SqlStr)
    {
        con.ConnectionString = constr();
        com.Connection = con;
        com.CommandText = SqlStr;
        try
        {
            con.Open();
            com.ExecuteNonQuery();
            con.Close();
            return true;
        }
        catch (SqlException)
        {
            con.Close();
            return false;
        }
    }




}
