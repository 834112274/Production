using Production.Model;
using Production.Model.ViewModel;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
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
        [Route("GetList")]
        public List<Menu> GetMenuList()
        {
            return DbContext.Menu.ToList();
        }

        /// <summary>
        /// 添加菜单
        /// </summary>
        /// <param name="menu"></param>
        /// <returns></returns>
        [Route("Add")]
        public Message Add(Menu menu)
        {
            menu.Id = Guid.NewGuid().ToString();
            DbContext.Menu.Add(menu);

            try
            {
                DbContext.SaveChanges();
                return new Message { result_code = "success", msg = "添加成功", data = menu };
            }
            catch (Exception ex)
            {
                return new Message { result_code = "error", msg = ex.Message, data = menu };
            }

        }
        /// <summary>
        /// 删除菜单
        /// </summary>
        /// <param name="id">菜单ID</param>
        /// <returns></returns>
        [Route("Remove")]
        public Message Remove(string id)
        {
            var menus = from m in DbContext.Menu where m.Id == id select m;
            if (menus.Count() > 0)
            {
                DbContext.Menu.Remove(menus.First());
                try
                {
                    DbContext.SaveChanges();
                    return new Message { result_code = "success", msg = "删除成功", data = null };
                }
                catch (Exception ex)
                {
                    return new Message { result_code = "error", msg = ex.Message, data = null };
                }

            }
            return new Message { result_code = "fail", msg = "未找到该菜单", data = null };
        }
        /// <summary>
        /// 修改菜单
        /// </summary>
        /// <param name="menu"></param>
        /// <returns></returns>
        [Route("Change")]
        public Message Change(Menu menu)
        {
            var menus = from m in DbContext.Menu where m.Id == menu.Id select m;
            if (menus.Count() > 0)
            {
                var instance = menus.First();
                instance.Name = menu.Name;
                instance.Icon = menu.Icon;
                instance.Url = menu.Url;
                instance.ParentId = menu.ParentId;
                instance.Module = menu.Module;
                instance.Sort = menu.Sort;
                instance.IsVail = menu.IsVail;
                try
                {
                    DbContext.SaveChanges();
                    return new Message { result_code = "success", msg = "修改成功", data = instance };
                }
                catch (Exception ex)
                {
                    return new Message { result_code = "error", msg = ex.Message, data = instance };
                }

            }
            return new Message { result_code = "fail", msg = "未找到该菜单", data = menu };
        }
        /// <summary>
        /// 分配菜单权限到用户
        /// </summary>
        /// <param name="userId">用户ID</param>
        /// <param name="menuId">菜单ID列表</param>
        /// <returns></returns>
        [Route("AllotToUser")]
        public Message AllotToUser(string userId,List<string> menuId)
        {
            return new Message { result_code = "fail", msg = "未找到该菜单", data = null };
        }
        /// <summary>
        /// 分配菜单权限到部门
        /// </summary>
        /// <param name="depId">部门ID</param>
        /// <param name="menuId">菜单ID列表</param>
        /// <returns></returns>
        [Route("AllotToDepartment")]
        public Message AllotToDepartment(string depId, List<string> menuId)
        {
            return new Message { result_code = "fail", msg = "未找到该菜单", data = null };
        }
        /// <summary>
        /// 分配菜单权限到角色
        /// </summary>
        /// <param name="roleId">角色ID</param>
        /// <param name="menuId">菜单ID列表</param>
        /// <returns></returns>
        [Route("AllotToRole")]
        public Message AllotToRole(string roleId, List<string> menuId)
        {
            return new Message { result_code = "fail", msg = "未找到该菜单", data = null };
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
