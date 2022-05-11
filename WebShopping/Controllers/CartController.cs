using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using WebShopping.Models;
using WebShopping.Filters;
using WebShopping.Providers;
namespace WebShopping.Controllers
{
    public class CartController : BaseController
    {
        TinaFlowers_DBContext db = new TinaFlowers_DBContext();
        [UserLoginRequire]
        public ActionResult Index()
        {
            khach nguoidung = (khach)HttpContext.Session["NguoiDungSession"];
            gio_hang gioHang = db.gio_hang.FirstOrDefault(x => x.KhachId == nguoidung.KhachId);

            ViewBag.ListItemInCart = db.chi_tiet_gio_hang.Where(x => x.GioHangId == gioHang.GioHangId && x.san_pham.DangKichHoat==true).Select(x => new CartItemVIewModel() { ChiTietGioHangId = x.ChiTietGioHangId, GioHangId = x.GioHangId, SanPhamId = x.SanPhamId, SoLuong = x.SoLuong, TenSanPham = x.san_pham.TenSanPham, Gia = x.san_pham.Gia, AnhDaiDien = x.san_pham.AnhDaiDien }).ToList();

            return View();
        }
        [UserLoginRequire]
        [HttpGet]
        public ActionResult Checkout()
        {
            try
            {
                using (var transaction = db.Database.BeginTransaction())
                {
                    khach nguoidung = (khach)HttpContext.Session["NguoiDungSession"];
                    gio_hang gioHang = db.gio_hang.FirstOrDefault(x => x.KhachId == nguoidung.KhachId);
                    if (gioHang == null) return Error();

                    List<chi_tiet_gio_hang> lsChiTietGioHang = db.chi_tiet_gio_hang.Where(x => x.GioHangId == gioHang.GioHangId ).ToList();
                    if (lsChiTietGioHang.Count <= 0) return Error("Giỏ hàng không có sản phẩm.");

                    don_dat_hang donDatHang = new don_dat_hang();
                    donDatHang.KhachId = nguoidung.KhachId;
                    donDatHang.TongTien = 0;
                    donDatHang.TrangThai = Constant.TrangThaiDonDatHang.CHO_XAC_NHAN;
                    donDatHang.NgayTao = DateTime.Now;
                    donDatHang.DonDatHangId = HelperProvider.MakeCode();

                    for (int index = 0; index < lsChiTietGioHang.Count; index++)
                    {
                        if (lsChiTietGioHang[index].san_pham.DangKichHoat == false) continue;
                        string sanPhamId = lsChiTietGioHang[index].SanPhamId;
                        san_pham sanPham = db.san_pham.FirstOrDefault(x => x.SanPhamId == sanPhamId);
                        if (sanPham == null) return Error("Không tìm thấy thông tin sản phẩm.");

                        chi_tiet_don_dat_hang chiTIetDonDatHang = new chi_tiet_don_dat_hang();
                        chiTIetDonDatHang.DonDatHangId = donDatHang.DonDatHangId;
                        chiTIetDonDatHang.Gia = sanPham.Gia;
                        chiTIetDonDatHang.SanPhamId = sanPham.SanPhamId;
                        chiTIetDonDatHang.SoLuongMua = lsChiTietGioHang[index].SoLuong;

                        donDatHang.TongTien += chiTIetDonDatHang.SoLuongMua * chiTIetDonDatHang.Gia;

                        db.chi_tiet_don_dat_hang.Add(chiTIetDonDatHang);
                    }
                    db.don_dat_hang.Add(donDatHang);
                    gioHang.TongSanPham = 0;
                    gioHang.TongTien = 0;
                    db.chi_tiet_gio_hang.RemoveRange(lsChiTietGioHang);
                    db.SaveChanges();
                    transaction.Commit();

                    return Success();
                }


            }
            catch (Exception ex) { return Error(); }
        }


        [HttpGet]
        public ActionResult CountItemInCart()
        {
            try
            {
                khach nguoidung = (khach)HttpContext.Session["NguoiDungSession"];
                if (nguoidung == null) return Error();
                gio_hang gioHang = db.gio_hang.FirstOrDefault(x => x.KhachId == nguoidung.KhachId);
                if (gioHang == null) return Error();
                return Success(gioHang.TongSanPham);
            }
            catch (Exception ex) { return Error(ex.Message); }
        }

        [HttpGet]
        [UserLoginRequire]
        public ActionResult AddToCart(string sanPhamId, int? soLuong)
        {
            try
            {

                khach nguoidung = (khach)HttpContext.Session["NguoiDungSession"];
                if (nguoidung == null) return Error();
                using (var transaction = db.Database.BeginTransaction())
                {
                    san_pham sanPham = db.san_pham.FirstOrDefault(x => x.SanPhamId == sanPhamId);
                    if (sanPham == null) return Error("Không tìm thấy sản phẩm.");

                    gio_hang gioHang = db.gio_hang.FirstOrDefault(x => x.KhachId == nguoidung.KhachId);
                    if (gioHang == null)
                    {
                        gioHang = new gio_hang();
                        gioHang.KhachId = nguoidung.KhachId;
                        gioHang.TongSanPham = 0;
                        gioHang.TongTien = 0;
                        db.gio_hang.Add(gioHang);
                        db.SaveChanges();
                    }

                    gioHang = db.gio_hang.FirstOrDefault(x => x.KhachId == nguoidung.KhachId);

                    chi_tiet_gio_hang chiTietGioHang = new chi_tiet_gio_hang();
                    chiTietGioHang.SanPhamId = sanPham.SanPhamId;
                    chiTietGioHang.SoLuong = soLuong.HasValue ? soLuong.Value : 1;
                    chiTietGioHang.GioHangId = gioHang.GioHangId;
                    db.chi_tiet_gio_hang.Add(chiTietGioHang);
                    gioHang.TongSanPham += chiTietGioHang.SoLuong;
                    gioHang.TongTien += chiTietGioHang.SoLuong * sanPham.Gia;

                    db.SaveChanges();
                    transaction.Commit();
                    return Success();
                }
            }
            catch (Exception ex) { return Error(ex.Message); }
        }

        [HttpGet]
        [UserLoginRequire]
        public ActionResult DecreaseQuantity(int? chiTietId)
        {
            try
            {
                if (!chiTietId.HasValue) return Error();
                chi_tiet_gio_hang chiTiet = db.chi_tiet_gio_hang.FirstOrDefault(x => x.ChiTietGioHangId == chiTietId.Value);
                if (chiTiet == null) return Error();
                san_pham sanPham = db.san_pham.FirstOrDefault(x => x.SanPhamId == chiTiet.SanPhamId);
                if (sanPham == null) return Error();
                gio_hang gioHang = db.gio_hang.FirstOrDefault(x => x.GioHangId == chiTiet.GioHangId);
                if (gioHang == null) return Error();

                chiTiet.SoLuong -= 1;
                if (chiTiet.SoLuong <= 0)
                {
                    db.chi_tiet_gio_hang.Remove(chiTiet);
                }

                gioHang.TongSanPham -= 1;
                gioHang.TongTien -= sanPham.Gia;

                db.SaveChanges();
                return Success();
            }
            catch (Exception ex) { return Error(ex.Message); }
        }

        [HttpGet]
        [UserLoginRequire]
        public ActionResult IncreaseQuantity(int? chiTietId)
        {
            try
            {
                if (!chiTietId.HasValue) return Error();
                using (var transaction = db.Database.BeginTransaction())
                {
                    chi_tiet_gio_hang chiTiet = db.chi_tiet_gio_hang.FirstOrDefault(x => x.ChiTietGioHangId == chiTietId.Value);
                    if (chiTiet == null) return Error();

                    san_pham sanPham = db.san_pham.FirstOrDefault(x => x.SanPhamId == chiTiet.SanPhamId);
                    if (sanPham == null) return Error();

                    chiTiet.SoLuong += 1;

                    gio_hang gioHang = db.gio_hang.FirstOrDefault(x => x.GioHangId == chiTiet.GioHangId);
                    if (gioHang == null) return Error();
                    gioHang.TongSanPham += 1;
                    gioHang.TongTien += sanPham.Gia;

                    db.SaveChanges();
                    transaction.Commit();
                    return Success();
                }

            }
            catch (Exception ex) { return Error(ex.Message); }
        }
    }
}