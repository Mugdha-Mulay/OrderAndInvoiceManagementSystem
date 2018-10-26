USE [8Aug_MIPL]
GO

/****** Object:  StoredProcedure [OIMS].[usp_PrintInvoice]    Script Date: 10/25/2018 4:29:15 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create procedure [OIMS].[usp_PrintInvoice]
@id int
as
select InvoiceID,cust.[CustomerID], ProductName, CustomerName, OrderDate, UnitPrice, [Quantity],[Amount],InvoiceDate

from [OIMS].[Category] cat, [OIMS].[Customer] cust,

[OIMS].[Invoice] inv, [OIMS].[Order] ord,

[OIMS].[OrderDetails] orde, [OIMS].[Product] prod

where cat.CategoryID = prod.CategoryID

and cust.CustomerID = ord.CustomerID

and ord.OrderId=inv.OrderID

and prod.ProductID = orde.ProductID

and orde.OrderID=ord.OrderID

and inv.InvoiceID=@id

GO


