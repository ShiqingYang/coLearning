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
///Homework 的摘要说明
/// </summary>

namespace BLL
{
    public class Homework
    {

        public void Add(string time, string no, string content, string chap)
        {
            Database db = new Database();
            string sql = "Insert Into tb_homework(StuNo,HomeContent,SubTime,ChapTitle) Values('" + no + "','" + content + "','" + time + "','" + chap + "')";
            db.ExecuuteSQL(sql);
        }
        public void Add2(int ID,int Score)
        {
            Database db = new Database();
            string sql = "update tb_homework set HomeScore='" + Score + "' where ID='" + ID + "' ";
            db.ExecuuteSQL(sql);
        }
    }

}