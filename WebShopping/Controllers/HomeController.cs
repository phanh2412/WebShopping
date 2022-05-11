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

        public ActionResult RenderProduct()
        {
            List<san_pham> listSanPham = db.san_pham.OrderBy(x=>Guid.NewGuid()).Take(8).ToList();

            return PartialView("SanPhamTrangChu", listSanPham);
        }

        public ActionResult SearchProduct(string key)
        {
            var listSanPham = db.san_pham.Where(n => n.TenSanPham.Contains(key));
            return PartialView("_HeaderPartialView", listSanPham.OrderBy(n => n.TenSanPham));
        }
    }
}