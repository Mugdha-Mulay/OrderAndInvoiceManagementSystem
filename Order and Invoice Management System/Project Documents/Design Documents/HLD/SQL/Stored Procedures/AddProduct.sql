USE [8Aug_MIPL]
GO

/****** Object:  StoredProcedure [OIMS].[usp_AddProduct]    Script Date: 10/25/2018 4:21:39 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author: Shadab		<Author,,Name>
-- Create date: 22/09/2018 <Create Date,,>
-- Description: Stored procedures for user class	<Description,,>
-- =============================================
CREATE PROCEDURE [OIMS].[usp_AddProduct] 
	-- Add the parameters for the stored procedure here
	@ProductName varchar(50),
	@Price varchar(50),
	@CategoryID int,
	@Description varchar(100)

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	insert into [OIMS].[Product](ProductName,Price,CategoryID,Description) values(@ProductName,@Price,@CategoryID,@Description)
END


GO


