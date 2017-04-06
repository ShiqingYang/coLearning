using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.IO;
using System.Data;
using System.Data.SqlClient;
using BLL;

public partial class Teacher_uploadResource : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        if (FileUpload1.HasFile)
        {
            //string UPPATHA = "";//上传文件夹常量地址
            string upPath = "../upload/";  //上传文件路径
            int upLength = 5;        //上传文件大小
            string upFileType = "|image/bmp|image/x-png|image/pjpeg|image/gif|image/png|image/jpeg|application/x-zip-compressed|application/octet-stream|application/msword|application/vnd.openxmlformats-officedocument.wordprocessingml.document|application/vnd.ms-excel|application/vnd.openxmlformats-officedocument.spreadsheetml.sheet|application/vnd.ms-powerpoint|application/vnd.openxmlformats-officedocument.presentationml.presentation|video/x-msvideo|video/quicktime|video/mp4|audio/mpeg|";

            string fileContentType = FileUpload1.PostedFile.ContentType;    //文件类型

            if (upFileType.IndexOf(fileContentType.ToLower()) > 0)
            {
                string name = FileUpload1.PostedFile.FileName;                  // 客户端文件路径

                FileInfo file = new FileInfo(name);

                string fileName = sworktitle.Text.Trim()+DateTime.Now.ToString("yyyyMMddhhmmssfff") + file.Extension; // 文件名称，当前时间（yyyyMMddhhmmssfff）
                string webFilePath = Server.MapPath(upPath) + fileName;        // 服务器端文件路径

                string FilePath = upPath + fileName;   //页面中使用的路径

                if (!File.Exists(webFilePath))
                {
                    if ((FileUpload1.FileBytes.Length / (1024 * 1024)) > upLength)
                    {
                        ClientScript.RegisterStartupScript(this.GetType(), "upfileOK", "alert('大小超出 " + upLength + " M的限制，请处理后再上传！');", true);
                        return;
                    }

                    try
                    {
                        FileUpload1.SaveAs(webFilePath);                               // 使用 SaveAs 方法保存文件

                        string sw_title = sworktitle.Text.Trim();
                        string sw_content = sworkcontent.Text.Trim();
                        string attachment = upPath + fileName;
                        UploadBLL bll = new UploadBLL();
                        if (bll.ResourceInsert(sw_title, sw_content, attachment))
                        {
                            sworktitle.Text = "";
                            sworkcontent.Text = "";
                            FileUpload1.SaveAs(webFilePath);    
                            Response.Write("<script>alert('文件上传成功！');</script>");
                        }

                    }
                    catch (Exception ex)
                    {
                        ClientScript.RegisterStartupScript(this.GetType(), "upfileOK", "alert('提示：文件上传失败" + ex.Message + "');", true);
                    }
                }
                else
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "upfileOK", "alert('提示：文件已经存在，请重命名后上传');", true);
                }


                //string sw_title = sworktitle.Text.Trim();
                //string sw_content = sworkcontent.Text.Trim();
                //string attachment = upPath + fileName;
                //UploadBLL bll = new UploadBLL();
                //bll.ResourceInsert(sw_title, sw_content, attachment);
                


            }
            else
            {
                Response.Write("<script>alert('提示：文件类型不符！');</script>");
               
            }



        }
    }
}