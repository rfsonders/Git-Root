

USE [DBAMaint]
GO
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CleanupFilePath]') AND type in (N'U'))
 DROP TABLE [dbo].[CleanupFilePath]
GO
USE [DBAMaint]
GO


CREATE TABLE [dbo].[CleanupFilePath](
[PathID] [int] IDENTITY(1,1) NOT NULL,
[Process] [varchar](32),
[FilePath] [varchar](256),
[FileExtensionList] [varchar](256),
[DaysToKeep] INT,

 CONSTRAINT [PK_FilePaths] PRIMARY KEY CLUSTERED
(
[PathID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO


INSERT INTO [CleanupFilePath] 
	(	[Process], 
		[FilePath],
		[FileExtensionList],
		[DaysToKeep]) 
VALUES ('MaintainDirectory',
		'\\pcodmzmgt01\DataIntegration\EmailService\ResponsysArchive',
		'.csv,.txt,.bak,.BAK,.tmp',
		7)

/*
SELECT * FROM [DBAMaint].[dbo].CleanupFilePath


SELECT
    [cfp].[PathID]
   ,[cfp].[Process]
   ,[cfp].[FilePath]
   ,[cfp].[FileExtensionList]
   ,[cfp].[DaysToKeep]
FROM
    dbo.CleanupFilePath cfp
WHERE
    cfp.Process = 'MaintainDirectory'
ORDER BY
    cfp.PathID

*/