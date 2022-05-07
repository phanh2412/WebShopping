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
        }
    }
}