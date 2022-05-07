namespace WebShopping.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class chi_tiet_don_dat_hang
    {
        [Key]
        public long ChiTietDonDatHangId { get; set; }

        public int? SanPhamId { get; set; }

        public long? DonDatHangId { get; set; }

        public int? SoLuongMua { get; set; }

        public int? Gia { get; set; }

        public virtual don_dat_hang don_dat_hang { get; set; }

        public virtual san_pham san_pham { get; set; }
    }
}
