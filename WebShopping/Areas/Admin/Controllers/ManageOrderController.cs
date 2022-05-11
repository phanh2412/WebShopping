using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using WebShopping.Models;

namespace WebShopping.Areas.Admin.Controllers
{
    public class ManageOrderController : AdminBaseController
    {
        private TinaFlowers_DBContext db = new TinaFlowers_DBContext();
        public ActionResult Index()
        {
            return View();
        }

        public ActionResult Detail(string id)
        {
            return View(id);
        }
        [HttpGet]
        public ActionResult GetListOrder(int? page, string keyword, string status)
        {
            try
            {
                if (!page.HasValue) page = 1;
                int skip = (page.Value - 1) * Constant.ADMIN_PAGE_SIZE;
                var lsOrder = db.don_dat_hang.Where(x =>
                   ((string.IsNullOrEmpty(keyword) || x.DonDatHangId.Contains(keyword)) ||
                    (string.IsNullOrEmpty(keyword) || x.khach.Phone.Contains(keyword)) ||
                    (string.IsNullOrEmpty(keyword) || x.khach.Email.Contains(keyword))) &&
                    (string.IsNullOrEmpty(status) || x.TrangThai == status)
                )
                    .Select(x => new { x.DonDatHangId, x.khach.HoVaTen, x.TongTien, x.NgayTao, x.TrangThai })
                    .OrderByDescending(x => x.NgayTao)
                    .Skip(skip)
                    .Take(Constant.ADMIN_PAGE_SIZE)
                    .ToList();

                int TotalPage = db.don_dat_hang.Where(x =>
                   ((string.IsNullOrEmpty(keyword) || x.DonDatHangId.Contains(keyword)) ||
                    (string.IsNullOrEmpty(keyword) || x.khach.Phone.Contains(keyword)) ||
                    (string.IsNullOrEmpty(keyword) || x.khach.Email.Contains(keyword))) &&
                    (string.IsNullOrEmpty(status) || x.TrangThai == status)
                ).Count();
                TotalPage = (int)Math.Ceiling((decimal)TotalPage / Constant.ADMIN_PAGE_SIZE);

                return Success(new { ListOrder = lsOrder, TotalPage });
            }
            catch (Exception ex)
            {
                return Error(ex.Message);
            }
        }

        [HttpGet]
        public ActionResult GetOrderById(string id)
        {
            try
            {
                var order = db.don_dat_hang.Select(x => new { x.DonDatHangId, x.khach.HoVaTen, x.TongTien, x.NgayTao, x.TrangThai }).FirstOrDefault(x => x.DonDatHangId == id);
                return Success(order);
            }
            catch (Exception ex)
            {
                return Error(ex.Message);
            }
        }

        [HttpGet]
        public ActionResult ProcessOrder(string id)
        {
            try
            {
                if (string.IsNullOrEmpty(id)) return Error(WebShopping.Models.JsonResult.Message.ORDER_NOT_FOUND);
                using (var transaction = db.Database.BeginTransaction())
                {
                    don_dat_hang donDatHang = db.don_dat_hang.FirstOrDefault(x => x.DonDatHangId == id);
                    if (donDatHang == null) return Error(WebShopping.Models.JsonResult.Message.ORDER_NOT_FOUND);
                    if (donDatHang.TrangThai != Constant.TrangThaiDonDatHang.CHO_XAC_NHAN) return Error(WebShopping.Models.JsonResult.Message.ORDER_STATUS_INVALID);
                    donDatHang.TrangThai = Constant.TrangThaiDonDatHang.DANG_XU_LY;

                    chi_tiet_trang_thai_don_dat_hang chiTietTrangThaiDonDatHang = new chi_tiet_trang_thai_don_dat_hang();
                    chiTietTrangThaiDonDatHang.DonDatHangId = donDatHang.DonDatHangId;
                    chiTietTrangThaiDonDatHang.NgayTao = DateTime.Now;
                    chiTietTrangThaiDonDatHang.TrangThai = donDatHang.TrangThai;
                    db.chi_tiet_trang_thai_don_dat_hang.Add(chiTietTrangThaiDonDatHang);

                    db.SaveChanges();
                    transaction.Commit();
                    return Success();
                }
            }
            catch (Exception ex) { return Error(ex.Message); }
        }
        [HttpGet]
        public ActionResult ConfirmPaidOrder(string id)
        {
            try
            {
                if (string.IsNullOrEmpty(id)) return Error(WebShopping.Models.JsonResult.Message.ORDER_NOT_FOUND);

                using (var transaction = db.Database.BeginTransaction())
                {
                    don_dat_hang donDatHang = db.don_dat_hang.FirstOrDefault(x => x.DonDatHangId == id);
                    if (donDatHang == null) return Error(WebShopping.Models.JsonResult.Message.ORDER_NOT_FOUND);
                    if (donDatHang.TrangThai != Constant.TrangThaiDonDatHang.DANG_XU_LY) return Error(WebShopping.Models.JsonResult.Message.ORDER_STATUS_INVALID);
                    donDatHang.TrangThai = Constant.TrangThaiDonDatHang.DA_THANH_TOAN;

                    chi_tiet_trang_thai_don_dat_hang chiTietTrangThaiDonDatHang = new chi_tiet_trang_thai_don_dat_hang();
                    chiTietTrangThaiDonDatHang.DonDatHangId = donDatHang.DonDatHangId;
                    chiTietTrangThaiDonDatHang.NgayTao = DateTime.Now;
                    chiTietTrangThaiDonDatHang.TrangThai = donDatHang.TrangThai;
                    db.chi_tiet_trang_thai_don_dat_hang.Add(chiTietTrangThaiDonDatHang);

                    db.SaveChanges();
                    transaction.Commit();
                    return Success();
                }

            }
            catch (Exception ex) { return Error(ex.Message); }
        }
        [HttpGet]
        public ActionResult DoneOrder(string id)
        {
            try
            {
                if (string.IsNullOrEmpty(id)) return Error(WebShopping.Models.JsonResult.Message.ORDER_NOT_FOUND);

                using (var transaction = db.Database.BeginTransaction())
                {
                    don_dat_hang donDatHang = db.don_dat_hang.FirstOrDefault(x => x.DonDatHangId == id);
                    if (donDatHang == null) return Error(WebShopping.Models.JsonResult.Message.ORDER_NOT_FOUND);
                    if (donDatHang.TrangThai != Constant.TrangThaiDonDatHang.DA_THANH_TOAN) return Error(WebShopping.Models.JsonResult.Message.ORDER_STATUS_INVALID);
                    donDatHang.TrangThai = Constant.TrangThaiDonDatHang.HOAN_THANH;

                    chi_tiet_trang_thai_don_dat_hang chiTietTrangThaiDonDatHang = new chi_tiet_trang_thai_don_dat_hang();
                    chiTietTrangThaiDonDatHang.DonDatHangId = donDatHang.DonDatHangId;
                    chiTietTrangThaiDonDatHang.NgayTao = DateTime.Now;
                    chiTietTrangThaiDonDatHang.TrangThai = donDatHang.TrangThai;
                    db.chi_tiet_trang_thai_don_dat_hang.Add(chiTietTrangThaiDonDatHang);

                    db.SaveChanges();
                    transaction.Commit();
                    return Success();
                }

            }
            catch (Exception ex) { return Error(ex.Message); }
        }

        [HttpGet]
        public ActionResult ShopCancel(string id)
        {
            try
            {
                if (string.IsNullOrEmpty(id)) return Error(WebShopping.Models.JsonResult.Message.ORDER_NOT_FOUND);
                using (var transaction = db.Database.BeginTransaction())
                {
                    don_dat_hang donDatHang = db.don_dat_hang.FirstOrDefault(x => x.DonDatHangId == id);
                    if (donDatHang == null) return Error(WebShopping.Models.JsonResult.Message.ORDER_NOT_FOUND);
                    if (donDatHang.TrangThai != Constant.TrangThaiDonDatHang.CHO_XAC_NHAN && donDatHang.TrangThai != Constant.TrangThaiDonDatHang.DANG_XU_LY) return Error(WebShopping.Models.JsonResult.Message.ORDER_STATUS_INVALID);
                    donDatHang.TrangThai = Constant.TrangThaiDonDatHang.CUA_HANG_HUY;

                    chi_tiet_trang_thai_don_dat_hang chiTietTrangThaiDonDatHang = new chi_tiet_trang_thai_don_dat_hang();
                    chiTietTrangThaiDonDatHang.DonDatHangId = donDatHang.DonDatHangId;
                    chiTietTrangThaiDonDatHang.NgayTao = DateTime.Now;
                    chiTietTrangThaiDonDatHang.TrangThai = donDatHang.TrangThai;
                    db.chi_tiet_trang_thai_don_dat_hang.Add(chiTietTrangThaiDonDatHang);

                    db.SaveChanges();
                    transaction.Commit();
                    return Success();
                }

            }
            catch (Exception ex) { return Error(ex.Message); }
        }

        [HttpGet]
        public ActionResult GetOrderDetail(string id)
        {
            try
            {
                var order = db.don_dat_hang
                    .Where(x => x.DonDatHangId == id)
                    .Select(x => new
                    {
                        x.DonDatHangId,
                        x.KhachId,
                        x.TrangThai,
                        x.TongTien,
                        x.NgayTao,
                        x.khach.HoVaTen,
                        DanhSachSanPham = x.chi_tiet_don_dat_hang.Select(z => new { z.ChiTietDonDatHangId, z.SanPhamId, z.san_pham.AnhDaiDien, z.san_pham.TenSanPham, z.SoLuongMua, z.Gia }).ToList()
                    }).FirstOrDefault();
                return Success(order);
            }
            catch (Exception ex) { return Error(ex.Message); }
        }

    }
}