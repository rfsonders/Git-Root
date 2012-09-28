/* 
 * TABLE: [dbo].[HealthcareActivity] 
 */

CREATE TABLE [dbo].[HealthcareActivity](
    [HealthcareActivityID]          int             IDENTITY(1,1),
    [EncounterID]                   int             NOT NULL,
    [ProgramID]                     int             NOT NULL,
    [ProviderID]                    int             NOT NULL,
    [HealthcareActivityTypeName]        varchar(256)    NOT NULL,
    [HealthcareActivityStartDate]       datetime        NOT NULL,
    [HealthcareActivityEndDate]         datetime        NULL,
    [HealthcareActivityHistoricalFlag]  char(1)         NULL,
    [PersonStartDateAge]                int             NOT NULL,
    [LoadID]                            int             NOT NULL,
    [DataSourceID]                      int             NOT NULL,
    [RowStartDate]                      datetime        NOT NULL,
    [RowEndDate]                        datetime        NOT NULL,
    [RowCurrentFlag]                    int             NOT NULL,
    CONSTRAINT [IDX_PK_HealthcareActivity1] PRIMARY KEY CLUSTERED ([HealthcareActivityID])
)
GO
/* 
 * TABLE: [dbo].[HealthcareActivity] 
 */

ALTER TABLE [dbo].[HealthcareActivity] ADD CONSTRAINT [RefProvider355] 
    FOREIGN KEY ([ProviderID])
    REFERENCES [dbo].[Provider]([ProviderID])
GO
ALTER TABLE [dbo].[HealthcareActivity] ADD CONSTRAINT [FK_Encounter_HealthcareActivity] 
    FOREIGN KEY ([EncounterID])
    REFERENCES [dbo].[Encounter]([EncounterID])
GO
ALTER TABLE [dbo].[HealthcareActivity] ADD CONSTRAINT [FK_Program_HealthcareActivity] 
    FOREIGN KEY ([ProgramID])
    REFERENCES [dbo].[Program]([ProgramID])
GO
/* 
 * INDEX: [IDX_HealthcareActivity2] 
 */

CREATE INDEX [IDX_HealthcareActivity2] ON [dbo].[HealthcareActivity]([ProgramID])
GO
/* 
 * INDEX: [IDX_HealthcareActivity3] 
 */

CREATE INDEX [IDX_HealthcareActivity3] ON [dbo].[HealthcareActivity]([HealthcareActivityTypeName])
INCLUDE (HealthcareActivityID, EncounterID, DataSourceID)
GO
/* 
 * INDEX: [IDX_HealthcareActivity4] 
 */

CREATE INDEX [IDX_HealthcareActivity4] ON [dbo].[HealthcareActivity]([EncounterID], [HealthcareActivityID], [ProgramID], [HealthcareActivityTypeName], [RowCurrentFlag])
INCLUDE (HealthcareActivityStartDate, HealthcareActivityEndDate, DataSourceID)
