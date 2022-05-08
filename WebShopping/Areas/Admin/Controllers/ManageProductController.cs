using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using WebShopping.Models;
using WebShopping.Providers;

namespace WebShopping.Areas.Admin.Controllers
{
    public class ManageProductController : AdminBaseController
    {
        TinaFlowers_DBContext db = new TinaFlowers_DBContext();
        // GET: Admin/ManageProduct
        public ActionResult Index()
        {
            return View();
        }

        public ActionResult Detail(string id)
        {
            return View(id);
        }

        [HttpGet]
        public ActionResult GetProductById(string id)
        {
            try
            {
                if (string.IsNullOrEmpty(id)) return Error(WebShopping.Models.JsonResult.Message.PRODUCT_NOT_FOUND);
                var product = (from p in db.san_pham
                               where p.SanPhamId == id
                               select new { p.SanPhamId, p.TenSanPham, p.Gia, p.MoTa, p.AnhDaiDien, p.danh_muc_san_pham.TenDanhMucSanPham }).FirstOrDefault();

                if (product == null) return Error(WebShopping.Models.JsonResult.Message.PRODUCT_NOT_FOUND);

                var productImages = db.anh_san_pham.Where(x => x.SanPhamId == id).Select(x => new { x.AnhSanPhamId, x.TenFileAnh }).ToList();

                return Success(new { product, productImages });
            }
            catch (Exception ex)
            {
                return Error(ex.Message);
            }
        }
        [HttpGet]
        public ActionResult GetListProduct(int? danhMucSanPhamId, string keyword, bool? dangKichHoat)
        {
            try
            {

                var lsProduct = (from p in db.san_pham
                                 where (
                                     (!danhMucSanPhamId.HasValue || p.DanhMucSanPhamId == danhMucSanPhamId.Value) &&
                                     (string.IsNullOrEmpty(keyword) || p.Tag.Contains(keyword)) &&
                                     (!dangKichHoat.HasValue || p.DangKichHoat == dangKichHoat.Value)
                                 )
                                 select new { p.SanPhamId, p.TenSanPham, p.AnhDaiDien, p.Gia, p.danh_muc_san_pham.TenDanhMucSanPham }).ToList();

                return Success(lsProduct);
            }
            catch (Exception ex)
            {
                return Error(ex.Message);
            }
        }

        [HttpPost]
        public ActionResult CreateProduct(SanPhamPostModel model)
        {
            try
            {
                using (var transaction = db.Database.BeginTransaction())
                {
                    san_pham sanPham = new san_pham();
                    sanPham.SanPhamId = Guid.NewGuid().ToString();
                    sanPham.TenSanPham = model.TenSanPham;
                    sanPham.Gia = model.Gia;
                    sanPham.Gia = model.Gia;
                    sanPham.MoTa = model.MoTa;
                    sanPham.DangKichHoat = true;
                    sanPham.DanhMucSanPhamId = model.DanhMucSanPhamId;
                    sanPham.Tag = model.Tag;
                    sanPham.NgayTao = DateTime.Now;

                    if (!string.IsNullOrEmpty(model.AnhDaiDien_Base64))
                    {
                        string filename = Guid.NewGuid().ToString() + ".jpg";
                        var path = System.Web.HttpContext.Current.Server.MapPath(Constant.PRODUCT_THUMBNAIL_PATH + filename);
                        HelperProvider.Base64ToImage(model.AnhDaiDien_Base64, path);
                        sanPham.AnhDaiDien = Constant.PRODUCT_THUMBNAIL_URL + filename;
                    }

                    if (model.AnhSanPham.Count > 0)
                    {
                        for (int indexImage = 0; indexImage < model.AnhSanPham.Count; indexImage++)
                        {
                            string filename = Guid.NewGuid().ToString() + ".jpg";
                            var path = System.Web.HttpContext.Current.Server.MapPath(Constant.PRODUCT_IMAGE_PATH + filename);
                            HelperProvider.Base64ToImage(model.AnhSanPham[indexImage], path);

                            anh_san_pham anhSanPham = new anh_san_pham();
                            anhSanPham.SanPhamId = sanPham.SanPhamId;
                            anhSanPham.TenFileAnh = Constant.PRODUCT_IMAGE_URL + filename;
                            db.anh_san_pham.Add(anhSanPham);
                        }
                    }

                    danh_muc_san_pham danhMucSanPham = db.danh_muc_san_pham.FirstOrDefault(x => x.DanhMucSanPhamId == sanPham.DanhMucSanPhamId);
                    danhMucSanPham.SoLuongSanPham += 1;

                    db.san_pham.Add(sanPham);
                    db.SaveChanges();
                    transaction.Commit();

                    return Success();
                }

            }
            catch (Exception ex)
            {
                return Error(ex.Message);
            }
        }

        [HttpPost]
        public ActionResult UpdateProduct(SanPhamPostModel model)
        {
            try
            {
                if (string.IsNullOrEmpty(model.SanPhamId)) return Error(WebShopping.Models.JsonResult.Message.PRODUCT_NOT_FOUND);

                using (var transaction = db.Database.BeginTransaction())
                {
                    san_pham sanPham = db.san_pham.FirstOrDefault(x => x.SanPhamId == model.SanPhamId);
                    if (sanPham == null) return Error(WebShopping.Models.JsonResult.Message.PRODUCT_NOT_FOUND);

                    sanPham.TenSanPham = model.TenSanPham;
                    sanPham.Gia = model.Gia;
                    sanPham.MoTa = model.MoTa;
                    sanPham.Tag = model.Tag;

                    if (sanPham.DanhMucSanPhamId.Value != model.DanhMucSanPhamId)
                    {
                        danh_muc_san_pham danhMucCu = db.danh_muc_san_pham.FirstOrDefault(x => x.DanhMucSanPhamId == sanPham.DanhMucSanPhamId.Value);
                        danh_muc_san_pham danhMucMoi = db.danh_muc_san_pham.FirstOrDefault(x => x.DanhMucSanPhamId == model.DanhMucSanPhamId);

                        danhMucCu.SoLuongSanPham -= 1;
                        danhMucMoi.SoLuongSanPham += 1;
                        sanPham.DanhMucSanPhamId = model.DanhMucSanPhamId;
                        //db.SaveChanges();
                    }

                    if (!string.IsNullOrEmpty(model.AnhDaiDien_Base64))
                    {
                        //upload anh moi
                        string filename = Guid.NewGuid().ToString() + ".jpg";
                        var path = System.Web.HttpContext.Current.Server.MapPath(Constant.PRODUCT_THUMBNAIL_PATH + filename);
                        HelperProvider.Base64ToImage(model.AnhDaiDien_Base64, path);

                        //xoa anh cu
                        if (System.IO.File.Exists(Server.MapPath(sanPham.AnhDaiDien)))
                        {
                            System.IO.File.Delete(Server.MapPath(sanPham.AnhDaiDien));
                        }

                        //cap nhat anh moi
                        sanPham.AnhDaiDien = Constant.PRODUCT_THUMBNAIL_URL + filename;
                    }

                    if (model.AnhSanPham.Count > 0)
                    {
                        for (int indexImage = 0; indexImage < model.AnhSanPham.Count; indexImage++)
                        {
                            string filename = Guid.NewGuid().ToString() + ".jpg";
                            var path = System.Web.HttpContext.Current.Server.MapPath(Constant.PRODUCT_IMAGE_PATH + filename);
                            HelperProvider.Base64ToImage(model.AnhSanPham[indexImage], path);

                            anh_san_pham anhSanPham = new anh_san_pham();
                            anhSanPham.SanPhamId = sanPham.SanPhamId;
                            anhSanPham.TenFileAnh = Constant.PRODUCT_IMAGE_URL + filename;
                            db.anh_san_pham.Add(anhSanPham);
                        }
                    }

                    if (model.AnhSanPhamXoa.Count > 0)
                    {
                        for (int indexImage = 0; indexImage < model.AnhSanPhamXoa.Count; indexImage++)
                        {
                            anh_san_pham anhSanPham = db.anh_san_pham.FirstOrDefault(x => x.AnhSanPhamId == model.AnhSanPhamXoa[indexImage]);
                            if (anhSanPham != null)
                            {
                                db.anh_san_pham.Remove(anhSanPham);
                                if (System.IO.File.Exists(Server.MapPath(anhSanPham.TenFileAnh)))
                                {
                                    System.IO.File.Delete(Server.MapPath(anhSanPham.TenFileAnh));
                                }
                            }
                        }
                    }

                    db.SaveChanges();
                    transaction.Commit();

                    return Success();
                }
            }
            catch (Exception ex)
            {
                return Error(ex.Message);
            }
        }

        [HttpGet]
        public ActionResult DeleteProduct(string id)
        {
            try
            {
                if (string.IsNullOrEmpty(id)) return Error(WebShopping.Models.JsonResult.Message.PRODUCT_NOT_FOUND);
                using (var transaction = db.Database.BeginTransaction())
                {
                    san_pham sanPham = db.san_pham.FirstOrDefault(x => x.SanPhamId == id);
                    if (sanPham == null) return Error(WebShopping.Models.JsonResult.Message.PRODUCT_NOT_FOUND);

                    sanPham.DangKichHoat = false;

                    danh_muc_san_pham danhMucSanPham = db.danh_muc_san_pham.FirstOrDefault(x=>x.DanhMucSanPhamId == sanPham.DanhMucSanPhamId);
                    if(danhMucSanPham != null)
                    {
                        danhMucSanPham.SoLuongSanPham -= 1;
                    }

                    db.SaveChanges();
                    transaction.Commit();
                    return Success();
                }
            }
            catch (Exception ex)
            {
                return Error(ex.Message);
            }
        }
    }
}