using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Model;
using DAL;

namespace BLL
{
    public class AvgScoreBLL
    {
        private AvgScoreDAL dal = new AvgScoreDAL();


        //查询平均分数1
        public int AvgScore1(out int s1)
        {
            int s=dal.AvgScore1();
            s1 = s;
            return s;
        }
        //查询平均分数2
        public int AvgScore2(out int s2)
        {
            int s = dal.AvgScore2();
            s2 = s;
            return s;
        }
        //查询平均分数1
        public int AvgScore3(out int s3)
        {
            int s = dal.AvgScore3();
            s3 = s;
            return s;
        }
        //查询平均分数4
        public int AvgScore4(out int s4)
        {
            int s = dal.AvgScore4();
            s4 = s;
            return s;
        }



    }
}
