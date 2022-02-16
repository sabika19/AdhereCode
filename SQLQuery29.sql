USE [newwebsite]
GO

/****** Object:  Table [dbo].[tbl_seller]    Script Date: 04/28/2016 17:27:04 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[tbl_seller](
	[TITLE] [varchar](255) NULL,
	[username] [varchar](255) NULL,
	[email] [varchar](255) NULL,
	[GRADE_TAG] [varchar](255) NULL,
	[SUB_TAG] [varchar](255) NULL,
	[UP_DATE] [date] NULL,
	[IP] [varchar](255) NULL,
	[fpath] [varchar](255) NULL,
	[AUTHOR] [varchar](255) NULL,
	[PRICE] [varchar](255) NULL,
	[user_id] [int] NULL,
	[sold] [varchar](1) NULL,
	[file_name] [varchar](255) NULL,
	[ppath] [varchar](255) NULL
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO


