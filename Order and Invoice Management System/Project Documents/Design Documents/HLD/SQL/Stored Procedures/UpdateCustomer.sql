USE [8Aug_MIPL]
GO

/****** Object:  StoredProcedure [OIMS].[usp_UpdateCustomer]    Script Date: 10/25/2018 4:30:46 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [OIMS].[usp_UpdateCustomer]
	-- Add the parameters for the stored procedure here
	(@CustomerId int, 
	@CustomerName varchar(50),
	@Contact char(10),
	@Email varchar(50),
	@Address varchar(100),
	@City varchar(30),
	@Pincode char(6)
	)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	 UPDATE [OIMS].[Customer]
    SET [CustomerName]=@CustomerName,
	[Contact]=@Contact,
    [Email]=@Email,
	[Address]=@Address,
	[City]=@City,
	[Pincode]=@Pincode
    WHERE [CustomerID]=@CustomerId
END


GO


