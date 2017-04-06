using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using Model;

/// <summary>
///UploadDAL 的摘要说明
/// </summary>
namespace DAL
{
    public class UploadDAL
    {
        public UploadDAL()
        {
            //
            //TODO: 在此处添加构造函数逻辑
            //
        }

        public bool ResourceInsert(string title, string rcontent, string attachment)
        {
            string sql = "insert into tb_resource (title,rcontent,attachment) values (@title,@rcontent,@attachment)";
            SqlParameter[] paras = new SqlParameter[] { new SqlParameter("@title", title), new SqlParameter("@rcontent", rcontent), new SqlParameter("@attachment", attachment)};
            int item = SQLHelper.ExecuteNonQuery(sql, CommandType.Text, paras);

            if (item > 0)
            {
                return true;
            }
            else
            {
                return false;
            }

        }
    }
}