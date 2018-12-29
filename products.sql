USE [pBay]
GO

/****** Object:  Table [dbo].[products]    Script Date: 12/28/2018 10:28:16 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[products](
	[itemid] [int] IDENTITY(1,1) NOT NULL,
	[category] [varchar](50) NULL,
	[name] [varchar](150) NULL,
	[price] [decimal](18, 2) NULL,
	[dsc] [text] NULL,
	[image] [varchar](250) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

