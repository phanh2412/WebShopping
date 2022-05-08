﻿using System.Web.Mvc;

namespace WebShopping.Areas.Admin
{
    public class AdminAreaRegistration : AreaRegistration 
    {
        public override string AreaName 
        {
            get 
            {
                return "Admin";
            }
        }

        public override void RegisterArea(AreaRegistrationContext context) 
        {
            context.MapRoute(
                "Admin_default",
                "Admin/{controller}/{action}/{id}",
                new {  action = "Index",controller="home", id = UrlParameter.Optional },
              new[] { "WebShopping.Areas.Admin.Controllers" }
            );
        }
    }
}