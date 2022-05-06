using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using WebShopping.Models;

namespace WebShopping.Controllers
{
    public class ProductController : Controller
    {
        Shopping_DBContext db = new Shopping_DBContext();
        // GET: Product
        public ActionResult Index()
        {
            return View();
        }

        public ActionResult Details(int id)
        {
            var product = db.Products.SqlQuery("Select * from ");
            return View();
        }

    }
}