using database;
using PetaPoco;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Http;

namespace QuizApi.Controllers
{
    public class HighScoreController    : ApiController
    {
        private Database db;
        public HighScoreController()
        {
            db = new Database("database");
        }

        [HttpGet]
        public List<HighScore> FetchHighscoreFor(int CatID)
        {
            return db.Fetch<HighScore>("WHERE CatID = @0", CatID);
        }

        [HttpPost]
        public void SaveHighscore(HighScore highScore)
        {
            db.Insert(highScore);
        }
    }
}