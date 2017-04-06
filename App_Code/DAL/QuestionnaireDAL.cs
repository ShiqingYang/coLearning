using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.SqlClient;
using Model;

namespace DAL
{
    public class QuestionnaireDAL
    {
        //查询是否填写过问卷
        public bool isTest(string stunum)
        {
            string sql="select isTest from tb_personalityTest where StuNo=@stunum";
            int i = Convert.ToInt32(DAL.SQLHelper.ExecuteScalar(sql, CommandType.Text, new SqlParameter("@stunum",stunum)));
            if (i > 0)
            {
                return true;
            }
            else
            {
                return false;
            }
        }

        //按班级查询已填写的人数
        public int IstestCount(string klass)
        {
            string sql = "select count(*) from tb_personalityTest where isTest=1 and klass=@klass";
            SqlParameter[] paras = new SqlParameter[] {new SqlParameter("@klass", klass)};
            DataTable dt = SQLHelper.ExecuteTableSql(sql,paras);
            return int.Parse(dt.Rows[0][0].ToString());
        }

        public bool ScoreInsert(string stunum,int score1,int score2,int score3,int score4,string pattern)
        {
            string sql = "update tb_personalityTest set isTest=1,danZhi=@score1,duoXue=@score2,nianYe=@score3,yiYu=@score4,pattern=@pattern where StuNo=@stunum";
            SqlParameter[] paras = new SqlParameter[] { new SqlParameter("@stunum", stunum), new SqlParameter("@score1", score1), new SqlParameter("@score2", score2), new SqlParameter("@score3", score3), new SqlParameter("@score4", score4),new SqlParameter("@pattern",pattern) };
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
        //按班级更新身份为多血质的人为组长
        public int LeaderAssign(string klass)
        {
            string sql1 = "update tb_personalityTest set groupIdentity='组长' where pattern='多血质' and klass=@klass";
            return SQLHelper.ExecuteNonQuery(sql1, CommandType.Text, new SqlParameter("@klass", klass));
        }

        //按班级统计多血质人数
        public int DuoxueCount(string klass)
        {
            string sql = "select COUNT(*) DuoxueCount from tb_personalityTest where pattern='多血质' and klass=@klass";
            DataTable dt = SQLHelper.ExecuteTableSql(sql, new SqlParameter("@klass", klass));
            return int.Parse(dt.Rows[0][0].ToString());
        }

        //查询第5个多血质之后的气质类型为多血质的人,将他们的身份改为组员
        public int DuoxueLeft(string klass)
        {
            string sql = "select * from tb_personalityTest where StuNo not in (select top 5 StuNo from tb_personalityTest where pattern='多血质' and klass=@klass) and  pattern='多血质' and klass=@klass ";
            return SQLHelper.ExecuteNonQuery(sql, CommandType.Text, new SqlParameter("@klass", klass));
        }

        //更新第6个多血质以后的人身份为组员
        public int DuoxueLeftToMember(string klass)
        {
            string sql = "update tb_personalityTest set groupIdentity='组员' where StuNo in (select StuNo from tb_personalityTest where StuNo not in (select top 5 StuNo from tb_personalityTest where pattern='多血质' and klass=@klass) and  pattern='多血质' and klass=@klass)";
            return SQLHelper.ExecuteNonQuery(sql, CommandType.Text, new SqlParameter("@klass", klass));
        }

        //假设多血质人数小于6人，总共4人，选择前2个胆汁质的人，身份改为组长
        public int DanzhiLeaderAssign(int count,string klass)
        {
            string sql = "update tb_personalityTest set groupIdentity='组长' where StuNo in (select top @count StuNo from tb_personalityTest where pattern='胆汁质' and klass=@klass)";
            SqlParameter[] paras = new SqlParameter[] { new SqlParameter("@count", count), new SqlParameter("@klass", klass) };
            return SQLHelper.ExecuteNonQuery(sql, CommandType.Text, paras);
        }

        /*给小组一个编号（groupId）组长的编号从上到下分别为1,2,3,4,5,6 
         * 组员，前5个身份为组员的同学的编号为1；	第5-10个身份为组员的同学编号为2；	依次类推，第11-15个编号3……
         */
        public int SetLeaderId(int groupId,string klass)
        {
            string sql;
            SqlParameter[] paras = new SqlParameter[] { new SqlParameter("@groupId", groupId), new SqlParameter("@klass", klass) };
            if (groupId == 1)
            {
                sql = "update tb_personalityTest set groupId=1 where StuNo in (select top 1 StuNo from tb_personalityTest where groupIdentity='组长' and klass=@klass) ";
            }
            else
            {
                sql = "update tb_personalityTest set groupId=@groupId where StuNo in (select top 1 StuNo from tb_personalityTest where StuNo not in (select top (@groupId-1) StuNo from tb_personalityTest  where groupIdentity='组长' and klass=@klass) and groupIdentity='组长' and klass=@klass)";
            }
            return SQLHelper.ExecuteNonQuery(sql, CommandType.Text, paras);
        }

        /*给组员编号1,2,3,4,5,6*/
        public int SetMembergroupId(int groupId,string klass)
        {
            string sql;
            if (groupId == 1)
            {
                sql = "update tb_personalityTest set groupId=1 where StuNo in (select top 5 StuNo from tb_personalityTest where groupIdentity='组员' and klass=@klass)";
            }
            else
            {
                sql = "update tb_personalityTest set groupId=@groupId where StuNo in (select top 5 StuNo from tb_personalityTest where StuNo not in (select top ((@groupID-1)*5) StuNo from tb_personalityTest  where groupIdentity='组员' and klass=@klass) and groupIdentity='组员' and klass=@klass)";
            }
            SqlParameter[] paras = new SqlParameter[] { new SqlParameter("@groupId", groupId), new SqlParameter("@klass", klass) };
            return SQLHelper.ExecuteNonQuery(sql, CommandType.Text,paras); 
        }
    }
}
