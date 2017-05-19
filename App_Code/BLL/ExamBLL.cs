using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Model;
using DAL;

namespace BLL
{
    public class ExamBLL
    {
        private ExamDAL dal=new ExamDAL();
        int l;//是否更新组长身份
        int dnum;//多血质的人数
        //int dleft;//多血质富裕的人数
        int t; //处理多血质的人过多或不足，保证正好有6个组长
        int no; //处理编号

        
        //插入分数
        public bool ScoreInsert(string stunum, int score1, out int msg)
        {
            bool r;
            r=dal.ScoreInsert(stunum,score1);
            if (r == true)
            {
                msg = 1;
            }else{
                msg=0;
            }
            
            return r;
        }



    }
}
