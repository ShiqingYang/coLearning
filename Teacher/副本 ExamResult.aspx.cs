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
        string Resultstr = "select tb_student.StuName,score1,score2,score3,score4 from tb_grade,tb_student where tb_grade.StuNo=tb_student.StuNo";
        BaseClass.BindDG(GridView1, Resultstr, "result");
        string sqlavg = "select AVG(score1) from tb_grade where klass='1604班'";
        Label5.Text = BaseClass.Sum(sqlavg);
        string sqlavg2 = "select AVG(score2) from tb_grade where klass='1604班'";
        Label6.Text = BaseClass.Sum(sqlavg2);
        string sqlavg3= "select AVG(score3) from tb_grade where klass='1604班'";
        Label7.Text = BaseClass.Sum(sqlavg3);
        string sqlavg4 = "select AVG(score4) from tb_grade where klass='1604班'";
        Label8.Text = BaseClass.Sum(sqlavg4);
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        GridView1.Visible = true;
        string banji=DropDownList1.SelectedItem.Text;
        string zubie = DropDownList2.SelectedItem.Text;
        if (TextBox1.Text == "")
        {
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
        }
        else
        {

            string Resultstr = "select tb_student.StuName,score1,score2,score3,score4 from tb_grade,tb_student where tb_student.StuName like '%" + TextBox1.Text.Trim() + "%' and tb_grade.StuNo=tb_student.StuNo and tb_grade.klass='" + banji + "'";
                BaseClass.BindDG(GridView1, Resultstr, "result");
        }
 
    }
}