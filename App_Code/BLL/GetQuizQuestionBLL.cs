using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Model;
using DAL;

namespace BLL
{
    public class GetQuizQuestionBLL
    {
        private GetQuizQuestionDAL dal = new GetQuizQuestionDAL();

        public List<QuizQuestion> Getquizquestion(string examname)
        {
            return dal.Getquizquestion(examname);
        }
        
    }
}
