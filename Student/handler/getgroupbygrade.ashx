<%@ WebHandler Language="C#" Class="getgroupbygrade" %>

using System;
using System.Web;
using System.Web.SessionState;
using System.Collections.Generic;
using System.Web.Script.Serialization;
using System.Text;
using Model;
using BLL;

public class getgroupbygrade : IHttpHandler,IRequiresSessionState {
    
    public void ProcessRequest (HttpContext context) {
        context.Response.ContentType = "text/plain";
        string uid = context.Session["ID"].ToString();
        GroupBLL bll = new GroupBLL();
        string group = bll.GetGroupIdbygrade(uid);
        string leader = bll.GetGroupLeaderbygrade(uid);

        context.Response.Write(group + "," + leader);
    }
 
    public bool IsReusable {
        get {
            return false;
        }
    }

}