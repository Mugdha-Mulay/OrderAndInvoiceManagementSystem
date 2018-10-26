USE [8Aug_MIPL]
GO

/****** Object:  Table [OIMS].[Order]    Script Date: 10/25/2018 3:48:17 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [OIMS].[Order](
	[OrderId] [int] IDENTITY(1,1) NOT NULL,
	[OrderDate] [date] NULL,
	[CustomerID] [int] NULL,
	[Amount] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[OrderId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO


