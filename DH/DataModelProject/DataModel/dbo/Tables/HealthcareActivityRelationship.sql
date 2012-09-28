/* 
 * TABLE: [dbo].[HealthcareActivityRelationship] 
 */

CREATE TABLE [dbo].[HealthcareActivityRelationship](
    [HealthcareActivityID]                int            NOT NULL,
    [RelatedHealthcareActivityID]         int            NOT NULL,
    [HealthcareActivityRelationshipTypeName]  varchar(50)    NOT NULL,
    [LoadID]                                  int            NOT NULL,
    [DataSourceID]                            int            NOT NULL,
    [RowStartDate]                            datetime       NOT NULL,
    [RowEndDate]                              datetime       NOT NULL,
    [RowCurrentFlag]                          int            NULL,
    CONSTRAINT [IDX_PK_HealthcareActivityRelationship1] PRIMARY KEY CLUSTERED ([HealthcareActivityID], [RelatedHealthcareActivityID])
)
GO
/* 
 * TABLE: [dbo].[HealthcareActivityRelationship] 
 */

ALTER TABLE [dbo].[HealthcareActivityRelationship] ADD CONSTRAINT [FK_HealthcareActivity_HealthcareActivityRelations_72] 
    FOREIGN KEY ([RelatedHealthcareActivityID])
    REFERENCES [dbo].[HealthcareActivity]([HealthcareActivityID])
GO
ALTER TABLE [dbo].[HealthcareActivityRelationship] ADD CONSTRAINT [FK_HealthcareActivity_HealthcareActivityRelationship] 
    FOREIGN KEY ([HealthcareActivityID])
    REFERENCES [dbo].[HealthcareActivity]([HealthcareActivityID])
GO
/* 
 * INDEX: [IDX_HealthcareActivityRelationship2] 
 */

CREATE INDEX [IDX_HealthcareActivityRelationship2] ON [dbo].[HealthcareActivityRelationship]([HealthcareActivityID])
GO
/* 
 * INDEX: [IDX_HealthcareActivityRelationship3] 
 */

CREATE INDEX [IDX_HealthcareActivityRelationship3] ON [dbo].[HealthcareActivityRelationship]([RelatedHealthcareActivityID])
