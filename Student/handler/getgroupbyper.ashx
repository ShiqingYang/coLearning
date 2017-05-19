<%@ WebHandler Language="C#" Class="getgroupbyper" %>

using System;
using System.Web;
using System.Web.SessionState;
using System.Collections.Generic;
using System.Web.Script.Serialization;
using System.Text;
using Model;
using BLL;

public class getgroupbyper : IHttpHandler,IRequiresSessionState
{
    
    public void ProcessRequest (HttpContext context) {
        context.Response.ContentType = "text/plain";
        string uid = context.Request.Form["uid"];
        GroupBLL bll = new GroupBLL();
        string group=bll.GetGroupId(uid);
        string leader = bll.GetGroupLeader(uid);
        
        context.Response.Write(group+","+leader);
        
        
    }
    
    public bool IsReusable {
        get {
            return false;
        }
    }

}