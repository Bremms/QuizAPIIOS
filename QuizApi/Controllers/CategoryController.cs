using database;
using PetaPoco;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;

namespace QuizApi.Controllers
{
    public class CategoryController : ApiController
    {
        private Database db;
        public CategoryController()
        {
            db = new Database("database");
        }

        [HttpGet]
        public List<QuizCategory> FetchRandomCategories()
        {
            return db.Fetch<QuizCategory>("SELECT TOP 5 * FROM QuizCategory ORDER BY newid()");
        }

    }
}
