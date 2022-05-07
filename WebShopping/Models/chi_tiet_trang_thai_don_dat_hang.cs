namespace WebShopping.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class chi_tiet_trang_thai_don_dat_hang
    {
        [Key]
        public long ChiTietTrangThaiDonDatHangId { get; set; }

        public long? DonDatHangId { get; set; }

        [StringLength(20)]
        public string TrangThai { get; set; }

        public DateTime? NgayTao { get; set; }

        public virtual don_dat_hang don_dat_hang { get; set; }
    }
}
