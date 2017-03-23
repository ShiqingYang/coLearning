<%@ WebHandler Language="C#" Class="teacherdefault" %>

using System;
using System.Web;
using Model;
using BLL;

public class teacherdefault : IHttpHandler {
    
    public void ProcessRequest (HttpContext context) {
        context.Response.ContentType = "text/plain";
        int tc;
        QuestionnaireBLL bll = new QuestionnaireBLL();
        bll.IstestCount(out tc);
        context.Response.Write( tc);
        //context.Response.Write(tc);只能返回一个值，所以以逗号分开，前端用js split
    }
 
    public bool IsReusable {
        get {
            return false;
        }
    }

}