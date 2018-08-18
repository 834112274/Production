
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 08/18/2018 18:35:48
-- Generated from EDMX file: G:\Github\Production\Production.Model\DbModel.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [Storage_Db];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[FK_MenuUserProperty]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[UserProperty] DROP CONSTRAINT [FK_MenuUserProperty];
GO
IF OBJECT_ID(N'[dbo].[FK_DepartmentEmployee]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Employee] DROP CONSTRAINT [FK_DepartmentEmployee];
GO
IF OBJECT_ID(N'[dbo].[FK_RoleEmployee]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Employee] DROP CONSTRAINT [FK_RoleEmployee];
GO
IF OBJECT_ID(N'[dbo].[FK_CompanyTypeCompanyLevel]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Company] DROP CONSTRAINT [FK_CompanyTypeCompanyLevel];
GO
IF OBJECT_ID(N'[dbo].[FK_CompanyTypeCompanySource]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Company] DROP CONSTRAINT [FK_CompanyTypeCompanySource];
GO
IF OBJECT_ID(N'[dbo].[FK_CompanyTypeCompanyIndustry]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Company] DROP CONSTRAINT [FK_CompanyTypeCompanyIndustry];
GO
IF OBJECT_ID(N'[dbo].[FK_EmployeeCompany]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Company] DROP CONSTRAINT [FK_EmployeeCompany];
GO
IF OBJECT_ID(N'[dbo].[FK_CompanyTypeCompanyStatus]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Company] DROP CONSTRAINT [FK_CompanyTypeCompanyStatus];
GO
IF OBJECT_ID(N'[dbo].[FK_CompanyTypeCompanyType]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Company] DROP CONSTRAINT [FK_CompanyTypeCompanyType];
GO
IF OBJECT_ID(N'[dbo].[FK_CompanyTypeCompanyproperty]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Company] DROP CONSTRAINT [FK_CompanyTypeCompanyproperty];
GO
IF OBJECT_ID(N'[dbo].[FK_CompanyTypeCompanyStage]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Company] DROP CONSTRAINT [FK_CompanyTypeCompanyStage];
GO
IF OBJECT_ID(N'[dbo].[FK_UserUserProperty]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[UserProperty] DROP CONSTRAINT [FK_UserUserProperty];
GO
IF OBJECT_ID(N'[dbo].[FK_MaterialTypeMaterial]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Material] DROP CONSTRAINT [FK_MaterialTypeMaterial];
GO
IF OBJECT_ID(N'[dbo].[FK_UnitMaterial]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Material] DROP CONSTRAINT [FK_UnitMaterial];
GO
IF OBJECT_ID(N'[dbo].[FK_ProductMixMixMaterial]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[MixMaterial] DROP CONSTRAINT [FK_ProductMixMixMaterial];
GO
IF OBJECT_ID(N'[dbo].[FK_MixMaterialMaterial]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[MixMaterial] DROP CONSTRAINT [FK_MixMaterialMaterial];
GO
IF OBJECT_ID(N'[dbo].[FK_UnitMixMaterial]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[MixMaterial] DROP CONSTRAINT [FK_UnitMixMaterial];
GO
IF OBJECT_ID(N'[dbo].[FK_ProductMixMaterial]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ProductMix] DROP CONSTRAINT [FK_ProductMixMaterial];
GO
IF OBJECT_ID(N'[dbo].[FK_ProductMixProcedureList]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ProcedureList] DROP CONSTRAINT [FK_ProductMixProcedureList];
GO
IF OBJECT_ID(N'[dbo].[FK_ProcedureProcedureList]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ProcedureList] DROP CONSTRAINT [FK_ProcedureProcedureList];
GO
IF OBJECT_ID(N'[dbo].[FK_UserEmployee]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Employee] DROP CONSTRAINT [FK_UserEmployee];
GO
IF OBJECT_ID(N'[dbo].[FK_WarehouseStock]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Stock] DROP CONSTRAINT [FK_WarehouseStock];
GO
IF OBJECT_ID(N'[dbo].[FK_WarehouseStockRecord]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[StockRecord] DROP CONSTRAINT [FK_WarehouseStockRecord];
GO
IF OBJECT_ID(N'[dbo].[FK_StockRecordCompany]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[StockRecord] DROP CONSTRAINT [FK_StockRecordCompany];
GO
IF OBJECT_ID(N'[dbo].[FK_StockRecordRecordMaterial]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[RecordMaterial] DROP CONSTRAINT [FK_StockRecordRecordMaterial];
GO
IF OBJECT_ID(N'[dbo].[FK_MaterialStock]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Stock] DROP CONSTRAINT [FK_MaterialStock];
GO
IF OBJECT_ID(N'[dbo].[FK_EmployeeStockRecord]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[StockRecord] DROP CONSTRAINT [FK_EmployeeStockRecord];
GO
IF OBJECT_ID(N'[dbo].[FK_OrderOrderMaterial]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[OrderMaterial] DROP CONSTRAINT [FK_OrderOrderMaterial];
GO
IF OBJECT_ID(N'[dbo].[FK_OrderCompany]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Order] DROP CONSTRAINT [FK_OrderCompany];
GO
IF OBJECT_ID(N'[dbo].[FK_OrderEmployee]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Order] DROP CONSTRAINT [FK_OrderEmployee];
GO
IF OBJECT_ID(N'[dbo].[FK_OrderWarehouse]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Order] DROP CONSTRAINT [FK_OrderWarehouse];
GO
IF OBJECT_ID(N'[dbo].[FK_CapitalAccountOrder]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Order] DROP CONSTRAINT [FK_CapitalAccountOrder];
GO
IF OBJECT_ID(N'[dbo].[FK_UnitOrderMaterial]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[OrderMaterial] DROP CONSTRAINT [FK_UnitOrderMaterial];
GO
IF OBJECT_ID(N'[dbo].[FK_UnitRecordMaterial]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[RecordMaterial] DROP CONSTRAINT [FK_UnitRecordMaterial];
GO
IF OBJECT_ID(N'[dbo].[FK_MaterialOrderMaterial]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[OrderMaterial] DROP CONSTRAINT [FK_MaterialOrderMaterial];
GO
IF OBJECT_ID(N'[dbo].[FK_MaterialRecordMaterial]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[RecordMaterial] DROP CONSTRAINT [FK_MaterialRecordMaterial];
GO
IF OBJECT_ID(N'[dbo].[FK_WarehouseAllocation]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Allocation] DROP CONSTRAINT [FK_WarehouseAllocation];
GO
IF OBJECT_ID(N'[dbo].[FK_InWarehouseAllocation]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Allocation] DROP CONSTRAINT [FK_InWarehouseAllocation];
GO
IF OBJECT_ID(N'[dbo].[FK_EmployeeAllocation]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Allocation] DROP CONSTRAINT [FK_EmployeeAllocation];
GO
IF OBJECT_ID(N'[dbo].[FK_ReceiptReceiptDetail]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ReceiptDetail] DROP CONSTRAINT [FK_ReceiptReceiptDetail];
GO
IF OBJECT_ID(N'[dbo].[FK_OrderReceiptDetail]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ReceiptDetail] DROP CONSTRAINT [FK_OrderReceiptDetail];
GO
IF OBJECT_ID(N'[dbo].[FK_CompanyReceipt]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Receipt] DROP CONSTRAINT [FK_CompanyReceipt];
GO
IF OBJECT_ID(N'[dbo].[FK_EmployeeReceipt]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Receipt] DROP CONSTRAINT [FK_EmployeeReceipt];
GO
IF OBJECT_ID(N'[dbo].[FK_StockRecordStockBack]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[StockBack] DROP CONSTRAINT [FK_StockRecordStockBack];
GO
IF OBJECT_ID(N'[dbo].[FK_EmployeeStockBack]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[StockBack] DROP CONSTRAINT [FK_EmployeeStockBack];
GO
IF OBJECT_ID(N'[dbo].[FK_CompanyStockBack]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[StockBack] DROP CONSTRAINT [FK_CompanyStockBack];
GO
IF OBJECT_ID(N'[dbo].[FK_MaterialProductionQuotation]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ProductionQuotation] DROP CONSTRAINT [FK_MaterialProductionQuotation];
GO
IF OBJECT_ID(N'[dbo].[FK_EmployeeProductionQuotation]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ProductionQuotation] DROP CONSTRAINT [FK_EmployeeProductionQuotation];
GO
IF OBJECT_ID(N'[dbo].[FK_CompanyProductionQuotation]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ProductionQuotation] DROP CONSTRAINT [FK_CompanyProductionQuotation];
GO
IF OBJECT_ID(N'[dbo].[FK_ProductionQuotationOfferDetail]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[OfferDetail] DROP CONSTRAINT [FK_ProductionQuotationOfferDetail];
GO
IF OBJECT_ID(N'[dbo].[FK_ProductionPlanMaterial]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ProductionPlan] DROP CONSTRAINT [FK_ProductionPlanMaterial];
GO
IF OBJECT_ID(N'[dbo].[FK_OrderProductionPlan]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ProductionPlan] DROP CONSTRAINT [FK_OrderProductionPlan];
GO
IF OBJECT_ID(N'[dbo].[FK_ProductionQuotationProductionPlan]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ProductionPlan] DROP CONSTRAINT [FK_ProductionQuotationProductionPlan];
GO
IF OBJECT_ID(N'[dbo].[FK_WorksheetWorkingProcedure]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[WorkingProcedure] DROP CONSTRAINT [FK_WorksheetWorkingProcedure];
GO
IF OBJECT_ID(N'[dbo].[FK_ProcedureWorkingProcedure]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[WorkingProcedure] DROP CONSTRAINT [FK_ProcedureWorkingProcedure];
GO
IF OBJECT_ID(N'[dbo].[FK_MaterialWorkingMaterial]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[WorkingMaterial] DROP CONSTRAINT [FK_MaterialWorkingMaterial];
GO
IF OBJECT_ID(N'[dbo].[FK_WorksheetWorkingMaterial]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[WorkingMaterial] DROP CONSTRAINT [FK_WorksheetWorkingMaterial];
GO
IF OBJECT_ID(N'[dbo].[FK_ProductionPlanWorksheet]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Worksheet] DROP CONSTRAINT [FK_ProductionPlanWorksheet];
GO
IF OBJECT_ID(N'[dbo].[FK_DepartmentWorksheet]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Worksheet] DROP CONSTRAINT [FK_DepartmentWorksheet];
GO
IF OBJECT_ID(N'[dbo].[FK_CompanyWorksheet]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Worksheet] DROP CONSTRAINT [FK_CompanyWorksheet];
GO
IF OBJECT_ID(N'[dbo].[FK_EmployeeWorksheet]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Worksheet] DROP CONSTRAINT [FK_EmployeeWorksheet];
GO
IF OBJECT_ID(N'[dbo].[FK_StockRecordStockBackNow]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[StockBack] DROP CONSTRAINT [FK_StockRecordStockBackNow];
GO
IF OBJECT_ID(N'[dbo].[FK_StockRecordAllocationOut]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Allocation] DROP CONSTRAINT [FK_StockRecordAllocationOut];
GO
IF OBJECT_ID(N'[dbo].[FK_StockRecordAllocationIn]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Allocation] DROP CONSTRAINT [FK_StockRecordAllocationIn];
GO
IF OBJECT_ID(N'[dbo].[FK_StockRecordOrder]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Order] DROP CONSTRAINT [FK_StockRecordOrder];
GO
IF OBJECT_ID(N'[dbo].[FK_WorksheetMaterialRequisition]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[MaterialRequisition] DROP CONSTRAINT [FK_WorksheetMaterialRequisition];
GO
IF OBJECT_ID(N'[dbo].[FK_StockRecordMaterialRequisition]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[MaterialRequisition] DROP CONSTRAINT [FK_StockRecordMaterialRequisition];
GO
IF OBJECT_ID(N'[dbo].[FK_WorksheetAcceptance]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Acceptance] DROP CONSTRAINT [FK_WorksheetAcceptance];
GO
IF OBJECT_ID(N'[dbo].[FK_WarehouseAcceptance]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Acceptance] DROP CONSTRAINT [FK_WarehouseAcceptance];
GO
IF OBJECT_ID(N'[dbo].[FK_EmployeeAcceptance]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Acceptance] DROP CONSTRAINT [FK_EmployeeAcceptance];
GO
IF OBJECT_ID(N'[dbo].[FK_EmployeeAcceptance1Examine]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Acceptance] DROP CONSTRAINT [FK_EmployeeAcceptance1Examine];
GO
IF OBJECT_ID(N'[dbo].[FK_StockRecordAcceptance]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Acceptance] DROP CONSTRAINT [FK_StockRecordAcceptance];
GO
IF OBJECT_ID(N'[dbo].[FK_ProductionPlanPlanStorage]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[PlanStorage] DROP CONSTRAINT [FK_ProductionPlanPlanStorage];
GO
IF OBJECT_ID(N'[dbo].[FK_StockRecordPlanStorage]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[PlanStorage] DROP CONSTRAINT [FK_StockRecordPlanStorage];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[Employee]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Employee];
GO
IF OBJECT_ID(N'[dbo].[Department]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Department];
GO
IF OBJECT_ID(N'[dbo].[Role]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Role];
GO
IF OBJECT_ID(N'[dbo].[Menu]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Menu];
GO
IF OBJECT_ID(N'[dbo].[UserProperty]', 'U') IS NOT NULL
    DROP TABLE [dbo].[UserProperty];
GO
IF OBJECT_ID(N'[dbo].[UserLog]', 'U') IS NOT NULL
    DROP TABLE [dbo].[UserLog];
GO
IF OBJECT_ID(N'[dbo].[SystemLog]', 'U') IS NOT NULL
    DROP TABLE [dbo].[SystemLog];
GO
IF OBJECT_ID(N'[dbo].[Material]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Material];
GO
IF OBJECT_ID(N'[dbo].[MaterialType]', 'U') IS NOT NULL
    DROP TABLE [dbo].[MaterialType];
GO
IF OBJECT_ID(N'[dbo].[Unit]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Unit];
GO
IF OBJECT_ID(N'[dbo].[ProductMix]', 'U') IS NOT NULL
    DROP TABLE [dbo].[ProductMix];
GO
IF OBJECT_ID(N'[dbo].[MixMaterial]', 'U') IS NOT NULL
    DROP TABLE [dbo].[MixMaterial];
GO
IF OBJECT_ID(N'[dbo].[Procedure]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Procedure];
GO
IF OBJECT_ID(N'[dbo].[Company]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Company];
GO
IF OBJECT_ID(N'[dbo].[CompanyType]', 'U') IS NOT NULL
    DROP TABLE [dbo].[CompanyType];
GO
IF OBJECT_ID(N'[dbo].[User]', 'U') IS NOT NULL
    DROP TABLE [dbo].[User];
GO
IF OBJECT_ID(N'[dbo].[ProcedureList]', 'U') IS NOT NULL
    DROP TABLE [dbo].[ProcedureList];
GO
IF OBJECT_ID(N'[dbo].[Warehouse]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Warehouse];
GO
IF OBJECT_ID(N'[dbo].[Stock]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Stock];
GO
IF OBJECT_ID(N'[dbo].[StockRecord]', 'U') IS NOT NULL
    DROP TABLE [dbo].[StockRecord];
GO
IF OBJECT_ID(N'[dbo].[RecordMaterial]', 'U') IS NOT NULL
    DROP TABLE [dbo].[RecordMaterial];
GO
IF OBJECT_ID(N'[dbo].[Order]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Order];
GO
IF OBJECT_ID(N'[dbo].[OrderMaterial]', 'U') IS NOT NULL
    DROP TABLE [dbo].[OrderMaterial];
GO
IF OBJECT_ID(N'[dbo].[CapitalAccount]', 'U') IS NOT NULL
    DROP TABLE [dbo].[CapitalAccount];
GO
IF OBJECT_ID(N'[dbo].[Allocation]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Allocation];
GO
IF OBJECT_ID(N'[dbo].[Receipt]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Receipt];
GO
IF OBJECT_ID(N'[dbo].[ReceiptDetail]', 'U') IS NOT NULL
    DROP TABLE [dbo].[ReceiptDetail];
GO
IF OBJECT_ID(N'[dbo].[StockBack]', 'U') IS NOT NULL
    DROP TABLE [dbo].[StockBack];
GO
IF OBJECT_ID(N'[dbo].[ProductionQuotation]', 'U') IS NOT NULL
    DROP TABLE [dbo].[ProductionQuotation];
GO
IF OBJECT_ID(N'[dbo].[OfferDetail]', 'U') IS NOT NULL
    DROP TABLE [dbo].[OfferDetail];
GO
IF OBJECT_ID(N'[dbo].[ProductionPlan]', 'U') IS NOT NULL
    DROP TABLE [dbo].[ProductionPlan];
GO
IF OBJECT_ID(N'[dbo].[Worksheet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Worksheet];
GO
IF OBJECT_ID(N'[dbo].[WorkingProcedure]', 'U') IS NOT NULL
    DROP TABLE [dbo].[WorkingProcedure];
GO
IF OBJECT_ID(N'[dbo].[WorkingMaterial]', 'U') IS NOT NULL
    DROP TABLE [dbo].[WorkingMaterial];
GO
IF OBJECT_ID(N'[dbo].[MaterialRequisition]', 'U') IS NOT NULL
    DROP TABLE [dbo].[MaterialRequisition];
GO
IF OBJECT_ID(N'[dbo].[Acceptance]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Acceptance];
GO
IF OBJECT_ID(N'[dbo].[PlanStorage]', 'U') IS NOT NULL
    DROP TABLE [dbo].[PlanStorage];
GO
IF OBJECT_ID(N'[dbo].[SystemParams]', 'U') IS NOT NULL
    DROP TABLE [dbo].[SystemParams];
GO
IF OBJECT_ID(N'[dbo].[Attachment]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Attachment];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'Employee'
CREATE TABLE [dbo].[Employee] (
    [Id] nvarchar(40)  NOT NULL,
    [Code] nvarchar(30)  NOT NULL,
    [Name] nvarchar(20)  NOT NULL,
    [Phone] nvarchar(20)  NULL,
    [CreateTime] datetime  NOT NULL,
    [Email] nvarchar(120)  NULL,
    [Type] smallint  NOT NULL,
    [Status] smallint  NOT NULL,
    [PINCodes] nvarchar(max)  NOT NULL,
    [DepartmentId] nvarchar(40)  NULL,
    [RoleId] nvarchar(40)  NULL,
    [NativePlace] nvarchar(20)  NULL,
    [HomeAddress] nvarchar(120)  NULL,
    [HomeTel] nvarchar(16)  NULL,
    [Address] nvarchar(120)  NULL,
    [BirthDate] datetime  NOT NULL,
    [Sex] smallint  NOT NULL,
    [EntryDate] datetime  NOT NULL,
    [TrialDays] smallint  NOT NULL,
    [Remarks] nvarchar(200)  NULL,
    [QuitDate] datetime  NOT NULL,
    [Nation] nvarchar(20)  NULL,
    [MarriageStatus] nvarchar(max)  NULL,
    [PoliticalStatus] nvarchar(20)  NULL,
    [GraduateSchool] nvarchar(60)  NULL,
    [Major] nvarchar(max)  NULL,
    [ContractEndDate] datetime  NOT NULL,
    [BankAccount] nvarchar(30)  NULL,
    [MedicalInsuranceAccount] nvarchar(30)  NULL,
    [PensionInsuranceAccount] nvarchar(30)  NULL,
    [OtherInformation] nvarchar(30)  NULL,
    [Education] nvarchar(20)  NULL,
    [User_Id] nvarchar(40)  NULL
);
GO

-- Creating table 'Department'
CREATE TABLE [dbo].[Department] (
    [Id] nvarchar(40)  NOT NULL,
    [Name] nvarchar(60)  NOT NULL,
    [Code] nvarchar(20)  NULL,
    [CreateTime] datetime  NOT NULL,
    [Status] smallint  NOT NULL,
    [ParentId] nvarchar(40)  NULL,
    [Address] nvarchar(120)  NULL,
    [Tel] nvarchar(16)  NULL,
    [Remarks] nvarchar(200)  NULL
);
GO

-- Creating table 'Role'
CREATE TABLE [dbo].[Role] (
    [Id] nvarchar(40)  NOT NULL,
    [Name] nvarchar(60)  NOT NULL,
    [Code] nvarchar(40)  NOT NULL,
    [CreateTime] datetime  NOT NULL,
    [ParentId] nvarchar(40)  NULL,
    [Remarks] nvarchar(300)  NULL
);
GO

-- Creating table 'Menu'
CREATE TABLE [dbo].[Menu] (
    [Id] nvarchar(40)  NOT NULL,
    [Name] nvarchar(20)  NOT NULL,
    [Url] nvarchar(120)  NULL,
    [Icon] nvarchar(120)  NULL,
    [Module] nvarchar(30)  NULL,
    [Sort] smallint  NOT NULL,
    [ParentId] nvarchar(40)  NULL,
    [IsVail] bit  NOT NULL,
    [Status] smallint  NOT NULL,
    [Level] smallint  NOT NULL,
    [Code] nvarchar(6)  NOT NULL
);
GO

-- Creating table 'UserProperty'
CREATE TABLE [dbo].[UserProperty] (
    [Id] nvarchar(40)  NOT NULL,
    [MenuId] nvarchar(40)  NOT NULL,
    [CreateTime] datetime  NOT NULL,
    [CreateUser] nvarchar(30)  NOT NULL,
    [UserId] nvarchar(40)  NOT NULL
);
GO

-- Creating table 'UserLog'
CREATE TABLE [dbo].[UserLog] (
    [Id] nvarchar(40)  NOT NULL,
    [Type] nvarchar(20)  NOT NULL,
    [Content] nvarchar(2000)  NOT NULL,
    [UserId] nvarchar(40)  NOT NULL,
    [UserName] nvarchar(20)  NOT NULL,
    [CreateTime] datetime  NOT NULL
);
GO

-- Creating table 'SystemLog'
CREATE TABLE [dbo].[SystemLog] (
    [Id] nvarchar(40)  NOT NULL,
    [Level] nvarchar(20)  NOT NULL,
    [Method] nvarchar(120)  NOT NULL,
    [Content] nvarchar(2000)  NOT NULL,
    [CreateTime] datetime  NOT NULL
);
GO

-- Creating table 'Material'
CREATE TABLE [dbo].[Material] (
    [Id] nvarchar(40)  NOT NULL,
    [Name] nvarchar(80)  NOT NULL,
    [Specifications] nvarchar(max)  NOT NULL,
    [CreateTime] nvarchar(max)  NOT NULL,
    [CreateUser] nvarchar(max)  NOT NULL,
    [Code] nvarchar(40)  NOT NULL,
    [Brand] nvarchar(30)  NULL,
    [Producer] nvarchar(90)  NULL,
    [PurchasePrice] decimal(2,0)  NOT NULL,
    [SellingPrice] decimal(2,0)  NOT NULL,
    [SalesCommission] decimal(2,0)  NOT NULL,
    [Purpose] nvarchar(30)  NULL,
    [MemoryCode] nvarchar(40)  NULL,
    [Source] smallint  NOT NULL,
    [Color] nvarchar(15)  NULL,
    [Img] nvarchar(150)  NULL,
    [GraphNumber] nvarchar(40)  NULL,
    [Remarks] nvarchar(200)  NULL,
    [FirstSellingPrice] decimal(2,0)  NOT NULL,
    [SecondSellingPrice] decimal(2,0)  NOT NULL,
    [ThreeSellingPrice] decimal(2,0)  NOT NULL,
    [FourSellingPrice] decimal(2,0)  NOT NULL,
    [FiveSellingPrice] decimal(2,0)  NOT NULL,
    [FirstPurchasePrice] decimal(2,0)  NOT NULL,
    [SecondPurchasePrice] decimal(2,0)  NOT NULL,
    [ThreePurchasePrice] decimal(2,0)  NOT NULL,
    [FourPurchasePrice] decimal(2,0)  NOT NULL,
    [FivePurchasePrice] decimal(2,0)  NOT NULL,
    [UpdateTime] datetime  NOT NULL,
    [UpdateUser] nvarchar(20)  NOT NULL,
    [TypeId] nvarchar(40)  NOT NULL,
    [UnitId] nvarchar(40)  NOT NULL,
    [BarCode] nvarchar(30)  NULL
);
GO

-- Creating table 'MaterialType'
CREATE TABLE [dbo].[MaterialType] (
    [Id] nvarchar(40)  NOT NULL,
    [Name] nvarchar(max)  NOT NULL,
    [ParentId] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'Unit'
CREATE TABLE [dbo].[Unit] (
    [Id] nvarchar(40)  NOT NULL,
    [Name] nvarchar(10)  NOT NULL,
    [Sort] smallint  NOT NULL
);
GO

-- Creating table 'ProductMix'
CREATE TABLE [dbo].[ProductMix] (
    [Id] nvarchar(40)  NOT NULL,
    [UpdateTime] datetime  NOT NULL,
    [UpdateUser] nvarchar(20)  NOT NULL,
    [Remarks] nvarchar(200)  NULL,
    [Material_Id] nvarchar(40)  NOT NULL
);
GO

-- Creating table 'MixMaterial'
CREATE TABLE [dbo].[MixMaterial] (
    [Id] nvarchar(40)  NOT NULL,
    [Name] nvarchar(80)  NOT NULL,
    [Specifications] nvarchar(max)  NOT NULL,
    [Count] decimal(2,0)  NOT NULL,
    [UnitPrice] decimal(2,0)  NOT NULL,
    [Loss] decimal(2,0)  NOT NULL,
    [Remarks] nvarchar(200)  NULL,
    [Source] smallint  NOT NULL,
    [ProductMixId] nvarchar(40)  NOT NULL,
    [UnitId] nvarchar(40)  NOT NULL,
    [TotalPrice] decimal(2,0)  NOT NULL,
    [MaterialRemarks] nvarchar(200)  NULL,
    [Code] nvarchar(40)  NULL,
    [Material_Id] nvarchar(40)  NOT NULL
);
GO

-- Creating table 'Procedure'
CREATE TABLE [dbo].[Procedure] (
    [Id] nvarchar(40)  NOT NULL,
    [Name] nvarchar(40)  NOT NULL,
    [StepCode] nvarchar(20)  NOT NULL,
    [Price] decimal(2,0)  NOT NULL,
    [Content] nvarchar(200)  NULL,
    [UpdateTime] datetime  NOT NULL,
    [UpdateUser] nvarchar(20)  NOT NULL
);
GO

-- Creating table 'Company'
CREATE TABLE [dbo].[Company] (
    [Id] nvarchar(40)  NOT NULL,
    [Name] nvarchar(120)  NOT NULL,
    [Code] nvarchar(50)  NOT NULL,
    [Contacts] nvarchar(16)  NULL,
    [ContactNumber] nvarchar(16)  NULL,
    [Tel] nvarchar(16)  NULL,
    [Email] nvarchar(max)  NULL,
    [Address] nvarchar(max)  NULL,
    [Fax] nvarchar(max)  NULL,
    [Website] nvarchar(max)  NULL,
    [LevelId] nvarchar(40)  NULL,
    [SourceId] nvarchar(40)  NULL,
    [IndustryId] nvarchar(40)  NULL,
    [SalesmanId] nvarchar(40)  NULL,
    [StatusId] nvarchar(40)  NULL,
    [TypeId] nvarchar(40)  NULL,
    [PropertyId] nvarchar(40)  NULL,
    [StageId] nvarchar(40)  NULL,
    [IsSupplier] bit  NOT NULL,
    [IsCustomer] bit  NOT NULL,
    [IsInvoice] bit  NOT NULL,
    [Province] nvarchar(15)  NULL,
    [City] nvarchar(20)  NULL,
    [BankName] nvarchar(40)  NULL,
    [BankAccount] nvarchar(40)  NULL,
    [DutyParagraph] nvarchar(40)  NULL,
    [InvoiceAddress] nvarchar(60)  NULL,
    [TaxRate] decimal(4,0)  NOT NULL,
    [SupplierPreDeposit] decimal(2,0)  NOT NULL,
    [CustomerPreDeposit] decimal(2,0)  NOT NULL,
    [MainProducts] nvarchar(300)  NULL,
    [Remarks] nvarchar(300)  NULL
);
GO

-- Creating table 'CompanyType'
CREATE TABLE [dbo].[CompanyType] (
    [Id] nvarchar(40)  NOT NULL,
    [Name] nvarchar(30)  NOT NULL,
    [ParentId] nvarchar(max)  NOT NULL,
    [Default] bit  NOT NULL,
    [Level] smallint  NOT NULL,
    [Type] nvarchar(10)  NOT NULL,
    [TypeName] nvarchar(20)  NULL
);
GO

-- Creating table 'User'
CREATE TABLE [dbo].[User] (
    [Id] nvarchar(40)  NOT NULL,
    [Name] nvarchar(20)  NOT NULL,
    [Password] nvarchar(50)  NOT NULL,
    [CreateTime] datetime  NOT NULL,
    [Remarks] nvarchar(200)  NULL
);
GO

-- Creating table 'ProcedureList'
CREATE TABLE [dbo].[ProcedureList] (
    [Id] nvarchar(40)  NOT NULL,
    [ProductMixId] nvarchar(40)  NULL,
    [ProcedureId] nvarchar(40)  NULL
);
GO

-- Creating table 'Warehouse'
CREATE TABLE [dbo].[Warehouse] (
    [Id] nvarchar(40)  NOT NULL,
    [Address] nvarchar(max)  NOT NULL,
    [Area] nvarchar(max)  NOT NULL,
    [Default] bit  NOT NULL,
    [Code] nvarchar(40)  NOT NULL,
    [CreateTime] datetime  NOT NULL,
    [UpdateTime] datetime  NOT NULL,
    [InCalculation] bit  NOT NULL
);
GO

-- Creating table 'Stock'
CREATE TABLE [dbo].[Stock] (
    [Id] nvarchar(40)  NOT NULL,
    [Count] decimal(2,0)  NOT NULL,
    [WarehouseId] nvarchar(40)  NOT NULL,
    [MaterialId] nvarchar(40)  NOT NULL,
    [BatchNumber] nvarchar(40)  NULL
);
GO

-- Creating table 'StockRecord'
CREATE TABLE [dbo].[StockRecord] (
    [Id] nvarchar(40)  NOT NULL,
    [Code] nvarchar(40)  NOT NULL,
    [WarehouseId] nvarchar(40)  NOT NULL,
    [CreateTime] datetime  NOT NULL,
    [StorageTime] datetime  NOT NULL,
    [Type] smallint  NOT NULL,
    [AmountMoney] decimal(2,0)  NOT NULL,
    [EmployeeId] nvarchar(40)  NULL,
    [TaxAmount] decimal(2,0)  NOT NULL,
    [Remarks] nvarchar(300)  NULL,
    [Company_Id] nvarchar(40)  NULL
);
GO

-- Creating table 'RecordMaterial'
CREATE TABLE [dbo].[RecordMaterial] (
    [Id] nvarchar(40)  NOT NULL,
    [StockRecordId] nvarchar(40)  NOT NULL,
    [BatchNumber] nvarchar(40)  NOT NULL,
    [Count] decimal(2,0)  NOT NULL,
    [UnitPrice] decimal(2,0)  NOT NULL,
    [AmountMoney] decimal(2,0)  NOT NULL,
    [Invoice] bit  NOT NULL,
    [TaxRate] decimal(2,0)  NOT NULL,
    [TaxUnitPrice] decimal(2,0)  NOT NULL,
    [TaxAmountMoney] decimal(2,0)  NOT NULL,
    [PackCount] decimal(2,0)  NOT NULL,
    [Remarks] nvarchar(300)  NULL,
    [Code] nvarchar(40)  NULL,
    [CustomerCode] nvarchar(40)  NULL,
    [UnitId] nvarchar(40)  NULL,
    [MaterialId] nvarchar(40)  NOT NULL
);
GO

-- Creating table 'Order'
CREATE TABLE [dbo].[Order] (
    [Id] nvarchar(40)  NOT NULL,
    [Code] nvarchar(40)  NOT NULL,
    [CreateTime] datetime  NOT NULL,
    [OrderDate] datetime  NOT NULL,
    [CompletionDate] datetime  NOT NULL,
    [CompanyId] nvarchar(40)  NULL,
    [PriceLevel] smallint  NOT NULL,
    [EmployeeId] nvarchar(40)  NULL,
    [WarehouseId] nvarchar(40)  NULL,
    [AmountMoney] decimal(2,0)  NOT NULL,
    [StatementDate] datetime  NOT NULL,
    [DeliveryAddress] nvarchar(200)  NULL,
    [CustomerCode] nvarchar(40)  NULL,
    [OutInStatus] smallint  NOT NULL,
    [AccountStatus] smallint  NOT NULL,
    [InvoiceCode] nvarchar(40)  NULL,
    [CapitalAccountId] nvarchar(40)  NULL,
    [Type] smallint  NOT NULL,
    [StockRecordId] nvarchar(40)  NULL
);
GO

-- Creating table 'OrderMaterial'
CREATE TABLE [dbo].[OrderMaterial] (
    [Id] nvarchar(40)  NOT NULL,
    [OrderId] nvarchar(40)  NOT NULL,
    [BatchNumber] nvarchar(40)  NULL,
    [Count] decimal(2,0)  NOT NULL,
    [UnitPrice] decimal(2,0)  NOT NULL,
    [AmountMoney] decimal(2,0)  NOT NULL,
    [Invoice] bit  NOT NULL,
    [TaxRate] decimal(2,0)  NOT NULL,
    [TaxUnitPrice] decimal(2,0)  NOT NULL,
    [TaxAmountMoney] decimal(2,0)  NOT NULL,
    [PackCount] decimal(2,0)  NOT NULL,
    [Remarks] nvarchar(300)  NULL,
    [UnitId] nvarchar(40)  NULL,
    [MaterialId] nvarchar(40)  NOT NULL,
    [CompletionCount] decimal(2,0)  NOT NULL
);
GO

-- Creating table 'CapitalAccount'
CREATE TABLE [dbo].[CapitalAccount] (
    [Id] nvarchar(40)  NOT NULL
);
GO

-- Creating table 'Allocation'
CREATE TABLE [dbo].[Allocation] (
    [Id] nvarchar(40)  NOT NULL,
    [Code] nvarchar(40)  NOT NULL,
    [CreateTime] datetime  NOT NULL,
    [AllocationTime] datetime  NOT NULL,
    [Remarks] nvarchar(300)  NULL,
    [OutWarehouseId] nvarchar(40)  NOT NULL,
    [WarehouseId] nvarchar(40)  NOT NULL,
    [EmployeeId] nvarchar(40)  NULL,
    [OutStockRecordId] nvarchar(40)  NOT NULL,
    [InStockRecordId] nvarchar(40)  NOT NULL
);
GO

-- Creating table 'Receipt'
CREATE TABLE [dbo].[Receipt] (
    [Id] nvarchar(40)  NOT NULL,
    [Code] nvarchar(40)  NOT NULL,
    [Type] nvarchar(max)  NOT NULL,
    [CreateTime] datetime  NOT NULL,
    [BillDate] datetime  NOT NULL,
    [AmountMoney] decimal(2,0)  NOT NULL,
    [NetReceipts] decimal(2,0)  NOT NULL,
    [IntegerMoney] int  NOT NULL,
    [BillCode] nvarchar(40)  NULL,
    [Remarks] nvarchar(300)  NULL,
    [ReceivableMoney] decimal(2,0)  NOT NULL,
    [CompanyId] nvarchar(40)  NOT NULL,
    [EmployeeId] nvarchar(40)  NULL
);
GO

-- Creating table 'ReceiptDetail'
CREATE TABLE [dbo].[ReceiptDetail] (
    [Id] nvarchar(40)  NOT NULL,
    [Type] smallint  NOT NULL,
    [OrderDate] datetime  NOT NULL,
    [OrderMoney] datetime  NOT NULL,
    [AmountCollected] decimal(2,0)  NOT NULL,
    [AmountReceived] decimal(2,0)  NOT NULL,
    [Remarks] nvarchar(300)  NULL,
    [ReceiptId] nvarchar(40)  NOT NULL,
    [OrderId] nvarchar(40)  NOT NULL
);
GO

-- Creating table 'StockBack'
CREATE TABLE [dbo].[StockBack] (
    [Id] nvarchar(40)  NOT NULL,
    [Code] nvarchar(40)  NOT NULL,
    [CreateTime] datetime  NOT NULL,
    [StorageTime] datetime  NOT NULL,
    [AmountMoney] decimal(2,0)  NOT NULL,
    [Remarks] nvarchar(300)  NULL,
    [OutStockRecordId] nvarchar(40)  NOT NULL,
    [EmployeeId] nvarchar(40)  NULL,
    [CompanyId] nvarchar(40)  NULL,
    [StockRecordId] nvarchar(40)  NOT NULL
);
GO

-- Creating table 'ProductionQuotation'
CREATE TABLE [dbo].[ProductionQuotation] (
    [Id] nvarchar(40)  NOT NULL,
    [Code] nvarchar(40)  NOT NULL,
    [CreateTime] datetime  NOT NULL,
    [OfferDate] datetime  NOT NULL,
    [Remarks] nvarchar(300)  NULL,
    [Count] decimal(2,0)  NOT NULL,
    [RrofitRate] decimal(4,0)  NOT NULL,
    [Currency] nvarchar(10)  NOT NULL,
    [ExchangeRate] decimal(4,0)  NOT NULL,
    [MaterialId] nvarchar(40)  NULL,
    [EmployeeId] nvarchar(40)  NULL,
    [CompanyId] nvarchar(40)  NULL
);
GO

-- Creating table 'OfferDetail'
CREATE TABLE [dbo].[OfferDetail] (
    [Id] nvarchar(40)  NOT NULL,
    [Type] smallint  NOT NULL,
    [Name] nvarchar(60)  NULL,
    [Summary] nvarchar(300)  NULL,
    [UnitPrice] decimal(2,0)  NOT NULL,
    [UnitCount] decimal(2,0)  NOT NULL,
    [UnitAmount] decimal(2,0)  NOT NULL,
    [Amount] decimal(2,0)  NOT NULL,
    [Remarks] nvarchar(300)  NULL,
    [ProductionQuotationId] nvarchar(40)  NOT NULL
);
GO

-- Creating table 'ProductionPlan'
CREATE TABLE [dbo].[ProductionPlan] (
    [Id] nvarchar(40)  NOT NULL,
    [Code] nvarchar(40)  NOT NULL,
    [Count] decimal(2,0)  NOT NULL,
    [BatchNumber] nvarchar(40)  NULL,
    [CreateTime] datetime  NOT NULL,
    [PlanDate] datetime  NOT NULL,
    [Status] smallint  NOT NULL,
    [PlanCompleteDate] datetime  NOT NULL,
    [CompleteDate] datetime  NOT NULL,
    [Remarks] nvarchar(300)  NOT NULL,
    [OrderId] nvarchar(40)  NULL,
    [ProductionQuotationId] nvarchar(40)  NULL,
    [Type] smallint  NOT NULL,
    [ParentId] nvarchar(40)  NULL,
    [Material_Id] nvarchar(40)  NOT NULL
);
GO

-- Creating table 'Worksheet'
CREATE TABLE [dbo].[Worksheet] (
    [Id] nvarchar(40)  NOT NULL,
    [Code] nvarchar(40)  NOT NULL,
    [Count] decimal(2,0)  NOT NULL,
    [StartDate] datetime  NOT NULL,
    [EndDate] datetime  NOT NULL,
    [Remarks] nvarchar(300)  NULL,
    [CreateTime] datetime  NOT NULL,
    [ProductionPlanId] nvarchar(40)  NOT NULL,
    [DepartmentId] nvarchar(40)  NULL,
    [CompanyId] nvarchar(40)  NULL,
    [EmployeeId] nvarchar(40)  NULL,
    [UnitPrice] decimal(2,0)  NOT NULL,
    [AmountMoney] nvarchar(max)  NOT NULL,
    [Type] smallint  NOT NULL,
    [Status] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'WorkingProcedure'
CREATE TABLE [dbo].[WorkingProcedure] (
    [Id] nvarchar(40)  NOT NULL,
    [WorksheetId] nvarchar(40)  NOT NULL,
    [ProcedureId] nvarchar(40)  NOT NULL
);
GO

-- Creating table 'WorkingMaterial'
CREATE TABLE [dbo].[WorkingMaterial] (
    [Id] nvarchar(40)  NOT NULL,
    [Count] decimal(2,0)  NOT NULL,
    [Remarks] nvarchar(300)  NULL,
    [MaterialId] nvarchar(40)  NOT NULL,
    [WorksheetId] nvarchar(40)  NOT NULL
);
GO

-- Creating table 'MaterialRequisition'
CREATE TABLE [dbo].[MaterialRequisition] (
    [Id] nvarchar(40)  NOT NULL,
    [Code] nvarchar(40)  NOT NULL,
    [CreateTime] datetime  NOT NULL,
    [PickingTime] datetime  NOT NULL,
    [Remarks] nvarchar(300)  NULL,
    [Type] smallint  NOT NULL,
    [WorksheetId] nvarchar(40)  NOT NULL,
    [StockRecordId] nvarchar(40)  NOT NULL
);
GO

-- Creating table 'Acceptance'
CREATE TABLE [dbo].[Acceptance] (
    [Id] nvarchar(40)  NOT NULL,
    [Code] nvarchar(40)  NOT NULL,
    [CreateTime] datetime  NOT NULL,
    [BatchNumber] nvarchar(40)  NOT NULL,
    [Date] datetime  NOT NULL,
    [Remarks] nvarchar(300)  NULL,
    [Count] decimal(2,0)  NOT NULL,
    [UnitPrice] decimal(2,0)  NOT NULL,
    [AmountMoney] decimal(2,0)  NOT NULL,
    [Procedure] nvarchar(200)  NULL,
    [UnqualifiedCount] decimal(2,0)  NOT NULL,
    [WorksheetId] nvarchar(40)  NOT NULL,
    [Type] smallint  NOT NULL,
    [WarehouseId] nvarchar(40)  NULL,
    [Storage] smallint  NOT NULL,
    [CheckEmployeeId] nvarchar(40)  NOT NULL,
    [ExamineEmployeeId] nvarchar(40)  NULL,
    [ExamineDate] datetime  NOT NULL,
    [StockRecordId] nvarchar(40)  NULL
);
GO

-- Creating table 'PlanStorage'
CREATE TABLE [dbo].[PlanStorage] (
    [Id] nvarchar(40)  NOT NULL,
    [Code] nvarchar(40)  NOT NULL,
    [CreateTime] datetime  NOT NULL,
    [BatchNumber] nvarchar(40)  NOT NULL,
    [Date] datetime  NOT NULL,
    [Count] decimal(2,0)  NOT NULL,
    [UnitPrice] decimal(2,0)  NOT NULL,
    [AmountMoney] decimal(2,0)  NOT NULL,
    [ProductionPlanId] nvarchar(40)  NOT NULL,
    [StockRecordId] nvarchar(40)  NOT NULL
);
GO

-- Creating table 'SystemParams'
CREATE TABLE [dbo].[SystemParams] (
    [Id] nvarchar(40)  NOT NULL,
    [Name] nvarchar(120)  NOT NULL,
    [Value] nvarchar(200)  NOT NULL,
    [ParentId] nvarchar(40)  NULL,
    [Remarks] nvarchar(300)  NULL
);
GO

-- Creating table 'Attachment'
CREATE TABLE [dbo].[Attachment] (
    [Id] nvarchar(40)  NOT NULL,
    [Name] nvarchar(200)  NOT NULL,
    [FileType] nvarchar(10)  NOT NULL,
    [Size] decimal(2,0)  NOT NULL,
    [Url] nvarchar(300)  NOT NULL,
    [CreateTime] datetime  NOT NULL,
    [SearchKey] nvarchar(40)  NOT NULL,
    [UserId] nvarchar(max)  NOT NULL,
    [UserName] nvarchar(max)  NOT NULL,
    [DownloadCount] smallint  NOT NULL,
    [LastTime] datetime  NOT NULL,
    [Remarks] nvarchar(300)  NULL,
    [Summary] nvarchar(200)  NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [Id] in table 'Employee'
ALTER TABLE [dbo].[Employee]
ADD CONSTRAINT [PK_Employee]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Department'
ALTER TABLE [dbo].[Department]
ADD CONSTRAINT [PK_Department]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Role'
ALTER TABLE [dbo].[Role]
ADD CONSTRAINT [PK_Role]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Menu'
ALTER TABLE [dbo].[Menu]
ADD CONSTRAINT [PK_Menu]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'UserProperty'
ALTER TABLE [dbo].[UserProperty]
ADD CONSTRAINT [PK_UserProperty]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'UserLog'
ALTER TABLE [dbo].[UserLog]
ADD CONSTRAINT [PK_UserLog]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'SystemLog'
ALTER TABLE [dbo].[SystemLog]
ADD CONSTRAINT [PK_SystemLog]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Material'
ALTER TABLE [dbo].[Material]
ADD CONSTRAINT [PK_Material]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'MaterialType'
ALTER TABLE [dbo].[MaterialType]
ADD CONSTRAINT [PK_MaterialType]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Unit'
ALTER TABLE [dbo].[Unit]
ADD CONSTRAINT [PK_Unit]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'ProductMix'
ALTER TABLE [dbo].[ProductMix]
ADD CONSTRAINT [PK_ProductMix]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'MixMaterial'
ALTER TABLE [dbo].[MixMaterial]
ADD CONSTRAINT [PK_MixMaterial]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Procedure'
ALTER TABLE [dbo].[Procedure]
ADD CONSTRAINT [PK_Procedure]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Company'
ALTER TABLE [dbo].[Company]
ADD CONSTRAINT [PK_Company]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'CompanyType'
ALTER TABLE [dbo].[CompanyType]
ADD CONSTRAINT [PK_CompanyType]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'User'
ALTER TABLE [dbo].[User]
ADD CONSTRAINT [PK_User]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'ProcedureList'
ALTER TABLE [dbo].[ProcedureList]
ADD CONSTRAINT [PK_ProcedureList]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Warehouse'
ALTER TABLE [dbo].[Warehouse]
ADD CONSTRAINT [PK_Warehouse]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Stock'
ALTER TABLE [dbo].[Stock]
ADD CONSTRAINT [PK_Stock]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'StockRecord'
ALTER TABLE [dbo].[StockRecord]
ADD CONSTRAINT [PK_StockRecord]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'RecordMaterial'
ALTER TABLE [dbo].[RecordMaterial]
ADD CONSTRAINT [PK_RecordMaterial]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Order'
ALTER TABLE [dbo].[Order]
ADD CONSTRAINT [PK_Order]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'OrderMaterial'
ALTER TABLE [dbo].[OrderMaterial]
ADD CONSTRAINT [PK_OrderMaterial]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'CapitalAccount'
ALTER TABLE [dbo].[CapitalAccount]
ADD CONSTRAINT [PK_CapitalAccount]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Allocation'
ALTER TABLE [dbo].[Allocation]
ADD CONSTRAINT [PK_Allocation]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Receipt'
ALTER TABLE [dbo].[Receipt]
ADD CONSTRAINT [PK_Receipt]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'ReceiptDetail'
ALTER TABLE [dbo].[ReceiptDetail]
ADD CONSTRAINT [PK_ReceiptDetail]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'StockBack'
ALTER TABLE [dbo].[StockBack]
ADD CONSTRAINT [PK_StockBack]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'ProductionQuotation'
ALTER TABLE [dbo].[ProductionQuotation]
ADD CONSTRAINT [PK_ProductionQuotation]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'OfferDetail'
ALTER TABLE [dbo].[OfferDetail]
ADD CONSTRAINT [PK_OfferDetail]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'ProductionPlan'
ALTER TABLE [dbo].[ProductionPlan]
ADD CONSTRAINT [PK_ProductionPlan]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Worksheet'
ALTER TABLE [dbo].[Worksheet]
ADD CONSTRAINT [PK_Worksheet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'WorkingProcedure'
ALTER TABLE [dbo].[WorkingProcedure]
ADD CONSTRAINT [PK_WorkingProcedure]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'WorkingMaterial'
ALTER TABLE [dbo].[WorkingMaterial]
ADD CONSTRAINT [PK_WorkingMaterial]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'MaterialRequisition'
ALTER TABLE [dbo].[MaterialRequisition]
ADD CONSTRAINT [PK_MaterialRequisition]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Acceptance'
ALTER TABLE [dbo].[Acceptance]
ADD CONSTRAINT [PK_Acceptance]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'PlanStorage'
ALTER TABLE [dbo].[PlanStorage]
ADD CONSTRAINT [PK_PlanStorage]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'SystemParams'
ALTER TABLE [dbo].[SystemParams]
ADD CONSTRAINT [PK_SystemParams]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Attachment'
ALTER TABLE [dbo].[Attachment]
ADD CONSTRAINT [PK_Attachment]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [MenuId] in table 'UserProperty'
ALTER TABLE [dbo].[UserProperty]
ADD CONSTRAINT [FK_MenuUserProperty]
    FOREIGN KEY ([MenuId])
    REFERENCES [dbo].[Menu]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_MenuUserProperty'
CREATE INDEX [IX_FK_MenuUserProperty]
ON [dbo].[UserProperty]
    ([MenuId]);
GO

-- Creating foreign key on [DepartmentId] in table 'Employee'
ALTER TABLE [dbo].[Employee]
ADD CONSTRAINT [FK_DepartmentEmployee]
    FOREIGN KEY ([DepartmentId])
    REFERENCES [dbo].[Department]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_DepartmentEmployee'
CREATE INDEX [IX_FK_DepartmentEmployee]
ON [dbo].[Employee]
    ([DepartmentId]);
GO

-- Creating foreign key on [RoleId] in table 'Employee'
ALTER TABLE [dbo].[Employee]
ADD CONSTRAINT [FK_RoleEmployee]
    FOREIGN KEY ([RoleId])
    REFERENCES [dbo].[Role]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_RoleEmployee'
CREATE INDEX [IX_FK_RoleEmployee]
ON [dbo].[Employee]
    ([RoleId]);
GO

-- Creating foreign key on [LevelId] in table 'Company'
ALTER TABLE [dbo].[Company]
ADD CONSTRAINT [FK_CompanyTypeCompanyLevel]
    FOREIGN KEY ([LevelId])
    REFERENCES [dbo].[CompanyType]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_CompanyTypeCompanyLevel'
CREATE INDEX [IX_FK_CompanyTypeCompanyLevel]
ON [dbo].[Company]
    ([LevelId]);
GO

-- Creating foreign key on [SourceId] in table 'Company'
ALTER TABLE [dbo].[Company]
ADD CONSTRAINT [FK_CompanyTypeCompanySource]
    FOREIGN KEY ([SourceId])
    REFERENCES [dbo].[CompanyType]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_CompanyTypeCompanySource'
CREATE INDEX [IX_FK_CompanyTypeCompanySource]
ON [dbo].[Company]
    ([SourceId]);
GO

-- Creating foreign key on [IndustryId] in table 'Company'
ALTER TABLE [dbo].[Company]
ADD CONSTRAINT [FK_CompanyTypeCompanyIndustry]
    FOREIGN KEY ([IndustryId])
    REFERENCES [dbo].[CompanyType]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_CompanyTypeCompanyIndustry'
CREATE INDEX [IX_FK_CompanyTypeCompanyIndustry]
ON [dbo].[Company]
    ([IndustryId]);
GO

-- Creating foreign key on [SalesmanId] in table 'Company'
ALTER TABLE [dbo].[Company]
ADD CONSTRAINT [FK_EmployeeCompany]
    FOREIGN KEY ([SalesmanId])
    REFERENCES [dbo].[Employee]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_EmployeeCompany'
CREATE INDEX [IX_FK_EmployeeCompany]
ON [dbo].[Company]
    ([SalesmanId]);
GO

-- Creating foreign key on [StatusId] in table 'Company'
ALTER TABLE [dbo].[Company]
ADD CONSTRAINT [FK_CompanyTypeCompanyStatus]
    FOREIGN KEY ([StatusId])
    REFERENCES [dbo].[CompanyType]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_CompanyTypeCompanyStatus'
CREATE INDEX [IX_FK_CompanyTypeCompanyStatus]
ON [dbo].[Company]
    ([StatusId]);
GO

-- Creating foreign key on [TypeId] in table 'Company'
ALTER TABLE [dbo].[Company]
ADD CONSTRAINT [FK_CompanyTypeCompanyType]
    FOREIGN KEY ([TypeId])
    REFERENCES [dbo].[CompanyType]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_CompanyTypeCompanyType'
CREATE INDEX [IX_FK_CompanyTypeCompanyType]
ON [dbo].[Company]
    ([TypeId]);
GO

-- Creating foreign key on [PropertyId] in table 'Company'
ALTER TABLE [dbo].[Company]
ADD CONSTRAINT [FK_CompanyTypeCompanyproperty]
    FOREIGN KEY ([PropertyId])
    REFERENCES [dbo].[CompanyType]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_CompanyTypeCompanyproperty'
CREATE INDEX [IX_FK_CompanyTypeCompanyproperty]
ON [dbo].[Company]
    ([PropertyId]);
GO

-- Creating foreign key on [StageId] in table 'Company'
ALTER TABLE [dbo].[Company]
ADD CONSTRAINT [FK_CompanyTypeCompanyStage]
    FOREIGN KEY ([StageId])
    REFERENCES [dbo].[CompanyType]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_CompanyTypeCompanyStage'
CREATE INDEX [IX_FK_CompanyTypeCompanyStage]
ON [dbo].[Company]
    ([StageId]);
GO

-- Creating foreign key on [UserId] in table 'UserProperty'
ALTER TABLE [dbo].[UserProperty]
ADD CONSTRAINT [FK_UserUserProperty]
    FOREIGN KEY ([UserId])
    REFERENCES [dbo].[User]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_UserUserProperty'
CREATE INDEX [IX_FK_UserUserProperty]
ON [dbo].[UserProperty]
    ([UserId]);
GO

-- Creating foreign key on [TypeId] in table 'Material'
ALTER TABLE [dbo].[Material]
ADD CONSTRAINT [FK_MaterialTypeMaterial]
    FOREIGN KEY ([TypeId])
    REFERENCES [dbo].[MaterialType]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_MaterialTypeMaterial'
CREATE INDEX [IX_FK_MaterialTypeMaterial]
ON [dbo].[Material]
    ([TypeId]);
GO

-- Creating foreign key on [UnitId] in table 'Material'
ALTER TABLE [dbo].[Material]
ADD CONSTRAINT [FK_UnitMaterial]
    FOREIGN KEY ([UnitId])
    REFERENCES [dbo].[Unit]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_UnitMaterial'
CREATE INDEX [IX_FK_UnitMaterial]
ON [dbo].[Material]
    ([UnitId]);
GO

-- Creating foreign key on [ProductMixId] in table 'MixMaterial'
ALTER TABLE [dbo].[MixMaterial]
ADD CONSTRAINT [FK_ProductMixMixMaterial]
    FOREIGN KEY ([ProductMixId])
    REFERENCES [dbo].[ProductMix]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ProductMixMixMaterial'
CREATE INDEX [IX_FK_ProductMixMixMaterial]
ON [dbo].[MixMaterial]
    ([ProductMixId]);
GO

-- Creating foreign key on [Material_Id] in table 'MixMaterial'
ALTER TABLE [dbo].[MixMaterial]
ADD CONSTRAINT [FK_MixMaterialMaterial]
    FOREIGN KEY ([Material_Id])
    REFERENCES [dbo].[Material]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_MixMaterialMaterial'
CREATE INDEX [IX_FK_MixMaterialMaterial]
ON [dbo].[MixMaterial]
    ([Material_Id]);
GO

-- Creating foreign key on [UnitId] in table 'MixMaterial'
ALTER TABLE [dbo].[MixMaterial]
ADD CONSTRAINT [FK_UnitMixMaterial]
    FOREIGN KEY ([UnitId])
    REFERENCES [dbo].[Unit]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_UnitMixMaterial'
CREATE INDEX [IX_FK_UnitMixMaterial]
ON [dbo].[MixMaterial]
    ([UnitId]);
GO

-- Creating foreign key on [Material_Id] in table 'ProductMix'
ALTER TABLE [dbo].[ProductMix]
ADD CONSTRAINT [FK_ProductMixMaterial]
    FOREIGN KEY ([Material_Id])
    REFERENCES [dbo].[Material]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ProductMixMaterial'
CREATE INDEX [IX_FK_ProductMixMaterial]
ON [dbo].[ProductMix]
    ([Material_Id]);
GO

-- Creating foreign key on [ProductMixId] in table 'ProcedureList'
ALTER TABLE [dbo].[ProcedureList]
ADD CONSTRAINT [FK_ProductMixProcedureList]
    FOREIGN KEY ([ProductMixId])
    REFERENCES [dbo].[ProductMix]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ProductMixProcedureList'
CREATE INDEX [IX_FK_ProductMixProcedureList]
ON [dbo].[ProcedureList]
    ([ProductMixId]);
GO

-- Creating foreign key on [ProcedureId] in table 'ProcedureList'
ALTER TABLE [dbo].[ProcedureList]
ADD CONSTRAINT [FK_ProcedureProcedureList]
    FOREIGN KEY ([ProcedureId])
    REFERENCES [dbo].[Procedure]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ProcedureProcedureList'
CREATE INDEX [IX_FK_ProcedureProcedureList]
ON [dbo].[ProcedureList]
    ([ProcedureId]);
GO

-- Creating foreign key on [User_Id] in table 'Employee'
ALTER TABLE [dbo].[Employee]
ADD CONSTRAINT [FK_UserEmployee]
    FOREIGN KEY ([User_Id])
    REFERENCES [dbo].[User]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_UserEmployee'
CREATE INDEX [IX_FK_UserEmployee]
ON [dbo].[Employee]
    ([User_Id]);
GO

-- Creating foreign key on [WarehouseId] in table 'Stock'
ALTER TABLE [dbo].[Stock]
ADD CONSTRAINT [FK_WarehouseStock]
    FOREIGN KEY ([WarehouseId])
    REFERENCES [dbo].[Warehouse]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_WarehouseStock'
CREATE INDEX [IX_FK_WarehouseStock]
ON [dbo].[Stock]
    ([WarehouseId]);
GO

-- Creating foreign key on [WarehouseId] in table 'StockRecord'
ALTER TABLE [dbo].[StockRecord]
ADD CONSTRAINT [FK_WarehouseStockRecord]
    FOREIGN KEY ([WarehouseId])
    REFERENCES [dbo].[Warehouse]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_WarehouseStockRecord'
CREATE INDEX [IX_FK_WarehouseStockRecord]
ON [dbo].[StockRecord]
    ([WarehouseId]);
GO

-- Creating foreign key on [Company_Id] in table 'StockRecord'
ALTER TABLE [dbo].[StockRecord]
ADD CONSTRAINT [FK_StockRecordCompany]
    FOREIGN KEY ([Company_Id])
    REFERENCES [dbo].[Company]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_StockRecordCompany'
CREATE INDEX [IX_FK_StockRecordCompany]
ON [dbo].[StockRecord]
    ([Company_Id]);
GO

-- Creating foreign key on [StockRecordId] in table 'RecordMaterial'
ALTER TABLE [dbo].[RecordMaterial]
ADD CONSTRAINT [FK_StockRecordRecordMaterial]
    FOREIGN KEY ([StockRecordId])
    REFERENCES [dbo].[StockRecord]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_StockRecordRecordMaterial'
CREATE INDEX [IX_FK_StockRecordRecordMaterial]
ON [dbo].[RecordMaterial]
    ([StockRecordId]);
GO

-- Creating foreign key on [MaterialId] in table 'Stock'
ALTER TABLE [dbo].[Stock]
ADD CONSTRAINT [FK_MaterialStock]
    FOREIGN KEY ([MaterialId])
    REFERENCES [dbo].[Material]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_MaterialStock'
CREATE INDEX [IX_FK_MaterialStock]
ON [dbo].[Stock]
    ([MaterialId]);
GO

-- Creating foreign key on [EmployeeId] in table 'StockRecord'
ALTER TABLE [dbo].[StockRecord]
ADD CONSTRAINT [FK_EmployeeStockRecord]
    FOREIGN KEY ([EmployeeId])
    REFERENCES [dbo].[Employee]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_EmployeeStockRecord'
CREATE INDEX [IX_FK_EmployeeStockRecord]
ON [dbo].[StockRecord]
    ([EmployeeId]);
GO

-- Creating foreign key on [OrderId] in table 'OrderMaterial'
ALTER TABLE [dbo].[OrderMaterial]
ADD CONSTRAINT [FK_OrderOrderMaterial]
    FOREIGN KEY ([OrderId])
    REFERENCES [dbo].[Order]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_OrderOrderMaterial'
CREATE INDEX [IX_FK_OrderOrderMaterial]
ON [dbo].[OrderMaterial]
    ([OrderId]);
GO

-- Creating foreign key on [CompanyId] in table 'Order'
ALTER TABLE [dbo].[Order]
ADD CONSTRAINT [FK_OrderCompany]
    FOREIGN KEY ([CompanyId])
    REFERENCES [dbo].[Company]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_OrderCompany'
CREATE INDEX [IX_FK_OrderCompany]
ON [dbo].[Order]
    ([CompanyId]);
GO

-- Creating foreign key on [EmployeeId] in table 'Order'
ALTER TABLE [dbo].[Order]
ADD CONSTRAINT [FK_OrderEmployee]
    FOREIGN KEY ([EmployeeId])
    REFERENCES [dbo].[Employee]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_OrderEmployee'
CREATE INDEX [IX_FK_OrderEmployee]
ON [dbo].[Order]
    ([EmployeeId]);
GO

-- Creating foreign key on [WarehouseId] in table 'Order'
ALTER TABLE [dbo].[Order]
ADD CONSTRAINT [FK_OrderWarehouse]
    FOREIGN KEY ([WarehouseId])
    REFERENCES [dbo].[Warehouse]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_OrderWarehouse'
CREATE INDEX [IX_FK_OrderWarehouse]
ON [dbo].[Order]
    ([WarehouseId]);
GO

-- Creating foreign key on [CapitalAccountId] in table 'Order'
ALTER TABLE [dbo].[Order]
ADD CONSTRAINT [FK_CapitalAccountOrder]
    FOREIGN KEY ([CapitalAccountId])
    REFERENCES [dbo].[CapitalAccount]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_CapitalAccountOrder'
CREATE INDEX [IX_FK_CapitalAccountOrder]
ON [dbo].[Order]
    ([CapitalAccountId]);
GO

-- Creating foreign key on [UnitId] in table 'OrderMaterial'
ALTER TABLE [dbo].[OrderMaterial]
ADD CONSTRAINT [FK_UnitOrderMaterial]
    FOREIGN KEY ([UnitId])
    REFERENCES [dbo].[Unit]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_UnitOrderMaterial'
CREATE INDEX [IX_FK_UnitOrderMaterial]
ON [dbo].[OrderMaterial]
    ([UnitId]);
GO

-- Creating foreign key on [UnitId] in table 'RecordMaterial'
ALTER TABLE [dbo].[RecordMaterial]
ADD CONSTRAINT [FK_UnitRecordMaterial]
    FOREIGN KEY ([UnitId])
    REFERENCES [dbo].[Unit]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_UnitRecordMaterial'
CREATE INDEX [IX_FK_UnitRecordMaterial]
ON [dbo].[RecordMaterial]
    ([UnitId]);
GO

-- Creating foreign key on [MaterialId] in table 'OrderMaterial'
ALTER TABLE [dbo].[OrderMaterial]
ADD CONSTRAINT [FK_MaterialOrderMaterial]
    FOREIGN KEY ([MaterialId])
    REFERENCES [dbo].[Material]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_MaterialOrderMaterial'
CREATE INDEX [IX_FK_MaterialOrderMaterial]
ON [dbo].[OrderMaterial]
    ([MaterialId]);
GO

-- Creating foreign key on [MaterialId] in table 'RecordMaterial'
ALTER TABLE [dbo].[RecordMaterial]
ADD CONSTRAINT [FK_MaterialRecordMaterial]
    FOREIGN KEY ([MaterialId])
    REFERENCES [dbo].[Material]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_MaterialRecordMaterial'
CREATE INDEX [IX_FK_MaterialRecordMaterial]
ON [dbo].[RecordMaterial]
    ([MaterialId]);
GO

-- Creating foreign key on [OutWarehouseId] in table 'Allocation'
ALTER TABLE [dbo].[Allocation]
ADD CONSTRAINT [FK_WarehouseAllocation]
    FOREIGN KEY ([OutWarehouseId])
    REFERENCES [dbo].[Warehouse]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_WarehouseAllocation'
CREATE INDEX [IX_FK_WarehouseAllocation]
ON [dbo].[Allocation]
    ([OutWarehouseId]);
GO

-- Creating foreign key on [WarehouseId] in table 'Allocation'
ALTER TABLE [dbo].[Allocation]
ADD CONSTRAINT [FK_InWarehouseAllocation]
    FOREIGN KEY ([WarehouseId])
    REFERENCES [dbo].[Warehouse]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_InWarehouseAllocation'
CREATE INDEX [IX_FK_InWarehouseAllocation]
ON [dbo].[Allocation]
    ([WarehouseId]);
GO

-- Creating foreign key on [EmployeeId] in table 'Allocation'
ALTER TABLE [dbo].[Allocation]
ADD CONSTRAINT [FK_EmployeeAllocation]
    FOREIGN KEY ([EmployeeId])
    REFERENCES [dbo].[Employee]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_EmployeeAllocation'
CREATE INDEX [IX_FK_EmployeeAllocation]
ON [dbo].[Allocation]
    ([EmployeeId]);
GO

-- Creating foreign key on [ReceiptId] in table 'ReceiptDetail'
ALTER TABLE [dbo].[ReceiptDetail]
ADD CONSTRAINT [FK_ReceiptReceiptDetail]
    FOREIGN KEY ([ReceiptId])
    REFERENCES [dbo].[Receipt]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ReceiptReceiptDetail'
CREATE INDEX [IX_FK_ReceiptReceiptDetail]
ON [dbo].[ReceiptDetail]
    ([ReceiptId]);
GO

-- Creating foreign key on [OrderId] in table 'ReceiptDetail'
ALTER TABLE [dbo].[ReceiptDetail]
ADD CONSTRAINT [FK_OrderReceiptDetail]
    FOREIGN KEY ([OrderId])
    REFERENCES [dbo].[Order]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_OrderReceiptDetail'
CREATE INDEX [IX_FK_OrderReceiptDetail]
ON [dbo].[ReceiptDetail]
    ([OrderId]);
GO

-- Creating foreign key on [CompanyId] in table 'Receipt'
ALTER TABLE [dbo].[Receipt]
ADD CONSTRAINT [FK_CompanyReceipt]
    FOREIGN KEY ([CompanyId])
    REFERENCES [dbo].[Company]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_CompanyReceipt'
CREATE INDEX [IX_FK_CompanyReceipt]
ON [dbo].[Receipt]
    ([CompanyId]);
GO

-- Creating foreign key on [EmployeeId] in table 'Receipt'
ALTER TABLE [dbo].[Receipt]
ADD CONSTRAINT [FK_EmployeeReceipt]
    FOREIGN KEY ([EmployeeId])
    REFERENCES [dbo].[Employee]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_EmployeeReceipt'
CREATE INDEX [IX_FK_EmployeeReceipt]
ON [dbo].[Receipt]
    ([EmployeeId]);
GO

-- Creating foreign key on [OutStockRecordId] in table 'StockBack'
ALTER TABLE [dbo].[StockBack]
ADD CONSTRAINT [FK_StockRecordStockBack]
    FOREIGN KEY ([OutStockRecordId])
    REFERENCES [dbo].[StockRecord]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_StockRecordStockBack'
CREATE INDEX [IX_FK_StockRecordStockBack]
ON [dbo].[StockBack]
    ([OutStockRecordId]);
GO

-- Creating foreign key on [EmployeeId] in table 'StockBack'
ALTER TABLE [dbo].[StockBack]
ADD CONSTRAINT [FK_EmployeeStockBack]
    FOREIGN KEY ([EmployeeId])
    REFERENCES [dbo].[Employee]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_EmployeeStockBack'
CREATE INDEX [IX_FK_EmployeeStockBack]
ON [dbo].[StockBack]
    ([EmployeeId]);
GO

-- Creating foreign key on [CompanyId] in table 'StockBack'
ALTER TABLE [dbo].[StockBack]
ADD CONSTRAINT [FK_CompanyStockBack]
    FOREIGN KEY ([CompanyId])
    REFERENCES [dbo].[Company]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_CompanyStockBack'
CREATE INDEX [IX_FK_CompanyStockBack]
ON [dbo].[StockBack]
    ([CompanyId]);
GO

-- Creating foreign key on [MaterialId] in table 'ProductionQuotation'
ALTER TABLE [dbo].[ProductionQuotation]
ADD CONSTRAINT [FK_MaterialProductionQuotation]
    FOREIGN KEY ([MaterialId])
    REFERENCES [dbo].[Material]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_MaterialProductionQuotation'
CREATE INDEX [IX_FK_MaterialProductionQuotation]
ON [dbo].[ProductionQuotation]
    ([MaterialId]);
GO

-- Creating foreign key on [EmployeeId] in table 'ProductionQuotation'
ALTER TABLE [dbo].[ProductionQuotation]
ADD CONSTRAINT [FK_EmployeeProductionQuotation]
    FOREIGN KEY ([EmployeeId])
    REFERENCES [dbo].[Employee]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_EmployeeProductionQuotation'
CREATE INDEX [IX_FK_EmployeeProductionQuotation]
ON [dbo].[ProductionQuotation]
    ([EmployeeId]);
GO

-- Creating foreign key on [CompanyId] in table 'ProductionQuotation'
ALTER TABLE [dbo].[ProductionQuotation]
ADD CONSTRAINT [FK_CompanyProductionQuotation]
    FOREIGN KEY ([CompanyId])
    REFERENCES [dbo].[Company]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_CompanyProductionQuotation'
CREATE INDEX [IX_FK_CompanyProductionQuotation]
ON [dbo].[ProductionQuotation]
    ([CompanyId]);
GO

-- Creating foreign key on [ProductionQuotationId] in table 'OfferDetail'
ALTER TABLE [dbo].[OfferDetail]
ADD CONSTRAINT [FK_ProductionQuotationOfferDetail]
    FOREIGN KEY ([ProductionQuotationId])
    REFERENCES [dbo].[ProductionQuotation]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ProductionQuotationOfferDetail'
CREATE INDEX [IX_FK_ProductionQuotationOfferDetail]
ON [dbo].[OfferDetail]
    ([ProductionQuotationId]);
GO

-- Creating foreign key on [Material_Id] in table 'ProductionPlan'
ALTER TABLE [dbo].[ProductionPlan]
ADD CONSTRAINT [FK_ProductionPlanMaterial]
    FOREIGN KEY ([Material_Id])
    REFERENCES [dbo].[Material]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ProductionPlanMaterial'
CREATE INDEX [IX_FK_ProductionPlanMaterial]
ON [dbo].[ProductionPlan]
    ([Material_Id]);
GO

-- Creating foreign key on [OrderId] in table 'ProductionPlan'
ALTER TABLE [dbo].[ProductionPlan]
ADD CONSTRAINT [FK_OrderProductionPlan]
    FOREIGN KEY ([OrderId])
    REFERENCES [dbo].[Order]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_OrderProductionPlan'
CREATE INDEX [IX_FK_OrderProductionPlan]
ON [dbo].[ProductionPlan]
    ([OrderId]);
GO

-- Creating foreign key on [ProductionQuotationId] in table 'ProductionPlan'
ALTER TABLE [dbo].[ProductionPlan]
ADD CONSTRAINT [FK_ProductionQuotationProductionPlan]
    FOREIGN KEY ([ProductionQuotationId])
    REFERENCES [dbo].[ProductionQuotation]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ProductionQuotationProductionPlan'
CREATE INDEX [IX_FK_ProductionQuotationProductionPlan]
ON [dbo].[ProductionPlan]
    ([ProductionQuotationId]);
GO

-- Creating foreign key on [WorksheetId] in table 'WorkingProcedure'
ALTER TABLE [dbo].[WorkingProcedure]
ADD CONSTRAINT [FK_WorksheetWorkingProcedure]
    FOREIGN KEY ([WorksheetId])
    REFERENCES [dbo].[Worksheet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_WorksheetWorkingProcedure'
CREATE INDEX [IX_FK_WorksheetWorkingProcedure]
ON [dbo].[WorkingProcedure]
    ([WorksheetId]);
GO

-- Creating foreign key on [ProcedureId] in table 'WorkingProcedure'
ALTER TABLE [dbo].[WorkingProcedure]
ADD CONSTRAINT [FK_ProcedureWorkingProcedure]
    FOREIGN KEY ([ProcedureId])
    REFERENCES [dbo].[Procedure]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ProcedureWorkingProcedure'
CREATE INDEX [IX_FK_ProcedureWorkingProcedure]
ON [dbo].[WorkingProcedure]
    ([ProcedureId]);
GO

-- Creating foreign key on [MaterialId] in table 'WorkingMaterial'
ALTER TABLE [dbo].[WorkingMaterial]
ADD CONSTRAINT [FK_MaterialWorkingMaterial]
    FOREIGN KEY ([MaterialId])
    REFERENCES [dbo].[Material]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_MaterialWorkingMaterial'
CREATE INDEX [IX_FK_MaterialWorkingMaterial]
ON [dbo].[WorkingMaterial]
    ([MaterialId]);
GO

-- Creating foreign key on [WorksheetId] in table 'WorkingMaterial'
ALTER TABLE [dbo].[WorkingMaterial]
ADD CONSTRAINT [FK_WorksheetWorkingMaterial]
    FOREIGN KEY ([WorksheetId])
    REFERENCES [dbo].[Worksheet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_WorksheetWorkingMaterial'
CREATE INDEX [IX_FK_WorksheetWorkingMaterial]
ON [dbo].[WorkingMaterial]
    ([WorksheetId]);
GO

-- Creating foreign key on [ProductionPlanId] in table 'Worksheet'
ALTER TABLE [dbo].[Worksheet]
ADD CONSTRAINT [FK_ProductionPlanWorksheet]
    FOREIGN KEY ([ProductionPlanId])
    REFERENCES [dbo].[ProductionPlan]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ProductionPlanWorksheet'
CREATE INDEX [IX_FK_ProductionPlanWorksheet]
ON [dbo].[Worksheet]
    ([ProductionPlanId]);
GO

-- Creating foreign key on [DepartmentId] in table 'Worksheet'
ALTER TABLE [dbo].[Worksheet]
ADD CONSTRAINT [FK_DepartmentWorksheet]
    FOREIGN KEY ([DepartmentId])
    REFERENCES [dbo].[Department]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_DepartmentWorksheet'
CREATE INDEX [IX_FK_DepartmentWorksheet]
ON [dbo].[Worksheet]
    ([DepartmentId]);
GO

-- Creating foreign key on [CompanyId] in table 'Worksheet'
ALTER TABLE [dbo].[Worksheet]
ADD CONSTRAINT [FK_CompanyWorksheet]
    FOREIGN KEY ([CompanyId])
    REFERENCES [dbo].[Company]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_CompanyWorksheet'
CREATE INDEX [IX_FK_CompanyWorksheet]
ON [dbo].[Worksheet]
    ([CompanyId]);
GO

-- Creating foreign key on [EmployeeId] in table 'Worksheet'
ALTER TABLE [dbo].[Worksheet]
ADD CONSTRAINT [FK_EmployeeWorksheet]
    FOREIGN KEY ([EmployeeId])
    REFERENCES [dbo].[Employee]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_EmployeeWorksheet'
CREATE INDEX [IX_FK_EmployeeWorksheet]
ON [dbo].[Worksheet]
    ([EmployeeId]);
GO

-- Creating foreign key on [StockRecordId] in table 'StockBack'
ALTER TABLE [dbo].[StockBack]
ADD CONSTRAINT [FK_StockRecordStockBackNow]
    FOREIGN KEY ([StockRecordId])
    REFERENCES [dbo].[StockRecord]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_StockRecordStockBackNow'
CREATE INDEX [IX_FK_StockRecordStockBackNow]
ON [dbo].[StockBack]
    ([StockRecordId]);
GO

-- Creating foreign key on [OutStockRecordId] in table 'Allocation'
ALTER TABLE [dbo].[Allocation]
ADD CONSTRAINT [FK_StockRecordAllocationOut]
    FOREIGN KEY ([OutStockRecordId])
    REFERENCES [dbo].[StockRecord]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_StockRecordAllocationOut'
CREATE INDEX [IX_FK_StockRecordAllocationOut]
ON [dbo].[Allocation]
    ([OutStockRecordId]);
GO

-- Creating foreign key on [InStockRecordId] in table 'Allocation'
ALTER TABLE [dbo].[Allocation]
ADD CONSTRAINT [FK_StockRecordAllocationIn]
    FOREIGN KEY ([InStockRecordId])
    REFERENCES [dbo].[StockRecord]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_StockRecordAllocationIn'
CREATE INDEX [IX_FK_StockRecordAllocationIn]
ON [dbo].[Allocation]
    ([InStockRecordId]);
GO

-- Creating foreign key on [StockRecordId] in table 'Order'
ALTER TABLE [dbo].[Order]
ADD CONSTRAINT [FK_StockRecordOrder]
    FOREIGN KEY ([StockRecordId])
    REFERENCES [dbo].[StockRecord]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_StockRecordOrder'
CREATE INDEX [IX_FK_StockRecordOrder]
ON [dbo].[Order]
    ([StockRecordId]);
GO

-- Creating foreign key on [WorksheetId] in table 'MaterialRequisition'
ALTER TABLE [dbo].[MaterialRequisition]
ADD CONSTRAINT [FK_WorksheetMaterialRequisition]
    FOREIGN KEY ([WorksheetId])
    REFERENCES [dbo].[Worksheet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_WorksheetMaterialRequisition'
CREATE INDEX [IX_FK_WorksheetMaterialRequisition]
ON [dbo].[MaterialRequisition]
    ([WorksheetId]);
GO

-- Creating foreign key on [StockRecordId] in table 'MaterialRequisition'
ALTER TABLE [dbo].[MaterialRequisition]
ADD CONSTRAINT [FK_StockRecordMaterialRequisition]
    FOREIGN KEY ([StockRecordId])
    REFERENCES [dbo].[StockRecord]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_StockRecordMaterialRequisition'
CREATE INDEX [IX_FK_StockRecordMaterialRequisition]
ON [dbo].[MaterialRequisition]
    ([StockRecordId]);
GO

-- Creating foreign key on [WorksheetId] in table 'Acceptance'
ALTER TABLE [dbo].[Acceptance]
ADD CONSTRAINT [FK_WorksheetAcceptance]
    FOREIGN KEY ([WorksheetId])
    REFERENCES [dbo].[Worksheet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_WorksheetAcceptance'
CREATE INDEX [IX_FK_WorksheetAcceptance]
ON [dbo].[Acceptance]
    ([WorksheetId]);
GO

-- Creating foreign key on [WarehouseId] in table 'Acceptance'
ALTER TABLE [dbo].[Acceptance]
ADD CONSTRAINT [FK_WarehouseAcceptance]
    FOREIGN KEY ([WarehouseId])
    REFERENCES [dbo].[Warehouse]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_WarehouseAcceptance'
CREATE INDEX [IX_FK_WarehouseAcceptance]
ON [dbo].[Acceptance]
    ([WarehouseId]);
GO

-- Creating foreign key on [CheckEmployeeId] in table 'Acceptance'
ALTER TABLE [dbo].[Acceptance]
ADD CONSTRAINT [FK_EmployeeAcceptance]
    FOREIGN KEY ([CheckEmployeeId])
    REFERENCES [dbo].[Employee]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_EmployeeAcceptance'
CREATE INDEX [IX_FK_EmployeeAcceptance]
ON [dbo].[Acceptance]
    ([CheckEmployeeId]);
GO

-- Creating foreign key on [ExamineEmployeeId] in table 'Acceptance'
ALTER TABLE [dbo].[Acceptance]
ADD CONSTRAINT [FK_EmployeeAcceptance1Examine]
    FOREIGN KEY ([ExamineEmployeeId])
    REFERENCES [dbo].[Employee]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_EmployeeAcceptance1Examine'
CREATE INDEX [IX_FK_EmployeeAcceptance1Examine]
ON [dbo].[Acceptance]
    ([ExamineEmployeeId]);
GO

-- Creating foreign key on [StockRecordId] in table 'Acceptance'
ALTER TABLE [dbo].[Acceptance]
ADD CONSTRAINT [FK_StockRecordAcceptance]
    FOREIGN KEY ([StockRecordId])
    REFERENCES [dbo].[StockRecord]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_StockRecordAcceptance'
CREATE INDEX [IX_FK_StockRecordAcceptance]
ON [dbo].[Acceptance]
    ([StockRecordId]);
GO

-- Creating foreign key on [ProductionPlanId] in table 'PlanStorage'
ALTER TABLE [dbo].[PlanStorage]
ADD CONSTRAINT [FK_ProductionPlanPlanStorage]
    FOREIGN KEY ([ProductionPlanId])
    REFERENCES [dbo].[ProductionPlan]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ProductionPlanPlanStorage'
CREATE INDEX [IX_FK_ProductionPlanPlanStorage]
ON [dbo].[PlanStorage]
    ([ProductionPlanId]);
GO

-- Creating foreign key on [StockRecordId] in table 'PlanStorage'
ALTER TABLE [dbo].[PlanStorage]
ADD CONSTRAINT [FK_StockRecordPlanStorage]
    FOREIGN KEY ([StockRecordId])
    REFERENCES [dbo].[StockRecord]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_StockRecordPlanStorage'
CREATE INDEX [IX_FK_StockRecordPlanStorage]
ON [dbo].[PlanStorage]
    ([StockRecordId]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------