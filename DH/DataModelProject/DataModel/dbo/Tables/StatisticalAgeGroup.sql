/* 
 * TABLE: [dbo].[StatisticalAgeGroup] 
 */

CREATE TABLE [dbo].[StatisticalAgeGroup](
    [StatisticalAgeGroupID]    int             IDENTITY(1,1),
    [StatisticalAgeGroupName]      varchar(256)    NOT NULL,
    [StatisticalAgeGroupMinAge]    int             NOT NULL,
    [StatisticalAgeGroupMaxAge]    int             NOT NULL,
    [StatisticalAgeGroupTypeName]  varchar(256)    NOT NULL,
    [LoadID]                       int             NOT NULL,
    [DataSourceID]                 int             NULL,
    [RowStartDate]                 datetime        NOT NULL,
    [RowEndDate]                   datetime        NULL,
    [RowCurrentFlag]               int             NOT NULL,
    CONSTRAINT [IDX_PK_StatisticalAgeGroup1] PRIMARY KEY CLUSTERED ([StatisticalAgeGroupID])
)