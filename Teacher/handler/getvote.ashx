<%@ WebHandler Language="C#" Class="getvote" %>

using System;
using System.Web;
using System.Web.SessionState;
using Model;
using BLL;

public class getvote : IHttpHandler, IRequiresSessionState
{

    public void ProcessRequest(HttpContext context)
    {
        context.Response.ContentType = "text/plain";
        string klass = "1504班";
        int msg;
        
        string stunum = context.Session["ID"].ToString();
        int tc,tc1;
        SetGroupByGradeBLL bll = new SetGroupByGradeBLL();
        bll.isVote(stunum, out msg);
        bll.perCount(klass, out tc);
        bll.gradeCount(klass, out tc1);
        context.Response.Write(msg + "," + tc+","+tc1);
        //context.Response.Write(tc);只能返回一个值，所以以逗号分开，前端用js split
    }
 
    public bool IsReusable {
        get {
            return false;
        }
    }

}