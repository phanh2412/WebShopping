using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using WebShopping.Areas.Admin.Models;

namespace WebShopping.Filters
{
    public class AdminLoginRequireAttribute : ActionFilterAttribute
    {
        public override void OnActionExecuting(ActionExecutingContext filterContext)
        {
            try
            {

                if (filterContext.ActionDescriptor.IsDefined(typeof(AllowAnonymousAttribute), true)) return;
                AdminSession adminSession = (AdminSession)filterContext.HttpContext.Session["AdminSession"];

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