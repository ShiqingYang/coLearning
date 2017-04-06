using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using DAL;
/// <summary>
///Message 的摘要说明
/// </summary>
namespace BLL
{
    public class Message
    {
        public static DataSet LoadAll()
        {
            Database db = new Database();
            string sql = "select * from tb_message order by MessTime desc";
            DataSet ds = db.GetDataSet(sql);
            return ds;

        }
        public void Add(string MessTime, string UserName, string MessContent)
        {
            Database db = new Database();
            string sql = "Insert Into tb_message Values('" + UserName + "','" + MessContent + "','" + MessTime + "')";
            db.ExecuuteSQL(sql);
        }
    }

}