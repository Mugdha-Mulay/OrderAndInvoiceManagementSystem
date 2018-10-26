USE [8Aug_MIPL]
GO

/****** Object:  StoredProcedure [OIMS].[usp_ViewAllCategories]    Script Date: 10/25/2018 4:36:45 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO




-- =============================================
-- Author:Monika Nayak		<Author,,Name>
-- Create date:9/29/2018 <Create Date,,>
-- Description:To create a stored procedure to view all categories	<Description,,>
-- =============================================
CREATE PROCEDURE [OIMS].[usp_ViewAllCategories] 
	-- Add the parameters for the stored procedure here
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT * from [OIMS].[Category] 
END


GO


