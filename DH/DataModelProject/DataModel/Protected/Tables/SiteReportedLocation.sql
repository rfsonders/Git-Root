/* 
 * TABLE: [Protected].[SiteReportedLocation] 
 */

CREATE TABLE [Protected].[SiteReportedLocation](
    [SiteReportedLocationID]  int         IDENTITY(1,1),
    [SiteID]                  int         NOT NULL,
    [ReportedLocationID]      int         NOT NULL,
    [LoadID]                      int         NULL,
    [DataSourceID]            int         NULL,
    [RowStartDate]                datetime    NULL,
    [RowEndDate]                  datetime    NULL,
    [RowCurrentFlag]              int         NULL,
    CONSTRAINT [IDX_PK_SiteReportedLocation1] PRIMARY KEY CLUSTERED ([SiteReportedLocationID], [SiteID])
)
GO
/* 
 * TABLE: [Protected].[SiteReportedLocation] 
 */

ALTER TABLE [Protected].[SiteReportedLocation] ADD CONSTRAINT [FK_ReportedLocation_SiteReportedLocation] 
    FOREIGN KEY ([ReportedLocationID])
    REFERENCES [Protected].[ReportedLocation]([ReportedLocationID])
GO
ALTER TABLE [Protected].[SiteReportedLocation] ADD CONSTRAINT [FK_Site_SiteReportedLocation] 
    FOREIGN KEY ([SiteID])
    REFERENCES [dbo].[Site]([SiteID])
