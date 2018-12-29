USE [pBay]
GO

/****** Object:  Table [dbo].[order]    Script Date: 12/28/2018 10:27:47 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[order](
	[orderid] [int] IDENTITY(1,1) NOT NULL,
	[itemid] [int] NULL,
	[usernam] [varbinary](500) NULL,
	[inputdate] [datetime] NULL,
	[price] [decimal](18, 2) NULL,
	[username] [varchar](500) NULL,
	[s_address] [varchar](500) NULL,
	[s_city] [varchar](500) NULL,
	[s_state] [varchar](500) NULL,
	[s_zipcode] [varchar](500) NULL,
	[s_country] [varchar](500) NULL
) ON [PRIMARY]
GO

