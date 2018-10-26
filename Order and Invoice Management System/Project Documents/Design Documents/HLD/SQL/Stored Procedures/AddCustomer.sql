USE [8Aug_MIPL]
GO

/****** Object:  StoredProcedure [OIMS].[usp_AddCustomer]    Script Date: 10/25/2018 3:52:50 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [OIMS].[usp_AddCustomer] 
	-- Add the parameters for the stored procedure here 
	@CustomerName varchar(50),
	@Contact char(10),
	@Email varchar(50),
	@Address varchar(100),
	@City varchar(30),
	@Pincode char(6)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	insert into OIMS.Customer(CustomerName,Contact,Email,Address,City,Pincode) values(@CustomerName,@Contact,@Email,@Address,@City,@Pincode)
END


GO


