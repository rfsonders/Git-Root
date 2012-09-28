/* 
 * TABLE: [Protected].[PhysicalLocationGeoRegion] 
 */

CREATE TABLE [Protected].[PhysicalLocationGeoRegion](
    [PhysicalLocationGeoRegionID]  int         IDENTITY(1,1),
    [PhysicalLocationID]           int         NOT NULL,
    [GeographicRegionID]           int         NOT NULL,
    [LoadID]                           int         NOT NULL,
    [DataSourceID]                     int         NOT NULL,
    [RowStartDate]                     datetime    NOT NULL,
    [RowEndDate]                       datetime    NOT NULL,
    [RowCurrentFlag]                   int         NOT NULL,
    [RowHash]                          AS          (checksum(0)) PERSISTED NOT NULL,
    CONSTRAINT [IDX_PK_PhysicalLocationGeoRegion1] PRIMARY KEY CLUSTERED ([PhysicalLocationGeoRegionID])
)
GO
/* 
 * TABLE: [Protected].[PhysicalLocationGeoRegion] 
 */

ALTER TABLE [Protected].[PhysicalLocationGeoRegion] ADD CONSTRAINT [FK_GeographicRegion_PhysicalLocationGeoRegion] 
    FOREIGN KEY ([GeographicRegionID])
    REFERENCES [dbo].[GeographicRegion]([GeographicRegionID])
GO
ALTER TABLE [Protected].[PhysicalLocationGeoRegion] ADD CONSTRAINT [FK_PhysicalLocation_PhysicalLocationGeoReg_22] 
    FOREIGN KEY ([PhysicalLocationID])
    REFERENCES [Protected].[PhysicalLocation]([PhysicalLocationID])
GO
/* 
 * INDEX: [IDX_PhysicalLocationGeoRegion2] 
 */

CREATE INDEX [IDX_PhysicalLocationGeoRegion2] ON [Protected].[PhysicalLocationGeoRegion]([GeographicRegionID])
GO
/* 
 * INDEX: [IDX_PhysicalLocationGeoRegion3] 
 */

CREATE INDEX [IDX_PhysicalLocationGeoRegion3] ON [Protected].[PhysicalLocationGeoRegion]([PhysicalLocationID])
