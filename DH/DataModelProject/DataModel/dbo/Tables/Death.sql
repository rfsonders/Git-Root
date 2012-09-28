/* 
 * TABLE: [dbo].[Death] 
 */

CREATE TABLE [dbo].[Death](
    [DeathCertificateNumber]      int             NOT NULL,
    [HealthcareActivityID]    int             NOT NULL,
    [DeathUnderlyingCauseCode]    varchar(10)     NOT NULL,
    [DeathAcmeCode1]              varchar(10)     NULL,
    [DeathAcmeCode2]              varchar(10)     NULL,
    [DeathAcmeCode3]              varchar(10)     NULL,
    [DeathAcmeCode4]              varchar(10)     NULL,
    [DeathAcmeCode5]              varchar(10)     NULL,
    [DeathAcmeCode6]              varchar(10)     NULL,
    [DeathAcmeCode7]              varchar(10)     NULL,
    [DeathAcmeCode8]              varchar(10)     NULL,
    [DeathAcmeCode9]              varchar(10)     NULL,
    [DeathAcmeCode10]             varchar(10)     NULL,
    [DeathAcmeCode11]             varchar(10)     NULL,
    [DeathInjuryCode]             varchar(10)     NULL,
    [DeathInjuryCode1]            varchar(10)     NULL,
    [DeathInjuryCode2]            varchar(10)     NULL,
    [DeathInjuryCode3]            varchar(10)     NULL,
    [DeathInjuryCode4]            varchar(10)     NULL,
    [DeathInjuryCode5]            varchar(10)     NULL,
    [DeathInjuryCode6]            varchar(10)     NULL,
    [DeathInjuryCode7]            varchar(10)     NULL,
    [DeathInjuryCode8]            varchar(10)     NULL,
    [DeathInjuryCode9]            varchar(10)     NULL,
    [DeathInjuryCode10]           varchar(10)     NULL,
    [DeathInjuryCode11]           varchar(10)     NULL,
    [DeathAcmePlaceCode]          varchar(10)     NULL,
    [DeathAutopsyFlag]            char(1)         NULL,
    [DeathAutopsyFindingsFlag]    char(1)         NULL,
    [DeathDispositionMethodName]  varchar(256)    NULL,
    [DeathPlaceName]              varchar(256)    NULL,
    [ArmedForcesFlag]             char(1)         NULL,
    [CoronerCaseFlag]             char(1)         NULL,
    [WorkInjuryFlag]              char(1)         NULL,
    [InuryPlaceCode]              char(1)         NULL,
    [DeathMannerName]             varchar(256)    NULL,
    [LoadID]                      int             NOT NULL,
    [DataSourceID]                int             NULL,
    [RowStartDate]                datetime        NOT NULL,
    [RowEndDate]                  datetime        NOT NULL,
    [RowCurrentFlag]              int             NULL,
    CONSTRAINT [IDX_PK_Death1] PRIMARY KEY CLUSTERED ([HealthcareActivityID], [DeathCertificateNumber])
)
GO
/* 
 * TABLE: [dbo].[Death] 
 */

ALTER TABLE [dbo].[Death] ADD CONSTRAINT [FK_HealthcareActivity_De_84] 
    FOREIGN KEY ([HealthcareActivityID])
    REFERENCES [dbo].[HealthcareActivity]([HealthcareActivityID])
GO
ALTER TABLE [dbo].[Death] ADD CONSTRAINT [FK_HealthcareActivity_Death] 
    FOREIGN KEY ([HealthcareActivityID])
    REFERENCES [dbo].[HealthcareActivity]([HealthcareActivityID])
GO
/* 
 * INDEX: [IDX_Death2] 
 */

CREATE INDEX [IDX_Death2] ON [dbo].[Death]([HealthcareActivityID])