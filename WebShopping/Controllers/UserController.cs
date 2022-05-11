using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using WebShopping.Models;
using WebShopping.Providers;
using WebShopping.Filters;
namespace WebShopping.Controllers
{
    public class UserController : BaseController
    {
        TinaFlowers_DBContext db = new TinaFlowers_DBContext();
        public ActionResult Index()
        {
            return View();
        }

        public ActionResult Login()
        {
            khach nguoidung = (khach)HttpContext.Session["NguoiDungSession"];
            if (nguoidung != null) return Redirect("/");
            return View();
        }

        public ActionResult Logout()
        {
            HttpContext.Session["NguoiDungSession"] = null;
            return Redirect("/user/login");
        }


        [HttpPost]
        public ActionResult LoginPost(UserLoginPost model)
        {
            try
            {
                if (string.IsNullOrEmpty(model.Email)) return Error("Email không được để trống.");
                if (string.IsNullOrEmpty(model.Password)) return Error("Mật khẩu không được để trống.");
                khach nguoidung = db.khaches.FirstOrDefault(x => x.Email == model.Email);
                if (nguoidung == null) return Error("Sai email hoặc mật khẩu");

                model.Password = HelperProvider.CreateMD5(model.Password = HelperProvider.CreateMD5(model.Password));
                if(nguoidung.MatKhau != model.Password) return Error("Sai email hoặc mật khẩu");
                nguoidung.MatKhau = "";
                HttpContext.Session["NguoiDungSession"] = nguoidung;

                return Success();
            }
            catch (Exception ex) { return Error(ex.Message); }

        }

        [HttpPost]
        public ActionResult RegisterPost(UserRegisterPost model)
        {
            try
            {
                if (string.IsNullOrEmpty(model.Email)) return Error("Email không được để trống.");
                if (string.IsNullOrEmpty(model.Name)) return Error("Họ tên không được để trống.");
                if (string.IsNullOrEmpty(model.Password)) return Error("Mật khẩu không được để trống.");

                khach nguoidung = db.khaches.FirstOrDefault(x => x.Email == model.Email);
                if (nguoidung != null) return Error("Email này đã có người sử dụng.");

                nguoidung = new khach();
                nguoidung.DangHoatDong = true;
                nguoidung.Email = model.Email;
                nguoidung.HoVaTen = model.Name;
                nguoidung.NgayTao = DateTime.Now;
                nguoidung.MatKhau = HelperProvider.CreateMD5(model.Password = HelperProvider.CreateMD5(model.Password));
                db.khaches.Add(nguoidung);
                db.SaveChanges();
                return Success();
            }
            catch (Exception ex) { return Error(ex.Message); }

        }

        [UserLoginRequire]
        public ActionResult Order()
        {
            khach nguoidung = (khach)HttpContext.Session["NguoiDungSession"];
            ViewBag.ListOrder = db.don_dat_hang.Where(x => x.KhachId == nguoidung.KhachId).ToList();

            return View();
        }

        [HttpGet]
        [UserLoginRequire]
        public ActionResult CancelOrder(string id)
        {
            try
            {
                khach nguoidung = (khach)HttpContext.Session["NguoiDungSession"];
                don_dat_hang donDatHang = db.don_dat_hang.FirstOrDefault(x=>x.DonDatHangId == id && x.KhachId==nguoidung.KhachId);
                if (donDatHang == null) return Error("Không tìm thấy đơn đặt hàng");

                donDatHang.TrangThai = Constant.TrangThaiDonDatHang.KHACH_HANG_HUY;
                db.SaveChanges();
                return Success();
            }
            catch(Exception ex) { return Error(); }
        }


        [HttpGet]
        [UserLoginRequire]
        public ActionResult GetListOrderDetail(string id)
        {
            try
            {
                khach nguoidung = (khach)HttpContext.Session["NguoiDungSession"];
                don_dat_hang donDatHang = db.don_dat_hang.FirstOrDefault(x => x.DonDatHangId == id && x.KhachId == nguoidung.KhachId);
                if (donDatHang == null) return Error("Không tìm thấy đơn đặt hàng");

                var lsOrder = db.chi_tiet_don_dat_hang
                    .Where(x => x.DonDatHangId == donDatHang.DonDatHangId)
                    .Select(x => new { x.ChiTietDonDatHangId,x.Gia,x.SoLuongMua,x.SanPhamId,x.san_pham.TenSanPham,x.san_pham.AnhDaiDien })
                    .ToList();                
                return Success(lsOrder);
            }
            catch (Exception ex) { return Error(); }
        }



    }
}