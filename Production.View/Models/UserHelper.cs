using Production.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Production.View.Models
{
    public class UserHelper
    {

        public static User GetLoginUser()
        {
            var user= HttpContext.Current.Session["User"] as User;
            return user;
        }
        public static Employee GetLoginEmployee()
        {
            var employee = HttpContext.Current.Session["Employee"] as Employee;
            return employee;
        }
        public static List<Menu> GetUserMenus()
        {

            var menus = HttpContext.Current.Session["UserMenus"] as List<Menu>;
            return menus;
        }
        public static bool CheckPowers()
        {
            return false;
        }

        public static void SetLoginUser(User user)
        { 
            if(user!=null){
                HttpContext.Current.Session["User"] = user;
                if (user.Name != "admin")
                {
                    HttpContext.Current.Session["Employee"] = user.Employee;
                }
                if (user.UserProperty != null)
                {
                    HttpContext.Current.Session["UserMenus"] = user.UserProperty.Where(m => m.Menu.IsVail == true && m.Menu.Status != 2).Select(m => m.Menu).ToList();
                }
                
            }
            
        }
    }
}