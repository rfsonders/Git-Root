/* 
 * TABLE: [dbo].[Ethnicity] 
 */

CREATE TABLE [dbo].[Ethnicity](
    [EthnicityID]  int            IDENTITY(1,1),
    [EthnicityName]    varchar(50)    NOT NULL,
    [LoadID]           int            NOT NULL,
    [DataSourceID]     int            NOT NULL,
    [RowStartDate]     datetime       NOT NULL,
    [RowEndDate]       datetime       NULL,
    [RowCurrentFlag]   int            NOT NULL,
    CONSTRAINT [IDX_PK_Ethnicity1] PRIMARY KEY CLUSTERED ([EthnicityID])
)