USE [newwebsite]
GO

/****** Object:  Table [dbo].[user_database]    Script Date: 04/28/2016 17:27:16 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[user_database](
	[user_id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](255) NULL,
	[username] [varchar](255) NULL,
	[email] [varchar](255) NULL,
	[password] [varchar](255) NULL,
	[mobile] [varchar](255) NULL
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO


