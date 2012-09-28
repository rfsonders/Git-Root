
IF OBJECT_ID('dbo.Antigen') IS NOT NULL
    PRINT '<<< CREATED TABLE dbo.Antigen >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE dbo.Antigen >>>'
GO

IF OBJECT_ID('dbo.AntigenContraindication') IS NOT NULL
    PRINT '<<< CREATED TABLE dbo.AntigenContraindication >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE dbo.AntigenContraindication >>>'
GO

IF OBJECT_ID('dbo.Birth') IS NOT NULL
    PRINT '<<< CREATED TABLE dbo.Birth >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE dbo.Birth >>>'
GO

IF OBJECT_ID('dbo.DataSource') IS NOT NULL
    PRINT '<<< CREATED TABLE dbo.DataSource >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE dbo.DataSource >>>'
GO

IF OBJECT_ID('dbo.Death') IS NOT NULL
    PRINT '<<< CREATED TABLE dbo.Death >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE dbo.Death >>>'
GO

IF OBJECT_ID('dbo.Diagnosis') IS NOT NULL
    PRINT '<<< CREATED TABLE dbo.Diagnosis >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE dbo.Diagnosis >>>'
GO

IF OBJECT_ID('dbo.EducationLevel') IS NOT NULL
    PRINT '<<< CREATED TABLE dbo.EducationLevel >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE dbo.EducationLevel >>>'
GO

IF OBJECT_ID('dbo.Encounter') IS NOT NULL
    PRINT '<<< CREATED TABLE dbo.Encounter >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE dbo.Encounter >>>'
GO

IF OBJECT_ID('dbo.Ethnicity') IS NOT NULL
    PRINT '<<< CREATED TABLE dbo.Ethnicity >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE dbo.Ethnicity >>>'
GO

IF OBJECT_ID('dbo.FinancialTransaction') IS NOT NULL
    PRINT '<<< CREATED TABLE dbo.FinancialTransaction >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE dbo.FinancialTransaction >>>'
GO

IF OBJECT_ID('dbo.GeographicRegion') IS NOT NULL
    PRINT '<<< CREATED TABLE dbo.GeographicRegion >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE dbo.GeographicRegion >>>'
GO

IF OBJECT_ID('dbo.GeographicRegionType') IS NOT NULL
    PRINT '<<< CREATED TABLE dbo.GeographicRegionType >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE dbo.GeographicRegionType >>>'
GO

IF OBJECT_ID('dbo.HealthcareActivity') IS NOT NULL
    PRINT '<<< CREATED TABLE dbo.HealthcareActivity >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE dbo.HealthcareActivity >>>'
GO

IF OBJECT_ID('dbo.HealthcareActivityRelationship') IS NOT NULL
    PRINT '<<< CREATED TABLE dbo.HealthcareActivityRelationship >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE dbo.HealthcareActivityRelationship >>>'
GO

IF OBJECT_ID('dbo.HouseholdSize') IS NOT NULL
    PRINT '<<< CREATED TABLE dbo.HouseholdSize >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE dbo.HouseholdSize >>>'
GO

IF OBJECT_ID('dbo.Immunization') IS NOT NULL
    PRINT '<<< CREATED TABLE dbo.Immunization >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE dbo.Immunization >>>'
GO

IF OBJECT_ID('dbo.ImmunizationContraindication') IS NOT NULL
    PRINT '<<< CREATED TABLE dbo.ImmunizationContraindication >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE dbo.ImmunizationContraindication >>>'
GO

IF OBJECT_ID('dbo.ImmunizationPriorityGroup') IS NOT NULL
    PRINT '<<< CREATED TABLE dbo.ImmunizationPriorityGroup >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE dbo.ImmunizationPriorityGroup >>>'
GO

IF OBJECT_ID('dbo.IncomeLevel') IS NOT NULL
    PRINT '<<< CREATED TABLE dbo.IncomeLevel >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE dbo.IncomeLevel >>>'
GO

IF OBJECT_ID('dbo.Inquiry') IS NOT NULL
    PRINT '<<< CREATED TABLE dbo.Inquiry >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE dbo.Inquiry >>>'
GO

IF OBJECT_ID('dbo.Language') IS NOT NULL
    PRINT '<<< CREATED TABLE dbo.Language >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE dbo.Language >>>'
GO

IF OBJECT_ID('dbo.Observation') IS NOT NULL
    PRINT '<<< CREATED TABLE dbo.Observation >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE dbo.Observation >>>'
GO

IF OBJECT_ID('dbo.ObservedImmunizationAdverseReaction') IS NOT NULL
    PRINT '<<< CREATED TABLE dbo.ObservedImmunizationAdverseReaction >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE dbo.ObservedImmunizationAdverseReaction >>>'
GO

IF OBJECT_ID('dbo.ObservedImmunizationContraindication') IS NOT NULL
    PRINT '<<< CREATED TABLE dbo.ObservedImmunizationContraindication >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE dbo.ObservedImmunizationContraindication >>>'
GO

IF OBJECT_ID('dbo.ObservedReportableDisease') IS NOT NULL
    PRINT '<<< CREATED TABLE dbo.ObservedReportableDisease >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE dbo.ObservedReportableDisease >>>'
GO

IF OBJECT_ID('dbo.Organization') IS NOT NULL
    PRINT '<<< CREATED TABLE dbo.Organization >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE dbo.Organization >>>'
GO

IF OBJECT_ID('dbo.PayerSource') IS NOT NULL
    PRINT '<<< CREATED TABLE dbo.PayerSource >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE dbo.PayerSource >>>'
GO

IF OBJECT_ID('dbo.PersonGeoRegion') IS NOT NULL
    PRINT '<<< CREATED TABLE dbo.PersonGeoRegion >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE dbo.PersonGeoRegion >>>'
GO

IF OBJECT_ID('dbo.PersonRelationship') IS NOT NULL
    PRINT '<<< CREATED TABLE dbo.PersonRelationship >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE dbo.PersonRelationship >>>'
GO

IF OBJECT_ID('dbo.PopulationStatistics') IS NOT NULL
    PRINT '<<< CREATED TABLE dbo.PopulationStatistics >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE dbo.PopulationStatistics >>>'
GO

IF OBJECT_ID('dbo.PovertyLevel') IS NOT NULL
    PRINT '<<< CREATED TABLE dbo.PovertyLevel >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE dbo.PovertyLevel >>>'
GO

IF OBJECT_ID('dbo.Procedure') IS NOT NULL
    PRINT '<<< CREATED TABLE dbo.Procedure >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE dbo.Procedure >>>'
GO

IF OBJECT_ID('dbo.Program') IS NOT NULL
    PRINT '<<< CREATED TABLE dbo.Program >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE dbo.Program >>>'
GO

IF OBJECT_ID('dbo.Provider') IS NOT NULL
    PRINT '<<< CREATED TABLE dbo.Provider >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE dbo.Provider >>>'
GO

IF OBJECT_ID('dbo.PublicHealthCase') IS NOT NULL
    PRINT '<<< CREATED TABLE dbo.PublicHealthCase >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE dbo.PublicHealthCase >>>'
GO

IF OBJECT_ID('dbo.PublicHealthEvent') IS NOT NULL
    PRINT '<<< CREATED TABLE dbo.PublicHealthEvent >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE dbo.PublicHealthEvent >>>'
GO

IF OBJECT_ID('dbo.PublicHealthOutbreak') IS NOT NULL
    PRINT '<<< CREATED TABLE dbo.PublicHealthOutbreak >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE dbo.PublicHealthOutbreak >>>'
GO

IF OBJECT_ID('dbo.Race') IS NOT NULL
    PRINT '<<< CREATED TABLE dbo.Race >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE dbo.Race >>>'
GO

IF OBJECT_ID('dbo.ReportableDisease') IS NOT NULL
    PRINT '<<< CREATED TABLE dbo.ReportableDisease >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE dbo.ReportableDisease >>>'
GO

IF OBJECT_ID('dbo.Sex') IS NOT NULL
    PRINT '<<< CREATED TABLE dbo.Sex >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE dbo.Sex >>>'
GO

IF OBJECT_ID('dbo.Site') IS NOT NULL
    PRINT '<<< CREATED TABLE dbo.Site >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE dbo.Site >>>'
GO

IF OBJECT_ID('dbo.SitePhysicalLocation') IS NOT NULL
    PRINT '<<< CREATED TABLE dbo.SitePhysicalLocation >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE dbo.SitePhysicalLocation >>>'
GO

IF OBJECT_ID('dbo.SocioeconomicStatus') IS NOT NULL
    PRINT '<<< CREATED TABLE dbo.SocioeconomicStatus >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE dbo.SocioeconomicStatus >>>'
GO

IF OBJECT_ID('dbo.StatisticalAgeGroup') IS NOT NULL
    PRINT '<<< CREATED TABLE dbo.StatisticalAgeGroup >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE dbo.StatisticalAgeGroup >>>'
GO

IF OBJECT_ID('dbo.StrategicArea') IS NOT NULL
    PRINT '<<< CREATED TABLE dbo.StrategicArea >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE dbo.StrategicArea >>>'
GO

IF OBJECT_ID('dbo.SubstanceAdministration') IS NOT NULL
    PRINT '<<< CREATED TABLE dbo.SubstanceAdministration >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE dbo.SubstanceAdministration >>>'
GO

IF OBJECT_ID('dbo.Vaccine') IS NOT NULL
    PRINT '<<< CREATED TABLE dbo.Vaccine >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE dbo.Vaccine >>>'
GO

IF OBJECT_ID('dbo.VaccineAntigen') IS NOT NULL
    PRINT '<<< CREATED TABLE dbo.VaccineAntigen >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE dbo.VaccineAntigen >>>'
GO

IF OBJECT_ID('dbo.VaccineContraindication') IS NOT NULL
    PRINT '<<< CREATED TABLE dbo.VaccineContraindication >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE dbo.VaccineContraindication >>>'
GO

IF OBJECT_ID('dbo.VaccineInventory') IS NOT NULL
    PRINT '<<< CREATED TABLE dbo.VaccineInventory >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE dbo.VaccineInventory >>>'
GO

IF OBJECT_ID('dbo.VaccineInventoryEvent') IS NOT NULL
    PRINT '<<< CREATED TABLE dbo.VaccineInventoryEvent >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE dbo.VaccineInventoryEvent >>>'
GO

IF OBJECT_ID('dbo.VaccineLot') IS NOT NULL
    PRINT '<<< CREATED TABLE dbo.VaccineLot >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE dbo.VaccineLot >>>'
GO

IF OBJECT_ID('dbo.Vitals') IS NOT NULL
    PRINT '<<< CREATED TABLE dbo.Vitals >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE dbo.Vitals >>>'
GO

IF OBJECT_ID('Protected.ExternalSystem') IS NOT NULL
    PRINT '<<< CREATED TABLE Protected.ExternalSystem >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE Protected.ExternalSystem >>>'
GO

IF OBJECT_ID('Protected.Person') IS NOT NULL
    PRINT '<<< CREATED TABLE Protected.Person >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE Protected.Person >>>'
GO

IF OBJECT_ID('Protected.PersonReportedLocation') IS NOT NULL
    PRINT '<<< CREATED TABLE Protected.PersonReportedLocation >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE Protected.PersonReportedLocation >>>'
GO

IF OBJECT_ID('Protected.PhysicalLocation') IS NOT NULL
    PRINT '<<< CREATED TABLE Protected.PhysicalLocation >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE Protected.PhysicalLocation >>>'
GO

IF OBJECT_ID('Protected.PhysicalLocationGeoRegion') IS NOT NULL
    PRINT '<<< CREATED TABLE Protected.PhysicalLocationGeoRegion >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE Protected.PhysicalLocationGeoRegion >>>'
GO

IF OBJECT_ID('Protected.ReportedLocation') IS NOT NULL
    PRINT '<<< CREATED TABLE Protected.ReportedLocation >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE Protected.ReportedLocation >>>'
GO

IF OBJECT_ID('Protected.ReportedLocationPhysicalLocation') IS NOT NULL
    PRINT '<<< CREATED TABLE Protected.ReportedLocationPhysicalLocation >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE Protected.ReportedLocationPhysicalLocation >>>'
GO

IF OBJECT_ID('Protected.ReportedLocationType') IS NOT NULL
    PRINT '<<< CREATED TABLE Protected.ReportedLocationType >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE Protected.ReportedLocationType >>>'
GO

IF OBJECT_ID('Protected.SiteReportedLocation') IS NOT NULL
    PRINT '<<< CREATED TABLE Protected.SiteReportedLocation >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE Protected.SiteReportedLocation >>>'
GO

IF EXISTS (SELECT * FROM sys.indexes WHERE object_id=OBJECT_ID('dbo.Antigen') AND name='IDX_Antigen2')
    PRINT '<<< CREATED INDEX dbo.Antigen.IDX_Antigen2 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.Antigen.IDX_Antigen2 >>>'
GO

IF EXISTS (SELECT * FROM sys.indexes WHERE object_id=OBJECT_ID('dbo.AntigenContraindication') AND name='IDX_AntigenContraindication2')
    PRINT '<<< CREATED INDEX dbo.AntigenContraindication.IDX_AntigenContraindication2 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.AntigenContraindication.IDX_AntigenContraindication2 >>>'
GO

IF EXISTS (SELECT * FROM sys.indexes WHERE object_id=OBJECT_ID('dbo.AntigenContraindication') AND name='IDX_AntigenContraindication3')
    PRINT '<<< CREATED INDEX dbo.AntigenContraindication.IDX_AntigenContraindication3 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.AntigenContraindication.IDX_AntigenContraindication3 >>>'
GO

IF EXISTS (SELECT * FROM sys.indexes WHERE object_id=OBJECT_ID('dbo.Death') AND name='IDX_Death2')
    PRINT '<<< CREATED INDEX dbo.Death.IDX_Death2 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.Death.IDX_Death2 >>>'
GO

IF EXISTS (SELECT * FROM sys.indexes WHERE object_id=OBJECT_ID('dbo.Encounter') AND name='IDX_Encounter3')
    PRINT '<<< CREATED INDEX dbo.Encounter.IDX_Encounter3 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.Encounter.IDX_Encounter3 >>>'
GO

IF EXISTS (SELECT * FROM sys.indexes WHERE object_id=OBJECT_ID('dbo.GeographicRegion') AND name='IDX_GeographicRegion2')
    PRINT '<<< CREATED INDEX dbo.GeographicRegion.IDX_GeographicRegion2 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.GeographicRegion.IDX_GeographicRegion2 >>>'
GO

IF EXISTS (SELECT * FROM sys.indexes WHERE object_id=OBJECT_ID('dbo.HealthcareActivity') AND name='IDX_HealthcareActivity2')
    PRINT '<<< CREATED INDEX dbo.HealthcareActivity.IDX_HealthcareActivity2 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.HealthcareActivity.IDX_HealthcareActivity2 >>>'
GO

IF EXISTS (SELECT * FROM sys.indexes WHERE object_id=OBJECT_ID('dbo.HealthcareActivity') AND name='IDX_HealthcareActivity3')
    PRINT '<<< CREATED INDEX dbo.HealthcareActivity.IDX_HealthcareActivity3 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.HealthcareActivity.IDX_HealthcareActivity3 >>>'
GO

IF EXISTS (SELECT * FROM sys.indexes WHERE object_id=OBJECT_ID('dbo.HealthcareActivity') AND name='IDX_HealthcareActivity4')
    PRINT '<<< CREATED INDEX dbo.HealthcareActivity.IDX_HealthcareActivity4 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.HealthcareActivity.IDX_HealthcareActivity4 >>>'
GO

IF EXISTS (SELECT * FROM sys.indexes WHERE object_id=OBJECT_ID('dbo.HealthcareActivityRelationship') AND name='IDX_HealthcareActivityRelationship2')
    PRINT '<<< CREATED INDEX dbo.HealthcareActivityRelationship.IDX_HealthcareActivityRelationship2 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.HealthcareActivityRelationship.IDX_HealthcareActivityRelationship2 >>>'
GO

IF EXISTS (SELECT * FROM sys.indexes WHERE object_id=OBJECT_ID('dbo.HealthcareActivityRelationship') AND name='IDX_HealthcareActivityRelationship3')
    PRINT '<<< CREATED INDEX dbo.HealthcareActivityRelationship.IDX_HealthcareActivityRelationship3 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.HealthcareActivityRelationship.IDX_HealthcareActivityRelationship3 >>>'
GO

IF EXISTS (SELECT * FROM sys.indexes WHERE object_id=OBJECT_ID('dbo.Immunization') AND name='IDX_Immunization2')
    PRINT '<<< CREATED INDEX dbo.Immunization.IDX_Immunization2 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.Immunization.IDX_Immunization2 >>>'
GO

IF EXISTS (SELECT * FROM sys.indexes WHERE object_id=OBJECT_ID('dbo.Immunization') AND name='IDX_Immunization3')
    PRINT '<<< CREATED INDEX dbo.Immunization.IDX_Immunization3 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.Immunization.IDX_Immunization3 >>>'
GO

IF EXISTS (SELECT * FROM sys.indexes WHERE object_id=OBJECT_ID('dbo.Observation') AND name='IDX_Observation2')
    PRINT '<<< CREATED INDEX dbo.Observation.IDX_Observation2 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.Observation.IDX_Observation2 >>>'
GO

IF EXISTS (SELECT * FROM sys.indexes WHERE object_id=OBJECT_ID('dbo.ObservedImmunizationAdverseReaction') AND name='IDX_ObservedImmunizationAdverseReaction2')
    PRINT '<<< CREATED INDEX dbo.ObservedImmunizationAdverseReaction.IDX_ObservedImmunizationAdverseReaction2 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.ObservedImmunizationAdverseReaction.IDX_ObservedImmunizationAdverseReaction2 >>>'
GO

IF EXISTS (SELECT * FROM sys.indexes WHERE object_id=OBJECT_ID('dbo.ObservedImmunizationContraindication') AND name='IDX_ObservedImmunizationContraindication2')
    PRINT '<<< CREATED INDEX dbo.ObservedImmunizationContraindication.IDX_ObservedImmunizationContraindication2 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.ObservedImmunizationContraindication.IDX_ObservedImmunizationContraindication2 >>>'
GO

IF EXISTS (SELECT * FROM sys.indexes WHERE object_id=OBJECT_ID('dbo.ObservedImmunizationContraindication') AND name='IDX_ObservedImmunizationContraindication3')
    PRINT '<<< CREATED INDEX dbo.ObservedImmunizationContraindication.IDX_ObservedImmunizationContraindication3 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.ObservedImmunizationContraindication.IDX_ObservedImmunizationContraindication3 >>>'
GO

IF EXISTS (SELECT * FROM sys.indexes WHERE object_id=OBJECT_ID('dbo.ObservedReportableDisease') AND name='IDX_ObservedReportableDisease2')
    PRINT '<<< CREATED INDEX dbo.ObservedReportableDisease.IDX_ObservedReportableDisease2 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.ObservedReportableDisease.IDX_ObservedReportableDisease2 >>>'
GO

IF EXISTS (SELECT * FROM sys.indexes WHERE object_id=OBJECT_ID('dbo.ObservedReportableDisease') AND name='IDX_ObservedReportableDisease3')
    PRINT '<<< CREATED INDEX dbo.ObservedReportableDisease.IDX_ObservedReportableDisease3 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.ObservedReportableDisease.IDX_ObservedReportableDisease3 >>>'
GO

IF EXISTS (SELECT * FROM sys.indexes WHERE object_id=OBJECT_ID('dbo.PersonGeoRegion') AND name='IDX_PersonGeoRegion2')
    PRINT '<<< CREATED INDEX dbo.PersonGeoRegion.IDX_PersonGeoRegion2 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.PersonGeoRegion.IDX_PersonGeoRegion2 >>>'
GO

IF EXISTS (SELECT * FROM sys.indexes WHERE object_id=OBJECT_ID('dbo.Program') AND name='IDX_Program2')
    PRINT '<<< CREATED INDEX dbo.Program.IDX_Program2 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.Program.IDX_Program2 >>>'
GO

IF EXISTS (SELECT * FROM sys.indexes WHERE object_id=OBJECT_ID('dbo.PublicHealthCase') AND name='IDX_PublicHealthCase2')
    PRINT '<<< CREATED INDEX dbo.PublicHealthCase.IDX_PublicHealthCase2 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.PublicHealthCase.IDX_PublicHealthCase2 >>>'
GO

IF EXISTS (SELECT * FROM sys.indexes WHERE object_id=OBJECT_ID('dbo.PublicHealthOutbreak') AND name='IDX_PublicHealthOutbreak2')
    PRINT '<<< CREATED INDEX dbo.PublicHealthOutbreak.IDX_PublicHealthOutbreak2 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.PublicHealthOutbreak.IDX_PublicHealthOutbreak2 >>>'
GO

IF EXISTS (SELECT * FROM sys.indexes WHERE object_id=OBJECT_ID('dbo.SitePhysicalLocation') AND name='IDX_SitePhysicalLocation2')
    PRINT '<<< CREATED INDEX dbo.SitePhysicalLocation.IDX_SitePhysicalLocation2 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.SitePhysicalLocation.IDX_SitePhysicalLocation2 >>>'
GO

IF EXISTS (SELECT * FROM sys.indexes WHERE object_id=OBJECT_ID('dbo.VaccineContraindication') AND name='IDX_VaccineContraindication2')
    PRINT '<<< CREATED INDEX dbo.VaccineContraindication.IDX_VaccineContraindication2 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.VaccineContraindication.IDX_VaccineContraindication2 >>>'
GO

IF EXISTS (SELECT * FROM sys.indexes WHERE object_id=OBJECT_ID('dbo.VaccineContraindication') AND name='IDX_VaccineContraindication3')
    PRINT '<<< CREATED INDEX dbo.VaccineContraindication.IDX_VaccineContraindication3 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.VaccineContraindication.IDX_VaccineContraindication3 >>>'
GO

IF EXISTS (SELECT * FROM sys.indexes WHERE object_id=OBJECT_ID('dbo.VaccineInventory') AND name='IDX_VaccineInventory2')
    PRINT '<<< CREATED INDEX dbo.VaccineInventory.IDX_VaccineInventory2 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.VaccineInventory.IDX_VaccineInventory2 >>>'
GO

IF EXISTS (SELECT * FROM sys.indexes WHERE object_id=OBJECT_ID('dbo.VaccineInventory') AND name='IDX_VaccineInventory3')
    PRINT '<<< CREATED INDEX dbo.VaccineInventory.IDX_VaccineInventory3 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.VaccineInventory.IDX_VaccineInventory3 >>>'
GO

IF EXISTS (SELECT * FROM sys.indexes WHERE object_id=OBJECT_ID('dbo.VaccineInventoryEvent') AND name='IDX_VaccineInventoryEvent2')
    PRINT '<<< CREATED INDEX dbo.VaccineInventoryEvent.IDX_VaccineInventoryEvent2 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.VaccineInventoryEvent.IDX_VaccineInventoryEvent2 >>>'
GO

IF EXISTS (SELECT * FROM sys.indexes WHERE object_id=OBJECT_ID('dbo.VaccineInventoryEvent') AND name='IDX_VaccineInventoryEvent3')
    PRINT '<<< CREATED INDEX dbo.VaccineInventoryEvent.IDX_VaccineInventoryEvent3 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.VaccineInventoryEvent.IDX_VaccineInventoryEvent3 >>>'
GO

IF EXISTS (SELECT * FROM sys.indexes WHERE object_id=OBJECT_ID('dbo.VaccineInventoryEvent') AND name='IDX_VaccineInventoryEvent4')
    PRINT '<<< CREATED INDEX dbo.VaccineInventoryEvent.IDX_VaccineInventoryEvent4 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.VaccineInventoryEvent.IDX_VaccineInventoryEvent4 >>>'
GO

IF EXISTS (SELECT * FROM sys.indexes WHERE object_id=OBJECT_ID('dbo.VaccineLot') AND name='IDX_VaccineLot2')
    PRINT '<<< CREATED INDEX dbo.VaccineLot.IDX_VaccineLot2 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX dbo.VaccineLot.IDX_VaccineLot2 >>>'
GO

IF EXISTS (SELECT * FROM sys.indexes WHERE object_id=OBJECT_ID('Protected.Person') AND name='IDX_Person2')
    PRINT '<<< CREATED INDEX Protected.Person.IDX_Person2 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX Protected.Person.IDX_Person2 >>>'
GO

IF EXISTS (SELECT * FROM sys.indexes WHERE object_id=OBJECT_ID('Protected.Person') AND name='IDX_Person3')
    PRINT '<<< CREATED INDEX Protected.Person.IDX_Person3 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX Protected.Person.IDX_Person3 >>>'
GO

IF EXISTS (SELECT * FROM sys.indexes WHERE object_id=OBJECT_ID('Protected.Person') AND name='IDX_Person4')
    PRINT '<<< CREATED INDEX Protected.Person.IDX_Person4 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX Protected.Person.IDX_Person4 >>>'
GO

IF EXISTS (SELECT * FROM sys.indexes WHERE object_id=OBJECT_ID('Protected.Person') AND name='IDX_Person5')
    PRINT '<<< CREATED INDEX Protected.Person.IDX_Person5 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX Protected.Person.IDX_Person5 >>>'
GO

IF EXISTS (SELECT * FROM sys.indexes WHERE object_id=OBJECT_ID('Protected.PhysicalLocationGeoRegion') AND name='IDX_PhysicalLocationGeoRegion2')
    PRINT '<<< CREATED INDEX Protected.PhysicalLocationGeoRegion.IDX_PhysicalLocationGeoRegion2 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX Protected.PhysicalLocationGeoRegion.IDX_PhysicalLocationGeoRegion2 >>>'
GO

IF EXISTS (SELECT * FROM sys.indexes WHERE object_id=OBJECT_ID('Protected.PhysicalLocationGeoRegion') AND name='IDX_PhysicalLocationGeoRegion3')
    PRINT '<<< CREATED INDEX Protected.PhysicalLocationGeoRegion.IDX_PhysicalLocationGeoRegion3 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX Protected.PhysicalLocationGeoRegion.IDX_PhysicalLocationGeoRegion3 >>>'
GO
