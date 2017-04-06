<%@ WebHandler Language="C#" Class="vote" %>

using System;
using System.Web;
using System.Web.SessionState;
using Model;
using BLL;

public class vote : IHttpHandler, IRequiresSessionState
{
    
    public void ProcessRequest (HttpContext context) {
        context.Response.ContentType = "text/plain";
        int i = int.Parse(context.Request.Form["value"]);
        int msg;
        string stunum = context.Session["ID"].ToString();
        SetGroupByGradeBLL bll = new SetGroupByGradeBLL();
        bll.vote(stunum, i, out msg);
        context.Response.Write(msg);
    }
 
    public bool IsReusable {
        get {
            return false;
        }
    }

}