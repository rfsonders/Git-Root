/* 
 * TABLE: [dbo].[VaccineInventoryEvent] 
 */

CREATE TABLE [dbo].[VaccineInventoryEvent](
    [VaccineInventoryEventID]    int              IDENTITY(1,1),
    [VaccineLotID]               int              NOT NULL,
    [SiteID]                     int              NOT NULL,
    [ProgramID]                  int              NOT NULL,
    [VaccineInventoryEventDate]      datetime         NOT NULL,
    [VaccineCost]                    decimal(9, 3)    NULL,
    [VaccineSourceName]              varchar(256)     NULL,
    [VaccineInventoryEventTypeName]  varchar(256)     NOT NULL,
    [VaccineQuantity]                decimal(9, 3)    NULL,
    [LoadID]                         int              NOT NULL,
    [DataSourceID]                   int              NOT NULL,
    [RowStartDate]                   datetime         NOT NULL,
    [RowEndDate]                     datetime         NOT NULL,
    [RowCurrentFlag]                 int              NULL,
    CONSTRAINT [IDX_PK_VaccineInventoryEvent1] PRIMARY KEY CLUSTERED ([VaccineInventoryEventID], [SiteID])
)
GO
/* 
 * TABLE: [dbo].[VaccineInventoryEvent] 
 */

ALTER TABLE [dbo].[VaccineInventoryEvent] ADD CONSTRAINT [FK_Program_VaccineInventoryEvent] 
    FOREIGN KEY ([ProgramID])
    REFERENCES [dbo].[Program]([ProgramID])
GO
ALTER TABLE [dbo].[VaccineInventoryEvent] ADD CONSTRAINT [FK_Site_VaccineInventoryEvent] 
    FOREIGN KEY ([SiteID])
    REFERENCES [dbo].[Site]([SiteID])
GO
ALTER TABLE [dbo].[VaccineInventoryEvent] ADD CONSTRAINT [FK_VaccineLot_VaccineInventoryEvent] 
    FOREIGN KEY ([VaccineLotID])
    REFERENCES [dbo].[VaccineLot]([VaccineLotID])
GO
/* 
 * INDEX: [IDX_VaccineInventoryEvent2] 
 */

CREATE INDEX [IDX_VaccineInventoryEvent2] ON [dbo].[VaccineInventoryEvent]([ProgramID])
GO
/* 
 * INDEX: [IDX_VaccineInventoryEvent3] 
 */

CREATE INDEX [IDX_VaccineInventoryEvent3] ON [dbo].[VaccineInventoryEvent]([SiteID])
GO
/* 
 * INDEX: [IDX_VaccineInventoryEvent4] 
 */

CREATE INDEX [IDX_VaccineInventoryEvent4] ON [dbo].[VaccineInventoryEvent]([VaccineLotID])
