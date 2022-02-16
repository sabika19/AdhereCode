USE [newwebsite]
GO

/****** Object:  Table [dbo].[user_profile]    Script Date: 05/09/2016 18:03:28 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[user_profile](
	[SLNO] [int] IDENTITY(1,1) NOT NULL,
	[username] [varchar](255) NULL,
	[name] [varchar](255) NULL,
	[alternate_email] [varchar](255) NULL,
	[mobile] [varchar](255) NULL,
	[add1] [varchar](255) NULL,
	[add2] [varchar](255) NULL,
	[state] [varchar](255) NULL,
	[pin] [varchar](255) NULL,
	[DOB] [varchar](255) NULL,
	[X_YEAR] [varchar](255) NULL,
	[XII_YEAR] [varchar](255) NULL,
	[GRAD_YEAR] [varchar](255) NULL,
	[GRAD_STREAM] [varchar](255) NULL,
	[PG_YEAR] [varchar](255) NULL,
	[PG_STREAM] [varchar](255) NULL,
	[PHD_YEAR] [varchar](255) NULL,
	[PHD_TOPIC] [varchar](255) NULL,
	[PROFILE_PIC_PATH] [varchar](255) NULL,
	[COMPANY] [varchar](255) NULL,
	[SKILL] [varchar](255) NULL,
	[PREVIOUS_COMPANY] [varchar](255) NULL,
	[EXP] [varchar](255) NULL,
	[TOPICS] [varchar](255) NULL
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO


