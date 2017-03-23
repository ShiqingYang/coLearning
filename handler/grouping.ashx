<%@ WebHandler Language="C#" Class="grouping" %>

using System;
using System.Web;
using Model;
using BLL;

public class grouping : IHttpHandler {
    
    public void ProcessRequest (HttpContext context) {
        context.Response.ContentType = "text/plain";
        QuestionnaireBLL bll = new QuestionnaireBLL();
        int msg = bll.Grouping();
        context.Response.Write(msg);
    }
 
    public bool IsReusable {
        get {
            return false;
        }
    }

}