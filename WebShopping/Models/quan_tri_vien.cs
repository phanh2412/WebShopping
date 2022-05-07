namespace WebShopping.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class quan_tri_vien
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public quan_tri_vien()
        {
            don_dat_hang = new HashSet<don_dat_hang>();
        }

        [Key]
        public int QuanTriVienId { get; set; }

        [StringLength(50)]
        public string HoVaTen { get; set; }

        [StringLength(200)]
        public string TaiKhoan { get; set; }

        [StringLength(200)]
        public string MatKhau { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<don_dat_hang> don_dat_hang { get; set; }
    }
}
