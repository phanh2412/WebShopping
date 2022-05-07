namespace WebShopping.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class gio_hang
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public gio_hang()
        {
            chi_tiet_gio_hang = new HashSet<chi_tiet_gio_hang>();
        }

        [Key]
        public int GioHangId { get; set; }

        public int? KhachId { get; set; }

        public int? TongSanPham { get; set; }

        public long? TongTien { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<chi_tiet_gio_hang> chi_tiet_gio_hang { get; set; }

        public virtual khach khach { get; set; }
    }
}
