/* 
 * TABLE: [dbo].[Vaccine] 
 */

CREATE TABLE [dbo].[Vaccine](
    [VaccineID]                   int             IDENTITY(1,1),
    [VaccineName]                     varchar(256)    NOT NULL,
    [VaccineAbbreviation]             varchar(256)    NULL,
    [VaccineAdministrationRouteName]  varchar(256)    NOT NULL,
    [LoadID]                          int             NOT NULL,
    [DataSourceID]                    int             NOT NULL,
    [RowStartDate]                    datetime        NOT NULL,
    [RowEndDate]                      datetime        NOT NULL,
    [RowCurrentFlag]                  int             NULL,
    CONSTRAINT [IDX_PK_Vaccine1] PRIMARY KEY CLUSTERED ([VaccineID])
)