/* 
 * TABLE: [Protected].[ReportedLocationType] 
 */

CREATE TABLE [Protected].[ReportedLocationType](
    [ReportedLocationTypeID]  int             IDENTITY(1,1),
    [ReportedLocationTypeName]    varchar(256)    NULL,
    [ReportedLocationName]        varchar(256)    NULL,
    [LoadID]                      int             NOT NULL,
    [DataSourceID]                int             NOT NULL,
    [RowStartDate]                datetime        NOT NULL,
    [RowEndDate]                  datetime        NULL,
    [RowCurrentFlag]              int             NOT NULL,
    CONSTRAINT [IDX_PK_ReportedLocationType1] PRIMARY KEY CLUSTERED ([ReportedLocationTypeID])
)