﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace WebShopping.Controllers
{
    public class CheckoutController : BaseController
    {
        // GET: Checkout
        public ActionResult Index()
        {
            return View();
        }
    }
}