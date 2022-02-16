USE [newwebsite]
GO

/****** Object:  Table [dbo].[tbl_buyer]    Script Date: 04/28/2016 17:26:18 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[tbl_buyer](
	[slno] [int] IDENTITY(1,1) NOT NULL,
	[NOTE_ID] [varchar](255) NULL,
	[TITLE] [varchar](255) NULL,
	[AUTHOR] [varchar](255) NULL,
	[OWNER] [varchar](255) NULL,
	[PRICE] [varchar](255) NULL,
	[BUYER_USERNAME] [varchar](255) NULL,
	[SOLD_DATE] [date] NULL,
	[IP_BUYER] [varchar](255) NULL,
	[fpath] [varchar](255) NULL,
	[file_name] [varchar](255) NULL,
	[ppath] [varchar](255) NULL,
	[TRANS_DONE] [varchar](1) NULL
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO


