﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace WebShopping.Areas.Admin.Controllers
{
    public class ManageOrderController : AdminBaseController
    {
        // GET: Admin/ManageOrder
        public ActionResult Index()
        {
            return View();
        }
    }
}