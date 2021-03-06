
GO
/****** Object:  StoredProcedure [dbo].[update_tbl_voluntar_login]    Script Date: 04/24/2014 21:11:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[update_tbl_voluntar_login] 
(
	@int_id integer,
	@str_voluntar_name varchar(50),
	@str_password varchar(50)
	
	
)
	
AS
BEGIN
	update tbl_voluntar_login set str_voluntar_name=@str_voluntar_name,str_password=@str_password where int_id=@int_id
	select 1
END
GO
/****** Object:  Table [dbo].[tbl_news]    Script Date: 04/24/2014 21:11:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_news](
	[int_news_id] [int] IDENTITY(1,1) NOT NULL,
	[str_news_title] [varchar](50) NOT NULL,
	[str_short_desc] [varchar](50) NOT NULL,
	[str_long_desc] [varchar](1000) NOT NULL,
	[date_date] [date] NOT NULL,
 CONSTRAINT [PK_tbl_news] PRIMARY KEY CLUSTERED 
(
	[int_news_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_news] ON
INSERT [dbo].[tbl_news] ([int_news_id], [str_news_title], [str_short_desc], [str_long_desc], [date_date]) VALUES (1, N'Earthquake', N'Efforts in Kutc', N'January 26th 2001 Gujarat will forever remember this day of natures ire. On this day the earth heaved andleft in its wake grieving families, fallen buildings and broken dreams. Towns & villages which a day before were full of life had been reduced to pile of rubble. One of the worst affected areas was Kutch where towns of Anjar and Bachao were completely wiped out. In Bhuj 90% of buildings were affected and almost all the villages in the regions were reduced to a pile of stones, rocks and rubble.

Thousands died Govt. put the estimates at 22,000 but independent sources claim that the toll is about 100,000. With whole families having vanished there is nobody to tell who is missing. Now people in these towns are realizing that they are missing some of the people that they used to see in there neighbourhood before the quake.

Thousands of crore of property was destroyed in a few cataclysmic minutes (approximately 23,000 crores about US $ 500,00,00,000)', CAST(0x8E250B00 AS Date))
INSERT [dbo].[tbl_news] ([int_news_id], [str_news_title], [str_short_desc], [str_long_desc], [date_date]) VALUES (2, N'Earthquake', N' Gujarat Earthquake  ', N'    The earthquake devastated Kutch. Practically all buildings and structures of Kutch were brought down.
    Ahmedabad, Rajkot, Jamnagar, Surendaranagar and Patan were heavily damaged.
    Nearly 19,000 people died. Kutch alone reported more than 17,000 deaths.
    1.66 lakh people were injured. Most were handicapped for the rest of their lives.
    The dead included 7,065 children (0-14 years) and 9,110 women.
    There were 348 orphans and 826 widows. ', CAST(0x8E250B00 AS Date))
INSERT [dbo].[tbl_news] ([int_news_id], [str_news_title], [str_short_desc], [str_long_desc], [date_date]) VALUES (3, N'floods', N'Maharashtra floods', N'On 26 July 2005, around 2:00 p.m. the Mumbai Metropolitan Region was struck with a heavy storm. The Indian Meteorological Department (IMD) station in Santacruz had recorded a record 944 mm. of rain for the 24 hours ended at 08:30 a.m. on 27 July. The Municipal Corporation of Greater Mumbai [MCGM] control room started receiving phone calls reporting the heavy rain and water logging in suburban areas.

Local train movement came to a halt by 2:30 p.m. due to the water logging on the tracks, due to which, vehicular traffic intensity on roads increased. Water logging and submergence of certain low lying pockets of the region such as Dharavi, Bandra-Kurla Complex, Chunabhatti, Chembur, Ghatkopar, Milan Subway and Sion either slowed down traffic, or in some areas, brought it to a grinding halt.', CAST(0x172C0B00 AS Date))
INSERT [dbo].[tbl_news] ([int_news_id], [str_news_title], [str_short_desc], [str_long_desc], [date_date]) VALUES (4, N'Flood', N'Flood in Surat 
', N'he city of Surat experiencing flooding on 23rd September as authorities released water from the catchment area of the Ukai Dam to ease the pressure building up behind in dam''s reservoir. Authorities released information that the inflow of water into the reservoir of the dam was in the region of 5 Lakh cusecs of water and since the level of water in the reservoir was rising dangerously to the level of 343.13 feet, they had no choice but to release water from the dam. ', CAST(0x9D370B00 AS Date))
SET IDENTITY_INSERT [dbo].[tbl_news] OFF
/****** Object:  Table [dbo].[tbl_user]    Script Date: 04/24/2014 21:11:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_user](
	[int_user_id] [int] IDENTITY(1,1) NOT NULL,
	[str_user_name] [varchar](50) NOT NULL,
	[str_address] [varchar](500) NOT NULL,
	[int_contact] [bigint] NOT NULL,
	[str_email] [varchar](50) NOT NULL,
	[str_password] [varchar](50) NOT NULL,
 CONSTRAINT [PK_tbl_user] PRIMARY KEY CLUSTERED 
(
	[int_user_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_user] ON
INSERT [dbo].[tbl_user] ([int_user_id], [str_user_name], [str_address], [int_contact], [str_email], [str_password]) VALUES (19, N'amit b', N'sangvi , pune , maharastra', 7405756747, N'amit@gmail.com', N'123')
INSERT [dbo].[tbl_user] ([int_user_id], [str_user_name], [str_address], [int_contact], [str_email], [str_password]) VALUES (20, N'amit c', N'sangvi , pune , maharastra', 7405756747, N'amit@gmail.com', N'Gz5BvnNw+z+RpyI2ygQ0pg==')
INSERT [dbo].[tbl_user] ([int_user_id], [str_user_name], [str_address], [int_contact], [str_email], [str_password]) VALUES (21, N'santosh', N'surat', 919883443344, N'santosh@gmail.com', N'')
INSERT [dbo].[tbl_user] ([int_user_id], [str_user_name], [str_address], [int_contact], [str_email], [str_password]) VALUES (22, N'tanvi', N'amroli', 8866568733, N'tanvi@gmail.com', N'yyeDFgiz/PwFDAdrkhjKsQ==')
INSERT [dbo].[tbl_user] ([int_user_id], [str_user_name], [str_address], [int_contact], [str_email], [str_password]) VALUES (23, N'mitesh', N'amroli', 7405756747, N'miteshtank21@gmail.com', N'Gz5BvnNw+z+RpyI2ygQ0pg==')
SET IDENTITY_INSERT [dbo].[tbl_user] OFF
/****** Object:  Table [dbo].[tbl_state]    Script Date: 04/24/2014 21:11:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_state](
	[int_state_id] [int] IDENTITY(1,1) NOT NULL,
	[str_state_name] [varchar](50) NOT NULL,
 CONSTRAINT [PK_tbl_state] PRIMARY KEY CLUSTERED 
(
	[int_state_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_state] ON
INSERT [dbo].[tbl_state] ([int_state_id], [str_state_name]) VALUES (35, N'Andra Pradesh')
INSERT [dbo].[tbl_state] ([int_state_id], [str_state_name]) VALUES (36, N'Assam')
INSERT [dbo].[tbl_state] ([int_state_id], [str_state_name]) VALUES (37, N'Bihar')
INSERT [dbo].[tbl_state] ([int_state_id], [str_state_name]) VALUES (38, N'Gujarat')
INSERT [dbo].[tbl_state] ([int_state_id], [str_state_name]) VALUES (39, N'Kerala')
INSERT [dbo].[tbl_state] ([int_state_id], [str_state_name]) VALUES (40, N'Maharashtra')
INSERT [dbo].[tbl_state] ([int_state_id], [str_state_name]) VALUES (41, N'Punjab')
INSERT [dbo].[tbl_state] ([int_state_id], [str_state_name]) VALUES (42, N'Uttaranchal')
INSERT [dbo].[tbl_state] ([int_state_id], [str_state_name]) VALUES (43, N'Delhi ')
SET IDENTITY_INSERT [dbo].[tbl_state] OFF
/****** Object:  Table [dbo].[tbl_rescue_place_victim]    Script Date: 04/24/2014 21:11:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_rescue_place_victim](
	[int_victim_id] [int] IDENTITY(1,1) NOT NULL,
	[str_victim_name] [varchar](50) NOT NULL,
	[int_victim_age] [int] NOT NULL,
	[str_gender] [varchar](1) NOT NULL,
	[str_address] [varchar](500) NOT NULL,
	[str_victim_image_path] [varchar](50) NOT NULL,
 CONSTRAINT [PK_tbl_rescue_place_victim] PRIMARY KEY CLUSTERED 
(
	[int_victim_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_rescue_place_victim] ON
INSERT [dbo].[tbl_rescue_place_victim] ([int_victim_id], [str_victim_name], [int_victim_age], [str_gender], [str_address], [str_victim_image_path]) VALUES (10, N'sonal', 23, N'F', N'56 , sayan road surat', N'images.jpg')
INSERT [dbo].[tbl_rescue_place_victim] ([int_victim_id], [str_victim_name], [int_victim_age], [str_gender], [str_address], [str_victim_image_path]) VALUES (11, N'komal', 20, N'F', N'tukaram soc . ahmedabad', N'sd.jpg')
INSERT [dbo].[tbl_rescue_place_victim] ([int_victim_id], [str_victim_name], [int_victim_age], [str_gender], [str_address], [str_victim_image_path]) VALUES (12, N'ranjit bhai', 45, N'M', N'bapunagar , ahmedabad', N'2718_Patel_220x500.jpg')
INSERT [dbo].[tbl_rescue_place_victim] ([int_victim_id], [str_victim_name], [int_victim_age], [str_gender], [str_address], [str_victim_image_path]) VALUES (13, N'divyesh', 15, N'M', N'manisha soc. amroli ', N'449_jex_1384723_de17-1.jpg')
SET IDENTITY_INSERT [dbo].[tbl_rescue_place_victim] OFF
/****** Object:  Table [dbo].[tbl_login]    Script Date: 04/24/2014 21:11:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_login](
	[int_id] [int] IDENTITY(1,1) NOT NULL,
	[str_user_name] [varchar](50) NOT NULL,
	[str_password] [varchar](50) NOT NULL,
	[str_img] [varchar](50) NOT NULL,
 CONSTRAINT [PK_tbl_login] PRIMARY KEY CLUSTERED 
(
	[int_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_login] ON
INSERT [dbo].[tbl_login] ([int_id], [str_user_name], [str_password], [str_img]) VALUES (1, N'mitesh', N'123', N'20140121_184436.jpg')
SET IDENTITY_INSERT [dbo].[tbl_login] OFF
/****** Object:  StoredProcedure [dbo].[select_tbl_voluntar_team]    Script Date: 04/24/2014 21:11:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[select_tbl_voluntar_team]
	(
@cnd varchar(max)


)

AS
BEGIN
declare @sql as varchar(max)
set @sql = ' select * from view_voluntar_team_member  '
if ( @cnd <> '')
	set @sql =@sql+' '+@cnd
	
	exec(@sql)
	

END
GO
/****** Object:  StoredProcedure [dbo].[select_tbl_voluntar_login]    Script Date: 04/24/2014 21:11:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[select_tbl_voluntar_login] 
	(
@cnd varchar(max)


)

AS
BEGIN
declare @sql as varchar(max)
set @sql = ' select * from tbl_voluntar_login  '
if ( @cnd <> '')
	set @sql =@sql+' '+@cnd
	
	exec(@sql)
	

END
GO
/****** Object:  StoredProcedure [dbo].[select_tbl_voluntar]    Script Date: 04/24/2014 21:11:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[select_tbl_voluntar]
	(
@cnd varchar(max)


)

AS
BEGIN
declare @sql as varchar(max)
set @sql = ' select * from view_voluntar_voluntar_team  '
if ( @cnd <> '')
	set @sql =@sql+' '+@cnd
	
	exec(@sql)
	

END
GO
/****** Object:  StoredProcedure [dbo].[select_tbl_user]    Script Date: 04/24/2014 21:11:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[select_tbl_user]
	(
@cnd varchar(max)


)

AS
BEGIN
declare @sql as varchar(max)
set @sql = ' select * from tbl_user  '
if ( @cnd <> '')
	set @sql =@sql+' '+@cnd
	
	exec(@sql)
	

END
GO
/****** Object:  StoredProcedure [dbo].[select_tbl_state]    Script Date: 04/24/2014 21:11:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[select_tbl_state]
		(
@cnd varchar(max)


)

AS
BEGIN
declare @sql as varchar(max)
set @sql = ' select * from tbl_state  '
if ( @cnd <> '')
	set @sql =@sql+' '+@cnd
	
	exec(@sql)
	


END
GO
/****** Object:  StoredProcedure [dbo].[select_tbl_rescue_place_victim]    Script Date: 04/24/2014 21:11:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE  [dbo].[select_tbl_rescue_place_victim]
	(
@cnd varchar(max)


)

AS
BEGIN
declare @sql as varchar(max)
set @sql = ' select * from tbl_rescue_place_victim  '
if ( @cnd <> '')
	set @sql =@sql+' '+@cnd
	
	exec(@sql)
	

END
GO
/****** Object:  StoredProcedure [dbo].[select_tbl_rescue_person]    Script Date: 04/24/2014 21:11:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[select_tbl_rescue_person]
	(
@cnd varchar(max)


)

AS
BEGIN
declare @sql as varchar(max)
set @sql = ' select * from view_rescue_person_voluntar_team_lost  '
if ( @cnd <> '')
	set @sql =@sql+' '+@cnd
	
	exec(@sql)
	

END
GO
/****** Object:  StoredProcedure [dbo].[select_tbl_rescue]    Script Date: 04/24/2014 21:11:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[select_tbl_rescue]
	(
@cnd varchar(max)


)

AS
BEGIN
declare @sql as varchar(max)
set @sql = ' select * from view_rescue_voluntar_team '
if ( @cnd <> '')
	set @sql =@sql+' '+@cnd
	
	exec(@sql)
	

END
GO
/****** Object:  StoredProcedure [dbo].[select_tbl_news]    Script Date: 04/24/2014 21:11:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[select_tbl_news]
(
@cnd varchar(max)


)

AS
BEGIN
declare @sql as varchar(max)
set @sql = ' select * from tbl_news '
if ( @cnd <> '')
	set @sql =@sql+' '+@cnd
	
	exec(@sql)
	

END
GO
/****** Object:  StoredProcedure [dbo].[select_tbl_member]    Script Date: 04/24/2014 21:11:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[select_tbl_member] 
	(
@cnd varchar(max)


)

AS
BEGIN
declare @sql as varchar(max)
set @sql = ' select * from view_member_d_d  '
if ( @cnd <> '')
	set @sql =@sql+' '+@cnd
	
	exec(@sql)
	

END
GO
/****** Object:  StoredProcedure [dbo].[select_tbl_lost]    Script Date: 04/24/2014 21:11:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[select_tbl_lost]
	(
@cnd varchar(max)


)

AS
BEGIN
declare @sql as varchar(max)
set @sql = ' select * from view_lost_user'
if ( @cnd <> '')
	set @sql =@sql+' '+@cnd
	
	exec(@sql)
	

END
GO
/****** Object:  StoredProcedure [dbo].[select_tbl_login]    Script Date: 04/24/2014 21:11:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[select_tbl_login] 
	(
@cnd varchar(max)


)

AS
BEGIN
declare @sql as varchar(max)
set @sql = ' select * from tbl_login  '
if ( @cnd <> '')
	set @sql =@sql+' '+@cnd
	
	exec(@sql)
	

END
GO
/****** Object:  StoredProcedure [dbo].[select_tbl_inquiry]    Script Date: 04/24/2014 21:11:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE  [dbo].[select_tbl_inquiry]
(
@cnd varchar(max)


)

AS
BEGIN
declare @sql as varchar(max)
set @sql = ' select * from view_inq '
if ( @cnd <> '')
	set @sql =@sql+' '+@cnd
	
	exec(@sql)
	

END
GO
/****** Object:  StoredProcedure [dbo].[select_tbl_district]    Script Date: 04/24/2014 21:11:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[select_tbl_district]
(
@cnd varchar(max)


)

AS
BEGIN
declare @sql as varchar(max)
set @sql = ' select * from view_district_state '
if ( @cnd <> '')
	set @sql =@sql+' '+@cnd
	
	exec(@sql)
	

END
GO
/****** Object:  StoredProcedure [dbo].[select_tbl_disaster_type]    Script Date: 04/24/2014 21:11:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[select_tbl_disaster_type]
	(
@cnd varchar(max)


)

AS
BEGIN
declare @sql as varchar(max)
set @sql = ' select * from tbl_disaster_type '
if ( @cnd <> '')
	set @sql =@sql+' '+@cnd
	
	exec(@sql)
	

END
GO
/****** Object:  StoredProcedure [dbo].[select_tbl_disaster_master]    Script Date: 04/24/2014 21:11:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[select_tbl_disaster_master]
(
@cnd varchar(max)


)

AS
BEGIN
declare @sql as varchar(max)
set @sql = ' select * from view_disaster_master_type '
if ( @cnd <> '')
	set @sql =@sql+' '+@cnd
	
	exec(@sql)
	

END
GO
/****** Object:  StoredProcedure [dbo].[select_tbl_designation]    Script Date: 04/24/2014 21:11:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE  [dbo].[select_tbl_designation]
	
(
@cnd varchar(max)


)

AS
BEGIN
declare @sql as varchar(max)
set @sql = ' select * from tbl_designation '
if ( @cnd <> '')
	set @sql =@sql+' '+@cnd
	
	exec(@sql)
	

END
GO
/****** Object:  StoredProcedure [dbo].[select_tbl_area]    Script Date: 04/24/2014 21:11:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[select_tbl_area]
(
@cnd varchar(max)


)

AS
BEGIN
declare @sql as varchar(max)
set @sql = ' select * from view_area_district '
if ( @cnd <> '')
	set @sql =@sql+' '+@cnd
	
	exec(@sql)
	

END
GO
/****** Object:  Table [dbo].[tbl_designation]    Script Date: 04/24/2014 21:11:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_designation](
	[int_designation_id] [int] IDENTITY(1,1) NOT NULL,
	[str_designation_name] [varchar](50) NOT NULL,
 CONSTRAINT [PK_tbl_designation] PRIMARY KEY CLUSTERED 
(
	[int_designation_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_designation] ON
INSERT [dbo].[tbl_designation] ([int_designation_id], [str_designation_name]) VALUES (2, N'Manager')
INSERT [dbo].[tbl_designation] ([int_designation_id], [str_designation_name]) VALUES (3, N'Senior Manager')
INSERT [dbo].[tbl_designation] ([int_designation_id], [str_designation_name]) VALUES (4, N'Supervisor')
INSERT [dbo].[tbl_designation] ([int_designation_id], [str_designation_name]) VALUES (5, N'Junior Assistant')
INSERT [dbo].[tbl_designation] ([int_designation_id], [str_designation_name]) VALUES (6, N'Coordinator')
INSERT [dbo].[tbl_designation] ([int_designation_id], [str_designation_name]) VALUES (7, N'Senior Assistant')
SET IDENTITY_INSERT [dbo].[tbl_designation] OFF
/****** Object:  Table [dbo].[tbl_disaster_type]    Script Date: 04/24/2014 21:11:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_disaster_type](
	[int_disaster_type_id] [int] IDENTITY(1,1) NOT NULL,
	[str_disaster_type_name] [varchar](50) NOT NULL,
 CONSTRAINT [PK_tbl_disaster_type] PRIMARY KEY CLUSTERED 
(
	[int_disaster_type_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_disaster_type] ON
INSERT [dbo].[tbl_disaster_type] ([int_disaster_type_id], [str_disaster_type_name]) VALUES (15, N'Tsunami')
INSERT [dbo].[tbl_disaster_type] ([int_disaster_type_id], [str_disaster_type_name]) VALUES (16, N'Earthquake')
INSERT [dbo].[tbl_disaster_type] ([int_disaster_type_id], [str_disaster_type_name]) VALUES (17, N'Flood')
INSERT [dbo].[tbl_disaster_type] ([int_disaster_type_id], [str_disaster_type_name]) VALUES (18, N'Drought')
INSERT [dbo].[tbl_disaster_type] ([int_disaster_type_id], [str_disaster_type_name]) VALUES (19, N'Famine')
INSERT [dbo].[tbl_disaster_type] ([int_disaster_type_id], [str_disaster_type_name]) VALUES (20, N'Firestorm')
INSERT [dbo].[tbl_disaster_type] ([int_disaster_type_id], [str_disaster_type_name]) VALUES (21, N'Storm')
INSERT [dbo].[tbl_disaster_type] ([int_disaster_type_id], [str_disaster_type_name]) VALUES (22, N'Volcanic Eruption')
INSERT [dbo].[tbl_disaster_type] ([int_disaster_type_id], [str_disaster_type_name]) VALUES (23, N'Tropical cyclone')
INSERT [dbo].[tbl_disaster_type] ([int_disaster_type_id], [str_disaster_type_name]) VALUES (24, N'Pandemic')
INSERT [dbo].[tbl_disaster_type] ([int_disaster_type_id], [str_disaster_type_name]) VALUES (25, N'Meteor impact')
SET IDENTITY_INSERT [dbo].[tbl_disaster_type] OFF
/****** Object:  StoredProcedure [dbo].[delete_tbl_voluntar_login]    Script Date: 04/24/2014 21:11:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[delete_tbl_voluntar_login]
	(
	@int_id integer
	)
	
	AS
BEGIN
	delete from tbl_voluntar_login where int_id= @int_id
	select 1
END
GO
/****** Object:  StoredProcedure [dbo].[delete_tbl_user]    Script Date: 04/24/2014 21:11:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[delete_tbl_user]
(
@int_user_id integer
)

AS

BEGIN
	delete from tbl_user where @int_user_id= @int_user_id
	select 1
END
GO
/****** Object:  StoredProcedure [dbo].[delete_tbl_state]    Script Date: 04/24/2014 21:11:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[delete_tbl_state]
(
@int_state_id integer

)

AS
BEGIN
	delete from tbl_state where int_state_id= @int_state_id
	select 1
END
GO
/****** Object:  StoredProcedure [dbo].[delete_tbl_rescue_place_victim]    Script Date: 04/24/2014 21:11:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[delete_tbl_rescue_place_victim]	
(
@int_victim_id integer
)
AS
BEGIN
	delete from tbl_rescue_place_victim	 where int_victim_id= @int_victim_id
	select 1
END
GO
/****** Object:  StoredProcedure [dbo].[delete_tbl_news]    Script Date: 04/24/2014 21:11:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[delete_tbl_news]
(
@int_news_id integer
)
	AS
BEGIN
delete from tbl_news where int_news_id= @int_news_id
	select 1	
END
GO
/****** Object:  StoredProcedure [dbo].[delete_tbl_designation]    Script Date: 04/24/2014 21:11:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[delete_tbl_designation]
	(
	@int_designation_id integer
	)
	
	AS
BEGIN
	delete from tbl_designation where int_designation_id= @int_designation_id
	select 1
END
GO
/****** Object:  StoredProcedure [dbo].[delete_tbl_disaster_type]    Script Date: 04/24/2014 21:11:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE  [dbo].[delete_tbl_disaster_type]
	
	(
	@int_disaster_type_id integer
	)
	AS
BEGIN
	delete from tbl_disaster_type where int_disaster_type_id= @int_disaster_type_id
	select 1
END
GO
/****** Object:  StoredProcedure [dbo].[delete_tbl_login]    Script Date: 04/24/2014 21:11:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[delete_tbl_login]
	(
	@int_id integer
	)
	
	AS
BEGIN
	delete from tbl_login where int_id= @int_id
	select 1
END
GO
/****** Object:  StoredProcedure [dbo].[insert_tbl_user]    Script Date: 04/24/2014 21:11:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[insert_tbl_user]
(
@str_user_name varchar(50),
@str_address varchar(500),
@int_contact bigint,
@str_email varchar(50),
@str_password varchar(50)
)
	
AS
BEGIN
	insert into tbl_user values (@str_user_name,@str_address,@int_contact,@str_email,@str_password)
	
			select @@IDENTITY
END
GO
/****** Object:  StoredProcedure [dbo].[insert_tbl_state]    Script Date: 04/24/2014 21:11:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[insert_tbl_state] 
(
	@str_state_name varchar(50)

)	
AS
BEGIN
	declare @cnt integer
	select @cnt=COUNT(*) from tbl_state where str_state_name=@str_state_name
	if(@cnt=0)
		begin	
			insert into tbl_state values (@str_state_name)
			select @@IDENTITY
		end
	else
		begin
			select -1
		end
END
GO
/****** Object:  StoredProcedure [dbo].[insert_tbl_rescue_place_victim]    Script Date: 04/24/2014 21:11:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE  [dbo].[insert_tbl_rescue_place_victim]
(
@str_victim_name varchar(50),
@int_victim_age integer,
@str_gender varchar(1),
@str_address varchar(500),
@str_victim_image_path varchar(50)
)	
	
AS
BEGIN
	insert into tbl_rescue_place_victim values (@str_victim_name,@int_victim_age,@str_gender,@str_address,@str_victim_image_path)
	
	
			select @@IDENTITY
END
GO
/****** Object:  StoredProcedure [dbo].[insert_tbl_voluntar_login]    Script Date: 04/24/2014 21:11:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[insert_tbl_voluntar_login]
	(
	@str_voluntar_name varchar(50),
@str_password varchar(50)
)	
AS
BEGIN
	declare @cnt integer
	select @cnt=COUNT(*) from tbl_voluntar_login where str_voluntar_name=@str_voluntar_name
	if(@cnt=0)
		begin	
			insert into tbl_state values (@str_voluntar_name)
			select @@IDENTITY
		end
	else
		begin
			select -1
		end
END
GO
/****** Object:  StoredProcedure [dbo].[insert_tbl_news]    Script Date: 04/24/2014 21:11:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[insert_tbl_news]
(

@str_news_title varchar(50),
@str_short_desc varchar(50),
@str_long_desc varchar(1000),
@date_date date
)
AS
BEGIN
insert into tbl_news values (@str_news_title,@str_short_desc,@str_long_desc,@date_date)
			select @@IDENTITY
END
GO
/****** Object:  StoredProcedure [dbo].[insert_tbl_designation]    Script Date: 04/24/2014 21:11:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[insert_tbl_designation]
(
@str_designation_name varchar(50)
)

AS
BEGIN
	declare @cnt integer
	select @cnt=COUNT(*) from tbl_designation where str_designation_name = @str_designation_name
	if(@cnt=0)
		begin	
			insert into tbl_designation values (@str_designation_name)
			select @@IDENTITY
		end
	else
		begin
			select -1
		end
END
GO
/****** Object:  StoredProcedure [dbo].[insert_tbl_disaster_type]    Script Date: 04/24/2014 21:11:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[insert_tbl_disaster_type]
(
	@str_disaster_type_name varchar(50)
)
AS
BEGIN
declare @cnt integer
	select @cnt=COUNT(*) from tbl_disaster_type where str_disaster_type_name=@str_disaster_type_name
	if(@cnt=0)
		begin	
			insert into tbl_disaster_type values (@str_disaster_type_name)
			select @@IDENTITY
		end
	else
		begin
			select -1
		end	
END
GO
/****** Object:  StoredProcedure [dbo].[insert_tbl_login]    Script Date: 04/24/2014 21:11:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[insert_tbl_login] 
(
	@str_user_name varchar(50),
@str_password varchar(50)
)	
AS
BEGIN
	declare @cnt integer
	select @cnt=COUNT(*) from tbl_login where str_user_name=@str_user_name
	if(@cnt=0)
		begin	
			insert into tbl_state values (@str_user_name)
			select @@IDENTITY
		end
	else
		begin
			select -1
		end
END
GO
/****** Object:  Table [dbo].[tbl_disaster_master]    Script Date: 04/24/2014 21:11:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_disaster_master](
	[int_disaster_id] [int] IDENTITY(1,1) NOT NULL,
	[str_disaster_name] [varchar](50) NOT NULL,
	[date_active_date] [date] NOT NULL,
	[date_end_date] [date] NOT NULL,
	[bit_status] [bit] NOT NULL,
	[str_place] [varchar](50) NOT NULL,
	[str_longitude] [varchar](50) NOT NULL,
	[str_latitude] [varchar](50) NOT NULL,
	[int_disaster_type_id] [int] NOT NULL,
	[str_img] [varchar](50) NULL,
 CONSTRAINT [PK_tbl_disaster_master] PRIMARY KEY CLUSTERED 
(
	[int_disaster_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_disaster_master] ON
INSERT [dbo].[tbl_disaster_master] ([int_disaster_id], [str_disaster_name], [date_active_date], [date_end_date], [bit_status], [str_place], [str_longitude], [str_latitude], [int_disaster_type_id], [str_img]) VALUES (29, N'Tsunami 2004', CAST(0x242B0B00 AS Date), CAST(0xA22B0B00 AS Date), 1, N'Tamil Nadu', N'78.656894200000010000', N'11.127122500000000000', 15, N'tsunami.jpg')
INSERT [dbo].[tbl_disaster_master] ([int_disaster_id], [str_disaster_name], [date_active_date], [date_end_date], [bit_status], [str_place], [str_longitude], [str_latitude], [int_disaster_type_id], [str_img]) VALUES (30, N'Flood 2006', CAST(0x722D0B00 AS Date), CAST(0x772D0B00 AS Date), 1, N'surat', N'72.819443999999980000', N'21.195000000000000000', 17, N'flood.jpg')
INSERT [dbo].[tbl_disaster_master] ([int_disaster_id], [str_disaster_name], [date_active_date], [date_end_date], [bit_status], [str_place], [str_longitude], [str_latitude], [int_disaster_type_id], [str_img]) VALUES (31, N'Earthquake 2001', CAST(0x8E250B00 AS Date), CAST(0x8F250B00 AS Date), 1, N'bhuj', N'69.662559999999980000', N'23.251671000000000000', 16, N'Bhuj-Earthquake.jpg')
INSERT [dbo].[tbl_disaster_master] ([int_disaster_id], [str_disaster_name], [date_active_date], [date_end_date], [bit_status], [str_place], [str_longitude], [str_latitude], [int_disaster_type_id], [str_img]) VALUES (33, N'Drought 2009', CAST(0x08320B00 AS Date), CAST(0x91320B00 AS Date), 1, N'Andhra Pradesh', N'78.298774699999970000', N'17.358527700000000000', 18, N'Drought.jpg')
INSERT [dbo].[tbl_disaster_master] ([int_disaster_id], [str_disaster_name], [date_active_date], [date_end_date], [bit_status], [str_place], [str_longitude], [str_latitude], [int_disaster_type_id], [str_img]) VALUES (34, N'Earthquake 2012', CAST(0x66350B00 AS Date), CAST(0x66350B00 AS Date), 1, N' New Delhi', N'77.224960000000010000', N'28.635308000000000000', 16, N'21.jpg')
INSERT [dbo].[tbl_disaster_master] ([int_disaster_id], [str_disaster_name], [date_active_date], [date_end_date], [bit_status], [str_place], [str_longitude], [str_latitude], [int_disaster_type_id], [str_img]) VALUES (35, N'Tsunami 2006', CAST(0xF62D0B00 AS Date), CAST(0xF82D0B00 AS Date), 1, N'bhuj', N'69.662559999999980000', N'23.251671000000000000', 15, N'images.jpg')
INSERT [dbo].[tbl_disaster_master] ([int_disaster_id], [str_disaster_name], [date_active_date], [date_end_date], [bit_status], [str_place], [str_longitude], [str_latitude], [int_disaster_type_id], [str_img]) VALUES (36, N'Flood 2013', CAST(0x3A370B00 AS Date), CAST(0x3B370B00 AS Date), 1, N'Uttarakhand', N'77.901016499999970000', N'29.865907400000000000', 17, N'index.jpg')
INSERT [dbo].[tbl_disaster_master] ([int_disaster_id], [str_disaster_name], [date_active_date], [date_end_date], [bit_status], [str_place], [str_longitude], [str_latitude], [int_disaster_type_id], [str_img]) VALUES (37, N'Drought 2013', CAST(0xA3360B00 AS Date), CAST(0xDB360B00 AS Date), 1, N'pune', N'73.856743699999920000', N'18.520430300000000000', 18, N'g.jpg')
INSERT [dbo].[tbl_disaster_master] ([int_disaster_id], [str_disaster_name], [date_active_date], [date_end_date], [bit_status], [str_place], [str_longitude], [str_latitude], [int_disaster_type_id], [str_img]) VALUES (38, N'Earthquake 2013', CAST(0x84370B00 AS Date), CAST(0x85370B00 AS Date), 1, N'kasmir', N'76.825965199999930000', N'34.149087500000000000', 16, N'earthquake_350_040913093930.jpg')
SET IDENTITY_INSERT [dbo].[tbl_disaster_master] OFF
/****** Object:  Table [dbo].[tbl_lost]    Script Date: 04/24/2014 21:11:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_lost](
	[int_lost_id] [int] IDENTITY(1,1) NOT NULL,
	[int_user_id] [int] NOT NULL,
	[str_name] [varchar](50) NOT NULL,
	[date_date] [date] NOT NULL,
	[str_time] [varchar](50) NOT NULL,
	[str_where_lost] [varchar](50) NOT NULL,
	[bit_status] [bit] NULL,
	[date_find_date] [date] NULL,
	[str_find_time] [varchar](50) NULL,
	[int_age] [int] NOT NULL,
	[str_img_path] [varchar](50) NOT NULL,
	[str_gender] [varchar](1) NOT NULL,
 CONSTRAINT [PK_tbl_lost] PRIMARY KEY CLUSTERED 
(
	[int_lost_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_lost] ON
INSERT [dbo].[tbl_lost] ([int_lost_id], [int_user_id], [str_name], [date_date], [str_time], [str_where_lost], [bit_status], [date_find_date], [str_find_time], [int_age], [str_img_path], [str_gender]) VALUES (50, 19, N'sunita', CAST(0xB6380B00 AS Date), N'8 pm', N'bhuj', 1, CAST(0x27380B00 AS Date), N'8 am', 27, N'Indian_girl_missing_in_London_295x200.jpg', N'F')
INSERT [dbo].[tbl_lost] ([int_lost_id], [int_user_id], [str_name], [date_date], [str_time], [str_where_lost], [bit_status], [date_find_date], [str_find_time], [int_age], [str_img_path], [str_gender]) VALUES (51, 19, N'soniya trivedi', CAST(0x84350B00 AS Date), N'5:20 pm', N'surat', NULL, NULL, NULL, 48, N'tt.jpg', N'F')
INSERT [dbo].[tbl_lost] ([int_lost_id], [int_user_id], [str_name], [date_date], [str_time], [str_where_lost], [bit_status], [date_find_date], [str_find_time], [int_age], [str_img_path], [str_gender]) VALUES (52, 19, N'marrisa', CAST(0x72380B00 AS Date), N'6 am', N'london', 1, CAST(0x76380B00 AS Date), N'5 pm', 25, N'marrisa.jpg', N'F')
INSERT [dbo].[tbl_lost] ([int_lost_id], [int_user_id], [str_name], [date_date], [str_time], [str_where_lost], [bit_status], [date_find_date], [str_find_time], [int_age], [str_img_path], [str_gender]) VALUES (53, 19, N'faran', CAST(0x6B380B00 AS Date), N'2:30 pm', N'ahmedabad', NULL, NULL, NULL, 26, N'person-of-interest-20110216073051218-000.jpg', N'M')
INSERT [dbo].[tbl_lost] ([int_lost_id], [int_user_id], [str_name], [date_date], [str_time], [str_where_lost], [bit_status], [date_find_date], [str_find_time], [int_age], [str_img_path], [str_gender]) VALUES (54, 19, N'kisan', CAST(0x90320B00 AS Date), N'4 pm', N'sachin', NULL, NULL, NULL, 10, N'canz176.jpg', N'M')
INSERT [dbo].[tbl_lost] ([int_lost_id], [int_user_id], [str_name], [date_date], [str_time], [str_where_lost], [bit_status], [date_find_date], [str_find_time], [int_age], [str_img_path], [str_gender]) VALUES (55, 19, N'hina', CAST(0x87310B00 AS Date), N'5 :30 pm', N'kach', NULL, NULL, NULL, 18, N'smart-missing-persons-660.jpg', N'F')
SET IDENTITY_INSERT [dbo].[tbl_lost] OFF
/****** Object:  Table [dbo].[tbl_district]    Script Date: 04/24/2014 21:11:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_district](
	[int_district_id] [int] IDENTITY(1,1) NOT NULL,
	[str_district_name] [varchar](50) NOT NULL,
	[int_state_id] [int] NOT NULL,
 CONSTRAINT [PK_tbl_district] PRIMARY KEY CLUSTERED 
(
	[int_district_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_district] ON
INSERT [dbo].[tbl_district] ([int_district_id], [str_district_name], [int_state_id]) VALUES (6, N'Adilabad', 35)
INSERT [dbo].[tbl_district] ([int_district_id], [str_district_name], [int_state_id]) VALUES (7, N'Chittoor', 35)
INSERT [dbo].[tbl_district] ([int_district_id], [str_district_name], [int_state_id]) VALUES (8, N' Guntur', 35)
INSERT [dbo].[tbl_district] ([int_district_id], [str_district_name], [int_state_id]) VALUES (9, N' Medak', 35)
INSERT [dbo].[tbl_district] ([int_district_id], [str_district_name], [int_state_id]) VALUES (10, N'Nagaon', 36)
INSERT [dbo].[tbl_district] ([int_district_id], [str_district_name], [int_state_id]) VALUES (11, N'Sonitpur', 36)
INSERT [dbo].[tbl_district] ([int_district_id], [str_district_name], [int_state_id]) VALUES (12, N'Araria', 37)
INSERT [dbo].[tbl_district] ([int_district_id], [str_district_name], [int_state_id]) VALUES (13, N'Begusarai', 37)
INSERT [dbo].[tbl_district] ([int_district_id], [str_district_name], [int_state_id]) VALUES (14, N' Ahmedabad', 38)
INSERT [dbo].[tbl_district] ([int_district_id], [str_district_name], [int_state_id]) VALUES (15, N' Surat', 38)
INSERT [dbo].[tbl_district] ([int_district_id], [str_district_name], [int_state_id]) VALUES (16, N' Vadodara', 38)
SET IDENTITY_INSERT [dbo].[tbl_district] OFF
/****** Object:  StoredProcedure [dbo].[update_tbl_designation]    Script Date: 04/24/2014 21:11:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[update_tbl_designation]
(
@int_designation_id integer,
@str_designation_name varchar(50)
)

AS
BEGIN
	update tbl_designation set str_designation_name=@str_designation_name where int_designation_id=@int_designation_id
	select 1
END
GO
/****** Object:  StoredProcedure [dbo].[update_tbl_login]    Script Date: 04/24/2014 21:11:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[update_tbl_login] 
(
	@int_id integer,
	@str_user_name varchar(50),
	@str_password varchar(50)
	
	
)
	
AS
BEGIN
	update tbl_login set str_user_name=@str_user_name,str_password=@str_password where int_id=@int_id
	select 1
END
GO
/****** Object:  StoredProcedure [dbo].[update_tbl_news]    Script Date: 04/24/2014 21:11:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[update_tbl_news]
(
@int_news_id integer,
@str_news_title varchar(50),
@str_short_desc varchar(50),
@str_long_desc varchar(1000),
@date_date date
	
	
)
AS
BEGIN
	update tbl_news set str_news_title=@str_news_title,str_short_desc=@str_short_desc,str_long_desc=@str_long_desc,date_date=@date_date where int_news_id=@int_news_id
	select 1	
END
GO
/****** Object:  StoredProcedure [dbo].[update_tbl_disaster_type]    Script Date: 04/24/2014 21:11:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[update_tbl_disaster_type]
(
@int_disaster_type_id integer,
@str_disaster_type_name varchar(50)

)

AS
BEGIN
update tbl_disaster_type set str_disaster_type_name=@str_disaster_type_name where int_disaster_type_id=@int_disaster_type_id
	select 1
END
GO
/****** Object:  StoredProcedure [dbo].[update_tbl_user_change]    Script Date: 04/24/2014 21:11:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[update_tbl_user_change]

(
@int_user_id integer,
@str_password varchar(50)


)

AS
BEGIN
update tbl_user set str_password=@str_password where int_user_id=@int_user_id
	select 1


END
GO
/****** Object:  StoredProcedure [dbo].[update_tbl_user]    Script Date: 04/24/2014 21:11:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[update_tbl_user]

(
@int_user_id integer,
@str_user_name varchar(50),
@str_address varchar(500),
@int_contact bigint,
@str_email varchar(50)


)

AS
BEGIN
update tbl_user set str_user_name=@str_user_name,str_address=@str_address,int_contact=@int_contact,str_email=@str_email where int_user_id=@int_user_id
	select 1


END
GO
/****** Object:  StoredProcedure [dbo].[update_tbl_state]    Script Date: 04/24/2014 21:11:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[update_tbl_state]
(
@int_state_id integer,
@str_state_name varchar(50)
	
)	
AS
BEGIN
	update tbl_state set str_state_name=@str_state_name where int_state_id=@int_state_id
	select 1
END
GO
/****** Object:  StoredProcedure [dbo].[update_tbl_rescue_place_victim]    Script Date: 04/24/2014 21:11:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[update_tbl_rescue_place_victim]
(
@int_victim_id integer,
@str_victim_name varchar(50),
@int_victim_age integer,
@str_gender varchar(1),
@str_address varchar(500),
@str_victim_image_path varchar(50)

)

AS
BEGIN

update tbl_rescue_place_victim set str_victim_name=@str_victim_name,int_victim_age=@int_victim_age,str_gender=@str_gender,str_address=@str_address,str_victim_image_path=@str_victim_image_path where int_victim_id=@int_victim_id
	select 1
END
GO
/****** Object:  View [dbo].[view_lost_user]    Script Date: 04/24/2014 21:11:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[view_lost_user]
AS
SELECT     dbo.tbl_user.str_user_name, dbo.tbl_lost.*
FROM         dbo.tbl_lost INNER JOIN
                      dbo.tbl_user ON dbo.tbl_lost.int_user_id = dbo.tbl_user.int_user_id
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "tbl_lost"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 125
               Right = 201
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "tbl_user"
            Begin Extent = 
               Top = 10
               Left = 488
               Bottom = 129
               Right = 649
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'view_lost_user'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'view_lost_user'
GO
/****** Object:  View [dbo].[view_district_state]    Script Date: 04/24/2014 21:11:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[view_district_state]
AS
SELECT     dbo.tbl_district.*, dbo.tbl_state.str_state_name
FROM         dbo.tbl_district INNER JOIN
                      dbo.tbl_state ON dbo.tbl_district.int_state_id = dbo.tbl_state.int_state_id
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "tbl_district"
            Begin Extent = 
               Top = 29
               Left = 376
               Bottom = 133
               Right = 548
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "tbl_state"
            Begin Extent = 
               Top = 18
               Left = 70
               Bottom = 107
               Right = 235
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'view_district_state'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'view_district_state'
GO
/****** Object:  View [dbo].[view_disaster_master_type]    Script Date: 04/24/2014 21:11:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[view_disaster_master_type]
AS
SELECT     dbo.tbl_disaster_master.*, dbo.tbl_disaster_type.str_disaster_type_name
FROM         dbo.tbl_disaster_master INNER JOIN
                      dbo.tbl_disaster_type ON dbo.tbl_disaster_master.int_disaster_type_id = dbo.tbl_disaster_type.int_disaster_type_id
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "tbl_disaster_master"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 125
               Right = 225
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "tbl_disaster_type"
            Begin Extent = 
               Top = 36
               Left = 364
               Bottom = 125
               Right = 570
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'view_disaster_master_type'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'view_disaster_master_type'
GO
/****** Object:  Table [dbo].[tbl_member]    Script Date: 04/24/2014 21:11:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_member](
	[int_member_id] [int] IDENTITY(1,1) NOT NULL,
	[int_disaster_id] [int] NOT NULL,
	[str_member_name] [varchar](50) NOT NULL,
	[str_current_working] [varchar](50) NOT NULL,
	[str_address] [varchar](500) NOT NULL,
	[int_contact] [bigint] NOT NULL,
	[str_email] [varchar](50) NOT NULL,
	[str_password] [varchar](50) NOT NULL,
	[int_designation_id] [int] NOT NULL,
 CONSTRAINT [PK_tbl_member] PRIMARY KEY CLUSTERED 
(
	[int_member_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_member] ON
INSERT [dbo].[tbl_member] ([int_member_id], [int_disaster_id], [str_member_name], [str_current_working], [str_address], [int_contact], [str_email], [str_password], [int_designation_id]) VALUES (10, 31, N'nikhil', N'ahmedabad', N'98 , sagarkunj near sagar dery , bapunagar', 9898756926, N'nikhil@gmail.com', N'ZZEScJOH5q/dvm55T1/nYQ==', 3)
INSERT [dbo].[tbl_member] ([int_member_id], [int_disaster_id], [str_member_name], [str_current_working], [str_address], [int_contact], [str_email], [str_password], [int_designation_id]) VALUES (11, 30, N'ajay', N'surat', N'26 , adajan near bhulkabhavan school , surat ', 7408569746, N'ajay@gmail.com', N'FqPU9RuWRcS35xZ40xa9kA==', 2)
INSERT [dbo].[tbl_member] ([int_member_id], [int_disaster_id], [str_member_name], [str_current_working], [str_address], [int_contact], [str_email], [str_password], [int_designation_id]) VALUES (12, 33, N'haresh', N'surat', N'52 , nilkanth soc, amroli', 8866568733, N'haresh@gmail.com', N'eZ/EiL8zvJxez/ZRuuLbtQ==', 4)
INSERT [dbo].[tbl_member] ([int_member_id], [int_disaster_id], [str_member_name], [str_current_working], [str_address], [int_contact], [str_email], [str_password], [int_designation_id]) VALUES (13, 29, N'bhumi', N'ahmedabad', N'S.G road ahmedabad', 9978712955, N'bhumi@gmail.com', N'NR651f8okVbV/OoT9ZdLBw==', 6)
SET IDENTITY_INSERT [dbo].[tbl_member] OFF
/****** Object:  StoredProcedure [dbo].[update_tbl_district]    Script Date: 04/24/2014 21:11:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[update_tbl_district] 
(
	@int_district_id integer,
	@str_district_name varchar(50),
	@int_state_id integer
	
	
)
	
AS
BEGIN
	update tbl_district set str_district_name=@str_district_name,int_state_id=@int_state_id where int_district_id=@int_district_id
	select 1
END
GO
/****** Object:  StoredProcedure [dbo].[insert_tbl_lost]    Script Date: 04/24/2014 21:11:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[insert_tbl_lost]
(
@int_user_id integer,
@str_name varchar(50),
@date_date date,
@str_time varchar(50),
@str_where_lost varchar(50),
@bit_status bit=null,
@date_find_date date=null,
@str_find_time varchar(50)=null,
@int_age integer,
@str_img_path varchar(50),
@str_gender varchar(1)

)


AS
BEGIN
	insert into tbl_lost values (@int_user_id,@str_name,@date_date,@str_time,@str_where_lost,@bit_status,@date_find_date,@str_find_time,@int_age,@str_img_path,@str_gender)
	
			select @@IDENTITY
END
GO
/****** Object:  StoredProcedure [dbo].[update_tbl_disaster_master]    Script Date: 04/24/2014 21:11:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[update_tbl_disaster_master]
(
@int_disaster_id integer,
@str_disaster_name varchar(50),
@date_active_date date,
@date_end_date date,
@bit_status bit,
@str_place varchar(50),
@str_longitude varchar(50),
@str_latitude varchar(50),
@int_disaster_type_id integer,
@str_img varchar(50)
)	
AS
BEGIN
update tbl_disaster_master set str_disaster_name=@str_disaster_name,date_active_date=@date_active_date,date_end_date=@date_end_date,bit_status=@bit_status,str_place=@str_place,str_longitude=@str_longitude,str_latitude=@str_latitude,int_disaster_type_id=@int_disaster_type_id,str_img=@str_img where int_disaster_id=@int_disaster_id
	select 1

END
GO
/****** Object:  StoredProcedure [dbo].[update_tbl_lost]    Script Date: 04/24/2014 21:11:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[update_tbl_lost]
(
@int_lost_id integer,

@bit_status varchar(50),
@date_find_date date,
@str_find_time varchar(50)


)

AS
BEGIN
update tbl_lost set bit_status=@bit_status,date_find_date=@date_find_date,str_find_time=@str_find_time where int_lost_id=@int_lost_id
	select 1


END
GO
/****** Object:  Table [dbo].[tbl_area]    Script Date: 04/24/2014 21:11:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_area](
	[int_area_id] [int] IDENTITY(1,1) NOT NULL,
	[int_district_id] [int] NOT NULL,
	[str_area_name] [varchar](50) NOT NULL,
 CONSTRAINT [PK_tbl_area] PRIMARY KEY CLUSTERED 
(
	[int_area_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_area] ON
INSERT [dbo].[tbl_area] ([int_area_id], [int_district_id], [str_area_name]) VALUES (20, 14, N'Bapu Nagar')
INSERT [dbo].[tbl_area] ([int_area_id], [int_district_id], [str_area_name]) VALUES (21, 14, N' S.G. Road')
INSERT [dbo].[tbl_area] ([int_area_id], [int_district_id], [str_area_name]) VALUES (22, 14, N'Navrangpura')
INSERT [dbo].[tbl_area] ([int_area_id], [int_district_id], [str_area_name]) VALUES (23, 15, N'Athwalines')
INSERT [dbo].[tbl_area] ([int_area_id], [int_district_id], [str_area_name]) VALUES (24, 15, N'Hajira')
INSERT [dbo].[tbl_area] ([int_area_id], [int_district_id], [str_area_name]) VALUES (25, 15, N'Kadod')
INSERT [dbo].[tbl_area] ([int_area_id], [int_district_id], [str_area_name]) VALUES (26, 16, N'Akota')
INSERT [dbo].[tbl_area] ([int_area_id], [int_district_id], [str_area_name]) VALUES (27, 16, N'Bhaili')
INSERT [dbo].[tbl_area] ([int_area_id], [int_district_id], [str_area_name]) VALUES (28, 16, N'Kadachhala')
SET IDENTITY_INSERT [dbo].[tbl_area] OFF
/****** Object:  StoredProcedure [dbo].[insert_tbl_district]    Script Date: 04/24/2014 21:11:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[insert_tbl_district]
(
	@str_district_name varchar(50),
	@int_state_id integer
)	
AS
BEGIN
declare @cnt integer
	select @cnt=COUNT(*) from tbl_district where str_district_name=@str_district_name
	if(@cnt=0)
		begin	
			insert into tbl_district values (@str_district_name,@int_state_id)
			select @@IDENTITY
		end
	else
		begin
			select -1
		end
END
GO
/****** Object:  StoredProcedure [dbo].[insert_tbl_disaster_master]    Script Date: 04/24/2014 21:11:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[insert_tbl_disaster_master]
(
@str_disaster_name varchar(50),
@date_active_date date,
@date_end_date date,
@bit_status bit,
@str_place varchar(50),
@str_longitude varchar(50),
@str_latitude varchar(50),
@int_disaster_type_id integer,
@str_img varchar(50)
)
AS
BEGIN
	
			insert into tbl_disaster_master values (@str_disaster_name,@date_active_date,@date_end_date,@bit_status,@str_place,@str_longitude,@str_latitude,@int_disaster_type_id,@str_img)
			select @@IDENTITY
end
GO
/****** Object:  StoredProcedure [dbo].[delete_tbl_lost]    Script Date: 04/24/2014 21:11:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[delete_tbl_lost]
(
@int_lost_id integer
)

AS
BEGIN
delete from tbl_lost where int_lost_id= @int_lost_id
	select 1
END
GO
/****** Object:  StoredProcedure [dbo].[delete_tbl_district]    Script Date: 04/24/2014 21:11:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[delete_tbl_district]
(
@int_district_id integer
)
	AS
BEGIN
	delete from tbl_district where int_district_id= @int_district_id
	select 1
END
GO
/****** Object:  StoredProcedure [dbo].[delete_tbl_disaster_master]    Script Date: 04/24/2014 21:11:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE  [dbo].[delete_tbl_disaster_master]
	(
	@int_disaster_id integer
	)
	
	AS
BEGIN
	delete from tbl_disaster_master where int_disaster_id= @int_disaster_id
	select 1
END
GO
/****** Object:  StoredProcedure [dbo].[delete_tbl_area]    Script Date: 04/24/2014 21:11:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[delete_tbl_area]
(
@int_area_id integer
)
	AS
BEGIN
delete from tbl_area where int_area_id= @int_area_id
	select 1	
END
GO
/****** Object:  StoredProcedure [dbo].[delete_tbl_member]    Script Date: 04/24/2014 21:11:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[delete_tbl_member]
	(
	@int_member_id integer
	)
	
	AS
BEGIN
	delete from tbl_member where int_member_id= @int_member_id
	select 1
	
	END
GO
/****** Object:  StoredProcedure [dbo].[insert_tbl_member]    Script Date: 04/24/2014 21:11:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[insert_tbl_member]
(
@int_disaster_id integer,
@str_member_name varchar(50),
@int_designation_id integer,
@str_current_working varchar(50),
@str_address varchar(500),
@int_contact bigint,
@str_email varchar(50),
@str_password varchar(50)
)


AS
BEGIN
	insert into tbl_member values (@int_disaster_id,@str_member_name,@str_current_working,@str_address,@int_contact,@str_email,@str_password,@int_designation_id)
	
			select @@IDENTITY
END
GO
/****** Object:  StoredProcedure [dbo].[insert_tbl_area]    Script Date: 04/24/2014 21:11:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[insert_tbl_area]
(
@int_district_id integer,
@str_area_name varchar(50)
)
AS
BEGIN
insert into tbl_area values (@int_district_id,@str_area_name)
			select @@IDENTITY
END
GO
/****** Object:  StoredProcedure [dbo].[update_tbl_area]    Script Date: 04/24/2014 21:11:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[update_tbl_area]
(
	@int_area_id integer,
	@int_district_id integer,
	@str_area_name varchar(50)
	
	
)
AS
BEGIN
	update tbl_area set int_district_id=@int_district_id,str_area_name=@str_area_name where int_area_id=@int_area_id
	select 1	
END
GO
/****** Object:  Table [dbo].[tbl_voluntar_team]    Script Date: 04/24/2014 21:11:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_voluntar_team](
	[int_voluntar_team_id] [int] IDENTITY(1,1) NOT NULL,
	[date_voluntar_date] [date] NOT NULL,
	[bit_active] [bit] NOT NULL,
	[int_member_id] [int] NOT NULL,
	[str_voluntar_team_name] [varchar](50) NOT NULL,
 CONSTRAINT [PK_tbl_voluntar_team] PRIMARY KEY CLUSTERED 
(
	[int_voluntar_team_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_voluntar_team] ON
INSERT [dbo].[tbl_voluntar_team] ([int_voluntar_team_id], [date_voluntar_date], [bit_active], [int_member_id], [str_voluntar_team_name]) VALUES (12, CAST(0xBB320B00 AS Date), 1, 10, N'team1')
INSERT [dbo].[tbl_voluntar_team] ([int_voluntar_team_id], [date_voluntar_date], [bit_active], [int_member_id], [str_voluntar_team_name]) VALUES (13, CAST(0xAB320B00 AS Date), 1, 11, N'team2')
INSERT [dbo].[tbl_voluntar_team] ([int_voluntar_team_id], [date_voluntar_date], [bit_active], [int_member_id], [str_voluntar_team_name]) VALUES (14, CAST(0x28340B00 AS Date), 1, 12, N'team3')
INSERT [dbo].[tbl_voluntar_team] ([int_voluntar_team_id], [date_voluntar_date], [bit_active], [int_member_id], [str_voluntar_team_name]) VALUES (15, CAST(0x28340B00 AS Date), 1, 13, N'team4')
SET IDENTITY_INSERT [dbo].[tbl_voluntar_team] OFF
/****** Object:  View [dbo].[view_area_district]    Script Date: 04/24/2014 21:11:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[view_area_district]
AS
SELECT     dbo.tbl_area.*, dbo.tbl_district.str_district_name
FROM         dbo.tbl_area INNER JOIN
                      dbo.tbl_district ON dbo.tbl_area.int_district_id = dbo.tbl_district.int_district_id
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "tbl_area"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 110
               Right = 200
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "tbl_district"
            Begin Extent = 
               Top = 6
               Left = 238
               Bottom = 110
               Right = 410
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'view_area_district'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'view_area_district'
GO
/****** Object:  View [dbo].[view_member_d_d]    Script Date: 04/24/2014 21:11:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[view_member_d_d]
AS
SELECT     dbo.tbl_designation.str_designation_name, dbo.tbl_disaster_master.str_disaster_name, dbo.tbl_member.*
FROM         dbo.tbl_designation INNER JOIN
                      dbo.tbl_member ON dbo.tbl_designation.int_designation_id = dbo.tbl_member.int_designation_id AND 
                      dbo.tbl_designation.int_designation_id = dbo.tbl_member.int_designation_id INNER JOIN
                      dbo.tbl_disaster_master ON dbo.tbl_member.int_disaster_id = dbo.tbl_disaster_master.int_disaster_id AND 
                      dbo.tbl_member.int_disaster_id = dbo.tbl_disaster_master.int_disaster_id
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "tbl_designation"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 95
               Right = 233
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "tbl_disaster_master"
            Begin Extent = 
               Top = 6
               Left = 271
               Bottom = 125
               Right = 458
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "tbl_member"
            Begin Extent = 
               Top = 6
               Left = 496
               Bottom = 125
               Right = 682
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'view_member_d_d'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'view_member_d_d'
GO
/****** Object:  View [dbo].[view_voluntar_team_member]    Script Date: 04/24/2014 21:11:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[view_voluntar_team_member]
AS
SELECT     dbo.tbl_voluntar_team.*, dbo.tbl_member.str_member_name
FROM         dbo.tbl_member INNER JOIN
                      dbo.tbl_voluntar_team ON dbo.tbl_member.int_member_id = dbo.tbl_voluntar_team.int_member_id
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "tbl_member"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 125
               Right = 242
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "tbl_voluntar_team"
            Begin Extent = 
               Top = 6
               Left = 280
               Bottom = 125
               Right = 490
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'view_voluntar_team_member'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'view_voluntar_team_member'
GO
/****** Object:  StoredProcedure [dbo].[update_tbl_voluntar_team]    Script Date: 04/24/2014 21:11:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[update_tbl_voluntar_team]
(
@int_voluntar_team_id integer,
@date_voluntar_date date,
@bit_active bit,
@int_member_id integer,
@str_voluntar_team_name varchar(50)

)
AS
BEGIN
update tbl_voluntar_team set date_voluntar_date=@date_voluntar_date,bit_active=@bit_active,int_member_id=@int_member_id,str_voluntar_team_name=@str_voluntar_team_name where int_voluntar_team_id=@int_voluntar_team_id
	select 1

END
GO
/****** Object:  Table [dbo].[tbl_voluntar]    Script Date: 04/24/2014 21:11:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_voluntar](
	[int_voluntar_id] [int] IDENTITY(1,1) NOT NULL,
	[int_voluntar_team_id] [int] NOT NULL,
	[str_voluntar_name] [varchar](50) NOT NULL,
	[str_address] [varchar](500) NOT NULL,
	[int_contact] [bigint] NOT NULL,
	[str_email] [varchar](50) NOT NULL,
	[str_password] [varchar](50) NOT NULL,
 CONSTRAINT [PK_tbl_voluntar] PRIMARY KEY CLUSTERED 
(
	[int_voluntar_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_voluntar] ON
INSERT [dbo].[tbl_voluntar] ([int_voluntar_id], [int_voluntar_team_id], [str_voluntar_name], [str_address], [int_contact], [str_email], [str_password]) VALUES (11, 12, N'rahul', N'ring road , surat', 8866366714, N'rahul@gmail.com', N'XC3JnCUXJjipDQ0lTq6YMQ==')
INSERT [dbo].[tbl_voluntar] ([int_voluntar_id], [int_voluntar_team_id], [str_voluntar_name], [str_address], [int_contact], [str_email], [str_password]) VALUES (12, 14, N'kajal', N'adajan , surat', 7878265695, N'kajal@gmail.com', N'ml+2bInbspF2cqV435/wZQ==')
INSERT [dbo].[tbl_voluntar] ([int_voluntar_id], [int_voluntar_team_id], [str_voluntar_name], [str_address], [int_contact], [str_email], [str_password]) VALUES (14, 14, N'deep', N'bapunagar , ahmedabad', 7459836245, N'deep@gmail.com', N'h25EGp29IEHA5863AyeQyA==')
INSERT [dbo].[tbl_voluntar] ([int_voluntar_id], [int_voluntar_team_id], [str_voluntar_name], [str_address], [int_contact], [str_email], [str_password]) VALUES (15, 15, N'rupesh ', N's.g. road , ahmedabad', 8596452575, N'rupesh@gmail.com', N'rupesh')
SET IDENTITY_INSERT [dbo].[tbl_voluntar] OFF
/****** Object:  Table [dbo].[tbl_rescue_person]    Script Date: 04/24/2014 21:11:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_rescue_person](
	[int_rescue_person_id] [int] IDENTITY(1,1) NOT NULL,
	[str_address] [varchar](500) NOT NULL,
	[int_contact] [bigint] NOT NULL,
	[str_description] [varchar](50) NOT NULL,
	[int_voluntar_team_id] [int] NOT NULL,
	[int_lost_id] [int] NOT NULL,
 CONSTRAINT [PK_tbl_rescue_person] PRIMARY KEY CLUSTERED 
(
	[int_rescue_person_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_rescue_person] ON
INSERT [dbo].[tbl_rescue_person] ([int_rescue_person_id], [str_address], [int_contact], [str_description], [int_voluntar_team_id], [int_lost_id]) VALUES (1, N'sachin', 919883443344, N'this person is found', 13, 54)
SET IDENTITY_INSERT [dbo].[tbl_rescue_person] OFF
/****** Object:  Table [dbo].[tbl_rescue]    Script Date: 04/24/2014 21:11:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_rescue](
	[int_rescue_id] [int] IDENTITY(1,1) NOT NULL,
	[int_voluntar_team_id] [int] NOT NULL,
	[str_rescue_place] [varchar](50) NOT NULL,
	[date_rescue_date] [date] NOT NULL,
 CONSTRAINT [PK_tbl_rescue] PRIMARY KEY CLUSTERED 
(
	[int_rescue_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_rescue] ON
INSERT [dbo].[tbl_rescue] ([int_rescue_id], [int_voluntar_team_id], [str_rescue_place], [date_rescue_date]) VALUES (2, 12, N'surat', CAST(0x6E2D0B00 AS Date))
INSERT [dbo].[tbl_rescue] ([int_rescue_id], [int_voluntar_team_id], [str_rescue_place], [date_rescue_date]) VALUES (3, 13, N'ahmedabad', CAST(0xA4340B00 AS Date))
INSERT [dbo].[tbl_rescue] ([int_rescue_id], [int_voluntar_team_id], [str_rescue_place], [date_rescue_date]) VALUES (4, 14, N'bhuj', CAST(0xB02C0B00 AS Date))
SET IDENTITY_INSERT [dbo].[tbl_rescue] OFF
/****** Object:  StoredProcedure [dbo].[insert_tbl_voluntar_team]    Script Date: 04/24/2014 21:11:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[insert_tbl_voluntar_team]
(
@date_voluntar_date date,
@bit_active bit,
@int_member_id integer,
@str_voluntar_team_name varchar(50)

)

AS
BEGIN
	insert into tbl_voluntar_team values(@date_voluntar_date,@bit_active,@int_member_id,@str_voluntar_team_name)
	
			select @@IDENTITY
END
GO
/****** Object:  StoredProcedure [dbo].[delete_tbl_voluntar_team]    Script Date: 04/24/2014 21:11:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[delete_tbl_voluntar_team]
(
@int_voluntar_team_id integer
)

	AS
BEGIN
	delete from tbl_voluntar_team where int_voluntar_team_id= @int_voluntar_team_id
	select 1
END
GO
/****** Object:  StoredProcedure [dbo].[delete_tbl_voluntar]    Script Date: 04/24/2014 21:11:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[delete_tbl_voluntar]
	
	(
	@int_voluntar_id integer
	)
	AS
BEGIN
	delete from tbl_voluntar where int_voluntar_id= @int_voluntar_id
	select 1
END
GO
/****** Object:  StoredProcedure [dbo].[delete_tbl_rescue_person]    Script Date: 04/24/2014 21:11:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[delete_tbl_rescue_person]
(
@int_rescue_person_id integer
)
AS
BEGIN
	delete from tbl_rescue_person where int_rescue_person_id= @int_rescue_person_id
	select 1
END
GO
/****** Object:  StoredProcedure [dbo].[delete_tbl_rescue]    Script Date: 04/24/2014 21:11:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[delete_tbl_rescue]

(
@int_rescue_id integer
)
	AS
BEGIN
	delete from tbl_rescue where int_rescue_id= @int_rescue_id
	select 1
END
GO
/****** Object:  StoredProcedure [dbo].[insert_tbl_voluntar]    Script Date: 04/24/2014 21:11:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[insert_tbl_voluntar]
(

@int_voluntar_team_id integer,
@str_voluntar_name varchar(50),
@str_address varchar(500),
@int_contact bigint,
@str_email varchar(50),
@str_password varchar(50)


)

AS
BEGIN
	insert into tbl_voluntar values (@int_voluntar_team_id,@str_voluntar_name,@str_address,@int_contact,@str_email,@str_password)
	
			select @@IDENTITY
END
GO
/****** Object:  StoredProcedure [dbo].[insert_tbl_rescue_person]    Script Date: 04/24/2014 21:11:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[insert_tbl_rescue_person] 
(

@str_address varchar(500),
@int_contact bigint,
@str_description varchar(50),
@int_voluntar_team_id integer,
@int_lost_id integer
)	
	
AS
BEGIN
	insert into tbl_rescue_person values(@str_address,@int_contact,@str_description,@int_voluntar_team_id,@int_lost_id)
	
			select @@IDENTITY
END
GO
/****** Object:  StoredProcedure [dbo].[insert_tbl_rescue]    Script Date: 04/24/2014 21:11:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[insert_tbl_rescue]
(
@int_voluntar_team_id integer,
@str_rescue_place varchar(50),
@date_rescue_date date

)

AS
BEGIN
	insert into tbl_rescue values(@int_voluntar_team_id,@str_rescue_place,@date_rescue_date)
	
			select @@IDENTITY
END
GO
/****** Object:  Table [dbo].[tbl_inquiry]    Script Date: 04/24/2014 21:11:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_inquiry](
	[int_inquiry_id] [int] IDENTITY(1,1) NOT NULL,
	[int_user_id] [int] NOT NULL,
	[str_description] [varchar](500) NOT NULL,
	[date_date] [date] NOT NULL,
	[str_time] [varchar](50) NOT NULL,
	[int_voluntar_id] [int] NULL,
	[str_ans_description] [varchar](500) NULL,
	[date_ans_date] [date] NULL,
	[str_ans_time] [varchar](50) NULL,
 CONSTRAINT [PK_tbl_inquiry] PRIMARY KEY CLUSTERED 
(
	[int_inquiry_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_inquiry] ON
INSERT [dbo].[tbl_inquiry] ([int_inquiry_id], [int_user_id], [str_description], [date_date], [str_time], [int_voluntar_id], [str_ans_description], [date_ans_date], [str_ans_time]) VALUES (22, 19, N'what is your implemented element', CAST(0x71380B00 AS Date), N'1:10 PM', 11, N'fghff
fhd
h
d
fhdf
h
d', CAST(0x72380B00 AS Date), N'8 pm')
SET IDENTITY_INSERT [dbo].[tbl_inquiry] OFF
/****** Object:  StoredProcedure [dbo].[update_tbl_rescue_person]    Script Date: 04/24/2014 21:11:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[update_tbl_rescue_person]
(
@int_rescue_person_id integer,

@str_address varchar(500),
@int_contact bigint,
@str_description varchar(50),
@int_voluntar_team_id integer,
@int_lost_id integer

)
AS
BEGIN

update tbl_rescue_person set str_address=@str_address,int_contact=@int_contact,str_description=@str_description,@int_voluntar_team_id=int_voluntar_team_id,int_lost_id=@int_lost_id where int_rescue_person_id=@int_rescue_person_id
	select 1
END
GO
/****** Object:  StoredProcedure [dbo].[update_tbl_rescue]    Script Date: 04/24/2014 21:11:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[update_tbl_rescue]
(
@int_rescue_id integer,
@int_voluntar_team_id integer,
@str_rescue_place varchar(50),
@date_rescue_date date

)

AS
BEGIN
	update tbl_rescue set int_voluntar_team_id=@int_voluntar_team_id,str_rescue_place=@str_rescue_place,date_rescue_date=@date_rescue_date where int_rescue_id=@int_rescue_id
	select 1
END
GO
/****** Object:  View [dbo].[view_voluntar_voluntar_team]    Script Date: 04/24/2014 21:11:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[view_voluntar_voluntar_team]
AS
SELECT     dbo.tbl_voluntar_team.str_voluntar_team_name, dbo.tbl_voluntar.*
FROM         dbo.tbl_voluntar INNER JOIN
                      dbo.tbl_voluntar_team ON dbo.tbl_voluntar.int_voluntar_team_id = dbo.tbl_voluntar_team.int_voluntar_team_id
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "tbl_voluntar"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 125
               Right = 229
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "tbl_voluntar_team"
            Begin Extent = 
               Top = 6
               Left = 267
               Bottom = 125
               Right = 477
            End
            DisplayFlags = 280
            TopColumn = 1
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'view_voluntar_voluntar_team'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'view_voluntar_voluntar_team'
GO
/****** Object:  View [dbo].[view_rescue_voluntar_team]    Script Date: 04/24/2014 21:11:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[view_rescue_voluntar_team]
AS
SELECT     dbo.tbl_voluntar_team.str_voluntar_team_name, dbo.tbl_rescue.*
FROM         dbo.tbl_rescue INNER JOIN
                      dbo.tbl_voluntar_team ON dbo.tbl_rescue.int_voluntar_team_id = dbo.tbl_voluntar_team.int_voluntar_team_id
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "tbl_rescue"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 125
               Right = 229
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "tbl_voluntar_team"
            Begin Extent = 
               Top = 18
               Left = 352
               Bottom = 137
               Right = 562
            End
            DisplayFlags = 280
            TopColumn = 1
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 2385
         Width = 1500
         Width = 2115
         Width = 1950
         Width = 1740
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'view_rescue_voluntar_team'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'view_rescue_voluntar_team'
GO
/****** Object:  View [dbo].[view_rescue_person_voluntar_team_lost]    Script Date: 04/24/2014 21:11:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[view_rescue_person_voluntar_team_lost]
AS
SELECT     dbo.tbl_lost.str_name, dbo.tbl_lost.str_img_path, dbo.tbl_voluntar_team.str_voluntar_team_name, dbo.tbl_rescue_person.*
FROM         dbo.tbl_lost INNER JOIN
                      dbo.tbl_rescue_person ON dbo.tbl_lost.int_lost_id = dbo.tbl_rescue_person.int_lost_id INNER JOIN
                      dbo.tbl_voluntar_team ON dbo.tbl_rescue_person.int_voluntar_team_id = dbo.tbl_voluntar_team.int_voluntar_team_id
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[53] 4[9] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "tbl_lost"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 125
               Right = 201
            End
            DisplayFlags = 280
            TopColumn = 8
         End
         Begin Table = "tbl_rescue_person"
            Begin Extent = 
               Top = 6
               Left = 239
               Bottom = 125
               Right = 431
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "tbl_voluntar_team"
            Begin Extent = 
               Top = 126
               Left = 38
               Bottom = 245
               Right = 248
            End
            DisplayFlags = 280
            TopColumn = 1
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'view_rescue_person_voluntar_team_lost'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'view_rescue_person_voluntar_team_lost'
GO
/****** Object:  StoredProcedure [dbo].[update_tbl_voluntar]    Script Date: 04/24/2014 21:11:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[update_tbl_voluntar]
(
@int_voluntar_id integer,
@int_voluntar_team_id integer,
@str_voluntar_name varchar(50),
@str_address varchar(500),
@int_contact bigint,
@str_email varchar(50),
@str_password varchar(50)


)

AS
BEGIN
update tbl_voluntar set int_voluntar_team_id=@int_voluntar_team_id,str_voluntar_name=@str_voluntar_name,str_address=@str_address,int_contact=@int_contact,str_email=@str_email,str_password=@str_password where int_voluntar_id=@int_voluntar_id
	select 1

END
GO
/****** Object:  View [dbo].[view_inq]    Script Date: 04/24/2014 21:11:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[view_inq]
AS
SELECT     dbo.tbl_inquiry.int_inquiry_id, dbo.tbl_inquiry.int_user_id, dbo.tbl_inquiry.str_description, dbo.tbl_inquiry.date_date, dbo.tbl_inquiry.str_time, 
                      dbo.tbl_inquiry.int_voluntar_id, dbo.tbl_inquiry.str_ans_description, dbo.tbl_inquiry.date_ans_date, dbo.tbl_inquiry.str_ans_time, dbo.tbl_user.str_user_name, 
                      dbo.tbl_voluntar.str_voluntar_name
FROM         dbo.tbl_inquiry LEFT OUTER JOIN
                      dbo.tbl_voluntar ON dbo.tbl_inquiry.int_voluntar_id = dbo.tbl_voluntar.int_voluntar_id LEFT OUTER JOIN
                      dbo.tbl_user ON dbo.tbl_inquiry.int_user_id = dbo.tbl_user.int_user_id
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "tbl_inquiry"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 125
               Right = 221
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "tbl_user"
            Begin Extent = 
               Top = 6
               Left = 259
               Bottom = 125
               Right = 420
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "tbl_voluntar"
            Begin Extent = 
               Top = 126
               Left = 38
               Bottom = 245
               Right = 229
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'view_inq'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'view_inq'
GO
/****** Object:  StoredProcedure [dbo].[update_tbl_inquiry]    Script Date: 04/24/2014 21:11:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[update_tbl_inquiry]
(
@int_inquiry_id integer,
@int_user_id integer,
@str_description varchar(50),
@date_date date, 
@str_time varchar(50),
@int_voluntar_id integer,
@str_ans_description varchar(50),
@date_ans_date date,
@str_ans_time varchar(50)

)

AS
BEGIN
	update tbl_inquiry set int_user_id=@int_user_id,str_description=@str_description,date_date=@date_date,str_time=@str_time,int_voluntar_id=@int_voluntar_id,str_ans_description=@str_ans_description,date_ans_date=@date_ans_date,str_ans_time=@str_ans_time where int_inquiry_id=@int_inquiry_id
	select 1
	
	END
GO
/****** Object:  StoredProcedure [dbo].[insert_tbl_inquiry]    Script Date: 04/24/2014 21:11:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE  [dbo].[insert_tbl_inquiry]

(
@int_user_id integer,
@str_description varchar(500),
@date_date date,
@str_time varchar(50),
@int_voluntar_id integer=null,
@str_ans_description varchar(500)=null,
@date_ans_date date=null,
@str_ans_time varchar(50)=null

)	
AS
BEGIN
	insert into tbl_inquiry values (@int_user_id,@str_description,@date_date,@str_time,@int_voluntar_id,@str_ans_description,@date_ans_date,@str_ans_time)
	
	
			select @@IDENTITY
END
GO
/****** Object:  StoredProcedure [dbo].[demo]    Script Date: 04/24/2014 21:11:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
create PROCEDURE [dbo].[demo]
(
@int_inquiry_id integer,

@int_voluntar_id integer,
@str_ans_description varchar(50),
@date_ans_date date,
@str_ans_time varchar(50)

)

AS
BEGIN
	update tbl_inquiry set int_voluntar_id=@int_voluntar_id,str_ans_description=@str_ans_description,date_ans_date=@date_ans_date,str_ans_time=@str_ans_time where int_inquiry_id=@int_inquiry_id
	select 1
	
	END
GO
/****** Object:  StoredProcedure [dbo].[delete_tbl_inquiry]    Script Date: 04/24/2014 21:11:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[delete_tbl_inquiry]
	(
	@int_inquiry_id integer
	)
	AS
BEGIN
	delete from tbl_inquiry where int_inquiry_id= @int_inquiry_id
	select 1
END
GO
/****** Object:  ForeignKey [FK_tbl_area_tbl_district]    Script Date: 04/24/2014 21:11:03 ******/
ALTER TABLE [dbo].[tbl_area]  WITH CHECK ADD  CONSTRAINT [FK_tbl_area_tbl_district] FOREIGN KEY([int_district_id])
REFERENCES [dbo].[tbl_district] ([int_district_id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tbl_area] CHECK CONSTRAINT [FK_tbl_area_tbl_district]
GO
/****** Object:  ForeignKey [FK_tbl_disaster_master_tbl_disaster_type]    Script Date: 04/24/2014 21:11:03 ******/
ALTER TABLE [dbo].[tbl_disaster_master]  WITH CHECK ADD  CONSTRAINT [FK_tbl_disaster_master_tbl_disaster_type] FOREIGN KEY([int_disaster_type_id])
REFERENCES [dbo].[tbl_disaster_type] ([int_disaster_type_id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tbl_disaster_master] CHECK CONSTRAINT [FK_tbl_disaster_master_tbl_disaster_type]
GO
/****** Object:  ForeignKey [FK_tbl_district_tbl_district1]    Script Date: 04/24/2014 21:11:03 ******/
ALTER TABLE [dbo].[tbl_district]  WITH CHECK ADD  CONSTRAINT [FK_tbl_district_tbl_district1] FOREIGN KEY([int_state_id])
REFERENCES [dbo].[tbl_state] ([int_state_id])
GO
ALTER TABLE [dbo].[tbl_district] CHECK CONSTRAINT [FK_tbl_district_tbl_district1]
GO
/****** Object:  ForeignKey [FK_tbl_inquiry_tbl_user]    Script Date: 04/24/2014 21:11:03 ******/
ALTER TABLE [dbo].[tbl_inquiry]  WITH CHECK ADD  CONSTRAINT [FK_tbl_inquiry_tbl_user] FOREIGN KEY([int_user_id])
REFERENCES [dbo].[tbl_user] ([int_user_id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tbl_inquiry] CHECK CONSTRAINT [FK_tbl_inquiry_tbl_user]
GO
/****** Object:  ForeignKey [FK_tbl_inquiry_tbl_voluntar]    Script Date: 04/24/2014 21:11:03 ******/
ALTER TABLE [dbo].[tbl_inquiry]  WITH CHECK ADD  CONSTRAINT [FK_tbl_inquiry_tbl_voluntar] FOREIGN KEY([int_voluntar_id])
REFERENCES [dbo].[tbl_voluntar] ([int_voluntar_id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tbl_inquiry] CHECK CONSTRAINT [FK_tbl_inquiry_tbl_voluntar]
GO
/****** Object:  ForeignKey [FK_tbl_lost_tbl_user]    Script Date: 04/24/2014 21:11:03 ******/
ALTER TABLE [dbo].[tbl_lost]  WITH CHECK ADD  CONSTRAINT [FK_tbl_lost_tbl_user] FOREIGN KEY([int_user_id])
REFERENCES [dbo].[tbl_user] ([int_user_id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tbl_lost] CHECK CONSTRAINT [FK_tbl_lost_tbl_user]
GO
/****** Object:  ForeignKey [FK_tbl_member_tbl_designation]    Script Date: 04/24/2014 21:11:03 ******/
ALTER TABLE [dbo].[tbl_member]  WITH CHECK ADD  CONSTRAINT [FK_tbl_member_tbl_designation] FOREIGN KEY([int_designation_id])
REFERENCES [dbo].[tbl_designation] ([int_designation_id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tbl_member] CHECK CONSTRAINT [FK_tbl_member_tbl_designation]
GO
/****** Object:  ForeignKey [FK_tbl_member_tbl_designation1]    Script Date: 04/24/2014 21:11:03 ******/
ALTER TABLE [dbo].[tbl_member]  WITH CHECK ADD  CONSTRAINT [FK_tbl_member_tbl_designation1] FOREIGN KEY([int_designation_id])
REFERENCES [dbo].[tbl_designation] ([int_designation_id])
GO
ALTER TABLE [dbo].[tbl_member] CHECK CONSTRAINT [FK_tbl_member_tbl_designation1]
GO
/****** Object:  ForeignKey [FK_tbl_member_tbl_disaster_master]    Script Date: 04/24/2014 21:11:03 ******/
ALTER TABLE [dbo].[tbl_member]  WITH CHECK ADD  CONSTRAINT [FK_tbl_member_tbl_disaster_master] FOREIGN KEY([int_disaster_id])
REFERENCES [dbo].[tbl_disaster_master] ([int_disaster_id])
GO
ALTER TABLE [dbo].[tbl_member] CHECK CONSTRAINT [FK_tbl_member_tbl_disaster_master]
GO
/****** Object:  ForeignKey [FK_tbl_member_tbl_disaster_master1]    Script Date: 04/24/2014 21:11:03 ******/
ALTER TABLE [dbo].[tbl_member]  WITH CHECK ADD  CONSTRAINT [FK_tbl_member_tbl_disaster_master1] FOREIGN KEY([int_disaster_id])
REFERENCES [dbo].[tbl_disaster_master] ([int_disaster_id])
GO
ALTER TABLE [dbo].[tbl_member] CHECK CONSTRAINT [FK_tbl_member_tbl_disaster_master1]
GO
/****** Object:  ForeignKey [FK_tbl_rescue_tbl_voluntar_team]    Script Date: 04/24/2014 21:11:03 ******/
ALTER TABLE [dbo].[tbl_rescue]  WITH CHECK ADD  CONSTRAINT [FK_tbl_rescue_tbl_voluntar_team] FOREIGN KEY([int_voluntar_team_id])
REFERENCES [dbo].[tbl_voluntar_team] ([int_voluntar_team_id])
GO
ALTER TABLE [dbo].[tbl_rescue] CHECK CONSTRAINT [FK_tbl_rescue_tbl_voluntar_team]
GO
/****** Object:  ForeignKey [FK_tbl_rescue_person_tbl_lost]    Script Date: 04/24/2014 21:11:03 ******/
ALTER TABLE [dbo].[tbl_rescue_person]  WITH CHECK ADD  CONSTRAINT [FK_tbl_rescue_person_tbl_lost] FOREIGN KEY([int_lost_id])
REFERENCES [dbo].[tbl_lost] ([int_lost_id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tbl_rescue_person] CHECK CONSTRAINT [FK_tbl_rescue_person_tbl_lost]
GO
/****** Object:  ForeignKey [FK_tbl_rescue_person_tbl_voluntar_team]    Script Date: 04/24/2014 21:11:03 ******/
ALTER TABLE [dbo].[tbl_rescue_person]  WITH CHECK ADD  CONSTRAINT [FK_tbl_rescue_person_tbl_voluntar_team] FOREIGN KEY([int_voluntar_team_id])
REFERENCES [dbo].[tbl_voluntar_team] ([int_voluntar_team_id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tbl_rescue_person] CHECK CONSTRAINT [FK_tbl_rescue_person_tbl_voluntar_team]
GO
/****** Object:  ForeignKey [FK_tbl_voluntar_tbl_voluntar_team]    Script Date: 04/24/2014 21:11:03 ******/
ALTER TABLE [dbo].[tbl_voluntar]  WITH CHECK ADD  CONSTRAINT [FK_tbl_voluntar_tbl_voluntar_team] FOREIGN KEY([int_voluntar_team_id])
REFERENCES [dbo].[tbl_voluntar_team] ([int_voluntar_team_id])
GO
ALTER TABLE [dbo].[tbl_voluntar] CHECK CONSTRAINT [FK_tbl_voluntar_tbl_voluntar_team]
GO
/****** Object:  ForeignKey [FK_tbl_voluntar_team_tbl_member]    Script Date: 04/24/2014 21:11:03 ******/
ALTER TABLE [dbo].[tbl_voluntar_team]  WITH CHECK ADD  CONSTRAINT [FK_tbl_voluntar_team_tbl_member] FOREIGN KEY([int_member_id])
REFERENCES [dbo].[tbl_member] ([int_member_id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tbl_voluntar_team] CHECK CONSTRAINT [FK_tbl_voluntar_team_tbl_member]
GO
