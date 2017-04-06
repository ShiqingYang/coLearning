using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using Model;

/// <summary>
///SetGroupByGradeDAL 的摘要说明
/// </summary>
namespace DAL
{
    public class SetGroupByGradeDAL
    {
        public SetGroupByGradeDAL()
        {
            //
            //TODO: 在此处添加构造函数逻辑
            //
        }


        //按成绩更新成绩排名前5的人为组长
        public int LeaderAssign(string klass)
        {
            string sql1 = "update tb_grade set groupIdentity='组长' where StuNo in (select top 5 StuNo from tb_grade where klass=@klass order by score1 desc) and klass=@klass";
            return SQLHelper.ExecuteNonQuery(sql1, CommandType.Text, new SqlParameter("@klass", klass));
        }

        //查询成绩不在前5的人,将他们的身份改为组员
        public int MemberAssign(string klass)
        {
            string sql = "update tb_grade set groupIdentity='组员' where StuNo not in (select top 5 StuNo from tb_grade  where klass=@klass order by score1 desc) and klass=@klass";
            return SQLHelper.ExecuteNonQuery(sql, CommandType.Text, new SqlParameter("@klass", klass));
        }

        //给组长编号1-5
        public int SetLeaderId(int groupId, string klass)
        {
            string sql;
            SqlParameter[] paras = new SqlParameter[] { new SqlParameter("@groupId", groupId), new SqlParameter("@klass", klass) };
            if (groupId == 1)
            {
                sql = "update tb_grade set groupId=1 where StuNo in (select top 1 StuNo from tb_grade where groupIdentity='组长' and klass=@klass order by score1 desc) ";
            }
            else
            {
                sql = "update tb_grade set groupId=@groupId where StuNo in (select top 1 StuNo from tb_grade where StuNo not in (select top (@groupId-1) StuNo from tb_grade  where groupIdentity='组长' and klass=@klass order by score1 desc) and groupIdentity='组长' and klass=@klass order by score1 desc)";
            }
            return SQLHelper.ExecuteNonQuery(sql, CommandType.Text, paras);
        }
        //给组员编号
        /*给组员编号1,2,3,4,5*/
        public int SetMembergroupId(int i,int t, string klass)
        {
            string sql = "update tb_grade set groupId=(5-@t) where StuNo in (select top 1 StuNo from tb_grade where klass=@klass and StuNo not in (select top (@i*5+@t) StuNo from tb_grade where klass=@klass order by score1 desc,StuNo) order by score1 desc,StuNo)";


            SqlParameter[] paras = new SqlParameter[] { new SqlParameter("@t", t), new SqlParameter("@i", i), new SqlParameter("@klass", klass) };
            return SQLHelper.ExecuteNonQuery(sql, CommandType.Text, paras);
        }

        public int SetMembergroupId2(int i, int t, string klass)
        {
            string sql="update tb_grade set groupId=(@t+1) where StuNo in (select top 1 StuNo from tb_grade where klass=@klass and StuNo not in (select top (@i*5+@t) StuNo from tb_grade where klass=@klass order by score1 desc,StuNo) order by score1 desc,StuNo)";

            SqlParameter[] paras = new SqlParameter[] { new SqlParameter("@t", t), new SqlParameter("@i", i), new SqlParameter("@klass", klass) };
            return SQLHelper.ExecuteNonQuery(sql, CommandType.Text, paras);
        }


        //查询是否投票
        public bool isVote(string stunum)
        {
            string sql = "select isvote from tb_grade where StuNo=@stunum";
            int i = Convert.ToInt32(DAL.SQLHelper.ExecuteScalar(sql, CommandType.Text, new SqlParameter("@stunum", stunum)));
            if (i > 0)
            {
                return true;
            }
            else
            {
                return false;
            }
        }

        //按班级查询选择按气质类型的总票数
        public int perCount(string klass)
        {
            string sql = "select count(*) from tb_grade where isvote=1 and klass=@klass";
            SqlParameter[] paras = new SqlParameter[] { new SqlParameter("@klass", klass) };
            DataTable dt = SQLHelper.ExecuteTableSql(sql, paras);
            return int.Parse(dt.Rows[0][0].ToString());
        }

        //按班级查询选择按成绩的总票数
        public int gradeCount(string klass)
        {
            string sql = "select count(*) from tb_grade where isvote=2 and klass=@klass";
            SqlParameter[] paras = new SqlParameter[] { new SqlParameter("@klass", klass) };
            DataTable dt = SQLHelper.ExecuteTableSql(sql, paras);
            return int.Parse(dt.Rows[0][0].ToString());
        }

        //投票
        public bool vote(string stunum,int i)
        {
            string sql = "update tb_grade set isvote=@i where StuNo=@stunum";
            SqlParameter[] paras = new SqlParameter[] { new SqlParameter("@stunum", stunum), new SqlParameter("@i", i)};
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