/* 
 * TABLE: [Protected].[PersonReportedLocation] 
 */

CREATE TABLE [Protected].[PersonReportedLocation](
    [PersonReportedLocationID]  int         IDENTITY(1,1),
    [ReportedLocationID]        int         NOT NULL,
    [ReportedLocationTypeID]    int         NOT NULL,
    [PersonID]                  int         NOT NULL,
    [LoadID]                        int         NULL,
    [DataSourceID]                  int         NOT NULL,
    [RowStartDate]                  datetime    NOT NULL,
    [RowEndDate]                    datetime    NOT NULL,
    [RowCurrentFlag]                int         NULL,
    CONSTRAINT [IDX_PK_PersonReportedLocation1] PRIMARY KEY NONCLUSTERED ([PersonReportedLocationID])
)
GO
/* 
 * TABLE: [Protected].[PersonReportedLocation] 
 */

ALTER TABLE [Protected].[PersonReportedLocation] ADD CONSTRAINT [FK_Person_PersonReportedLocation] 
    FOREIGN KEY ([PersonID])
    REFERENCES [Protected].[Person]([PersonID])
GO
ALTER TABLE [Protected].[PersonReportedLocation] ADD CONSTRAINT [FK_ReportedLocation_PersonReportedLocation] 
    FOREIGN KEY ([ReportedLocationID])
    REFERENCES [Protected].[ReportedLocation]([ReportedLocationID])
GO
ALTER TABLE [Protected].[PersonReportedLocation] ADD CONSTRAINT [FK_ReportedLocationType_PersonReportedLocation] 
    FOREIGN KEY ([ReportedLocationTypeID])
    REFERENCES [Protected].[ReportedLocationType]([ReportedLocationTypeID])
