USE [8Aug_MIPL]
GO

/****** Object:  StoredProcedure [OIMS].[usp_DeleteProduct]    Script Date: 10/25/2018 4:25:37 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO



-- =============================================
-- Author: Mugdha Mulay	<Author,,Name>
-- Create date:  <Create Date,,>
-- Description: Delete user 	<Description,,>
-- =============================================
CREATE PROCEDURE [OIMS].[usp_DeleteProduct] 
	-- Add the parameters for the stored procedure here
	@Id int 
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	delete from [OIMS].[Product] where [ProductID]=@Id
END



GO


