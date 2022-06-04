-- 7章
CREATE TABLE [dbo].[ProductQuantityForecast]
(
	[ProductId] [int] NOT NULL,
	[TransactionDate] [int] NOT NULL,
	[Hour] [int] NOT NULL,
	[TotalQuantity] [int] NOT NULL
)
WITH
(
	DISTRIBUTION = round_robin,
	CLUSTERED COLUMNSTORE INDEX
)
GO
INSERT [dbo].[ProductQuantityForecast] ([ProductId], [TransactionDate], [Hour], [TotalQuantity]) VALUES (1100, 20201209, 10, 0)
GO
INSERT [dbo].[ProductQuantityForecast] ([ProductId], [TransactionDate], [Hour], [TotalQuantity]) VALUES (300, 20201209, 10, 0)
GO
INSERT [dbo].[ProductQuantityForecast] ([ProductId], [TransactionDate], [Hour], [TotalQuantity]) VALUES (900, 20201209, 10, 0)
GO
INSERT [dbo].[ProductQuantityForecast] ([ProductId], [TransactionDate], [Hour], [TotalQuantity]) VALUES (500, 20201209, 10, 0)
GO
INSERT [dbo].[ProductQuantityForecast] ([ProductId], [TransactionDate], [Hour], [TotalQuantity]) VALUES (600, 20201209, 10, 0)
GO
INSERT [dbo].[ProductQuantityForecast] ([ProductId], [TransactionDate], [Hour], [TotalQuantity]) VALUES (700, 20201209, 10, 0)
GO
INSERT [dbo].[ProductQuantityForecast] ([ProductId], [TransactionDate], [Hour], [TotalQuantity]) VALUES (1200, 20201209, 10, 0)
GO
INSERT [dbo].[ProductQuantityForecast] ([ProductId], [TransactionDate], [Hour], [TotalQuantity]) VALUES (800, 20201209, 10, 0)
GO
INSERT [dbo].[ProductQuantityForecast] ([ProductId], [TransactionDate], [Hour], [TotalQuantity]) VALUES (200, 20201209, 10, 0)
GO
INSERT [dbo].[ProductQuantityForecast] ([ProductId], [TransactionDate], [Hour], [TotalQuantity]) VALUES (400, 20201209, 10, 0)
GO
INSERT [dbo].[ProductQuantityForecast] ([ProductId], [TransactionDate], [Hour], [TotalQuantity]) VALUES (100, 20201209, 10, 0)
GO
INSERT [dbo].[ProductQuantityForecast] ([ProductId], [TransactionDate], [Hour], [TotalQuantity]) VALUES (1000, 20201209, 10, 0)
GO