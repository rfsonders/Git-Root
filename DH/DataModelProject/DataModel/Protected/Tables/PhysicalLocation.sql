/* 
 * TABLE: [Protected].[PhysicalLocation] 
 */

CREATE TABLE [Protected].[PhysicalLocation](
    [PhysicalLocationID]             int                IDENTITY(1,1),
    [PhysicalLocationStreetAddress]      varchar(256)       NULL,
    [PhysicalLocationCityName]           varchar(256)       NULL,
    [PhysicalLocationStateAbbreviation]  varchar(10)        NULL,
    [PhysicalLocationZipCode]            char(5)            NULL,
    [PhysicalLocationZipPlusFour]        char(4)            NULL,
    [PhysicalLocationLatitude]           decimal(18, 15)    NULL,
    [PhysicalLocationLongitude]          decimal(18, 15)    NULL,
    [PhysicalLocationGeography]          geography          NULL,
    [GeocodingProviderName]              varchar(256)       NOT NULL,
    [GeocodingDateTime]                  datetime           NOT NULL,
    [GeocodingAccuracyCode]              varchar(10)        NOT NULL,
    [LoadID]                             int                NOT NULL,
    [DataSourceID]                       int                NOT NULL,
    [RowStartDate]                       datetime           NOT NULL,
    [RowEndDate]                         datetime           NOT NULL,
    [RowCurrentFlag]                     int                NULL,
    CONSTRAINT [IDX_PK_PhysicalLocation1] PRIMARY KEY CLUSTERED ([PhysicalLocationID])
)