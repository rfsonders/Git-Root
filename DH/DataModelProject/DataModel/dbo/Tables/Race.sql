/* 
 * TABLE: [dbo].[Race] 
 */

CREATE TABLE [dbo].[Race](
    [RaceID]      int             IDENTITY(1,1),
    [RaceName]        varchar(256)    NOT NULL,
    [LoadID]          int             NOT NULL,
    [DataSourceID]    int             NOT NULL,
    [RowStartDate]    datetime        NOT NULL,
    [RowEndDate]      datetime        NULL,
    [RowCurrentFlag]  int             NOT NULL,
    CONSTRAINT [IDX_PK_Race1] PRIMARY KEY CLUSTERED ([RaceID])
)