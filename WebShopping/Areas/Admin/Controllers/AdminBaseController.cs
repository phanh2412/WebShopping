﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.Mvc;
using WebShopping.Filters;
using WebShopping.Models;

namespace WebShopping.Areas.Admin.Controllers
{
    [AdminLoginRequireAttribute]
    public class AdminBaseController : Controller
    {
        [AllowAnonymous]
        public ActionResult Success(object data = null, string message = "")
        {
            return Json(
                new WebShopping.Models.JsonResult()
                {
                    data = data,
                    status = WebShopping.Models.JsonResult.Status.SUCCESS,
                    message = message
                }, JsonRequestBehavior.AllowGet
            );
        }

        [AllowAnonymous]
        public ActionResult Error( string message = "")
        {
            return Json(
                new WebShopping.Models.JsonResult()
                {
                    data = null,
                    status = WebShopping.Models.JsonResult.Status.ERROR,
                    message = message
                }, JsonRequestBehavior.AllowGet
            );
        }


        [AllowAnonymous]
        public ActionResult Unauthorized()
        {
            return Json(
                new WebShopping.Models.JsonResult()
                {
                    data = null,
                    status = WebShopping.Models.JsonResult.Status.UNAUTHOR,
                    message = WebShopping.Models.JsonResult.Message.UNAUTHOR_MESSAGE,
                }, JsonRequestBehavior.AllowGet
            );
        }

        [AllowAnonymous]
        public ActionResult Unauthenticated()
        {
            return Json(
                new WebShopping.Models.JsonResult()
                {
                    data = null,
                    status = WebShopping.Models.JsonResult.Status.UNAUTHEN,
                    message = WebShopping.Models.JsonResult.Message.UNAUTHEN_MESSAGE,
                }, JsonRequestBehavior.AllowGet
            );
        }

    }
}