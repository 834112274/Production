using Production.Model;
using System.Linq;
using System.Web.Mvc;

namespace Production.View.Controllers
{
    public class HomeController : Controller
    {
        private DbModelContainer DbContext = new DbModelContainer();

        public ActionResult Index()
        {
            ViewBag.Title = "生产管理RRP";
            var menu = from m in DbContext.Menu where m.Level == 1 && m.Status != 2 && m.IsVail == true orderby m.Sort select m;
            ViewBag.Menu = menu;
            return View();
        }

        public ActionResult Modules(string id)
        {
            ViewBag.Title = "生产管理RRP";
            var hearders = from m in DbContext.Menu where m.Level == 2 && m.ParentId == id && m.Status != 2 && m.IsVail == true orderby m.Sort select m;
            ViewBag.Headers = hearders;
            var ids = from m in hearders select m.Id;
            var menu = from m in DbContext.Menu where m.Level == 3 && m.IsVail == true && m.Status != 2 && ids.Contains(m.ParentId) orderby m.Sort select m;
            ViewBag.Menu = menu;
            return View();
        }
    }
}