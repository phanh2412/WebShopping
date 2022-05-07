using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebShopping.Areas.Admin.Models
{
    public class AdminSession
    {
        public int AccountID { get; set; }
        public string FullName { get; set; }
        public string Phone { get; set; }
        public string Email { get; set; }
        public string Password { get; set; }
        public int RoleID { get; set; }
    }

    public class AdminLoginModel
    {
        public string account { get; set; }
        public string password { get; set; }
    }

}