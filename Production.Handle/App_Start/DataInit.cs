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
                var adminUser = new User();
                var users =from m in DbContext.User where m.Name=="admin" select m;
                if (users.Count() == 0)
                {
                    User user = new User() {
                        Id = Guid.NewGuid().ToString(),
                        Name="admin",
                        Password= Encrypt.Md5("123456"),
                        CreateTime=DateTime.Now,
                        Remarks="系统生成超级管理员"
                    };
                    DbContext.User.Add(user);
                    adminUser = user;
                }
                else
                {
                    adminUser = users.First();
                }
                var ids = from m in DbContext.UserProperty where m.UserId == adminUser.Id select m.MenuId;
                var newMenus = (from m in DbContext.Menu where !ids.Contains(m.Id) select m).ToList().Select(m=>new UserProperty { Id = Guid.NewGuid().ToString(),MenuId=m.Id,UserId=adminUser.Id,CreateTime=DateTime.Now,CreateUser="系统生成" });
                DbContext.UserProperty.AddRange(newMenus);
                DbContext.SaveChanges();
            }
        }
        
        
    }
}
