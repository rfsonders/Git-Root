/* 
 * TABLE: [dbo].[FinancialTransaction] 
 */

CREATE TABLE [dbo].[FinancialTransaction](
    [HealthcareActivityID]                int               NOT NULL,
    [PayerSourceID]                       int               NOT NULL,
    [DataSourceID]                            int               NOT NULL,
    [FinancialTransactionTotalChargesAmount]  decimal(18, 5)    NULL,
    [FinancialTransactionTypeName]            varchar(256)      NULL,
    [LoadID]                                  int               NOT NULL,
    [RowStartDate]                            datetime          NOT NULL,
    [RowEndDate]                              datetime          NOT NULL,
    [RowCurrentFlag]                          int               NOT NULL,
    CONSTRAINT [IDX_PK_PayerSourceEncounter1] PRIMARY KEY NONCLUSTERED ([PayerSourceID], [HealthcareActivityID])
)
GO
/* 
 * TABLE: [dbo].[FinancialTransaction] 
 */

ALTER TABLE [dbo].[FinancialTransaction] ADD CONSTRAINT [RefHealthcareActivity353] 
    FOREIGN KEY ([HealthcareActivityID])
    REFERENCES [dbo].[HealthcareActivity]([HealthcareActivityID])
GO
ALTER TABLE [dbo].[FinancialTransaction] ADD CONSTRAINT [FK_PayerSource_PayerSourceEncounter] 
    FOREIGN KEY ([PayerSourceID])
    REFERENCES [dbo].[PayerSource]([PayerSourceID])
