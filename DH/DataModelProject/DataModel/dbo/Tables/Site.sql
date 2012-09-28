/* 
 * TABLE: [dbo].[Site] 
 */

CREATE TABLE [dbo].[Site](
    [SiteID]                  int             IDENTITY(1,1),
    [OrganizationID]          int             NOT NULL,
    [SiteName]                    varchar(256)    NOT NULL,
    [SiteTypeName]                varchar(256)    NOT NULL,
    [SiteActiveFlag]              int             NOT NULL,
    [LoadID]                      int             NOT NULL,
    [DataSourceID]                int             NOT NULL,
    [ExternalSystemBusinessKey]   varchar(255)    NULL,
    [ExternalSystemRowStartDate]  date            NULL,
    [ExternalSystemRowEndDate]    date            NULL,
    [ExternalSystemActiveFlag]    char(1)         NULL,
    [RowStartDate]                datetime        NOT NULL,
    [RowEndDate]                  datetime        NOT NULL,
    [RowCurrentFlag]              int             NULL,
    CONSTRAINT [IDX_PK_Site1] PRIMARY KEY CLUSTERED ([SiteID])
)
GO
/* 
 * TABLE: [dbo].[Site] 
 */

ALTER TABLE [dbo].[Site] ADD CONSTRAINT [RefOrganization304] 
    FOREIGN KEY ([OrganizationID])
    REFERENCES [dbo].[Organization]([OrganizationID])
