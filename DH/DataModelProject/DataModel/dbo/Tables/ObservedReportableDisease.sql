/* 
 * TABLE: [dbo].[ObservedReportableDisease] 
 */

CREATE TABLE [dbo].[ObservedReportableDisease](
    [ObservedReportableDiseaseID]  int              IDENTITY(1,1),
    [HealthcareActivityID]         int              NOT NULL,
    [ReportableDiseaseID]          int              NOT NULL,
    [PublicHealthCaseID]           int              NOT NULL,
    [DiagnosisDate]                    datetime         NULL,
    [OnsetDate]                        datetime         NULL,
    [CaseStatusCode]                   varchar(10)      NULL,
    [PatientOutcome]                   varchar(256)     NULL,
    [PreviousSurgeryDate]              datetime         NULL,
    [OrganTransplantFlag]              char(1)          NULL,
    [OrganTransplantYear]              varchar(256)     NULL,
    [OrganTransplantDescription]       varchar(1024)    NULL,
    [OutbreakRelatedCode]              varchar(10)      NULL,
    [LoadID]                           int              NOT NULL,
    [DataSourceID]                     int              NOT NULL,
    [ExternalSystemBusinessKey]        varchar(255)     NULL,
    [ExternalSystemRowStartDate]       date             NULL,
    [ExternalSystemRowEndDate]         date             NULL,
    [ExternalSystemActiveFlag]         char(1)          NULL,
    [RowStartDate]                     datetime         NOT NULL,
    [RowEndDate]                       datetime         NOT NULL,
    [RowCurrentFlag]                   int              NULL,
    CONSTRAINT [IDX_PK_ObservedReportableDisease1] PRIMARY KEY CLUSTERED ([HealthcareActivityID], [ObservedReportableDiseaseID], [ReportableDiseaseID])
)
GO
/* 
 * TABLE: [dbo].[ObservedReportableDisease] 
 */

ALTER TABLE [dbo].[ObservedReportableDisease] ADD CONSTRAINT [FK_HealthcareActivity_ObservedReportableDisease] 
    FOREIGN KEY ([HealthcareActivityID])
    REFERENCES [dbo].[HealthcareActivity]([HealthcareActivityID])
GO
ALTER TABLE [dbo].[ObservedReportableDisease] ADD CONSTRAINT [FK_PublicHealthCase_ObservedReportableDisease] 
    FOREIGN KEY ([PublicHealthCaseID])
    REFERENCES [dbo].[PublicHealthCase]([PublicHealthCaseID])
GO
ALTER TABLE [dbo].[ObservedReportableDisease] ADD CONSTRAINT [FK_ReportableDisease_ObservedReportableDisease] 
    FOREIGN KEY ([ReportableDiseaseID])
    REFERENCES [dbo].[ReportableDisease]([ReportableDiseaseID])
GO
/* 
 * INDEX: [IDX_ObservedReportableDisease2] 
 */

CREATE INDEX [IDX_ObservedReportableDisease2] ON [dbo].[ObservedReportableDisease]([HealthcareActivityID])
GO
/* 
 * INDEX: [IDX_ObservedReportableDisease3] 
 */

CREATE INDEX [IDX_ObservedReportableDisease3] ON [dbo].[ObservedReportableDisease]([PublicHealthCaseID])
