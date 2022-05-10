namespace WebShopping.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class san_pham
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public san_pham()
        {
            anh_san_pham = new HashSet<anh_san_pham>();
            chi_tiet_don_dat_hang = new HashSet<chi_tiet_don_dat_hang>();
            chi_tiet_gio_hang = new HashSet<chi_tiet_gio_hang>();
        }

        [Key]
        [StringLength(36)]
        public string SanPhamId { get; set; }

        [StringLength(200)]
        public string TenSanPham { get; set; }

        public int? DanhMucSanPhamId { get; set; }

        public int? Gia { get; set; }

        [StringLength(200)]
        public string AnhDaiDien { get; set; }

        public string MoTa { get; set; }

        public bool? DangKichHoat { get; set; }

        public DateTime? NgayTao { get; set; }

        [StringLength(200)]
        public string Tag { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<anh_san_pham> anh_san_pham { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<chi_tiet_don_dat_hang> chi_tiet_don_dat_hang { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<chi_tiet_gio_hang> chi_tiet_gio_hang { get; set; }

        public virtual danh_muc_san_pham danh_muc_san_pham { get; set; }
    }
}
