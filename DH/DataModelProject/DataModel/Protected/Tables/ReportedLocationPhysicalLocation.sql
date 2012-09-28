/* 
 * TABLE: [Protected].[ReportedLocationPhysicalLocation] 
 */

CREATE TABLE [Protected].[ReportedLocationPhysicalLocation](
    [ReportedLocationPhysicalLocationID]  int         IDENTITY(1,1),
    [PhysicalLocationID]                  int         NOT NULL,
    [ReportedLocationID]                  int         NOT NULL,
    [LoadID]                                  int         NOT NULL,
    [DataSourceID]                            int         NOT NULL,
    [RowStartDate]                            datetime    NOT NULL,
    [RowEndDate]                              datetime    NULL,
    [RowCurrentFlag]                          int         NOT NULL,
    CONSTRAINT [IDX_PK_ReportedLocationPhysicalLocation1] PRIMARY KEY CLUSTERED ([ReportedLocationPhysicalLocationID])
)
GO
/* 
 * TABLE: [Protected].[ReportedLocationPhysicalLocation] 
 */

ALTER TABLE [Protected].[ReportedLocationPhysicalLocation] ADD CONSTRAINT [FK_PhysicalLocation_ReportedLocationPhysicalLocation] 
    FOREIGN KEY ([PhysicalLocationID])
    REFERENCES [Protected].[PhysicalLocation]([PhysicalLocationID])
GO
ALTER TABLE [Protected].[ReportedLocationPhysicalLocation] ADD CONSTRAINT [FK_ReportedLocation_ReportedLocationPhysicalLocation] 
    FOREIGN KEY ([ReportedLocationID])
    REFERENCES [Protected].[ReportedLocation]([ReportedLocationID])
