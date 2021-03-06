USE [s16guest51]
GO
/****** Object:  Table [dbo].[Addresses]    Script Date: 5/6/2016 10:14:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Addresses](
	[Address_Id] [int] IDENTITY(1,1) NOT NULL,
	[Street_Address] [nvarchar](100) NOT NULL,
	[City_Id] [int] NOT NULL,
	[State_Id] [smallint] NULL,
	[Country_Id] [smallint] NULL,
	[Zip_Code] [nchar](10) NULL,
 CONSTRAINT [PK_Addresses] PRIMARY KEY CLUSTERED 
(
	[Address_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Authentication]    Script Date: 5/6/2016 10:14:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Authentication](
	[Authentication_Id] [int] IDENTITY(1,1) NOT NULL,
	[Customer_Id] [int] NOT NULL,
	[User_Name] [nchar](20) NOT NULL,
	[Password] [nchar](20) NOT NULL,
	[Create_Date] [nchar](10) NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Branch_Link]    Script Date: 5/6/2016 10:14:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Branch_Link](
	[Branch_Id] [int] NOT NULL,
	[Link_Id] [smallint] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Branche_Feature]    Script Date: 5/6/2016 10:14:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Branche_Feature](
	[Branch_Id] [int] NOT NULL,
	[Feature_Id] [int] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Branches]    Script Date: 5/6/2016 10:14:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Branches](
	[Branch_Id] [int] IDENTITY(1,1) NOT NULL,
	[Platform_Id] [tinyint] NOT NULL,
	[Product_Id] [tinyint] NOT NULL,
	[Branch_Number] [nchar](10) NULL,
	[Link_Id] [smallint] NOT NULL,
	[Release_Type_Id] [smallint] NOT NULL,
	[Release_Date] [nchar](10) NOT NULL,
 CONSTRAINT [PK_Branches] PRIMARY KEY CLUSTERED 
(
	[Branch_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Cities]    Script Date: 5/6/2016 10:14:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cities](
	[City_Id] [int] IDENTITY(1,1) NOT NULL,
	[City_Name] [nchar](30) NOT NULL,
 CONSTRAINT [PK_City] PRIMARY KEY CLUSTERED 
(
	[City_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Company]    Script Date: 5/6/2016 10:14:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Company](
	[Company_Id] [smallint] IDENTITY(1,1) NOT NULL,
	[Company_Name] [nchar](50) NOT NULL,
 CONSTRAINT [PK_Company] PRIMARY KEY CLUSTERED 
(
	[Company_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Countries]    Script Date: 5/6/2016 10:14:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Countries](
	[Country_id] [smallint] IDENTITY(1,1) NOT NULL,
	[Country_Name] [nchar](50) NOT NULL,
 CONSTRAINT [PK_Country] PRIMARY KEY CLUSTERED 
(
	[Country_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Customer_Address]    Script Date: 5/6/2016 10:14:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer_Address](
	[Address_Id] [int] NOT NULL,
	[Customer_Id] [int] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Customer_Phone]    Script Date: 5/6/2016 10:14:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer_Phone](
	[Customer_Id] [int] NOT NULL,
	[Phone_Id] [int] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Customers]    Script Date: 5/6/2016 10:14:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customers](
	[Customer_Id] [int] IDENTITY(1,1) NOT NULL,
	[Customer_Name] [nchar](20) NOT NULL,
	[Customer_Last_Name] [nchar](30) NOT NULL,
	[Company_Id] [smallint] NOT NULL,
	[e_mail] [nchar](30) NOT NULL,
 CONSTRAINT [PK_Customers] PRIMARY KEY CLUSTERED 
(
	[Customer_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Download_History]    Script Date: 5/6/2016 10:14:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Download_History](
	[Download_History_Id] [int] IDENTITY(1,1) NOT NULL,
	[Customer_Id] [int] NOT NULL,
	[Branch_Id] [int] NOT NULL,
	[Download_Date] [nchar](14) NOT NULL,
 CONSTRAINT [PK_Download_History] PRIMARY KEY CLUSTERED 
(
	[Download_History_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Features]    Script Date: 5/6/2016 10:14:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Features](
	[Feature_Id] [int] IDENTITY(1,1) NOT NULL,
	[Feature_Description] [nchar](200) NOT NULL,
 CONSTRAINT [PK_Features] PRIMARY KEY CLUSTERED 
(
	[Feature_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Iteration_Feature]    Script Date: 5/6/2016 10:14:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Iteration_Feature](
	[Iteration_Id] [int] NOT NULL,
	[Feature_Id] [int] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Iterations]    Script Date: 5/6/2016 10:14:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Iterations](
	[Iteration_Id] [int] IDENTITY(1,1) NOT NULL,
	[Product_Id] [tinyint] NOT NULL,
	[Platform_Id] [tinyint] NOT NULL,
	[Version_Number] [nchar](30) NOT NULL,
 CONSTRAINT [PK_Versions] PRIMARY KEY CLUSTERED 
(
	[Iteration_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Link]    Script Date: 5/6/2016 10:14:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Link](
	[Link_Id] [smallint] IDENTITY(1,1) NOT NULL,
	[Download_Link] [nchar](100) NOT NULL,
	[StartDate] [nchar](10) NOT NULL,
	[EndDate] [nchar](10) NOT NULL,
 CONSTRAINT [PK_Link] PRIMARY KEY CLUSTERED 
(
	[Link_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Phone_Type]    Script Date: 5/6/2016 10:14:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Phone_Type](
	[Phone_Type_Id] [smallint] IDENTITY(1,1) NOT NULL,
	[Phone_Type] [nchar](20) NOT NULL,
 CONSTRAINT [PK_Phone_Type] PRIMARY KEY CLUSTERED 
(
	[Phone_Type_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Phones]    Script Date: 5/6/2016 10:14:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Phones](
	[Phone_Id] [int] IDENTITY(1,1) NOT NULL,
	[Phone_Number] [nchar](14) NOT NULL,
	[Phone_Type_Id] [smallint] NOT NULL,
 CONSTRAINT [PK_Phones] PRIMARY KEY CLUSTERED 
(
	[Phone_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Platforms]    Script Date: 5/6/2016 10:14:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Platforms](
	[Platform_Id] [tinyint] IDENTITY(1,1) NOT NULL,
	[Platform_Name] [nchar](30) NOT NULL,
 CONSTRAINT [PK_Platforms] PRIMARY KEY CLUSTERED 
(
	[Platform_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Products]    Script Date: 5/6/2016 10:14:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[Product_Id] [tinyint] IDENTITY(1,1) NOT NULL,
	[Product_Name] [nchar](30) NULL,
	[Product_Description] [nchar](200) NULL,
	[Product_Date] [nchar](10) NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[Product_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Release_Type]    Script Date: 5/6/2016 10:14:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Release_Type](
	[Release_Type_Id] [smallint] IDENTITY(1,1) NOT NULL,
	[Release_Type] [nchar](20) NOT NULL,
 CONSTRAINT [PK_Version_Status] PRIMARY KEY CLUSTERED 
(
	[Release_Type_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[States]    Script Date: 5/6/2016 10:14:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[States](
	[State_Id] [smallint] IDENTITY(1,1) NOT NULL,
	[State_Name] [nchar](30) NOT NULL,
 CONSTRAINT [PK_States] PRIMARY KEY CLUSTERED 
(
	[State_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[Addresses]  WITH CHECK ADD  CONSTRAINT [FK_Addresses_Cities] FOREIGN KEY([City_Id])
REFERENCES [dbo].[Cities] ([City_Id])
GO
ALTER TABLE [dbo].[Addresses] CHECK CONSTRAINT [FK_Addresses_Cities]
GO
ALTER TABLE [dbo].[Addresses]  WITH CHECK ADD  CONSTRAINT [FK_Addresses_Countries] FOREIGN KEY([Country_Id])
REFERENCES [dbo].[Countries] ([Country_id])
GO
ALTER TABLE [dbo].[Addresses] CHECK CONSTRAINT [FK_Addresses_Countries]
GO
ALTER TABLE [dbo].[Addresses]  WITH CHECK ADD  CONSTRAINT [FK_Addresses_States] FOREIGN KEY([State_Id])
REFERENCES [dbo].[States] ([State_Id])
GO
ALTER TABLE [dbo].[Addresses] CHECK CONSTRAINT [FK_Addresses_States]
GO
ALTER TABLE [dbo].[Authentication]  WITH CHECK ADD  CONSTRAINT [FK_Authentication_Customers] FOREIGN KEY([Customer_Id])
REFERENCES [dbo].[Customers] ([Customer_Id])
GO
ALTER TABLE [dbo].[Authentication] CHECK CONSTRAINT [FK_Authentication_Customers]
GO
ALTER TABLE [dbo].[Branch_Link]  WITH CHECK ADD  CONSTRAINT [FK_Branch_Link_Branches] FOREIGN KEY([Branch_Id])
REFERENCES [dbo].[Branches] ([Branch_Id])
GO
ALTER TABLE [dbo].[Branch_Link] CHECK CONSTRAINT [FK_Branch_Link_Branches]
GO
ALTER TABLE [dbo].[Branch_Link]  WITH CHECK ADD  CONSTRAINT [FK_Branch_Link_Link] FOREIGN KEY([Link_Id])
REFERENCES [dbo].[Link] ([Link_Id])
GO
ALTER TABLE [dbo].[Branch_Link] CHECK CONSTRAINT [FK_Branch_Link_Link]
GO
ALTER TABLE [dbo].[Branche_Feature]  WITH CHECK ADD  CONSTRAINT [FK_Branche_Feature_Branches] FOREIGN KEY([Branch_Id])
REFERENCES [dbo].[Branches] ([Branch_Id])
GO
ALTER TABLE [dbo].[Branche_Feature] CHECK CONSTRAINT [FK_Branche_Feature_Branches]
GO
ALTER TABLE [dbo].[Branche_Feature]  WITH CHECK ADD  CONSTRAINT [FK_Branche_Feature_Features] FOREIGN KEY([Feature_Id])
REFERENCES [dbo].[Features] ([Feature_Id])
GO
ALTER TABLE [dbo].[Branche_Feature] CHECK CONSTRAINT [FK_Branche_Feature_Features]
GO
ALTER TABLE [dbo].[Branches]  WITH CHECK ADD  CONSTRAINT [FK_Branches_Platforms] FOREIGN KEY([Platform_Id])
REFERENCES [dbo].[Platforms] ([Platform_Id])
GO
ALTER TABLE [dbo].[Branches] CHECK CONSTRAINT [FK_Branches_Platforms]
GO
ALTER TABLE [dbo].[Branches]  WITH CHECK ADD  CONSTRAINT [FK_Branches_Products] FOREIGN KEY([Product_Id])
REFERENCES [dbo].[Products] ([Product_Id])
GO
ALTER TABLE [dbo].[Branches] CHECK CONSTRAINT [FK_Branches_Products]
GO
ALTER TABLE [dbo].[Branches]  WITH CHECK ADD  CONSTRAINT [FK_Branches_Reales_Type] FOREIGN KEY([Release_Type_Id])
REFERENCES [dbo].[Release_Type] ([Release_Type_Id])
GO
ALTER TABLE [dbo].[Branches] CHECK CONSTRAINT [FK_Branches_Reales_Type]
GO
ALTER TABLE [dbo].[Customer_Address]  WITH CHECK ADD  CONSTRAINT [FK_Customer_Address_Addresses] FOREIGN KEY([Address_Id])
REFERENCES [dbo].[Addresses] ([Address_Id])
GO
ALTER TABLE [dbo].[Customer_Address] CHECK CONSTRAINT [FK_Customer_Address_Addresses]
GO
ALTER TABLE [dbo].[Customer_Address]  WITH CHECK ADD  CONSTRAINT [FK_Customer_Address_Customers] FOREIGN KEY([Customer_Id])
REFERENCES [dbo].[Customers] ([Customer_Id])
GO
ALTER TABLE [dbo].[Customer_Address] CHECK CONSTRAINT [FK_Customer_Address_Customers]
GO
ALTER TABLE [dbo].[Customer_Phone]  WITH CHECK ADD  CONSTRAINT [FK_Costomer_Phone_Customers] FOREIGN KEY([Customer_Id])
REFERENCES [dbo].[Customers] ([Customer_Id])
GO
ALTER TABLE [dbo].[Customer_Phone] CHECK CONSTRAINT [FK_Costomer_Phone_Customers]
GO
ALTER TABLE [dbo].[Customer_Phone]  WITH CHECK ADD  CONSTRAINT [FK_Costomer_Phone_Phones] FOREIGN KEY([Phone_Id])
REFERENCES [dbo].[Phones] ([Phone_Id])
GO
ALTER TABLE [dbo].[Customer_Phone] CHECK CONSTRAINT [FK_Costomer_Phone_Phones]
GO
ALTER TABLE [dbo].[Customers]  WITH CHECK ADD  CONSTRAINT [FK_Customers_Company] FOREIGN KEY([Company_Id])
REFERENCES [dbo].[Company] ([Company_Id])
GO
ALTER TABLE [dbo].[Customers] CHECK CONSTRAINT [FK_Customers_Company]
GO
ALTER TABLE [dbo].[Download_History]  WITH CHECK ADD  CONSTRAINT [FK_Download_Customers] FOREIGN KEY([Customer_Id])
REFERENCES [dbo].[Customers] ([Customer_Id])
GO
ALTER TABLE [dbo].[Download_History] CHECK CONSTRAINT [FK_Download_Customers]
GO
ALTER TABLE [dbo].[Download_History]  WITH CHECK ADD  CONSTRAINT [FK_Download_History_Branches] FOREIGN KEY([Branch_Id])
REFERENCES [dbo].[Branches] ([Branch_Id])
GO
ALTER TABLE [dbo].[Download_History] CHECK CONSTRAINT [FK_Download_History_Branches]
GO
ALTER TABLE [dbo].[Iteration_Feature]  WITH CHECK ADD  CONSTRAINT [FK_Iteration_Feature_Features] FOREIGN KEY([Feature_Id])
REFERENCES [dbo].[Features] ([Feature_Id])
GO
ALTER TABLE [dbo].[Iteration_Feature] CHECK CONSTRAINT [FK_Iteration_Feature_Features]
GO
ALTER TABLE [dbo].[Iteration_Feature]  WITH CHECK ADD  CONSTRAINT [FK_Iteration_Feature_Iterations] FOREIGN KEY([Iteration_Id])
REFERENCES [dbo].[Iterations] ([Iteration_Id])
GO
ALTER TABLE [dbo].[Iteration_Feature] CHECK CONSTRAINT [FK_Iteration_Feature_Iterations]
GO
ALTER TABLE [dbo].[Iterations]  WITH CHECK ADD  CONSTRAINT [FK_Iterations_Platforms] FOREIGN KEY([Platform_Id])
REFERENCES [dbo].[Platforms] ([Platform_Id])
GO
ALTER TABLE [dbo].[Iterations] CHECK CONSTRAINT [FK_Iterations_Platforms]
GO
ALTER TABLE [dbo].[Iterations]  WITH CHECK ADD  CONSTRAINT [FK_Iterations_Products1] FOREIGN KEY([Product_Id])
REFERENCES [dbo].[Products] ([Product_Id])
GO
ALTER TABLE [dbo].[Iterations] CHECK CONSTRAINT [FK_Iterations_Products1]
GO
ALTER TABLE [dbo].[Phones]  WITH CHECK ADD  CONSTRAINT [FK_Phones_Phone_Type] FOREIGN KEY([Phone_Type_Id])
REFERENCES [dbo].[Phone_Type] ([Phone_Type_Id])
GO
ALTER TABLE [dbo].[Phones] CHECK CONSTRAINT [FK_Phones_Phone_Type]
GO
/****** Object:  Index [IX_Addresses]    Script Date: 5/6/2016 10:20:01 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_Addresses] ON [dbo].[Addresses]
(
	[Street_Address] ASC,
	[City_Id] ASC,
	[State_Id] ASC,
	[Country_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO

/****** Object:  Index [IX_Authentication]    Script Date: 5/6/2016 10:20:24 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_Authentication] ON [dbo].[Authentication]
(
	[User_Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO

/****** Object:  Index [IX_Branch_Link]    Script Date: 5/6/2016 10:20:53 PM ******/
CREATE NONCLUSTERED INDEX [IX_Branch_Link] ON [dbo].[Branch_Link]
(
	[Branch_Id] ASC,
	[Link_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO

/****** Object:  Index [IX_Branche_Feature]    Script Date: 5/6/2016 10:21:24 PM ******/
CREATE NONCLUSTERED INDEX [IX_Branche_Feature] ON [dbo].[Branche_Feature]
(
	[Branch_Id] ASC,
	[Feature_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO


/****** Object:  Index [IX_Branches]    Script Date: 5/6/2016 10:21:50 PM ******/
CREATE NONCLUSTERED INDEX [IX_Branches] ON [dbo].[Branches]
(
	[Platform_Id] ASC,
	[Product_Id] ASC,
	[Branch_Number] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO


/****** Object:  Index [IX_Cities]    Script Date: 5/6/2016 10:22:17 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_Cities] ON [dbo].[Cities]
(
	[City_Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO

/****** Object:  Index [IX_Company]    Script Date: 5/6/2016 10:22:36 PM ******/
CREATE NONCLUSTERED INDEX [IX_Company] ON [dbo].[Company]
(
	[Company_Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO


/****** Object:  Index [IX_Countries]    Script Date: 5/6/2016 10:23:39 PM ******/
CREATE NONCLUSTERED INDEX [IX_Countries] ON [dbo].[Countries]
(
	[Country_Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO

/****** Object:  Index [IX_Customer_Addresses]    Script Date: 5/6/2016 10:24:05 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_Customer_Addresses] ON [dbo].[Customer_Address]
(
	[Address_Id] ASC,
	[Customer_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO


/****** Object:  Index [IX_Costomer_Phone]    Script Date: 5/6/2016 10:24:38 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_Costomer_Phone] ON [dbo].[Customer_Phone]
(
	[Customer_Id] ASC,
	[Phone_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Download_History]    Script Date: 5/6/2016 10:25:42 PM ******/
CREATE NONCLUSTERED INDEX [IX_Download_History] ON [dbo].[Download_History]
(
	[Customer_Id] ASC,
	[Branch_Id] ASC,
	[Download_Date] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO

/****** Object:  Index [IX_Features]    Script Date: 5/6/2016 10:26:19 PM ******/
CREATE NONCLUSTERED INDEX [IX_Features] ON [dbo].[Features]
(
	[Feature_Id] ASC,
	[Feature_Description] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO

/****** Object:  Index [IX_Iteration_Feature]    Script Date: 5/6/2016 10:26:40 PM ******/
CREATE NONCLUSTERED INDEX [IX_Iteration_Feature] ON [dbo].[Iteration_Feature]
(
	[Iteration_Id] ASC,
	[Feature_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO

/****** Object:  Index [IX_Iterations]    Script Date: 5/6/2016 10:27:09 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_Iterations] ON [dbo].[Iterations]
(
	[Product_Id] ASC,
	[Platform_Id] ASC,
	[Version_Number] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO


/****** Object:  Index [IX_Link]    Script Date: 5/6/2016 10:27:40 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_Link] ON [dbo].[Link]
(
	[Download_Link] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Phone_Type]    Script Date: 5/6/2016 10:28:44 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_Phone_Type] ON [dbo].[Phone_Type]
(
	[Phone_Type] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO


/****** Object:  Index [IX_Phones]    Script Date: 5/6/2016 10:29:07 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_Phones] ON [dbo].[Phones]
(
	[Phone_Number] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO

/****** Object:  Index [IX_Products]    Script Date: 5/6/2016 10:37:06 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_Products] ON [dbo].[Products]
(
	[Product_Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO

/****** Object:  Index [IX_Reales_Type]    Script Date: 5/6/2016 10:37:36 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_Reales_Type] ON [dbo].[Release_Type]
(
	[Release_Type] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO

/****** Object:  Index [IX_States]    Script Date: 5/6/2016 10:37:59 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_States] ON [dbo].[States]
(
	[State_Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO

/****** Object:  View [dbo].[v_Branch_Feature]    Script Date: 5/6/2016 11:42:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[v_Branch_Feature]
AS
SELECT        dbo.Branches.Branch_Id, dbo.Branches.Platform_Id, dbo.Branches.Product_Id, dbo.Branches.Branch_Number, dbo.Branches.Link_Id, dbo.Branches.Release_Type_Id, dbo.Branches.Release_Date, 
                         dbo.Features.Feature_Id, dbo.Features.Feature_Description
FROM            dbo.Branche_Feature INNER JOIN
                         dbo.Branches ON dbo.Branche_Feature.Branch_Id = dbo.Branches.Branch_Id INNER JOIN
                         dbo.Features ON dbo.Branche_Feature.Feature_Id = dbo.Features.Feature_Id


GO
/****** Object:  StoredProcedure [dbo].[Branch_Download_Montly_Count]    Script Date: 5/6/2016 11:42:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Branch_Download_Montly_Count]
AS
BEGIN
	SELECT        dbo.Products.Product_Name, dbo.Branches.Branch_Number, SUBSTRING(dbo.Download_history.Download_Date, 1, 2) AS Month, COUNT(*) AS Count
	FROM           dbo.Products INNER JOIN
                   dbo.Branches ON dbo.Products.Product_ID = dbo.Branches.Product_ID INNER JOIN
                   dbo.Download_history ON dbo.Branches.Branch_ID = dbo.Download_history.Branch_ID
	GROUP BY	   dbo.Products.Product_Name, dbo.Branches.Branch_Number, 
					SUBSTRING(dbo.Download_history.Download_Date, 1, 2)

END


GO
/****** Object:  StoredProcedure [dbo].[Branch_New_Feature_Count]    Script Date: 5/6/2016 11:42:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[Branch_New_Feature_Count](@Branch_Id int)

AS

BEGIN
	BEGIN TRY
		DECLARE @Count int = (select count(*) from Branche_Feature where  
					Branch_Id = @Branch_Id)
		DECLARE @Branch_Number nvarchar(10) = (select Branch_Number from Branches where  
					Branch_Id= @Branch_Id)
		if @Count > 0
		begin
			if @Count = 1
			begin
				DECLARE @Feature_Description nvarchar(100) = (select Feature_Description from vBranch_Feature where  
					Branch_Id = @Branch_Id)
					if CHARINDEX ( 'bug fix' ,@Feature_Description) > 0 begin
						select 'It is a bug–fix release'
					end else begin
						select CAST(@Count AS varchar(10)) + ' features are in the '+ @Branch_Number + ' release'
					end

			end else begin
				select CAST(@Count AS varchar(10)) + ' features are in the '+ @Branch_Number + ' release'
			end
		end else begin
			select 'There are no new features in the '+ @Branch_Number  +' release'
		end
	END TRY
	BEGIN CATCH
		raiserror('Report2 Error!',1,1)
	END CATCH

END

GO
/****** Object:  StoredProcedure [dbo].[sp_Insert_Platforms]    Script Date: 5/6/2016 11:42:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_Insert_Platforms](
		@Platform_Name nchar(30))
AS
BEGIN
	DECLARE @count int = (select count(*) from Platforms where  
				Platform_Name = @Platform_Name)
	if @count <> 0
	begin
		raiserror('Table "Platforms": there is a record for "Platform" = %s !', @Platform_Name ,2,1)
		return
	end
	BEGIN TRY
		INSERT INTO [dbo].[Platforms]
				([Platform_Name])
			VALUES
				(@Platform_Name)
	END TRY

	BEGIN CATCH
		raiserror('Table "Platforms": Insert Error!',1,1)
	END CATCH

END

GO
/****** Object:  StoredProcedure [dbo].[sp_Update_Iterations]    Script Date: 5/6/2016 11:42:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_Update_Iterations](
	@Iteration_Id int,
	@Product_Id smallint,
	@Platform_Id tinyint,
	@Version_Number nchar(30))
AS

BEGIN
	DECLARE @count int = (select count(*) from Iterations where  
				Iteration_Id = @Iteration_Id )
	if @count > 0
	begin
		raiserror('Table "Iterations": there is no record for "Iteration_Id" = %d !', @Iteration_Id ,2,1)
		RETURN 
	end
	BEGIN TRY
		SET NOCOUNT ON;

			UPDATE [dbo].[Iterations]
				SET [Product_Id] = @Product_Id, 
					[Platform_Id] = @Platform_Id,
					[Version_Number] = @Version_Number
	  			where Iteration_Id = @Iteration_Id
	END try

	BEGIN CATCH
		raiserror('Table "Iterations": Update Error!',1,1)
	END CATCH
END

GO

EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[35] 4[13] 2[12] 3) )"
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
         Begin Table = "Branche_Feature"
            Begin Extent = 
               Top = 56
               Left = 262
               Bottom = 222
               Right = 432
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Branches"
            Begin Extent = 
               Top = 55
               Left = 15
               Bottom = 242
               Right = 190
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Features"
            Begin Extent = 
               Top = 52
               Left = 530
               Bottom = 183
               Right = 723
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vBranch_Feature'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vBranch_Feature'
GO

