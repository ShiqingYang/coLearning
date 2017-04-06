using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using Model;

/// <summary>
///GroupDAL 的摘要说明
/// </summary>
namespace DAL
{
    public class GroupDAL
    {
        public GroupDAL()
        {
            //
            //TODO: 在此处添加构造函数逻辑
            //
        }

        //获取所在组号
        public string GetGroupId(string stunum)
        {
            string sql = "select groupId from tb_personalityTest where StuNo=@stunum";
            object obj=SQLHelper.ExecuteScalar(sql, CommandType.Text, new SqlParameter("@stunum", stunum));
            string i="";
            if (obj != null)
            { i = obj.ToString(); }
            return i;
        }

        //获取组长
        public string GetGroupLeader(string stunum)
        {
            string sql = "select s.StuName from tb_student as s,tb_personalityTest as p where s.StuNo=p.StuNo and p.groupId in (select groupId from tb_personalityTest where StuNo=@stunum) and groupIdentity='组长' and p.klass in (select klass from tb_personalityTest where StuNo=@stunum)";
            object obj = SQLHelper.ExecuteScalar(sql, CommandType.Text, new SqlParameter("@stunum", stunum));
            string i = "";
            if (obj != null)
            { i = obj.ToString(); }
            return i;
        }
        //获取组员
        public List<User> GetPartners(string stunum)
        {
            string sql = "select s.StuName from tb_student as s,tb_personalityTest as p where s.StuNo=p.StuNo and p.groupId in (select groupId from tb_personalityTest where StuNo=@stunum) and s.StuNo!=@stunum and p.groupIdentity !='组长' and p.klass in (select klass from tb_personalityTest where StuNo=@stunum)";
            DataTable dt = SQLHelper.ExecuteTableSql(sql, new SqlParameter("@stunum", stunum));
            return DTToList(dt);
        }

        //获取组长按成绩
        public string GetGroupLeaderbygrade(string stunum)
        {
            string sql = "select s.StuName from tb_student as s,tb_grade as g where s.StuNo=g.StuNo and g.groupId in (select groupId from tb_grade where StuNo=@stunum) and groupIdentity='组长' and g.klass in (select klass from tb_grade where StuNo=@stunum)";
            object obj = SQLHelper.ExecuteScalar(sql, CommandType.Text, new SqlParameter("@stunum", stunum));
            string i = "";
            if (obj != null)
            { i = obj.ToString(); }
            return i;
        }
        //获取组员按成绩
        public List<User> GetPartnersbygrade(string stunum)
        {
            string sql = "select s.StuName from tb_student as s,tb_grade as g where s.StuNo=g.StuNo and g.groupId in (select groupId from tb_grade where StuNo=@stunum) and s.StuNo!=@stunum and g.groupIdentity !='组长' 	and g.klass in (select klass from tb_grade where StuNo=@stunum)";
            DataTable dt = SQLHelper.ExecuteTableSql(sql, new SqlParameter("@stunum", stunum));
            return DTToList(dt);
        }
        //获取所在组号按成绩
        public string GetGroupIdbygrade(string stunum)
        {
            string sql = "select groupId from tb_grade where StuNo=@stunum";
            object obj = SQLHelper.ExecuteScalar(sql, CommandType.Text, new SqlParameter("@stunum", stunum));
            string i = "";
            if (obj != null)
            { i = obj.ToString(); }
            return i;
        }
        
        private List<User> DTToList(DataTable dt)
        {
            List<User> list = new List<User>();
            foreach (DataRow dr in dt.Rows)
            {
                User u = new User();

                u.Username = dr["StuName"].ToString();
                list.Add(u);
            }
            return list;
        }

    }
}