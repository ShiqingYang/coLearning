<%@ WebHandler Language="C#" Class="grouping" %>

using System;
using System.Web;
using System.Web.SessionState;
using Model;
using BLL;

public class grouping : IHttpHandler, IRequiresSessionState {
    
    public void ProcessRequest (HttpContext context) {
        context.Response.ContentType = "text/plain";
        string klass;
        if (context.Session["klass"] == null)
        {
            klass = "1504班";
        }
        else
        {
            klass = context.Session["klass"].ToString();
        }
        QuestionnaireBLL bll = new QuestionnaireBLL();
        int msg = bll.Grouping(klass);
        context.Response.Write(msg);
    }
 
    public bool IsReusable {
        get {
            return false;
        }
    }

}