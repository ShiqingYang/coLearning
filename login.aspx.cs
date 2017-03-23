using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Text;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;

public partial class login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    public void clear()
    {
        txtCode.Text = "";
        txtNum.Text = "";
        txtPwd.Text = "";
    }
    protected void btnLogin_Click(object sender, EventArgs e)
    {
        string code = txtCode.Text.Trim();
        string num = txtNum.Text.Trim();
        string pwd = txtPwd.Text.Trim();
        LoginBLL bll = new LoginBLL();
        if (Session["code"].ToString().ToLower() == code.ToLower())
        {
            if (this.ddlStatus.SelectedValue == "学生")
            {
                if (bll.checkStudent(num, pwd))
                {
                    Session["ID"] = txtNum.Text.Trim();
                    Session["name"] = bll.getStuName(num);
                    Session["klass"] = bll.getClass(num);
                
                    clear();
                    Response.Redirect("~/Student/Default.aspx");
                }
                else
                {
                    Response.Write("<script>alert('您不是学生或者用户名和密码错误');location='Login.aspx'</script>");
                }
            }
            else if (this.ddlStatus.SelectedValue == "教师")
            {
                if (bll.checkTeacher(num, pwd))
                {
                    Session["ID"] = txtNum.Text;
                    Session["name"] = bll.getTeaName(num);
                    clear();
                    Response.Redirect("~/Teacher/Default.aspx");
                }
                else 
                {
                    Response.Write("<script>alert('您不是教师或者用户名和密码错误');location='Login.aspx'</script>");
                }
            }
            else if (this.ddlStatus.SelectedValue == "管理员")
            {
                if (bll.checkAdmin(num, pwd))
                {
                    Session["ID"] = txtNum.Text;
                    Session["name"] = bll.getAName(num);
                    clear();
                    Response.Redirect("~/Admin/Default.aspx");
                }
                else 
                {
                    Response.Write("<script>alert('您不是管理员或者用户名和密码错误');location='Login.aspx'</script>");
                }
            }
        }
        else
        {
            Response.Write("<script>alert('验证码错误');location='Login.aspx'</script>");
        }
    }
}