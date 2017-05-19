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
    public class QuizQuestion
    {
        public QuizQuestion()
        {
            //
            //TODO: 在此处添加构造函数逻辑
            //
        }
        private string testcontent;
        private string testAns1;
        private string testAns2;
        private string testAns3;
        private string testAns4;
        private string rightAns;


        //封装，通过属性接口来访问类中的私有变量
        public string TestContent
        {
            set
            {
                this.testcontent = value;
            }
            get
            {
                return this.testcontent;
            }
        }

        public string TestAns1
        {
            set
            {
                this.testAns1 = value;
            }
            get
            {
                return this.testAns1;
            }
        }
        public string TestAns2
        {
            set
            {
                this.testAns2 = value;
            }
            get
            {
                return this.testAns2;
            }
        }
        public string TestAns3
        {
            set
            {
                this.testAns3 = value;
            }
            get
            {
                return this.testAns3;
            }
        }
        public string TestAns4
        {
            set
            {
                this.testAns4 = value;
            }
            get
            {
                return this.testAns4;
            }
        }
        public string RightAns
        {
            set
            {
                this.rightAns = value;
            }
            get
            {
                return this.rightAns;
            }
        } 

        
    }
}