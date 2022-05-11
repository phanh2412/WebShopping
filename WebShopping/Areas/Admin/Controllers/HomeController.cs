using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using WebShopping.Models;
namespace WebShopping.Areas.Admin.Controllers
{
    public class HomeController : AdminBaseController
    {
        private TinaFlowers_DBContext db = new TinaFlowers_DBContext();
        public ActionResult Index()
        {
            ViewBag.TotalUser = db.khaches.Count(x => x.DangHoatDong == true);
            ViewBag.TotalDoneOrder = db.don_dat_hang.Count(x => x.TrangThai == don_dat_hang.EnumTrangThai.HOAN_THANH);
            ViewBag.TotalPendingOrder = db.don_dat_hang.Count(x => x.TrangThai == don_dat_hang.EnumTrangThai.CHO_XAC_NHAN);

            ViewBag.TotalCustomerCancelOrder = db.don_dat_hang.Count(x => x.TrangThai == don_dat_hang.EnumTrangThai.KHACH_HANG_HUY);
            ViewBag.TotalShopCancelOrder = db.don_dat_hang.Count(x => x.TrangThai == don_dat_hang.EnumTrangThai.CUA_HANG_HUY);

            return View();
        }

        [HttpGet]
        public ActionResult GetListOrderNewest() {
            try {
                var lsOrderNewest = db.don_dat_hang.OrderByDescending(x => x.NgayTao).Select(x => new { x.DonDatHangId, x.khach.HoVaTen, x.NgayTao, x.TongTien, x.TrangThai }).Take(10).ToList();
                return Success(lsOrderNewest);
            }
            catch (Exception ex) {
                return Error(ex.Message);
            }
        }

 

    }
}