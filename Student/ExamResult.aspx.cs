using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Student_ExamResult : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string rans = Session["Rans"].ToString();
        string sans = Session["Sans"].ToString();
        int n = Convert.ToInt32(Request.QueryString["BInt"]);
        int StuScore = 0;
        for (int i = 0; i < n; i++)
        {       
            if (rans.Substring(i,1).Equals(sans.Substring(i,1)))
                StuScore += 10;
        }
            lblResult.Text = StuScore.ToString();
            lblkm.Text = Session["KM"].ToString();
            string sql = "update tb_expnum set Quize_score= '" + StuScore + "' where StuNo='" + Session["ID"]+"'" ;
            BaseClass.OperateData(sql);
        

       
    }
}