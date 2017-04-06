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
using DAL;
using BLL;


public partial class Student_MessageWrite : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Text = Session ["name"].ToString ();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string MessTime = System.DateTime.Now.ToString();
        string UserName = Session ["name"].ToString ();
        string MessContent = TextBox3.Text;
        Message message = new Message();
        message.Add(MessTime, UserName, MessContent);
        TextBox3.Text = "";
    }
}