using Production.Model;
using Production.Model.ViewModel;
using Production.View.Models;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web.Http;

namespace Production.View.Areas.ViewApi.Controllers
{
    /// <summary>
    /// 部门API
    /// </summary>
    [RoutePrefix("api/Department")]
    public class DepartmentController : ApiController
    {
        private DbModelContainer DbContext = new DbModelContainer();

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
        [Route("GetList")]
        public IHttpActionResult GetList()
        {
            var dpts = (from m in DbContext.Department select m).ToList();
            var level1 = (from m in dpts where m.ParentId == null || m.ParentId == "" select m).ToList();
            var nodes = new ArrayList();
            var node = new { id = "", text = "部门资料", children=new ArrayList() };
            foreach (var m in level1)
            {
                var n = new { id = m.Id, text = m.Name, children = new ArrayList() };
                n.children.AddRange(GetChildren(dpts, m.Id));
                node.children.Add(n);
            }
            nodes.Add(node);
            return Json(nodes, JsonConfig.jsSettings);
        }

        private ArrayList GetChildren(List<Department> dpts, string parentId)
        {
            var nodes = from m in dpts where m.ParentId == parentId select m;
            var childrens = new ArrayList();
            foreach (var m in nodes)
            {
                var n = new { id = m.Id, text = m.Name, children = new ArrayList() };
                n.children.AddRange(GetChildren(dpts, m.Id));
                childrens.Add(n);
            }
            return childrens;
        }
    }
}