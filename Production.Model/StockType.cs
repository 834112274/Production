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
    
    public enum StockType : short
    {
        其他入库 = 0,
        其他出库 = 1,
        采购订单入库 = 2,
        销售订单出库 = 3,
        领料单出库 = 4,
        退料单入库 = 5,
        库存调拨入库 = 6,
        库存调拨出库 = 7
    }
}