/* 
 * TABLE: [Protected].[ExternalSystem] 
 */

CREATE TABLE [Protected].[ExternalSystem](
    [EntityExternalSystemID]           int                 IDENTITY(1,1),
    [ExternalSystemName]                   varchar(256)        NOT NULL,
    [ExternalSystemIDInteger]          int                 NULL,
    [ExternalSystemIDString]           varchar(128)        NULL,
    [ExternalSystemDatabaseName]           varchar(256)        NULL,
    [ExternalSystemSchemaName]             varchar(256)        NULL,
    [ExternalSystemTableName]              varchar(256)        NOT NULL,
    [ExternalSystemIDColumnName]       varchar(256)        NULL,
    [ExternalSystemRecordStartDate]        datetime            NULL,
    [ExternalSystemRecordEndDate]          datetime            NULL,
    [ExternalSystemRecordActiveFlag]       char(1)             NULL,
    [ExternalSystemRecordLastUpdatedDate]  datetime            NULL,
    [DataWarehouseTableTypeName]           varchar(256)        NULL,
    [EntityChecksumColumnListText]         varchar(max)        NULL,
    [EntityTypeName]                       varchar(256)        NULL,
    [EntityImportGUID]                     uniqueidentifier    NOT NULL,
    [EntityFinalTableName]                 varchar(256)        NULL,
    [LoadID]                               int                 NOT NULL,
    [DataSourceID]                         int                 NOT NULL,
    [RowStartDate]                         datetime            NOT NULL,
    [RowEndDate]                           datetime            NOT NULL,
    [RowCurrentFlag]                       int                 NULL,
    CONSTRAINT [IDX_PK_PersonExternalSystem1] PRIMARY KEY CLUSTERED ([EntityExternalSystemID])
)