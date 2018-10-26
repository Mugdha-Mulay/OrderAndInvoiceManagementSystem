USE [8Aug_MIPL]
GO

/****** Object:  StoredProcedure [OIMS].[usp_UpdateOrder]    Script Date: 10/25/2018 4:31:27 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO



-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [OIMS].[usp_UpdateOrder]
	-- Add the parameters for the stored procedure here
	(@OrderId int ,
	@OrderDate varchar(50)=null,
	@CustomerID varchar(50)=null,
	@Amount varchar(50)=null
	)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	 UPDATE [OIMS].[Order]
    SET OrderDate=ISNULL(@OrderDate,OrderDate),
        CustomerID=ISNULL(@CustomerID,CustomerID),
        Amount=ISNULL(@Amount,Amount)
    WHERE OrderId=@OrderId
END



GO


