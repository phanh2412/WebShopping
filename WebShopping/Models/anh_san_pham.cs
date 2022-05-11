namespace WebShopping.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class anh_san_pham
    {
        [Key]
        public long AnhSanPhamId { get; set; }

        [StringLength(36)]
        public string SanPhamId { get; set; }

        [StringLength(200)]
        public string TenFileAnh { get; set; }

        public virtual san_pham san_pham { get; set; }
    }
}
