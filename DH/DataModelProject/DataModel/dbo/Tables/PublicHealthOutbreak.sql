/* 
 * TABLE: [dbo].[PublicHealthOutbreak] 
 */

CREATE TABLE [dbo].[PublicHealthOutbreak](
    [PublicHealthOutbreakID]       int              IDENTITY(1,1),
    [ReportableDiseaseID]          int              NOT NULL,
    [PublicHealthOutbreakName]         varchar(256)     NOT NULL,
    [PublicHealthOutbreakDescription]  varchar(1024)    NULL,
    [LoadID]                           int              NOT NULL,
    [DataSourceID]                     int              NOT NULL,
    [ExternalSystemBusinessKey]        varchar(255)     NULL,
    [ExternalSystemRowStartDate]       date             NULL,
    [ExternalSystemRowEndDate]         date             NULL,
    [ExternalSystemActiveFlag]         char(1)          NULL,
    [RowStartDate]                     datetime         NOT NULL,
    [RowEndDate]                       datetime         NOT NULL,
    [RowCurrentFlag]                   int              NULL,
    CONSTRAINT [IDX_PK_PublicHealthOutbreak1] PRIMARY KEY CLUSTERED ([PublicHealthOutbreakID])
)
GO
/* 
 * TABLE: [dbo].[PublicHealthOutbreak] 
 */

ALTER TABLE [dbo].[PublicHealthOutbreak] ADD CONSTRAINT [FK_ReportableDisease_PublicHealthOutbreak] 
    FOREIGN KEY ([ReportableDiseaseID])
    REFERENCES [dbo].[ReportableDisease]([ReportableDiseaseID])
GO
/* 
 * INDEX: [IDX_PublicHealthOutbreak2] 
 */

CREATE INDEX [IDX_PublicHealthOutbreak2] ON [dbo].[PublicHealthOutbreak]([ReportableDiseaseID])
