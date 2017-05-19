using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.SqlClient;
using Model;

namespace DAL
{
    public class ExamDAL
    {
        //插入分数
        public bool ScoreInsert(string stunum,int score1)
        {
            string sql = "update tb_expnum set Quize_score=@score1 where StuNo=@stunum";
            SqlParameter[] paras = new SqlParameter[] { new SqlParameter("@stunum", stunum), new SqlParameter("@score1", score1)};
            int item = SQLHelper.ExecuteNonQuery(sql,CommandType.Text, paras);

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
