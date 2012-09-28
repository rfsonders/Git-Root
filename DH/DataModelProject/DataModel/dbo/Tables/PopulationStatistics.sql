/* 
 * TABLE: [dbo].[PopulationStatistics] 
 */

CREATE TABLE [dbo].[PopulationStatistics](
    [GeographicRegionID]     int         NOT NULL,
    [SexID]                  int         NOT NULL,
    [StatisticalAgeGroupID]  int         NOT NULL,
    [RaceID]                 int         NOT NULL,
    [EthnicityID]            int         NOT NULL,
    [Year]                       int         NOT NULL,
    [TotalPopulationCount]       int         NOT NULL,
    [LoadID]                     int         NOT NULL,
    [RowEndDate]                 datetime    NOT NULL,
    [RowStartDate]               datetime    NOT NULL,
    [RowCurrentFlag]             int         NULL,
    CONSTRAINT [IDX_PK_PopulationStatistics1] PRIMARY KEY CLUSTERED ([GeographicRegionID], [SexID], [StatisticalAgeGroupID], [RaceID], [EthnicityID], [Year])
)
GO
/* 
 * TABLE: [dbo].[PopulationStatistics] 
 */

ALTER TABLE [dbo].[PopulationStatistics] ADD CONSTRAINT [FK_Ethnicity_PopulationStatistics] 
    FOREIGN KEY ([EthnicityID])
    REFERENCES [dbo].[Ethnicity]([EthnicityID])
GO
ALTER TABLE [dbo].[PopulationStatistics] ADD CONSTRAINT [FK_Race_PopulationStatistics] 
    FOREIGN KEY ([RaceID])
    REFERENCES [dbo].[Race]([RaceID])
GO
ALTER TABLE [dbo].[PopulationStatistics] ADD CONSTRAINT [FK_Sex_PopulationStatistics] 
    FOREIGN KEY ([SexID])
    REFERENCES [dbo].[Sex]([SexID])
GO
ALTER TABLE [dbo].[PopulationStatistics] ADD CONSTRAINT [FK_StatisticalAgeGroup_PopulationStatistics] 
    FOREIGN KEY ([StatisticalAgeGroupID])
    REFERENCES [dbo].[StatisticalAgeGroup]([StatisticalAgeGroupID])
