/* 
 * TABLE: [dbo].[Organization] 
 */

CREATE TABLE [dbo].[Organization](
    [OrganizationID]       int              IDENTITY(1,1),
    [OrganizationName]         varchar(256)     NULL,
    [OrganizationDescription]  varchar(1024)    NULL,
    [DataSourceID]             int              NOT NULL,
    [LoadID]                   int              NOT NULL,
    [RowStartDate]             datetime         NOT NULL,
    [RowEndDate]               datetime         NULL,
    [RowCurrentFlag]           int              NOT NULL,
    CONSTRAINT [PK185] PRIMARY KEY CLUSTERED ([OrganizationID])
)