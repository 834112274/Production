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
    /// 仓库
    /// </summary>
    public partial class Warehouse
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Warehouse()
        {
            this.Stock = new HashSet<Stock>();
            this.StockRecord = new HashSet<StockRecord>();
            this.Order = new HashSet<Order>();
        }
    
    	/// <summary>
        /// 
        /// </summary>
    	[DisplayName( "" )]
        public string Id { get; set; }
    	/// <summary>
        /// 
        /// </summary>
    	[DisplayName( "" )]
        public string Address { get; set; }
    	/// <summary>
        /// 
        /// </summary>
    	[DisplayName( "" )]
        public string Area { get; set; }
    	/// <summary>
        /// 默认
        /// </summary>
    	[DisplayName( "默认" )]
        public bool Default { get; set; }
    	/// <summary>
        /// 
        /// </summary>
    	[DisplayName( "" )]
        public string Code { get; set; }
    	/// <summary>
        /// 创建时间
        /// </summary>
    	[DisplayName( "创建时间" )]
        public System.DateTime CreateTime { get; set; }
    	/// <summary>
        /// 修改时间
        /// </summary>
    	[DisplayName( "修改时间" )]
        public System.DateTime UpdateTime { get; set; }
    	/// <summary>
        /// 是否参与计算
        /// </summary>
    	[DisplayName( "是否参与计算" )]
        public bool InCalculation { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Stock> Stock { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<StockRecord> StockRecord { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Order> Order { get; set; }
    }
}
