using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Mvc.Filters;
using System.Web.Routing;
using WebShopping.Models;

namespace WebShopping.Filters
{
    public class UserLoginRequireAttribute : ActionFilterAttribute, IAuthenticationFilter
    {
        public void OnAuthentication(AuthenticationContext filterContext)
        {
            if (filterContext.ActionDescriptor.IsDefined(typeof(AllowAnonymousAttribute), true)) return;
            khach nguoidung = (khach)filterContext.HttpContext.Session["NguoiDungSession"];
            if (nguoidung == null)
            {
                if (filterContext.HttpContext.Request.IsAjaxRequest())
                    filterContext.Result = new RedirectToRouteResult(new RouteValueDictionary {
                            { "controller", "base" },
                            { "action", "unauthenticated" }
                        });
                else
                    filterContext.Result = new RedirectToRouteResult(new RouteValueDictionary {
                            { "controller", "user" },
                            { "action", "login" }
                        });
            }
        }
        public void OnAuthenticationChallenge(AuthenticationChallengeContext filterContext)
        {

        }
    }
}