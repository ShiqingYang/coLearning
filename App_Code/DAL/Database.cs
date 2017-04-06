using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;

/// <summary>
///Database 的摘要说明
/// </summary>
namespace DAL
{
    public class Database
    {
        public Database()
        {

        }
        public static SqlConnection DBCon()
        {
            return new SqlConnection("server=.;database=coLearning;user id=sa;pwd=111111");
        }
        public DataSet GetDataSet(String sql)
        {
            SqlConnection conn = DBCon();
            conn.Open();
            SqlDataAdapter adapter = new SqlDataAdapter(sql, conn);
            DataSet dataset = new DataSet();
            adapter.Fill(dataset);
            conn.Close();
            return dataset;
        }
        public void ExecuuteSQL(string sql)
        {
            SqlConnection conn = DBCon();
            conn.Open();
            SqlCommand cmd = new SqlCommand(sql, conn);
            cmd.ExecuteNonQuery();
            conn.Close();
        }
    }
}