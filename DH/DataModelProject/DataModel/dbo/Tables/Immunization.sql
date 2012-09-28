/* 
 * TABLE: [dbo].[Immunization] 
 */

CREATE TABLE [dbo].[Immunization](
    [ImmunizationID]               int               IDENTITY(1,1),
    [HealthcareActivityID]         int               NOT NULL,
    [VaccineLotID]                 int               NOT NULL,
    [ImmunizationPriorityGroupID]  int               NOT NULL,
    [VaccineAdministrationSiteName]    varchar(256)      NULL,
    [VaccineDosageAmount]              decimal(18, 9)    NULL,
    [VaccineDoseNumber]                int               NULL,
    [LoadID]                           int               NOT NULL,
    [DataSourceID]                     int               NOT NULL,
    [ExternalSystemBusinessKey]        varchar(255)      NULL,
    [ExternalSystemRowStartDate]       date              NULL,
    [ExternalSystemRowEndDate]         date              NULL,
    [ExternalSystemActiveFlag]         char(1)           NULL,
    [RowStartDate]                     datetime          NOT NULL,
    [RowEndDate]                       datetime          NOT NULL,
    [RowCurrentFlag]                   int               NULL,
    CONSTRAINT [IDX_PK_Immunization1] PRIMARY KEY CLUSTERED ([ImmunizationID], [HealthcareActivityID])
)
GO
/* 
 * TABLE: [dbo].[Immunization] 
 */

ALTER TABLE [dbo].[Immunization] ADD CONSTRAINT [FK_HealthcareActivity_Immunization] 
    FOREIGN KEY ([HealthcareActivityID])
    REFERENCES [dbo].[HealthcareActivity]([HealthcareActivityID])
GO
ALTER TABLE [dbo].[Immunization] ADD CONSTRAINT [FK_ImmunizationPriorityGroup_Immunization] 
    FOREIGN KEY ([ImmunizationPriorityGroupID])
    REFERENCES [dbo].[ImmunizationPriorityGroup]([ImmunizationPriorityGroupID])
GO
ALTER TABLE [dbo].[Immunization] ADD CONSTRAINT [FK_VaccineLot_Immunization] 
    FOREIGN KEY ([VaccineLotID])
    REFERENCES [dbo].[VaccineLot]([VaccineLotID])
GO
/* 
 * INDEX: [IDX_Immunization2] 
 */

CREATE INDEX [IDX_Immunization2] ON [dbo].[Immunization]([VaccineLotID])
GO
/* 
 * INDEX: [IDX_Immunization3] 
 */

CREATE INDEX [IDX_Immunization3] ON [dbo].[Immunization]([ImmunizationPriorityGroupID])
