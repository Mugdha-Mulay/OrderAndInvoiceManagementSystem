USE [8Aug_MIPL]
GO

/****** Object:  StoredProcedure [OIMS].[usp_DeleteOrderDetails]    Script Date: 10/25/2018 4:25:07 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO



-- =============================================
-- Author: Shadab Siddiqui	<Author,,Name>
-- Create date:  <Create Date,,>
-- Description: Stored procedure for Deleting all details of a user using ISd 	<Description,,>
-- =============================================
CREATE PROCEDURE [OIMS].[usp_DeleteOrderDetails] 
	-- Add the parameters for the stored procedure here
	@OrderID int 
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	delete from [OIMS].[OrderDetails] where OrderID=@OrderID
END



GO


