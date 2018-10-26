USE [8Aug_MIPL]
GO

/****** Object:  StoredProcedure [OIMS].[usp_UpdateOrderDetails]    Script Date: 10/25/2018 4:33:06 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO



-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [OIMS].[usp_UpdateOrderDetails]
	-- Add the parameters for the stored procedure here
	(
	@OrderID int ,
	@ProductID varchar(50)=null,
	@UnitPrice varchar(50)=null,
	@Quantity varchar(50)=null
	)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	 UPDATE [OIMS].[OrderDetails]
    SET ProductID=ISNULL(@ProductID,ProductID),
        UnitPrice=ISNULL(@UnitPrice,UnitPrice),
        Quantity=ISNULL(@Quantity,Quantity)
    WHERE OrderID=@OrderID
END



GO


