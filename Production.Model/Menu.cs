//------------------------------------------------------------------------------
// <auto-generated>
//     此代码已从模板生成。
//
//     手动更改此文件可能导致应用程序出现意外的行为。
//     如果重新生成代码，将覆盖对此文件的手动更改。
// </auto-generated>
//------------------------------------------------------------------------------

namespace Production.Model
{
    using System;
    using System.Collections.Generic;
    
    using System.ComponentModel;
    /// <summary>
    /// 菜单
    /// </summary>
    public partial class Menu
    {
    	/// <summary>
        /// 
        /// </summary>
    	[DisplayName( "" )]
        public string Id { get; set; }
    	/// <summary>
        /// 菜单名
        /// </summary>
    	[DisplayName( "菜单名" )]
        public string Name { get; set; }
    	/// <summary>
        /// 
        /// </summary>
    	[DisplayName( "" )]
        public string Url { get; set; }
    	/// <summary>
        /// 
        /// </summary>
    	[DisplayName( "" )]
        public string Icon { get; set; }
    	/// <summary>
        /// 模块编号
        /// </summary>
    	[DisplayName( "模块编号" )]
        public string Module { get; set; }
    	/// <summary>
        /// 
        /// </summary>
    	[DisplayName( "" )]
        public short Sort { get; set; }
    	/// <summary>
        /// 
        /// </summary>
    	[DisplayName( "" )]
        public string ParentId { get; set; }
    	/// <summary>
        /// 
        /// </summary>
    	[DisplayName( "" )]
        public bool IsVail { get; set; }
    	/// <summary>
        /// 菜单状态
        /// </summary>
    	[DisplayName( "菜单状态" )]
        public short Status { get; set; }
    	/// <summary>
        /// 菜单级别
        /// </summary>
    	[DisplayName( "菜单级别" )]
        public short Level { get; set; }
    	/// <summary>
        /// 菜单编号
        /// </summary>
    	[DisplayName( "菜单编号" )]
        public string Code { get; set; }
    }
}
