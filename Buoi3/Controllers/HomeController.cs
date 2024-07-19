using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Data.SqlClient;
using Buoi3.Models;

namespace Buoi3.Controllers
{
    public class HomeController : Controller
    {
        //
        // GET: /Home/
        public ActionResult Index()
        {
            return View();
        }
        public ActionResult About()
        {
            return View();
        }

        public ActionResult User()
        {
            return View();
        }
        public ActionResult Contact()
        {
            return View();
        }
        public ActionResult ContactAD()
        {
            return View();
        }
        public ActionResult Product()
        {
            string connStr = @"Server = A204PC45\CSSQL08; Database= PhoneShop; User Id= sa; Password = 123";
            using (SqlConnection conn = new SqlConnection(connStr))
            {
                try
                {
                    conn.Open();
                }
                catch (Exception ex)
                {
                    return Content("Connection error: " + ex.Message);
                }

                SqlCommand comm = new SqlCommand("SELECT MaDT, TenDienThoai, GiaBan FROM DienThoai", conn);
                SqlDataReader data = comm.ExecuteReader();
                List<Product> listProduct = new List<Product>();

                while (data.Read())
                {
                    Product t = new Product
                    {
                        MaDT = Convert.ToInt32(data["MaDT"]),
                        TenDienThoai = data["TenDienThoai"].ToString(),
                        GiaBan = Convert.ToDecimal(data["GiaBan"])
                    };
                    listProduct.Add(t);
                }



                return View(listProduct);
            }
        }
	}
}