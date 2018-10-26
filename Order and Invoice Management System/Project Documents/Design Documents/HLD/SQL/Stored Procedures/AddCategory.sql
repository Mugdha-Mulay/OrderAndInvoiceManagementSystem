USE [8Aug_MIPL]
GO

/****** Object:  StoredProcedure [OIMS].[usp_AddCategory]    Script Date: 10/25/2018 3:51:08 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO



-- =============================================
-- Author: Monika Nayak		<Author,,Name>
-- Create date: 29/09/2018 <Create Date,,>
-- Description: Stored procedures for Category class	<Description,,>
-- =============================================
CREATE PROCEDURE [OIMS].[usp_AddCategory] 
	-- Add the parameters for the stored procedure here
	@C_Name varchar(50),
	@C_Description varchar(100)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	insert into [OIMS].[Category]([CategoryName],[Description])  values(@C_Name,@C_Description)
END


GO


