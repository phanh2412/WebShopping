using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using WebShopping.Areas.Admin.Models;

namespace WebShopping.Areas.Admin.Controllers
{
    public class LoginController : AdminBaseController
    {
        [AllowAnonymous]
        public ActionResult Index()
        {
            return View();
        }

        [AllowAnonymous]
        [HttpPost]
        public ActionResult LoginPost(AdminLoginModel adminLoginModel)
        {
            try
            {
                if (string.IsNullOrEmpty(adminLoginModel.account) || string.IsNullOrEmpty(adminLoginModel.password)) return Error("Tài khoản hoặc mật khẩu không được để trống");
                AdminSession adminSession = new AdminSession();
                return Success();
            }
            catch(Exception ex)
            {
                return Error(ex.Message);
            }
        }
    }
}