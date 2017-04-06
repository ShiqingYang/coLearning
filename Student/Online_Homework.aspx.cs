using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DAL;
using BLL;
using System.Data;
using System.Data.SqlClient;


public partial class Student_Online_Homework : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        TextBox1.Text = "";
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection conn = BaseClass.DBCon();
        conn.Open();
        SqlCommand cmd = new SqlCommand("select count(*) from tb_homework where StuNo='" + Session["ID"] + "' and ChapTitle='" + DropDownList1.SelectedValue.ToString() + "'", conn);
         int i = Convert.ToInt32(cmd.ExecuteScalar());
         if (i > 0)
             Response.Write("<script language=javascript>alert('您已提交作业！')</script>");
         else
         {
             string Time = System.DateTime.Now.ToString();
             string No = Session["ID"].ToString();
             string Content = TextBox1.Text;
             string Chap = DropDownList1.SelectedValue.ToString();
             Homework homework = new Homework();
             homework.Add(Time, No, Content, Chap);
             TextBox1.Text = "";
         }
    }
}