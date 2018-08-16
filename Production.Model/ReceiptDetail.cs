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
    /// ReceiptDetail
    /// </summary>
    public partial class ReceiptDetail
    {
    	/// <summary>
        /// 
        /// </summary>
    	[DisplayName( "" )]
        public string Id { get; set; }
    	/// <summary>
        /// 类型（1采购订单2销售订单）
        /// </summary>
    	[DisplayName( "类型（1采购订单2销售订单）" )]
        public short Type { get; set; }
    	/// <summary>
        /// 订单日期
        /// </summary>
    	[DisplayName( "订单日期" )]
        public System.DateTime OrderDate { get; set; }
    	/// <summary>
        /// 订单金额
        /// </summary>
    	[DisplayName( "订单金额" )]
        public System.DateTime OrderMoney { get; set; }
    	/// <summary>
        /// 收款金额
        /// </summary>
    	[DisplayName( "收款金额" )]
        public decimal AmountCollected { get; set; }
    	/// <summary>
        /// 已收金额
        /// </summary>
    	[DisplayName( "已收金额" )]
        public decimal AmountReceived { get; set; }
    	/// <summary>
        /// 备注
        /// </summary>
    	[DisplayName( "备注" )]
        public string Remarks { get; set; }
    	/// <summary>
        /// 
        /// </summary>
    	[DisplayName( "" )]
        public string ReceiptId { get; set; }
    	/// <summary>
        /// 
        /// </summary>
    	[DisplayName( "" )]
        public string OrderId { get; set; }
    
        public virtual Receipt Receipt { get; set; }
        public virtual Order Order { get; set; }
    }
}
