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
    public class AdminLoginRequireAttribute : ActionFilterAttribute, IAuthenticationFilter
    {
        public void OnAuthentication(AuthenticationContext filterContext)
        {
            if (filterContext.ActionDescriptor.IsDefined(typeof(AllowAnonymousAttribute), true)) return;
            quan_tri_vien adminSession = (quan_tri_vien)filterContext.HttpContext.Session["QuanTriVienSession"];
            if (adminSession == null)
            {
                if (filterContext.HttpContext.Request.IsAjaxRequest())
                {
                    filterContext.Result = new RedirectToRouteResult(new RouteValueDictionary {
                            { "area", "admin" },
                            { "controller", "adminbase" },
                            { "action", "unauthenticated" }
                        });
                }
                else {
                    filterContext.Result = new RedirectToRouteResult(new RouteValueDictionary {
                            { "area", "admin" },
                            { "controller", "login" },
                            { "action", "index" }
                        });
                }

                


            }
        }
        public void OnAuthenticationChallenge(AuthenticationChallengeContext filterContext)
        {

        }
    }
}