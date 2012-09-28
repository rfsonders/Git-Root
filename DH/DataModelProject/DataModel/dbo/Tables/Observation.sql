/* 
 * TABLE: [dbo].[Observation] 
 */

CREATE TABLE [dbo].[Observation](
    [ObservationID]                    int               IDENTITY(1,1),
    [HealthcareActivityID]             int               NOT NULL,
    [ObservationKeyNumber]                 decimal(18, 9)    NULL,
    [ObservationClassName]                 varchar(256)      NOT NULL,
    [ObservationTermNumber]                decimal(18, 9)    NOT NULL,
    [ObservationTermName]                  varchar(256)      NULL,
    [ObservationNormalRangeUnitOfMeasure]  varchar(256)      NULL,
    [ObservationResultsText]               varchar(max)      NULL,
    [ObservationResultsNumeric]            decimal(18, 9)    NULL,
    [ObservationStatusName]                varchar(256)      NULL,
    [ObservationNormalIndicatorCode]       varchar(10)       NULL,
    [LoadID]                               int               NOT NULL,
    [DataSourceID]                         int               NOT NULL,
    [ExternalSystemBusinessKey]            varchar(255)      NULL,
    [ExternalSystemRowStartDate]           date              NULL,
    [ExternalSystemRowEndDate]             date              NULL,
    [ExternalSystemActiveFlag]             char(1)           NULL,
    [RowStartDate]                         datetime          NOT NULL,
    [RowEndDate]                           datetime          NOT NULL,
    [RowCurrentFlag]                       int               NULL,
    CONSTRAINT [IDX_PK_Observation1] PRIMARY KEY CLUSTERED ([HealthcareActivityID], [ObservationID])
)
GO
/* 
 * TABLE: [dbo].[Observation] 
 */

ALTER TABLE [dbo].[Observation] ADD CONSTRAINT [FK_HealthcareActivity_Observation] 
    FOREIGN KEY ([HealthcareActivityID])
    REFERENCES [dbo].[HealthcareActivity]([HealthcareActivityID])
GO
/* 
 * INDEX: [IDX_Observation2] 
 */

CREATE INDEX [IDX_Observation2] ON [dbo].[Observation]([HealthcareActivityID])
