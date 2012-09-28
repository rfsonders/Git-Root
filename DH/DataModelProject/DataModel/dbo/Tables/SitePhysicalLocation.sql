/* 
 * TABLE: [dbo].[SitePhysicalLocation] 
 */

CREATE TABLE [dbo].[SitePhysicalLocation](
    [SitePhysicalLocationID]  int         IDENTITY(1,1),
    [SiteID]                  int         NULL,
    [PhysicalLocationID]      int         NOT NULL,
    [LoadID]                      int         NOT NULL,
    [DataSourceID]                int         NOT NULL,
    [RowStartDate]                datetime    NOT NULL,
    [RowEndDate]                  datetime    NOT NULL,
    [RowCurrentFlag]              int         NOT NULL,
    CONSTRAINT [IDX_PK_SitePhysicalLocation1] PRIMARY KEY NONCLUSTERED ([SitePhysicalLocationID])
)
GO
/* 
 * TABLE: [dbo].[SitePhysicalLocation] 
 */

ALTER TABLE [dbo].[SitePhysicalLocation] ADD CONSTRAINT [RefPhysicalLocation302] 
    FOREIGN KEY ([PhysicalLocationID])
    REFERENCES [Protected].[PhysicalLocation]([PhysicalLocationID])
GO
ALTER TABLE [dbo].[SitePhysicalLocation] ADD CONSTRAINT [FK_Site_SitePhysicalLocation] 
    FOREIGN KEY ([SiteID])
    REFERENCES [dbo].[Site]([SiteID])
GO
/* 
 * INDEX: [IDX_SitePhysicalLocation2] 
 */

CREATE INDEX [IDX_SitePhysicalLocation2] ON [dbo].[SitePhysicalLocation]([SiteID])
