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
    /// 角色权限
    /// </summary>
    public partial class RoleProperty
    {
    	/// <summary>
        /// 
        /// </summary>
    	[DisplayName( "" )]
        public string Id { get; set; }
    	/// <summary>
        /// 
        /// </summary>
    	[DisplayName( "" )]
        public string RoleId { get; set; }
    	/// <summary>
        /// 
        /// </summary>
    	[DisplayName( "" )]
        public string MenuId { get; set; }
    	/// <summary>
        /// 创建时间
        /// </summary>
    	[DisplayName( "创建时间" )]
        public System.DateTime CreateTime { get; set; }
    	/// <summary>
        /// 创建人
        /// </summary>
    	[DisplayName( "创建人" )]
        public string CreateUser { get; set; }
    
        public virtual Role Role { get; set; }
        public virtual Menu Menu { get; set; }
    }
}
