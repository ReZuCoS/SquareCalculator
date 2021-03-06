/****** Object:  Database [MindBox]    Script Date: 1/5/2022 5:16:20 AM ******/
CREATE DATABASE [MindBox]
GO
USE [MindBox]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 1/5/2022 5:16:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[ID] [int] NOT NULL,
	[Name] [text] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductCategories]    Script Date: 1/5/2022 5:16:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductCategories](
	[ProductID] [int] NOT NULL,
	[CategoryID] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ProductID] ASC,
	[CategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 1/5/2022 5:16:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[ID] [int] NOT NULL,
	[Name] [text] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[Categories] ([ID], [Name]) VALUES (1, N'Meat')
INSERT [dbo].[Categories] ([ID], [Name]) VALUES (2, N'MilkProducts')
INSERT [dbo].[Categories] ([ID], [Name]) VALUES (3, N'Fruit')
GO
INSERT [dbo].[ProductCategories] ([ProductID], [CategoryID]) VALUES (1, 1)
INSERT [dbo].[ProductCategories] ([ProductID], [CategoryID]) VALUES (2, 2)
INSERT [dbo].[ProductCategories] ([ProductID], [CategoryID]) VALUES (3, 3)
GO
INSERT [dbo].[Products] ([ID], [Name]) VALUES (1, N'Steak')
INSERT [dbo].[Products] ([ID], [Name]) VALUES (2, N'Milk')
INSERT [dbo].[Products] ([ID], [Name]) VALUES (3, N'Apple')
GO
ALTER TABLE [dbo].[ProductCategories]  WITH CHECK ADD FOREIGN KEY([CategoryID])
REFERENCES [dbo].[Categories] ([ID])
GO
ALTER TABLE [dbo].[ProductCategories]  WITH CHECK ADD FOREIGN KEY([ProductID])
REFERENCES [dbo].[Products] ([ID])
GO
/****** Object:  StoredProcedure [dbo].[SelectProductCategories]    Script Date: 1/5/2022 5:16:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SelectProductCategories] AS

SELECT P.Name, C.Name
FROM Products P LEFT JOIN ProductCategories PC
ON P.Id = PC.ProductId LEFT JOIN Categories C
ON PC.CategoryId = C.Id;

GO
USE [master]
GO
ALTER DATABASE [MindBox] SET  READ_WRITE 
GO
