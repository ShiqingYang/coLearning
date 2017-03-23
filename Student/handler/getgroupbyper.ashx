<%@ WebHandler Language="C#" Class="getgroupbyper" %>

using System;
using System.Web;
using System.Collections.Generic;
using System.Web.Script.Serialization;
using System.Text;
using Model;
using BLL;

public class getgroupbyper : IHttpHandler {
    
    public void ProcessRequest (HttpContext context) {
        context.Response.ContentType = "text/plain";
        string uid = context.Request.Form["uid"];
        GroupBLL bll = new GroupBLL();
        string group=bll.GetGroupId(uid);
        string leader = bll.GetGroupLeader(uid);
        
        context.Response.Write(group+","+leader);
        
        
    }
    /*private string GetTable()
    {
        //2、读取列表
        GroupBLL bll = new GroupBLL();
        List<User> list = new List<User>();
        try
        {            
            list = bll.GetPartners(uid);
        }
        catch (Exception ex)
        {
            return ex.Message;
        }


        //3、拼表格
        StringBuilder sb = new StringBuilder();
        sb.Append("<div id='groupDetail'>");
        sb.Append("<p></p>");
        for (int i = 0; i < list.Count; i++)
        {
            User p = list[i];
            sb.Append("<tr>");
            sb.Append("</tr>");
        }
        sb.Append("</table>");
        return sb.ToString();
    }
 */
    public bool IsReusable {
        get {
            return false;
        }
    }

}