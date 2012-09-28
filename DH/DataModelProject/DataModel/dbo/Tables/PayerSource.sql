/* 
 * TABLE: [dbo].[PayerSource] 
 */

CREATE TABLE [dbo].[PayerSource](
    [PayerSourceID]  int             IDENTITY(1,1),
    [PayerSourceName]    varchar(256)    NOT NULL,
    [PayerSourceType]    varchar(256)    NULL,
    [PayerSourceOther]   varchar(10)     NULL,
    [LoadID]             int             NOT NULL,
    [DataSourceID]       int             NOT NULL,
    [RowStartDate]       datetime        NOT NULL,
    [RowEndDate]         datetime        NOT NULL,
    [RowCurrentFlag]     int             NULL,
    CONSTRAINT [IDX_PK_PayerSource1] PRIMARY KEY CLUSTERED ([PayerSourceID])
)