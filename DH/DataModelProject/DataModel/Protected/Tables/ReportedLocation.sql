/* 
 * TABLE: [Protected].[ReportedLocation] 
 */

CREATE TABLE [Protected].[ReportedLocation](
    [ReportedLocationID]             int                IDENTITY(1,1),
    [ReportedLocationStreetAddress]      varchar(256)       NULL,
    [ReportedLocationCityName]           varchar(256)       NULL,
    [ReportedLocationStateName]          varchar(256)       NULL,
    [ReportedLocationCountyName]         varchar(256)       NULL,
    [ReportedLocationZipCode]            char(5)            NULL,
    [ReportedLocationZipCodePlusFour]    char(4)            NULL,
    [ReportedLocationLatitude]           decimal(18, 15)    NULL,
    [ReportedLocationLongitude]          decimal(18, 15)    NULL,
    [ReportedLocationIncompleteFlag]     char(1)            NULL,
    [ReportedLocationLevelOfDetailCode]  varchar(10)        NULL,
    [LoadID]                             int                NOT NULL,
    [DataSourceID]                       int                NOT NULL,
    [RowStartDate]                       datetime           NOT NULL,
    [RowEndDate]                         datetime           NULL,
    [RowCurrentFlag]                     int                NOT NULL,
    CONSTRAINT [IDX_PK_ReportedLocation1] PRIMARY KEY CLUSTERED ([ReportedLocationID])
)