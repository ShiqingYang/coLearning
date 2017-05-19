using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Student_Selectexam : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {


    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string StuKC = ddlkm.SelectedItem.Text;

        SqlConnection conn = BaseClass.DBCon();
        conn.Open();
        SqlCommand cmd = new SqlCommand("select count(*) from tb_expnum where StuNo='" + Session["ID"] + "' and examName='" + StuKC + "'", conn);
        //SqlCommand cmd = new SqlCommand("select count(*) from tb_exam where examName='" + StuKC + "'", conn);
        int i = Convert.ToInt32(cmd.ExecuteScalar());
        if (i > 0)
            Response.Write("<script language=javascript>alert('您已经参加过此科目的考试了！')</script>");
        else
        {
            cmd = new SqlCommand("select count(*) from tb_tvideo where videotitle='" + StuKC + "'", conn);
            int n = Convert.ToInt32(cmd.ExecuteScalar());
            if (n > 0)
            {
                cmd = new SqlCommand("insert into tb_expnum(StuNo,StuName,examName)values('" + Session["ID"] + "','" + Session["name"] + "','" +
                  StuKC + "')", conn);
                cmd.ExecuteNonQuery();
                conn.Close();
                Session["KM"] = StuKC;
                Response.Redirect("Exam.html");
            }
            else
                Response.Write("<script language=javascript>alert('此科目没有考试题！')</script>");

        }
    }
}


