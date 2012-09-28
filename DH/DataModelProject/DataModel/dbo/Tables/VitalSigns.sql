/* 
 * TABLE: [dbo].[Vitals] 
 */

CREATE TABLE [dbo].[VitalSigns](
    [HealthcareActivityID]                int               NOT NULL,
    [VitalSignsObservationDateTime]           datetime          NOT NULL,
    [VitalSignsPulseNumber]                   decimal(18, 9)    NULL,
    [VitalSignsTemperatureNumber]             decimal(18, 9)    NULL,
    [VitalSignsBloodPressureSystolicNumber]   decimal(18, 9)    NULL,
    [VitalSignsBloodPressureDiastolicNumber]  decimal(18, 9)    NULL,
    [VitalSignsHeightInchesNumber]            decimal(18, 9)    NULL,
    [VitalSignsCalculatedBMINumber]           decimal(18, 9)    NULL,
    [LoadID]                                  int               NOT NULL,
    [DataSourceID]                            int               NOT NULL,
    [ExternalSystemBusinessKey]               varchar(255)      NULL,
    [ExternalSystemRowStartDate]              date              NULL,
    [ExternalSystemRowEndDate]                date              NULL,
    [ExternalSystemActiveFlag]                char(1)           NULL,
    [RowStartDate]                            datetime          NOT NULL,
    [RowEndDate]                              datetime          NOT NULL,
    [RowCurrentFlag]                          int               NOT NULL,
    [RowHash]                                 AS                (checksum(0)) PERSISTED NOT NULL,
    CONSTRAINT [IDX_PersonVitalSigns] PRIMARY KEY CLUSTERED ([VitalSignsObservationDateTime] DESC, [HealthcareActivityID])
)
GO
/* 
 * TABLE: [dbo].[Vitals] 
 */

ALTER TABLE [dbo].[VitalSigns] ADD CONSTRAINT [RefHealthcareActivity352] 
    FOREIGN KEY ([HealthcareActivityID])
    REFERENCES [dbo].[HealthcareActivity]([HealthcareActivityID])
