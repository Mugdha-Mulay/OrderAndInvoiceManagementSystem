USE [8Aug_MIPL]
GO

/****** Object:  StoredProcedure [OIMS].[usp_DeleteCategory]    Script Date: 10/25/2018 4:22:43 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO



-- =============================================
-- Author: Monika Nayak	<Author,,Name>
-- Create date:9/29/2018  <Create Date,,>
-- Description: Stored procedure for Deleting all details of a category using ISd 	<Description,,>
-- =============================================
CREATE PROCEDURE [OIMS].[usp_DeleteCategory] 
	-- Add the parameters for the stored procedure here
	@C_Id int 
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	delete from [OIMS].[Category] where CategoryID=@C_Id
END


GO


