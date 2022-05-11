using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using WebShopping.Models;
using WebShopping.Providers;
namespace WebShopping.Controllers
{
    public class ProductController : BaseController
    {
        // GET: Product
        TinaFlowers_DBContext db = new TinaFlowers_DBContext();
        public ActionResult Index(int? page, int? id, string key="")
        {
            if (!page.HasValue) page = 1;
            int skip = (page.Value - 1) * Constant.PAGE_SIZE;
            key = HelperProvider.RemoveUnicode(key);
            int TotalPage = db.san_pham.Where(x =>
                (!id.HasValue || x.DanhMucSanPhamId == id) && (x.DangKichHoat == true) && (string.IsNullOrEmpty(key) || x.Tag.Contains(key))
                ).Count();
            TotalPage = (int)Math.Ceiling((decimal)TotalPage / Constant.PAGE_SIZE);

            List<san_pham> listSanPham = db.san_pham
                .Where(x=>
                (!id.HasValue || x.DanhMucSanPhamId == id ) 
                && (x.DangKichHoat==true) &&(string.IsNullOrEmpty(key)|| x.Tag.Contains(key))
                )
                .OrderBy(x=>x.TenSanPham).Skip(skip).Take(Constant.PAGE_SIZE).ToList();
            //var ls = db.san_pham.Join(db.danh_muc_san_pham, sp => sp.DanhMucSanPhamId, dmsp => dmsp.DanhMucSanPhamId, (sp, dmsp) => new { sanPham = sp, danhMuc = dmsp })
            //    .Where(x => x.sanPham.SanPhamId == "a");
            ViewBag.DanhSach = listSanPham;
            ViewBag.TongSoTrang = TotalPage;
            ViewBag.TrangHienTai = page.Value;
            ViewBag.DanhMucId = id;

            List<danh_muc_san_pham> listDanhMuc = db.danh_muc_san_pham.ToList();
            ViewBag.DanhMuc = listDanhMuc;



            return View() ;
        }

        public ActionResult Detail(string id)
        {

            var product = (from p in db.san_pham
                           where p.SanPhamId == id
                           select new { p.SanPhamId, p.DanhMucSanPhamId, p.TenSanPham, p.Gia, p.MoTa, p.AnhDaiDien, p.danh_muc_san_pham.TenDanhMucSanPham }).FirstOrDefault();
            ViewBag.SanPham = product;

            ViewBag.Product = db.san_pham.FirstOrDefault(x => x.SanPhamId == id);
            ViewBag.ProductImage = db.anh_san_pham.Where(x => x.SanPhamId == id).ToList();

            return View();
        }

    }
}