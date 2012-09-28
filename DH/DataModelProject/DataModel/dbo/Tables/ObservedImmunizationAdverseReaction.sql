/* 
 * TABLE: [dbo].[ObservedImmunizationAdverseReaction] 
 */

CREATE TABLE [dbo].[ObservedImmunizationAdverseReaction](
    [ObservedImmunizationAdverseReactionID]  int             IDENTITY(1,1),
    [HealthcareActivityID]                   int             NOT NULL,
    [AdverseReactionName]                        varchar(256)    NOT NULL,
    [LoadID]                                     int             NOT NULL,
    [DataSourceID]                               int             NULL,
    [RowStartDate]                               datetime        NOT NULL,
    [RowEndDate]                                 datetime        NOT NULL,
    [RowCurrentFlag]                             int             NULL,
    CONSTRAINT [IDX_PK_ObservedImmunizationAdverseReaction1] PRIMARY KEY CLUSTERED ([ObservedImmunizationAdverseReactionID], [HealthcareActivityID])
)
GO
/* 
 * TABLE: [dbo].[ObservedImmunizationAdverseReaction] 
 */

ALTER TABLE [dbo].[ObservedImmunizationAdverseReaction] ADD CONSTRAINT [FK_HealthcareActivity_ObservedImmunizationAdverseReaction] 
    FOREIGN KEY ([HealthcareActivityID])
    REFERENCES [dbo].[HealthcareActivity]([HealthcareActivityID])
GO
/* 
 * INDEX: [IDX_ObservedImmunizationAdverseReaction2] 
 */

CREATE INDEX [IDX_ObservedImmunizationAdverseReaction2] ON [dbo].[ObservedImmunizationAdverseReaction]([HealthcareActivityID])
