<%@ WebHandler Language="C#" Class="getuserbygroup" %>

using System;
using System.Web;
using System.Collections.Generic;
using System.Web.Script.Serialization;
using Model;
using BLL;

public class getuserbygroup : IHttpHandler {
    
    public void ProcessRequest (HttpContext context) {
        context.Response.ContentType = "text/plain";
        string uid = context.Request.QueryString["uid"];
        GroupBLL bll = new GroupBLL();
        //List<User> list = bll.GetAllUsersBygid(uid);

        //JavaScriptSerializer jss = new JavaScriptSerializer();
        //string json = jss.Serialize(list);
        //context.Response.Write(json);
    }
    
    
 
    public bool IsReusable {
        get {
            return false;
        }
    }

}