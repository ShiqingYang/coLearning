using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
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
}