/* 
 * TABLE: [dbo].[PublicHealthCase] 
 */

CREATE TABLE [dbo].[PublicHealthCase](
    [PublicHealthCaseID]       int              IDENTITY(1,1),
    [PublicHealthOutbreakID]   int              NULL,
    [PublicHealthCaseName]         varchar(256)     NOT NULL,
    [PublicHealthCaseDescription]  varchar(1024)    NULL,
    [LoadID]                       int              NOT NULL,
    [DataSourceID]                 int              NOT NULL,
    [ExternalSystemBusinessKey]    varchar(255)     NULL,
    [ExternalSystemRowStartDate]   date             NULL,
    [ExternalSystemRowEndDate]     date             NULL,
    [ExternalSystemActiveFlag]     char(1)          NULL,
    [RowStartDate]                 datetime         NOT NULL,
    [RowEndDate]                   datetime         NOT NULL,
    [RowCurrentFlag]               int              NULL,
    CONSTRAINT [IDX_PK_PublicHealthCase1] PRIMARY KEY CLUSTERED ([PublicHealthCaseID])
)
GO
/* 
 * TABLE: [dbo].[PublicHealthCase] 
 */

ALTER TABLE [dbo].[PublicHealthCase] ADD CONSTRAINT [FK_PublicHealthOutbreak_PublicHealthCase] 
    FOREIGN KEY ([PublicHealthOutbreakID])
    REFERENCES [dbo].[PublicHealthOutbreak]([PublicHealthOutbreakID])
GO
/* 
 * INDEX: [IDX_PublicHealthCase2] 
 */

CREATE INDEX [IDX_PublicHealthCase2] ON [dbo].[PublicHealthCase]([PublicHealthOutbreakID])
