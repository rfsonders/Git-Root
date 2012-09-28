/* 
 * TABLE: [dbo].[VaccineAntigen] 
 */

CREATE TABLE [dbo].[VaccineAntigen](
    [VaccineAntigenID]  int         IDENTITY(1,1),
    [VaccineID]         int         NOT NULL,
    [AntigenID]         int         NOT NULL,
    [LoadID]                int         NOT NULL,
    [DataSourceID]          int         NOT NULL,
    [RowStartDate]          datetime    NOT NULL,
    [RowEndDate]            datetime    NOT NULL,
    [RowCurrentFlag]        int         NULL
)
GO
/* 
 * TABLE: [dbo].[VaccineAntigen] 
 */

ALTER TABLE [dbo].[VaccineAntigen] ADD CONSTRAINT [FK_Antigen_VaccineAntigen] 
    FOREIGN KEY ([AntigenID])
    REFERENCES [dbo].[Antigen]([AntigenID])
GO
ALTER TABLE [dbo].[VaccineAntigen] ADD CONSTRAINT [FK_Vaccine_VaccineAntigen] 
    FOREIGN KEY ([VaccineID])
    REFERENCES [dbo].[Vaccine]([VaccineID])
