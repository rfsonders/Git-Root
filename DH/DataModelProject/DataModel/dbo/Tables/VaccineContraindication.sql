/* 
 * TABLE: [dbo].[VaccineContraindication] 
 */

CREATE TABLE [dbo].[VaccineContraindication](
    [VaccineID]                       int         NOT NULL,
    [ImmunizationContraindicationID]  int         NOT NULL,
    [LoadID]                              int         NOT NULL,
    [DataSourceID]                        int         NULL,
    [RowStartDate]                        datetime    NOT NULL,
    [RowEndDate]                          datetime    NOT NULL,
    [RowCurrentFlag]                      int         NULL,
    CONSTRAINT [IDX_PK_VaccineContraindication1] PRIMARY KEY CLUSTERED ([VaccineID], [ImmunizationContraindicationID])
)
GO
/* 
 * TABLE: [dbo].[VaccineContraindication] 
 */

ALTER TABLE [dbo].[VaccineContraindication] ADD CONSTRAINT [FK_ImmunizationContraindication_VaccineContraindication] 
    FOREIGN KEY ([ImmunizationContraindicationID])
    REFERENCES [dbo].[ImmunizationContraindication]([ImmunizationContraindicationID])
GO
ALTER TABLE [dbo].[VaccineContraindication] ADD CONSTRAINT [FK_Vaccine_VaccineContraindication] 
    FOREIGN KEY ([VaccineID])
    REFERENCES [dbo].[Vaccine]([VaccineID])
GO
/* 
 * INDEX: [IDX_VaccineContraindication2] 
 */

CREATE INDEX [IDX_VaccineContraindication2] ON [dbo].[VaccineContraindication]([VaccineID])
GO
/* 
 * INDEX: [IDX_VaccineContraindication3] 
 */

CREATE INDEX [IDX_VaccineContraindication3] ON [dbo].[VaccineContraindication]([ImmunizationContraindicationID])
