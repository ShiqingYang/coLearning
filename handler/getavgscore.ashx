<%@ WebHandler Language="C#" Class="getavgscore" %>

using System;
using System.Web;
using System.Web.SessionState;
using Model;
using BLL;

public class getavgscore : IHttpHandler {
    
    public void ProcessRequest (HttpContext context) {
        context.Response.ContentType = "text/plain";
        int s1, s2, s3, s4;
        AvgScoreBLL bll = new AvgScoreBLL();
        bll.AvgScore1(out s1);
        bll.AvgScore1(out s2);
        bll.AvgScore1(out s3);
        bll.AvgScore1(out s4);
        context.Response.Write(s1 + "," + s2 + "," + s3+","+s4);
    }
 
    public bool IsReusable {
        get {
            return false;
        }
    }

}