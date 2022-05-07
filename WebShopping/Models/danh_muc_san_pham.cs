namespace WebShopping.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class danh_muc_san_pham
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public danh_muc_san_pham()
        {
            san_pham = new HashSet<san_pham>();
        }

        [Key]
        public int DanhMucSanPhamId { get; set; }

        [StringLength(100)]
        public string TenDanhMucSanPham { get; set; }

        public int? SoLuongSanPham { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<san_pham> san_pham { get; set; }
    }
}
