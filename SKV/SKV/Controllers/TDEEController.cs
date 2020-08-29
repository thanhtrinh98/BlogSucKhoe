using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using SKV.Models;

namespace SKV.Controllers
{
    public class TDEEController : Controller
    {
        //
        // GET: /TDEE/

        public ActionResult Index()
        {
            return View();
        }
        qlskEntities db = new qlskEntities();

        [HttpGet]
        // GET: Home
        public ActionResult TinhBMR()
        {
            ViewBag.GT = new SelectList(db.Table_GioiTinh.ToList(), "id", "ThuocGioiTinh");
            ViewBag.R = new SelectList(db.CuongDoes.ToList(), "id", "MoTa");
            return View();
        }

        [HttpPost]
        // GET: Home
        public ActionResult TinhBMR(TDEE TDEE, FormCollection f)
        {
            ViewBag.GT = new SelectList(db.Table_GioiTinh.ToList(), "id", "ThuocGioiTinh");
            ViewBag.R = new SelectList(db.CuongDoes.ToList(), "id", "MoTa");

            int CUONGDO_ID = int.Parse(f["txt_gioitinh"].ToString());
            int GioiTinhID = int.Parse(f["txt_cuongdo"].ToString());

            TinhTDEE TinhTDEE = new TinhTDEE();

            
            TinhTDEE.ChieuCao = GioiTinhID;
            TinhTDEE.CanNang = TDEE.CANNANG;
            TinhTDEE.Tuoi = TDEE.TUOI;
            TinhTDEE.CuongDoID = CUONGDO_ID;

            ViewBag.Calo = "Calo 1 ngày";

            if (TinhTDEE.GioiTinhID == 1)
            {
                if (TinhTDEE.CuongDoID == 1)
                {
                    int k = 5;
                    double r = 1.2;
                    ViewBag.tong = r * ((9.99 * (float)TinhTDEE.CanNang) + (6.25 * (float)TinhTDEE.ChieuCao) - (4.92 * (int)TinhTDEE.Tuoi) - k);
                }
                if (TinhTDEE.CuongDoID == 2)
                {
                    int k = 5;
                    double r = 1.375;
                    ViewBag.tong = r * ((9.99 * (float)TinhTDEE.CanNang) + (6.25 * (float)TinhTDEE.ChieuCao) - (4.92 * (int)TinhTDEE.Tuoi) - k);
                }
                if (TinhTDEE.CuongDoID == 3)
                {
                    int k = 5;
                    double r = 1.55;
                    ViewBag.tong = r * ((9.99 * (float)TinhTDEE.CanNang) + (6.25 * (float)TinhTDEE.ChieuCao) - (4.92 * (int)TinhTDEE.Tuoi) - k);
                }
                if (TinhTDEE.CuongDoID == 4)
                {
                    int k = 5;
                    double r = 1.725;
                    ViewBag.tong = r * ((9.99 * (float)TinhTDEE.CanNang) + (6.25 * (float)TinhTDEE.ChieuCao) - (4.92 * (int)TinhTDEE.Tuoi) - k);
                }
                if (TinhTDEE.CuongDoID == 5)
                {
                    int k = 5;
                    double r = 1.9;
                    ViewBag.tong = r * ((9.99 * (float)TinhTDEE.CanNang) + (6.25 * (float)TinhTDEE.ChieuCao) - (4.92 * (int)TinhTDEE.Tuoi) - k);
                }
            }
            else
            {
                if (TinhTDEE.CuongDoID == 1)
                {
                    int k = -165;
                    double r = 1.2;
                    ViewBag.tong = r * ((9.99 * (float)TinhTDEE.CanNang) + (6.25 * (float)TinhTDEE.ChieuCao) - (4.92 * (int)TinhTDEE.Tuoi) - k);
                }
                if (TinhTDEE.CuongDoID == 2)
                {
                    int k = -165;
                    double r = 1.375;
                    ViewBag.tong = r * ((9.99 * (float)TinhTDEE.CanNang) + (6.25 * (float)TinhTDEE.ChieuCao) - (4.92 * (int)TinhTDEE.Tuoi) - k);
                }
                if (TinhTDEE.CuongDoID == 3)
                {
                    int k = -165;
                    double r = 1.55;
                    ViewBag.tong = r * ((9.99 * (float)TinhTDEE.CanNang) + (6.25 * (float)TinhTDEE.ChieuCao) - (4.92 * (int)TinhTDEE.Tuoi) - k);
                }
                if (TinhTDEE.CuongDoID == 4)
                {
                    int k = -165;
                    double r = 1.725;
                    ViewBag.tong = r * ((9.99 * (float)TinhTDEE.CanNang) + (6.25 * (float)TinhTDEE.ChieuCao) - (4.92 * (int)TinhTDEE.Tuoi) - k);
                }
                if (TinhTDEE.CuongDoID == 5)
                {
                    int k = -165;
                    double r = 1.9;
                    ViewBag.tong = r * ((9.99 * (float)TinhTDEE.CanNang) + (6.25 * (float)TinhTDEE.ChieuCao) - (4.92 * (int)TinhTDEE.Tuoi) - k);
                }
                Session["ketqua"] = ViewBag.tong;

                if (ViewBag.tong > 500 && ViewBag.tong < 1000)
                {
                    
                    var ThucDon = db.ThucDons.SingleOrDefault(n => n.id ==  4 );
                    var ThucDon1 = db.ThucDons.SingleOrDefault(n => n.id == 5);
                    var ThucDon2 = db.ThucDons.SingleOrDefault(n => n.id == 6);
                    var mon1 = ThucDon.TenMonAn;
                    var mon2 = ThucDon1.TenMonAn;
                    var mon3 = ThucDon2.TenMonAn;

                    //ViewBag.ha = mon1 + "," + mon2 + "," + mon3;
   
                }
                if( ViewBag.tong > 1000)
                {
                    var ThucDon = db.ThucDons.SingleOrDefault(n => n.id == 1);
                    var ThucDon1 = db.ThucDons.SingleOrDefault(n => n.id == 2);
                    var ThucDon2 = db.ThucDons.SingleOrDefault(n => n.id == 3);
                    var mon1 = ThucDon.TenMonAn;
                    var mon2 = ThucDon1.TenMonAn;
                    var mon3 = ThucDon2.TenMonAn;

                    //ViewBag.ha = mon1 + "," + mon2 + "," + mon3;
                }
            }
            return View();
        }

    }
}
