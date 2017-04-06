<%@ WebHandler Language="C#" Class="getpartner" %>

using System;
using System.Web;
using System.Collections.Generic;
using System.Web.Script.Serialization;
using System.Text;
using Model;
using BLL;

public class getpartner : IHttpHandler {
    
    public void ProcessRequest (HttpContext context) {
        context.Response.ContentType = "text/plain";
        string uid = context.Request.Form["uid"];
        GroupBLL bll = new GroupBLL();
        List<User> list = bll.GetPartnersbygrade(uid);
        JavaScriptSerializer jss = new JavaScriptSerializer();
        string partners = jss.Serialize(list);
        context.Response.Write(partners);
    }
 
    public bool IsReusable {
        get {
            return false;
        }
    }

}