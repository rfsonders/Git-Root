/* 
 * TABLE: [dbo].[ReportableDisease] 
 */

CREATE TABLE [dbo].[ReportableDisease](
    [ReportableDiseaseID]     int             IDENTITY(1,1),
    [ReportableDiseaseName]       varchar(256)    NOT NULL,
    [VaccinePreventableFlag]      char(1)         NULL,
    [LoadID]                      int             NOT NULL,
    [DataSourceID]                int             NOT NULL,
    [ExternalSystemBusinessKey]   varchar(255)    NULL,
    [ExternalSystemRowStartDate]  date            NULL,
    [ExternalSystemRowEndDate]    date            NULL,
    [ExternalSystemActiveFlag]    char(1)         NULL,
    [RowStartDate]                datetime        NOT NULL,
    [RowEndDate]                  datetime        NOT NULL,
    [RowCurrentFlag]              int             NULL,
    CONSTRAINT [IDX_PK_ReportableDisease1] PRIMARY KEY CLUSTERED ([ReportableDiseaseID])
)