using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;

namespace SKV.Models
{
    public class Login
    {
        [Required(ErrorMessage ="Hãy nhập Tài Khoản !")]
        public string TenDangNhap { get; set; }
        [Required(ErrorMessage = "Hãy nhập Mật Khẩu !")]
        public string MatKhau { get; set; }
    }
}