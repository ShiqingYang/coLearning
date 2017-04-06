using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Text;
using Model;
using DAL;

/// <summary>
///GroupBLL 的摘要说明
/// </summary>
namespace BLL
{
    public class GroupBLL
    {
        public GroupBLL()
        {
            //
            //TODO: 在此处添加构造函数逻辑
            //
        }

        GroupDAL dal = new GroupDAL();
        public List<User> GetPartners(string stunum)
        {
            return dal.GetPartners(stunum);
        }

        //获取所在组号
        public string GetGroupId(string stunum)
        {
            return dal.GetGroupId(stunum);
        }

        //获取组长
        public string GetGroupLeader(string stunum)
        {
            return dal.GetGroupLeader(stunum);
        }

        //获取所在组号成绩
        public string GetGroupIdbygrade(string stunum)
        {
            return dal.GetGroupIdbygrade(stunum);
        }

        //获取组长成绩
        public string GetGroupLeaderbygrade(string stunum)
        {
            return dal.GetGroupLeaderbygrade(stunum);
        }

        public List<User> GetPartnersbygrade(string stunum)
        {
            return dal.GetPartnersbygrade(stunum);
        }
    }
}