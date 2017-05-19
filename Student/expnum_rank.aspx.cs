using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;
using System.IO;

public partial class Student_expnum_rank : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        int width = 600, height = 500;
        Bitmap image = new Bitmap(width, height);//创建位图对象
        Graphics g = Graphics.FromImage(image);//创建画布
        g.Clear(Color.White);//设置(清空)画布背景色
        g.FillRectangle(Brushes.WhiteSmoke, 0, 0, image.Width, image.Height);//填充画布颜色
        g.DrawRectangle(new Pen(Color.Blue), 0, 0, image.Width - 1, image.Height - 1);//画边框
        Font font1 = new Font("宋体", 20, FontStyle.Regular);//设置字体、字号、文本修饰
        Brush brush1 = new SolidBrush(Color.Blue);//创建笔刷（颜色）
        g.DrawString("" + Session["name"] + "经验值排名", font1, brush1, new PointF(130, 30));

        Font font2 = new Font("宋体", 12, FontStyle.Regular);//设置字体、字号、文本修饰
        Brush brush2 = new SolidBrush(Color.Black);//创建笔刷（颜色）
        g.DrawString("班级平均值", font2, brush2, new PointF(500, 40));

        Font font3 = new Font("宋体", 12, FontStyle.Regular);//设置字体、字号、文本修饰
        Brush brush3 = new SolidBrush(Color.Black);//创建笔刷（颜色）
        g.DrawString("个人经验值", font3, brush3, new PointF(500, 60));

        Pen mypen4 = new Pen(Color.Green, 1);//brush
        g.DrawLine(mypen4, 440, 40, 480, 40);
        Pen mypen5 = new Pen(Color.Red, 1);//brush
        g.DrawLine(mypen5, 440, 60, 480, 60);

        Pen mypen = new Pen(Color.Blue, 1);//brush
        Pen mypen1 = new Pen(Color.Blue, 2);
        Pen mypen2 = new Pen(Color.Red, 2);

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
        x = 115;
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

        int[] Count = new int[4];
        string cmdtxt2 = "select *  from tb_grade where StuNo=" + Session["ID"] + "";
        SqlConnection conn = BaseClass.DBCon();
        conn.Open();
        SqlDataAdapter da = new SqlDataAdapter(cmdtxt2, conn);
        DataSet ds = new DataSet();
        da.Fill(ds);
        conn.Close();
        for (int j = 0; j < 4; j++)//计算占总量的百分比
        {
            Count[j] = Convert.ToInt32(ds.Tables[0].Rows[0][j + 1].ToString());
        }
        //显示折线效果
        SolidBrush mybrush = new SolidBrush(Color.Black);
        Point[] points = new Point[4];
        points[0].X = 120; points[0].Y = 466 - (int)Count[0] * 36/10;
        points[1].X = 180; points[1].Y = 466 - (int)Count[1] * 36/10;
        points[2].X = 240; points[2].Y = 466 - (int)Count[2] * 36/10;
        points[3].X = 300; points[3].Y = 466- (int)Count[3] * 36/10;
        g.DrawLines(mypen2, points);
        //绘制折线
        x = 120;
        for (int i = 0; i < 4; i++)
        {
            Font font5 = new Font("宋体", 20, FontStyle.Regular);//设置字体、字号、文本修饰
            Brush brush5 = new SolidBrush(Color.Red);//创建笔刷（颜色）
            g.DrawString("" + Count[i] + "", font5, brush5, new PointF(x, 466 - (int)Count[i] * 36 / 10));
         
            x = x + 60;
        }

        //页面显示图像
        MemoryStream ms = new MemoryStream();//创建内存数据流对象
        image.Save(ms, System.Drawing.Imaging.ImageFormat.Gif);//画布对象以GIF格式存储
        Response.ClearContent();//清空缓冲区
        Response.ContentType = "image/Gif";//设置输出输出流类型
        Response.BinaryWrite(ms.ToArray());//将内存数据流的图像输出到页面，即运行的结果是图像


        //绘制平均值折线图
      
        Pen mypen3 = new Pen(Color.Green, 2);
        int[] Count1 = new int[5];
        string cmdtxt3 = "select avg(score1),avg(score2),avg(score3),avg(score4) from tb_grade";
        SqlConnection conn2 = BaseClass.DBCon();
        conn2.Open();
        SqlDataAdapter da2 = new SqlDataAdapter(cmdtxt3, conn2);
        DataSet ds2 = new DataSet();
        da2.Fill(ds2);
        conn2.Close();
        for (int j = 0; j <4; j++)//计算占总量的百分比
        {
            Count1[j] = Convert.ToInt32(ds2.Tables[0].Rows[0][j].ToString());
        }
        //显示折线效果
        SolidBrush mybrush3 = new SolidBrush(Color.Green);
        Point[] points2 = new Point[4];
        points2[0].X = 120; points2[0].Y = 466 - (int)Count1[0] * 36 / 10;
        points2[1].X = 180; points2[1].Y = 466 - (int)Count1[1] * 36 / 10;
        points2[2].X = 240; points2[2].Y = 466 - (int)Count1[2] * 36 / 10;
        points2[3].X = 300; points2[3].Y = 466 - (int)Count1[3] * 36 / 10;
       

        g.DrawLines(mypen3, points2);
        //绘制折线
        x = 120;
        for (int i = 0; i < 4; i++)
        {

            Font font5 = new Font("宋体", 20, FontStyle.Regular);//设置字体、字号、文本修饰
            Brush brush5 = new SolidBrush(Color.Green);//创建笔刷（颜色）
            g.DrawString("" + Count1[i] + "", font5, brush5, new PointF(x, 446 - (int)Count1[i] * 36 / 10));
            x = x + 60;
        }
        //页面显示图像
        MemoryStream ms2 = new MemoryStream();//创建内存数据流对象
        image.Save(ms2, System.Drawing.Imaging.ImageFormat.Gif);//画布对象以GIF格式存储
        Response.ClearContent();//清空缓冲区
        Response.ContentType = "image/Gif";//设置输出输出流类型
        Response.BinaryWrite(ms2.ToArray());//将内存数据流的图像输出到页面，即运行的结果是图像
        //写说明
    
        
       
    }
}

    
    
