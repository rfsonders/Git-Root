/* 
 * TABLE: [dbo].[GeographicRegion] 
 */

CREATE TABLE [dbo].[GeographicRegion](
    [GeographicRegionID]           int                IDENTITY(1,1),
    [GeographicRegionTypeID]       int                NOT NULL,
    [GeographicRegionName]             varchar(256)       NOT NULL,
    [GeographicRegionAbbreviation]     varchar(50)        NOT NULL,
    [GeographicRegionCode]             varchar(50)        NOT NULL,
    [GeographicRegionGeography]        geography          NULL,
    [GeographicRegionCenterLatitude]   decimal(18, 15)    NULL,
    [GeographicRegionCenterLongitude]  decimal(18, 15)    NULL,
    [GeographicRegionCenterGeography]  geography          NULL,
    [LoadID]                           int                NOT NULL,
    [DataSourceID]                     int                NOT NULL,
    [RowStartDate]                     datetime           NOT NULL,
    [RowEndDate]                       datetime           NOT NULL,
    [RowCurrentFlag]                   int                NULL,
    CONSTRAINT [IDX_PK_GeographicRegion1] PRIMARY KEY CLUSTERED ([GeographicRegionID])
)
GO
/* 
 * TABLE: [dbo].[GeographicRegion] 
 */

ALTER TABLE [dbo].[GeographicRegion] ADD CONSTRAINT [FK_GeographicRegionType_GeographicRegion] 
    FOREIGN KEY ([GeographicRegionTypeID])
    REFERENCES [dbo].[GeographicRegionType]([GeographicRegionTypeID])
GO
/* 
 * INDEX: [IDX_GeographicRegion2] 
 */

CREATE INDEX [IDX_GeographicRegion2] ON [dbo].[GeographicRegion]([GeographicRegionTypeID])
