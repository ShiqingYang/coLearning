using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Model;
using DAL;

namespace BLL
{
    /// <summary>
    ///LoginBLL 的摘要说明
    /// </summary>
    public class LoginBLL
    {
        public LoginBLL()
        {
            //
            //TODO: 在此处添加构造函数逻辑
            //
        }
        private LoginDAL log = new LoginDAL();
        public bool checkStudent(string stunum, string pwd)
        {
            bool r;
            r = log.CheckStudent(stunum, pwd);
            return r;
        }

        public bool checkTeacher(string teanum, string pwd)
        {
            bool r;
            r = log.CheckTeacher(teanum, pwd);
            return r;
        }
        public bool checkAdmin(string adminnum, string pwd)
        {
            bool r;
            r = log.CheckAdmin(adminnum, pwd);
            return r;
        }

        public string getStuName(string stunum)
        {
            return log.GetStuName(stunum);
        }

        public string getTeaName(string stunum)
        {
            return log.GetTeaName(stunum);
        }

        public string getAName(string stunum)
        {
            return log.GetAName(stunum);
        }

        public string getClass(string stunum)
        {
            return log.GetClass(stunum);
        }
    }
}