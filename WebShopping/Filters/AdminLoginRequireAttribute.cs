using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using WebShopping.Models;

namespace WebShopping.Filters
{
    public class AdminLoginRequireAttribute : ActionFilterAttribute
    {
        public override void OnActionExecuting(ActionExecutingContext filterContext)
        {
            try
            {

                if (filterContext.ActionDescriptor.IsDefined(typeof(AllowAnonymousAttribute), true)) return;
                quan_tri_vien adminSession = (quan_tri_vien)filterContext.HttpContext.Session["QuanTriVienSession"];

                if (adminSession == null)
                {
                    if (filterContext.HttpContext.Request.IsAjaxRequest()) {
                        filterContext.Result = new RedirectResult("/admin/adminbase/unauthenticated");
                    } else
                    {
                        filterContext.Result = new RedirectResult("/admin/login");
                    }  

                }

            }
            catch (Exception ex)
            {

            }
            base.OnActionExecuting(filterContext);

        }
    }
}