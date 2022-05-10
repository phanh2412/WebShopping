using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebShopping.Models
{
    public class JsonResult
    {
        public string status { get; set; }
        public object data { get; set; }
        public string message { get; set; }

        public class Status
        {
            public const string SUCCESS = "success";
            public const string ERROR = "error";
            public const string UNAUTHOR = "unauthor";
            public const string UNAUTHEN = "unauthen";
        }

        public class Message
        {
            public const string DEFAULT_ERROR_MESSAGE = "Có lỗi trong quá trình xử lý. Vui lòng liên hệ quản trị viên hoặc thử lại sau.";
            public const string UNAUTHOR_MESSAGE = "Bạn không có quyền truy cập tính năng này.";
            public const string UNAUTHEN_MESSAGE = "Phiên làm việc của bạn đã hết, vui lòng đăng nhập lại để tiếp tục sử dụng.";

            public const string PRODUCT_NOT_FOUND = "Không tìm thấy thông tin về sản phẩm.";

            public const string ORDER_NOT_FOUND = "Không tìm thấy thông tin về đơn đặt hàng.";
            public const string ORDER_STATUS_INVALID = "Trạng thái đơn đặt hàng không hợp lệ cho thao tác này. Làm mới trang web và thử lại.";
        }
    }

    public class Constant
    {
        public const string PRODUCT_THUMBNAIL_URL = "/files/product/thumbnail/";
        public const string PRODUCT_THUMBNAIL_PATH = "~/files/product/thumbnail/";
        public const string PRODUCT_IMAGE_URL = "/files/product/";
        public const string PRODUCT_IMAGE_PATH = "~/files/product/";

        public const int PAGE_SIZE = 9;
        public const int ADMIN_PAGE_SIZE = 20;

        public class TrangThaiDonDatHang
        {
            public const string CHO_XAC_NHAN = "CHO_XAC_NHAN";
            public const string DANG_XU_LY = "DANG_XU_LY";
            public const string DA_THANH_TOAN = "DA_THANH_TOAN";
            public const string HOAN_THANH = "HOAN_THANH";
            public const string KHACH_HANG_HUY = "KHACH_HANG_HUY";
            public const string CUA_HANG_HUY = "CUA_HANG_HUY";
        }

    }

}