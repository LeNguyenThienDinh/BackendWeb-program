using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Buoi3.Models;

namespace Buoi3.Controllers
{
    public class UserController : Controller
    {
        private PhoneShopContext db = new PhoneShopContext();

        public ActionResult Index()
        {
            return View();
        }

        public ActionResult Login()
        {
            return View();
        }

        [HttpPost]
        public ActionResult Login(string uname, string psw)
        {

            var user = db.Accounts.FirstOrDefault(u => u.Username.Equals(uname, StringComparison.OrdinalIgnoreCase) && u.Password.Equals(psw, StringComparison.Ordinal));

            if (user != null)
            {
                return RedirectToAction("Index");
            }
            else
            {
                ViewBag.ErrorMessage = "Invalid username or password";
                return View();
            }
        }

        public ActionResult Register()
        {
            return View();
        }
        public ActionResult Success()
        {
            return View();
        }
    }
}