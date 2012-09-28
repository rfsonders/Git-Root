/* 
 * TABLE: [dbo].[PovertyLevel] 
 */

CREATE TABLE [dbo].[PovertyLevel](
    [PovertyLevelID]  int             IDENTITY(1,1),
    [PovertyLevelName]    varchar(256)    NOT NULL,
    [LoadID]              int             NOT NULL,
    [DataSourceID]        int             NOT NULL,
    [RowStartDate]        datetime        NOT NULL,
    [RowEndDate]          datetime        NULL,
    [RowCurrentFlag]      int             NOT NULL,
    CONSTRAINT [IDX_PK_PovertyLevel1] PRIMARY KEY CLUSTERED ([PovertyLevelID])
)