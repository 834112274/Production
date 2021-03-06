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
    /// 部门
    /// </summary>
    public partial class Department
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Department()
        {
            this.User = new HashSet<Employee>();
            this.Worksheet = new HashSet<Worksheet>();
        }
    
    	/// <summary>
        /// 
        /// </summary>
    	[DisplayName( "" )]
        public string Id { get; set; }
    	/// <summary>
        /// 部门名称
        /// </summary>
    	[DisplayName( "部门名称" )]
        public string Name { get; set; }
    	/// <summary>
        /// 部门代码
        /// </summary>
    	[DisplayName( "部门代码" )]
        public string Code { get; set; }
    	/// <summary>
        /// 创建时间
        /// </summary>
    	[DisplayName( "创建时间" )]
        public System.DateTime CreateTime { get; set; }
    	/// <summary>
        /// 部门状态
        /// </summary>
    	[DisplayName( "部门状态" )]
        public short Status { get; set; }
    	/// <summary>
        /// 父级ID
        /// </summary>
    	[DisplayName( "父级ID" )]
        public string ParentId { get; set; }
    	/// <summary>
        /// 部门地址
        /// </summary>
    	[DisplayName( "部门地址" )]
        public string Address { get; set; }
    	/// <summary>
        /// 部门电话
        /// </summary>
    	[DisplayName( "部门电话" )]
        public string Tel { get; set; }
    	/// <summary>
        /// 备注
        /// </summary>
    	[DisplayName( "备注" )]
        public string Remarks { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Employee> User { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Worksheet> Worksheet { get; set; }
    }
}
