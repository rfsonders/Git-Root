/* 
 * TABLE: [dbo].[Inquiry] 
 */

CREATE TABLE [dbo].[Inquiry](
    [InquiryID]             int         IDENTITY(1,1),
    [HealthcareActivityID]  int         NOT NULL,
    [LoadID]                    int         NOT NULL,
    [DataSourceID]              int         NOT NULL,
    [RowStartDate]              datetime    NOT NULL,
    [RowEndDate]                datetime    NOT NULL,
    [RowCurrentFlag]            int         NULL,
    CONSTRAINT [IDX_PK_Inquiry1] PRIMARY KEY CLUSTERED ([InquiryID], [HealthcareActivityID])
)
GO
/* 
 * TABLE: [dbo].[Inquiry] 
 */

ALTER TABLE [dbo].[Inquiry] ADD CONSTRAINT [FK_HealthcareActivity_Inquiry] 
    FOREIGN KEY ([HealthcareActivityID])
    REFERENCES [dbo].[HealthcareActivity]([HealthcareActivityID])
