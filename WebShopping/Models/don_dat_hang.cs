namespace WebShopping.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class don_dat_hang
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public don_dat_hang()
        {
            chi_tiet_don_dat_hang = new HashSet<chi_tiet_don_dat_hang>();
            chi_tiet_trang_thai_don_dat_hang = new HashSet<chi_tiet_trang_thai_don_dat_hang>();
        }

        [Key]
        public string DonDatHangId { get; set; }

        public int? KhachId { get; set; }

        public long? TongTien { get; set; }

        [StringLength(20)]
        public string TrangThai { get; set; }

        public int? NguoiDuyetDonId { get; set; }

        public DateTime? NgayTao { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<chi_tiet_don_dat_hang> chi_tiet_don_dat_hang { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<chi_tiet_trang_thai_don_dat_hang> chi_tiet_trang_thai_don_dat_hang { get; set; }

        public virtual khach khach { get; set; }

        public virtual quan_tri_vien quan_tri_vien { get; set; }

        public class EnumTrangThai
        {
            public const string CHO_XAC_NHAN = "CHO_XAC_NHAN";
            public const string DANG_XU_LY = "DANG_XU_LY";
            public const string DA_THANH_TOAN = "DA_THANH_TOAN";
            public const string HOAN_THANH = "HOAN_THANH";
            public const string KHACH_HANG_HUY = "KHACH_HANG_HUY";
            public const string CUA_HANG_HUY = "CUA_HANG_HUY";
        }
    }
}
