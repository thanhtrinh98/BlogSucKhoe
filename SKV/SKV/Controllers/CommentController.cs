using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using SKV.Models;

namespace SKV.Controllers
{
    public class CommentController : Controller
    {
        qlskEntities db = new qlskEntities();
        // GET: Comment
        public ActionResult Index()
        {
            return View();
        }

        [HttpPost]
        public ActionResult BinhLuan(BinhLuan BinhLuan)
        {
            BinhLuan.ThucDon_id = (int)Session["IDMV"];
            int id = (int)BinhLuan.ThucDon_id;              
                BinhLuan.User_Ten = (string)Session["UserName"];
                BinhLuan.ngaytao = DateTime.Now;
                db.BinhLuans.Add(BinhLuan);
                db.SaveChanges();
                return RedirectToAction("ChiTietSP", "Home", new { id = id });
          
        }

    }
}
