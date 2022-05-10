using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using WebShopping.Models;
using WebShopping.Providers;
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
    }
}