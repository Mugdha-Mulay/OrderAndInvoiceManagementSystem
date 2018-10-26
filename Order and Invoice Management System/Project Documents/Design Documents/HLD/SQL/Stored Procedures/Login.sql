USE [8Aug_MIPL]
GO

/****** Object:  StoredProcedure [OIMS].[usp_Login]    Script Date: 10/25/2018 4:26:59 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO




-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [OIMS].[usp_Login] 
	-- Add the parameters for the stored procedure here
	@Username varchar(20)
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT * from [OIMS].[Users]  
	where Username= @Username
END




GO


