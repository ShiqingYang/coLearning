using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Text;
using Model;
using DAL;

/// <summary>
///SetGroupByGradeBLL 的摘要说明
/// </summary>
namespace BLL
{
    public class SetGroupByGradeBLL
    {
        public SetGroupByGradeBLL()
        {
            //
            //TODO: 在此处添加构造函数逻辑
            //
        }
        SetGroupByGradeDAL dal=new SetGroupByGradeDAL();
        public int SetGroupByGrade(string klass)
        {
            int l = dal.LeaderAssign(klass);
            int m = dal.MemberAssign(klass);
            int s=1;
            int sm = 1;
            for (int i = 1; i < 6; i++)
            {
                s=dal.SetLeaderId(i, klass);
            }
            
            for (int i = 1; i < 6; i = i + 2)
            {
                for (int t = 0; t < 5; t++)
                {
                    sm = dal.SetMembergroupId(i,t,klass);
                }
            }
            for (int i = 2; i < 6; i = i + 2)
            {
                for (int t = 0; t < 5; t++)
                {
                    sm = dal.SetMembergroupId2(i,t,klass);
                }
            }
            if (l*m*s*sm!=0)
            {
                return 1;
            }
            else 
                return 0;
        }

        public bool isVote(string stunum, out int msg)
        {
            bool i;
            i = dal.isVote(stunum);
            if (i == true)
            {
                msg = 1;
            }
            else
            {
                msg = 0;
            }
            return i;
        }

        public int perCount(string klass, out int msg1)
        {
            int tc = dal.perCount(klass);
            msg1 = tc;
            return tc;
        }

        public int gradeCount(string klass, out int msg2)
        {
            int tc = dal.gradeCount(klass);
            msg2 = tc;
            return tc;
        }


        //投票
        public bool vote(string stunum, int i, out int msg)
        {
            bool r;
            r = dal.vote(stunum, i);
            if (r == true)
            {
                msg = 1;
            }
            else
            {
                msg = 0;
            }

            return r;
        }
    }
}