using Production.Model;
using Production.View.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;

namespace Production.View.Areas.ViewApi.Controllers
{
    /// <summary>
    /// 用户日志API
    /// </summary>
    [RoutePrefix("api/UserLogInfo")]
    public class UserLogInfoController : ApiController
    {
        private DbModelContainer DbContext = new DbModelContainer();
        /// <summary>
        /// 获取登陆记录
        /// </summary>
        /// <param name="start">开始日期</param>
        /// <param name="end">结束日期</param>
        /// <param name="sort">排序字段逗号分隔</param>
        /// <param name="order">排序方式</param>
        /// <returns></returns>
        [Route("GetLogin")]
        public IHttpActionResult GetLogin(string start="", string end="", string sort = "CreateTime", string order = "desc")
        {
            DateTime Start, End;
            if (string.IsNullOrEmpty(start))
            {
                Start = DateTime.Parse(DateTime.Now.AddMonths(-1).ToString("yyyy-MM-dd"));
                End = Start.AddMonths(1).AddDays(1);
            }
            else
            {
                Start = DateTime.Parse(start);
            }
            if (string.IsNullOrEmpty(end))
            {
                End = Start.AddMonths(1).AddDays(1);
            }
            else
            {
                End = DateTime.Parse(end).AddDays(1);
            }
            var logs = from m in DbContext.UserLog where m.Type == "LOGIN" && m.CreateTime >= Start && m.CreateTime <= End orderby m.CreateTime descending select m;
            var sorts = sort.Split(',');
            var orders = order.Split(',');
            return Json(new { total = logs.Count(), rows = logs.ToList() }, JsonConfig.jsSettings);
        }
    }
}
