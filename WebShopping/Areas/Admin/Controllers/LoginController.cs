using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using WebShopping.Areas.Admin.Models;
using WebShopping.Models;

namespace WebShopping.Areas.Admin.Controllers
{
    public class LoginController : AdminBaseController
    {
        private TinaFlowers_DBContext tinaFlowers_DBContext = new TinaFlowers_DBContext();

        [AllowAnonymous]
        public ActionResult Index()
        {
            quan_tri_vien quanTriVien = (quan_tri_vien)HttpContext.Session["QuanTriVienSession"];
            if (quanTriVien != null) {
                return RedirectToRoute("/admin/home");
            }
            return View();
        }

        [AllowAnonymous]
        [HttpPost]
        public ActionResult LoginPost(QuanTriVienDangNhap quanTriVienDangNhap)
        {
            try
            {
                if (string.IsNullOrEmpty(quanTriVienDangNhap.taiKhoan) || string.IsNullOrEmpty(quanTriVienDangNhap.matKhau)) return Error("Tài khoản hoặc mật khẩu không được để trống");

                quan_tri_vien quanTriVien = tinaFlowers_DBContext.quan_tri_vien.FirstOrDefault(x => x.TaiKhoan == quanTriVienDangNhap.taiKhoan );
                if (quanTriVien == null) return Error("Sai tài khoản hoặc mật khẩu.");
                if(!quanTriVien.MatKhau.Equals(quanTriVienDangNhap.matKhau)) return Error("Sai tài khoản hoặc mật khẩu.");
                quanTriVien.MatKhau = "";

                HttpContext.Session["QuanTriVienSession"] = quanTriVien;

                return Success();
            }
            catch(Exception ex)
            {
                return Error(ex.Message);
            }
        }
    }
}