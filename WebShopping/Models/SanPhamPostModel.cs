using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebShopping.Models
{
    public class SanPhamPostModel
    {
        public string SanPhamId { get; set; }
        public string TenSanPham { get; set; }
        public int DanhMucSanPhamId { get; set; }
        public int Gia { get; set; }
        public string AnhDaiDien_Base64 { get; set; }
        public string MoTa { get; set; }
        public string Tag { get; set; }
        public string[] AnhSanPham { get; set; }
        public int[] AnhSanPhamXoa { get; set; }
    }
}