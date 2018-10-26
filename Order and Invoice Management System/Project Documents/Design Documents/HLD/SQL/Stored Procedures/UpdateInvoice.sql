USE [8Aug_MIPL]
GO

/****** Object:  StoredProcedure [OIMS].[usp_UpdateInvoice]    Script Date: 10/25/2018 4:31:09 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO



-- =============================================
-- Author:	Nidhi Agrawal	<Author,,Name>
-- Create date: 29-sep-2018 <Create Date,,>
-- Description:	Updates Invoice table <Description,,>
-- =============================================
CREATE PROCEDURE [OIMS].[usp_UpdateInvoice]
	-- Add the parameters for the stored procedure here
	(@InvoiceId int, 
	@OrderId int=null,
	@InvoiceDate date=null 
	)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	 UPDATE [OIMS].[Invoice]
    SET [OrderId]=@OrderId,
	[InvoiceDate]=@InvoiceDate
	
	    WHERE [InvoiceID]=@InvoiceId
END



GO


