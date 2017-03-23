<%@ WebHandler Language="C#" Class="studefault" %>

using System;
using System.Web;
using Model;
using BLL;


public class studefault : IHttpHandler {
    
    public void ProcessRequest (HttpContext context) {
        context.Response.ContentType = "text/plain";
        int msg;
        string stunum = context.Request.Form["uid"];
        int tc;
        QuestionnaireBLL bll = new QuestionnaireBLL();        
        bll.isTest(stunum,out msg);
        bll.IstestCount(out tc);
        context.Response.Write(msg+","+tc);
        //context.Response.Write(tc);只能返回一个值，所以以逗号分开，前端用js split
    }
 
    public bool IsReusable {
        get {
            return false;
        }
    }

}