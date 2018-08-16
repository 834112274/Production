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
    /// 生产报价
    /// </summary>
    public partial class ProductionQuotation
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public ProductionQuotation()
        {
            this.OfferDetail = new HashSet<OfferDetail>();
            this.ProductionPlan = new HashSet<ProductionPlan>();
        }
    
    	/// <summary>
        /// 
        /// </summary>
    	[DisplayName( "" )]
        public string Id { get; set; }
    	/// <summary>
        /// 报价编号
        /// </summary>
    	[DisplayName( "报价编号" )]
        public string Code { get; set; }
    	/// <summary>
        /// 创建时间
        /// </summary>
    	[DisplayName( "创建时间" )]
        public System.DateTime CreateTime { get; set; }
    	/// <summary>
        /// 报价时间
        /// </summary>
    	[DisplayName( "报价时间" )]
        public System.DateTime OfferDate { get; set; }
    	/// <summary>
        /// 备注
        /// </summary>
    	[DisplayName( "备注" )]
        public string Remarks { get; set; }
    	/// <summary>
        /// 计划数量
        /// </summary>
    	[DisplayName( "计划数量" )]
        public decimal Count { get; set; }
    	/// <summary>
        /// 利率
        /// </summary>
    	[DisplayName( "利率" )]
        public decimal RrofitRate { get; set; }
    	/// <summary>
        /// 币种
        /// </summary>
    	[DisplayName( "币种" )]
        public string Currency { get; set; }
    	/// <summary>
        /// 汇率
        /// </summary>
    	[DisplayName( "汇率" )]
        public decimal ExchangeRate { get; set; }
    	/// <summary>
        /// 
        /// </summary>
    	[DisplayName( "" )]
        public string MaterialId { get; set; }
    	/// <summary>
        /// 
        /// </summary>
    	[DisplayName( "" )]
        public string EmployeeId { get; set; }
    	/// <summary>
        /// 
        /// </summary>
    	[DisplayName( "" )]
        public string CompanyId { get; set; }
    
        public virtual Material Material { get; set; }
        public virtual Employee Employee { get; set; }
        public virtual Company Company { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<OfferDetail> OfferDetail { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<ProductionPlan> ProductionPlan { get; set; }
    }
}