using database;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace database
{
    public partial class QuizQuestion
    {
        public List<QuizAnswer> QuizAnswers { get; set; }
    }
}