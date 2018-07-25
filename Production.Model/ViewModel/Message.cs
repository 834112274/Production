namespace Production.Model.ViewModel
{
    public class Message
    {
        /// <summary>
        /// 处理结果代码(success/fail/error)
        /// </summary>
        public string result_code { get; set; }

        /// <summary>
        /// 消息
        /// </summary>
        public string msg { get; set; }

        /// <summary>
        /// 数据
        /// </summary>
        public object data { get; set; }
    }
}