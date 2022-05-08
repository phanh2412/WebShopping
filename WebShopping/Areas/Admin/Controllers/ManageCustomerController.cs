using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace WebShopping.Areas.Admin.Controllers
{
    public class ManageCustomerController : AdminBaseController
    {
        // GET: Admin/ManageCustomer
        public ActionResult Index()
        {
            return View();
        }
    }
}