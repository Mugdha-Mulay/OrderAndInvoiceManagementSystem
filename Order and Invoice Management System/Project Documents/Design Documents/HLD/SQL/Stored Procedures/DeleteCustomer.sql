USE [8Aug_MIPL]
GO

/****** Object:  StoredProcedure [OIMS].[usp_DeleteCustomer]    Script Date: 10/25/2018 4:22:59 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [OIMS].[usp_DeleteCustomer] 
	-- Add the parameters for the stored procedure here
	@CustomerId int 
	
AS
BEGIN

    -- Insert statements for procedure here
	delete from [OIMS].[Customer] where [CustomerID]=@CustomerId
END

GO


