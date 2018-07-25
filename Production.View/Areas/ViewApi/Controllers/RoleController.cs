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
    /// 角色API
    /// </summary>
    [RoutePrefix("api/Role")]
    public class RoleController : ApiController
    {
        /// <summary>
        /// 新增角色
        /// </summary>
        /// <param name="role">新角色信息</param>
        /// <returns></returns>
        [Route("Add")]
        public Message Add(Role role)
        {
            return new Message { result_code = "success", msg = "", data = null };
        }
        /// <summary>
        /// 删除角色
        /// </summary>
        /// <param name="id">角色ID</param>
        /// <returns></returns>
        [Route("Remove")]
        public Message Remove(string id)
        {
            return new Message { result_code = "success", msg = "", data = null };
        }
        /// <summary>
        /// 修改角色
        /// </summary>
        /// <param name="role">角色信息，ID为原ID</param>
        /// <returns></returns>
        [Route("Change")]
        public Message Change(Role role)
        {
            return new Message { result_code = "success", msg = "", data = null };
        }
        /// <summary>
        /// 角色列表
        /// </summary>
        /// <returns></returns>
        [Route("GetRoleList")]
        public List<Role> GetRoleList()
        {
            return new List<Role>();
        }
    }
}
