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
    /// 用户API
    /// </summary>
    [RoutePrefix("api/User")]
    public class UserController : ApiController
    {
        private DbModelContainer DbContext = new DbModelContainer();
        /// <summary>
        /// 获取用户信息
        /// </summary>
        /// <param name="id">用户ID</param>
        /// <returns></returns>
        [Route("GetUser")]
        public Message GetUser(string id)
        {
            var users = from m in DbContext.User where m.Id == id select m;
            if (users.Count() > 0)
            {

                return new Message { result_code = "success", msg = "", data = users.First() };
            }
            return new Message { result_code = "fail", msg = "未找到该用户", data = null };
        }

        /// <summary>
        /// 用户列表
        /// </summary>
        /// <returns></returns>
        [Route("GetUserList")]
        public List<User> GetUserList()
        {
            var users = from m in DbContext.User select m;
            return users.ToList();
        }

        /// <summary>
        /// 删除用户
        /// </summary>
        /// <param name="id">用户ID</param>
        /// <returns></returns>
        [Route("Remove")]
        public Message Remove(string id)
        {
            return new Message { result_code = "success", msg = "", data = null};
        }
        /// <summary>
        /// 添加用户
        /// </summary>
        /// <param name="user">新用户信息</param>
        /// <returns></returns>
        [Route("Add")]
        public Message Add(User user)
        {
            return new Message { result_code = "success", msg = "", data = null };
        }
        /// <summary>
        /// 修改用户
        /// </summary>
        /// <param name="user">待修改用户新信息，ID需原ID</param>
        /// <returns></returns>
        [Route("Change")]
        public Message Change(User user)
        {
            return new Message { result_code = "success", msg = "", data = null };
        }

    }
}
