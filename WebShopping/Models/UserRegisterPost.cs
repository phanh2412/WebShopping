using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebShopping.Models
{
    public class UserRegisterPost
    {
        public string Email { get; set; }
        public string Password { get; set; }
        public string Name { get; set; }
    }
}