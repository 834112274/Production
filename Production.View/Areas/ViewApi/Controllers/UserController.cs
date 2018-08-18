using Production.Help;
using Production.Model;
using Production.Model.ViewModel;
using Production.View.Models;
using System;
using System.Collections.Generic;
using System.Linq;
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
        public IHttpActionResult GetUserList()
        {
            var users = from m in DbContext.User select m;
            return Json(new { total = users.Count(), rows = users.ToList() }, JsonConfig.jsSettings);
        }

        /// <summary>
        /// 删除用户
        /// </summary>
        /// <param name="id">用户ID</param>
        /// <returns></returns>
        [Route("Remove")]
        public Message Remove(string id)
        {
            return new Message { result_code = "success", msg = "", data = null };
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

        /// <summary>
        /// 登录
        /// </summary>
        /// <param name="user">只需用户名和密码</param>
        /// <param name="remember">是否记住用户</param>
        /// <returns></returns>
        [Route("Login")]
        public IHttpActionResult Login(UserView user)
        {
            if (string.IsNullOrEmpty(user.Name))
            {
                return Json(new { result_code = "fail", msg = "用户名不能为空" });
            }
            if (string.IsNullOrEmpty(user.Password))
            {
                return Json(new { result_code = "fail", msg = "密码不能为空" });
            }
            if (user.remember != "1")
            {
                user.Password = Encrypt.Md5(user.Password);
            }

            var users = from m in DbContext.User where m.Name == user.Name && m.Password == user.Password select m;
            if (users.Count() > 0)
            {
                var u = users.First();
                //记录日志
                UserLog log = new UserLog() {
                    Id = Guid.NewGuid().ToString(),
                    Type = "LOGIN",
                    Content =string.Format("主机名:{0},IP:{1},浏览器:{2},操作系统:{3}", RequestHelper.GetUserHostName(), RequestHelper.GetIP(),RequestHelper.GetBrowser(),RequestHelper.GetOSVersion()),
                    UserId = u.Id,
                    UserName = u.Name,
                    CreateTime = DateTime.Now
                };
                DbContext.UserLog.Add(log);
                DbContext.SaveChanges();
                //保存登录用户信息
                UserHelper.SetLoginUser(u);

                return Json(new { result_code = "success", msg = "登录成功", data = u }, JsonConfig.jsSettings);
            }
            else
            {
                return Json(new { result_code = "fail", msg = "用户名或密码错误" });
            }
        }
    }
}