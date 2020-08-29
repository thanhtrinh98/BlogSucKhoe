using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using SKV.Models;

namespace SKV.Controllers
{
    public class KetQuaTDEEController : Controller
    {
        //
        // GET: /KetQuaTDEE/
        qlskEntities db = new qlskEntities();


        public ActionResult Index()
        {

            return View();
        }

    }
}
