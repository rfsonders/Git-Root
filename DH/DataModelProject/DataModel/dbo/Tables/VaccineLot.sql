/* 
 * TABLE: [dbo].[VaccineLot] 
 */

CREATE TABLE [dbo].[VaccineLot](
    [VaccineLotID]            int             IDENTITY(1,1),
    [VaccineID]               int             NOT NULL,
    [VaccineLotNumberCode]        varchar(10)     NULL,
    [VaccineLotManufacturerName]  varchar(256)    NOT NULL,
    [VaccineLotExpirationDate]    datetime        NULL,
    [VaccineTypeName]             varchar(256)    NOT NULL,
    [LoadID]                      int             NOT NULL,
    [DataSourceID]                int             NOT NULL,
    [RowStartDate]                datetime        NOT NULL,
    [RowEndDate]                  datetime        NOT NULL,
    [RowCurrentFlag]              int             NULL,
    CONSTRAINT [IDX_PK_VaccineLot1] PRIMARY KEY CLUSTERED ([VaccineLotID])
)
GO
/* 
 * TABLE: [dbo].[VaccineLot] 
 */

ALTER TABLE [dbo].[VaccineLot] ADD CONSTRAINT [FK_Vaccine_VaccineLot] 
    FOREIGN KEY ([VaccineID])
    REFERENCES [dbo].[Vaccine]([VaccineID])
GO
/* 
 * INDEX: [IDX_VaccineLot2] 
 */

CREATE INDEX [IDX_VaccineLot2] ON [dbo].[VaccineLot]([VaccineID])
