/* 
 * TABLE: [dbo].[PersonRelationship] 
 */

CREATE TABLE [dbo].[PersonRelationship](
    [PersonRelationshipID]  int             IDENTITY(1,1),
    [PersonID]              int             NOT NULL,
    [RelatedPersonID]       int             NOT NULL,
    [RelationshipTypeName]      varchar(256)    NOT NULL,
    [LoadID]                    int             NOT NULL,
    [DataSourceID]              int             NOT NULL,
    [RowStartDate]              datetime        NOT NULL,
    [RowEndDate]                datetime        NULL,
    [RowCurrentFlag]            int             NOT NULL,
    CONSTRAINT [IDX_PK_PersonRelationship1] PRIMARY KEY CLUSTERED ([PersonRelationshipID])
)
GO
/* 
 * TABLE: [dbo].[PersonRelationship] 
 */

ALTER TABLE [dbo].[PersonRelationship] ADD CONSTRAINT [RefPerson297] 
    FOREIGN KEY ([PersonID])
    REFERENCES [Protected].[Person]([PersonID])
GO
ALTER TABLE [dbo].[PersonRelationship] ADD CONSTRAINT [RefPerson298] 
    FOREIGN KEY ([RelatedPersonID])
    REFERENCES [Protected].[Person]([PersonID])
