/* 
 * TABLE: [dbo].[Diagnosis] 
 */

CREATE TABLE [dbo].[Diagnosis](
    [DiagnosisID]              int               IDENTITY(1,1),
    [HealthcareActivityID]     int               NOT NULL,
    [DiagnosisCodeTypeName]        varchar(256)      NULL,
    [DiagnosisCode]                varchar(10)       NOT NULL,
    [DiagnosisCodeName]            varchar(256)      NULL,
    [DiagnosisCodePriorityNumber]  decimal(18, 9)    NULL,
    [DiagnosisCodeCategoryName]    varchar(256)      NULL,
    [DiagnosisCodeDescription]     varchar(1024)     NULL,
    [LoadID]                       int               NOT NULL,
    [DataSourceID]                 int               NOT NULL,
    [ExternalSystemBusinessKey]    varchar(255)      NULL,
    [ExternalSystemRowStartDate]   date              NULL,
    [ExternalSystemRowEndDate]     date              NULL,
    [ExternalSystemActiveFlag]     char(1)           NULL,
    [RowStartDate]                 datetime          NOT NULL,
    [RowEndDate]                   datetime          NOT NULL,
    [RowCurrentFlag]               int               NULL,
    CONSTRAINT [IDX_PK_DiagnosisCode1] PRIMARY KEY CLUSTERED ([DiagnosisID], [HealthcareActivityID])
)
GO
/* 
 * TABLE: [dbo].[Diagnosis] 
 */

ALTER TABLE [dbo].[Diagnosis] ADD CONSTRAINT [RefHealthcareActivity349] 
    FOREIGN KEY ([HealthcareActivityID])
    REFERENCES [dbo].[HealthcareActivity]([HealthcareActivityID])
