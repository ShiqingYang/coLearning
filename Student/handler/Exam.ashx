<%@ WebHandler Language="C#" Class="Exam" %>

using System;
using System.Web;
using System.Web.SessionState;
using Model;
using BLL;

public class Exam : IHttpHandler, IRequiresSessionState
{
    
    public void ProcessRequest (HttpContext context) {
        context.Response.ContentType = "text/plain";
        string klass = context.Session["klass"].ToString();
        string stunum = context.Session["ID"].ToString();
        int testScore1 = int.Parse(context.Request.Form["s1"]);
        int msg;
        ExamBLL bll = new ExamBLL();
        bll.ScoreInsert(stunum, testScore1, out msg);
        context.Response.Write(msg);
    }
 
    public bool IsReusable {
        get {
            return false;
        }
    }

}