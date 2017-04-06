using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Text;
using Model;
using DAL;

/// <summary>
///UploadBLL 的摘要说明
/// </summary>
public class UploadBLL
{
	public UploadBLL()
	{
		//
		//TODO: 在此处添加构造函数逻辑
		//
	}
    UploadDAL dal = new UploadDAL();
    public bool ResourceInsert(string title, string rcontent,string attachment)
    {
        bool r;
        r = dal.ResourceInsert(title,rcontent,attachment);
        return r;
    }
}