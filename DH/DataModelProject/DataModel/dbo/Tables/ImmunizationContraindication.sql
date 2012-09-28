/* 
 * TABLE: [dbo].[ImmunizationContraindication] 
 */

CREATE TABLE [dbo].[ImmunizationContraindication](
    [ImmunizationContraindicationID]  int             IDENTITY(1,1),
    [ImmunizationContraindicationName]    varchar(256)    NOT NULL,
    [LoadID]                              int             NOT NULL,
    [DataSourceID]                        int             NOT NULL,
    [RowStartDate]                        datetime        NOT NULL,
    [RowEndDate]                          datetime        NOT NULL,
    [RowCurrentFlag]                      int             NULL,
    CONSTRAINT [IDX_PK_ImmunizationContraindication1] PRIMARY KEY CLUSTERED ([ImmunizationContraindicationID])
)