/* 
 * TABLE: [dbo].[PersonGeoRegion] 
 */

CREATE TABLE [dbo].[PersonGeoRegion](
    [GeographicRegionID]  int         NOT NULL,
    [PersonID]            int         NULL,
    [LoadID]                  int         NOT NULL,
    [DataSourceID]            int         NOT NULL,
    [RowStartDate]            datetime    NOT NULL,
    [RowEndDate]              datetime    NOT NULL,
    [RowCurrentFlag]          int         NOT NULL,
    CONSTRAINT [IDX_PK_PersonGeoRegion1] PRIMARY KEY CLUSTERED ([GeographicRegionID])
)
GO
/* 
 * TABLE: [dbo].[PersonGeoRegion] 
 */

ALTER TABLE [dbo].[PersonGeoRegion] ADD CONSTRAINT [RefPerson296] 
    FOREIGN KEY ([PersonID])
    REFERENCES [Protected].[Person]([PersonID])
GO
ALTER TABLE [dbo].[PersonGeoRegion] ADD CONSTRAINT [FK_GeographicRegion_PersonGeoRegion] 
    FOREIGN KEY ([GeographicRegionID])
    REFERENCES [dbo].[GeographicRegion]([GeographicRegionID])
GO
/* 
 * INDEX: [IDX_PersonGeoRegion2] 
 */

CREATE INDEX [IDX_PersonGeoRegion2] ON [dbo].[PersonGeoRegion]([GeographicRegionID])
