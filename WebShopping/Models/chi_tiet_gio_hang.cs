namespace WebShopping.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class chi_tiet_gio_hang
    {
        [Key]
        public int ChiTietGioHangId { get; set; }

        public int? GioHangId { get; set; }

        public string SanPhamId { get; set; }

        public int? SoLuong { get; set; }

        public virtual gio_hang gio_hang { get; set; }

        public virtual san_pham san_pham { get; set; }
    }
}
