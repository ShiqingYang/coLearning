using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using Model;

namespace DAL
{
    /// <summary>
    ///login 的摘要说明
    /// </summary>
    public class LoginDAL
    {
        public LoginDAL()
        {
            //
            //TODO: 在此处添加构造函数逻辑
            //
        }

        public bool CheckStudent(string stunum, string password)
        {
            string sql = "select count(*)from tb_student where StuNo=@stunum and StuPwd=@password";
            SqlParameter[] paras = new SqlParameter[] { new SqlParameter("@stunum", stunum), new SqlParameter("@password", password) };
            int i = Convert.ToInt32(DAL.SQLHelper.ExecuteScalar(sql, CommandType.Text, paras));
            if (i > 0)
            {
                return true;
            }
            else
            {
                return false;
            }

        }
        public bool CheckTeacher(string teacherNum, string password)
        {
            string sql = "select count(*)from tb_teacher where TeacherNum=@teacherNum and TeacherPwd=@password";
            SqlParameter[] paras = new SqlParameter[] { new SqlParameter("@teacherNum", teacherNum), new SqlParameter("@password", password) };
            int i = Convert.ToInt32(DAL.SQLHelper.ExecuteScalar(sql, CommandType.Text, paras));
            if (i > 0)
            {
                return true;
            }
            else
            {
                return false;
            }

        }
        public bool CheckAdmin(string adminNum, string password)
        {
            string sql = "select count(*)from tb_admin where AdminNum=@adminNum and AdminPwd=@password";
            SqlParameter[] paras = new SqlParameter[] { new SqlParameter("@adminNum", adminNum), new SqlParameter("@password", password) };
            int i = Convert.ToInt32(DAL.SQLHelper.ExecuteScalar(sql, CommandType.Text, paras));
            if (i > 0)
            {
                return true;
            }
            else
            {
                return false;
            }

        }

        public string GetStuName(string stunum)
        {
            string sql = "select StuName from tb_student where StuNo=@stunum";

            DataTable dt = SQLHelper.ExecuteTableSql(sql,new SqlParameter("@stunum", stunum));
            return dt.Rows[0][0].ToString();
        }
        public string GetTeaName(string teanum)
        {
            string sql = "select TeacherName from tb_teacher where TeacherNum=@teanum";

            DataTable dt = SQLHelper.ExecuteTableSql(sql, new SqlParameter("@teanum", teanum));
            return dt.Rows[0][0].ToString();
        }
        public string GetAName(string anum)
        {
            string sql = "select StuName from tb_admin where AdminNum=@anum";

            DataTable dt = SQLHelper.ExecuteTableSql(sql, new SqlParameter("@anum", anum));
            return dt.Rows[0][0].ToString();
        }

        public string GetClass(string stunum)
        {
            string sql = "select klass from tb_student where StuNo=@stunum";

            DataTable dt = SQLHelper.ExecuteTableSql(sql, new SqlParameter("@stunum", stunum));
            return dt.Rows[0][0].ToString();
        }
    }
}