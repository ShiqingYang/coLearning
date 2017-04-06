using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using DAL;
using BLL;


public partial class Student_Evaluate_Homework : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {   

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection conn = BaseClass.DBCon();
        conn.Open();
       int score =Convert .ToInt32(TextBox1.Text);
       int id =Convert .ToInt32 ( GridView1.SelectedValue);
      
        Homework homework = new Homework();
        homework.Add2(id,score);
        TextBox1.Text = "";

    }
}