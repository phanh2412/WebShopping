using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebShopping.Models
{
    public class CartItemVIewModel
    {
        public int ChiTietGioHangId { get; set; }
        public int? GioHangId { get; set; }
        public string SanPhamId { get; set; }
        public int? SoLuong { get; set; }
        public string TenSanPham { get; set; }
        public int? Gia { get; set; }
        public string AnhDaiDien { get; set; }
    }
}