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
    /// 部门API
    /// </summary>
    [RoutePrefix("api/Department")]
    public class DepartmentController : ApiController
    {
        /// <summary>
        /// 新增部门
        /// </summary>
        /// <param name="dep">新部门信息</param>
        /// <returns></returns>
        [Route("Add")]
        public Message Add(Department dep)
        {
            return new Message { result_code = "success", msg = "", data = null };
        }

        /// <summary>
        /// 删除部门
        /// </summary>
        /// <param name="id">部门ID</param>
        /// <returns></returns>
        [Route("Remove")]
        public Message Remove(string id)
        {
            return new Message { result_code = "success", msg = "", data = null };
        }

        /// <summary>
        /// 修改部门
        /// </summary>
        /// <param name="dep">部门信息，ID为原ID</param>
        /// <returns></returns>
        [Route("Change")]
        public Message Change(Department dep)
        {
            return new Message { result_code = "success", msg = "", data = null };
        }
        /// <summary>
        /// 部门列表
        /// </summary>
        /// <returns></returns>
        [Route("GetRoleList")]
        public List<Department> GetRoleList()
        {
            return new List<Department>();
        }
    }
}
