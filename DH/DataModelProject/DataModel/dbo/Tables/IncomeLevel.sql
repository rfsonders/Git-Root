/* 
 * TABLE: [dbo].[IncomeLevel] 
 */

CREATE TABLE [dbo].[IncomeLevel](
    [IncomeID]              int               IDENTITY(1,1),
    [IncomeLevelAmount]         decimal(18, 9)    NULL,
    [IncomeLevelFrequencyName]  varchar(256)      NULL,
    [LoadID]                    int               NOT NULL,
    [DataSourceID]              int               NOT NULL,
    [RowEndDate]                datetime          NULL,
    [RowStartDate]              datetime          NOT NULL,
    [RowCurrentFlag]            int               NULL,
    CONSTRAINT [IDX_PK_Income1] PRIMARY KEY CLUSTERED ([IncomeID])
)