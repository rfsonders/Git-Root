/* 
 * TABLE: [dbo].[AntigenContraindication] 
 */

CREATE TABLE [dbo].[AntigenContraindication](
    [AntigenID]                       int         NOT NULL,
    [ImmunizationContraindicationID]  int         NOT NULL,
    [LoadID]                              int         NOT NULL,
    [DataSourceID]                        int         NOT NULL,
    [RowStartDate]                        datetime    NOT NULL,
    [RowEndDate]                          datetime    NOT NULL,
    [RowCurrentFlag]                      int         NOT NULL,
    [RowHash]                             AS          (checksum([AntigenID],[ImmunizationContraindicationID])) PERSISTED NOT NULL,
    CONSTRAINT [IDX_PK_AntigenContraindication1] PRIMARY KEY CLUSTERED ([AntigenID], [ImmunizationContraindicationID])
)
GO
/* 
 * TABLE: [dbo].[AntigenContraindication] 
 */

ALTER TABLE [dbo].[AntigenContraindication] ADD CONSTRAINT [FK_Antigen_AntigenContraindication] 
    FOREIGN KEY ([AntigenID])
    REFERENCES [dbo].[Antigen]([AntigenID])
GO
ALTER TABLE [dbo].[AntigenContraindication] ADD CONSTRAINT [FK_ImmunizationContraindication_AntigenContraindication] 
    FOREIGN KEY ([ImmunizationContraindicationID])
    REFERENCES [dbo].[ImmunizationContraindication]([ImmunizationContraindicationID])
GO
/* 
 * INDEX: [IDX_AntigenContraindication2] 
 */

CREATE INDEX [IDX_AntigenContraindication2] ON [dbo].[AntigenContraindication]([AntigenID])
GO
/* 
 * INDEX: [IDX_AntigenContraindication3] 
 */

CREATE INDEX [IDX_AntigenContraindication3] ON [dbo].[AntigenContraindication]([ImmunizationContraindicationID])
