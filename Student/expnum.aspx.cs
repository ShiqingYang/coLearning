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
            int width = 600, height = 500;
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
            for (int i = 0; i < 10; i++)
            {
                g.DrawLine(mypen, 60, y, 540, y);
                y = y + 36;
            }
            g.DrawLine(mypen1, 60, y, 540, y);
            //绘制纵向线条12根
            int x = 120;
            g.DrawLine(mypen1, 60, 80, 60, 466);
            for (int i = 0; i < 6; i++)
            {
                g.DrawLine(mypen, x, 80, x, 466);
                x = x + 60;

            }

            Font font = new Font("Arial", 9, FontStyle.Regular);//设置字体、字号、文本修饰
            //添加x轴标记
            String[] n = { "一", "二", "三", "四", "五", "六" };
            x = 80;
            for (int i = 0; i < 6; i++)
            {
                g.DrawString(n[i].ToString(), font, Brushes.Red, x, 466);
                x = x + 60;
            }
            //添加y轴标记
            String[] m = { "100", "90", "80", "70", "60", "50", "40", "30", "20", "10", "0" };
            y = 96;
            for (int i = 0; i < 11; i++)
            {
                g.DrawString(m[i].ToString(), font, Brushes.Red, 25, y);
                y = y + 36;
            }
            //检索数据并绘制柱状图
            int[] Count = new int[5];
            string cmdtxt2 = "select *  from tb_grade where StuNo=" + Session["ID"] + "";
            SqlConnection conn = BaseClass.DBCon();
            conn.Open();
            SqlDataAdapter da = new SqlDataAdapter(cmdtxt2, conn);
            DataSet ds = new DataSet();
            da.Fill(ds);
            for (int j = 0; j < 4; j++)
            {
                Count[j] = Convert.ToInt32(ds.Tables[0].Rows[0][j + 1].ToString());
            }
            //显示柱状效果
            x = 75;//图的初始位置
            for (int i = 0; i < 4; i++)
            {
                Font font3 = new Font("宋体", 20, FontStyle.Regular);//设置字体、字号、文本修饰
                Brush brush3 = new SolidBrush(Color.Red);//创建笔刷（颜色）
                g.DrawString("" + Count[i] + "", font3, brush3, new PointF(x, 436 - Count[i] * 36 / 10));
                SolidBrush mybrush = new SolidBrush(Color.Green);
                g.FillRectangle(mybrush, x, 466 - Count[i] * 36 / 10, 30, Count[i] * 36 / 10);//填充画布颜色
                x = x + 60;
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