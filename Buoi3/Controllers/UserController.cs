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
            if (string.IsNullOrEmpty(uname) || string.IsNullOrEmpty(psw))
            {
                ViewBag.ErrorMessage = "Username and password cannot be empty";
                return View();
            }

            var user = db.Accounts.FirstOrDefault(u => u.Username == uname && u.Password == psw);

            if (user != null)
            {
                Session["User"] = user;
                return RedirectToAction("UserPage");
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

        public ActionResult Logout()
        {
            Session.Clear();
            return RedirectToAction("Index", "Home");
        }

        public ActionResult UserPage()
        {
            var user = Session["User"] as Account;
            if (user == null)
            {
                return RedirectToAction("Login");
            }

            return View(user);
        }

        public ActionResult Success()
        {
            return View();
        }
    }
}