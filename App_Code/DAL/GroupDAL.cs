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

        //public List<User> GetAllUsersByid(string stunum)
        //{
        //    string sql = "select s.StuNo,s.StuName,p.groupId,p.groupIdentity from tb_student as s,tb_personalityTest as p where s.StuNo=p.StuNo and p.groupId in (select groupId from tb_personalityTest where StuNo=@stunum) order by groupIdentity";
        //    DataTable dt = SQLHelper.ExecuteTableSql(sql, new SqlParameter("@stunum", stunum));
        //    return DTToList(dt);
        //}

        //private List<User> DTToList(DataTable dt)
        //{
        //    List<User> list = new List<User>();
        //    foreach (DataRow dr in dt.Rows)
        //    {
        //        User u = new User();
        //        u.UserNum = dr["StuNo"].ToString();
        //        u.Username = dr["StuName"].ToString();
        //        u.GroupId = dr["groupId"].ToString();
        //        u.GroupIdentity=dr["groupIdentity"].ToString();              
        //        list.Add(u);
        //    }
        //    return list;
        //}

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