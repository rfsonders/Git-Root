/* 
 * TABLE: [dbo].[StrategicArea] 
 */

CREATE TABLE [dbo].[StrategicArea](
    [StrategicAreaID]    int             IDENTITY(1,1),
    [StrategicAreaName]  varchar(256)    NOT NULL,
    [LoadID]             int             NOT NULL,
    [DataSourceID]       int             NOT NULL,
    [RowStartDate]       datetime        NOT NULL,
    [RowEndDate]         datetime        NOT NULL,
    [RowCurrentFlag]     int             NULL,
    CONSTRAINT [IDX_PK_StrategicArea1] PRIMARY KEY CLUSTERED ([StrategicAreaID])
)