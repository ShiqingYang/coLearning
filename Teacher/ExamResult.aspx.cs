using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Teacher_ExamResult : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        GridView1.Visible = true;
        string banji=DropDownList1.SelectedItem.Text;
        string zubie = DropDownList2.SelectedItem.Text;
        //if (TextBox1.Text == "")
        //{
            if (zubie != "所有")
            {
                string Resultstr = "select tb_student.StuName,score1,score2,score3,score4 from tb_grade,tb_student where tb_grade.StuNo=tb_student.StuNo and tb_grade.klass='" + banji + "'  and groupId='" + zubie + "'";
                BaseClass.BindDG(GridView1, Resultstr, "result");
            }
            else
            {
                string Resultstr = "select tb_student.StuName,score1,score2,score3,score4 from tb_grade,tb_student where tb_grade.StuNo=tb_student.StuNo and tb_grade.klass='" + banji + "'";
                BaseClass.BindDG(GridView1, Resultstr, "result");
            }
       // }
        //else
        //{

            //string Resultstr = "select tb_student.StuName,score1,score2,score3,score4 from tb_grade,tb_student where tb_student.StuName like '%" + TextBox1.Text.Trim() + "%' and tb_grade.StuNo=tb_student.StuNo and tb_grade.klass='" + banji + "'";
               // BaseClass.BindDG(GridView1, Resultstr, "result");
       // }
 
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        GridView2.Visible = true;
        string Resultstr = "select score1,score2,score3,score4 from tb_grade,tb_student where tb_student.StuName ='" + TextBox1.Text.Trim() + "' and tb_grade.StuNo=tb_student.StuNo";
        BaseClass.BindDG(GridView2, Resultstr, "result");
    }
}