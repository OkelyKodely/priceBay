USE [pBay]
GO

/****** Object:  Table [dbo].[shoppers]    Script Date: 12/28/2018 10:28:32 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[shoppers](
	[userid] [int] IDENTITY(1,1) NOT NULL,
	[firstname] [varchar](50) NULL,
	[lastname] [varchar](50) NULL,
	[username] [varchar](50) NULL,
	[password] [varchar](50) NULL,
	[address] [varchar](500) NULL,
	[city] [varchar](100) NULL,
	[stateorprovince] [varchar](200) NULL,
	[country] [varchar](100) NULL,
	[phone] [varchar](50) NULL,
	[fax] [varchar](50) NULL,
	[email] [varchar](250) NULL
) ON [PRIMARY]
GO

