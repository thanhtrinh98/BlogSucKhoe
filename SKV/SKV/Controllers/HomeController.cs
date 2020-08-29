using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using SKV.Models;

namespace SKV.Controllers
{
    public class HomeController : Controller
    {
        //
        // GET: /Home/

        public ActionResult Index(NguoiDung NguoiDung)
        {
            ViewBag.Songuoidung = db.NguoiDungs.ToList().Count() - db.NguoiDungs.Where(n => n.CapDo == 1).ToList().Count();
            return View();
        }

        public ActionResult Admin()
        {
            return View();
        }

        public ActionResult Thucpham()
        {
            ViewBag.TangCan = db.ThucDons.Where(n => n.Loai == "GÓI KHẨU PHẦN ĂN TĂNG CÂN").ToList().Take(3);
            ViewBag.GiamCan = db.ThucDons.Where(n => n.Loai == "GÓI KHẨU PHẦN ĂN GIẢM CÂN").ToList().Take(3);
            return View();
        }
        public ActionResult Luyentap()
        {
            var chedo = db.CheDoes.ToList();
            return View(chedo);
        }
        public ActionResult Meovat()
        {
            var meovat = db.CacMeoVats.ToList();
            return View(meovat);
        }


        // GET: Login
        qlskEntities db = new qlskEntities();

        [HttpGet]
        public ActionResult Login()
        {
            return View();
        }
        [HttpPost]
        public ActionResult Login(Login p)
        {
            var IsAdmin = db.NguoiDungs.SingleOrDefault(x => x.TaiKhoan == p.TenDangNhap && x.MatKhau == p.MatKhau && x.CapDo == 1);
            if (IsAdmin !=null)
            {
                Session["Admin"] = IsAdmin.CapDo;
                Session["UserName"] = IsAdmin.TenNguoiDung;

                return Redirect("/AdminUser/Index");
            }
            var IsUser = db.NguoiDungs.SingleOrDefault(x => x.TaiKhoan == p.TenDangNhap && x.MatKhau == p.MatKhau);
            if (IsUser != null)
            {
                Session["Admin"] = null;
                Session["UserName"] = IsUser.TenNguoiDung;
                Session["IDUser"] = IsUser.id;
                return Redirect("/Home/Index");
            }

            return View();
        
        }
     
        public ActionResult Dangki()
        {
            Session["UserName"] =null;
            return View();
        }
        
        [HttpPost]
        public ActionResult DangKi(NguoiDung NguoiDung)
        {
            using (qlskEntities db = new qlskEntities())
            {
                db.NguoiDungs.Add(NguoiDung);
                db.SaveChanges();
            }
            return RedirectToAction("Login"); 
        }

        public ActionResult Thoat()
        {
            if(Session["UserName"] != null)
            {
                Session.Clear();
            }
            return RedirectToAction("Index");
        }

        [HttpGet]
        public ActionResult TimKiem()
        {
            //return View(db.timkiemmeovat(""));
            return View();
        }

        [HttpPost]
        public ActionResult TimKiem(string timkiem)
        {
            return View(db.ThucDons.Where(x => x.TenMonAn.Contains(timkiem) || timkiem == null).ToList());
        }

        public ActionResult ChiTietSP(int id)
        {
            Session["IDMV"] = id;
            var baihat = db.ThucDons.Find(id);
            ViewBag.Comment = db.BinhLuans.Where(n => n.ThucDon_id == id ).ToList();
            ViewBag.ListThucDon = db.ThucDons.Where(n => n.id == id);
            return View();
        }
      
    }
}
