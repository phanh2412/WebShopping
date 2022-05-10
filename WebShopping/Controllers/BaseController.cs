using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using WebShopping.Models;

namespace WebShopping.Controllers
{
    public class BaseController : Controller
    {
        [AllowAnonymous]
        public ActionResult Success(object data = null, string message = "")
        {
            return Json(
                new Models.JsonResult()
                {
                    data = data,
                    status = Models.JsonResult.Status.SUCCESS,
                    message = message
                }, JsonRequestBehavior.AllowGet
            );
        }

        [AllowAnonymous]
        public ActionResult Error(string message = "")
        {
            return Json(
                new Models.JsonResult()
                {
                    data = null,
                    status = Models.JsonResult.Status.ERROR,
                    message = message
                }, JsonRequestBehavior.AllowGet
            );
        }


        [AllowAnonymous]
        public ActionResult Unauthorized()
        {
            return Json(
                new Models.JsonResult()
                {
                    data = null,
                    status = Models.JsonResult.Status.UNAUTHOR,
                    message = Models.JsonResult.Message.UNAUTHOR_MESSAGE,
                }, JsonRequestBehavior.AllowGet
            );
        }

        [AllowAnonymous]
        public ActionResult Unauthenticated()
        {
            return Json(
                new Models.JsonResult()
                {
                    data = null,
                    status = Models.JsonResult.Status.UNAUTHEN,
                    message = Models.JsonResult.Message.UNAUTHEN_MESSAGE,
                }, JsonRequestBehavior.AllowGet
            );
        }

    }
}