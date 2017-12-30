using database;
using PetaPoco;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Http;

namespace QuizApi.Controllers
{
    public class QuizController : ApiController
    {
        private Database db;

        public QuizController()
        {
            db = new Database("database");
        }

        public List<QuizQuestion> fetchQuizQuestion(int catID)
        {
            var allQuestions = db.Fetch<QuizQuestion>("WHERE CategoryID @0", catID);
            foreach (var question in allQuestions)
            {
                var answers = db.Fetch<QuizAnswer>("WHERE QuizQuestionID = @0", question.ID);
                question.QuizAnswers = answers;
            }

            return allQuestions;
        }

    }
}