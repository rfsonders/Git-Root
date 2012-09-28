/* 
 * TABLE: [Protected].[Person] 
 */

CREATE TABLE [Protected].[Person](
    [PersonID]                int                 IDENTITY(1,1),
    [PersonImportGUID]            uniqueidentifier    NOT NULL,
    [PersonLastName]              varchar(256)        NULL,
    [PersonFirstName]             varchar(256)        NULL,
    [PersonMiddleInitial]         char(1)             NULL,
    [PersonMiddleName]            varchar(256)        NULL,
    [PersonMaidenName]            varchar(256)        NULL,
    [PersonSuffixName]            varchar(256)        NULL,
    [PersonSSN]                   char(9)             NULL,
    [PersonDateofBirth]           datetime            NULL,
    [PersonYearofBirth]           smallint            NULL,
    [PersonDateofDeath]           datetime            NULL,
    [RaceID]                  int                 NULL,
    [EthnicityID]             int                 NULL,
    [SexID]                   int                 NULL,
    [EducationLevelID]        int                 NULL,
    [IncomeID]                int                 NULL,
    [PrimaryLanguageID]       int                 NOT NULL,
    [PovertyLevelID]          int                 NOT NULL,
    [HouseholdSizeID]         int                 NOT NULL,
    [HomelessFlag]                char(1)             NULL,
    [USCitizenFlag]               char(1)             NULL,
    [ExternalSystemActiveFlag]    char(1)             NULL,
    [ExternalSystemBusinessKey]   varchar(255)        NULL,
    [ExternalSystemRowEndDate]    date                NULL,
    [ExternalSystemRowStartDate]  date                NULL,
    [LoadID]                      int                 NOT NULL,
    [DataSourceID]                int                 NOT NULL,
    [RowStartDate]                datetime            NOT NULL,
    [RowEndDate]                  datetime            NOT NULL,
    [RowCurrentFlag]              int                 NOT NULL,
    CONSTRAINT [IDX_PK_Person1] PRIMARY KEY CLUSTERED ([PersonID])
)
GO
/* 
 * TABLE: [Protected].[Person] 
 */

ALTER TABLE [Protected].[Person] ADD CONSTRAINT [RefRace284] 
    FOREIGN KEY ([RaceID])
    REFERENCES [dbo].[Race]([RaceID])
GO
ALTER TABLE [Protected].[Person] ADD CONSTRAINT [RefEthnicity285] 
    FOREIGN KEY ([EthnicityID])
    REFERENCES [dbo].[Ethnicity]([EthnicityID])
GO
ALTER TABLE [Protected].[Person] ADD CONSTRAINT [RefSex286] 
    FOREIGN KEY ([SexID])
    REFERENCES [dbo].[Sex]([SexID])
GO
ALTER TABLE [Protected].[Person] ADD CONSTRAINT [RefEducationLevel291] 
    FOREIGN KEY ([EducationLevelID])
    REFERENCES [dbo].[EducationLevel]([EducationLevelID])
GO
ALTER TABLE [Protected].[Person] ADD CONSTRAINT [RefIncomeLevel292] 
    FOREIGN KEY ([IncomeID])
    REFERENCES [dbo].[IncomeLevel]([IncomeID])
GO
ALTER TABLE [Protected].[Person] ADD CONSTRAINT [RefPovertyLevel293] 
    FOREIGN KEY ([PovertyLevelID])
    REFERENCES [dbo].[PovertyLevel]([PovertyLevelID])
GO
ALTER TABLE [Protected].[Person] ADD CONSTRAINT [RefHouseholdSize294] 
    FOREIGN KEY ([HouseholdSizeID])
    REFERENCES [dbo].[HouseholdSize]([HouseholdSizeID])
GO
ALTER TABLE [Protected].[Person] ADD CONSTRAINT [RefLanguage307] 
    FOREIGN KEY ([PrimaryLanguageID])
    REFERENCES [dbo].[Language]([LanguageID])
GO
/* 
 * INDEX: [IDX_Person2] 
 */

CREATE INDEX [IDX_Person2] ON [Protected].[Person]([RowCurrentFlag])
INCLUDE (PersonID, PersonDateofBirth)
GO
/* 
 * INDEX: [IDX_Person3] 
 */

CREATE INDEX [IDX_Person3] ON [Protected].[Person]([PersonImportGUID])
INCLUDE (PersonID, RowStartDate, RowEndDate)
GO
/* 
 * INDEX: [IDX_Person4] 
 */

CREATE INDEX [IDX_Person4] ON [Protected].[Person]([RowCurrentFlag])
INCLUDE (PersonID, PersonDateofBirth)
GO
/* 
 * INDEX: [IDX_Person5] 
 */

CREATE INDEX [IDX_Person5] ON [Protected].[Person]([RowCurrentFlag], [PersonDateofBirth])
INCLUDE (PersonID, PersonImportGUID)
