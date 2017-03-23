using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;


public partial class Student_Quize : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string rans = "";
        int i = 1;
        SqlConnection conn = BaseClass.DBCon();
        conn.Open();
        SqlCommand cmd = new SqlCommand("select  * from tb_tvedio where Vediotitle='"+ Session["KM"]+"'", conn);
        SqlDataReader sdr = cmd.ExecuteReader();
        while (sdr.Read())
        {
            Literal littxt = new Literal();
            Literal litti = new Literal();
                      
            RadioButtonList cbk = new RadioButtonList();
           
            cbk.ID = "cbk" + i.ToString();
            littxt.Text = i.ToString() + "." + Server.HtmlEncode(sdr["testContent"].ToString()) + "<br><Blockquote>";
            litti.Text = "</Blockquote>";
            cbk.Items.Add("A." + Server.HtmlEncode(sdr["TestAns1"].ToString()));
            cbk.Items.Add("B." + Server.HtmlEncode(sdr["TestAns2"].ToString()));
            cbk.Items.Add("C." + Server.HtmlEncode(sdr["TestAns3"].ToString()));
            cbk.Items.Add("D." + Server.HtmlEncode(sdr["TestAns4"].ToString()));
            cbk.Font.Size = 14;
            for (int j = 1; j <= 4; j++)
                cbk.Items[j - 1].Value = j.ToString();
            rans += sdr["RightAns"].ToString();
            Session["Rans"] = rans;
            Panel1.Controls.Add(littxt);
            Panel1.Controls.Add(cbk);
            Panel1.Controls.Add(litti);
            i++;
        }
        Session["a"] = 1;
        Session["n"] = i - 1;
        sdr.Close();
        conn.Close();
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        int n = Convert.ToInt16(Session["n"]);
        string sans = "";
        for (int i = 1; i <= n; i++)
        {
            RadioButtonList list = (RadioButtonList)Panel1.FindControl("cbk" + i.ToString());
            if (list != null)
            {
                if (list.SelectedValue.ToString() != "")
                    sans += list.SelectedValue.ToString();
                else
                    sans += "0";
            }
        }
        Session["Sans"] = sans;
        //string sql = "Insert into tb_expnum set StuNo='" + Session["ID"] + "',StuName='" + Session["name"] + "',RightAns='" + Session["Sans"].ToString() + "', StudentAns='" + sans + "'";
        string sql = "update tb_expnum set StudentAns='"+sans+"' where StuNo='"+Session ["ID"].ToString() +"'";
        BaseClass.OperateData(sql);
        Response.Redirect("ExamResult.aspx?BInt=" + n.ToString());
    }
}