/* 
 * TABLE: [dbo].[Procedure] 
 */

CREATE TABLE [dbo].[Procedure](
    [HealthcareActivityID]    int               NOT NULL,
    [ProcedureID]             int               IDENTITY(1,1),
    [ProcedureTypeName]           varchar(256)      NULL,
    [ProcedureCode]               varchar(10)       NOT NULL,
    [ProcedureCodeName]           varchar(256)      NULL,
    [ProcedurePriorityNumber]     decimal(18, 9)    NULL,
    [ProcedureCategoryName]       varchar(256)      NULL,
    [ProcedureDescription]        varchar(1024)     NULL,
    [LoadID]                      int               NOT NULL,
    [DataSourceID]                int               NOT NULL,
    [ExternalSystemBusinessKey]   varchar(255)      NULL,
    [ExternalSystemRowStartDate]  date              NULL,
    [ExternalSystemRowEndDate]    date              NULL,
    [ExternalSystemActiveFlag]    char(1)           NULL,
    [RowStartDate]                datetime          NOT NULL,
    [RowEndDate]                  datetime          NOT NULL,
    [RowCurrentFlag]              int               NULL,
    CONSTRAINT [IDX_PK_DiagnosisCode1_1] PRIMARY KEY CLUSTERED ([HealthcareActivityID], [ProcedureID])
)
GO
/* 
 * TABLE: [dbo].[Procedure] 
 */

ALTER TABLE [dbo].[Procedure] ADD CONSTRAINT [RefHealthcareActivity348] 
    FOREIGN KEY ([HealthcareActivityID])
    REFERENCES [dbo].[HealthcareActivity]([HealthcareActivityID])
