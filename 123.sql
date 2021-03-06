USE [master]
GO
/****** Object:  Database [会议]    Script Date: 2018-1-17 11:43:41 ******/
CREATE DATABASE [会议]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'会议', FILENAME = N'G:\SEQ server\MSSQL11.MSSQLSERVER\MSSQL\DATA\会议.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'会议_log', FILENAME = N'G:\SEQ server\MSSQL11.MSSQLSERVER\MSSQL\DATA\会议_log.ldf' , SIZE = 2048KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [会议] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [会议].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [会议] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [会议] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [会议] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [会议] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [会议] SET ARITHABORT OFF 
GO
ALTER DATABASE [会议] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [会议] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [会议] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [会议] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [会议] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [会议] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [会议] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [会议] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [会议] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [会议] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [会议] SET  DISABLE_BROKER 
GO
ALTER DATABASE [会议] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [会议] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [会议] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [会议] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [会议] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [会议] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [会议] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [会议] SET RECOVERY FULL 
GO
ALTER DATABASE [会议] SET  MULTI_USER 
GO
ALTER DATABASE [会议] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [会议] SET DB_CHAINING OFF 
GO
ALTER DATABASE [会议] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [会议] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
EXEC sys.sp_db_vardecimal_storage_format N'会议', N'ON'
GO
USE [会议]
GO
/****** Object:  Table [dbo].[hy_apply]    Script Date: 2018-1-17 11:43:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[hy_apply](
	[hyxz] [varchar](20) NULL,
	[hyyt] [varchar](20) NULL,
	[ys] [varchar](10) NULL,
	[fjsc] [varchar](20) NULL,
	[zcr] [varchar](10) NULL,
	[jly] [varchar](10) NULL,
	[cjry] [varchar](50) NULL,
	[hydd] [varchar](20) NULL,
	[hys_name] [varchar](20) NULL,
	[hy_start] [date] NULL,
	[hy_over] [date] NULL,
	[hy_nr] [varchar](20) NULL,
	[spr] [varchar](20) NULL,
	[flag] [bit] NULL,
	[xgyj] [varchar](20) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[hy_jy]    Script Date: 2018-1-17 11:43:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[hy_jy](
	[hymc] [varchar](20) NULL,
	[jy_nr] [varchar](30) NULL,
	[fjsc] [varchar](20) NULL,
	[jly] [varchar](10) NULL,
	[gly] [varchar](10) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[hy_set]    Script Date: 2018-1-17 11:43:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[hy_set](
	[hys_name] [varchar](20) NOT NULL,
	[rn_person] [int] NULL,
	[hyzy] [varchar](20) NULL,
	[hys_use] [bit] NULL,
	[explain] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[hys_name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[hy_type]    Script Date: 2018-1-17 11:43:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[hy_type](
	[hyxz] [varchar](20) NOT NULL,
	[bz] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[hyxz] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[user_1]    Script Date: 2018-1-17 11:43:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[user_1](
	[name] [varchar](10) NULL,
	[pwd] [varchar](11) NULL,
	[isadmin] [bit] NULL,
	[issqr] [bit] NULL,
	[isfbr] [bit] NULL,
	[isspr] [bit] NULL,
	[isqcr] [bit] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[hy_apply] ([hyxz], [hyyt], [ys], [fjsc], [zcr], [jly], [cjry], [hydd], [hys_name], [hy_start], [hy_over], [hy_nr], [spr], [flag], [xgyj]) VALUES (N'会议性质', N'会议议题', N'预算', NULL, N'主持人', N'记录人', N'参加人员', N'会议地点', N'会议室名', CAST(0x4D3C0B00 AS Date), CAST(0x503C0B00 AS Date), N'会议内容', N'审批人', 0, N', , , ,')
INSERT [dbo].[hy_apply] ([hyxz], [hyyt], [ys], [fjsc], [zcr], [jly], [cjry], [hydd], [hys_name], [hy_start], [hy_over], [hy_nr], [spr], [flag], [xgyj]) VALUES (N'发展', N'会议议题', N'预算', NULL, N'主持人', N'记录人', N'参加人员', N'会议地点', N' A1-110 ', CAST(0x513E0B00 AS Date), CAST(0x543E0B00 AS Date), N'会议内容', N'审批人', 1, N'')
INSERT [dbo].[hy_apply] ([hyxz], [hyyt], [ys], [fjsc], [zcr], [jly], [cjry], [hydd], [hys_name], [hy_start], [hy_over], [hy_nr], [spr], [flag], [xgyj]) VALUES (N'发展', N'会议议题', N'预算', NULL, N'主持人', N'记录人', N'参加人员', N'会议地点', N' A1-111 ', CAST(0xBA3D0B00 AS Date), CAST(0xBD3D0B00 AS Date), N'会议内容', N'审批人', 0, N'')
INSERT [dbo].[hy_apply] ([hyxz], [hyyt], [ys], [fjsc], [zcr], [jly], [cjry], [hydd], [hys_name], [hy_start], [hy_over], [hy_nr], [spr], [flag], [xgyj]) VALUES (N'安全', N'会议议题', N'预算', NULL, N'主持人', N'记录人', N'参加人员', N'会议地点', N' A1-112 ', CAST(0x403D0B00 AS Date), CAST(0x433D0B00 AS Date), N'会议内容', N'审批人', 1, N'')
INSERT [dbo].[hy_apply] ([hyxz], [hyyt], [ys], [fjsc], [zcr], [jly], [cjry], [hydd], [hys_name], [hy_start], [hy_over], [hy_nr], [spr], [flag], [xgyj]) VALUES (N'安全', N'会议议题', N'预算', NULL, N'主持人', N'记录人', N'参加人员', N'会议地点', N' A2-111 ', CAST(0x883C0B00 AS Date), CAST(0x8B3C0B00 AS Date), N'会议内容', N'审批人', 0, N'')
INSERT [dbo].[hy_jy] ([hymc], [jy_nr], [fjsc], [jly], [gly]) VALUES (N'会议名', N'纪要内容', NULL, N'记录员', N'admin')
INSERT [dbo].[hy_jy] ([hymc], [jy_nr], [fjsc], [jly], [gly]) VALUES (N'会议-01', N'纪要内容', NULL, N'张三', N'admin')
INSERT [dbo].[hy_jy] ([hymc], [jy_nr], [fjsc], [jly], [gly]) VALUES (N'会议-02', N'纪要内容', N'', N'李四', N'admin')
INSERT [dbo].[hy_jy] ([hymc], [jy_nr], [fjsc], [jly], [gly]) VALUES (N'融资', N'纪要内容', N'', N'王五', N'管理员')
INSERT [dbo].[hy_jy] ([hymc], [jy_nr], [fjsc], [jly], [gly]) VALUES (N'发展', N'会议资源', NULL, N'王五', N'管理员')
INSERT [dbo].[hy_jy] ([hymc], [jy_nr], [fjsc], [jly], [gly]) VALUES (N'安全', N'会议资源', N'', N'王五1', N'管理员')
INSERT [dbo].[hy_set] ([hys_name], [rn_person], [hyzy], [hys_use], [explain]) VALUES (N' A1-110 ', 23, N'  ', 1, N'  ')
INSERT [dbo].[hy_set] ([hys_name], [rn_person], [hyzy], [hys_use], [explain]) VALUES (N' A1-111 ', 0, N'  ', 0, N'  ')
INSERT [dbo].[hy_set] ([hys_name], [rn_person], [hyzy], [hys_use], [explain]) VALUES (N' A1-112 ', 12, N'  ', 0, N'  ')
INSERT [dbo].[hy_set] ([hys_name], [rn_person], [hyzy], [hys_use], [explain]) VALUES (N' A2-111 ', 12, N'  ', 0, N'  ')
INSERT [dbo].[hy_set] ([hys_name], [rn_person], [hyzy], [hys_use], [explain]) VALUES (N'A1-001', 30, N'会议资源', 0, N'临时讨论')
INSERT [dbo].[hy_set] ([hys_name], [rn_person], [hyzy], [hys_use], [explain]) VALUES (N'A1-002', 20, N'会议资源', 0, N'临时讨论')
INSERT [dbo].[hy_set] ([hys_name], [rn_person], [hyzy], [hys_use], [explain]) VALUES (N'A1-003', 10, N'会议资源', 0, N'临时讨论')
INSERT [dbo].[hy_set] ([hys_name], [rn_person], [hyzy], [hys_use], [explain]) VALUES (N'会议室名', 10, N'会议资源', 0, N'临时讨论')
INSERT [dbo].[hy_type] ([hyxz], [bz]) VALUES (N'安全', N'备注')
INSERT [dbo].[hy_type] ([hyxz], [bz]) VALUES (N'风险', N'备注')
INSERT [dbo].[hy_type] ([hyxz], [bz]) VALUES (N'会议性质', N'备注')
INSERT [dbo].[hy_type] ([hyxz], [bz]) VALUES (N'经济', N'备注')
INSERT [dbo].[hy_type] ([hyxz], [bz]) VALUES (N'融资', N'备注')
INSERT [dbo].[user_1] ([name], [pwd], [isadmin], [issqr], [isfbr], [isspr], [isqcr]) VALUES (N'admin', N'admin', 1, 0, 0, 0, 1)
INSERT [dbo].[user_1] ([name], [pwd], [isadmin], [issqr], [isfbr], [isspr], [isqcr]) VALUES (N'sqr', N'sqr', 0, 1, 0, 0, 0)
INSERT [dbo].[user_1] ([name], [pwd], [isadmin], [issqr], [isfbr], [isspr], [isqcr]) VALUES (N'fbr', N'fbr', 0, 0, 1, 0, 0)
INSERT [dbo].[user_1] ([name], [pwd], [isadmin], [issqr], [isfbr], [isspr], [isqcr]) VALUES (N'spr', N'spr', 0, 0, 0, 1, 0)
INSERT [dbo].[user_1] ([name], [pwd], [isadmin], [issqr], [isfbr], [isspr], [isqcr]) VALUES (N'qcr', N'qcr', 0, 0, 0, 0, 1)
INSERT [dbo].[user_1] ([name], [pwd], [isadmin], [issqr], [isfbr], [isspr], [isqcr]) VALUES (N'人员', N'密码', 0, 0, 0, 0, 1)
INSERT [dbo].[user_1] ([name], [pwd], [isadmin], [issqr], [isfbr], [isspr], [isqcr]) VALUES (N'人员01', N'密码', 0, 0, 0, 0, 1)
INSERT [dbo].[user_1] ([name], [pwd], [isadmin], [issqr], [isfbr], [isspr], [isqcr]) VALUES (N'人员02', N'密码', 0, 0, 0, 0, 1)
INSERT [dbo].[user_1] ([name], [pwd], [isadmin], [issqr], [isfbr], [isspr], [isqcr]) VALUES (N'人员03', N'密码', 0, 0, 0, 0, 1)
SET ANSI_PADDING ON

GO
/****** Object:  Index [UQ__user_1__72E12F1B7DDFBD3C]    Script Date: 2018-1-17 11:43:42 ******/
ALTER TABLE [dbo].[user_1] ADD UNIQUE NONCLUSTERED 
(
	[name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[hy_set] ADD  DEFAULT ((0)) FOR [hys_use]
GO
ALTER TABLE [dbo].[user_1] ADD  DEFAULT ((1)) FOR [issqr]
GO
USE [master]
GO
ALTER DATABASE [会议] SET  READ_WRITE 
GO
