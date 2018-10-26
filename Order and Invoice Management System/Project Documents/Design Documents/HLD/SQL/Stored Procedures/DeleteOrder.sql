USE [8Aug_MIPL]
GO

/****** Object:  StoredProcedure [OIMS].[usp_DeleteOrder]    Script Date: 10/25/2018 4:24:48 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO



-- =============================================
-- Author: Shadab Siddiqui	<Author,,Name>
-- Create date:  <Create Date,,>
-- Description: Stored procedure for Deleting all details of a user using ISd 	<Description,,>
-- =============================================
CREATE PROCEDURE [OIMS].[usp_DeleteOrder] 
	-- Add the parameters for the stored procedure here
	@OrderId int 
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	delete from [OIMS].[Invoice] where OrderId=@OrderId
	delete from [OIMS].[OrderDetails] where OrderId=@OrderId
	delete from [OIMS].[Order] where OrderId=@OrderId
END

GO


