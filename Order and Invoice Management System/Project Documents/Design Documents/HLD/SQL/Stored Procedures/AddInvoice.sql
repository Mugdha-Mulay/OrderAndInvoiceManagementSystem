USE [8Aug_MIPL]
GO

/****** Object:  StoredProcedure [OIMS].[usp_AddInvoice]    Script Date: 10/25/2018 3:53:12 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO



-- =============================================
-- Author: Nidhi Agrawal		<Author,,Name>
-- Create date: 29/09/2018 <Create Date,,>
-- Description: Stored procedures for Invoice class	<Description,,>
-- =============================================
CREATE PROCEDURE [OIMS].[usp_AddInvoice] 
	-- Add the parameters for the stored procedure here
	@OrderId int,
	@InvoiceDate date
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	insert into OIMS.Invoice(OrderId,InvoiceDate) values(@OrderId,@InvoiceDate)
END



GO


