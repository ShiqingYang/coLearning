using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Drawing;
using System.Data;
using System.IO;

public partial class Student_shujukushihua : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        CrateImage();

    }
    private void CrateImage()
    {
        {
            int width = 600, height = 440;
            Bitmap image = new Bitmap(width, height);//创建位图对象
            Graphics g = Graphics.FromImage(image);//创建画布
            g.Clear(Color.White);//设置(清空)画布背景色
            g.FillRectangle(Brushes.WhiteSmoke, 0, 0, image.Width, image.Height);//填充画布颜色
            g.DrawRectangle(new Pen(Color.Blue), 0, 0, image.Width - 1, image.Height - 1);//画边框
            Font font1 = new Font("宋体", 20, FontStyle.Regular);//设置字体、字号、文本修饰
            Brush brush1 = new SolidBrush(Color.Blue);//创建笔刷（颜色）
            g.DrawString("" + Session["name"] + "经验值查看", font1, brush1, new PointF(130, 30));
            Pen mypen = new Pen(Color.Blue, 1);//brush
            Pen mypen1 = new Pen(Color.Blue, 2);
            //绘制横向线条10根
            int y = 106;
            for (int i = 0; i < 9; i++)
            {
                g.DrawLine(mypen, 60, y, 540, y);
                y = y + 26;
            }
            g.DrawLine(mypen1, 60, y, 540, y);
            //绘制纵向线条12根
            int x = 100;
            for (int i = 0; i < 11; i++)
            {
                g.DrawLine(mypen, x, 80, x, 340);
                x = x + 40;
            }
            g.DrawLine(mypen1, x - 480, 80, x - 480, 340);
            Font font = new Font("Arial", 9, FontStyle.Regular);//设置字体、字号、文本修饰
            //添加x轴标记
            String[] n = { "测试", "讨论", "发帖", "回帖", "点赞" };
            x = 62;
            for (int i = 0; i <4; i++)
            {
                g.DrawString(n[i].ToString(), font, Brushes.Red, x, 348);
                x = x + 40;
            }
            //添加y轴标记
            String[] m = { "10", "9", "8", "7", "6", "5", "4", "3", "2", "1", "0" };
            y = 85;
            for (int i = 0; i < 11; i++)
            {
                g.DrawString(m[i].ToString(), font, Brushes.Red, 25, y);
                y = y + 26;
            }
            //检索数据并绘制柱状图
            int[] Count = new int[4];
            string cmdtxt2 = "select *  from tb_expnum where StuNo=" + Session["ID"] + "";
            SqlConnection conn = BaseClass.DBCon();
            conn.Open();
            SqlDataAdapter da = new SqlDataAdapter(cmdtxt2, conn);
            DataSet ds = new DataSet();
            da.Fill(ds);
            for (int j = 0; j < 4; j++)
            {
                Count[j] = Convert.ToInt32(ds.Tables[0].Rows[0][j + 4].ToString());
            }
            //显示柱状效果
            x = 70;//图的初始位置
            for (int i = 0; i < 4; i++)
            {
                SolidBrush mybrush = new SolidBrush(Color.Blue);
                g.FillRectangle(mybrush, x, 340 - Count[i] * 26 , 20, Count[i] * 26 );//填充画布颜色
                x = x + 40;
            }
            //页面显示图像
            MemoryStream ms = new MemoryStream();//创建内存数据流对象
            image.Save(ms, System.Drawing.Imaging.ImageFormat.Gif);//画布对象以GIF格式存储
            Response.ClearContent();//清空缓冲区
            Response.ContentType = "image/Gif";//设置输出输出流类型
            Response.BinaryWrite(ms.ToArray());//将内存数据流的图像输出到页面，即运行的结果是图像
        }
    }
}