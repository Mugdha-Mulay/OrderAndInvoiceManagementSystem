USE [8Aug_MIPL]
GO

/****** Object:  StoredProcedure [OIMS].[usp_UpdateUser]    Script Date: 10/25/2018 4:36:12 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [OIMS].[usp_UpdateUser]
	-- Add the parameters for the stored procedure here
	(@Id int ,
	@Name varchar(50)=null,
	@Password varchar(50)=null,
	@Status varchar(50)=null
	)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	 UPDATE [OIMS].[Users]
    SET Username=ISNULL(@Name,Username),
        Password=ISNULL(@Password,Password),
        Status=ISNULL(@Status,Status)
    WHERE ID=@Id
END


GO


