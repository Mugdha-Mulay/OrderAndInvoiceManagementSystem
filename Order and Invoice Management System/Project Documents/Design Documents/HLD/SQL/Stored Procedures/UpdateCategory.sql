USE [8Aug_MIPL]
GO

/****** Object:  StoredProcedure [OIMS].[usp_UpdateCategory]    Script Date: 10/25/2018 4:29:38 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO



-- =============================================
-- Author:Monika Nayak		<Author,,Name>
-- Create date:9/29/2018 <Create Date,,>
-- Description:Stored procedure for updating the category class	<Description,,>
-- =============================================
CREATE PROCEDURE [OIMS].[usp_UpdateCategory]
	-- Add the parameters for the stored procedure here
	(@C_Id int ,
	@C_Name varchar(50)=null,
	@C_Description varchar(100)=null
	)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	 UPDATE [OIMS].[Category]
    SET CategoryName=ISNULL(@C_Name,CategoryName),
        Description=ISNULL(@C_Description,Description)
    WHERE CategoryID=@C_Id
END


GO


