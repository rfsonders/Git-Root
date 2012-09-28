/* 
 * TABLE: [dbo].[Sex] 
 */

CREATE TABLE [dbo].[Sex](
    [SexID]        int             IDENTITY(1,1),
    [SexName]          varchar(256)    NOT NULL,
    [SexAbbreviation]  varchar(10)     NOT NULL,
    [LoadID]           int             NOT NULL,
    [DataSourceID]     int             NOT NULL,
    [RowStartDate]     datetime        NOT NULL,
    [RowEndDate]       datetime        NULL,
    [RowCurrentFlag]   int             NOT NULL,
    CONSTRAINT [IDX_PK_Sex1] PRIMARY KEY CLUSTERED ([SexID])
)