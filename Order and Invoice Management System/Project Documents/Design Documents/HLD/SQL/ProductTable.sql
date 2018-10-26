USE [8Aug_MIPL]
GO

/****** Object:  Table [OIMS].[Product]    Script Date: 10/25/2018 3:49:18 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [OIMS].[Product](
	[ProductID] [int] IDENTITY(1,1) NOT NULL,
	[ProductName] [varchar](30) NULL,
	[Price] [int] NULL,
	[CategoryID] [int] NULL,
	[Description] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

ALTER TABLE [OIMS].[Product]  WITH CHECK ADD FOREIGN KEY([CategoryID])
REFERENCES [OIMS].[Category] ([CategoryID])
GO


