/* 
 * TABLE: [dbo].[VaccineInventory] 
 */

CREATE TABLE [dbo].[VaccineInventory](
    [VaccineLotID]           int               NOT NULL,
    [SiteID]                 int               NOT NULL,
    [VaccineInventoryDate]       datetime          NOT NULL,
    [InventoryStatusName]        varchar(256)      NULL,
    [VaccineQuantity]            decimal(9, 3)     NULL,
    [VaccineInventoryIncrement]  decimal(10, 3)    CONSTRAINT [DF__VaccineIn__Vacci__59063A47] DEFAULT 0 NOT NULL,
    [VaccineInventoryDecrement]  decimal(10, 3)    CONSTRAINT [DF__VaccineIn__Vacci__59FA5E80] DEFAULT 0 NOT NULL,
    [VaccineInventoryNetChange]  decimal(10, 3)    CONSTRAINT [DF__VaccineIn__Vacci__5AEE82B9] DEFAULT 0 NOT NULL,
    [VaccineAvailableQuantity]   decimal(10, 3)    NOT NULL,
    [LoadID]                     int               NOT NULL,
    [DataSourceID]               int               NULL,
    [RowStartDate]               datetime          NOT NULL,
    [RowEndDate]                 datetime          NOT NULL,
    [RowCurrentFlag]             int               NULL,
    CONSTRAINT [IDX_PK_VaccineInventory1] PRIMARY KEY CLUSTERED ([VaccineLotID], [SiteID], [VaccineInventoryDate])
)
GO
/* 
 * TABLE: [dbo].[VaccineInventory] 
 */

ALTER TABLE [dbo].[VaccineInventory] ADD CONSTRAINT [FK_Site_VaccineInventory] 
    FOREIGN KEY ([SiteID])
    REFERENCES [dbo].[Site]([SiteID])
GO
ALTER TABLE [dbo].[VaccineInventory] ADD CONSTRAINT [FK_VaccineLot_VaccineInventory] 
    FOREIGN KEY ([VaccineLotID])
    REFERENCES [dbo].[VaccineLot]([VaccineLotID])
GO
/* 
 * INDEX: [IDX_VaccineInventory2] 
 */

CREATE INDEX [IDX_VaccineInventory2] ON [dbo].[VaccineInventory]([VaccineLotID])
GO
/* 
 * INDEX: [IDX_VaccineInventory3] 
 */

CREATE INDEX [IDX_VaccineInventory3] ON [dbo].[VaccineInventory]([SiteID])
