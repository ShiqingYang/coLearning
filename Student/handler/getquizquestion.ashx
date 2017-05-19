<%@ WebHandler Language="C#" Class="getquizquestion" %>

using System;
using System.Web;
using System.Web.SessionState;
using System.Collections.Generic;
using System.Web.Script.Serialization;
using System.Text;
using Model;
using BLL;

public class getquizquestion : IHttpHandler, IRequiresSessionState
{
    
    public void ProcessRequest (HttpContext context) {
        context.Response.ContentType = "text/plain";
        int msg;
        string examname=context.Session["KM"].ToString();
        GetQuizQuestionBLL bll = new GetQuizQuestionBLL();
        List<QuizQuestion> list = bll.Getquizquestion(examname);
        JavaScriptSerializer jss = new JavaScriptSerializer();
        string questions = jss.Serialize(list);
        context.Response.Write(questions);
    }
 
    public bool IsReusable {
        get {
            return false;
        }
    }

}