/* 
 * TABLE: [dbo].[ImmunizationPriorityGroup] 
 */

CREATE TABLE [dbo].[ImmunizationPriorityGroup](
    [ImmunizationPriorityGroupID]  int             IDENTITY(1,1),
    [ImmunizationPriorityGroupName]    varchar(256)    NOT NULL,
    [LoadID]                           int             NOT NULL,
    [DataSourceID]                     int             NOT NULL,
    [RowStartDate]                     datetime        NOT NULL,
    [RowEndDate]                       datetime        NOT NULL,
    [RowCurrentFlag]                   int             NULL,
    CONSTRAINT [IDX_PK_ImmunizationPriorityGroup1] PRIMARY KEY CLUSTERED ([ImmunizationPriorityGroupID])
)