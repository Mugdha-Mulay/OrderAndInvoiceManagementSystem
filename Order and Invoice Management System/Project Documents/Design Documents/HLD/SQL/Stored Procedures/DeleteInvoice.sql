USE [8Aug_MIPL]
GO

/****** Object:  StoredProcedure [OIMS].[usp_DeleteInvoice]    Script Date: 10/25/2018 4:23:48 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO



-- =============================================
-- Author: Nidhi Agrawal<Author,,Name>
-- Create date:  <Create Date,,>
-- Description: Delete Invoice 	<Description,,>
-- =============================================
CREATE PROCEDURE [OIMS].[usp_DeleteInvoice] 
	-- Add the parameters for the stored procedure here
	@InvoiceId int 
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	delete from [OIMS].[Invoice] where [InvoiceID]=@InvoiceId
END



GO


