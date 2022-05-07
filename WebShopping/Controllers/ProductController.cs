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
            var product = db.Products.SqlQuery("select * from Products p join Categories c on p.CatID = c.CatID where ProductID = @id");
            if (product == null)
            {
                return RedirectToAction("Index");
            }
            return View(product);
        }

    }
}