USE [8Aug_MIPL]
GO

/****** Object:  StoredProcedure [OIMS].[usp_UpdateProduct]    Script Date: 10/25/2018 4:34:54 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO



-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [OIMS].[usp_UpdateProduct]
	-- Add the parameters for the stored procedure here
	(@ProductID int ,
	@ProductName varchar(50)=null,
	@Price float=null,
	@CategoryID int=null,
	@Description varchar(100)=null
	)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	 UPDATE [OIMS].[Product]
    SET 
        ProductName=ISNULL(@ProductName,ProductName),
		Price=ISNULL(@Price,Price),
		CategoryID=ISNULL(@CategoryID,CategoryID),
		Description=ISNULL(@Description,Description)
    WHERE ProductID=@ProductID
END



GO


