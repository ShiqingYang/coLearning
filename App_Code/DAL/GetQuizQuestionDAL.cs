using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.SqlClient;
using Model;

namespace DAL
{
    public class GetQuizQuestionDAL
    {
        //插入分数
        public List<QuizQuestion> Getquizquestion(string examname)
        {
            string sql = "select TestContent,TestAns1,TestAns2,TestAns3,TestAns4,RightAns from tb_tvideo where Videotitle=@examname";
            SqlParameter[] paras = new SqlParameter[] { new SqlParameter("@examname", examname)};
            DataTable dt = SQLHelper.ExecuteTableSql(sql, paras);
            return DTToList(dt);

        }
        private List<QuizQuestion> DTToList(DataTable dt)
        {
            List<QuizQuestion> list = new List<QuizQuestion>();
            foreach (DataRow dr in dt.Rows)
            {
                QuizQuestion q = new QuizQuestion();

                q.TestContent = dr["TestContent"].ToString();
                q.TestAns1 = dr["TestAns1"].ToString();
                q.TestAns2 = dr["TestAns2"].ToString();
                q.TestAns3 = dr["TestAns3"].ToString();
                q.TestAns4 = dr["TestAns4"].ToString();
                q.RightAns = dr["RightAns"].ToString();
                list.Add(q);
            }
            return list;
        }
    }
}
