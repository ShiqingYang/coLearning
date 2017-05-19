using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.SqlClient;
using Model;

namespace DAL
{
    public class AvgScoreDAL
    {
        //查询平均分数1
        public int AvgScore1()
        {
            string sql = "select AVG(score1) from tb_grade where klass='1604班'";
            DataTable dt = SQLHelper.ExecuteTableSql(sql);
            return int.Parse(dt.Rows[0][0].ToString());

        }
        //查询平均分数2
        public int AvgScore2()
        {
            string sql = "select AVG(score2) from tb_grade where klass='1604班'";
            DataTable dt = SQLHelper.ExecuteTableSql(sql);
            return int.Parse(dt.Rows[0][0].ToString());

        }
        //查询平均分数3
        public int AvgScore3()
        {
            string sql = "select AVG(score3) from tb_grade where klass='1604班'";
            DataTable dt = SQLHelper.ExecuteTableSql(sql);
            return int.Parse(dt.Rows[0][0].ToString());

        }
        //查询平均分数4
        public int AvgScore4()
        {
            string sql = "selectAVG(score4) from tb_grade where klass='1604班'";
            DataTable dt = SQLHelper.ExecuteTableSql(sql);
            return int.Parse(dt.Rows[0][0].ToString());

        }
    }
}
