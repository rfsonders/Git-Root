/* 
 * TABLE: [dbo].[Program] 
 */

CREATE TABLE [dbo].[Program](
    [ProgramID]        int             IDENTITY(1,1),
    [ProgramName]          varchar(256)    NOT NULL,
    [StrategicAreaID]  int             NOT NULL,
    [LoadID]               int             NOT NULL,
    [DataSourceID]         int             NOT NULL,
    [RowStartDate]         datetime        NOT NULL,
    [RowEndDate]           datetime        NOT NULL,
    [RowCurrentFlag]       int             NULL,
    CONSTRAINT [IDX_PK_Program1] PRIMARY KEY CLUSTERED ([ProgramID])
)
GO
/* 
 * TABLE: [dbo].[Program] 
 */

ALTER TABLE [dbo].[Program] ADD CONSTRAINT [FK_StrategicArea_Program] 
    FOREIGN KEY ([StrategicAreaID])
    REFERENCES [dbo].[StrategicArea]([StrategicAreaID])
GO
/* 
 * INDEX: [IDX_Program2] 
 */

CREATE INDEX [IDX_Program2] ON [dbo].[Program]([StrategicAreaID])
