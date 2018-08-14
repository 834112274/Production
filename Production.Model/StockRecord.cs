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
    /// 库存记录
    /// </summary>
    public partial class StockRecord
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public StockRecord()
        {
            this.RecordMaterial = new HashSet<RecordMaterial>();
        }
    
    	/// <summary>
        /// 
        /// </summary>
    	[DisplayName( "" )]
        public string Id { get; set; }
    	/// <summary>
        /// 单号
        /// </summary>
    	[DisplayName( "单号" )]
        public string Code { get; set; }
    	/// <summary>
        /// 仓库ID
        /// </summary>
    	[DisplayName( "仓库ID" )]
        public string WarehouseId { get; set; }
    	/// <summary>
        /// 库单创建时间
        /// </summary>
    	[DisplayName( "库单创建时间" )]
        public System.DateTime CreateTime { get; set; }
    	/// <summary>
        /// 出入库时间
        /// </summary>
    	[DisplayName( "出入库时间" )]
        public System.DateTime StorageTime { get; set; }
    	/// <summary>
        /// 记录类型（1入库2出库）
        /// </summary>
    	[DisplayName( "记录类型（1入库2出库）" )]
        public short Type { get; set; }
    	/// <summary>
        /// 总金额
        /// </summary>
    	[DisplayName( "总金额" )]
        public decimal AmountMoney { get; set; }
    	/// <summary>
        /// 
        /// </summary>
    	[DisplayName( "" )]
        public string EmployeeId { get; set; }
    	/// <summary>
        /// 
        /// </summary>
    	[DisplayName( "" )]
        public string OrderId { get; set; }
    	/// <summary>
        /// 含税总金额
        /// </summary>
    	[DisplayName( "含税总金额" )]
        public decimal TaxAmount { get; set; }
    	/// <summary>
        /// 备注
        /// </summary>
    	[DisplayName( "备注" )]
        public string Remarks { get; set; }
    
        public virtual Warehouse Warehouse { get; set; }
        public virtual Company Company { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<RecordMaterial> RecordMaterial { get; set; }
        public virtual Employee Employee { get; set; }
        public virtual Order Order { get; set; }
    }
}