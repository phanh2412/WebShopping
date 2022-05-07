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
        public ActionResult LoginPost(AdminSession adminLogin)
        {
            try
            {
                return Success();
            }
            catch(Exception ex)
            {
                return Error(ex.Message);
            }
        }
    }
}