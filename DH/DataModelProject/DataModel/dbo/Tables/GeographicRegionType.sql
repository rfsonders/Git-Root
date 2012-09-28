/* 
 * TABLE: [dbo].[GeographicRegionType] 
 */

CREATE TABLE [dbo].[GeographicRegionType](
    [GeographicRegionTypeID]  int             IDENTITY(1,1),
    [GeographicRegionTypeName]    varchar(256)    NOT NULL,
    [LoadID]                      int             NOT NULL,
    [DataSourceID]                int             NOT NULL,
    [RowStartDate]                datetime        NOT NULL,
    [RowEndDate]                  datetime        NOT NULL,
    [RowCurrentFlag]              int             NULL,
    CONSTRAINT [IDX_PK_GeographicRegionType1] PRIMARY KEY CLUSTERED ([GeographicRegionTypeID])
)