using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Production.View.Models
{
    public class JsonConfig
    {
        public static JsonSerializerSettings jsSettings = new JsonSerializerSettings() { ReferenceLoopHandling= ReferenceLoopHandling.Ignore,DateFormatString="yyyy-MM-dd HH:mm" };

    }
}