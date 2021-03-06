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
    /// RecordMaterial
    /// </summary>
    public partial class RecordMaterial
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
        public string StockRecordId { get; set; }
    	/// <summary>
        /// 批号
        /// </summary>
    	[DisplayName( "批号" )]
        public string BatchNumber { get; set; }
    	/// <summary>
        /// 数量
        /// </summary>
    	[DisplayName( "数量" )]
        public decimal Count { get; set; }
    	/// <summary>
        /// 单价
        /// </summary>
    	[DisplayName( "单价" )]
        public decimal UnitPrice { get; set; }
    	/// <summary>
        /// 总价
        /// </summary>
    	[DisplayName( "总价" )]
        public decimal AmountMoney { get; set; }
    	/// <summary>
        /// 是否开票
        /// </summary>
    	[DisplayName( "是否开票" )]
        public bool Invoice { get; set; }
    	/// <summary>
        /// 税率
        /// </summary>
    	[DisplayName( "税率" )]
        public decimal TaxRate { get; set; }
    	/// <summary>
        /// 含税单价
        /// </summary>
    	[DisplayName( "含税单价" )]
        public decimal TaxUnitPrice { get; set; }
    	/// <summary>
        /// 含税总价
        /// </summary>
    	[DisplayName( "含税总价" )]
        public decimal TaxAmountMoney { get; set; }
    	/// <summary>
        /// 装箱数量
        /// </summary>
    	[DisplayName( "装箱数量" )]
        public decimal PackCount { get; set; }
    	/// <summary>
        /// 备注
        /// </summary>
    	[DisplayName( "备注" )]
        public string Remarks { get; set; }
    	/// <summary>
        /// 关联订单号
        /// </summary>
    	[DisplayName( "关联订单号" )]
        public string Code { get; set; }
    	/// <summary>
        /// 客户单号
        /// </summary>
    	[DisplayName( "客户单号" )]
        public string CustomerCode { get; set; }
    	/// <summary>
        /// 
        /// </summary>
    	[DisplayName( "" )]
        public string UnitId { get; set; }
    	/// <summary>
        /// 
        /// </summary>
    	[DisplayName( "" )]
        public string MaterialId { get; set; }
    
        public virtual StockRecord StockRecord { get; set; }
        public virtual Unit Unit { get; set; }
        public virtual Material Material { get; set; }
    }
}
