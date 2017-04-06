using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Model;
using DAL;

namespace BLL
{
    public class QuestionnaireBLL
    {
        private QuestionnaireDAL dal=new QuestionnaireDAL();
        int l;//是否更新组长身份
        int dnum;//多血质的人数
        //int dleft;//多血质富裕的人数
        int t; //处理多血质的人过多或不足，保证正好有6个组长
        int no; //处理编号

        //查询是否填写过问卷
        public bool isTest(string stunum, out int msg)
        {
            bool i;
            i=dal.isTest(stunum);
            if (i ==true)
            {
                msg = 1;
            }
            else
            {
                msg = 0;
            }
            return i;
        }

        //查询已填写的人数
        public int IstestCount(string klass,out int msg1)
        {
            int tc = dal.IstestCount(klass);
            msg1 = tc;
            return tc;
        }



        //插入分数
        public bool ScoreInsert(string stunum, int score1,int score2,int score3,int score4,string pattern, out int msg)
        {
            bool r;
            r=dal.ScoreInsert(stunum,score1,score2,score3,score4,pattern);
            if (r == true)
            {
                msg = 1;
            }else{
                msg=0;
            }
            
            return r;
        }


        //统计多血质人数
        public int Grouping(string klass)
        {
            l = dal.LeaderAssign(klass);//更新身份为多血质的人为组长
            if (l > 0)
            {
                dnum = dal.DuoxueCount(klass);  //计算多血质的人数
            }
            else
            {
                dnum = 0;
            }
            if (dnum >=5)
            {
                t=dal.DuoxueLeftToMember(klass);  //把6个多血质之外的多血质改为组员
            }
            else
            {
                t = dal.DanzhiLeaderAssign(5 - dnum, klass);  //多血质不足6个，则胆汁质补上
            }
            if (t > 0)
            {
                for (int i = 1; i < 5; i++)
                {
                    no = dal.SetLeaderId(i,klass);  //给组长编号1-6，每组1个组长
                    no = dal.SetMembergroupId(i,klass);  //给组员编号，每组5个组员
                }
                return 1;
            }
            else
            {
                return 0;
            }
        }

    }
}
