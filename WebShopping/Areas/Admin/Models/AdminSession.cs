using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebShopping.Areas.Admin.Models
{
    public class QuanTriVienSession
    {
        public int QuanTriVienId { get; set; }
        public string HoVaTen { get; set; }
        public string TaiKhoan { get; set; }
        public string MatKhau { get; set; }
    }

    public class QuanTriVienDangNhap
    {
        public string taiKhoan { get; set; }
        public string matKhau { get; set; }
    }

}