using System;
using System.Data;
using System.Configuration;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;

/// <summary>
///Baseclass 的摘要说明
/// </summary>
public class BaseClass
{
	public BaseClass()
	{
		//
		//TODO: 在此处添加构造函数逻辑
		//
	}
    public static SqlConnection DBCon()
    {
        SqlConnection conn = new SqlConnection();
        conn.ConnectionString = "server=.;database=coLearning;user id=sa;pwd=111111";
        return conn;
    }
    public static void OperateData(string strsql)
    {
        SqlConnection conn = DBCon();
        conn.Open();
        SqlCommand cm = new SqlCommand();
        cm.Connection = conn;
        cm.CommandText = strsql;
        cm.ExecuteNonQuery();
        conn.Close();
    }
    public static string Sum(string strsql)
    {
        SqlConnection conn = DBCon();
        conn.Open();
        SqlCommand cm = new SqlCommand();
        cm.Connection = conn;
        cm.CommandText = strsql;        
        return cm.ExecuteScalar().ToString();
    }
    public static void BindDG(GridView dg,  string strSQL, string Tname)
    {
        SqlConnection conn = DBCon();
        SqlDataAdapter sda = new SqlDataAdapter(strSQL, conn);
        DataSet ds = new DataSet();
        sda.Fill(ds, Tname);
        dg.DataSource = ds.Tables[Tname];
        //dg.DataKeyNames = new string[] { id };
        dg.DataBind();
    }
}