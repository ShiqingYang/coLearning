using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using BLL;

public partial class Student_MessageList : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        DataSet ds = Message.LoadAll();
        if (ds != null)
        {
            Response.Write("<br><br>");
            foreach (DataRow dr in ds.Tables[0].Rows)
            {
                Response.Write(dr["MessTime"].ToString());
                Response.Write(" &nbsp;" + dr["UserName"].ToString() + ":  ");
                Response.Write(dr["MessContent"].ToString());
                Response.Write("<br><br>");
              
            }
        }
    }
}