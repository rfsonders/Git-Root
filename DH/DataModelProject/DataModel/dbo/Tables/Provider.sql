/* 
 * TABLE: [dbo].[Provider] 
 */

CREATE TABLE [dbo].[Provider](
    [ProviderID]    int             IDENTITY(1,1),
    [ProviderFullName]  varchar(256)    NOT NULL,
    [ProviderTitle]     varchar(50)     NULL,
    [LoadID]            int             NOT NULL,
    [DataSourceID]      int             NOT NULL,
    [RowStartDate]      datetime        NOT NULL,
    [RowEndDate]        datetime        NOT NULL,
    [RowCurrentFlag]    int             NULL,
    CONSTRAINT [IDX_PK_Provider1] PRIMARY KEY CLUSTERED ([ProviderID])
)