<%@ WebHandler Language="C#" Class="groupingbygrade" %>

using System;
using System.Web;
using System.Web.SessionState;
using Model;
using BLL;

public class groupingbygrade : IHttpHandler, IRequiresSessionState
{
    
    public void ProcessRequest (HttpContext context) {
        context.Response.ContentType = "text/plain";
        string klass = context.Session["klass"].ToString();

        SetGroupByGradeBLL bll = new SetGroupByGradeBLL();
        int msg = bll.SetGroupByGrade(klass);
        context.Response.Write(msg);
    }
 
    public bool IsReusable {
        get {
            return false;
        }
    }

}