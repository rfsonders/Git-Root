/* 
 * TABLE: [dbo].[DataSource] 
 */

CREATE TABLE [dbo].[DataSource](
    [DataSourceID]  int              IDENTITY(1,1),
    [DataSourceName]    varchar(256)     NOT NULL,
    [Description]       varchar(1024)    NULL,
    [LoadID]            int              NOT NULL,
    [RowEndDate]        datetime         NOT NULL,
    [RowStartDate]      datetime         NOT NULL,
    [RowCurrentFlag]    int              NULL,
    CONSTRAINT [IDX_PK_DataSource1] PRIMARY KEY CLUSTERED ([DataSourceID])
)