using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using WebShopping.Models;
using WebShopping.Filters;
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

            ViewBag.ListItemInCart = db.chi_tiet_gio_hang.Select(x=>new {x.ChiTietGioHangId,x.GioHangId,x.SanPhamId,x.SoLuong,x.san_pham.TenSanPham,x.san_pham.Gia,x.san_pham.AnhDaiDien }).Where(x => x.GioHangId == gioHang.GioHangId).ToList();
            return View();
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
    }
}