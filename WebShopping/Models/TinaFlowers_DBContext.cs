using System;
using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity;
using System.Linq;

namespace WebShopping.Models
{
    public partial class TinaFlowers_DBContext : DbContext
    {
        public TinaFlowers_DBContext()
            : base("name=TinaFlowers_DBContext")
        {
        }

        public virtual DbSet<anh_san_pham> anh_san_pham { get; set; }
        public virtual DbSet<chi_tiet_don_dat_hang> chi_tiet_don_dat_hang { get; set; }
        public virtual DbSet<chi_tiet_gio_hang> chi_tiet_gio_hang { get; set; }
        public virtual DbSet<chi_tiet_trang_thai_don_dat_hang> chi_tiet_trang_thai_don_dat_hang { get; set; }
        public virtual DbSet<danh_muc_san_pham> danh_muc_san_pham { get; set; }
        public virtual DbSet<don_dat_hang> don_dat_hang { get; set; }
        public virtual DbSet<gio_hang> gio_hang { get; set; }
        public virtual DbSet<khach> khaches { get; set; }
        public virtual DbSet<quan_tri_vien> quan_tri_vien { get; set; }
        public virtual DbSet<san_pham> san_pham { get; set; }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            modelBuilder.Entity<anh_san_pham>()
                .Property(e => e.SanPhamId)
                .IsUnicode(false);

            modelBuilder.Entity<anh_san_pham>()
                .Property(e => e.TenFileAnh)
                .IsUnicode(false);

            modelBuilder.Entity<chi_tiet_don_dat_hang>()
                .Property(e => e.SanPhamId)
                .IsUnicode(false);

            modelBuilder.Entity<chi_tiet_don_dat_hang>()
                .Property(e => e.DonDatHangId)
                .IsUnicode(false);

            modelBuilder.Entity<chi_tiet_gio_hang>()
                .Property(e => e.SanPhamId)
                .IsUnicode(false);

            modelBuilder.Entity<chi_tiet_trang_thai_don_dat_hang>()
                .Property(e => e.DonDatHangId)
                .IsUnicode(false);

            modelBuilder.Entity<chi_tiet_trang_thai_don_dat_hang>()
                .Property(e => e.TrangThai)
                .IsUnicode(false);

            modelBuilder.Entity<don_dat_hang>()
                .Property(e => e.DonDatHangId)
                .IsUnicode(false);

            modelBuilder.Entity<don_dat_hang>()
                .Property(e => e.TrangThai)
                .IsUnicode(false);

            modelBuilder.Entity<khach>()
                .Property(e => e.Email)
                .IsUnicode(false);

            modelBuilder.Entity<khach>()
                .Property(e => e.Phone)
                .IsUnicode(false);

            modelBuilder.Entity<khach>()
                .Property(e => e.MatKhau)
                .IsUnicode(false);

            modelBuilder.Entity<quan_tri_vien>()
                .Property(e => e.TaiKhoan)
                .IsUnicode(false);

            modelBuilder.Entity<quan_tri_vien>()
                .Property(e => e.MatKhau)
                .IsUnicode(false);

            modelBuilder.Entity<quan_tri_vien>()
                .HasMany(e => e.don_dat_hang)
                .WithOptional(e => e.quan_tri_vien)
                .HasForeignKey(e => e.NguoiDuyetDonId);

            modelBuilder.Entity<san_pham>()
                .Property(e => e.SanPhamId)
                .IsUnicode(false);

            modelBuilder.Entity<san_pham>()
                .Property(e => e.AnhDaiDien)
                .IsUnicode(false);

            modelBuilder.Entity<san_pham>()
                .Property(e => e.Tag)
                .IsUnicode(false);
        }
    }
}
