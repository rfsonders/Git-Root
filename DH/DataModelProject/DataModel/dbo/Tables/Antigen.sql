/* 
 * TABLE: [dbo].[Antigen] 
 */

CREATE TABLE [dbo].[Antigen](
    [AntigenID]            int            IDENTITY(1,1),
    [ReportableDiseaseID]  int            NOT NULL,
    [AntigenName]              varchar(50)    NOT NULL,
    [LoadID]                   int            NOT NULL,
    [DataSourceID]             int            NOT NULL,
    [RowStartDate]             datetime       NOT NULL,
    [RowEndDate]               datetime       NOT NULL,
    [RowCurrentFlag]           int            NULL,
    CONSTRAINT [IDX_PK_Antigen1] PRIMARY KEY CLUSTERED ([AntigenID])
)
GO
/* 
 * TABLE: [dbo].[Antigen] 
 */

ALTER TABLE [dbo].[Antigen] ADD CONSTRAINT [FK_ReportableDisease_Antigen] 
    FOREIGN KEY ([ReportableDiseaseID])
    REFERENCES [dbo].[ReportableDisease]([ReportableDiseaseID])
GO
/* 
 * INDEX: [IDX_Antigen2] 
 */

CREATE INDEX [IDX_Antigen2] ON [dbo].[Antigen]([ReportableDiseaseID])
