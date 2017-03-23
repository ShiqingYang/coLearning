using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
///User 的摘要说明
/// </summary>
/// 
namespace Model
{
    public class User
    {
        public User()
        {
            //
            //TODO: 在此处添加构造函数逻辑
            //
        }
        private string usernum;
        private string username;
        private string groupId;
        private string groupIdentity;


        //封装，通过属性接口来访问类中的私有变量
        public string UserNum
        {
            set
            {
                this.usernum = value;
            }
            get
            {
                return this.usernum;
            }
        }
        
        public string Username
        {
            set
            {
                this.username = value;
            }
            get
            {
                return this.username;
            }
        }
        public string GroupId
        {
            set
            {
                this.groupId = value;
            }
            get
            {
                return this.groupId;
            }
        }
        public string GroupIdentity
        {
            set
            {
                this.groupIdentity = value;
            }
            get
            {
                return this.groupIdentity;
            }
        }  

        
    }
}