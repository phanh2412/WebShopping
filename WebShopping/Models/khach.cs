namespace WebShopping.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("khach")]
    public partial class khach
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public khach()
        {
            don_dat_hang = new HashSet<don_dat_hang>();
            gio_hang = new HashSet<gio_hang>();
        }

        public int KhachId { get; set; }

        [StringLength(50)]
        public string HoVaTen { get; set; }

        [StringLength(200)]
        public string Email { get; set; }

        [StringLength(20)]
        public string Phone { get; set; }

        [Column(TypeName = "date")]
        public DateTime? NgaySinh { get; set; }

        public DateTime? NgayTao { get; set; }

        [StringLength(100)]
        public string MatKhau { get; set; }

        public bool? DangHoatDong { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<don_dat_hang> don_dat_hang { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<gio_hang> gio_hang { get; set; }
    }
}
