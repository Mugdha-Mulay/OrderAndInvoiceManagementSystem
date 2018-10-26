USE [8Aug_MIPL]
GO

/****** Object:  StoredProcedure [OIMS].[usp_ViewAllInvoices]    Script Date: 10/25/2018 4:37:34 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO




-- =============================================
-- Author: Nidhi Agrawal		<Author,,Name>
-- Create date: 29-sep-2018 <Create Date,,>
-- Description:	view all Invoices <Description,,>
-- =============================================
CREATE PROCEDURE [OIMS].[usp_ViewAllInvoices]
	-- Add the parameters for the stored procedure here
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT * from [OIMS].[Invoice]
END


GO


