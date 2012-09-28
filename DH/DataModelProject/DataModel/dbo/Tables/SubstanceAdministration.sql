/* 
 * TABLE: [dbo].[SubstanceAdministration] 
 */

CREATE TABLE [dbo].[SubstanceAdministration](
    [HealthcareActivityID]           int               NOT NULL,
    [SubstanceAdministrationTypeName]    varchar(256)      NULL,
    [SubstanceAdministrationDoseAmount]  varchar(256)      NULL,
    [SubstanceAdministrationRateAmount]  decimal(18, 9)    NULL,
    [SubstanceAdministrationUnitsName]   varchar(256)      NULL,
    [LoadID]                             int               NOT NULL,
    [DataSourceID]                       int               NOT NULL,
    [ExternalSystemBusinessKey]          varchar(255)      NULL,
    [ExternalSystemRowStartDate]         date              NULL,
    [ExternalSystemRowEndDate]           date              NULL,
    [ExternalSystemActiveFlag]           char(1)           NULL,
    [RowStartDate]                       datetime          NOT NULL,
    [RowEndDate]                         datetime          NOT NULL,
    [RowCurrentFlag]                     int               NULL,
    CONSTRAINT [IDX_PK_DiagnosisCode1_2] PRIMARY KEY CLUSTERED ([HealthcareActivityID])
)
GO
/* 
 * TABLE: [dbo].[SubstanceAdministration] 
 */

ALTER TABLE [dbo].[SubstanceAdministration] ADD CONSTRAINT [RefHealthcareActivity354] 
    FOREIGN KEY ([HealthcareActivityID])
    REFERENCES [dbo].[HealthcareActivity]([HealthcareActivityID])
