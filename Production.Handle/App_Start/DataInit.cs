using Production.Help;
using Production.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Production.Handle.App_Start
{
    public class DataInit
    {
        public static void Init()
        {
            using (DbModelContainer DbContext = new DbModelContainer())
            {
                //初始化管理员用户
                var userCount = DbContext.User.Count();
                if (userCount==0)
                {
                    User user = new User() {
                        Id = Guid.NewGuid().ToString(),
                        Name="admin",
                        Password= Encrypt.Md5("123456"),
                        CreateTime=DateTime.Now,
                        Remarks="系统生成超级管理员"
                    };
                    DbContext.User.Add(user);
                }
                DbContext.SaveChanges();
            }
        }
        
        
    }
}
