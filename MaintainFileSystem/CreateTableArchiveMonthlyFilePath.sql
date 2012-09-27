

USE [DBAMaint]
GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ArchiveMonthlyFilePath]') AND type in (N'U'))
 DROP TABLE [dbo].[ArchiveMonthlyFilePath]
GO
USE [DBAMaint]
GO


CREATE TABLE [dbo].[ArchiveMonthlyFilePath](
[ArchivePathID] [int] IDENTITY(1,1) NOT NULL,
[Process] [varchar](50),
[SourceFilePath] [varchar](500),
[TargetFilePath] [varchar](500),
[FileNameList]  [varchar](MAX),
[FileExtensionList] [varchar](MAX),
[DayOfMonthToArchive] INT,
[CountOfMonthsToKeep] INT,

 CONSTRAINT [PK_ArchiveMonthlyFilePath] PRIMARY KEY CLUSTERED
(
[ArchivePathID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

INSERT [dbo].[ArchiveMonthlyFilePath] ( [Process], [SourceFilePath], [TargetFilePath], [FileNameList], [FileExtensionList], [DayOfMonthToArchive], [CountOfMonthsToKeep]) 
VALUES (N'Archive', N'\\pcoddp1\SQL\pcosql01', N'\\pcoddp1\SQL\pcosql01\Monthly\', N'DbaMaint, master, model, msdb, Tfs_Configuration, Tfs_OTJ, Tfs_Warehouse, VeeamBackup', N'.bak,.tmp', 14, 13)

INSERT [dbo].[ArchiveMonthlyFilePath] ( [Process], [SourceFilePath], [TargetFilePath], [FileNameList], [FileExtensionList], [DayOfMonthToArchive], [CountOfMonthsToKeep]) 
VALUES (N'Archive', N'\\pcoddp1\SQL\pcosql02', N'\\pcoddp1\SQL\pcosql02\Monthly\', N'DbaMaint, master, model, msdb, OTJDataTransportServiceDB, OTJJB_PROD, FeatureJob, HcDnn, OTJGeoLocationDB, OTJJobBoardDB, OTJJobsearchDB, OTJMessageServiceDB, OTJResumeParserServiceDB, OTJSupportServices, OTJUISupportDB, BS, CB, CP, HCAR, DYNAMICS, HCC, HCU, HCUK, HEC2, JBLFT, JL, JSV, MH, OJ, OTJE, OTJUS, PD, PPI, RHWC, GreatPlainsMigration, WebTimeSheet, OTJEnterpriseWarehouse,absolutebm,EnterpriseCandidateSearchDB ,OTJDWStaging,OTJDWUtility,BusinessSystemLogging,OTJCA', N'.bak,.tmp', 14, 13)

INSERT [dbo].[ArchiveMonthlyFilePath] ( [Process], [SourceFilePath], [TargetFilePath], [FileNameList], [FileExtensionList], [DayOfMonthToArchive], [CountOfMonthsToKeep]) 
VALUES (N'Archive', N'\\pcoddp1\SQL\pcosql03', N'\\pcoddp1\SQL\pcosql03\Monthly\', N'DbaMaint, master, model, msdb, rhw_admin,vcf_admin,rhw_client_storage', N'.bak,.tmp', 14, 13)

INSERT [dbo].[ArchiveMonthlyFilePath] ( [Process], [SourceFilePath], [TargetFilePath], [FileNameList], [FileExtensionList], [DayOfMonthToArchive], [CountOfMonthsToKeep]) 
VALUES (N'Archive', N'\\pcoddp1\SQL\pcosql04', N'\\pcoddp1\SQL\pcosql04\Monthly\', N'DbaMaint, master, model, msdb, BAYBIO,BioCareerFair,BIOCOM,Biospace,BiospaceNG,BiotechPortal,DelawareBio,JobEng,PABIO,SOA_MetaData,PLOS,SEO,taxonomy,BiospaceBannerAds,DNNMaster_BSP,JobEng_History', N'.bak,.tmp', 14, 13)

INSERT [dbo].[ArchiveMonthlyFilePath] ( [Process], [SourceFilePath], [TargetFilePath], [FileNameList], [FileExtensionList], [DayOfMonthToArchive], [CountOfMonthsToKeep]) 
VALUES (N'Archive', N'\\pcoddp1\SQL\pcosql05', N'\\pcoddp1\SQL\pcosql05\Monthly\', N'DbaMaint, master, model, msdb, aos_active,AOSDataCleanup,BiospaceNG,CST,DNNMaster_MH_Nov2010,EncryptionMaster,hec_client_storage,HECPathTracking,aos_active_restore,HECDataIntegration', N'.bak,.tmp', 14, 13)

INSERT [dbo].[ArchiveMonthlyFilePath] ( [Process], [SourceFilePath], [TargetFilePath], [FileNameList], [FileExtensionList], [DayOfMonthToArchive], [CountOfMonthsToKeep]) 
VALUES (N'Archive', N'\\pcoddp1\SQL\pcosql06', N'\\pcoddp1\SQL\pcosql06\Monthly\', N'DbaMaint, master, model, msdb, aos_active_Repl,distribution,BioCareerFair_Repl,BayBio_Repl,DelawareBio_Repl,JobEng_Repl,PaBio_Repl,BioSpace_Repl,OTJGeoLocationDB_Repl,OTJJobBoardDB_Repl,BioCom_Repl,CST_Repl,HECPathTracking_Repl,RHW_Admin_Repl,HECDataIntegration_Repl,OTJEnterpriseWarehouse_Repl', N'.bak,.tmp', 14, 13)

INSERT [dbo].[ArchiveMonthlyFilePath] ( [Process], [SourceFilePath], [TargetFilePath], [FileNameList], [FileExtensionList], [DayOfMonthToArchive], [CountOfMonthsToKeep]) 
VALUES (N'Archive', N'\\pcoddp1\SQL\pcosql07', N'\\pcoddp1\SQL\pcosql07\Monthly\', N'DbaMaint, master, model, msdb, SFDC, DW, DW2, DW_Staging, cognos_content_store, cognos_metric_store, GOMETRICS, GOSL', N'.bak,.tmp', 14, 13)

INSERT [dbo].[ArchiveMonthlyFilePath] ( [Process], [SourceFilePath], [TargetFilePath], [FileNameList], [FileExtensionList], [DayOfMonthToArchive], [CountOfMonthsToKeep]) 
VALUES (N'Archive', N'\\pcoddp1\SQL\pcosql10', N'\\pcoddp1\SQL\pcosql10\Monthly\', N'DbaMaint, master, model, msdb, TokenAuthentication,Geospatial,GeospatialRead,GeospatialWarehouse,DocumentConversion,DocumentStorage,JobSeekerRead,JobSeeker,GeographicReferenceData,Alerting,Membership,Partner,PartnerRead,Salesforce,Employer,EmployerIntegration,EmployerRead,GreatPlainsBoundedContext,OTJ_SQLCL', N'.bak,.tmp', 14, 13)

INSERT [dbo].[ArchiveMonthlyFilePath] ( [Process], [SourceFilePath], [TargetFilePath], [FileNameList], [FileExtensionList], [DayOfMonthToArchive], [CountOfMonthsToKeep]) 
VALUES (N'Archive', N'\\pcoddp1\SQL\pcosql11', N'\\pcoddp1\SQL\pcosql11\Monthly\', N'DbaMaint, master, model, msdb, SMS_PCO,OperationsManager,OperationsManagerDW,AnalyticsDatamart,FEPDW_PCO2,EmailService,FEPDB_PCO,Warehouse', N'.bak,.tmp', 14, 13)

INSERT [dbo].[ArchiveMonthlyFilePath] ( [Process], [SourceFilePath], [TargetFilePath], [FileNameList], [FileExtensionList], [DayOfMonthToArchive], [CountOfMonthsToKeep]) 
VALUES (N'Archive', N'\\pcoddp1\SQL\pcosqlssis01', N'\\pcoddp1\SQL\pcosqlssis01\Monthly\', N'DbaMaint, master, model, msdb, SSISConfiguration, ETL_Operations', N'.bak,.tmp', 14, 13)

INSERT [dbo].[ArchiveMonthlyFilePath] ( [Process], [SourceFilePath], [TargetFilePath], [FileNameList], [FileExtensionList], [DayOfMonthToArchive], [CountOfMonthsToKeep]) 
VALUES (N'Archive', N'\\pcoddp1\SQL\pcosqlssrs01', N'\\pcoddp1\SQL\pcosqlssrs01\Monthly\', N'DbaMaint, master, model, msdb, ReportServer, ReportServerTempDB', N'.bak,.tmp', 14, 13)

INSERT [dbo].[ArchiveMonthlyFilePath] ( [Process], [SourceFilePath], [TargetFilePath], [FileNameList], [FileExtensionList], [DayOfMonthToArchive], [CountOfMonthsToKeep]) 
VALUES (N'Archive', N'\\pcoddp1\SQL\pcosqlutil01', N'\\pcoddp1\SQL\pcosqlutil01\Monthly\', N'DbaMaint, master, model, msdb, SQLdmRepository,IderaNewsRepository', N'.bak,.tmp', 14, 13)



/*
SELECT * FROM [DBAMaint].[dbo].[ArchiveMonthlyFilePath]




SELECT 	
	[amfp].[ArchivePathID]
   ,[amfp].[Process]
   ,[amfp].[SourceFilePath]
   ,[amfp].[TargetFilePath]
   ,[amfp].[FileExtensionList]
   ,[amfp].[FileNameList]
   ,[amfp].[DayOfMonthToArchive]
   ,[amfp].[CountOfMonthsToKeep] 
	
FROM [dbo].[ArchiveMonthlyFilePath] AS amfp
WHERE [amfp].[Process] = 'Archive'
ORDER BY [ArchivePathID]



*/