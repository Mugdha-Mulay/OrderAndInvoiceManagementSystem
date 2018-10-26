USE [8Aug_MIPL]
GO

/****** Object:  StoredProcedure [OIMS].[usp_AddOrder]    Script Date: 10/25/2018 4:20:06 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO



-- =============================================
-- Author: Shadab		<Author,,Name>
-- Create date: 22/09/2018 <Create Date,,>
-- Description: Stored procedures for user class	<Description,,>
-- =============================================
CREATE PROCEDURE [OIMS].[usp_AddOrder] 
	-- Add the parameters for the stored procedure here 
	@OrderDate date,
	@CustomerID int,
	@Amount float
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	insert into [OIMS].[Order](OrderDate,CustomerID,Amount) values(@OrderDate,@CustomerID,@Amount)
END



GO


