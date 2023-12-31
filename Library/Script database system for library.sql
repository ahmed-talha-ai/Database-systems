USE [library]
GO
/****** Object:  Table [dbo].[Authors]    Script Date: 12/22/2023 11:08:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Authors](
	[author_id] [int] IDENTITY(1,1) NOT NULL,
	[author_name] [nvarchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[author_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Book]    Script Date: 12/22/2023 11:08:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Book](
	[id_book] [int] IDENTITY(1,1) NOT NULL,
	[title] [nvarchar](100) NOT NULL,
	[author_id] [int] NULL,
	[category] [nvarchar](50) NULL,
	[purchase_price] [decimal](10, 2) NULL,
	[date_purchased] [date] NULL,
	[rating] [decimal](3, 2) NULL,
	[publisher_id] [int] NULL,
	[genre_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_book] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Genres]    Script Date: 12/22/2023 11:08:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Genres](
	[genre_id] [int] IDENTITY(1,1) NOT NULL,
	[genre_name] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[genre_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Journals]    Script Date: 12/22/2023 11:08:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Journals](
	[id_journal] [int] IDENTITY(1,1) NOT NULL,
	[title] [nvarchar](100) NOT NULL,
	[category] [nvarchar](50) NULL,
	[purchase_price] [decimal](10, 2) NULL,
	[date_purchased] [date] NULL,
	[rating] [decimal](3, 2) NULL,
PRIMARY KEY CLUSTERED 
(
	[id_journal] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoanOperations]    Script Date: 12/22/2023 11:08:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoanOperations](
	[id_transaction] [int] IDENTITY(1,1) NOT NULL,
	[id_book] [int] NULL,
	[id_user] [int] NULL,
	[borrow_date] [date] NULL,
	[return_date] [date] NULL,
	[loan_status] [nvarchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[id_transaction] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Publishers]    Script Date: 12/22/2023 11:08:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Publishers](
	[publisher_id] [int] IDENTITY(1,1) NOT NULL,
	[publisher_name] [nvarchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[publisher_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Transactions]    Script Date: 12/22/2023 11:08:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Transactions](
	[id_transaction] [int] IDENTITY(1,1) NOT NULL,
	[id_user] [int] NULL,
	[transaction_date] [date] NULL,
	[total_amount] [decimal](10, 2) NULL,
PRIMARY KEY CLUSTERED 
(
	[id_transaction] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 12/22/2023 11:08:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[id_user] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](100) NOT NULL,
	[address] [nvarchar](255) NULL,
	[phone_number] [nvarchar](15) NULL,
	[email] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[id_user] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Authors] ON 

INSERT [dbo].[Authors] ([author_id], [author_name]) VALUES (1, N'Author 1')
INSERT [dbo].[Authors] ([author_id], [author_name]) VALUES (2, N'Author 2')
INSERT [dbo].[Authors] ([author_id], [author_name]) VALUES (3, N'Author 3')
INSERT [dbo].[Authors] ([author_id], [author_name]) VALUES (4, N'Author 4')
INSERT [dbo].[Authors] ([author_id], [author_name]) VALUES (5, N'Author 5')
INSERT [dbo].[Authors] ([author_id], [author_name]) VALUES (6, N'Author 6')
INSERT [dbo].[Authors] ([author_id], [author_name]) VALUES (7, N'J.K. Rowling')
INSERT [dbo].[Authors] ([author_id], [author_name]) VALUES (8, N'George R.R. Martin')
INSERT [dbo].[Authors] ([author_id], [author_name]) VALUES (9, N'Haruki Murakami')
INSERT [dbo].[Authors] ([author_id], [author_name]) VALUES (10, N'Agatha Christie')
INSERT [dbo].[Authors] ([author_id], [author_name]) VALUES (11, N'Stephen King')
INSERT [dbo].[Authors] ([author_id], [author_name]) VALUES (12, N'Jane Austen')
INSERT [dbo].[Authors] ([author_id], [author_name]) VALUES (13, N'Mark Twain')
INSERT [dbo].[Authors] ([author_id], [author_name]) VALUES (14, N'J.R.R. Tolkien')
INSERT [dbo].[Authors] ([author_id], [author_name]) VALUES (15, N'Leo Tolstoy')
INSERT [dbo].[Authors] ([author_id], [author_name]) VALUES (16, N'F. Scott Fitzgerald')
INSERT [dbo].[Authors] ([author_id], [author_name]) VALUES (17, N'Gabriel Garcia Marquez')
INSERT [dbo].[Authors] ([author_id], [author_name]) VALUES (18, N'Ernest Hemingway')
INSERT [dbo].[Authors] ([author_id], [author_name]) VALUES (19, N'Virginia Woolf')
INSERT [dbo].[Authors] ([author_id], [author_name]) VALUES (20, N'Charles Dickens')
INSERT [dbo].[Authors] ([author_id], [author_name]) VALUES (21, N'Homer')
INSERT [dbo].[Authors] ([author_id], [author_name]) VALUES (22, N'Hermann Hesse')
INSERT [dbo].[Authors] ([author_id], [author_name]) VALUES (23, N'Albert Camus')
INSERT [dbo].[Authors] ([author_id], [author_name]) VALUES (24, N'William Faulkner')
INSERT [dbo].[Authors] ([author_id], [author_name]) VALUES (25, N'Kurt Vonnegut')
INSERT [dbo].[Authors] ([author_id], [author_name]) VALUES (26, N'Ayn Rand')
INSERT [dbo].[Authors] ([author_id], [author_name]) VALUES (27, N'Margaret Atwood')
INSERT [dbo].[Authors] ([author_id], [author_name]) VALUES (28, N'Toni Morrison')
INSERT [dbo].[Authors] ([author_id], [author_name]) VALUES (29, N'Maya Angelou')
INSERT [dbo].[Authors] ([author_id], [author_name]) VALUES (30, N'Gabriela Mistral')
INSERT [dbo].[Authors] ([author_id], [author_name]) VALUES (31, N'Pablo Neruda')
INSERT [dbo].[Authors] ([author_id], [author_name]) VALUES (32, N'Franz Kafka')
INSERT [dbo].[Authors] ([author_id], [author_name]) VALUES (33, N'Emily Bronte')
INSERT [dbo].[Authors] ([author_id], [author_name]) VALUES (34, N'Anton Chekhov')
INSERT [dbo].[Authors] ([author_id], [author_name]) VALUES (35, N'H.G. Wells')
INSERT [dbo].[Authors] ([author_id], [author_name]) VALUES (36, N'Aldous Huxley')
INSERT [dbo].[Authors] ([author_id], [author_name]) VALUES (37, N'Isaac Asimov')
INSERT [dbo].[Authors] ([author_id], [author_name]) VALUES (38, N'Arthur C. Clarke')
INSERT [dbo].[Authors] ([author_id], [author_name]) VALUES (39, N'Philip K. Dick')
INSERT [dbo].[Authors] ([author_id], [author_name]) VALUES (40, N'Ray Bradbury')
INSERT [dbo].[Authors] ([author_id], [author_name]) VALUES (41, N'George Orwell')
INSERT [dbo].[Authors] ([author_id], [author_name]) VALUES (42, N'C.S. Lewis')
INSERT [dbo].[Authors] ([author_id], [author_name]) VALUES (43, N'Roald Dahl')
INSERT [dbo].[Authors] ([author_id], [author_name]) VALUES (44, N'Jules Verne')
INSERT [dbo].[Authors] ([author_id], [author_name]) VALUES (45, N'Jane Goodall')
INSERT [dbo].[Authors] ([author_id], [author_name]) VALUES (46, N'Carl Sagan')
INSERT [dbo].[Authors] ([author_id], [author_name]) VALUES (47, N'Neil Gaiman')
INSERT [dbo].[Authors] ([author_id], [author_name]) VALUES (48, N'Michael Crichton')
INSERT [dbo].[Authors] ([author_id], [author_name]) VALUES (49, N'Octavia Butler')
INSERT [dbo].[Authors] ([author_id], [author_name]) VALUES (50, N'Diana Gabaldon')
INSERT [dbo].[Authors] ([author_id], [author_name]) VALUES (51, N'Dan Brown')
INSERT [dbo].[Authors] ([author_id], [author_name]) VALUES (52, N'J.D. Salinger')
INSERT [dbo].[Authors] ([author_id], [author_name]) VALUES (53, N'Erin Morgenstern')
INSERT [dbo].[Authors] ([author_id], [author_name]) VALUES (54, N'Chimamanda Ngozi Adichie')
INSERT [dbo].[Authors] ([author_id], [author_name]) VALUES (55, N'Arundhati Roy')
INSERT [dbo].[Authors] ([author_id], [author_name]) VALUES (56, N'Kazuo Ishiguro')
SET IDENTITY_INSERT [dbo].[Authors] OFF
GO
SET IDENTITY_INSERT [dbo].[Book] ON 

INSERT [dbo].[Book] ([id_book], [title], [author_id], [category], [purchase_price], [date_purchased], [rating], [publisher_id], [genre_id]) VALUES (1, N'Book 1', 1, N'Fiction', CAST(20.50 AS Decimal(10, 2)), CAST(N'2023-01-01' AS Date), CAST(4.50 AS Decimal(3, 2)), 1, 8)
INSERT [dbo].[Book] ([id_book], [title], [author_id], [category], [purchase_price], [date_purchased], [rating], [publisher_id], [genre_id]) VALUES (2, N'Book 2', 2, N'Non-Fiction', CAST(30.75 AS Decimal(10, 2)), CAST(N'2023-02-01' AS Date), CAST(3.80 AS Decimal(3, 2)), 1, 6)
INSERT [dbo].[Book] ([id_book], [title], [author_id], [category], [purchase_price], [date_purchased], [rating], [publisher_id], [genre_id]) VALUES (3, N'Book 3', 3, N'Mystery', CAST(25.00 AS Decimal(10, 2)), CAST(N'2023-03-01' AS Date), CAST(4.20 AS Decimal(3, 2)), 2, 4)
INSERT [dbo].[Book] ([id_book], [title], [author_id], [category], [purchase_price], [date_purchased], [rating], [publisher_id], [genre_id]) VALUES (4, N'Book 4', 4, N'Fantasy', CAST(22.00 AS Decimal(10, 2)), CAST(N'2023-04-01' AS Date), CAST(4.70 AS Decimal(3, 2)), 6, 3)
INSERT [dbo].[Book] ([id_book], [title], [author_id], [category], [purchase_price], [date_purchased], [rating], [publisher_id], [genre_id]) VALUES (5, N'Book 5', 5, N'Science Fiction', CAST(28.50 AS Decimal(10, 2)), CAST(N'2023-05-01' AS Date), CAST(3.20 AS Decimal(3, 2)), 7, 17)
INSERT [dbo].[Book] ([id_book], [title], [author_id], [category], [purchase_price], [date_purchased], [rating], [publisher_id], [genre_id]) VALUES (6, N'Book 6', 6, N'Thriller', CAST(18.75 AS Decimal(10, 2)), CAST(N'2023-06-01' AS Date), CAST(4.10 AS Decimal(3, 2)), 5, 20)
INSERT [dbo].[Book] ([id_book], [title], [author_id], [category], [purchase_price], [date_purchased], [rating], [publisher_id], [genre_id]) VALUES (7, N'The Hobbit', 8, N'Fantasy', CAST(19.99 AS Decimal(10, 2)), CAST(N'2023-04-15' AS Date), CAST(4.90 AS Decimal(3, 2)), 1, 19)
INSERT [dbo].[Book] ([id_book], [title], [author_id], [category], [purchase_price], [date_purchased], [rating], [publisher_id], [genre_id]) VALUES (8, N'Dune', 11, N'Science Fiction', CAST(24.50 AS Decimal(10, 2)), CAST(N'2023-05-20' AS Date), CAST(4.50 AS Decimal(3, 2)), 20, 9)
INSERT [dbo].[Book] ([id_book], [title], [author_id], [category], [purchase_price], [date_purchased], [rating], [publisher_id], [genre_id]) VALUES (9, N'The Girl with the Dragon Tattoo', 13, N'Mystery', CAST(21.75 AS Decimal(10, 2)), CAST(N'2023-06-25' AS Date), CAST(4.30 AS Decimal(3, 2)), 15, 7)
INSERT [dbo].[Book] ([id_book], [title], [author_id], [category], [purchase_price], [date_purchased], [rating], [publisher_id], [genre_id]) VALUES (10, N'To Kill a Mockingbird', 7, N'Classic', CAST(18.50 AS Decimal(10, 2)), CAST(N'2023-07-01' AS Date), CAST(4.80 AS Decimal(3, 2)), NULL, 5)
INSERT [dbo].[Book] ([id_book], [title], [author_id], [category], [purchase_price], [date_purchased], [rating], [publisher_id], [genre_id]) VALUES (11, N'1984', 17, N'Dystopian', CAST(16.99 AS Decimal(10, 2)), CAST(N'2023-08-10' AS Date), CAST(4.70 AS Decimal(3, 2)), 8, 16)
INSERT [dbo].[Book] ([id_book], [title], [author_id], [category], [purchase_price], [date_purchased], [rating], [publisher_id], [genre_id]) VALUES (12, N'The Great Gatsby', 5, N'Fiction', CAST(22.25 AS Decimal(10, 2)), CAST(N'2023-09-15' AS Date), CAST(4.60 AS Decimal(3, 2)), NULL, NULL)
INSERT [dbo].[Book] ([id_book], [title], [author_id], [category], [purchase_price], [date_purchased], [rating], [publisher_id], [genre_id]) VALUES (13, N'The Catcher in the Rye', 20, N'Coming of Age', CAST(20.00 AS Decimal(10, 2)), CAST(N'2023-10-01' AS Date), CAST(4.20 AS Decimal(3, 2)), 4, NULL)
INSERT [dbo].[Book] ([id_book], [title], [author_id], [category], [purchase_price], [date_purchased], [rating], [publisher_id], [genre_id]) VALUES (14, N'Pride and Prejudice', 6, N'Romance', CAST(18.75 AS Decimal(10, 2)), CAST(N'2023-11-05' AS Date), CAST(4.90 AS Decimal(3, 2)), NULL, 4)
INSERT [dbo].[Book] ([id_book], [title], [author_id], [category], [purchase_price], [date_purchased], [rating], [publisher_id], [genre_id]) VALUES (15, N'The Shining', 16, N'Horror', CAST(26.99 AS Decimal(10, 2)), CAST(N'2023-12-15' AS Date), CAST(4.40 AS Decimal(3, 2)), NULL, NULL)
INSERT [dbo].[Book] ([id_book], [title], [author_id], [category], [purchase_price], [date_purchased], [rating], [publisher_id], [genre_id]) VALUES (16, N'The Lord of the Rings', 8, N'Fantasy', CAST(29.50 AS Decimal(10, 2)), CAST(N'2024-01-20' AS Date), CAST(4.80 AS Decimal(3, 2)), 2, NULL)
INSERT [dbo].[Book] ([id_book], [title], [author_id], [category], [purchase_price], [date_purchased], [rating], [publisher_id], [genre_id]) VALUES (17, N'The Hunger Games', 19, N'Dystopian', CAST(17.75 AS Decimal(10, 2)), CAST(N'2024-02-25' AS Date), CAST(4.10 AS Decimal(3, 2)), NULL, 13)
INSERT [dbo].[Book] ([id_book], [title], [author_id], [category], [purchase_price], [date_purchased], [rating], [publisher_id], [genre_id]) VALUES (18, N'The Alchemist', 23, N'Philosophical', CAST(15.50 AS Decimal(10, 2)), CAST(N'2024-09-01' AS Date), CAST(4.50 AS Decimal(3, 2)), NULL, NULL)
INSERT [dbo].[Book] ([id_book], [title], [author_id], [category], [purchase_price], [date_purchased], [rating], [publisher_id], [genre_id]) VALUES (19, N'The Martian', 12, N'Science Fiction', CAST(23.75 AS Decimal(10, 2)), CAST(N'2024-10-05' AS Date), CAST(4.70 AS Decimal(3, 2)), 7, 14)
INSERT [dbo].[Book] ([id_book], [title], [author_id], [category], [purchase_price], [date_purchased], [rating], [publisher_id], [genre_id]) VALUES (20, N'Gone Girl', 14, N'Mystery', CAST(20.00 AS Decimal(10, 2)), CAST(N'2024-11-10' AS Date), CAST(4.20 AS Decimal(3, 2)), NULL, NULL)
INSERT [dbo].[Book] ([id_book], [title], [author_id], [category], [purchase_price], [date_purchased], [rating], [publisher_id], [genre_id]) VALUES (21, N'The Odyssey', 15, N'Epic Poetry', CAST(18.25 AS Decimal(10, 2)), CAST(N'2024-12-15' AS Date), CAST(4.60 AS Decimal(3, 2)), 20, 11)
SET IDENTITY_INSERT [dbo].[Book] OFF
GO
SET IDENTITY_INSERT [dbo].[Genres] ON 

INSERT [dbo].[Genres] ([genre_id], [genre_name]) VALUES (1, N'Genre X')
INSERT [dbo].[Genres] ([genre_id], [genre_name]) VALUES (2, N'Genre Y')
INSERT [dbo].[Genres] ([genre_id], [genre_name]) VALUES (3, N'Genre Z')
INSERT [dbo].[Genres] ([genre_id], [genre_name]) VALUES (4, N'Genre A')
INSERT [dbo].[Genres] ([genre_id], [genre_name]) VALUES (5, N'Genre B')
INSERT [dbo].[Genres] ([genre_id], [genre_name]) VALUES (6, N'Genre C')
INSERT [dbo].[Genres] ([genre_id], [genre_name]) VALUES (7, N'Science Fiction')
INSERT [dbo].[Genres] ([genre_id], [genre_name]) VALUES (8, N'Mystery')
INSERT [dbo].[Genres] ([genre_id], [genre_name]) VALUES (9, N'Romance')
INSERT [dbo].[Genres] ([genre_id], [genre_name]) VALUES (10, N'Thriller')
INSERT [dbo].[Genres] ([genre_id], [genre_name]) VALUES (11, N'Fantasy')
INSERT [dbo].[Genres] ([genre_id], [genre_name]) VALUES (12, N'Historical Fiction')
INSERT [dbo].[Genres] ([genre_id], [genre_name]) VALUES (13, N'Biography')
INSERT [dbo].[Genres] ([genre_id], [genre_name]) VALUES (14, N'Self-Help')
INSERT [dbo].[Genres] ([genre_id], [genre_name]) VALUES (15, N'Cookbook')
INSERT [dbo].[Genres] ([genre_id], [genre_name]) VALUES (16, N'Science')
INSERT [dbo].[Genres] ([genre_id], [genre_name]) VALUES (17, N'Travel')
INSERT [dbo].[Genres] ([genre_id], [genre_name]) VALUES (18, N'Poetry')
INSERT [dbo].[Genres] ([genre_id], [genre_name]) VALUES (19, N'Drama')
INSERT [dbo].[Genres] ([genre_id], [genre_name]) VALUES (20, N'Horror')
INSERT [dbo].[Genres] ([genre_id], [genre_name]) VALUES (21, N'Graphic Novel')
INSERT [dbo].[Genres] ([genre_id], [genre_name]) VALUES (22, N'Business')
INSERT [dbo].[Genres] ([genre_id], [genre_name]) VALUES (23, N'Children''s')
INSERT [dbo].[Genres] ([genre_id], [genre_name]) VALUES (24, N'Young Adult')
INSERT [dbo].[Genres] ([genre_id], [genre_name]) VALUES (25, N'History')
INSERT [dbo].[Genres] ([genre_id], [genre_name]) VALUES (26, N'Philosophy')
SET IDENTITY_INSERT [dbo].[Genres] OFF
GO
SET IDENTITY_INSERT [dbo].[Journals] ON 

INSERT [dbo].[Journals] ([id_journal], [title], [category], [purchase_price], [date_purchased], [rating]) VALUES (1, N'Journal 1', N'Science', CAST(15.50 AS Decimal(10, 2)), CAST(N'2023-01-15' AS Date), CAST(4.00 AS Decimal(3, 2)))
INSERT [dbo].[Journals] ([id_journal], [title], [category], [purchase_price], [date_purchased], [rating]) VALUES (2, N'Journal 2', N'Technology', CAST(18.75 AS Decimal(10, 2)), CAST(N'2023-02-15' AS Date), CAST(3.50 AS Decimal(3, 2)))
INSERT [dbo].[Journals] ([id_journal], [title], [category], [purchase_price], [date_purchased], [rating]) VALUES (3, N'Journal 3', N'Health', CAST(12.00 AS Decimal(10, 2)), CAST(N'2023-03-15' AS Date), CAST(4.80 AS Decimal(3, 2)))
INSERT [dbo].[Journals] ([id_journal], [title], [category], [purchase_price], [date_purchased], [rating]) VALUES (4, N'Journal 4', N'Nature', CAST(14.25 AS Decimal(10, 2)), CAST(N'2023-04-15' AS Date), CAST(4.30 AS Decimal(3, 2)))
INSERT [dbo].[Journals] ([id_journal], [title], [category], [purchase_price], [date_purchased], [rating]) VALUES (5, N'Journal 5', N'History', CAST(17.50 AS Decimal(10, 2)), CAST(N'2023-05-15' AS Date), CAST(3.90 AS Decimal(3, 2)))
INSERT [dbo].[Journals] ([id_journal], [title], [category], [purchase_price], [date_purchased], [rating]) VALUES (6, N'Journal 6', N'Art', CAST(20.00 AS Decimal(10, 2)), CAST(N'2023-06-15' AS Date), CAST(4.50 AS Decimal(3, 2)))
SET IDENTITY_INSERT [dbo].[Journals] OFF
GO
SET IDENTITY_INSERT [dbo].[LoanOperations] ON 

INSERT [dbo].[LoanOperations] ([id_transaction], [id_book], [id_user], [borrow_date], [return_date], [loan_status]) VALUES (1, 1, 1, CAST(N'2023-01-02' AS Date), CAST(N'2023-01-10' AS Date), N'Returned')
INSERT [dbo].[LoanOperations] ([id_transaction], [id_book], [id_user], [borrow_date], [return_date], [loan_status]) VALUES (2, 2, 2, CAST(N'2023-02-03' AS Date), CAST(N'2023-02-12' AS Date), N'Not Returned')
INSERT [dbo].[LoanOperations] ([id_transaction], [id_book], [id_user], [borrow_date], [return_date], [loan_status]) VALUES (3, 3, 3, CAST(N'2023-03-04' AS Date), NULL, N'Borrowed')
INSERT [dbo].[LoanOperations] ([id_transaction], [id_book], [id_user], [borrow_date], [return_date], [loan_status]) VALUES (4, 4, 4, CAST(N'2023-04-02' AS Date), CAST(N'2023-04-10' AS Date), N'Returned')
INSERT [dbo].[LoanOperations] ([id_transaction], [id_book], [id_user], [borrow_date], [return_date], [loan_status]) VALUES (5, 5, 5, CAST(N'2023-05-03' AS Date), CAST(N'2023-05-12' AS Date), N'Not Returned')
INSERT [dbo].[LoanOperations] ([id_transaction], [id_book], [id_user], [borrow_date], [return_date], [loan_status]) VALUES (6, 6, 6, CAST(N'2023-06-04' AS Date), NULL, N'Borrowed')
INSERT [dbo].[LoanOperations] ([id_transaction], [id_book], [id_user], [borrow_date], [return_date], [loan_status]) VALUES (7, 7, 7, CAST(N'2023-07-05' AS Date), CAST(N'2023-07-15' AS Date), N'Returned')
INSERT [dbo].[LoanOperations] ([id_transaction], [id_book], [id_user], [borrow_date], [return_date], [loan_status]) VALUES (8, 8, 8, CAST(N'2023-08-06' AS Date), CAST(N'2023-08-18' AS Date), N'Not Returned')
INSERT [dbo].[LoanOperations] ([id_transaction], [id_book], [id_user], [borrow_date], [return_date], [loan_status]) VALUES (9, 9, 9, CAST(N'2023-09-07' AS Date), NULL, N'Borrowed')
INSERT [dbo].[LoanOperations] ([id_transaction], [id_book], [id_user], [borrow_date], [return_date], [loan_status]) VALUES (10, 10, 10, CAST(N'2023-10-08' AS Date), CAST(N'2023-10-20' AS Date), N'Returned')
INSERT [dbo].[LoanOperations] ([id_transaction], [id_book], [id_user], [borrow_date], [return_date], [loan_status]) VALUES (11, 11, 11, CAST(N'2023-11-09' AS Date), CAST(N'2023-11-25' AS Date), N'Not Returned')
INSERT [dbo].[LoanOperations] ([id_transaction], [id_book], [id_user], [borrow_date], [return_date], [loan_status]) VALUES (12, 12, 12, CAST(N'2023-12-10' AS Date), NULL, N'Borrowed')
INSERT [dbo].[LoanOperations] ([id_transaction], [id_book], [id_user], [borrow_date], [return_date], [loan_status]) VALUES (13, 13, 1, CAST(N'2024-01-01' AS Date), CAST(N'2024-01-10' AS Date), N'Returned')
INSERT [dbo].[LoanOperations] ([id_transaction], [id_book], [id_user], [borrow_date], [return_date], [loan_status]) VALUES (14, 14, 2, CAST(N'2024-02-02' AS Date), CAST(N'2024-02-12' AS Date), N'Not Returned')
INSERT [dbo].[LoanOperations] ([id_transaction], [id_book], [id_user], [borrow_date], [return_date], [loan_status]) VALUES (15, 15, 3, CAST(N'2024-03-03' AS Date), NULL, N'Borrowed')
INSERT [dbo].[LoanOperations] ([id_transaction], [id_book], [id_user], [borrow_date], [return_date], [loan_status]) VALUES (16, 16, 4, CAST(N'2024-04-04' AS Date), CAST(N'2024-04-14' AS Date), N'Returned')
INSERT [dbo].[LoanOperations] ([id_transaction], [id_book], [id_user], [borrow_date], [return_date], [loan_status]) VALUES (17, 17, 5, CAST(N'2024-05-05' AS Date), CAST(N'2024-05-15' AS Date), N'Not Returned')
INSERT [dbo].[LoanOperations] ([id_transaction], [id_book], [id_user], [borrow_date], [return_date], [loan_status]) VALUES (18, 18, 6, CAST(N'2024-06-06' AS Date), NULL, N'Borrowed')
INSERT [dbo].[LoanOperations] ([id_transaction], [id_book], [id_user], [borrow_date], [return_date], [loan_status]) VALUES (19, 7, 7, CAST(N'2023-07-05' AS Date), CAST(N'2023-07-15' AS Date), N'Returned')
INSERT [dbo].[LoanOperations] ([id_transaction], [id_book], [id_user], [borrow_date], [return_date], [loan_status]) VALUES (20, 8, 8, CAST(N'2023-08-06' AS Date), CAST(N'2023-08-18' AS Date), N'Not Returned')
INSERT [dbo].[LoanOperations] ([id_transaction], [id_book], [id_user], [borrow_date], [return_date], [loan_status]) VALUES (21, 9, 9, CAST(N'2023-09-07' AS Date), NULL, N'Borrowed')
INSERT [dbo].[LoanOperations] ([id_transaction], [id_book], [id_user], [borrow_date], [return_date], [loan_status]) VALUES (22, 10, 10, CAST(N'2023-10-08' AS Date), CAST(N'2023-10-20' AS Date), N'Returned')
INSERT [dbo].[LoanOperations] ([id_transaction], [id_book], [id_user], [borrow_date], [return_date], [loan_status]) VALUES (23, 11, 11, CAST(N'2023-11-09' AS Date), CAST(N'2023-11-25' AS Date), N'Not Returned')
INSERT [dbo].[LoanOperations] ([id_transaction], [id_book], [id_user], [borrow_date], [return_date], [loan_status]) VALUES (24, 12, 12, CAST(N'2023-12-10' AS Date), NULL, N'Borrowed')
INSERT [dbo].[LoanOperations] ([id_transaction], [id_book], [id_user], [borrow_date], [return_date], [loan_status]) VALUES (25, 13, 1, CAST(N'2024-01-01' AS Date), CAST(N'2024-01-10' AS Date), N'Returned')
INSERT [dbo].[LoanOperations] ([id_transaction], [id_book], [id_user], [borrow_date], [return_date], [loan_status]) VALUES (26, 14, 2, CAST(N'2024-02-02' AS Date), CAST(N'2024-02-12' AS Date), N'Not Returned')
INSERT [dbo].[LoanOperations] ([id_transaction], [id_book], [id_user], [borrow_date], [return_date], [loan_status]) VALUES (27, 15, 3, CAST(N'2024-03-03' AS Date), NULL, N'Borrowed')
INSERT [dbo].[LoanOperations] ([id_transaction], [id_book], [id_user], [borrow_date], [return_date], [loan_status]) VALUES (28, 16, 4, CAST(N'2024-04-04' AS Date), CAST(N'2024-04-14' AS Date), N'Returned')
INSERT [dbo].[LoanOperations] ([id_transaction], [id_book], [id_user], [borrow_date], [return_date], [loan_status]) VALUES (29, 17, 5, CAST(N'2024-05-05' AS Date), CAST(N'2024-05-15' AS Date), N'Not Returned')
INSERT [dbo].[LoanOperations] ([id_transaction], [id_book], [id_user], [borrow_date], [return_date], [loan_status]) VALUES (30, 18, 6, CAST(N'2024-06-06' AS Date), NULL, N'Borrowed')
INSERT [dbo].[LoanOperations] ([id_transaction], [id_book], [id_user], [borrow_date], [return_date], [loan_status]) VALUES (31, 7, 1, CAST(N'2024-07-01' AS Date), CAST(N'2024-07-10' AS Date), N'Returned')
INSERT [dbo].[LoanOperations] ([id_transaction], [id_book], [id_user], [borrow_date], [return_date], [loan_status]) VALUES (32, 8, 2, CAST(N'2024-08-05' AS Date), CAST(N'2024-08-15' AS Date), N'Not Returned')
INSERT [dbo].[LoanOperations] ([id_transaction], [id_book], [id_user], [borrow_date], [return_date], [loan_status]) VALUES (33, 9, 3, CAST(N'2024-09-10' AS Date), NULL, N'Borrowed')
INSERT [dbo].[LoanOperations] ([id_transaction], [id_book], [id_user], [borrow_date], [return_date], [loan_status]) VALUES (34, 10, 4, CAST(N'2024-10-15' AS Date), CAST(N'2024-10-25' AS Date), N'Returned')
INSERT [dbo].[LoanOperations] ([id_transaction], [id_book], [id_user], [borrow_date], [return_date], [loan_status]) VALUES (35, 11, 5, CAST(N'2024-11-20' AS Date), CAST(N'2024-11-30' AS Date), N'Not Returned')
INSERT [dbo].[LoanOperations] ([id_transaction], [id_book], [id_user], [borrow_date], [return_date], [loan_status]) VALUES (36, 12, 6, CAST(N'2024-12-25' AS Date), NULL, N'Borrowed')
SET IDENTITY_INSERT [dbo].[LoanOperations] OFF
GO
SET IDENTITY_INSERT [dbo].[Publishers] ON 

INSERT [dbo].[Publishers] ([publisher_id], [publisher_name]) VALUES (1, N'Publisher A')
INSERT [dbo].[Publishers] ([publisher_id], [publisher_name]) VALUES (2, N'Publisher B')
INSERT [dbo].[Publishers] ([publisher_id], [publisher_name]) VALUES (3, N'Publisher C')
INSERT [dbo].[Publishers] ([publisher_id], [publisher_name]) VALUES (4, N'Publisher D')
INSERT [dbo].[Publishers] ([publisher_id], [publisher_name]) VALUES (5, N'Publisher E')
INSERT [dbo].[Publishers] ([publisher_id], [publisher_name]) VALUES (6, N'Publisher F')
INSERT [dbo].[Publishers] ([publisher_id], [publisher_name]) VALUES (7, N'Random House')
INSERT [dbo].[Publishers] ([publisher_id], [publisher_name]) VALUES (8, N'Penguin Books')
INSERT [dbo].[Publishers] ([publisher_id], [publisher_name]) VALUES (9, N'HarperCollins')
INSERT [dbo].[Publishers] ([publisher_id], [publisher_name]) VALUES (10, N'Simon & Schuster')
INSERT [dbo].[Publishers] ([publisher_id], [publisher_name]) VALUES (11, N'Macmillan Publishers')
INSERT [dbo].[Publishers] ([publisher_id], [publisher_name]) VALUES (12, N'Hachette Book Group')
INSERT [dbo].[Publishers] ([publisher_id], [publisher_name]) VALUES (13, N'Scholastic Corporation')
INSERT [dbo].[Publishers] ([publisher_id], [publisher_name]) VALUES (14, N'Wiley')
INSERT [dbo].[Publishers] ([publisher_id], [publisher_name]) VALUES (15, N'Oxford University Press')
INSERT [dbo].[Publishers] ([publisher_id], [publisher_name]) VALUES (16, N'Pearson Education')
INSERT [dbo].[Publishers] ([publisher_id], [publisher_name]) VALUES (17, N'Cambridge University Press')
INSERT [dbo].[Publishers] ([publisher_id], [publisher_name]) VALUES (18, N'Bloomsbury Publishing')
INSERT [dbo].[Publishers] ([publisher_id], [publisher_name]) VALUES (19, N'Springer')
INSERT [dbo].[Publishers] ([publisher_id], [publisher_name]) VALUES (20, N'Elsevier')
INSERT [dbo].[Publishers] ([publisher_id], [publisher_name]) VALUES (21, N'MIT Press')
INSERT [dbo].[Publishers] ([publisher_id], [publisher_name]) VALUES (22, N'Houghton Mifflin Harcourt')
INSERT [dbo].[Publishers] ([publisher_id], [publisher_name]) VALUES (23, N'Vintage Books')
INSERT [dbo].[Publishers] ([publisher_id], [publisher_name]) VALUES (24, N'Palgrave Macmillan')
INSERT [dbo].[Publishers] ([publisher_id], [publisher_name]) VALUES (25, N'John Wiley & Sons')
INSERT [dbo].[Publishers] ([publisher_id], [publisher_name]) VALUES (26, N'University of Chicago Press')
SET IDENTITY_INSERT [dbo].[Publishers] OFF
GO
SET IDENTITY_INSERT [dbo].[Transactions] ON 

INSERT [dbo].[Transactions] ([id_transaction], [id_user], [transaction_date], [total_amount]) VALUES (1, 1, CAST(N'2023-01-15' AS Date), CAST(50.25 AS Decimal(10, 2)))
INSERT [dbo].[Transactions] ([id_transaction], [id_user], [transaction_date], [total_amount]) VALUES (2, 2, CAST(N'2023-02-20' AS Date), CAST(30.75 AS Decimal(10, 2)))
INSERT [dbo].[Transactions] ([id_transaction], [id_user], [transaction_date], [total_amount]) VALUES (3, 3, CAST(N'2023-03-25' AS Date), CAST(45.00 AS Decimal(10, 2)))
INSERT [dbo].[Transactions] ([id_transaction], [id_user], [transaction_date], [total_amount]) VALUES (4, 4, CAST(N'2023-04-15' AS Date), CAST(35.50 AS Decimal(10, 2)))
INSERT [dbo].[Transactions] ([id_transaction], [id_user], [transaction_date], [total_amount]) VALUES (5, 5, CAST(N'2023-05-20' AS Date), CAST(25.00 AS Decimal(10, 2)))
INSERT [dbo].[Transactions] ([id_transaction], [id_user], [transaction_date], [total_amount]) VALUES (6, 6, CAST(N'2023-06-25' AS Date), CAST(40.00 AS Decimal(10, 2)))
INSERT [dbo].[Transactions] ([id_transaction], [id_user], [transaction_date], [total_amount]) VALUES (7, 7, CAST(N'2023-07-30' AS Date), CAST(50.75 AS Decimal(10, 2)))
INSERT [dbo].[Transactions] ([id_transaction], [id_user], [transaction_date], [total_amount]) VALUES (8, 8, CAST(N'2023-08-10' AS Date), CAST(30.25 AS Decimal(10, 2)))
INSERT [dbo].[Transactions] ([id_transaction], [id_user], [transaction_date], [total_amount]) VALUES (9, 9, CAST(N'2023-09-15' AS Date), CAST(45.50 AS Decimal(10, 2)))
INSERT [dbo].[Transactions] ([id_transaction], [id_user], [transaction_date], [total_amount]) VALUES (10, 10, CAST(N'2023-10-20' AS Date), CAST(28.00 AS Decimal(10, 2)))
INSERT [dbo].[Transactions] ([id_transaction], [id_user], [transaction_date], [total_amount]) VALUES (11, 11, CAST(N'2023-11-25' AS Date), CAST(38.75 AS Decimal(10, 2)))
INSERT [dbo].[Transactions] ([id_transaction], [id_user], [transaction_date], [total_amount]) VALUES (12, 12, CAST(N'2023-12-30' AS Date), CAST(55.00 AS Decimal(10, 2)))
INSERT [dbo].[Transactions] ([id_transaction], [id_user], [transaction_date], [total_amount]) VALUES (13, 13, CAST(N'2024-01-01' AS Date), CAST(40.25 AS Decimal(10, 2)))
INSERT [dbo].[Transactions] ([id_transaction], [id_user], [transaction_date], [total_amount]) VALUES (14, 14, CAST(N'2024-02-05' AS Date), CAST(22.50 AS Decimal(10, 2)))
INSERT [dbo].[Transactions] ([id_transaction], [id_user], [transaction_date], [total_amount]) VALUES (15, 15, CAST(N'2024-03-10' AS Date), CAST(35.75 AS Decimal(10, 2)))
INSERT [dbo].[Transactions] ([id_transaction], [id_user], [transaction_date], [total_amount]) VALUES (16, 16, CAST(N'2024-04-15' AS Date), CAST(29.50 AS Decimal(10, 2)))
INSERT [dbo].[Transactions] ([id_transaction], [id_user], [transaction_date], [total_amount]) VALUES (17, 17, CAST(N'2024-05-20' AS Date), CAST(42.00 AS Decimal(10, 2)))
INSERT [dbo].[Transactions] ([id_transaction], [id_user], [transaction_date], [total_amount]) VALUES (18, 18, CAST(N'2024-06-25' AS Date), CAST(33.25 AS Decimal(10, 2)))
INSERT [dbo].[Transactions] ([id_transaction], [id_user], [transaction_date], [total_amount]) VALUES (19, 7, CAST(N'2023-07-30' AS Date), CAST(50.75 AS Decimal(10, 2)))
INSERT [dbo].[Transactions] ([id_transaction], [id_user], [transaction_date], [total_amount]) VALUES (20, 8, CAST(N'2023-08-10' AS Date), CAST(30.25 AS Decimal(10, 2)))
INSERT [dbo].[Transactions] ([id_transaction], [id_user], [transaction_date], [total_amount]) VALUES (21, 9, CAST(N'2023-09-15' AS Date), CAST(45.50 AS Decimal(10, 2)))
INSERT [dbo].[Transactions] ([id_transaction], [id_user], [transaction_date], [total_amount]) VALUES (22, 10, CAST(N'2023-10-20' AS Date), CAST(28.00 AS Decimal(10, 2)))
INSERT [dbo].[Transactions] ([id_transaction], [id_user], [transaction_date], [total_amount]) VALUES (23, 11, CAST(N'2023-11-25' AS Date), CAST(38.75 AS Decimal(10, 2)))
INSERT [dbo].[Transactions] ([id_transaction], [id_user], [transaction_date], [total_amount]) VALUES (24, 12, CAST(N'2023-12-30' AS Date), CAST(55.00 AS Decimal(10, 2)))
INSERT [dbo].[Transactions] ([id_transaction], [id_user], [transaction_date], [total_amount]) VALUES (25, 13, CAST(N'2024-01-01' AS Date), CAST(40.25 AS Decimal(10, 2)))
INSERT [dbo].[Transactions] ([id_transaction], [id_user], [transaction_date], [total_amount]) VALUES (26, 14, CAST(N'2024-02-05' AS Date), CAST(22.50 AS Decimal(10, 2)))
INSERT [dbo].[Transactions] ([id_transaction], [id_user], [transaction_date], [total_amount]) VALUES (27, 15, CAST(N'2024-03-10' AS Date), CAST(35.75 AS Decimal(10, 2)))
INSERT [dbo].[Transactions] ([id_transaction], [id_user], [transaction_date], [total_amount]) VALUES (28, 16, CAST(N'2024-04-15' AS Date), CAST(29.50 AS Decimal(10, 2)))
INSERT [dbo].[Transactions] ([id_transaction], [id_user], [transaction_date], [total_amount]) VALUES (29, 17, CAST(N'2024-05-20' AS Date), CAST(42.00 AS Decimal(10, 2)))
INSERT [dbo].[Transactions] ([id_transaction], [id_user], [transaction_date], [total_amount]) VALUES (30, 18, CAST(N'2024-06-25' AS Date), CAST(33.25 AS Decimal(10, 2)))
INSERT [dbo].[Transactions] ([id_transaction], [id_user], [transaction_date], [total_amount]) VALUES (31, 7, CAST(N'2024-07-01' AS Date), CAST(25.00 AS Decimal(10, 2)))
INSERT [dbo].[Transactions] ([id_transaction], [id_user], [transaction_date], [total_amount]) VALUES (32, 8, CAST(N'2024-08-05' AS Date), CAST(37.50 AS Decimal(10, 2)))
INSERT [dbo].[Transactions] ([id_transaction], [id_user], [transaction_date], [total_amount]) VALUES (33, 9, CAST(N'2024-09-10' AS Date), CAST(18.25 AS Decimal(10, 2)))
INSERT [dbo].[Transactions] ([id_transaction], [id_user], [transaction_date], [total_amount]) VALUES (34, 10, CAST(N'2024-10-15' AS Date), CAST(43.00 AS Decimal(10, 2)))
INSERT [dbo].[Transactions] ([id_transaction], [id_user], [transaction_date], [total_amount]) VALUES (35, 11, CAST(N'2024-11-20' AS Date), CAST(30.75 AS Decimal(10, 2)))
INSERT [dbo].[Transactions] ([id_transaction], [id_user], [transaction_date], [total_amount]) VALUES (36, 12, CAST(N'2024-12-25' AS Date), CAST(48.50 AS Decimal(10, 2)))
INSERT [dbo].[Transactions] ([id_transaction], [id_user], [transaction_date], [total_amount]) VALUES (37, 13, CAST(N'2025-01-01' AS Date), CAST(22.00 AS Decimal(10, 2)))
INSERT [dbo].[Transactions] ([id_transaction], [id_user], [transaction_date], [total_amount]) VALUES (38, 14, CAST(N'2025-02-05' AS Date), CAST(34.25 AS Decimal(10, 2)))
INSERT [dbo].[Transactions] ([id_transaction], [id_user], [transaction_date], [total_amount]) VALUES (39, 15, CAST(N'2025-03-10' AS Date), CAST(27.50 AS Decimal(10, 2)))
INSERT [dbo].[Transactions] ([id_transaction], [id_user], [transaction_date], [total_amount]) VALUES (40, 16, CAST(N'2025-04-15' AS Date), CAST(39.75 AS Decimal(10, 2)))
SET IDENTITY_INSERT [dbo].[Transactions] OFF
GO
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([id_user], [name], [address], [phone_number], [email]) VALUES (1, N'User 1', N'Address 1', N'1234567890', N'user1@email.com')
INSERT [dbo].[Users] ([id_user], [name], [address], [phone_number], [email]) VALUES (2, N'User 2', N'Address 2', N'9876543210', N'user2@email.com')
INSERT [dbo].[Users] ([id_user], [name], [address], [phone_number], [email]) VALUES (3, N'User 3', N'Address 3', N'5555555555', N'user3@email.com')
INSERT [dbo].[Users] ([id_user], [name], [address], [phone_number], [email]) VALUES (4, N'User 4', N'Address 4', N'1112223333', N'user4@email.com')
INSERT [dbo].[Users] ([id_user], [name], [address], [phone_number], [email]) VALUES (5, N'User 5', N'Address 5', N'4445556666', N'user5@email.com')
INSERT [dbo].[Users] ([id_user], [name], [address], [phone_number], [email]) VALUES (6, N'User 6', N'Address 6', N'7778889999', N'user6@email.com')
INSERT [dbo].[Users] ([id_user], [name], [address], [phone_number], [email]) VALUES (7, N'John Smith', N'123 Main St, Cityville', N'5551234567', N'john.smith@email.com')
INSERT [dbo].[Users] ([id_user], [name], [address], [phone_number], [email]) VALUES (8, N'Jane Doe', N'456 Oak St, Townburg', N'5559876543', N'jane.doe@email.com')
INSERT [dbo].[Users] ([id_user], [name], [address], [phone_number], [email]) VALUES (9, N'Michael Johnson', N'789 Pine St, Villagetown', N'5551112222', N'michael.johnson@email.com')
INSERT [dbo].[Users] ([id_user], [name], [address], [phone_number], [email]) VALUES (10, N'Emily White', N'101 Elm St, Hamlet', N'5553334444', N'emily.white@email.com')
INSERT [dbo].[Users] ([id_user], [name], [address], [phone_number], [email]) VALUES (11, N'Daniel Brown', N'202 Maple St, Suburbia', N'5555556666', N'daniel.brown@email.com')
INSERT [dbo].[Users] ([id_user], [name], [address], [phone_number], [email]) VALUES (12, N'Sophia Davis', N'303 Birch St, Countryside', N'5557778888', N'sophia.davis@email.com')
INSERT [dbo].[Users] ([id_user], [name], [address], [phone_number], [email]) VALUES (13, N'Christopher Lee', N'404 Cedar St, Outskirts', N'5559990000', N'christopher.lee@email.com')
INSERT [dbo].[Users] ([id_user], [name], [address], [phone_number], [email]) VALUES (14, N'Olivia Wilson', N'505 Redwood St, Farmland', N'5552223333', N'olivia.wilson@email.com')
INSERT [dbo].[Users] ([id_user], [name], [address], [phone_number], [email]) VALUES (15, N'Matthew Taylor', N'606 Pine St, Riverside', N'5554445555', N'matthew.taylor@email.com')
INSERT [dbo].[Users] ([id_user], [name], [address], [phone_number], [email]) VALUES (16, N'Emma Moore', N'707 Oak St, Lakeside', N'5556667777', N'emma.moore@email.com')
INSERT [dbo].[Users] ([id_user], [name], [address], [phone_number], [email]) VALUES (17, N'Liam Hall', N'808 Birch St, Mountainside', N'5551113333', N'liam.hall@email.com')
INSERT [dbo].[Users] ([id_user], [name], [address], [phone_number], [email]) VALUES (18, N'Ava Martinez', N'909 Elm St, Hilltop', N'5552224444', N'ava.martinez@email.com')
INSERT [dbo].[Users] ([id_user], [name], [address], [phone_number], [email]) VALUES (19, N'Noah Clark', N'1011 Cedar St, Valley', N'5553335555', N'noah.clark@email.com')
INSERT [dbo].[Users] ([id_user], [name], [address], [phone_number], [email]) VALUES (20, N'Isabella Turner', N'1213 Pine St, Highlands', N'5554446666', N'isabella.turner@email.com')
INSERT [dbo].[Users] ([id_user], [name], [address], [phone_number], [email]) VALUES (21, N'James Garcia', N'1315 Maple St, Plateau', N'5555557777', N'james.garcia@email.com')
SET IDENTITY_INSERT [dbo].[Users] OFF
GO
ALTER TABLE [dbo].[Book]  WITH CHECK ADD FOREIGN KEY([author_id])
REFERENCES [dbo].[Authors] ([author_id])
GO
ALTER TABLE [dbo].[Book]  WITH CHECK ADD FOREIGN KEY([genre_id])
REFERENCES [dbo].[Genres] ([genre_id])
GO
ALTER TABLE [dbo].[Book]  WITH CHECK ADD FOREIGN KEY([publisher_id])
REFERENCES [dbo].[Publishers] ([publisher_id])
GO
ALTER TABLE [dbo].[LoanOperations]  WITH CHECK ADD FOREIGN KEY([id_book])
REFERENCES [dbo].[Book] ([id_book])
GO
ALTER TABLE [dbo].[LoanOperations]  WITH CHECK ADD FOREIGN KEY([id_user])
REFERENCES [dbo].[Users] ([id_user])
GO
ALTER TABLE [dbo].[Transactions]  WITH CHECK ADD FOREIGN KEY([id_user])
REFERENCES [dbo].[Users] ([id_user])
GO
