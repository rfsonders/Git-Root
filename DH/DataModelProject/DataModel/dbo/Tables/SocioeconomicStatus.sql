/* 
 * TABLE: [dbo].[SocioeconomicStatus] 
 */

CREATE TABLE [dbo].[SocioeconomicStatus](
    [SocioeconomicStatusID]    int             IDENTITY(1,1),
    [SocioeconomicStatusName]      varchar(256)    NOT NULL,
    [SocioeconomicStatusTypeName]  varchar(256)    NOT NULL,
    [LoadID]                       int             NOT NULL,
    [DataSourceID]             int             NOT NULL,
    [RowEndDate]                   datetime        NOT NULL,
    [RowStartDate]                 datetime        NOT NULL,
    [RowCurrentFlag]               int             NULL,
    CONSTRAINT [IDX_PK_SocioeconomicStatus1] PRIMARY KEY CLUSTERED ([SocioeconomicStatusID])
)