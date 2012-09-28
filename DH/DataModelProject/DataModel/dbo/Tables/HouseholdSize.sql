/* 
 * TABLE: [dbo].[HouseholdSize] 
 */

CREATE TABLE [dbo].[HouseholdSize](
    [HouseholdSizeID]       int             IDENTITY(1,1),
    [HouseholdSizeName]         varchar(256)    NOT NULL,
    [AboveNationalAverageFlag]  char(1)         NOT NULL,
    [AboveColoradoAverageFlag]  char(1)         NOT NULL,
    [LoadID]                    int             NOT NULL,
    [DataSourceID]              int             NOT NULL,
    [RowStartDate]              datetime        NOT NULL,
    [RowEndDate]                datetime        NULL,
    [RowCurrentFlag]            int             NULL,
    CONSTRAINT [IDX_PK_HouseholdSize1] PRIMARY KEY CLUSTERED ([HouseholdSizeID])
)