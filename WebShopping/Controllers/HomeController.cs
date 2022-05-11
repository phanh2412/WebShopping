using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using WebShopping.Models;

namespace WebShopping.Controllers
{
    public class HomeController : BaseController
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
            List<san_pham> listSanPham = db.san_pham.Where(x=>x.DangKichHoat.Value == true).OrderBy(x=>Guid.NewGuid()).Take(8).ToList();

            return PartialView("SanPhamTrangChu", listSanPham);
        }

    }
}