/* 
 * TABLE: [dbo].[Encounter] 
 */

CREATE TABLE [dbo].[Encounter](
    [EncounterID]          int             IDENTITY(1,1),
    [SiteID]               int             NOT NULL,
    [PersonID]             int             NOT NULL,
    [PublicHealthEventID]  int             NULL,
    [EncounterDate]            datetime        NOT NULL,
    [EncounterTypeName]        varchar(256)    NULL,
    [LoadID]                   int             NOT NULL,
    [DataSourceID]             int             NOT NULL,
    [RowStartDate]             datetime        NOT NULL,
    [RowCurrentFlag]           int             NOT NULL,
    [RowEndDate]               datetime        NOT NULL,
    CONSTRAINT [IDX_PK_Encounter1] PRIMARY KEY CLUSTERED ([EncounterID])
)
GO
/* 
 * TABLE: [dbo].[Encounter] 
 */

ALTER TABLE [dbo].[Encounter] ADD CONSTRAINT [RefPerson301] 
    FOREIGN KEY ([PersonID])
    REFERENCES [Protected].[Person]([PersonID])
GO
ALTER TABLE [dbo].[Encounter] ADD CONSTRAINT [RefPublicHealthEvent351] 
    FOREIGN KEY ([PublicHealthEventID])
    REFERENCES [dbo].[PublicHealthEvent]([PublicHealthEventID])
GO
ALTER TABLE [dbo].[Encounter] ADD CONSTRAINT [FK_Site_Encounter] 
    FOREIGN KEY ([SiteID])
    REFERENCES [dbo].[Site]([SiteID])
GO
/* 
 * INDEX: [IDX_Encounter3] 
 */

CREATE INDEX [IDX_Encounter3] ON [dbo].[Encounter]([SiteID])
