using Production.Model;
using Production.Model.ViewModel;
using Production.View.Models;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web.Http;

namespace Production.View.Areas.ViewApi.Controllers
{
    /// <summary>
    /// 菜单API
    /// </summary>
    [RoutePrefix("api/Menu")]
    public class MenuController : ApiController
    {
        private DbModelContainer DbContext = new DbModelContainer();

        /// <summary>
        /// 菜单列表
        /// </summary>
        /// <returns></returns>
        [Route("GetMenuList")]
        public IHttpActionResult GetMenuList(string parentId = "")
        {
            if (string.IsNullOrEmpty(parentId))
            {
                var menu = from m in DbContext.Menu where m.Level == 3 && m.IsVail == true && m.Status != 2 orderby m.Sort select m;
                return Json(new { total = menu.Count(), rows = menu.ToList() }, JsonConfig.jsSettings);
            }
            else
            {
                var selected = DbContext.Menu.Single(m => m.Id == parentId);
                if (selected.Level == 1)
                {
                    var ids = from m in DbContext.Menu where m.Level == 2 && m.IsVail == true && m.Status != 2 && m.ParentId == parentId select m.Id;
                    var menu = from m in DbContext.Menu where m.Level == 3 && m.IsVail == true && m.Status != 2 && ids.Contains(m.ParentId) orderby m.Sort select m;
                    return Json(new { total = menu.Count(), rows = menu.ToList() }, JsonConfig.jsSettings);
                }
                else
                {
                    var menu = from m in DbContext.Menu where m.Level == 3 && m.IsVail == true && m.Status != 2 && m.ParentId==parentId orderby m.Sort select m;
                    return Json(new { total = menu.Count(), rows = menu.ToList() }, JsonConfig.jsSettings);
                }
            }
            
        }

        /// <summary>
        /// 菜单模块列表
        /// </summary>
        /// <returns></returns>
        [Route("GetModuleList")]
        public IHttpActionResult GetModuleList()
        {
            var menu = from m in DbContext.Menu where m.Level == 1 && m.Status != 2 && m.IsVail == true orderby m.Sort select m;
            var hearders = from m in DbContext.Menu where m.Level == 2 && m.Status != 2 && m.IsVail == true orderby m.Sort select m;
            var nodes = new ArrayList();
            var node = new { id = "", text = "模块分类", children = new ArrayList() };
            foreach (var m in menu)
            {
                var n = new { id = m.Id, text = m.Name, children = new ArrayList() };
                foreach (var h in hearders)
                {
                    if (h.ParentId == m.Id)
                    {
                        n.children.Add(new { id = h.Id, text = h.Name });
                    }
                }
                node.children.Add(n);
            }
            nodes.Add(node);
            return Json(nodes, JsonConfig.jsSettings);
        }

        /// <summary>
        /// 添加菜单
        /// </summary>
        /// <param name="menu"></param>
        /// <returns></returns>
        [Route("Add")]
        public IHttpActionResult Add(Menu menu)
        {
            menu.Id = Guid.NewGuid().ToString();
            DbContext.Menu.Add(menu);

            try
            {
                DbContext.SaveChanges();
                return Json(new { result_code = "success", msg = "添加成功", data = menu }, JsonConfig.jsSettings);
            }
            catch (Exception ex)
            {
                return Json(new { result_code = "error", msg = ex.Message, data = menu }, JsonConfig.jsSettings);
            }
        }

        /// <summary>
        /// 删除菜单
        /// </summary>
        /// <param name="id">菜单ID</param>
        /// <returns></returns>
        [Route("Remove")]
        public IHttpActionResult Remove(string id)
        {
            var menus = from m in DbContext.Menu where m.Id == id select m;
            if (menus.Count() > 0)
            {
                DbContext.Menu.Remove(menus.First());
                try
                {
                    DbContext.SaveChanges();
                    return Json(new { result_code = "success", msg = "删除成功", data = "" });
                }
                catch (Exception ex)
                {
                    return Json(new { result_code = "error", msg = ex.Message, data = "" });
                }
            }
            return Json(new { result_code = "fail", msg = "未找到该菜单", data = "" });
        }

        /// <summary>
        /// 修改菜单
        /// </summary>
        /// <param name="menu"></param>
        /// <returns></returns>
        [Route("Change")]
        public IHttpActionResult Change(Menu menu)
        {
            var parent = DbContext.Menu.Single(m => m.Id == menu.ParentId);
            var menus = from m in DbContext.Menu where m.Id == menu.Id select m;
            if (menus.Count() > 0)
            {
                var instance = menus.First();
                instance.Name = menu.Name;
                instance.Icon = menu.Icon;
                instance.Url = menu.Url;
                instance.ParentId = menu.ParentId;
                instance.Module = parent.Name;
                instance.Sort = menu.Sort;
                instance.IsVail = menu.IsVail;
                try
                {
                    DbContext.SaveChanges();
                    return Json(new { result_code = "success", msg = "修改成功", data = instance }, JsonConfig.jsSettings);
                }
                catch (Exception ex)
                {
                    return Json(new { result_code = "error", msg = ex.Message, data = instance }, JsonConfig.jsSettings);
                }
            }
            return Json(new { result_code = "fail", msg = "未找到该菜单", data = menu }, JsonConfig.jsSettings);
        }

        /// <summary>
        /// 分配菜单权限到用户
        /// </summary>
        /// <param name="userId">用户ID</param>
        /// <param name="menuId">菜单ID列表</param>
        /// <returns></returns>
        [Route("AllotToUser")]
        public IHttpActionResult AllotToUser(string userId, List<string> menuId)
        {
            return Json(new { result_code = "fail", msg = "未找到该菜单", data = "" });
        }

        /// <summary>
        /// 分配菜单权限到部门
        /// </summary>
        /// <param name="depId">部门ID</param>
        /// <param name="menuId">菜单ID列表</param>
        /// <returns></returns>
        [Route("AllotToDepartment")]
        public IHttpActionResult AllotToDepartment(string depId, List<string> menuId)
        {
            return Json(new { result_code = "fail", msg = "未找到该菜单", data = "" });
        }

        /// <summary>
        /// 分配菜单权限到角色
        /// </summary>
        /// <param name="roleId">角色ID</param>
        /// <param name="menuId">菜单ID列表</param>
        /// <returns></returns>
        [Route("AllotToRole")]
        public IHttpActionResult AllotToRole(string roleId, List<string> menuId)
        {
            return Json(new { result_code = "fail", msg = "未找到该菜单", data = "" });
        }

        /// <summary>
        /// 获取用户菜单权限
        /// </summary>
        /// <param name="userId">用户ID</param>
        /// <returns></returns>
        [Route("GetUserMenu")]
        public List<Menu> GetUserMenu(string userId)
        {
            return new List<Menu>();
        }

        /// <summary>
        /// 获取部门菜单权限
        /// </summary>
        /// <param name="depId">部门ID</param>
        /// <returns></returns>
        [Route("GetDepartmentMenu")]
        public List<Menu> GetDepartmentMenu(string depId)
        {
            return new List<Menu>();
        }

        /// <summary>
        /// 获取角色菜单权限
        /// </summary>
        /// <param name="roleId">角色ID</param>
        /// <returns></returns>
        [Route("GetRoleMenu")]
        public List<Menu> GetRoleMenu(string roleId)
        {
            return new List<Menu>();
        }
    }
}