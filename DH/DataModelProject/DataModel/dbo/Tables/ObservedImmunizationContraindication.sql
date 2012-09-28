/* 
 * TABLE: [dbo].[ObservedImmunizationContraindication] 
 */

CREATE TABLE [dbo].[ObservedImmunizationContraindication](
    [ObservedImmunizationContraindicationID]  int         IDENTITY(1,1),
    [HealthcareActivityID]                    int         NOT NULL,
    [ImmunizationContraindicationID]          int         NULL,
    [LoadID]                                      int         NOT NULL,
    [RowStartDate]                                datetime    NOT NULL,
    [RowEndDate]                                  datetime    NOT NULL,
    [RowCurrentFlag]                              int         NULL,
    CONSTRAINT [IDX_PK_ObservedImmunizationContraindication1] PRIMARY KEY CLUSTERED ([ObservedImmunizationContraindicationID], [HealthcareActivityID])
)
GO
/* 
 * TABLE: [dbo].[ObservedImmunizationContraindication] 
 */

ALTER TABLE [dbo].[ObservedImmunizationContraindication] ADD CONSTRAINT [FK_HealthcareActivity_ObservedImmunizationContraindication] 
    FOREIGN KEY ([HealthcareActivityID])
    REFERENCES [dbo].[HealthcareActivity]([HealthcareActivityID])
GO
ALTER TABLE [dbo].[ObservedImmunizationContraindication] ADD CONSTRAINT [FK_ImmunizationContraindication_ObservedImmunizationContraindication] 
    FOREIGN KEY ([ImmunizationContraindicationID])
    REFERENCES [dbo].[ImmunizationContraindication]([ImmunizationContraindicationID]) ON DELETE SET NULL
GO
/* 
 * INDEX: [IDX_ObservedImmunizationContraindication2] 
 */

CREATE INDEX [IDX_ObservedImmunizationContraindication2] ON [dbo].[ObservedImmunizationContraindication]([ImmunizationContraindicationID])
GO
/* 
 * INDEX: [IDX_ObservedImmunizationContraindication3] 
 */

CREATE INDEX [IDX_ObservedImmunizationContraindication3] ON [dbo].[ObservedImmunizationContraindication]([HealthcareActivityID])
