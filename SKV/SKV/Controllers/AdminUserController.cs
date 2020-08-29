using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using SKV.Models;

namespace SKV.Controllers
{
    public class AdminUserController : Controller
    {
        //
        // GET: /AdminUser/

        // GET: Admin/LoaiNhac
        qlskEntities db = new qlskEntities();
        public ActionResult Index()
        {
            return View(db.NguoiDungs.ToList());
        }

        [HttpGet]
        public ActionResult Them()
        {
            return View();
        }

        [HttpPost]
        public ActionResult Them(NguoiDung NguoiDung)
        {
            if (ModelState.IsValid)
            {
                NguoiDung.created_at = DateTime.Now;
                db.NguoiDungs.Add(NguoiDung);
                db.SaveChanges();
            }
            return RedirectToAction("Index");
        }

        [HttpGet]
        public ActionResult Sua(int id)
        {
            NguoiDung loainhac = db.NguoiDungs.SingleOrDefault(n => n.id == id);
            if (loainhac == null)
            {
                Response.StatusCode = 404;
                return null;
            }
            return View(loainhac);
        }

        [HttpPost]
        public ActionResult Sua(NguoiDung NguoiDung)
        {
            if (ModelState.IsValid)
            {
      
                // thực hiện cập nhật trong model
                db.Entry(NguoiDung).State = System.Data.Entity.EntityState.Modified;
                db.SaveChanges();
            }
            return RedirectToAction("Index");
        }


        public ActionResult Xoa(int id)
        {
            NguoiDung NguoiDung = db.NguoiDungs.SingleOrDefault(n => n.id == id);
            if (ModelState.IsValid)
            {
                db.NguoiDungs.Remove(NguoiDung);
                db.SaveChanges();
            }

            return RedirectToAction("Index");
        }

        public ActionResult ThucDon()
        {
            return View(db.ThucDons.ToList());
        }

        [HttpGet]
        public ActionResult ThemTD()
        {
            return View();
        }

        [HttpPost]
        public ActionResult ThemTD(ThucDon ThucDon)
        {
            if (ModelState.IsValid)
            {
                db.ThucDons.Add(ThucDon);
                db.SaveChanges();
            }
            return RedirectToAction("ThucDon");
        }

        [HttpGet]
        public ActionResult SuaTD(int id)
        {
            ThucDon ThucDon = db.ThucDons.SingleOrDefault(n => n.id == id);
            if (ThucDon == null)
            {
                Response.StatusCode = 404;
                return null;
            }
            return View(ThucDon);
        }

        [HttpPost]
        public ActionResult SuaTD(ThucDon ThucDon)
        {
            if (ModelState.IsValid)
            {

                // thực hiện cập nhật trong model
                db.Entry(ThucDon).State = System.Data.Entity.EntityState.Modified;
                db.SaveChanges();
            }
            return RedirectToAction("ThucDon");
        }


        public ActionResult XoaTD(int id)
        {
            ThucDon ThucDon = db.ThucDons.SingleOrDefault(n => n.id == id);
            if (ModelState.IsValid)
            {
                db.ThucDons.Remove(ThucDon);
                db.SaveChanges();
            }

            return RedirectToAction("ThucDon");
        }
        public ActionResult CheDo()
        {
            return View(db.CheDoes.ToList());
        }

        [HttpGet]
        public ActionResult ThemCD()
        {
            return View();
        }

        [HttpPost]
        public ActionResult ThemCD(CheDo CheDo)
        {
            if (ModelState.IsValid)
            {
                db.CheDoes.Add(CheDo);
                db.SaveChanges();
            }
            return RedirectToAction("CheDo");
        }

        [HttpGet]
        public ActionResult SuaCD(int id)
        {
            CheDo CheDo = db.CheDoes.SingleOrDefault(n => n.id == id);
            if (CheDo == null)
            {
                Response.StatusCode = 404;
                return null;
            }
            return View(CheDo);
        }

        [HttpPost]
        public ActionResult SuaCD(CheDo CheDo)
        {
            if (ModelState.IsValid)
            {

                // thực hiện cập nhật trong model
                db.Entry(CheDo).State = System.Data.Entity.EntityState.Modified;
                db.SaveChanges();
            }
            return RedirectToAction("CheDo");
        }


        public ActionResult XoaCD(int id)
        {
            CheDo CheDo = db.CheDoes.SingleOrDefault(n => n.id == id);
            if (ModelState.IsValid)
            {
                db.CheDoes.Remove(CheDo);
                db.SaveChanges();
            }

            return RedirectToAction("CheDo");
        }
    }
}



