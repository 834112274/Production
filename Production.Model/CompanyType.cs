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
    /// CompanyType
    /// </summary>
    public partial class CompanyType
    {
    	/// <summary>
        /// 
        /// </summary>
    	[DisplayName( "" )]
        public string Id { get; set; }
    	/// <summary>
        /// 类型名称
        /// </summary>
    	[DisplayName( "类型名称" )]
        public string Name { get; set; }
    	/// <summary>
        /// 父级ID
        /// </summary>
    	[DisplayName( "父级ID" )]
        public string ParentId { get; set; }
    	/// <summary>
        /// 
        /// </summary>
    	[DisplayName( "" )]
        public bool Default { get; set; }
    	/// <summary>
        /// 层级
        /// </summary>
    	[DisplayName( "层级" )]
        public short Level { get; set; }
    }
}