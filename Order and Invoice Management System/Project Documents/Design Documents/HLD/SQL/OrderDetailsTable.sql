USE [8Aug_MIPL]
GO

/****** Object:  Table [OIMS].[OrderDetails]    Script Date: 10/25/2018 3:48:50 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [OIMS].[OrderDetails](
	[OrderId] [int] IDENTITY(1,1) NOT NULL,
	[ProductID] [int] NOT NULL,
	[UnitPrice] [int] NULL,
	[Quantity] [int] NULL,
UNIQUE NONCLUSTERED 
(
	[OrderId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [OIMS].[OrderDetails]  WITH CHECK ADD FOREIGN KEY([OrderId])
REFERENCES [OIMS].[Order] ([OrderId])
GO

ALTER TABLE [OIMS].[OrderDetails]  WITH CHECK ADD FOREIGN KEY([ProductID])
REFERENCES [OIMS].[Product] ([ProductID])
GO


