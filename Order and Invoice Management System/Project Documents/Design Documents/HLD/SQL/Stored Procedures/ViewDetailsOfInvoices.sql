USE [8Aug_MIPL]
GO

/****** Object:  StoredProcedure [OIMS].[usp_ViewDetailsOfInvoices]    Script Date: 10/25/2018 4:44:37 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [OIMS].[usp_ViewDetailsOfInvoices] 
	-- Add the parameters for the stored procedure here
	@InvoiceID int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT * from [OIMS].[Invoice] where [InvoiceID]=@InvoiceID;
END



GO


