using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using WebShopping.Models;

namespace WebShopping.Controllers
{
    public class HomeController : Controller
    {
        TinaFlowers_DBContext db = new TinaFlowers_DBContext();
        // GET: Home
        public ActionResult Index()
        {
            return View();
        }


        public ActionResult Contact()
        {
            return View();
        }

        public ActionResult HuongDanThanhToan()
        {
            return View();
        }

        public ActionResult CamKet()
        {
            return View();
        }

        public ActionResult RenderNav()
        {
            List<danh_muc_san_pham> listDanhMuc = db.danh_muc_san_pham.ToList();
            return PartialView("_HeaderPartialView", listDanhMuc);
        }
    }
}