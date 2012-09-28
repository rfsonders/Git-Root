/* 
 * TABLE: [dbo].[Language] 
 */

CREATE TABLE [dbo].[Language](
    [LanguageID]  int             IDENTITY(1,1),
    [LanguageName]    varchar(256)    NOT NULL,
    [LoadID]          int             NOT NULL,
    [DataSourceID]    int             NOT NULL,
    [RowStartDate]    datetime        NOT NULL,
    [RowEndDate]      datetime        NULL,
    [RowCurrentFlag]  int             NOT NULL,
    CONSTRAINT [IDX_PK_Language1] PRIMARY KEY CLUSTERED ([LanguageID])
)