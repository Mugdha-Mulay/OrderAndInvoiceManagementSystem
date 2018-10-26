USE [8Aug_MIPL]
GO

/****** Object:  StoredProcedure [OIMS].[usp_AddUser]    Script Date: 10/25/2018 4:22:08 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author: Shadab		<Author,,Name>
-- Create date: 22/09/2018 <Create Date,,>
-- Description: Stored procedures for user class	<Description,,>
-- =============================================
CREATE PROCEDURE [OIMS].[usp_AddUser] 
	-- Add the parameters for the stored procedure here 
	@Name varchar(50),
	@Password varchar(50),
	@Status varchar(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	insert into [OIMS].[Users](Username,Password,Status) values(@Name,@Password,@Status)
END


GO


