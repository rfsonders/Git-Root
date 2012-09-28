/* 
 * TABLE: [dbo].[PublicHealthEvent] 
 */

CREATE TABLE [dbo].[PublicHealthEvent](
    [PublicHealthEventID]          int             IDENTITY(1,1),
    [PublicHealthEventName]            varchar(256)    NOT NULL,
    [PublicHealthEventStartDate]       datetime        NOT NULL,
    [PublicHealthEventEndDate]         datetime        NOT NULL,
    [PublicHealthEventDataSourceName]  varchar(256)    NOT NULL,
    [PublicHealthEventTypeName]        varchar(256)    NOT NULL,
    [LoadID]                           int             NOT NULL,
    [DataSourceID]                     int             NOT NULL,
    [RowStartDate]                     datetime        NOT NULL,
    [RowEndDate]                       datetime        NOT NULL,
    [RowCurrentFlag]                   int             NULL,
    CONSTRAINT [IDX_PK_PublicHealthEvent1] PRIMARY KEY CLUSTERED ([PublicHealthEventID])
)