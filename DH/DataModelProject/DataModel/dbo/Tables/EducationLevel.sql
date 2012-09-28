/* 
 * TABLE: [dbo].[EducationLevel] 
 */

CREATE TABLE [dbo].[EducationLevel](
    [EducationLevelID]  int             IDENTITY(1,1),
    [EducationLevelName]    varchar(256)    NOT NULL,
    [LoadID]                int             NOT NULL,
    [DataSourceID]          int             NOT NULL,
    [RowStartDate]          datetime        NOT NULL,
    [RowEndDate]            datetime        NOT NULL,
    [RowCurrentFlag]        int             NULL,
    CONSTRAINT [IDX_PK_EducationLevel1] PRIMARY KEY CLUSTERED ([EducationLevelID])
)